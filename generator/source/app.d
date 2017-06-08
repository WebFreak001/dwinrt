import std.algorithm;
import std.array;
import std.conv;
import std.exception;
import std.file;
import std.getopt;
import std.path;
import std.stdio;
import std.string;

import pegged.grammar;
import idl.grammar;

Module[] modules;
string[] ignored = [
	"activation.idl", "AsyncInfo.idl", "EventToken.idl", "hstring.idl",
	"inspectable.idl", "DocumentSource.idl", "rdpappcontainerclient.idl"
];
// Rest will be filled
string[] pointerTypes = ["IInspectable", "IUnknown"];
// Can't bother to fix, cppwinrt doesn't have those either
string[] blockedInterfaces = [
	"IMetaDataDispenser", "IMetaDataDispenserEx", "IMetaDataAssemblyImport",
	"IMetaDataImport", "IMetaDataImport2"
];

string[] defines;

void main(string[] args)
{
	auto res = getopt(args, "d|define", &defines);
	if (res.helpWanted)
	{
		defaultGetoptPrinter("WinRT IDL to D generator.", res.options);
		return;
	}

	dirEntries("base", SpanMode.shallow).array.sort!"a < b".each!(processIDL);
	foreach (ref mod; modules)
		mod.fixTypes;
	foreach (mod; modules)
	{
		auto fileName = buildPath("source", mod.fileName);
		mkdirRecurse(fileName.dirName);
		writeln("Writing to ", fileName);
		std.file.write(fileName, mod.toString);
	}
	append(buildPath("source", "Windows", "Foundation", "package.d"), foundationSuffix);
	modules.each!(mod => writeln("public static import " ~ mod.name.join(".") ~ ";"));
}

void processIDL(string file)
{
	if (ignored.canFind(file.baseName))
		return;

	//if (file.baseName != "Windows.ApplicationModel.datatransfer.idl")
	//	return;

	writeln("Processing ", file);

	string code;

	// preprocess
	bool include = true;
	bool inString = false;
	bool escape = false;
	bool inComment = false;
	dchar prev;
	foreach (line; File(file).byLineCopy(KeepTerminator.yes))
	{
		auto striped = line.stripLeft;
		if (striped.length && striped[0] == '#')
		{
			if (striped.startsWith("#include"))
			{
				writeln("Skipping preprocessing " ~ striped.stripRight ~ " in file " ~ file ~ ".");
			}
			else if (striped.startsWith("#ifdef "))
			{
				string name = striped["#ifdef ".length .. $].strip;
				include = defines.canFind(name);
			}
			else if (striped.startsWith("#ifndef "))
			{
				string name = striped["#ifndef ".length .. $].strip;
				include = !defines.canFind(name);
			}
			else if (striped.startsWith("#else"))
				include = !include;
			else if (striped.startsWith("#endif"))
				include = true;
		}
		else if (include)
		{
			prev = dchar.init;
			size_t start;
			bool lineComment = false;
			foreach (i, c; line)
			{
				if (c == '\\')
					escape = !escape;
				else if (c == '"' && !escape)
					inString = !inString;
				else if (!inString && prev == '/' && c == '/')
				{
					lineComment = true;
					code ~= line[start .. i - 1] ~ '\n';
					escape = false;
					break;
				}
				else if (!inString && prev == '/' && c == '*')
				{
					inComment = true;
					code ~= line[start .. i - 1];
					escape = false;
				}
				else if (inComment && prev == '*' && c == '/')
				{
					inComment = false;
					start = i + 1;
				}
				else
					escape = false;
				prev = c;
			}
			if (!inComment && !lineComment)
				code ~= line[start .. $];
		}
	}

	ParseTree parsed = parseIDL(code);
	enforce(parsed.successful, "Could not parse " ~ file);
	enforce(parsed.children.length == 1, "Could not parse " ~ file);
	auto spec = parsed.children[0];
	enforce(spec.name == "IDL.specification");

	string[] namespace;

	void process(ParseTree[] children, ParseTree[] attributes = [])
	{
		void fetchUUID(out string uuid)
		{
			foreach_reverse (attrib; attributes)
			{
				foreach_reverse (content; attrib.children)
				{
					enforce(content.name == "IDL.definition_content");
					if (content.children.length == 1 && content.children[0].name == "IDL.uuid")
					{
						uuid = content.children[0].children.map!(a => a.matches[0]).join("-").toLower;
						return;
					}
				}
			}
		}

		foreach (node; children)
		{
			switch (node.name)
			{
			case "IDL.cpp_quote":
			case "IDL.apicontract":
				break;
			case "IDL.type_id_dcl":
				enforce(node.children.length == 1);
				if (node.children[0].name == "IDL.enum_typedef")
				{
					EnumMember[] members;
					bool found = false;
					foreach (enumBody; node.children[0].children)
					{
						if (enumBody.name != "IDL.enum_body")
							continue;
						found = true;
						parseEnumBody(enumBody, members);
					}
					if (!found)
						break; // Forward declaration
					string name = node.matches[$ - 1];
					makeMod(namespace).enums ~= Enum(name, false, members);
				}
				else if (node.children[0].name == "IDL.struct_typedef")
				{
					StructMember[] members;
					bool found = false;
					foreach (memberList; node.children[0].children)
					{
						if (memberList.name != "IDL.member_list")
							continue;
						found = true;
						parseMemberList(memberList, members);
					}
					if (!found)
						break; // Forward declaration
					string name = node.matches[$ - 1];
					makeMod(namespace).structs ~= Struct(name, members);
				}
				else
					throw new Exception("Unsupported type_id_dcl " ~ node.toString);
				break;
			case "IDL.delegate_":
				if (node.children.length == 0)
					return;
				enforce(node.children[0].name == "IDL.op_dcl");
				Interface obj;
				fetchUUID(obj.uuid);
				auto method = parseInterfaceMethod(node.children[0]);
				obj.name = method.name;
				string globName = (namespace.length ? namespace.join(".") ~ "." : "") ~ obj.name;
				if (!pointerTypes.canFind(globName))
					pointerTypes ~= globName;
				method.name = "Invoke";
				obj.methods ~= method;
				obj.isDelegate = true;
				makeMod(namespace).interfaces ~= obj;
				break;
			case "IDL.declare":
				writeln("TODO ", node);
				break;
			case "IDL.import_":
				enforce(node.matches.length == 3);
				writeln("Import ", node.matches[1]);
				break;
			case "IDL.module_":
				enforce(node.children.length >= 1);
				enforce(node.children[0].name == "IDL.scoped_name");
				foreach (child; node.children[1 .. $])
					enforce(child.name == "IDL.definition");
				string[] mod;
				foreach (match; node.children[0].matches)
					if (match != ".")
						mod ~= match;
				namespace ~= mod;
				process(node.children[1 .. $], attributes);
				namespace.length -= mod.length;
				break;
			case "IDL.definition":
				auto attribs = node.children[0 .. $ - 1];
				foreach (attrib; attribs)
					enforce(attrib.name == "IDL.definition_attribute",
							"Got " ~ attrib.name ~ " before definition instead of attribute");
				process(node.children[$ - 1 .. $], attributes ~ attribs);
				break;
			case "IDL.interface_":
				enforce(node.children.length == 1);
				string globName = (namespace.length ? namespace.join(".") ~ "." : "")
					~ node.children[0].matches[1];
				if (!pointerTypes.canFind(globName))
					pointerTypes ~= globName;
				if (node.children[0].name == "IDL.forward_dcl")
					break; // Ignore forward declarations
				auto dcl = node.children[0];
				if (dcl.children.length == 1 && dcl.children[0].name == "IDL.interface_header")
					break; // ditto
				enforce(dcl.children.length == 2, dcl.toString);
				auto header = dcl.children[0];
				auto body_ = dcl.children[1];
				enforce(header.name == "IDL.interface_header", header.toString);
				enforce(body_.name == "IDL.interface_body", body_.toString);
				string name = header.matches[1];
				Interface obj;
				obj.name = name;
				if (blockedInterfaces.canFind(obj.name))
					break;
				fetchUUID(obj.uuid);
			exclusiveto_search: foreach_reverse (attrib; attributes)
				{
					foreach_reverse (content; attrib.children)
					{
						enforce(content.name == "IDL.definition_content");
						if (content.children.length == 1 && content.children[0].name == "IDL.exclusiveto")
						{
							enforce(content.children[0].children[0].name == "IDL.scoped_name");
							obj.exclusiveto = content.children[0].children[0].matches.join("");
							break exclusiveto_search;
						}
					}
				}
				enforce(header.children.length <= 2, header.toString);
				foreach (spec; header.children)
				{
					if (spec.name == "IDL.interface_inheritance_spec")
					{
						enforce(spec.children.length >= 1, spec.toString);
						foreach (base; spec.children)
						{
							enforce(base.name == "IDL.type", spec.toString);
							obj.inherits ~= base.matches.join("").translateType;
						}
					}
					else if (spec.name == "IDL.interface_require_spec")
					{
						enforce(spec.children.length >= 1, spec.toString);
						foreach (base; spec.children)
						{
							enforce(base.name == "IDL.type", spec.toString);
							obj.requires ~= base.matches.join("").translateType;
						}
					}
					else
						throw new Exception("Invalid header item: " ~ spec.name);
				}
				foreach (fn; body_.children)
				{
					enforce(fn.name == "IDL.export_", fn.toString);
					foreach_reverse (i, fnchild; fn.children)
					{
						if (fnchild.name == "IDL.definition_attribute")
						{
							attributes ~= fnchild;
							fn.children = fn.children[0 .. i] ~ fn.children[i + 1 .. $];
						}
					}
					enforce(fn.children.length == 1, fn.toString);
					auto opdcl = fn.children[0];
					if (opdcl.name == "IDL.cpp_quote")
						continue;
					if (opdcl.name == "IDL.declare_interface")
					{
						writeln("TODO nested interface ", opdcl);
						continue;
					}
					auto method = parseInterfaceMethod(opdcl);
					obj.methods ~= method;
				}
				makeMod(namespace).interfaces ~= obj;
				break;
			case "IDL.type_dcl":
				enforce(node.children.length == 1);
				auto type = node.children[0];
				switch (type.name)
				{
				case "IDL.type_declarator":
					enforce(type.children.length == 2);
					addAlias(type.children[1].matches.join(""), type.children[0].matches.join(""));
					break;
				case "IDL.struct_type":
					enforce(type.children.length == 1, type.toString);
					enforce(type.children[0].name == "IDL.member_list", type.toString);
					StructMember[] members;
					parseMemberList(type.children[0], members);
					string name = type.matches[1];
					makeMod(namespace).structs ~= Struct(name, members);
					break;
				case "IDL.union_type":
				case "IDL.constr_forward_decl":
					writeln("TODO ", type);
					break;
				case "IDL.enum_type":
					string name = type.matches[1];
					bool flags = false;
					foreach (attrib; attributes)
						foreach (content; attrib.children)
						{
							enforce(content.name == "IDL.definition_content");
							if (content.matches == ["flags"])
								flags = true;
						}
					EnumMember[] members;
					enforce(type.children.length == 1);
					parseEnumBody(type.children[0], members);
					makeMod(namespace).enums ~= Enum(name, flags, members);
					break;
				default:
					throw new Exception("Unknown type dcl: " ~ type.name);
				}
				break;
			default:
				writeln("Skipping unknown node ", node);
				break;
			}
		}
	}

	process(spec.children);
}

void parseEnumBody(ParseTree enumBody, ref EnumMember[] members)
{
	enforce(enumBody.name == "IDL.enum_body");
	foreach (member; enumBody.children)
	{
		enforce(member.name == "IDL.enumerator");
		enforce(member.matches.length >= 3 || member.matches.length == 1, member.toString);
		if (member.matches.length == 1)
		{
			members ~= EnumMember(member.matches[0]);
		}
		else
		{
			int skip = 0;
			foreach (child; member.children[0 .. $ - 1])
				skip += child.matches.length;
			auto value = member.children[$ - 1];
			enforce(value.name == "IDL.const_exp");
			members ~= EnumMember(member.matches[skip], value.matches.join(""));
		}
	}
}

void parseMemberList(ParseTree memberList, ref StructMember[] members)
{
	enforce(memberList.name == "IDL.member_list");
	foreach (member; memberList.children)
	{
		enforce(member.name == "IDL.member");
		int offset = 0;
		foreach (child; member.children)
		{
			if (child.name != "IDL.definition_attribute")
				break;
			offset++;
		}
		if (offset)
			member.children = member.children[offset .. $];
		enforce(member.children.length == 2, member.toString);
		auto type = member.children[0].children[0];
		enforce(type.name == "IDL.type");
		auto declarator = member.children[1].children[0];
		enforce(declarator.name == "IDL.declarator", declarator.toString);
		auto spec = declarator.children[0];
		enforce(spec.name == "IDL.simple_declarator");
		enforce(spec.matches.length == 1 || spec.matches.length >= 3, spec.toString);
		StructMember mem;
		mem.name = spec.matches[0];
		if (spec.matches.length >= 3)
		{
			enforce(spec.matches[1] == "[");
			enforce(spec.matches[$ - 1] == "]");
			mem.type ~= spec.matches[1 .. $].join("");
		}
		mem.type = type.matches.join("").translateType;
		members ~= mem;
	}
}

InterfaceMethod parseInterfaceMethod(ParseTree opdcl)
{
	enforce(opdcl.name == "IDL.op_dcl", opdcl.toString);
	InterfaceMethod method;
	method.type = InterfaceType.call;
	int skip;
	bool countSkip = true;
	foreach (child; opdcl.children)
	{
		if (countSkip)
			skip += child.matches.length;
		if (child.name == "IDL.type")
		{
			method.returnType = child.matches.join("").translateType;
			countSkip = false;
		}
		else if (child.name == "IDL.op_attribute")
		{
			foreach (spec; child.children)
			{
				enforce(spec.name == "IDL.op_attribute_spec");
				if (spec.children.length == 0)
				{
					switch (spec.matches[0])
					{
					case "propget":
						method.type = InterfaceType.propget;
						break;
					case "propput":
						method.type = InterfaceType.propset;
						break;
					case "eventadd":
						method.type = InterfaceType.eventadd;
						break;
					case "eventremove":
						method.type = InterfaceType.eventremove;
						break;
					case "oneway":
					case "default_overload":
						break;
					default:
						throw new Exception("Unknown method attribute " ~ spec.matches[0]);
					}
				}
				else
				{
					if (spec.children.length == 1 && spec.children[0].name == "IDL.op_overload_attribute")
					{
						enforce(spec.children[0].children.length == 1);
						method.name = spec.children[0].children[0].parseString;
					}
					else if (spec.children.length == 1 && spec.children[0].name == "IDL.deprecation")
					{
						enforce(spec.children[0].children.length >= 1);
						method.deprecation = spec.children[0].children[0].parseString(true);
					}
					else
						throw new Exception("Attribute not implemented: " ~ spec.toString);
				}
			}
		}
		else if (child.name == "IDL.parameter_dcls")
		{
			foreach (param; child.children)
			{
				enforce(param.name == "IDL.param_dcl");
				InterfaceArgument argument;
				foreach (spec; param.children)
				{
					if (spec.name == "IDL.param_attribute")
					{
						foreach (attr; spec.children)
						{
							enforce(attr.name == "IDL.param_attr_spec", spec.toString);
							if (attr.matches.length == 1)
							{
								switch (attr.matches[0])
								{
								case "in":
									argument.direction |= ArgumentDirection.in_;
									break;
								case "out":
									argument.direction |= ArgumentDirection.out_;
									break;
								case "inout":
									argument.direction |= ArgumentDirection.in_ | ArgumentDirection.out_;
									break;
								case "retval":
									argument.direction |= ArgumentDirection.retval;
									break;
								case "string":
								case "unique":
									break;
								default:
									throw new Exception("Invalid parameter attribute: " ~ attr.matches[0]);
								}
							}
						}
					}
					else if (spec.name == "IDL.type")
					{
						argument.type = spec.matches.join("").translateType;
					}
					else if (spec.name == "IDL.simple_declarator")
					{
						enforce(spec.matches.length == 1 || spec.matches.length >= 3, spec.toString);
						argument.name = spec.matches[0];
						if (spec.matches.length >= 3)
						{
							enforce(spec.matches[1] == "[");
							enforce(spec.matches[$ - 1] == "]");
							argument.type ~= spec.matches[1 .. $].join("");
						}
					}
				}
				method.arguments ~= argument;
			}
		}
	}
	method.name = opdcl.matches[skip];
	assert(method.name.length > 0);
	import std.ascii : isAlphaNum;

	foreach (c; method.name)
		assert(isAlphaNum(c) || c == '_');
	return method;
}

string parseString(ParseTree obj, bool raw = false)
{
	enforce(obj.name == "IDL.string_literal");
	enforce(obj.matches.length == 1);
	if (raw)
		return obj.matches[0];
	string ret;
	bool escape;
	foreach (c; obj.matches[0][1 .. $ - 1])
	{
		if (c == '\\')
		{
			if (escape)
				ret ~= c;
			escape = !escape;
		}
		else if (escape)
		{
			switch (c)
			{
			case 'n':
				ret ~= '\n';
				break;
			case 't':
				ret ~= '\t';
				break;
			case 'v':
				ret ~= '\v';
				break;
			case 'b':
				ret ~= '\b';
				break;
			case 'r':
				ret ~= '\r';
				break;
			case 'f':
				ret ~= '\f';
				break;
			case 'a':
				ret ~= '\a';
				break;
			case '\'':
			case '"':
				ret ~= c;
				break;
			default:
				break;
			}
		}
		else
			ret ~= c;
	}
	return ret;
}

string indent(string code, string amount = "\t")
{
	string ret;
	foreach (line; code.lineSplitter!(KeepTerminator.yes))
		ret ~= amount ~ line.entab(4);
	return ret;
}

string translateType(string cType)
{
	return cType.replace("<", "!(").replace(">", ")").replace("boolean", "bool");
}

string makeDSafe(string name)
{
	if (name == "out" || name == "in" || name == "ref" || name == "version"
			|| name == "body" || name == "function" || name == "package"
			|| name == "scope" || name == "align")
		return name ~ '_';
	else
		return name;
}

struct Module
{
	string[] name;
	string[] dependencies;

	bool hasChildren() const
	{
		foreach (mod; modules)
			if (mod.name != name && mod.name.startsWith(name))
				return true;
		return false;
	}

	string fileName() const
	{
		string base = name.join(dirSeparator);
		if (hasChildren)
			return base ~ dirSeparator ~ "package.d";
		else
			return base ~ ".d";
	}

	void fixTypes()
	{
		foreach (ref obj; interfaces)
			obj.fixTypes();
		foreach (ref obj; structs)
			obj.fixTypes();
	}

	Interface[] interfaces;
	Enum[] enums;
	Struct[] structs;

	string toString() const
	{
		string ret;
		ret ~= "module " ~ name.join(".") ~ ";\n\n";
		ret ~= "import dwinrt;\n";
		foreach (dep; dependencies)
			ret ~= "import " ~ dep ~ ";\n";
		ret ~= "\n";
		foreach (obj; structs)
			ret ~= obj.toString ~ "\n\n";
		foreach (obj; interfaces)
			ret ~= obj.toString ~ "\n\n";
		foreach (obj; enums)
			ret ~= obj.toString ~ "\n\n";
		if (enums.length || interfaces.length)
			ret.length -= 2;
		return ret;
	}
}

ref Module makeMod(string[] name, string[] deps = [])
{
	if (name.length == 0)
		name = ["Windows", "Foundation"];
	foreach (ref mod; modules)
	{
		if (mod.name == name)
		{
			if (deps.length)
				mod.dependencies = (mod.dependencies ~ deps).sort!"a < b".uniq.array;
			return mod;
		}
	}
	Module mod;
	mod.name = name;
	mod.dependencies = deps.sort!"a < b".array;
	modules ~= mod;
	return modules[$ - 1];
}

struct Enum
{
	string name;
	bool flags;

	EnumMember[] members;

	string toString() const
	{
		string ret;
		if (flags)
			ret ~= "@bitflags\n";
		ret ~= "enum " ~ name ~ "\n{\n";
		foreach (member; members)
			ret ~= member.toString.indent ~ ",\n";
		if (members.length)
		{
			ret.length -= 2;
			ret ~= "\n";
		}
		ret ~= "}";
		return ret;
	}
}

struct EnumMember
{
	string name;
	string rawValue;

	string toString() const
	{
		string ret;
		ret ~= name;
		if (rawValue.length)
			ret ~= " = " ~ rawValue;
		return ret;
	}
}

struct Struct
{
	string name;
	StructMember[] members;

	void fixTypes()
	{
		foreach (ref member; members)
			member.type.fixType();
	}

	string toString() const
	{
		string ret;
		ret ~= "struct " ~ name;
		ret ~= "\n{\n";
		foreach (member; members)
			ret ~= member.toString.indent ~ "\n";
		ret ~= "}";
		return ret;
	}
}

struct StructMember
{
	string type, name;

	string toString() const
	{
		return type ~ " " ~ name ~ ";";
	}
}

struct Interface
{
	string name;
	string[] inherits;
	string[] requires;
	string uuid;
	string exclusiveto;
	bool isDelegate;

	void fixTypes()
	{
		foreach (ref method; methods)
			method.fixTypes();
	}

	InterfaceMethod[] methods;

	string toString() const
	{
		string ret;
		if (uuid.length)
			ret ~= "@uuid(\"" ~ uuid ~ "\")\n";
		if (exclusiveto.length)
			ret ~= "@WinrtFactory(\"" ~ exclusiveto ~ "\")\n";
		ret ~= "interface " ~ name;
		if (inherits.length)
			ret ~= " : " ~ inherits.join(", ");
		ret ~= "\n{\n";
		if (methods.length && !isDelegate)
			ret ~= "\tmixin(generateRTMethods!(typeof(this)));\n\nextern(Windows):\n";
		foreach (method; methods)
			ret ~= method.toString.indent ~ "\n";
		ret ~= "}";
		return ret;
	}
}

enum InterfaceType
{
	propget,
	propset,
	eventadd,
	eventremove,
	call
}

struct InterfaceMethod
{
	string name, returnType, deprecation;
	InterfaceType type;
	InterfaceArgument[] arguments;

	void fixTypes()
	{
		if (returnType != "HRESULT")
			returnType.fixType;
		foreach (ref argument; arguments)
			argument.type.fixType;
	}

	string toString() const
	{
		string ret;
		if (deprecation.length)
			ret ~= "deprecated(" ~ deprecation ~ ")\n";
		ret ~= returnType ~ " ";
		final switch (type) with (InterfaceType)
		{
		case propget:
			ret ~= "get_";
			break;
		case propset:
			ret ~= "set_";
			break;
		case eventadd:
			ret ~= "add_";
			break;
		case eventremove:
			ret ~= "remove_";
			break;
		case call:
			ret ~= "abi_";
			break;
		}
		ret ~= name;
		ret ~= "(";
		ret ~= arguments.to!(string[]).join(", ");
		ret ~= ");";
		return ret;
	}
}

void fixType(ref string type)
{
	const wholeConst = type.endsWith("const");
	if (wholeConst)
		type = type[0 .. $ - "const".length].strip;
	const isConst = type.startsWith("const");
	if (isConst)
		type = type["const".length .. $].strip;
	int numPointers = 0;
	foreach_reverse (c; type)
	{
		if (c != '*')
			break;
		numPointers++;
	}
	type.length -= numPointers;
	type = type.resolveAlias;
	auto exclIndex = type.indexOf('!');
	if (exclIndex != -1 || pointerTypes.canFind(type))
		numPointers--;
	if (exclIndex != -1 && type[exclIndex + 1] == '(')
	{
		auto close = type.lastIndexOf(')');
		enforce(close != -1, type);
		string[] members = type[exclIndex + 2 .. close].splitTypes;
		foreach (ref member; members)
		{
			member = member.strip;
			member.fixType();
		}
		type = type[0 .. exclIndex + 2] ~ members.join(", ") ~ type[close .. $];
	}
	if (isConst)
		type = "const(" ~ type ~ ")";
	for (int i = 0; i < numPointers; i++)
		type ~= "*";
	if (wholeConst)
		type = "const " ~ type;
}

string[] splitTypes(string type)
{
	int depth = 0;
	string[] ret = [""];
	foreach (c; type)
	{
		if (c == '(')
			depth++;
		if (c == ')')
			depth--;
		if (c == ',' && depth == 0)
			ret.length++;
		else
			ret[$ - 1] ~= c;
	}
	return ret;
}

enum ArgumentDirection
{
	in_ = 1,
	out_ = 2,
	retval = 4
}

struct InterfaceArgument
{
	ArgumentDirection direction;
	string type;
	string name;

	string toString() const
	{
		string ret;
		ret ~= type;
		ret ~= " ";
		if (direction & ArgumentDirection.retval)
			ret ~= "return_";
		else if (direction & ArgumentDirection.out_)
			ret ~= "out_";
		ret ~= name.makeDSafe;
		return ret;
	}
}

string resolveAlias(string type)
{
	foreach (rename; aliases)
		if (type == rename.from)
			return resolveAlias(rename.to);
	return type;
}

struct Alias
{
	string from, to;
}

void addAlias(string from, string to)
{
	foreach (rename; aliases)
		if (rename.from == from)
			return;
	if (to.startsWith("unsigned"))
		to = 'u' ~ to["unsigned".length .. $];
	aliases ~= Alias(from, to);
}

Alias[] aliases = [
	Alias("unsigned", "uint"), Alias("ULONG32", "uint"), Alias("__int3264",
		"size_t"), Alias("DOUBLE", "double")
];

string foundationSuffix = q{
struct ComCallData
{
	DWORD dwDispid;
	DWORD dwReserved;
	void* pUserDefined;
}

enum AsyncStatus
{
	Started,
	Completed,
	Canceled,
	Error,
}

alias ContextCallbackCallback = extern (Windows) HRESULT function(ComCallData* pParam);

@uuid("000001da-0000-0000-c000-000000000046")
interface IContextCallback : IUnknown
{
extern (Windows):
	HRESULT ContextCallback(ContextCallbackCallback pCallback,
			ComCallData* pParam, REFIID riid, int iMethod, IUnknown* pUnk);
}

struct IAsyncOperation(Async) if (IsAsync!Async)
{
	Async async;
	private void delegate() callback = null;

	bool await_ready() const
	{
		return async.Status == AsyncStatus.Completed;
	}

	void await_suspend(void delegate() f)
	{
		if (callback !is null)
			assert(false, "Can't await multiple times on one object");

		callback = f;
		IContextCallback context;
		assert(CoGetObjectContext(uuidOf!IContextCallback, cast(void**)&context) == S_OK);

		async.Completed((AsyncStatus) {
			ComCallData data;
			data.pUserDefined = cast(void*)&callback;

			ContextCallbackCallback cb = (data) {
				(*cast(void delegate()*) data.pUserDefined)();
				return S_OK;
			};

			assert(context.ContextCallback(cb, &data,
				IID_ICallbackWithNoReentrancyToApplicationSTA, 5, null) == S_OK);
		});
	}

	auto await_resume() const
	{
		return async.GetResults;
	}
}

IAsyncOperation!Async await(Async)(auto ref Async async) if (IsAsync!Async)
{
	return IAsyncOperation!Async(async);
}

enum IsAsync(T) = is(T == struct) && __traits(compiles, {
		T async;
		AsyncStatus status = async.Status;
		async.Completed((AsyncStatus) {  });
		auto res = async.GetResults;
		static assert(!is(typeof(res) == void));
	});
};
