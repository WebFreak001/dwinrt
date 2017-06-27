module Windows.ApplicationModel.Preview.Holographic;

import dwinrt;

@uuid("fe038691-2a3a-45a9-a208-7bed691919f3")
@WinrtFactory("Windows.ApplicationModel.Preview.Holographic.HolographicApplicationPreview")
interface IHolographicApplicationPreviewStatics : IInspectable
{
extern(Windows):
	HRESULT abi_IsCurrentViewPresentedOnHolographicDisplay(bool* return_result);
	HRESULT abi_IsHolographicActivation(Windows.ApplicationModel.Activation.IActivatedEventArgs activatedEventArgs, bool* return_result);
}

interface HolographicApplicationPreview
{
	private static Windows.ApplicationModel.Preview.Holographic.IHolographicApplicationPreviewStatics _staticInstance;
	public static Windows.ApplicationModel.Preview.Holographic.IHolographicApplicationPreviewStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Preview.Holographic.IHolographicApplicationPreviewStatics);
		return _staticInstance;
	}
	static bool IsCurrentViewPresentedOnHolographicDisplay()
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsCurrentViewPresentedOnHolographicDisplay(&_ret));
		return _ret;
	}
	static bool IsHolographicActivation(Windows.ApplicationModel.Activation.IActivatedEventArgs activatedEventArgs)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsHolographicActivation(activatedEventArgs, &_ret));
		return _ret;
	}
}