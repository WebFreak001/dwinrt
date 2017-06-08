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
}