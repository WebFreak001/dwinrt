module Windows.Media.Casting;

import dwinrt;

@uuid("cd951653-c2f1-4498-8b78-5fb4cd3640dd")
@WinrtFactory("Windows.Media.Casting.CastingConnection")
interface ICastingConnection : IInspectable
{
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
extern(Windows):
	HRESULT get_ErrorStatus(Windows.Media.Casting.CastingConnectionErrorStatus* return_value);
	HRESULT get_Message(HSTRING* return_value);
}

@uuid("de721c83-4a43-4ad1-a6d2-2492a796c3f2")
@WinrtFactory("Windows.Media.Casting.CastingDevice")
interface ICastingDevice : IInspectable
{
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
extern(Windows):
	HRESULT get_SelectedCastingDevice(Windows.Media.Casting.CastingDevice* return_value);
}

@uuid("e7d958d7-4d13-4237-a365-4c4f6a4cfd2f")
@WinrtFactory("Windows.Media.Casting.CastingDevice")
interface ICastingDeviceStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_PreferredSourceUri(Windows.Foundation.Uri* return_value);
	HRESULT set_PreferredSourceUri(Windows.Foundation.Uri value);
}

interface CastingConnection : Windows.Media.Casting.ICastingConnection, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Media.Casting.CastingConnectionState State()
	{
		Windows.Media.Casting.CastingConnectionState _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingConnection).get_State(&_ret));
		return _ret;
	}
	final Windows.Media.Casting.CastingDevice Device()
	{
		Windows.Media.Casting.CastingDevice _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingConnection).get_Device(&_ret));
		return _ret;
	}
	final Windows.Media.Casting.CastingSource Source()
	{
		Windows.Media.Casting.CastingSource _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingConnection).get_Source(&_ret));
		return _ret;
	}
	final void Source(Windows.Media.Casting.CastingSource value)
	{
		Debug.OK(this.as!(Windows.Media.Casting.ICastingConnection).set_Source(value));
	}
	final EventRegistrationToken OnStateChanged(void delegate(Windows.Media.Casting.CastingConnection, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_StateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Casting.CastingConnection, IInspectable), Windows.Media.Casting.CastingConnection, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeStateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_StateChanged(token));
	}
	final EventRegistrationToken OnErrorOccurred(void delegate(Windows.Media.Casting.CastingConnection, Windows.Media.Casting.CastingConnectionErrorOccurredEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ErrorOccurred(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Casting.CastingConnection, Windows.Media.Casting.CastingConnectionErrorOccurredEventArgs), Windows.Media.Casting.CastingConnection, Windows.Media.Casting.CastingConnectionErrorOccurredEventArgs)(fn), &tok));
		return tok;
	}
	final void removeErrorOccurred(EventRegistrationToken token)
	{
		Debug.OK(remove_ErrorOccurred(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Casting.CastingConnectionErrorStatus) RequestStartCastingAsync(Windows.Media.Casting.CastingSource value)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Casting.CastingConnectionErrorStatus) _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingConnection).abi_RequestStartCastingAsync(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Casting.CastingConnectionErrorStatus) DisconnectAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Casting.CastingConnectionErrorStatus) _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingConnection).abi_DisconnectAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface CastingConnectionErrorOccurredEventArgs : Windows.Media.Casting.ICastingConnectionErrorOccurredEventArgs
{
extern(Windows):
	final Windows.Media.Casting.CastingConnectionErrorStatus ErrorStatus()
	{
		Windows.Media.Casting.CastingConnectionErrorStatus _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingConnectionErrorOccurredEventArgs).get_ErrorStatus(&_ret));
		return _ret;
	}
	final HSTRING Message()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingConnectionErrorOccurredEventArgs).get_Message(&_ret));
		return _ret;
	}
}

interface CastingDevice : Windows.Media.Casting.ICastingDevice
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevice).get_Id(&_ret));
		return _ret;
	}
	final HSTRING FriendlyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevice).get_FriendlyName(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IRandomAccessStreamWithContentType Icon()
	{
		Windows.Storage.Streams.IRandomAccessStreamWithContentType _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevice).get_Icon(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Casting.CastingPlaybackTypes) GetSupportedCastingPlaybackTypesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Casting.CastingPlaybackTypes) _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevice).abi_GetSupportedCastingPlaybackTypesAsync(&_ret));
		return _ret;
	}
	final Windows.Media.Casting.CastingConnection CreateCastingConnection()
	{
		Windows.Media.Casting.CastingConnection _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevice).abi_CreateCastingConnection(&_ret));
		return _ret;
	}
}

interface CastingDevicePicker : Windows.Media.Casting.ICastingDevicePicker
{
extern(Windows):
	final Windows.Media.Casting.CastingDevicePickerFilter Filter()
	{
		Windows.Media.Casting.CastingDevicePickerFilter _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevicePicker).get_Filter(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DevicePickerAppearance Appearance()
	{
		Windows.Devices.Enumeration.DevicePickerAppearance _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevicePicker).get_Appearance(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnCastingDeviceSelected(void delegate(Windows.Media.Casting.CastingDevicePicker, Windows.Media.Casting.CastingDeviceSelectedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CastingDeviceSelected(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Casting.CastingDevicePicker, Windows.Media.Casting.CastingDeviceSelectedEventArgs), Windows.Media.Casting.CastingDevicePicker, Windows.Media.Casting.CastingDeviceSelectedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCastingDeviceSelected(EventRegistrationToken token)
	{
		Debug.OK(remove_CastingDeviceSelected(token));
	}
	final EventRegistrationToken OnCastingDevicePickerDismissed(void delegate(Windows.Media.Casting.CastingDevicePicker, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CastingDevicePickerDismissed(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Casting.CastingDevicePicker, IInspectable), Windows.Media.Casting.CastingDevicePicker, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeCastingDevicePickerDismissed(EventRegistrationToken token)
	{
		Debug.OK(remove_CastingDevicePickerDismissed(token));
	}
	final void Show(Windows.Foundation.Rect selection)
	{
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevicePicker).abi_Show(selection));
	}
	final void ShowWithPlacement(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement)
	{
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevicePicker).abi_ShowWithPlacement(selection, preferredPlacement));
	}
	final void Hide()
	{
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevicePicker).abi_Hide());
	}
}

interface CastingDevicePickerFilter : Windows.Media.Casting.ICastingDevicePickerFilter
{
extern(Windows):
	final bool SupportsAudio()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevicePickerFilter).get_SupportsAudio(&_ret));
		return _ret;
	}
	final void SupportsAudio(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevicePickerFilter).set_SupportsAudio(value));
	}
	final bool SupportsVideo()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevicePickerFilter).get_SupportsVideo(&_ret));
		return _ret;
	}
	final void SupportsVideo(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevicePickerFilter).set_SupportsVideo(value));
	}
	final bool SupportsPictures()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevicePickerFilter).get_SupportsPictures(&_ret));
		return _ret;
	}
	final void SupportsPictures(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevicePickerFilter).set_SupportsPictures(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Casting.CastingSource) SupportedCastingSources()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Casting.CastingSource) _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDevicePickerFilter).get_SupportedCastingSources(&_ret));
		return _ret;
	}
}

interface CastingDeviceSelectedEventArgs : Windows.Media.Casting.ICastingDeviceSelectedEventArgs
{
extern(Windows):
	final Windows.Media.Casting.CastingDevice SelectedCastingDevice()
	{
		Windows.Media.Casting.CastingDevice _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingDeviceSelectedEventArgs).get_SelectedCastingDevice(&_ret));
		return _ret;
	}
}

interface CastingSource : Windows.Media.Casting.ICastingSource
{
extern(Windows):
	final Windows.Foundation.Uri PreferredSourceUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Media.Casting.ICastingSource).get_PreferredSourceUri(&_ret));
		return _ret;
	}
	final void PreferredSourceUri(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.Media.Casting.ICastingSource).set_PreferredSourceUri(value));
	}
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