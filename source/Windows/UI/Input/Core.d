module Windows.UI.Input.Core;

import dwinrt;

@uuid("3d577ef6-4cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.Core.RadialControllerIndependentInputSource")
interface IRadialControllerIndependentInputSource : IInspectable
{
extern(Windows):
	HRESULT get_Controller(Windows.UI.Input.RadialController* return_value);
	HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value);
}

@uuid("3d577ef5-4cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.Core.RadialControllerIndependentInputSource")
interface IRadialControllerIndependentInputSourceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateForView(Windows.ApplicationModel.Core.CoreApplicationView view, Windows.UI.Input.Core.RadialControllerIndependentInputSource* return_result);
}

interface RadialControllerIndependentInputSource : Windows.UI.Input.Core.IRadialControllerIndependentInputSource
{
extern(Windows):
	final Windows.UI.Input.RadialController Controller()
	{
		Windows.UI.Input.RadialController _ret;
		Debug.OK((cast(Windows.UI.Input.Core.IRadialControllerIndependentInputSource)this.asInterface(uuid("3d577ef6-4cee-11e6-b535-001bdc06ab3b"))).get_Controller(&_ret));
		return _ret;
	}
	final Windows.UI.Core.CoreDispatcher Dispatcher()
	{
		Windows.UI.Core.CoreDispatcher _ret;
		Debug.OK((cast(Windows.UI.Input.Core.IRadialControllerIndependentInputSource)this.asInterface(uuid("3d577ef6-4cee-11e6-b535-001bdc06ab3b"))).get_Dispatcher(&_ret));
		return _ret;
	}

	private static Windows.UI.Input.Core.IRadialControllerIndependentInputSourceStatics _staticInstance;
	public static Windows.UI.Input.Core.IRadialControllerIndependentInputSourceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Input.Core.IRadialControllerIndependentInputSourceStatics);
		return _staticInstance;
	}
	static Windows.UI.Input.Core.RadialControllerIndependentInputSource CreateForView(Windows.ApplicationModel.Core.CoreApplicationView view)
	{
		Windows.UI.Input.Core.RadialControllerIndependentInputSource _ret;
		Debug.OK(staticInstance.abi_CreateForView(view, &_ret));
		return _ret;
	}
}