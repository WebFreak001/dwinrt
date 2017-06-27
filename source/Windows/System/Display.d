module Windows.System.Display;

import dwinrt;

@uuid("e5732044-f49f-4b60-8dd4-5e7e3a632ac0")
@WinrtFactory("Windows.System.Display.DisplayRequest")
interface IDisplayRequest : IInspectable
{
extern(Windows):
	HRESULT abi_RequestActive();
	HRESULT abi_RequestRelease();
}

interface DisplayRequest : Windows.System.Display.IDisplayRequest
{
extern(Windows):
	final void RequestActive()
	{
		Debug.OK((cast(Windows.System.Display.IDisplayRequest)this.asInterface(uuid("e5732044-f49f-4b60-8dd4-5e7e3a632ac0"))).abi_RequestActive());
	}
	final void RequestRelease()
	{
		Debug.OK((cast(Windows.System.Display.IDisplayRequest)this.asInterface(uuid("e5732044-f49f-4b60-8dd4-5e7e3a632ac0"))).abi_RequestRelease());
	}
	static DisplayRequest New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(DisplayRequest).abi_ActivateInstance(&ret));
		return cast(DisplayRequest) ret;
	}
}