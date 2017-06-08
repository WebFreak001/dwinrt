module Windows.UI.Input.Core;

import dwinrt;

@uuid("3d577ef6-4cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.Core.RadialControllerIndependentInputSource")
interface IRadialControllerIndependentInputSource : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Controller(Windows.UI.Input.RadialController* return_value);
	HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value);
}

@uuid("3d577ef5-4cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.Core.RadialControllerIndependentInputSource")
interface IRadialControllerIndependentInputSourceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateForView(Windows.ApplicationModel.Core.CoreApplicationView view, Windows.UI.Input.Core.RadialControllerIndependentInputSource* return_result);
}

interface RadialControllerIndependentInputSource
{
}