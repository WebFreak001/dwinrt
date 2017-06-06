module dwinrt.eventhandler;

import dwinrt;

template EventHandler(T)
{
	static if (is(T == IInspectable))
		enum id = "c50898f6-c536-5f47-8583-8b2c2438a13b";
	else
		static assert(false, "No EventHandler for this type");

	@uuid(id)
	interface EventHandler : IUnknown
	{
	}
}
