module Windows.Media.DialProtocol;

import dwinrt;

@uuid("555ffbd3-45b7-49f3-bbd7-302db6084646")
@WinrtFactory("Windows.Media.DialProtocol.DialApp")
interface IDialApp : IInspectable
{
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
extern(Windows):
	HRESULT get_State(Windows.Media.DialProtocol.DialAppState* return_value);
	HRESULT get_FullXml(HSTRING* return_value);
}

@uuid("fff0edaf-759f-41d2-a20a-7f29ce0b3784")
@WinrtFactory("Windows.Media.DialProtocol.DialDevice")
interface IDialDevice : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT abi_GetDialApp(HSTRING appName, Windows.Media.DialProtocol.DialApp* return_value);
}

@uuid("bab7f3d5-5bfb-4eba-8b32-b57c5c5ee5c9")
@WinrtFactory("Windows.Media.DialProtocol.DialDevice")
interface IDialDevice2 : IInspectable
{
extern(Windows):
	HRESULT get_FriendlyName(HSTRING* return_value);
	HRESULT get_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
}

@uuid("ba7e520a-ff59-4f4b-bdac-d89f495ad6e1")
@WinrtFactory("Windows.Media.DialProtocol.DialDevicePicker")
interface IDialDevicePicker : IInspectable
{
extern(Windows):
	HRESULT get_Filter(Windows.Media.DialProtocol.DialDevicePickerFilter* return_value);
	HRESULT get_Appearance(Windows.Devices.Enumeration.DevicePickerAppearance* return_value);
	HRESULT add_DialDeviceSelected(Windows.Foundation.TypedEventHandler!(Windows.Media.DialProtocol.DialDevicePicker, Windows.Media.DialProtocol.DialDeviceSelectedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DialDeviceSelected(EventRegistrationToken token);
	HRESULT add_DisconnectButtonClicked(Windows.Foundation.TypedEventHandler!(Windows.Media.DialProtocol.DialDevicePicker, Windows.Media.DialProtocol.DialDisconnectButtonClickedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DisconnectButtonClicked(EventRegistrationToken token);
	HRESULT add_DialDevicePickerDismissed(Windows.Foundation.TypedEventHandler!(Windows.Media.DialProtocol.DialDevicePicker, IInspectable) handler, EventRegistrationToken* return_token);
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
extern(Windows):
	HRESULT get_SupportedAppNames(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("480b92ad-ac76-47eb-9c06-a19304da0247")
@WinrtFactory("Windows.Media.DialProtocol.DialDeviceSelectedEventArgs")
interface IDialDeviceSelectedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_SelectedDialDevice(Windows.Media.DialProtocol.DialDevice* return_value);
}

@uuid("aa69cc95-01f8-4758-8461-2bbd1cdc3cf3")
@WinrtFactory("Windows.Media.DialProtocol.DialDevice")
interface IDialDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING appName, HSTRING* return_selector);
	HRESULT abi_FromIdAsync(HSTRING value, Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialDevice)* return_operation);
	HRESULT abi_DeviceInfoSupportsDialAsync(Windows.Devices.Enumeration.DeviceInformation device, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("52765152-9c81-4e55-adc2-0ebe99cde3b6")
@WinrtFactory("Windows.Media.DialProtocol.DialDisconnectButtonClickedEventArgs")
interface IDialDisconnectButtonClickedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Device(Windows.Media.DialProtocol.DialDevice* return_value);
}

interface DialApp : Windows.Media.DialProtocol.IDialApp
{
extern(Windows):
	final HSTRING AppName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialApp).get_AppName(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialAppLaunchResult) RequestLaunchAsync(HSTRING appArgument)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialAppLaunchResult) _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialApp).abi_RequestLaunchAsync(appArgument, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialAppStopResult) StopAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialAppStopResult) _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialApp).abi_StopAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialAppStateDetails) GetAppStateAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialAppStateDetails) _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialApp).abi_GetAppStateAsync(&_ret));
		return _ret;
	}
}

interface DialAppStateDetails : Windows.Media.DialProtocol.IDialAppStateDetails
{
extern(Windows):
	final Windows.Media.DialProtocol.DialAppState State()
	{
		Windows.Media.DialProtocol.DialAppState _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialAppStateDetails).get_State(&_ret));
		return _ret;
	}
	final HSTRING FullXml()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialAppStateDetails).get_FullXml(&_ret));
		return _ret;
	}
}

interface DialDevice : Windows.Media.DialProtocol.IDialDevice, Windows.Media.DialProtocol.IDialDevice2
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevice).get_Id(&_ret));
		return _ret;
	}
	final Windows.Media.DialProtocol.DialApp GetDialApp(HSTRING appName)
	{
		Windows.Media.DialProtocol.DialApp _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevice).abi_GetDialApp(appName, &_ret));
		return _ret;
	}
	final HSTRING FriendlyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevice2).get_FriendlyName(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Thumbnail()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevice2).get_Thumbnail(&_ret));
		return _ret;
	}

	private static Windows.Media.DialProtocol.IDialDeviceStatics _staticInstance;
	public static Windows.Media.DialProtocol.IDialDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.DialProtocol.IDialDeviceStatics);
		return _staticInstance;
	}
	static HSTRING GetDeviceSelector(HSTRING appName)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Media.DialProtocol.IDialDeviceStatics).abi_GetDeviceSelector(appName, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialDevice) FromIdAsync(HSTRING value)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialDevice) _ret;
		Debug.OK(staticInstance.as!(Windows.Media.DialProtocol.IDialDeviceStatics).abi_FromIdAsync(value, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(bool) DeviceInfoSupportsDialAsync(Windows.Devices.Enumeration.DeviceInformation device)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(staticInstance.as!(Windows.Media.DialProtocol.IDialDeviceStatics).abi_DeviceInfoSupportsDialAsync(device, &_ret));
		return _ret;
	}
}

interface DialDevicePicker : Windows.Media.DialProtocol.IDialDevicePicker
{
extern(Windows):
	final Windows.Media.DialProtocol.DialDevicePickerFilter Filter()
	{
		Windows.Media.DialProtocol.DialDevicePickerFilter _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevicePicker).get_Filter(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DevicePickerAppearance Appearance()
	{
		Windows.Devices.Enumeration.DevicePickerAppearance _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevicePicker).get_Appearance(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnDialDeviceSelected(void delegate(Windows.Media.DialProtocol.DialDevicePicker, Windows.Media.DialProtocol.DialDeviceSelectedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevicePicker).add_DialDeviceSelected(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.DialProtocol.DialDevicePicker, Windows.Media.DialProtocol.DialDeviceSelectedEventArgs), Windows.Media.DialProtocol.DialDevicePicker, Windows.Media.DialProtocol.DialDeviceSelectedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDialDeviceSelected(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevicePicker).remove_DialDeviceSelected(token));
	}
	final EventRegistrationToken OnDisconnectButtonClicked(void delegate(Windows.Media.DialProtocol.DialDevicePicker, Windows.Media.DialProtocol.DialDisconnectButtonClickedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevicePicker).add_DisconnectButtonClicked(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.DialProtocol.DialDevicePicker, Windows.Media.DialProtocol.DialDisconnectButtonClickedEventArgs), Windows.Media.DialProtocol.DialDevicePicker, Windows.Media.DialProtocol.DialDisconnectButtonClickedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDisconnectButtonClicked(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevicePicker).remove_DisconnectButtonClicked(token));
	}
	final EventRegistrationToken OnDialDevicePickerDismissed(void delegate(Windows.Media.DialProtocol.DialDevicePicker, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevicePicker).add_DialDevicePickerDismissed(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.DialProtocol.DialDevicePicker, IInspectable), Windows.Media.DialProtocol.DialDevicePicker, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeDialDevicePickerDismissed(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevicePicker).remove_DialDevicePickerDismissed(token));
	}
	final void Show(Windows.Foundation.Rect selection)
	{
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevicePicker).abi_Show(selection));
	}
	final void ShowWithPlacement(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement)
	{
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevicePicker).abi_ShowWithPlacement(selection, preferredPlacement));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialDevice) PickSingleDialDeviceAsync(Windows.Foundation.Rect selection)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialDevice) _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevicePicker).abi_PickSingleDialDeviceAsync(selection, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialDevice) PickSingleDialDeviceAsyncWithPlacement(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.DialProtocol.DialDevice) _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevicePicker).abi_PickSingleDialDeviceAsyncWithPlacement(selection, preferredPlacement, &_ret));
		return _ret;
	}
	final void Hide()
	{
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevicePicker).abi_Hide());
	}
	final void SetDisplayStatus(Windows.Media.DialProtocol.DialDevice device, Windows.Media.DialProtocol.DialDeviceDisplayStatus status)
	{
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevicePicker).abi_SetDisplayStatus(device, status));
	}
}

interface DialDevicePickerFilter : Windows.Media.DialProtocol.IDialDevicePickerFilter
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(HSTRING) SupportedAppNames()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDevicePickerFilter).get_SupportedAppNames(&_ret));
		return _ret;
	}
}

interface DialDeviceSelectedEventArgs : Windows.Media.DialProtocol.IDialDeviceSelectedEventArgs
{
extern(Windows):
	final Windows.Media.DialProtocol.DialDevice SelectedDialDevice()
	{
		Windows.Media.DialProtocol.DialDevice _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDeviceSelectedEventArgs).get_SelectedDialDevice(&_ret));
		return _ret;
	}
}

interface DialDisconnectButtonClickedEventArgs : Windows.Media.DialProtocol.IDialDisconnectButtonClickedEventArgs
{
extern(Windows):
	final Windows.Media.DialProtocol.DialDevice Device()
	{
		Windows.Media.DialProtocol.DialDevice _ret;
		Debug.OK(this.as!(Windows.Media.DialProtocol.IDialDisconnectButtonClickedEventArgs).get_Device(&_ret));
		return _ret;
	}
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