module Windows.Devices.Enumeration;

import dwinrt;

@uuid("deda0bcc-4f9d-4f58-9dba-a9bc800408d5")
@WinrtFactory("Windows.Devices.Enumeration.DeviceAccessChangedEventArgs")
interface IDeviceAccessChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.Enumeration.DeviceAccessStatus* return_value);
}

@uuid("82523262-934b-4b30-a178-adc39f2f2be3")
@WinrtFactory("Windows.Devices.Enumeration.DeviceAccessChangedEventArgs")
interface IDeviceAccessChangedEventArgs2 : IInspectable, Windows.Devices.Enumeration.IDeviceAccessChangedEventArgs
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
}

@uuid("0baa9a73-6de5-4915-8ddd-9a0554a6f545")
@WinrtFactory("Windows.Devices.Enumeration.DeviceAccessInformation")
interface IDeviceAccessInformation : IInspectable
{
extern(Windows):
	HRESULT add_AccessChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DeviceAccessInformation, Windows.Devices.Enumeration.DeviceAccessChangedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_AccessChanged(EventRegistrationToken cookie);
	HRESULT get_CurrentStatus(Windows.Devices.Enumeration.DeviceAccessStatus* return_status);
}

@uuid("574bd3d3-5f30-45cd-8a94-724fe5973084")
@WinrtFactory("Windows.Devices.Enumeration.DeviceAccessInformation")
interface IDeviceAccessInformationStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromId(HSTRING deviceId, Windows.Devices.Enumeration.DeviceAccessInformation* return_value);
	HRESULT abi_CreateFromDeviceClassId(GUID deviceClassId, Windows.Devices.Enumeration.DeviceAccessInformation* return_value);
	HRESULT abi_CreateFromDeviceClass(Windows.Devices.Enumeration.DeviceClass deviceClass, Windows.Devices.Enumeration.DeviceAccessInformation* return_value);
}

@uuid("b8578c0c-bbc1-484b-bffa-7b31dcc200b2")
@WinrtFactory("Windows.Devices.Enumeration.DeviceConnectionChangeTriggerDetails")
interface IDeviceConnectionChangeTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("8e44b56d-f902-4a00-b536-f37992e6a2a7")
@WinrtFactory("Windows.Devices.Enumeration.DeviceDisconnectButtonClickedEventArgs")
interface IDeviceDisconnectButtonClickedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Device(Windows.Devices.Enumeration.DeviceInformation* return_value);
}

@uuid("aba0fb95-4398-489d-8e44-e6130927011f")
@WinrtFactory("Windows.Devices.Enumeration.DeviceInformation")
interface IDeviceInformation : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT get_IsDefault(bool* return_value);
	HRESULT get_EnclosureLocation(Windows.Devices.Enumeration.EnclosureLocation* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
	HRESULT abi_Update(Windows.Devices.Enumeration.DeviceInformationUpdate updateInfo);
	HRESULT abi_GetThumbnailAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceThumbnail)* return_asyncOp);
	HRESULT abi_GetGlyphThumbnailAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceThumbnail)* return_asyncOp);
}

@uuid("f156a638-7997-48d9-a10c-269d46533f48")
@WinrtFactory("Windows.Devices.Enumeration.DeviceInformation")
interface IDeviceInformation2 : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.Devices.Enumeration.DeviceInformationKind* return_value);
	HRESULT get_Pairing(Windows.Devices.Enumeration.DeviceInformationPairing* return_value);
}

@uuid("85138c02-4ee6-4914-8370-107a39144c0e")
@WinrtFactory("Windows.Devices.Enumeration.DeviceInformationCustomPairing")
interface IDeviceInformationCustomPairing : IInspectable
{
extern(Windows):
	HRESULT abi_PairAsync(Windows.Devices.Enumeration.DevicePairingKinds pairingKindsSupported, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult)* return_result);
	HRESULT abi_PairWithProtectionLevelAsync(Windows.Devices.Enumeration.DevicePairingKinds pairingKindsSupported, Windows.Devices.Enumeration.DevicePairingProtectionLevel minProtectionLevel, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult)* return_result);
	HRESULT abi_PairWithProtectionLevelAndSettingsAsync(Windows.Devices.Enumeration.DevicePairingKinds pairingKindsSupported, Windows.Devices.Enumeration.DevicePairingProtectionLevel minProtectionLevel, Windows.Devices.Enumeration.IDevicePairingSettings devicePairingSettings, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult)* return_result);
	HRESULT add_PairingRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DeviceInformationCustomPairing, Windows.Devices.Enumeration.DevicePairingRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PairingRequested(EventRegistrationToken token);
}

@uuid("2c4769f5-f684-40d5-8469-e8dbaab70485")
@WinrtFactory("Windows.Devices.Enumeration.DeviceInformationPairing")
interface IDeviceInformationPairing : IInspectable
{
extern(Windows):
	HRESULT get_IsPaired(bool* return_value);
	HRESULT get_CanPair(bool* return_value);
	HRESULT abi_PairAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult)* return_result);
	HRESULT abi_PairWithProtectionLevelAsync(Windows.Devices.Enumeration.DevicePairingProtectionLevel minProtectionLevel, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult)* return_result);
}

@uuid("f68612fd-0aee-4328-85cc-1c742bb1790d")
@WinrtFactory("Windows.Devices.Enumeration.DeviceInformationPairing")
interface IDeviceInformationPairing2 : IInspectable
{
extern(Windows):
	HRESULT get_ProtectionLevel(Windows.Devices.Enumeration.DevicePairingProtectionLevel* return_value);
	HRESULT get_Custom(Windows.Devices.Enumeration.DeviceInformationCustomPairing* return_value);
	HRESULT abi_PairWithProtectionLevelAndSettingsAsync(Windows.Devices.Enumeration.DevicePairingProtectionLevel minProtectionLevel, Windows.Devices.Enumeration.IDevicePairingSettings devicePairingSettings, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult)* return_result);
	HRESULT abi_UnpairAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceUnpairingResult)* return_result);
}

@uuid("e915c408-36d4-49a1-bf13-514173799b6b")
@WinrtFactory("Windows.Devices.Enumeration.DeviceInformationPairing")
interface IDeviceInformationPairingStatics : IInspectable
{
extern(Windows):
	HRESULT abi_TryRegisterForAllInboundPairingRequests(Windows.Devices.Enumeration.DevicePairingKinds pairingKindsSupported, bool* return_result);
}

@uuid("c17f100e-3a46-4a78-8013-769dc9b97390")
@WinrtFactory("Windows.Devices.Enumeration.DeviceInformation")
interface IDeviceInformationStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceInformation)* return_asyncOp);
	HRESULT abi_CreateFromIdAsyncAdditionalProperties(HSTRING deviceId, Windows.Foundation.Collections.IIterable!(HSTRING) additionalProperties, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceInformation)* return_asyncOp);
	HRESULT abi_FindAllAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceInformationCollection)* return_asyncOp);
	HRESULT abi_FindAllAsyncDeviceClass(Windows.Devices.Enumeration.DeviceClass deviceClass, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceInformationCollection)* return_asyncOp);
	HRESULT abi_FindAllAsyncAqsFilter(HSTRING aqsFilter, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceInformationCollection)* return_asyncOp);
	HRESULT abi_FindAllAsyncAqsFilterAndAdditionalProperties(HSTRING aqsFilter, Windows.Foundation.Collections.IIterable!(HSTRING) additionalProperties, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceInformationCollection)* return_asyncOp);
	HRESULT abi_CreateWatcher(Windows.Devices.Enumeration.DeviceWatcher* return_watcher);
	HRESULT abi_CreateWatcherDeviceClass(Windows.Devices.Enumeration.DeviceClass deviceClass, Windows.Devices.Enumeration.DeviceWatcher* return_watcher);
	HRESULT abi_CreateWatcherAqsFilter(HSTRING aqsFilter, Windows.Devices.Enumeration.DeviceWatcher* return_watcher);
	HRESULT abi_CreateWatcherAqsFilterAndAdditionalProperties(HSTRING aqsFilter, Windows.Foundation.Collections.IIterable!(HSTRING) additionalProperties, Windows.Devices.Enumeration.DeviceWatcher* return_watcher);
}

@uuid("493b4f34-a84f-45fd-9167-15d1cb1bd1f9")
@WinrtFactory("Windows.Devices.Enumeration.DeviceInformation")
interface IDeviceInformationStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetAqsFilterFromDeviceClass(Windows.Devices.Enumeration.DeviceClass deviceClass, HSTRING* return_aqsFilter);
	HRESULT abi_CreateFromIdAsyncWithKindAndAdditionalProperties(HSTRING deviceId, Windows.Foundation.Collections.IIterable!(HSTRING) additionalProperties, Windows.Devices.Enumeration.DeviceInformationKind kind, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceInformation)* return_asyncOp);
	HRESULT abi_FindAllAsyncWithKindAqsFilterAndAdditionalProperties(HSTRING aqsFilter, Windows.Foundation.Collections.IIterable!(HSTRING) additionalProperties, Windows.Devices.Enumeration.DeviceInformationKind kind, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceInformationCollection)* return_asyncOp);
	HRESULT abi_CreateWatcherWithKindAqsFilterAndAdditionalProperties(HSTRING aqsFilter, Windows.Foundation.Collections.IIterable!(HSTRING) additionalProperties, Windows.Devices.Enumeration.DeviceInformationKind kind, Windows.Devices.Enumeration.DeviceWatcher* return_watcher);
}

@uuid("8f315305-d972-44b7-a37e-9e822c78213b")
@WinrtFactory("Windows.Devices.Enumeration.DeviceInformationUpdate")
interface IDeviceInformationUpdate : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
}

@uuid("5d9d148c-a873-485e-baa6-aa620788e3cc")
@WinrtFactory("Windows.Devices.Enumeration.DeviceInformationUpdate")
interface IDeviceInformationUpdate2 : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.Devices.Enumeration.DeviceInformationKind* return_value);
}

@uuid("f717fc56-de6b-487f-8376-0180aca69963")
@WinrtFactory("Windows.Devices.Enumeration.DevicePairingRequestedEventArgs")
interface IDevicePairingRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_DeviceInformation(Windows.Devices.Enumeration.DeviceInformation* return_value);
	HRESULT get_PairingKind(Windows.Devices.Enumeration.DevicePairingKinds* return_value);
	HRESULT get_Pin(HSTRING* return_value);
	HRESULT abi_Accept();
	HRESULT abi_AcceptWithPin(HSTRING pin);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_result);
}

@uuid("072b02bf-dd95-4025-9b37-de51adba37b7")
@WinrtFactory("Windows.Devices.Enumeration.DevicePairingResult")
interface IDevicePairingResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.Enumeration.DevicePairingResultStatus* return_status);
	HRESULT get_ProtectionLevelUsed(Windows.Devices.Enumeration.DevicePairingProtectionLevel* return_value);
}

@uuid("482cb27c-83bb-420e-be51-6602b222de54")
interface IDevicePairingSettings : IInspectable
{
}

@uuid("84997aa2-034a-4440-8813-7d0bd479bf5a")
@WinrtFactory("Windows.Devices.Enumeration.DevicePicker")
interface IDevicePicker : IInspectable
{
extern(Windows):
	HRESULT get_Filter(Windows.Devices.Enumeration.DevicePickerFilter* return_filter);
	HRESULT get_Appearance(Windows.Devices.Enumeration.DevicePickerAppearance* return_value);
	HRESULT get_RequestedProperties(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT add_DeviceSelected(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DevicePicker, Windows.Devices.Enumeration.DeviceSelectedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DeviceSelected(EventRegistrationToken token);
	HRESULT add_DisconnectButtonClicked(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DevicePicker, Windows.Devices.Enumeration.DeviceDisconnectButtonClickedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DisconnectButtonClicked(EventRegistrationToken token);
	HRESULT add_DevicePickerDismissed(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DevicePicker, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_DevicePickerDismissed(EventRegistrationToken token);
	HRESULT abi_Show(Windows.Foundation.Rect selection);
	HRESULT abi_ShowWithPlacement(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement placement);
	HRESULT abi_PickSingleDeviceAsync(Windows.Foundation.Rect selection, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceInformation)* return_operation);
	HRESULT abi_PickSingleDeviceAsyncWithPlacement(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement placement, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceInformation)* return_operation);
	HRESULT abi_Hide();
	HRESULT abi_SetDisplayStatus(Windows.Devices.Enumeration.DeviceInformation device, HSTRING status, Windows.Devices.Enumeration.DevicePickerDisplayStatusOptions options);
}

@uuid("e69a12c6-e627-4ed8-9b6c-460af445e56d")
@WinrtFactory("Windows.Devices.Enumeration.DevicePickerAppearance")
interface IDevicePickerAppearance : IInspectable
{
extern(Windows):
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_ForegroundColor(Windows.UI.Color* return_value);
	HRESULT set_ForegroundColor(Windows.UI.Color value);
	HRESULT get_BackgroundColor(Windows.UI.Color* return_value);
	HRESULT set_BackgroundColor(Windows.UI.Color value);
	HRESULT get_AccentColor(Windows.UI.Color* return_value);
	HRESULT set_AccentColor(Windows.UI.Color value);
	HRESULT get_SelectedForegroundColor(Windows.UI.Color* return_value);
	HRESULT set_SelectedForegroundColor(Windows.UI.Color value);
	HRESULT get_SelectedBackgroundColor(Windows.UI.Color* return_value);
	HRESULT set_SelectedBackgroundColor(Windows.UI.Color value);
	HRESULT get_SelectedAccentColor(Windows.UI.Color* return_value);
	HRESULT set_SelectedAccentColor(Windows.UI.Color value);
}

@uuid("91db92a2-57cb-48f1-9b59-a59b7a1f02a2")
@WinrtFactory("Windows.Devices.Enumeration.DevicePickerFilter")
interface IDevicePickerFilter : IInspectable
{
extern(Windows):
	HRESULT get_SupportedDeviceClasses(Windows.Foundation.Collections.IVector!(Windows.Devices.Enumeration.DeviceClass)* return_value);
	HRESULT get_SupportedDeviceSelectors(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("269edade-1d2f-4940-8402-4156b81d3c77")
@WinrtFactory("Windows.Devices.Enumeration.DeviceSelectedEventArgs")
interface IDeviceSelectedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_SelectedDevice(Windows.Devices.Enumeration.DeviceInformation* return_value);
}

@uuid("66f44ad3-79d9-444b-92cf-a92ef72571c7")
@WinrtFactory("Windows.Devices.Enumeration.DeviceUnpairingResult")
interface IDeviceUnpairingResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.Enumeration.DeviceUnpairingResultStatus* return_status);
}

@uuid("c9eab97d-8f6b-4f96-a9f4-abc814e22271")
@WinrtFactory("Windows.Devices.Enumeration.DeviceWatcher")
interface IDeviceWatcher : IInspectable
{
extern(Windows):
	HRESULT add_Added(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DeviceWatcher, Windows.Devices.Enumeration.DeviceInformation) handler, EventRegistrationToken* return_token);
	HRESULT remove_Added(EventRegistrationToken token);
	HRESULT add_Updated(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DeviceWatcher, Windows.Devices.Enumeration.DeviceInformationUpdate) handler, EventRegistrationToken* return_token);
	HRESULT remove_Updated(EventRegistrationToken token);
	HRESULT add_Removed(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DeviceWatcher, Windows.Devices.Enumeration.DeviceInformationUpdate) handler, EventRegistrationToken* return_token);
	HRESULT remove_Removed(EventRegistrationToken token);
	HRESULT add_EnumerationCompleted(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DeviceWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_EnumerationCompleted(EventRegistrationToken token);
	HRESULT add_Stopped(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DeviceWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Stopped(EventRegistrationToken token);
	HRESULT get_Status(Windows.Devices.Enumeration.DeviceWatcherStatus* return_status);
	HRESULT abi_Start();
	HRESULT abi_Stop();
}

@uuid("ff08456e-ed14-49e9-9a69-8117c54ae971")
@WinrtFactory("Windows.Devices.Enumeration.DeviceWatcher")
interface IDeviceWatcher2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetBackgroundTrigger(Windows.Foundation.Collections.IIterable!(Windows.Devices.Enumeration.DeviceWatcherEventKind) requestedEventKinds, Windows.ApplicationModel.Background.DeviceWatcherTrigger* return_trigger);
}

@uuid("74aa9c0b-1dbd-47fd-b635-3cc556d0ff8b")
@WinrtFactory("Windows.Devices.Enumeration.DeviceWatcherEvent")
interface IDeviceWatcherEvent : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.Devices.Enumeration.DeviceWatcherEventKind* return_value);
	HRESULT get_DeviceInformation(Windows.Devices.Enumeration.DeviceInformation* return_value);
	HRESULT get_DeviceInformationUpdate(Windows.Devices.Enumeration.DeviceInformationUpdate* return_value);
}

@uuid("38808119-4cb7-4e57-a56d-776d07cbfef9")
@WinrtFactory("Windows.Devices.Enumeration.DeviceWatcherTriggerDetails")
interface IDeviceWatcherTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_DeviceWatcherEvents(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.DeviceWatcherEvent)* return_value);
}

@uuid("42340a27-5810-459c-aabb-c65e1f813ecf")
@WinrtFactory("Windows.Devices.Enumeration.EnclosureLocation")
interface IEnclosureLocation : IInspectable
{
extern(Windows):
	HRESULT get_InDock(bool* return_value);
	HRESULT get_InLid(bool* return_value);
	HRESULT get_Panel(Windows.Devices.Enumeration.Panel* return_value);
}

@uuid("2885995b-e07d-485d-8a9e-bdf29aef4f66")
@WinrtFactory("Windows.Devices.Enumeration.EnclosureLocation")
interface IEnclosureLocation2 : IInspectable, Windows.Devices.Enumeration.IEnclosureLocation
{
extern(Windows):
	HRESULT get_RotationAngleInDegreesClockwise(UINT32* return_value);
}

interface DeviceAccessChangedEventArgs : Windows.Devices.Enumeration.IDeviceAccessChangedEventArgs, Windows.Devices.Enumeration.IDeviceAccessChangedEventArgs2
{
extern(Windows):
	final Windows.Devices.Enumeration.DeviceAccessStatus Status()
	{
		Windows.Devices.Enumeration.DeviceAccessStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceAccessChangedEventArgs).get_Status(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceAccessChangedEventArgs2).get_Id(&_ret));
		return _ret;
	}
}

interface DeviceAccessInformation : Windows.Devices.Enumeration.IDeviceAccessInformation
{
extern(Windows):
	final EventRegistrationToken OnAccessChanged(void delegate(Windows.Devices.Enumeration.DeviceAccessInformation, Windows.Devices.Enumeration.DeviceAccessChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_AccessChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DeviceAccessInformation, Windows.Devices.Enumeration.DeviceAccessChangedEventArgs), Windows.Devices.Enumeration.DeviceAccessInformation, Windows.Devices.Enumeration.DeviceAccessChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAccessChanged(EventRegistrationToken cookie)
	{
		Debug.OK(remove_AccessChanged(cookie));
	}
	final Windows.Devices.Enumeration.DeviceAccessStatus CurrentStatus()
	{
		Windows.Devices.Enumeration.DeviceAccessStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceAccessInformation).get_CurrentStatus(&_ret));
		return _ret;
	}
}

interface DeviceConnectionChangeTriggerDetails : Windows.Devices.Enumeration.IDeviceConnectionChangeTriggerDetails
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceConnectionChangeTriggerDetails).get_DeviceId(&_ret));
		return _ret;
	}
}

interface DeviceDisconnectButtonClickedEventArgs : Windows.Devices.Enumeration.IDeviceDisconnectButtonClickedEventArgs
{
extern(Windows):
	final Windows.Devices.Enumeration.DeviceInformation Device()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceDisconnectButtonClickedEventArgs).get_Device(&_ret));
		return _ret;
	}
}

interface DeviceInformation : Windows.Devices.Enumeration.IDeviceInformation, Windows.Devices.Enumeration.IDeviceInformation2
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformation).get_Id(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformation).get_Name(&_ret));
		return _ret;
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformation).get_IsEnabled(&_ret));
		return _ret;
	}
	final bool IsDefault()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformation).get_IsDefault(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.EnclosureLocation EnclosureLocation()
	{
		Windows.Devices.Enumeration.EnclosureLocation _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformation).get_EnclosureLocation(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformation).get_Properties(&_ret));
		return _ret;
	}
	final void Update(Windows.Devices.Enumeration.DeviceInformationUpdate updateInfo)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformation).abi_Update(updateInfo));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceThumbnail) GetThumbnailAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceThumbnail) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformation).abi_GetThumbnailAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceThumbnail) GetGlyphThumbnailAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceThumbnail) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformation).abi_GetGlyphThumbnailAsync(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DeviceInformationKind Kind()
	{
		Windows.Devices.Enumeration.DeviceInformationKind _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformation2).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DeviceInformationPairing Pairing()
	{
		Windows.Devices.Enumeration.DeviceInformationPairing _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformation2).get_Pairing(&_ret));
		return _ret;
	}
}

interface DeviceInformationCollection : Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.DeviceInformation), Windows.Foundation.Collections.IIterable!(Windows.Devices.Enumeration.DeviceInformation)
{
extern(Windows):
	final void GetAt(uint index, Windows.Devices.Enumeration.DeviceInformation* out_item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.DeviceInformation)).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.DeviceInformation)).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Devices.Enumeration.DeviceInformation value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.DeviceInformation)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Devices.Enumeration.DeviceInformation* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.DeviceInformation)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Devices.Enumeration.DeviceInformation)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Devices.Enumeration.DeviceInformation)).abi_First(out_first));
	}
}

interface DeviceInformationCustomPairing : Windows.Devices.Enumeration.IDeviceInformationCustomPairing
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult) PairAsync(Windows.Devices.Enumeration.DevicePairingKinds pairingKindsSupported)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformationCustomPairing).abi_PairAsync(pairingKindsSupported, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult) PairWithProtectionLevelAsync(Windows.Devices.Enumeration.DevicePairingKinds pairingKindsSupported, Windows.Devices.Enumeration.DevicePairingProtectionLevel minProtectionLevel)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformationCustomPairing).abi_PairWithProtectionLevelAsync(pairingKindsSupported, minProtectionLevel, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult) PairWithProtectionLevelAndSettingsAsync(Windows.Devices.Enumeration.DevicePairingKinds pairingKindsSupported, Windows.Devices.Enumeration.DevicePairingProtectionLevel minProtectionLevel, Windows.Devices.Enumeration.IDevicePairingSettings devicePairingSettings)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformationCustomPairing).abi_PairWithProtectionLevelAndSettingsAsync(pairingKindsSupported, minProtectionLevel, devicePairingSettings, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnPairingRequested(void delegate(Windows.Devices.Enumeration.DeviceInformationCustomPairing, Windows.Devices.Enumeration.DevicePairingRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PairingRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DeviceInformationCustomPairing, Windows.Devices.Enumeration.DevicePairingRequestedEventArgs), Windows.Devices.Enumeration.DeviceInformationCustomPairing, Windows.Devices.Enumeration.DevicePairingRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePairingRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_PairingRequested(token));
	}
}

interface DeviceInformationPairing : Windows.Devices.Enumeration.IDeviceInformationPairing, Windows.Devices.Enumeration.IDeviceInformationPairing2
{
extern(Windows):
	final bool IsPaired()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformationPairing).get_IsPaired(&_ret));
		return _ret;
	}
	final bool CanPair()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformationPairing).get_CanPair(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult) PairAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformationPairing).abi_PairAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult) PairWithProtectionLevelAsync(Windows.Devices.Enumeration.DevicePairingProtectionLevel minProtectionLevel)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformationPairing).abi_PairWithProtectionLevelAsync(minProtectionLevel, &_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DevicePairingProtectionLevel ProtectionLevel()
	{
		Windows.Devices.Enumeration.DevicePairingProtectionLevel _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformationPairing2).get_ProtectionLevel(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DeviceInformationCustomPairing Custom()
	{
		Windows.Devices.Enumeration.DeviceInformationCustomPairing _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformationPairing2).get_Custom(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult) PairWithProtectionLevelAndSettingsAsync(Windows.Devices.Enumeration.DevicePairingProtectionLevel minProtectionLevel, Windows.Devices.Enumeration.IDevicePairingSettings devicePairingSettings)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DevicePairingResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformationPairing2).abi_PairWithProtectionLevelAndSettingsAsync(minProtectionLevel, devicePairingSettings, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceUnpairingResult) UnpairAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceUnpairingResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformationPairing2).abi_UnpairAsync(&_ret));
		return _ret;
	}
}

interface DeviceInformationUpdate : Windows.Devices.Enumeration.IDeviceInformationUpdate, Windows.Devices.Enumeration.IDeviceInformationUpdate2
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformationUpdate).get_Id(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformationUpdate).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DeviceInformationKind Kind()
	{
		Windows.Devices.Enumeration.DeviceInformationKind _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceInformationUpdate2).get_Kind(&_ret));
		return _ret;
	}
}

interface DevicePairingRequestedEventArgs : Windows.Devices.Enumeration.IDevicePairingRequestedEventArgs
{
extern(Windows):
	final Windows.Devices.Enumeration.DeviceInformation DeviceInformation()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePairingRequestedEventArgs).get_DeviceInformation(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DevicePairingKinds PairingKind()
	{
		Windows.Devices.Enumeration.DevicePairingKinds _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePairingRequestedEventArgs).get_PairingKind(&_ret));
		return _ret;
	}
	final HSTRING Pin()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePairingRequestedEventArgs).get_Pin(&_ret));
		return _ret;
	}
	final void Accept()
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePairingRequestedEventArgs).abi_Accept());
	}
	final void AcceptWithPin(HSTRING pin)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePairingRequestedEventArgs).abi_AcceptWithPin(pin));
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePairingRequestedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface DevicePairingResult : Windows.Devices.Enumeration.IDevicePairingResult
{
extern(Windows):
	final Windows.Devices.Enumeration.DevicePairingResultStatus Status()
	{
		Windows.Devices.Enumeration.DevicePairingResultStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePairingResult).get_Status(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DevicePairingProtectionLevel ProtectionLevelUsed()
	{
		Windows.Devices.Enumeration.DevicePairingProtectionLevel _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePairingResult).get_ProtectionLevelUsed(&_ret));
		return _ret;
	}
}

interface DevicePicker : Windows.Devices.Enumeration.IDevicePicker
{
extern(Windows):
	final Windows.Devices.Enumeration.DevicePickerFilter Filter()
	{
		Windows.Devices.Enumeration.DevicePickerFilter _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePicker).get_Filter(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DevicePickerAppearance Appearance()
	{
		Windows.Devices.Enumeration.DevicePickerAppearance _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePicker).get_Appearance(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) RequestedProperties()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePicker).get_RequestedProperties(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnDeviceSelected(void delegate(Windows.Devices.Enumeration.DevicePicker, Windows.Devices.Enumeration.DeviceSelectedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DeviceSelected(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DevicePicker, Windows.Devices.Enumeration.DeviceSelectedEventArgs), Windows.Devices.Enumeration.DevicePicker, Windows.Devices.Enumeration.DeviceSelectedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDeviceSelected(EventRegistrationToken token)
	{
		Debug.OK(remove_DeviceSelected(token));
	}
	final EventRegistrationToken OnDisconnectButtonClicked(void delegate(Windows.Devices.Enumeration.DevicePicker, Windows.Devices.Enumeration.DeviceDisconnectButtonClickedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DisconnectButtonClicked(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DevicePicker, Windows.Devices.Enumeration.DeviceDisconnectButtonClickedEventArgs), Windows.Devices.Enumeration.DevicePicker, Windows.Devices.Enumeration.DeviceDisconnectButtonClickedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDisconnectButtonClicked(EventRegistrationToken token)
	{
		Debug.OK(remove_DisconnectButtonClicked(token));
	}
	final EventRegistrationToken OnDevicePickerDismissed(void delegate(Windows.Devices.Enumeration.DevicePicker, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DevicePickerDismissed(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DevicePicker, IInspectable), Windows.Devices.Enumeration.DevicePicker, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeDevicePickerDismissed(EventRegistrationToken token)
	{
		Debug.OK(remove_DevicePickerDismissed(token));
	}
	final void Show(Windows.Foundation.Rect selection)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePicker).abi_Show(selection));
	}
	final void ShowWithPlacement(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement placement)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePicker).abi_ShowWithPlacement(selection, placement));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceInformation) PickSingleDeviceAsync(Windows.Foundation.Rect selection)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceInformation) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePicker).abi_PickSingleDeviceAsync(selection, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceInformation) PickSingleDeviceAsyncWithPlacement(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement placement)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceInformation) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePicker).abi_PickSingleDeviceAsyncWithPlacement(selection, placement, &_ret));
		return _ret;
	}
	final void Hide()
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePicker).abi_Hide());
	}
	final void SetDisplayStatus(Windows.Devices.Enumeration.DeviceInformation device, HSTRING status, Windows.Devices.Enumeration.DevicePickerDisplayStatusOptions options)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePicker).abi_SetDisplayStatus(device, status, options));
	}
}

interface DevicePickerAppearance : Windows.Devices.Enumeration.IDevicePickerAppearance
{
extern(Windows):
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePickerAppearance).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePickerAppearance).set_Title(value));
	}
	final Windows.UI.Color ForegroundColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePickerAppearance).get_ForegroundColor(&_ret));
		return _ret;
	}
	final void ForegroundColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePickerAppearance).set_ForegroundColor(value));
	}
	final Windows.UI.Color BackgroundColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePickerAppearance).get_BackgroundColor(&_ret));
		return _ret;
	}
	final void BackgroundColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePickerAppearance).set_BackgroundColor(value));
	}
	final Windows.UI.Color AccentColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePickerAppearance).get_AccentColor(&_ret));
		return _ret;
	}
	final void AccentColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePickerAppearance).set_AccentColor(value));
	}
	final Windows.UI.Color SelectedForegroundColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePickerAppearance).get_SelectedForegroundColor(&_ret));
		return _ret;
	}
	final void SelectedForegroundColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePickerAppearance).set_SelectedForegroundColor(value));
	}
	final Windows.UI.Color SelectedBackgroundColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePickerAppearance).get_SelectedBackgroundColor(&_ret));
		return _ret;
	}
	final void SelectedBackgroundColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePickerAppearance).set_SelectedBackgroundColor(value));
	}
	final Windows.UI.Color SelectedAccentColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePickerAppearance).get_SelectedAccentColor(&_ret));
		return _ret;
	}
	final void SelectedAccentColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePickerAppearance).set_SelectedAccentColor(value));
	}
}

interface DevicePickerFilter : Windows.Devices.Enumeration.IDevicePickerFilter
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.Devices.Enumeration.DeviceClass) SupportedDeviceClasses()
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.Enumeration.DeviceClass) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePickerFilter).get_SupportedDeviceClasses(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) SupportedDeviceSelectors()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDevicePickerFilter).get_SupportedDeviceSelectors(&_ret));
		return _ret;
	}
}

interface DeviceSelectedEventArgs : Windows.Devices.Enumeration.IDeviceSelectedEventArgs
{
extern(Windows):
	final Windows.Devices.Enumeration.DeviceInformation SelectedDevice()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceSelectedEventArgs).get_SelectedDevice(&_ret));
		return _ret;
	}
}

interface DeviceThumbnail : Windows.Storage.Streams.IRandomAccessStreamWithContentType, Windows.Storage.Streams.IContentTypeProvider, Windows.Storage.Streams.IRandomAccessStream, Windows.Storage.Streams.IOutputStream, Windows.Foundation.IClosable, Windows.Storage.Streams.IInputStream
{
extern(Windows):
	final HSTRING ContentType()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IContentTypeProvider).get_ContentType(&_ret));
		return _ret;
	}
	final UINT64 Size()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_Size(&_ret));
		return _ret;
	}
	final void Size(UINT64 value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).set_Size(value));
	}
	final Windows.Storage.Streams.IInputStream GetInputStreamAt(UINT64 position)
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_GetInputStreamAt(position, &_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream GetOutputStreamAt(UINT64 position)
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_GetOutputStreamAt(position, &_ret));
		return _ret;
	}
	final UINT64 Position()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_Position(&_ret));
		return _ret;
	}
	final void Seek(UINT64 position)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_Seek(position));
	}
	final Windows.Storage.Streams.IRandomAccessStream CloneStream()
	{
		Windows.Storage.Streams.IRandomAccessStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_CloneStream(&_ret));
		return _ret;
	}
	final bool CanRead()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_CanRead(&_ret));
		return _ret;
	}
	final bool CanWrite()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_CanWrite(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) WriteAsync(Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IOutputStream).abi_WriteAsync(buffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) FlushAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IOutputStream).abi_FlushAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) ReadAsync(Windows.Storage.Streams.IBuffer buffer, UINT32 count, Windows.Storage.Streams.InputStreamOptions options)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IInputStream).abi_ReadAsync(buffer, count, options, &_ret));
		return _ret;
	}
}

interface DeviceUnpairingResult : Windows.Devices.Enumeration.IDeviceUnpairingResult
{
extern(Windows):
	final Windows.Devices.Enumeration.DeviceUnpairingResultStatus Status()
	{
		Windows.Devices.Enumeration.DeviceUnpairingResultStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceUnpairingResult).get_Status(&_ret));
		return _ret;
	}
}

interface DeviceWatcher : Windows.Devices.Enumeration.IDeviceWatcher, Windows.Devices.Enumeration.IDeviceWatcher2
{
extern(Windows):
	final EventRegistrationToken OnAdded(void delegate(Windows.Devices.Enumeration.DeviceWatcher, Windows.Devices.Enumeration.DeviceInformation) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Added(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DeviceWatcher, Windows.Devices.Enumeration.DeviceInformation), Windows.Devices.Enumeration.DeviceWatcher, Windows.Devices.Enumeration.DeviceInformation)(fn), &tok));
		return tok;
	}
	final void removeAdded(EventRegistrationToken token)
	{
		Debug.OK(remove_Added(token));
	}
	final EventRegistrationToken OnUpdated(void delegate(Windows.Devices.Enumeration.DeviceWatcher, Windows.Devices.Enumeration.DeviceInformationUpdate) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Updated(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DeviceWatcher, Windows.Devices.Enumeration.DeviceInformationUpdate), Windows.Devices.Enumeration.DeviceWatcher, Windows.Devices.Enumeration.DeviceInformationUpdate)(fn), &tok));
		return tok;
	}
	final void removeUpdated(EventRegistrationToken token)
	{
		Debug.OK(remove_Updated(token));
	}
	final EventRegistrationToken OnRemoved(void delegate(Windows.Devices.Enumeration.DeviceWatcher, Windows.Devices.Enumeration.DeviceInformationUpdate) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Removed(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DeviceWatcher, Windows.Devices.Enumeration.DeviceInformationUpdate), Windows.Devices.Enumeration.DeviceWatcher, Windows.Devices.Enumeration.DeviceInformationUpdate)(fn), &tok));
		return tok;
	}
	final void removeRemoved(EventRegistrationToken token)
	{
		Debug.OK(remove_Removed(token));
	}
	final EventRegistrationToken OnEnumerationCompleted(void delegate(Windows.Devices.Enumeration.DeviceWatcher, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_EnumerationCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DeviceWatcher, IInspectable), Windows.Devices.Enumeration.DeviceWatcher, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeEnumerationCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_EnumerationCompleted(token));
	}
	final EventRegistrationToken OnStopped(void delegate(Windows.Devices.Enumeration.DeviceWatcher, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Stopped(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.DeviceWatcher, IInspectable), Windows.Devices.Enumeration.DeviceWatcher, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeStopped(EventRegistrationToken token)
	{
		Debug.OK(remove_Stopped(token));
	}
	final Windows.Devices.Enumeration.DeviceWatcherStatus Status()
	{
		Windows.Devices.Enumeration.DeviceWatcherStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceWatcher).get_Status(&_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceWatcher).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceWatcher).abi_Stop());
	}
	final Windows.ApplicationModel.Background.DeviceWatcherTrigger GetBackgroundTrigger(Windows.Foundation.Collections.IIterable!(Windows.Devices.Enumeration.DeviceWatcherEventKind) requestedEventKinds)
	{
		Windows.ApplicationModel.Background.DeviceWatcherTrigger _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceWatcher2).abi_GetBackgroundTrigger(requestedEventKinds, &_ret));
		return _ret;
	}
}

interface DeviceWatcherEvent : Windows.Devices.Enumeration.IDeviceWatcherEvent
{
extern(Windows):
	final Windows.Devices.Enumeration.DeviceWatcherEventKind Kind()
	{
		Windows.Devices.Enumeration.DeviceWatcherEventKind _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceWatcherEvent).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DeviceInformation DeviceInformation()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceWatcherEvent).get_DeviceInformation(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DeviceInformationUpdate DeviceInformationUpdate()
	{
		Windows.Devices.Enumeration.DeviceInformationUpdate _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceWatcherEvent).get_DeviceInformationUpdate(&_ret));
		return _ret;
	}
}

interface DeviceWatcherTriggerDetails : Windows.Devices.Enumeration.IDeviceWatcherTriggerDetails
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.DeviceWatcherEvent) DeviceWatcherEvents()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.DeviceWatcherEvent) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IDeviceWatcherTriggerDetails).get_DeviceWatcherEvents(&_ret));
		return _ret;
	}
}

interface EnclosureLocation : Windows.Devices.Enumeration.IEnclosureLocation, Windows.Devices.Enumeration.IEnclosureLocation2
{
extern(Windows):
	final bool InDock()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IEnclosureLocation).get_InDock(&_ret));
		return _ret;
	}
	final bool InLid()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IEnclosureLocation).get_InLid(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.Panel Panel()
	{
		Windows.Devices.Enumeration.Panel _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IEnclosureLocation).get_Panel(&_ret));
		return _ret;
	}
	final UINT32 RotationAngleInDegreesClockwise()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.IEnclosureLocation2).get_RotationAngleInDegreesClockwise(&_ret));
		return _ret;
	}
}

enum DeviceAccessStatus
{
	Unspecified = 0,
	Allowed = 1,
	DeniedByUser = 2,
	DeniedBySystem = 3
}

enum DeviceClass
{
	All = 0,
	AudioCapture = 1,
	AudioRender = 2,
	PortableStorageDevice = 3,
	VideoCapture = 4,
	ImageScanner = 5,
	Location = 6
}

enum DeviceInformationKind
{
	Unknown = 0,
	DeviceInterface = 1,
	DeviceContainer = 2,
	Device = 3,
	DeviceInterfaceClass = 4,
	AssociationEndpoint = 5,
	AssociationEndpointContainer = 6,
	AssociationEndpointService = 7
}

@bitflags
enum DevicePairingKinds
{
	None = 0x0,
	ConfirmOnly = 0x1,
	DisplayPin = 0x2,
	ProvidePin = 0x4,
	ConfirmPinMatch = 0x8
}

enum DevicePairingProtectionLevel
{
	Default = 0,
	None = 1,
	Encryption = 2,
	EncryptionAndAuthentication = 3
}

enum DevicePairingResultStatus
{
	Paired = 0,
	NotReadyToPair = 1,
	NotPaired = 2,
	AlreadyPaired = 3,
	ConnectionRejected = 4,
	TooManyConnections = 5,
	HardwareFailure = 6,
	AuthenticationTimeout = 7,
	AuthenticationNotAllowed = 8,
	AuthenticationFailure = 9,
	NoSupportedProfiles = 10,
	ProtectionLevelCouldNotBeMet = 11,
	AccessDenied = 12,
	InvalidCeremonyData = 13,
	PairingCanceled = 14,
	OperationAlreadyInProgress = 15,
	RequiredHandlerNotRegistered = 16,
	RejectedByHandler = 17,
	RemoteDeviceHasAssociation = 18,
	Failed = 19
}

@bitflags
enum DevicePickerDisplayStatusOptions
{
	None = 0x0,
	ShowProgress = 0x1,
	ShowDisconnectButton = 0x2,
	ShowRetryButton = 0x4
}

enum DeviceUnpairingResultStatus
{
	Unpaired = 0,
	AlreadyUnpaired = 1,
	OperationAlreadyInProgress = 2,
	AccessDenied = 3,
	Failed = 4
}

enum DeviceWatcherEventKind
{
	Add = 0,
	Update = 1,
	Remove = 2
}

enum DeviceWatcherStatus
{
	Created = 0,
	Started = 1,
	EnumerationCompleted = 2,
	Stopping = 3,
	Stopped = 4,
	Aborted = 5
}

enum Panel
{
	Unknown = 0,
	Front = 1,
	Back = 2,
	Top = 3,
	Bottom = 4,
	Left = 5,
	Right = 6
}