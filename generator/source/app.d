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

//dfmt off
Module[] modules = [
	// must be first
	Module(["Windows", "Foundation"], [], [
		Interface("EventHandler", ["IUnknown"], [], [], ["TArgs"], "", "", false, false, [
			InterfaceMethod("Invoke", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "IInspectable", "sender"),
				InterfaceArgument(ArgumentDirection.in_, "TArgs", "args")
			], true),
		]),
		Interface("TypedEventHandler", ["IUnknown"], [], [], ["TSender", "TArgs"], "", "", false, false, [
			InterfaceMethod("Invoke", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "TSender", "sender"),
				InterfaceArgument(ArgumentDirection.in_, "TArgs", "args")
			], true),
		]),
		Interface("IAsyncActionWithProgress", ["IInspectable"], [], [], ["TProgress"], "", "", false, false, [
			InterfaceMethod("Progress", "HRESULT", "", InterfaceType.propset, [
				InterfaceArgument(ArgumentDirection.in_, "Windows.Foundation.AsyncActionProgressHandler!(TProgress)", "handler")
			], true),
			InterfaceMethod("Progress", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "Windows.Foundation.AsyncActionProgressHandler!(TProgress)*", "handler")
			], true),
		]),
		Interface("AsyncActionProgressHandler", ["IUnknown"], [], [], ["TProgress"], "", "", false, false, [
			InterfaceMethod("Invoke", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "Windows.Foundation.IAsyncActionWithProgress!(TProgress)", "asyncInfo"),
				InterfaceArgument(ArgumentDirection.in_, "TProgress", "progressInfo"),
			], true),
		]),
		Interface("AsyncActionWithProgressCompletedHandler", ["IUnknown"], [], [], ["TProgress"], "", "", false, false, [
			InterfaceMethod("Invoke", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "Windows.Foundation.IAsyncActionWithProgress!(TProgress)", "asyncInfo"),
				InterfaceArgument(ArgumentDirection.in_, "AsyncStatus", "status"),
			], true),
		]),
		Interface("IAsyncOperation", ["IInspectable"], ["IAsyncInfo"], [], ["TResult"], "", "", false, false, [
			InterfaceMethod("Completed", "HRESULT", "", InterfaceType.propset, [
				InterfaceArgument(ArgumentDirection.in_, "Windows.Foundation.AsyncOperationCompletedHandler!(TResult)", "handler"),
			], true),
			InterfaceMethod("Completed", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "Windows.Foundation.AsyncOperationCompletedHandler!(TResult)*", "handler"),
			], true),
			InterfaceMethod("Results", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "TResult*", "results"),
			], true)
		]),
		Interface("AsyncOperationProgressHandler", ["IUnknown"], [], [], ["TResult", "TProgress"], "", "", false, false, [
			InterfaceMethod("Invoke", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress)", "asyncInfo"),
				InterfaceArgument(ArgumentDirection.in_, "TProgress", "progressInfo"),
			], true),
		]),
		Interface("AsyncOperationCompletedHandler", ["IUnknown"], [], [], ["TResult"], "", "", false, false, [
			InterfaceMethod("Invoke", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "Windows.Foundation.IAsyncOperation!(TResult)", "asyncInfo"),
				InterfaceArgument(ArgumentDirection.in_, "AsyncStatus", "status"),
			], true),
		]),
		Interface("IAsyncOperationWithProgress", ["IInspectable"], [], [], ["TResult", "TProgress"], "", "", false, false, [
			InterfaceMethod("Progress", "HRESULT", "", InterfaceType.propset, [
				InterfaceArgument(ArgumentDirection.in_, "Windows.Foundation.AsyncOperationProgressHandler!(TResult, TProgress)", "handler"),
			], true),
			InterfaceMethod("Progress", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "Windows.Foundation.AsyncOperationProgressHandler!(TResult, TProgress)*", "handler"),
			], true),
			InterfaceMethod("Completed", "HRESULT", "", InterfaceType.propset, [
				InterfaceArgument(ArgumentDirection.in_, "Windows.Foundation.AsyncOperationWithProgressCompletedHandler!(TResult, TProgress)", "handler"),
			], true),
			InterfaceMethod("Completed", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "Windows.Foundation.AsyncOperationWithProgressCompletedHandler!(TResult, TProgress)*", "handler"),
			], true),
			InterfaceMethod("Results", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "TResult*", "results"),
			], true),
		]),
		Interface("AsyncOperationWithProgressCompletedHandler", ["IUnknown"], [], [], ["TResult", "TProgress"], "", "", false, false, [
			InterfaceMethod("Invoke", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress)", "asyncInfo"),
				InterfaceArgument(ArgumentDirection.in_, "AsyncStatus", "status"),
			], true),
		]),
		Interface("IReference", ["IUnknown"], [], [], ["Type"], "", "", false, false, [
			InterfaceMethod("Value", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "Type*", "value"),
			], true),
		]),
	]),
	Module(["Windows", "Foundation", "Collections"], [], [
		Interface("MapChangedEventHandler", ["IUnknown"], [], [], ["TKey", "TValue"], "", "", false, false, [
			InterfaceMethod("Invoke", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "Windows.Foundation.Collections.IObservableMap!(TKey, TValue)", "sender"),
				InterfaceArgument(ArgumentDirection.in_, "Windows.Foundation.Collections.IMapChangedEventArgs!(TKey)", "args")
			], true),
		]),
		Interface("VectorChangedEventHandler", ["IUnknown"], [], [], ["Type"], "", "", false, false, [
			InterfaceMethod("Invoke", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "Windows.Foundation.Collections.IObservableVector!(Type)", "sender"),
				InterfaceArgument(ArgumentDirection.in_, "Windows.Foundation.Collections.IVectorChangedEventArgs", "args")
			], true),
		]),
		Interface("IIterator", ["IInspectable"], [], [], ["Type"], "", "", false, false, [
			InterfaceMethod("Current", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "Type*", "current")
			], true),
			InterfaceMethod("HasCurrent", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "bool*", "hasCurrent")
			], true),
			InterfaceMethod("MoveNext", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.out_, "bool*", "hasCurrent")
			], true),
			InterfaceMethod("GetMany", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "uint", "capacity"),
				InterfaceArgument(ArgumentDirection.in_, "Type*", "value"),
				InterfaceArgument(ArgumentDirection.in_, "uint*", "actual")
			], true),
		]),
		Interface("IIterable", ["IInspectable"], [], [], ["Type"], "", "", false, false, [
			InterfaceMethod("First", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.out_, "Windows.Foundation.Collections.IIterator!(Type)*", "first")
			], true),
		]),
		Interface("IKeyValuePair", ["IInspectable"], [], [], ["TKey", "TValue"], "", "", false, false, [
			InterfaceMethod("Key", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "TKey*", "key")
			], true),
			InterfaceMethod("Value", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "TValue*", "value")
			], true),
		]),
		Interface("IVectorView", ["IInspectable"], [], [], ["Type"], "", "", false, false, [
			InterfaceMethod("GetAt", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "uint", "index"),
				InterfaceArgument(ArgumentDirection.out_, "Type*", "item")
			], true),
			InterfaceMethod("Size", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "uint*", "size")
			], true),
			InterfaceMethod("IndexOf", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.in_, "Type", "value"),
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "uint*", "index"),
				InterfaceArgument(ArgumentDirection.out_, "bool*", "found")
			], true),
			InterfaceMethod("GetMany", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "uint", "startIndex"),
				InterfaceArgument(ArgumentDirection.in_, "uint", "capacity"),
				InterfaceArgument(ArgumentDirection.out_, "Type*", "value"),
				InterfaceArgument(ArgumentDirection.out_, "uint*", "actual")
			], true),
		]),
		Interface("IVector", ["IInspectable"], [], [], ["Type"], "", "", false, false, [
			InterfaceMethod("GetAt", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.in_, "uint", "index"),
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "Type*", "item")
			], true),
			InterfaceMethod("Size", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "uint*", "size"),
			], true),
			InterfaceMethod("GetView", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.out_, "Windows.Foundation.Collections.IVectorView!(Type)*", "view"),
			], true),
			InterfaceMethod("IndexOf", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.in_, "Type", "value"),
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "uint*", "index"),
				InterfaceArgument(ArgumentDirection.out_, "bool*", "found")
			], true),
			InterfaceMethod("SetAt", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "uint", "index"),
				InterfaceArgument(ArgumentDirection.in_, "Type", "item"),
			], true),
			InterfaceMethod("InsertAt", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "uint", "index"),
				InterfaceArgument(ArgumentDirection.in_, "Type", "item"),
			], true),
			InterfaceMethod("RemoveAt", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "uint", "index")
			], true),
			InterfaceMethod("Append", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "Type", "item"),
			], true),
			InterfaceMethod("RemoveAtEnd", "HRESULT", "", InterfaceType.call, [], true),
			InterfaceMethod("Clear", "HRESULT", "", InterfaceType.call, [], true),
			InterfaceMethod("GetMany", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "uint", "startIndex"),
				InterfaceArgument(ArgumentDirection.in_, "uint", "capacity"),
				InterfaceArgument(ArgumentDirection.out_, "Type*", "value"),
				InterfaceArgument(ArgumentDirection.out_, "uint*", "actual")
			], true),
			InterfaceMethod("ReplaceAll", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "uint", "count"),
				InterfaceArgument(ArgumentDirection.out_, "Type*", "value"),
			], true),
		]),
		Interface("IMapView", ["IInspectable"], [], [], ["TKey", "TValue"], "", "", false, false, [
			InterfaceMethod("Lookup", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "TKey", "key"),
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "TValue*", "value"),
			], true),
			InterfaceMethod("Size", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "uint*", "size"),
			], true),
			InterfaceMethod("HasKey", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "TKey", "key"),
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "bool*", "found"),
			], true),
			InterfaceMethod("Split", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.out_, "Windows.Foundation.Collections.IMapView!(TKey, TValue)", "firstPartition"),
				InterfaceArgument(ArgumentDirection.out_, "Windows.Foundation.Collections.IMapView!(TKey, TValue)", "secondPartition"),
			], true),
		]),
		Interface("IMap", ["IInspectable"], [], [], ["TKey", "TValue"], "", "", false, false, [
			InterfaceMethod("Lookup", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "TKey", "key"),
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "TValue*", "value"),
			], true),
			InterfaceMethod("Size", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "uint*", "size"),
			], true),
			InterfaceMethod("HasKey", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "TKey", "key"),
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "bool*", "found"),
			], true),
			InterfaceMethod("GetView", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "Windows.Foundation.Collections.IMapView!(TKey, TValue)*", "view"),
			], true),
			InterfaceMethod("Insert", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "TKey", "key"),
				InterfaceArgument(ArgumentDirection.in_, "TValue", "value"),
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "bool*", "replaced"),
			], true),
			InterfaceMethod("Remove", "HRESULT", "", InterfaceType.call, [
				InterfaceArgument(ArgumentDirection.in_, "TKey", "key")
			], true),
			InterfaceMethod("Clear", "HRESULT", "", InterfaceType.call, [], true),
		]),
		Interface("IMapChangedEventArgs", ["IInspectable"], [], [], ["TKey"], "", "", false, false, [
			InterfaceMethod("CollectionChange", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_, "Windows.Foundation.Collections.CollectionChange*", "value")
			], true),
			InterfaceMethod("Key", "HRESULT", "", InterfaceType.propget, [
				InterfaceArgument(ArgumentDirection.out_, "TKey*", "value")
			], true),
		]),
		Interface("IObservableMap", ["IInspectable"], [], [], ["TKey", "TValue"], "", "", false, false, [
			InterfaceMethod("MapChanged", "HRESULT", "", InterfaceType.eventadd, [
				InterfaceArgument(ArgumentDirection.in_, "Windows.Foundation.Collections.MapChangedEventHandler!(TKey, TValue)", "handler"),
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "EventRegistrationToken*", "token")
			], true),
			InterfaceMethod("MapChanged", "HRESULT", "", InterfaceType.eventremove, [
				InterfaceArgument(ArgumentDirection.in_, "EventRegistrationToken", "token")
			], true),
		]),
		Interface("IObservableVector", ["IInspectable"], [], [], ["Type"], "", "", false, false, [
			InterfaceMethod("VectorChanged", "HRESULT", "", InterfaceType.eventadd, [
				InterfaceArgument(ArgumentDirection.in_, "Windows.Foundation.Collections.VectorChangedEventHandler!(Type)", "handler"),
				InterfaceArgument(ArgumentDirection.out_ | ArgumentDirection.retval, "EventRegistrationToken*", "token")
			], true),
			InterfaceMethod("VectorChanged", "HRESULT", "", InterfaceType.eventremove, [
				InterfaceArgument(ArgumentDirection.in_, "EventRegistrationToken", "token")
			], true),
		]),
	])
];
// Extra patches for specific interfaces
InterfaceMethod[][string] extraMethods;
shared static this() {
	extraMethods = [
		"IAsyncAction": [
			InterfaceMethod("Completed", "Windows.Foundation.AsyncActionCompletedHandler", "", InterfaceType.propget, [
			], true, "Windows.Foundation.AsyncActionCompletedHandler ret;\nDebug.OK((cast(IAsyncAction)this.asInterface(uuid(\"5a648006-843a-4da9-865b-9d26e5dfad7b\"))).get_Completed(&ret));\nreturn ret;"),
			InterfaceMethod("Completed", "void", "", InterfaceType.propset, [
				InterfaceArgument(ArgumentDirection.in_, "Windows.Foundation.AsyncActionCompletedHandler", "handler")
			], true, "Debug.OK((cast(IAsyncAction)this.asInterface(uuid(\"5a648006-843a-4da9-865b-9d26e5dfad7b\"))).set_Completed(handler));"),
		]
	];
}
//dfmt on
string[] ignored = [
	"activation.idl", "AsyncInfo.idl", "EventToken.idl", "hstring.idl",
	"inspectable.idl", "DocumentSource.idl", "rdpappcontainerclient.idl"
];
// Rest will be filled
string[] pointerTypes = ["IInspectable", "IUnknown", "IAsyncInfo"];
// Can't bother to fix, cppwinrt doesn't have those either
string[] blockedInterfaces = [
	"IMetaDataDispenser", "IMetaDataDispenserEx", "IMetaDataAssemblyImport",
	"IMetaDataImport", "IMetaDataImport2"
];

string[] defines;
bool directx;

void main(string[] args)
{
	auto res = getopt(args, "d|define", &defines, "x|directx", &directx);
	if (res.helpWanted)
	{
		defaultGetoptPrinter("WinRT IDL to D generator.", res.options);
		return;
	}

	if (directx)
		modules = [];
	else
	{
		foreach (ref obj; modules[0].interfaces) // Implementations of built-in types
		{
			auto num = obj.methods.length;
			for (int i = 0; i < num; i++)
			{
				auto copy = obj.methods[i];
				if (copy.implementation.length)
					continue;
				copy.implement("Windows.Foundation." ~ obj.name ~ "!(" ~ obj.templateArgs.join(", ") ~ ")");
				obj.methods ~= copy;
			}
		}
	}
	dirEntries(directx ? `directx\base`
			: `C:\Program Files (x86)\Windows Kits\10\Include\10.0.15063.0\winrt`, SpanMode.shallow)
		.array.sort!"a < b".each!(processIDL);
	foreach (ref mod; modules)
		mod.fixTypes;
	foreach (ref mod; modules)
		mod.implement;
	if (directx)
	{
		foreach (mod; modules)
		{
			auto fileName = buildPath("directx", mod.fileName);
			mkdirRecurse(fileName.dirName);
			writeln("Writing to ", fileName);
			std.file.write(fileName, mod.toString);
		}
	}
	else
	{
		foreach (mod; modules)
		{
			auto fileName = buildPath("source", mod.fileName);
			mkdirRecurse(fileName.dirName);
			writeln("Writing to ", fileName);
			std.file.write(fileName, mod.toString);
		}
		append(buildPath("source", "Windows", "Foundation", "package.d"), foundationSuffix);
		writeln("Finding template UUIDs");
		dirEntries(`C:\Program Files (x86)\Windows Kits\10\Include\10.0.15063.0`, SpanMode.breadth).filter!(
				a => a.extension == ".h").array.sort!"a < b".each!findUUIDs;
		if (templateUUIDs.length)
		{
			string uuidsIfs = "\t" ~ templateUUIDs.to!(string[])
				.map!indent.join("\n")["\telse ".length .. $];
			//dfmt off
			string uuidsContent = [
				"module dwinrt.uuids;",
				"",
				"import dwinrt;",
				"",
				"GUID uuidOfInstanced(string T)",
				"{",
				uuidsIfs,
				"\telse",
				"\t\treturn GUID.init;",
				"}"
			].join("\n");
			//dfmt on
			std.file.write(buildPath("source", "dwinrt", "uuids.d"), uuidsContent);
		}
		modules.each!(mod => writeln("public static import " ~ mod.name.join(".") ~ ";"));
	}
}

struct TemplateUUID
{
	string dType;
	string uuid;

	string toString() const
	{
		return "else if (T == \"" ~ dType ~ "\")\n\treturn uuid(\"" ~ uuid ~ "\");";
	}
}

TemplateUUID[] templateUUIDs;

void findUUIDs(string file)
{
	enum magic = "struct __declspec(uuid(\"";

	string currentUUID;
	foreach (line; File(file).byLine(KeepTerminator.no))
	{
		line = line.strip;
		if (line.startsWith(magic) && line.endsWith("\"))"))
			currentUUID = line[magic.length .. $ - 3].idup;
		else if (currentUUID.length)
		{
			scope (exit)
				currentUUID.length = 0;
			if (!line.canFind("<"))
				continue;
			if (line.canFind("__"))
				continue;
			auto inherit = line.indexOf(" : ");
			auto def = line.indexOf(" {");
			if (inherit == -1)
				inherit = ptrdiff_t.max;
			if (def == -1)
				def = ptrdiff_t.max;
			auto end = inherit < def ? inherit : def;
			if (end == ptrdiff_t.max)
			{
				writeln("Invalid line ", line);
				continue;
			}
			string dtype = line[0 .. end].idup.translateType.replace("::", ".").replace("ABI.", "");
			auto templateIndex = dtype.indexOf("!");
			enforce(templateIndex > 0);
			auto parts = dtype[templateIndex + 1 .. $].splitTypes;
			string[] fixedTypes;
			bool exists = true;
			foreach (part; parts)
			{
				part = part.strip;
				if (!part.length)
					throw new Exception("Invalid empty part");
				if (part.startsWith("struct "))
					fixedTypes ~= part["struct ".length .. $];
				else if (part.startsWith("enum "))
					fixedTypes ~= part["enum ".length .. $];
				else
				{
					part.fixType;
					if (part.canFind(".") && part[$ - 1] == '*')
						writeln("Type probably not properly resolved: ", part);
					if (part.startsWith("Microsoft."))
					{
						exists = false;
						break;
					}
					fixedTypes ~= part.stripNamespace;
				}
			}
			if (!exists)
				continue;
			string baseType = dtype[0 .. templateIndex];
			switch (baseType)
			{
			case "IAsyncActionProgressHandler":
			case "IAsyncActionWithProgressCompletedHandler":
			case "IAsyncOperationCompletedHandler":
			case "IAsyncOperationProgressHandler":
			case "IAsyncOperationWithProgressCompletedHandler":
			case "ITypedEventHandler":
			case "IEventHandler":
				baseType = baseType[1 .. $];
				break;
			default:
				break;
			}
			string rebuilt = baseType.stripNamespace ~ "!(" ~ fixedTypes.join(", ") ~ ")";
			templateUUIDs ~= TemplateUUID(rebuilt, currentUUID);
		}
	}
}

void processIDL(string file)
{
	if (ignored.canFind(file.baseName))
		return;

	if (file.extension != ".idl")
		return;

	//if (file.baseName != "windows.ui.xaml.controls.idl")
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
	enforce(parsed.successful, "Could not parse " ~ file ~ "\n\nParseTree:\n" ~ parsed.toString);
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
				if (node.children[0].name == "IDL.enum_typedef")
				{
					enforce(node.children.length == 2, node.toString);
					enforce(node.children[1].name == "IDL.cidentifier", node.toString);
					string name = node.children[1].matches.join("");
					EnumMember[] members;
					bool found = false;
					foreach (enumBody; node.children[0].children)
					{
						if (enumBody.name != "IDL.enum_body")
							continue;
						found = true;
						parseEnumBody(enumBody, members, name);
					}
					if (!found)
						break; // Forward declaration
					makeMod(namespace).enums ~= Enum(name, false, members);
				}
				else if (node.children[0].name == "IDL.struct_typedef")
				{
					enforce(node.children.length == 2, node.toString);
					enforce(node.children[1].name == "IDL.cidentifier", node.toString);
					string name = node.children[1].matches.join("");
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
					makeMod(namespace).structs ~= Struct(name, members);
				}
				else if (node.children[0].name == "IDL.union_typedef")
				{
					enforce(node.children.length == 2, node.toString);
					enforce(node.children[1].name == "IDL.cidentifier", node.toString);
					string name = node.children[1].matches.join("");
					writeln("TODO ", node);
				}
				else if (node.children[0].name == "IDL.delegate_typedef")
				{
					writeln("TODO ", node);
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
				obj.inherits ~= "IUnknown";
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
				enforce(dcl.children.length == 1 || dcl.children.length == 2, dcl.toString);
				auto header = dcl.children[0];
				Interface obj;
				obj.isRuntimeClass = header.matches[0] == "runtimeclass";
				enforce(header.name == "IDL.interface_header", header.toString);
				ParseTree body_;
				if (dcl.children.length == 2)
				{
					body_ = dcl.children[1];
					enforce(body_.name == "IDL.interface_body", body_.toString);
				}
				string name = header.matches[1];
				obj.name = name;
				if (blockedInterfaces.canFind(obj.name))
					break;
				fetchUUID(obj.uuid);
				foreach_reverse (attrib; attributes)
				{
					foreach_reverse (content; attrib.children)
					{
						enforce(content.name == "IDL.definition_content");
						if (content.children.length == 1)
						{
							if (content.children[0].name == "IDL.exclusiveto")
							{
								enforce(content.children[0].children[0].name == "IDL.scoped_name");
								obj.exclusiveto = content.children[0].children[0].matches.join("");
							}
							else if (content.children[0].name == "IDL.composable")
							{
								enforce(content.children[0].children[0].name == "IDL.scoped_name");
								obj.composable = content.children[0].children[0].matches.join("");
							}
							else if (content.children[0].name == "IDL.static_")
							{
								enforce(content.children[0].children[0].name == "IDL.scoped_name");
								obj.staticBase = content.children[0].children[0].matches.join("");
							}
							else if (content.children[0].name == "IDL.activatable")
							{
								if (content.children[0].children.length > 1)
								{
									enforce(content.children[0].children[0].name == "IDL.scoped_name");
									enforce(content.children[0].children[1].name == "IDL.scoped_name");
									obj.activatable = content.children[0].children[0].matches.join("");
								}
								else
									obj.simpleActivatable = true;
							}
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
				if (body_ != ParseTree.init)
					foreach (fn; body_.children)
					{
						enforce(fn.name == "IDL.export_", fn.toString);
						int numAdded = 0;
						foreach_reverse (i, fnchild; fn.children)
						{
							if (fnchild.name == "IDL.definition_attribute")
							{
								numAdded++;
								attributes ~= fnchild;
								fn.children = fn.children[0 .. i] ~ fn.children[i + 1 .. $];
							}
						}
						scope (exit)
							attributes.length -= numAdded;
						enforce(fn.children.length == 1, fn.toString);
						auto opdcl = fn.children[0];
						if (opdcl.name == "IDL.cpp_quote")
							continue;
						if (opdcl.name == "IDL.declare_interface")
						{
							if (obj.isRuntimeClass)
							{
								enforce(opdcl.children.length == 1);
								enforce(opdcl.children[0].name == "IDL.type");
								bool overridable = false;
								foreach_reverse (attrib; attributes)
									foreach_reverse (content; attrib.children)
										if (content.matches.length && content.matches[0] == "overridable")
										{
											overridable = true;
											break;
										}
								obj.implements ~= Implement(opdcl.children[0].matches.join("")
										.translateType, overridable);
							}
							else
							{
								writeln("TODO nested interface ", opdcl);
							}
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
					parseEnumBody(type.children[0], members, name);
					makeMod(namespace).enums ~= Enum(name, flags, members);
					break;
				default:
					throw new Exception("Unknown type dcl: " ~ type.name);
				}
				break;
			case "IDL.const_dcl":
				enforce(node.children.length == 3);
				auto type = node.children[0];
				enforce(type.name == "IDL.type");
				auto identifier = node.children[1];
				enforce(identifier.name == "IDL.cidentifier");
				auto value = node.children[2];
				enforce(value.name == "IDL.const_exp");
				makeMod(namespace).constants ~= Const(type.matches.join("")
						.translateType, identifier.matches[0], value.matches.join(""));
				break;
			default:
				writeln("Skipping unknown node ", node);
				break;
			}
		}
	}

	process(spec.children);
}

void parseEnumBody(ParseTree enumBody, ref EnumMember[] members, string name)
{
	enforce(enumBody.name == "IDL.enum_body");
	foreach (member; enumBody.children)
	{
		enforce(member.name == "IDL.enumerator");
		enforce(member.matches.length >= 3 || member.matches.length == 1, member.toString);
		if (member.matches.length == 1)
		{
			members ~= EnumMember(member.matches[0].fixEnumName(name));
		}
		else
		{
			int skip = 0;
			foreach (child; member.children[0 .. $ - 1])
				skip += child.matches.length;
			auto value = member.children[$ - 1];
			enforce(value.name == "IDL.const_exp");
			members ~= EnumMember(member.matches[skip].fixEnumName(name),
					value.matches.join("").fixEnumName(name, true));
		}
	}
}

string fixEnumName(string name, string enumName, bool value = false)
{
	if (value && name.isNumeric)
		return name;
	if (value && name.length >= 3 && name[0] == '0' && name[1] == 'x')
		return name;
	string ret = name;
	if ((enumName.endsWith("_MODE") || enumName.endsWith("_TYPE")
			|| enumName.endsWith("_FLAG")) && name.startsWith(enumName[0 .. $ - 4]))
		ret = name[enumName.length - 4 .. $];
	else if ((enumName.endsWith("_FLAGS") || enumName.endsWith("_HINTS"))
			&& name.startsWith(enumName[0 .. $ - 5]))
		ret = name[enumName.length - 5 .. $];
	else if (name.startsWith(enumName ~ '_'))
		ret = name[enumName.length + 1 .. $];
	else if (name.startsWith("D3D_"))
		ret = name[4 .. $];
	else if (name.startsWith("D3D10_") || name.startsWith("D3D11_"))
		ret = name[6 .. $];
	return ret.makeDSafe;
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
		if (member.children.length == 2)
		{
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
		else
		{
			enforce(member.children.length > 0, member.toString);
			if (member.children[0].name == "IDL.union_typedef")
			{

			}
			else if (member.children[0].name == "IDL.struct_typedef")
			{

			}
			else
				throw new Exception("Unknown member: " ~ member.toString);
		}
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
					else if (spec.children.length == 1 && spec.children[0].name == "IDL.helpstring")
					{
						enforce(spec.children[0].children.length >= 1);
						method.documentation = spec.children[0].children[0].parseString(true);
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
	else if (!name.length || (name[0] >= '0' && name[0] <= '9'))
		return '_' ~ name;
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
		foreach (ref obj; constants)
			obj.type.fixType;
	}

	void implement()
	{
		foreach (ref obj; interfaces)
			obj.implement();
	}

	Interface[] interfaces;
	Enum[] enums;
	Struct[] structs;
	Const[] constants;

	string toString() const
	{
		string ret;
		ret ~= "module " ~ name.join(".") ~ ";\n\n";
		ret ~= "import dwinrt;\n";
		foreach (dep; dependencies)
			ret ~= "import " ~ dep ~ ";\n";
		ret ~= "\n";
		foreach (obj; constants)
			ret ~= obj.toString ~ "\n";
		if (constants.length)
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

bool moduleExists(string[] name)
{
	foreach (ref mod; modules)
		if (mod.name == name)
			return true;
	return false;
}

ref Module makeMod(string[] name, string[] deps = [])
{
	if (name.length == 0)
		name = directx ? ["directx"] : ["Windows", "Foundation"];
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

Interface findInterface(string fullname)
{
	if (fullname == "IInspectable" || fullname == "IUnknown" || fullname == "IAsyncInfo")
		return Interface.init;
	enforce(fullname.startsWith("Windows."), fullname);
	string templateImpl;
	auto excl = fullname.indexOf("!");
	if (excl != -1)
	{
		templateImpl = fullname[excl + 1 .. $];
		fullname = fullname[0 .. excl];
	}
	string[] parts = fullname.split(".");
	string name = parts[$ - 1];
	foreach (ref obj; makeMod(parts[0 .. $ - 1]).interfaces)
	{
		if (obj.name == name)
		{
			if (templateImpl.length)
				return obj.instance(templateImpl.splitTypes);
			else
				return obj;
		}
	}
	throw new Exception(
			"Interface not found: " ~ fullname ~ ", searched for " ~ name ~ " in " ~ parts[0 .. $ - 1].join(
			"."));
}

struct Const
{
	string type;
	string name;
	string rawValue;

	string toString() const
	{
		return "enum " ~ type ~ " " ~ name ~ " = " ~ rawValue ~ ";";
	}
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
		ret ~= name.makeDSafe;
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

struct Implement
{
	string type;
	bool overridable;
}

struct Interface
{
	string name;
	string[] inherits;
	string[] requires;
	Implement[] implements;
	string[] templateArgs;
	string uuid;
	string exclusiveto;
	bool isDelegate;
	bool isRuntimeClass;
	InterfaceMethod[] methods;
	string composable;
	string staticBase;
	string activatable;
	bool simpleActivatable;

	Interface instance(string[] types)
	{
		enforce(templateArgs.length == types.length);
		Interface instanced;
		instanced.name = name;
		instanced.inherits = inherits.dup;
		instanced.requires = requires.dup;
		instanced.implements = implements.dup;
		instanced.templateArgs = [];
		instanced.uuid = uuid;
		instanced.exclusiveto = exclusiveto;
		instanced.isDelegate = isDelegate;
		instanced.isRuntimeClass = isRuntimeClass;
		foreach (method; methods)
		{
			auto copy = method;
			copy.arguments = [];
			foreach (arg; method.arguments)
			{
				for (int i = 0; i < types.length; i++)
					arg.type = arg.type.replace(templateArgs[i], types[i]);
				copy.arguments ~= arg;
			}
			instanced.methods ~= copy;
		}
		instanced.composable = composable;
		instanced.staticBase = staticBase;
		instanced.activatable = activatable;
		instanced.simpleActivatable = simpleActivatable;
		return instanced;
	}

	void fixTypes()
	{
		foreach (ref type; inherits)
			type.fixType;
		foreach (ref type; requires)
			type.fixType;
		foreach (ref type; implements)
			type.type.fixType;
		foreach (ref method; methods)
			method.fixTypes();
	}

	void implement()
	{
		if (!isRuntimeClass)
			return;
		enforce(methods.length == 0, "Is runtime class but got " ~ methods.to!string ~ " as methods.");
		foreach (base; implements)
			implement(base, findInterface(base.type));
	}

	void implement(Implement baseImplement, Interface base)
	{
		if (baseImplement.overridable)
			return;
		string baseName = baseImplement.type;
		if (base == Interface.init)
			return;
		foreach (mem; base.inherits)
			implement(Implement(mem, baseImplement.overridable), findInterface(mem));
		foreach ( /* noref */ method; base.methods)
		{
			if (method.implementation.length)
				continue;
			method.implement(baseName);
			if (method.implementation.length)
				methods ~= method;
		}
	}

	string toString() const
	{
		string ret;
		if (uuid.length)
			ret ~= "@uuid(\"" ~ uuid ~ "\")\n";
		if (exclusiveto.length)
			ret ~= "@WinrtFactory(\"" ~ exclusiveto ~ "\")\n";
		ret ~= "interface " ~ name;
		if (requires.length)
			ret ~= "_Base";
		if (templateArgs.length)
			ret ~= "(" ~ templateArgs.join(", ") ~ ")";
		if (inherits.length + implements.length)
			ret ~= " : " ~ (inherits ~ implements.map!"a.type".array).join(", ");
		ret ~= "\n{\n";
		if (methods.length)
			ret ~= "extern(Windows):\n";
		auto extra = name in extraMethods;
		foreach (method; methods ~ (extra ? *extra : []))
			ret ~= method.toString.indent ~ "\n";
		if (staticBase.length)
		{
			if (methods.length)
				ret ~= "\n";
			ret ~= "\tprivate static " ~ staticBase ~ " _staticInstance;\n";
			ret ~= "\tpublic static " ~ staticBase ~ " staticInstance()\n";
			ret ~= "\t{\n";
			ret ~= "\t\tif (_staticInstance is null) _staticInstance = factory!(" ~ staticBase ~ ");\n";
			ret ~= "\t\treturn _staticInstance;\n";
			ret ~= "\t}";
			auto base = findInterface(staticBase);
			foreach (method; base.methods)
			{
				method.implement(staticBase, false);
				method.implementation = method.implementation.replace("this.", "staticInstance.");
				ret ~= "\n" ~ method.toString("static ").indent;
			}
			ret ~= "\n";
		}
		if (simpleActivatable)
		{
			ret ~= "\tstatic " ~ name ~ " New()\n";
			ret ~= "\t{\n";
			ret ~= "\t\tIInspectable ret;\n";
			ret ~= "\t\tDebug.OK(activationFactory!(" ~ name ~ ").abi_ActivateInstance(&ret));\n";
			ret ~= "\t\treturn cast(" ~ name ~ ") ret;\n";
			ret ~= "\t}\n";
		}
		if (activatable.length)
		{
			auto factory = findInterface(activatable);
			foreach (method; factory.methods)
			{
				method.implement(activatable);
				method.name = "New";
				method.implementation = "auto factory = factory!(" ~ activatable ~ ");\n" ~ method.implementation.replace("this.",
						"factory.");
				if (method.returnType.startsWith("const "))
					method.returnType = "auto";
				ret ~= method.toString("static ").indent ~ "\n";
			}
		}
		if (composable.length)
		{
			auto obj = findInterface(composable);
			if (obj.methods.length)
			{
				if (obj.methods[0].name == "CreateInstance")
				{
					string extraArgs;
					string extraVals;
					foreach (arg; obj.methods[0].arguments[0 .. $ - 3])
					{
						extraArgs ~= arg.toString ~ ", ";
						extraVals ~= arg.fullName ~ ", ";
					}
					if (extraArgs.length)
						extraArgs.length -= 2;
					ret ~= "\tstatic " ~ name ~ " New(" ~ extraArgs ~ ")\n";
					ret ~= "\t{\n";
					ret ~= "\t\tIInspectable outer, inner;\n";
					ret ~= "\t\t" ~ name ~ " ret;\n";
					ret ~= "\t\tDebug.OK(activationFactory!(" ~ name ~ ", " ~ composable
						~ ").abi_CreateInstance(" ~ extraVals ~ "outer, &inner, &ret));\n";
					ret ~= "\t\treturn ret;\n";
					ret ~= "\t}\n";
				}
				else
				{
					writeln("TODO: Implement composable creation of ", name, " - ", composable);
				}
			}
		}
		ret ~= "}";
		if (requires.length)
		{
			if (uuid.length)
				ret ~= "\n@uuid(\"" ~ uuid ~ "\")";
			if (exclusiveto.length)
				ret ~= "\n@WinrtFactory(\"" ~ exclusiveto ~ "\")";
			ret ~= "\ninterface " ~ name;
			if (templateArgs.length)
				ret ~= "(" ~ templateArgs.join(", ") ~ ")";
			ret ~= " : " ~ name ~ "_Base";
			if (templateArgs.length)
				ret ~= "!(" ~ templateArgs.join(", ") ~ ")";
			ret ~= ", " ~ requires.join(", ") ~ " {}";
		}
		if (composable.length)
		{
			ret ~= "\n@makable!(" ~ name ~ ", " ~ name ~ ", " ~ composable ~ ")\n";
			ret ~= "class " ~ name ~ "T(Base) : AgileObject!Base, " ~ name ~ "\n{\n";
			ret ~= "\toverride HRESULT QueryInterface(const(IID)* riid, void** ppv)\n\t{\n";
			ret ~= "\t\tauto ret = super.QueryInterface(riid, ppv);\n";
			ret ~= "\t\tif (ret == E_NOINTERFACE)\n";
			ret ~= "\t\t\treturn m_inner.QueryInterface(riid, ppv);\n";
			ret ~= "\t\treturn ret;\n";
			ret ~= "\t}\n";
			foreach (implement; implements)
			{
				auto obj = findInterface(implement.type);
				foreach (method; obj.methods)
					ret ~= method.toComposeString(implement.type, implement.overridable).indent ~ "\n";
				ret ~= "\n";
			}
			ret ~= "\tthis() {}\n";
			ret ~= "\tIInspectable m_inner;\n";
			ret ~= "}";
		}
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
	bool typeFixed;
	string implementation, documentation;

	void implement(string baseName, bool needsAs = true)
	{
		auto self = needsAs ? "this".as(baseName) : "this";
		if (type == InterfaceType.eventadd)
		{
			enforce(arguments.length == 2);
			string fname = fullName;
			string type = arguments[0].type;
			string args;
			if (arguments[0].type.startsWith("Windows.Foundation.TypedEventHandler!("))
				args = type["Windows.Foundation.TypedEventHandler!(".length .. $ - 1];
			else if (arguments[0].type.startsWith("Windows.Foundation.EventHandler!("))
				args = "IInspectable, " ~ type["Windows.Foundation.EventHandler!(".length .. $ - 1];
			else if (!arguments[0].type.canFind("!"))
			{
				auto obj = findInterface(type);
				if (obj.methods.length == 1 && obj.methods[0].name == "Invoke")
					args = obj.methods[0].arguments.map!"a.type".join(", ");
			}
			if (args.length)
			{
				enforce(arguments[1].type == "EventRegistrationToken*", arguments[1].type);
				arguments = [InterfaceArgument(ArgumentDirection.in_, "void delegate(" ~ args ~ ")", "fn")];
				name = "On" ~ name;
				returnType = "EventRegistrationToken";
				string registerCall = "Debug.OK(" ~ self ~ "." ~ fname ~ "(event!(" ~ type
					~ ", " ~ args ~ ")(fn), &tok));";
				implementation = "EventRegistrationToken tok;\n" ~ registerCall ~ "\nreturn tok;";
			}
			else
			{
				writeln("TODO implement EventHandler Type ", arguments[0].type);
			}
		}
		else if (type == InterfaceType.eventremove)
		{
			enforce(arguments.length == 1);
			string fname = fullName;
			name = "remove" ~ name;
			returnType = "void";
			implementation = "Debug.OK(" ~ self ~ "." ~ fname ~ "(" ~ arguments[0].fullName ~ "));";
		}
		else
		{
			string fname = fullName;
			int returnIndex = -1;
			foreach (i, arg; arguments)
			{
				if (arg.direction & ArgumentDirection.retval)
				{
					returnType = arg.type;
					enforce(returnType[$ - 1] == '*');
					returnType.length--;
					returnIndex = cast(int) i;
					break;
				}
			}
			if (returnIndex != -1)
			{
				string argsPre = arguments[0 .. returnIndex].map!"a.fullName".join(", ");
				if (argsPre.length)
					argsPre ~= ", ";
				string argsPost = arguments[returnIndex + 1 .. $].map!"a.fullName".join(", ");
				arguments = arguments[0 .. returnIndex] ~ arguments[returnIndex + 1 .. $];
				string pre = returnType ~ " _ret;\n";
				string args = argsPre ~ "&_ret";
				if (argsPost.length)
					args ~= ", " ~ argsPost;
				string post = "\nreturn _ret;";
				implementation = pre ~ "Debug.OK(" ~ self ~ "." ~ fname ~ "(" ~ args ~ "));" ~ post;
			}
			else
			{
				string args = arguments.map!"a.fullName".join(", ");
				returnType = "void";
				implementation = "Debug.OK(" ~ self ~ "." ~ fname ~ "(" ~ args ~ "));";
			}
		}
	}

	void fixTypes()
	{
		if (typeFixed)
			return;
		typeFixed = true;
		if (returnType != "HRESULT")
			returnType.fixType;
		foreach (ref argument; arguments)
			argument.type.fixType;
	}

	string fullName() const
	{
		string ret;
		if (!implementation.length) final switch (type) with (InterfaceType)
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
			if (!directx)
				ret ~= "abi_";
			break;
		}
		ret ~= name;
		return ret;
	}

	string toString(string implementationPrefix = "final ") const
	{
		string ret;
		if (documentation.length)
			ret ~= "/// " ~ documentation ~ "\n";
		if (deprecation.length)
			ret ~= "deprecated(" ~ deprecation ~ ")\n";
		if (implementation.length)
			ret ~= implementationPrefix;
		ret ~= returnType ~ " ";
		ret ~= fullName;
		ret ~= "(";
		ret ~= arguments.to!(string[]).join(", ");
		ret ~= ")";
		if (implementation.length)
			ret ~= "\n{\n" ~ implementation.indent ~ "\n}";
		else
			ret ~= ";";
		return ret;
	}

	string toComposeString(string as, bool overridable) const
	{
		string ret;
		ret ~= "override HRESULT " ~ fullName ~ "(";
		ret ~= arguments.to!(string[]).join(", ");
		ret ~= ")";
		ret ~= " {";
		if (overridable)
		{
			ret ~= " this." ~ name ~ "(";
			ret ~= arguments.map!"a.fullName".join(", ");
			ret ~= "); return S_OK; ";
			ret ~= "}\n";
			ret ~= "void " ~ name ~ "(";
			ret ~= arguments.to!(string[]).join(", ");
			ret ~= ") { Debug.OK(";
		}
		else
			ret ~= " return ";

		ret ~= "m_inner".as(as);
		ret ~= "." ~ fullName ~ "(";
		ret ~= arguments.map!"a.fullName".join(", ");
		if (overridable)
			ret ~= "));";
		else
			ret ~= ");";
		ret ~= " }";
		return ret;
	}
}

string as(string var, string type)
{
	Interface obj;
	try
	{
		obj = findInterface(type);
	}
	catch (Exception)
	{
	}
	if (obj.uuid.length)
		return "(cast(" ~ type ~ ")" ~ var ~ ".asInterface(uuid(\"" ~ obj.uuid ~ "\")))";
	else
	{
		if (!type.canFind("!"))
			writeln("No .as! for type ", type);
		return "(cast(" ~ type ~ ")" ~ var ~ ")";
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
	type = type.replace(" const ", " ").replace("*const ", "* ")
		.replace(" const*", " *").replace("*const*", "**"); // don't care for T*const* types
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
	if (type[0] == '(' && type[$ - 1] == ')')
		type = type[1 .. $ - 1];
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

string stripNamespace(string type)
{
	auto templateIndex = type.indexOf("!");
	if (templateIndex == -1)
		return type.split('.')[$ - 1];
	else
	{
		string pre = type[0 .. templateIndex];
		auto args = type[templateIndex + 1 .. $].splitTypes.map!stripNamespace;
		return pre.stripNamespace ~ "!(" ~ args.join(", ") ~ ")";
	}
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

	string fullName() const
	{
		string ret;
		if (direction & ArgumentDirection.retval)
			ret ~= "return_";
		else if (direction & ArgumentDirection.out_)
			ret ~= "out_";
		ret ~= name.makeDSafe;
		return ret;
	}

	string toString() const
	{
		string ret;
		ret ~= type;
		ret ~= " ";
		ret ~= fullName;
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
		"size_t"), Alias("DOUBLE", "double"), Alias("BSTR", "wchar*"),
	Alias("UINT", "uint"), Alias("BOOLEAN", "bool"), Alias("USHORT", "ushort"),
	Alias("UINT64", "ulong"), Alias("WCHAR", "wchar"), Alias("SIZE_T", "size_t"),
	Alias("FLOAT", "float"), Alias("BYTE", "ubyte"), Alias("LPVOID", "void*"),
	Alias("ULONGLONG", "ulong")
];

/// async base in Windows.Foundation

string foundationSuffix = q{
struct ComCallData
{
	DWORD dwDispid;
	DWORD dwReserved;
	void* pUserDefined;
}

alias ContextCallbackCallback = extern (Windows) HRESULT function(ComCallData* pParam);

@uuid("000001da-0000-0000-c000-000000000046")
interface IContextCallback : IUnknown
{
extern (Windows):
	HRESULT ContextCallback(ContextCallbackCallback pCallback,
			ComCallData* pParam, REFIID riid, int iMethod, IUnknown* pUnk);
}

struct AwaitAdapter(Async) if (IsAsync!Async)
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
		Debug.OK(CoGetObjectContext(uuidOf!IContextCallback, cast(void**)&context));

		async.Completed = (result, status) {
			ComCallData data;
			data.pUserDefined = cast(void*)&callback;

			ContextCallbackCallback cb = (data) {
				(*cast(void delegate()*) data.pUserDefined)();
				return S_OK;
			};

			Debug.OK(context.ContextCallback(cb, &data,
				IID_ICallbackWithNoReentrancyToApplicationSTA, 5, null));
		};
	}

	auto await_resume() const
	{
		return async.GetResults;
	}
}

AwaitAdapter!Async await(Async)(auto ref Async async) if (IsAsync!Async)
{
	return AwaitAdapter!Async(async);
}

enum IsAsync(T) = is(T == struct) && __traits(compiles, {
		T async;
		AsyncStatus status = async.Status;
		async.Completed((AsyncStatus) {  });
		auto res = async.GetResults;
		static assert(!is(typeof(res) == void));
	});
};
