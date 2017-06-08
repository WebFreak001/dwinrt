module Windows.Devices.Radios;

import dwinrt;

@uuid("252118df-b33e-416a-875f-1cf38ae2d83e")
@WinrtFactory("Windows.Devices.Radios.Radio")
interface IRadio : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetRadiosAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Radios.Radio))* return_value);
	HRESULT abi_GetDeviceSelector(HSTRING* return_deviceSelector);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Radios.Radio)* return_value);
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Radios.RadioAccessStatus)* return_value);
}

interface Radio
{
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