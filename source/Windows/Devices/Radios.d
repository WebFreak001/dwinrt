module Windows.Devices.Radios;

import dwinrt;

@uuid("252118df-b33e-416a-875f-1cf38ae2d83e")
@WinrtFactory("Windows.Devices.Radios.Radio")
interface IRadio : IInspectable
{
extern(Windows):
	HRESULT abi_SetStateAsync(Windows.Devices.Radios.RadioState value, Windows.Foundation.IAsyncOperation!(Windows.Devices.Radios.RadioAccessStatus)* return_retval);
	HRESULT add_StateChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Radios.Radio, IInspectable) handler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_StateChanged(EventRegistrationToken eventCookie);
	HRESULT get_State(Windows.Devices.Radios.RadioState* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Kind(Windows.Devices.Radios.RadioKind* return_value);
}

@uuid("5fb6a12e-67cb-46ae-aae9-65919f86eff4")
@WinrtFactory("Windows.Devices.Radios.Radio")
interface IRadioStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetRadiosAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Radios.Radio))* return_value);
	HRESULT abi_GetDeviceSelector(HSTRING* return_deviceSelector);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Radios.Radio)* return_value);
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Radios.RadioAccessStatus)* return_value);
}

interface Radio : Windows.Devices.Radios.IRadio
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Radios.RadioAccessStatus) SetStateAsync(Windows.Devices.Radios.RadioState value)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Radios.RadioAccessStatus) _ret;
		Debug.OK((cast(Windows.Devices.Radios.IRadio)this.asInterface(uuid("252118df-b33e-416a-875f-1cf38ae2d83e"))).abi_SetStateAsync(value, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnStateChanged(void delegate(Windows.Devices.Radios.Radio, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Radios.IRadio)this.asInterface(uuid("252118df-b33e-416a-875f-1cf38ae2d83e"))).add_StateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Radios.Radio, IInspectable), Windows.Devices.Radios.Radio, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeStateChanged(EventRegistrationToken eventCookie)
	{
		Debug.OK((cast(Windows.Devices.Radios.IRadio)this.asInterface(uuid("252118df-b33e-416a-875f-1cf38ae2d83e"))).remove_StateChanged(eventCookie));
	}
	final Windows.Devices.Radios.RadioState State()
	{
		Windows.Devices.Radios.RadioState _ret;
		Debug.OK((cast(Windows.Devices.Radios.IRadio)this.asInterface(uuid("252118df-b33e-416a-875f-1cf38ae2d83e"))).get_State(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Radios.IRadio)this.asInterface(uuid("252118df-b33e-416a-875f-1cf38ae2d83e"))).get_Name(&_ret));
		return _ret;
	}
	final Windows.Devices.Radios.RadioKind Kind()
	{
		Windows.Devices.Radios.RadioKind _ret;
		Debug.OK((cast(Windows.Devices.Radios.IRadio)this.asInterface(uuid("252118df-b33e-416a-875f-1cf38ae2d83e"))).get_Kind(&_ret));
		return _ret;
	}

	private static Windows.Devices.Radios.IRadioStatics _staticInstance;
	public static Windows.Devices.Radios.IRadioStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Radios.IRadioStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Radios.Radio)) GetRadiosAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Radios.Radio)) _ret;
		Debug.OK(staticInstance.abi_GetRadiosAsync(&_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Radios.Radio) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Radios.Radio) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Radios.RadioAccessStatus) RequestAccessAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Radios.RadioAccessStatus) _ret;
		Debug.OK(staticInstance.abi_RequestAccessAsync(&_ret));
		return _ret;
	}
}

enum RadioAccessStatus
{
	Unspecified = 0,
	Allowed = 1,
	DeniedByUser = 2,
	DeniedBySystem = 3
}

enum RadioKind
{
	Other = 0,
	WiFi = 1,
	MobileBroadband = 2,
	Bluetooth = 3,
	FM = 4
}

enum RadioState
{
	Unknown = 0,
	On = 1,
	Off = 2,
	Disabled = 3
}