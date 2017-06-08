module Windows.Media.Casting;

import dwinrt;

@uuid("cd951653-c2f1-4498-8b78-5fb4cd3640dd")
@WinrtFactory("Windows.Media.Casting.CastingConnection")
interface ICastingConnection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_State(Windows.Media.Casting.CastingConnectionState* return_value);
	HRESULT get_Device(Windows.Media.Casting.CastingDevice* return_value);
	HRESULT get_Source(Windows.Media.Casting.CastingSource* return_value);
	HRESULT set_Source(Windows.Media.Casting.CastingSource value);
	HRESULT add_StateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Casting.CastingConnection, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_StateChanged(EventRegistrationToken token);
	HRESULT add_ErrorOccurred(Windows.Foundation.TypedEventHandler!(Windows.Media.Casting.CastingConnection, Windows.Media.Casting.CastingConnectionErrorOccurredEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ErrorOccurred(EventRegistrationToken token);
	HRESULT abi_RequestStartCastingAsync(Windows.Media.Casting.CastingSource value, Windows.Foundation.IAsyncOperation!(Windows.Media.Casting.CastingConnectionErrorStatus)* return_operation);
	HRESULT abi_DisconnectAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.Casting.CastingConnectionErrorStatus)* return_operation);
}

@uuid("a7fb3c69-8719-4f00-81fb-961863c79a32")
@WinrtFactory("Windows.Media.Casting.CastingConnectionErrorOccurredEventArgs")
interface ICastingConnectionErrorOccurredEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ErrorStatus(Windows.Media.Casting.CastingConnectionErrorStatus* return_value);
	HRESULT get_Message(HSTRING* return_value);
}

@uuid("de721c83-4a43-4ad1-a6d2-2492a796c3f2")
@WinrtFactory("Windows.Media.Casting.CastingDevice")
interface ICastingDevice : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_FriendlyName(HSTRING* return_value);
	HRESULT get_Icon(Windows.Storage.Streams.IRandomAccessStreamWithContentType* return_value);
	HRESULT abi_GetSupportedCastingPlaybackTypesAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.Casting.CastingPlaybackTypes)* return_operation);
	HRESULT abi_CreateCastingConnection(Windows.Media.Casting.CastingConnection* return_value);
}

@uuid("dcd39924-0591-49be-aacb-4b82ee756a95")
@WinrtFactory("Windows.Media.Casting.CastingDevicePicker")
interface ICastingDevicePicker : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Filter(Windows.Media.Casting.CastingDevicePickerFilter* return_value);
	HRESULT get_Appearance(Windows.Devices.Enumeration.DevicePickerAppearance* return_value);
	HRESULT add_CastingDeviceSelected(Windows.Foundation.TypedEventHandler!(Windows.Media.Casting.CastingDevicePicker, Windows.Media.Casting.CastingDeviceSelectedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CastingDeviceSelected(EventRegistrationToken token);
	HRESULT add_CastingDevicePickerDismissed(Windows.Foundation.TypedEventHandler!(Windows.Media.Casting.CastingDevicePicker, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_CastingDevicePickerDismissed(EventRegistrationToken token);
	HRESULT abi_Show(Windows.Foundation.Rect selection);
	HRESULT abi_ShowWithPlacement(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement);
	HRESULT abi_Hide();
}

@uuid("be8c619c-b563-4354-ae33-9fdaad8c6291")
@WinrtFactory("Windows.Media.Casting.CastingDevicePickerFilter")
interface ICastingDevicePickerFilter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SupportsAudio(bool* return_value);
	HRESULT set_SupportsAudio(bool value);
	HRESULT get_SupportsVideo(bool* return_value);
	HRESULT set_SupportsVideo(bool value);
	HRESULT get_SupportsPictures(bool* return_value);
	HRESULT set_SupportsPictures(bool value);
	HRESULT get_SupportedCastingSources(Windows.Foundation.Collections.IVector!(Windows.Media.Casting.CastingSource)* return_value);
}

@uuid("dc439e86-dd57-4d0d-9400-af45e4fb3663")
@WinrtFactory("Windows.Media.Casting.CastingDeviceSelectedEventArgs")
interface ICastingDeviceSelectedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectedCastingDevice(Windows.Media.Casting.CastingDevice* return_value);
}

@uuid("e7d958d7-4d13-4237-a365-4c4f6a4cfd2f")
@WinrtFactory("Windows.Media.Casting.CastingDevice")
interface ICastingDeviceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelector(Windows.Media.Casting.CastingPlaybackTypes type, HSTRING* return_value);
	HRESULT abi_GetDeviceSelectorFromCastingSourceAsync(Windows.Media.Casting.CastingSource castingSource, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_FromIdAsync(HSTRING value, Windows.Foundation.IAsyncOperation!(Windows.Media.Casting.CastingDevice)* return_operation);
	HRESULT abi_DeviceInfoSupportsCastingAsync(Windows.Devices.Enumeration.DeviceInformation device, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("f429ea72-3467-47e6-a027-522923e9d727")
@WinrtFactory("Windows.Media.Casting.CastingSource")
interface ICastingSource : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PreferredSourceUri(Windows.Foundation.Uri* return_value);
	HRESULT set_PreferredSourceUri(Windows.Foundation.Uri value);
}

interface CastingConnection
{
}

interface CastingConnectionErrorOccurredEventArgs
{
}

interface CastingDevice
{
}

interface CastingDevicePicker
{
}

interface CastingDevicePickerFilter
{
}

interface CastingDeviceSelectedEventArgs
{
}

interface CastingSource
{
}

enum CastingConnectionErrorStatus
{
	Succeeded = 0,
	DeviceDidNotRespond = 1,
	DeviceError = 2,
	DeviceLocked = 3,
	ProtectedPlaybackFailed = 4,
	InvalidCastingSource = 5,
	Unknown = 6
}

enum CastingConnectionState
{
	Disconnected = 0,
	Connected = 1,
	Rendering = 2,
	Disconnecting = 3,
	Connecting = 4
}

@bitflags
enum CastingPlaybackTypes
{
	None = 0x0,
	Audio = 0x1,
	Video = 0x2,
	Picture = 0x4
}