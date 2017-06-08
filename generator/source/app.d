import std.algorithm;
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

	if (!exists("processed"))
		mkdir("processed");
	if (!exists("tmp"))
		mkdir("tmp");

	dirEntries("base", SpanMode.shallow).each!(processIDL);
	//modules.each!()
	writeln(modules);
}

void processIDL(string file)
{
	if (ignored.canFind(file.baseName))
		return;

	//if (file.baseName != "windows.ui.xaml.customattributes.idl")
	//	return;

	writeln("Processing ", file);

	string[] namespace;

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

	std.file.write("processed/" ~ file[5 .. $], code);
	auto parsed = parseIDL(code);
	std.file.write("tmp/" ~ file[5 .. $], parsed.toString);
}

struct Module
{
	string[] name;
	string[] dependencies;
}

struct Interface
{
	string name;
	string uuid;
	string exclusiveto;

	InterfaceMethod[] methods;
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
