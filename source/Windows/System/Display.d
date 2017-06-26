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
		Debug.OK(this.as!(Windows.System.Display.IDisplayRequest).abi_RequestActive());
	}
	final void RequestRelease()
	{
		Debug.OK(this.as!(Windows.System.Display.IDisplayRequest).abi_RequestRelease());
	}
	static DisplayRequest New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(DisplayRequest).abi_ActivateInstance(&ret));
		return ret.as!(DisplayRequest);
	}
}