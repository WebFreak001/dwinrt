module Windows.Devices.Lights;

import dwinrt;

@uuid("047d5b9a-ea45-4b2b-b1a2-14dff00bde7b")
@WinrtFactory("Windows.Devices.Lights.Lamp")
interface ILamp_Base : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT set_IsEnabled(bool value);
	HRESULT get_BrightnessLevel(float* return_value);
	HRESULT set_BrightnessLevel(float value);
	HRESULT get_IsColorSettable(bool* return_value);
	HRESULT get_Color(Windows.UI.Color* return_value);
	HRESULT set_Color(Windows.UI.Color value);
	HRESULT add_AvailabilityChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Lights.Lamp, Windows.Devices.Lights.LampAvailabilityChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AvailabilityChanged(EventRegistrationToken token);
}
@uuid("047d5b9a-ea45-4b2b-b1a2-14dff00bde7b")
@WinrtFactory("Windows.Devices.Lights.Lamp")
interface ILamp : ILamp_Base, Windows.Foundation.IClosable {}

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
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Lights.ILamp)this.asInterface(uuid("047d5b9a-ea45-4b2b-b1a2-14dff00bde7b"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Lights.ILamp)this.asInterface(uuid("047d5b9a-ea45-4b2b-b1a2-14dff00bde7b"))).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsEnabled(bool value)
	{
		Debug.OK((cast(Windows.Devices.Lights.ILamp)this.asInterface(uuid("047d5b9a-ea45-4b2b-b1a2-14dff00bde7b"))).set_IsEnabled(value));
	}
	final float BrightnessLevel()
	{
		float _ret;
		Debug.OK((cast(Windows.Devices.Lights.ILamp)this.asInterface(uuid("047d5b9a-ea45-4b2b-b1a2-14dff00bde7b"))).get_BrightnessLevel(&_ret));
		return _ret;
	}
	final void BrightnessLevel(float value)
	{
		Debug.OK((cast(Windows.Devices.Lights.ILamp)this.asInterface(uuid("047d5b9a-ea45-4b2b-b1a2-14dff00bde7b"))).set_BrightnessLevel(value));
	}
	final bool IsColorSettable()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Lights.ILamp)this.asInterface(uuid("047d5b9a-ea45-4b2b-b1a2-14dff00bde7b"))).get_IsColorSettable(&_ret));
		return _ret;
	}
	final Windows.UI.Color Color()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.Devices.Lights.ILamp)this.asInterface(uuid("047d5b9a-ea45-4b2b-b1a2-14dff00bde7b"))).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.Devices.Lights.ILamp)this.asInterface(uuid("047d5b9a-ea45-4b2b-b1a2-14dff00bde7b"))).set_Color(value));
	}
	final EventRegistrationToken OnAvailabilityChanged(void delegate(Windows.Devices.Lights.Lamp, Windows.Devices.Lights.LampAvailabilityChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Lights.ILamp)this.asInterface(uuid("047d5b9a-ea45-4b2b-b1a2-14dff00bde7b"))).add_AvailabilityChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Lights.Lamp, Windows.Devices.Lights.LampAvailabilityChangedEventArgs), Windows.Devices.Lights.Lamp, Windows.Devices.Lights.LampAvailabilityChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAvailabilityChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Lights.ILamp)this.asInterface(uuid("047d5b9a-ea45-4b2b-b1a2-14dff00bde7b"))).remove_AvailabilityChanged(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}

	private static Windows.Devices.Lights.ILampStatics _staticInstance;
	public static Windows.Devices.Lights.ILampStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Lights.ILampStatics);
		return _staticInstance;
	}
	static wstring GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return hstring(_ret).d_str;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Lights.Lamp) FromIdAsync(wstring deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Lights.Lamp) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(hstring(deviceId).handle, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Lights.Lamp) GetDefaultAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Lights.Lamp) _ret;
		Debug.OK(staticInstance.abi_GetDefaultAsync(&_ret));
		return _ret;
	}
}

interface LampAvailabilityChangedEventArgs : Windows.Devices.Lights.ILampAvailabilityChangedEventArgs
{
extern(Windows):
	final bool IsAvailable()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Lights.ILampAvailabilityChangedEventArgs)this.asInterface(uuid("4f6e3ded-07a2-499d-9260-67e304532ba4"))).get_IsAvailable(&_ret));
		return _ret;
	}
}