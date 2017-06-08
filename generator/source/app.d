import std.algorithm;
import std.array;
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
	"inspectable.idl", "DocumentSource.idl"
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

	dirEntries("base", SpanMode.shallow).each!(processIDL);
	foreach (mod; modules)
	{
		auto fileName = buildPath("source", mod.fileName);
		writeln("Writing to ", fileName);
		std.file.write(fileName, mod.toString);
	}
}

void processIDL(string file)
{
	if (ignored.canFind(file.baseName))
		return;

	if (file.baseName != "windows.ui.core.idl")
		return;

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
		foreach (node; children)
		{
			switch (node.name)
			{
			case "IDL.cpp_quote":
			case "IDL.type_id_dcl":
			case "IDL.apicontract":
				break;
			case "IDL.delegate_":
				if (node.children.length == 0)
					return;
				enforce(node.children[0].name == "IDL.op_dcl");
				break;
			case "IDL.declare":
				// TODO?
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
				if (node.children[0].name == "IDL.forward_dcl")
					break; // Ignore forward declarations
				auto dcl = node.children[0];
				enforce(dcl.children.length == 2);
				auto header = dcl.children[0];
				auto body_ = dcl.children[1];
				enforce(header.name == "IDL.interface_header");
				enforce(body_.name == "IDL.interface_body");
				string name = header.matches[1];
				enforce(header.children.length <= 2);
				foreach (spec; header.children)
				{
					if (spec.name == "IDL.interface_inheritance_spec")
					{

					}
					else if (spec.name == "IDL.interface_require_spec")
					{

					}
					else
						throw new Exception("Invalid header item: " ~ spec.name);
				}
				writeln("interface ", name);
				break;
			case "IDL.type_dcl":
				enforce(node.children.length == 1);
				auto type = node.children[0];
				switch (type.name)
				{
				case "IDL.type_declarator":
				case "IDL.struct_type":
				case "IDL.union_type":
				case "IDL.constr_forward_decl":
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
					enforce(type.children[0].name == "IDL.enum_body");
					foreach (member; type.children[0].children)
					{
						enforce(member.name == "IDL.enumerator");
						enforce(member.matches.length >= 3);
						int skip = 0;
						foreach (child; member.children[0 .. $ - 1])
							skip += child.matches.length;
						auto value = member.children[$ - 1];
						enforce(value.name == "IDL.const_exp");
						members ~= EnumMember(member.matches[skip], value.matches.join(""));
					}
					makeMod(namespace).enums ~= Enum(name, flags, members);
					break;
				default:
					throw new Exception("Unknown type dcl: " ~ type.name);
				}
				break;
			default:
				writeln("Skipping unknown node ", node.name);
				break;
			}
		}
	}

	process(spec.children);
}

struct Module
{
	string[] name;
	string[] dependencies;

	string fileName() const
	{
		return name.join(dirSeparator) ~ ".d";
	}

	Interface[] interfaces;
	Enum[] enums;

	string toString() const
	{
		string ret;
		ret ~= "module " ~ name.join(".") ~ ";\n\n";
		foreach (dep; dependencies)
			ret ~= "import " ~ dep ~ ";\n";
		if (dependencies.length)
			ret ~= "\n";
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
			ret ~= "\t" ~ member.name ~ " = " ~ member.rawValue ~ ",\n";
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
}

struct Interface
{
	string name;
	string uuid;
	string exclusiveto;

	InterfaceMethod[] methods;

	string toString() const
	{
		return "interface " ~ name ~ " { /* TODO */ }";
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
	string name;
	InterfaceType type;
	InterfaceArgument[] arguments;
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
}
