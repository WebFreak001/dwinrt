module Windows.System.Display;

import dwinrt;

@uuid("e5732044-f49f-4b60-8dd4-5e7e3a632ac0")
@WinrtFactory("Windows.System.Display.DisplayRequest")
interface IDisplayRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestActive();
	HRESULT abi_RequestRelease();
}

interface DisplayRequest
{
}