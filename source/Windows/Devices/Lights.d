module Windows.Devices.Lights;

import dwinrt;

@uuid("047d5b9a-ea45-4b2b-b1a2-14dff00bde7b")
@WinrtFactory("Windows.Devices.Lights.Lamp")
interface ILamp : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT set_IsEnabled(bool value);
	HRESULT get_BrightnessLevel(FLOAT* return_value);
	HRESULT set_BrightnessLevel(FLOAT value);
	HRESULT get_IsColorSettable(bool* return_value);
	HRESULT get_Color(Windows.UI.Color* return_value);
	HRESULT set_Color(Windows.UI.Color value);
	HRESULT add_AvailabilityChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Lights.Lamp, Windows.Devices.Lights.LampAvailabilityChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AvailabilityChanged(EventRegistrationToken token);
}

@uuid("4f6e3ded-07a2-499d-9260-67e304532ba4")
@WinrtFactory("Windows.Devices.Lights.LampAvailabilityChangedEventArgs")
interface ILampAvailabilityChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_IsAvailable(bool* return_value);
}

@uuid("a822416c-8885-401e-b821-8e8b38a8e8ec")
@WinrtFactory("Windows.Devices.Lights.Lamp")
interface ILampStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Lights.Lamp)* return_operation);
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Lights.Lamp)* return_operation);
}

interface Lamp : Windows.Devices.Lights.ILamp, Windows.Foundation.IClosable
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Lights.ILamp).get_DeviceId(&_ret));
		return _ret;
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Lights.ILamp).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Devices.Lights.ILamp).set_IsEnabled(value));
	}
	final FLOAT BrightnessLevel()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.Devices.Lights.ILamp).get_BrightnessLevel(&_ret));
		return _ret;
	}
	final void BrightnessLevel(FLOAT value)
	{
		Debug.OK(this.as!(Windows.Devices.Lights.ILamp).set_BrightnessLevel(value));
	}
	final bool IsColorSettable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Lights.ILamp).get_IsColorSettable(&_ret));
		return _ret;
	}
	final Windows.UI.Color Color()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.Devices.Lights.ILamp).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.Devices.Lights.ILamp).set_Color(value));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface LampAvailabilityChangedEventArgs : Windows.Devices.Lights.ILampAvailabilityChangedEventArgs
{
extern(Windows):
	final bool IsAvailable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Lights.ILampAvailabilityChangedEventArgs).get_IsAvailable(&_ret));
		return _ret;
	}
}