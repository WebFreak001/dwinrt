module Windows.Media.DialProtocol;

import dwinrt;

@uuid("555ffbd3-45b7-49f3-bbd7-302db6084646")
@WinrtFactory("Windows.Media.DialProtocol.DialApp")
interface IDialApp : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AppName(HSTRING* return_value);
	HRESULT abi_RequestLaunchAsync(HSTRING appArgument, Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialAppLaunchResult)* return_value);
	HRESULT abi_StopAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialAppStopResult)* return_value);
	HRESULT abi_GetAppStateAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialAppStateDetails)* return_value);
}

@uuid("ddc4a4a1-f5de-400d-bea4-8c8466bb2961")
@WinrtFactory("Windows.Media.DialProtocol.DialAppStateDetails")
interface IDialAppStateDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_State(Windows.Media.DialProtocol.DialAppState* return_value);
	HRESULT get_FullXml(HSTRING* return_value);
}

@uuid("fff0edaf-759f-41d2-a20a-7f29ce0b3784")
@WinrtFactory("Windows.Media.DialProtocol.DialDevice")
interface IDialDevice : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT abi_GetDialApp(HSTRING appName, Windows.Media.DialProtocol.DialApp* return_value);
}

@uuid("bab7f3d5-5bfb-4eba-8b32-b57c5c5ee5c9")
@WinrtFactory("Windows.Media.DialProtocol.DialDevice")
interface IDialDevice2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FriendlyName(HSTRING* return_value);
	HRESULT get_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
}

@uuid("ba7e520a-ff59-4f4b-bdac-d89f495ad6e1")
@WinrtFactory("Windows.Media.DialProtocol.DialDevicePicker")
interface IDialDevicePicker : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Filter(Windows.Media.DialProtocol.DialDevicePickerFilter* return_value);
	HRESULT get_Appearance(Windows.Devices.Enumeration.DevicePickerAppearance* return_value);
	HRESULT add_DialDeviceSelected(Windows.Foundation.TypedEventHandler!(Windows.Media.DialProtocol.DialDevicePicker*,Windows.Media.DialProtocol.DialDeviceSelectedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_DialDeviceSelected(EventRegistrationToken token);
	HRESULT add_DisconnectButtonClicked(Windows.Foundation.TypedEventHandler!(Windows.Media.DialProtocol.DialDevicePicker*,Windows.Media.DialProtocol.DialDisconnectButtonClickedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_DisconnectButtonClicked(EventRegistrationToken token);
	HRESULT add_DialDevicePickerDismissed(Windows.Foundation.TypedEventHandler!(Windows.Media.DialProtocol.DialDevicePicker*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_DialDevicePickerDismissed(EventRegistrationToken token);
	HRESULT abi_Show(Windows.Foundation.Rect selection);
	HRESULT abi_ShowWithPlacement(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement);
	HRESULT abi_PickSingleDialDeviceAsync(Windows.Foundation.Rect selection, Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialDevice)* return_operation);
	HRESULT abi_PickSingleDialDeviceAsyncWithPlacement(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialDevice)* return_operation);
	HRESULT abi_Hide();
	HRESULT abi_SetDisplayStatus(Windows.Media.DialProtocol.DialDevice device, Windows.Media.DialProtocol.DialDeviceDisplayStatus status);
}

@uuid("c17c93ba-86c0-485d-b8d6-0f9a8f641590")
@WinrtFactory("Windows.Media.DialProtocol.DialDevicePickerFilter")
interface IDialDevicePickerFilter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SupportedAppNames(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("480b92ad-ac76-47eb-9c06-a19304da0247")
@WinrtFactory("Windows.Media.DialProtocol.DialDeviceSelectedEventArgs")
interface IDialDeviceSelectedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectedDialDevice(Windows.Media.DialProtocol.DialDevice* return_value);
}

@uuid("aa69cc95-01f8-4758-8461-2bbd1cdc3cf3")
@WinrtFactory("Windows.Media.DialProtocol.DialDevice")
interface IDialDeviceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING appName, HSTRING* return_selector);
	HRESULT abi_FromIdAsync(HSTRING value, Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialDevice)* return_operation);
	HRESULT abi_DeviceInfoSupportsDialAsync(Windows.Devices.Enumeration.DeviceInformation device, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("52765152-9c81-4e55-adc2-0ebe99cde3b6")
@WinrtFactory("Windows.Media.DialProtocol.DialDisconnectButtonClickedEventArgs")
interface IDialDisconnectButtonClickedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Device(Windows.Media.DialProtocol.DialDevice* return_value);
}

interface DialApp
{
}

interface DialAppStateDetails
{
}

interface DialDevice
{
}

interface DialDevicePicker
{
}

interface DialDevicePickerFilter
{
}

interface DialDeviceSelectedEventArgs
{
}

interface DialDisconnectButtonClickedEventArgs
{
}

enum DialAppLaunchResult
{
	Launched = 0,
	FailedToLaunch = 1,
	NotFound = 2,
	NetworkFailure = 3
}

enum DialAppState
{
	Unknown = 0,
	Stopped = 1,
	Running = 2,
	NetworkFailure = 3
}

enum DialAppStopResult
{
	Stopped = 0,
	StopFailed = 1,
	OperationNotSupported = 2,
	NetworkFailure = 3
}

enum DialDeviceDisplayStatus
{
	None = 0,
	Connecting = 1,
	Connected = 2,
	Disconnecting = 3,
	Disconnected = 4,
	Error = 5
}