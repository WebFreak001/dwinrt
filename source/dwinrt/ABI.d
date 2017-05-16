module dwinrt.ABI;

public import core.sys.windows.windows;

import dwinrt;

struct traits(T)
{
	alias default_interface = T;
}

enum default_interface(T) = traits!T.default_interface;

template arg_in(T)
{
	static if (is(default_interface!T : IUnknown))
		alias arg_in = default_interface!T*;
	else
		alias arg_in = T;
}

template arg_out(T)
{
	static if (is(default_interface!T : IUnknown))
		alias arg_in = default_interface!T**;
	else
		alias arg_in = T*;
}

// TODO: this must be removed. The ABI projection should just use HSTRING directly. (from windows header)
alias hstring = HSTRING;
