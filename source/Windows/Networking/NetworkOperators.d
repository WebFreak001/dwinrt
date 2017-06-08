module Windows.Networking.NetworkOperators;

import dwinrt;

struct ProfileUsage
{
	UINT32 UsageInMegabytes;
	Windows.Foundation.DateTime LastSyncTime;
}

@uuid("e756c791-1003-4de5-83c7-de61d88831d0")
@WinrtFactory("Windows.Networking.NetworkOperators.HotspotAuthenticationContext")
interface IHotspotAuthenticationContext : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_WirelessNetworkId(UINT32* out___valueSize, BYTE** return_value);
	HRESULT get_NetworkAdapter(Windows.Networking.Connectivity.NetworkAdapter* return_value);
	HRESULT get_RedirectMessageUrl(Windows.Foundation.Uri* return_value);
	HRESULT get_RedirectMessageXml(Windows.Data.Xml.Dom.XmlDocument* return_value);
	HRESULT get_AuthenticationUrl(Windows.Foundation.Uri* return_value);
	HRESULT abi_IssueCredentials(HSTRING userName, HSTRING password, HSTRING extraParameters, bool markAsManualConnectOnFailure);
	HRESULT abi_AbortAuthentication(bool markAsManual);
	HRESULT abi_SkipAuthentication();
	HRESULT abi_TriggerAttentionRequired(HSTRING packageRelativeApplicationId, HSTRING applicationParameters);
}

@uuid("e756c791-1004-4de5-83c7-de61d88831d0")
@WinrtFactory("Windows.Networking.NetworkOperators.HotspotAuthenticationContext")
interface IHotspotAuthenticationContext2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_IssueCredentialsAsync(HSTRING userName, HSTRING password, HSTRING extraParameters, bool markAsManualConnectOnFailure, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.HotspotCredentialsAuthenticationResult)* return_asyncInfo);
}

@uuid("e756c791-1002-4de5-83c7-de61d88831d0")
@WinrtFactory("Windows.Networking.NetworkOperators.HotspotAuthenticationContext")
interface IHotspotAuthenticationContextStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TryGetAuthenticationContext(HSTRING evenToken, Windows.Networking.NetworkOperators.HotspotAuthenticationContext* out_context, bool* return_isValid);
}

@uuid("e756c791-1001-4de5-83c7-de61d88831d0")
@WinrtFactory("Windows.Networking.NetworkOperators.HotspotAuthenticationEventDetails")
interface IHotspotAuthenticationEventDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EventToken(HSTRING* return_value);
}

@uuid("e756c791-1005-4de5-83c7-de61d88831d0")
@WinrtFactory("Windows.Networking.NetworkOperators.HotspotCredentialsAuthenticationResult")
interface IHotspotCredentialsAuthenticationResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HasNetworkErrorOccurred(bool* return_value);
	HRESULT get_ResponseCode(Windows.Networking.NetworkOperators.HotspotAuthenticationResponseCode* return_value);
	HRESULT get_LogoffUrl(Windows.Foundation.Uri* return_value);
	HRESULT get_AuthenticationReplyXml(Windows.Data.Xml.Dom.XmlDocument* return_value);
}

@uuid("b458aeed-49f1-4c22-b073-96d511bf9c35")
@WinrtFactory("Windows.Networking.NetworkOperators.KnownCSimFilePaths")
interface IKnownCSimFilePathsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EFSpn(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_Gid1(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_Gid2(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
}

@uuid("3883c8b9-ff24-4571-a867-09f960426e14")
@WinrtFactory("Windows.Networking.NetworkOperators.KnownRuimFilePaths")
interface IKnownRuimFilePathsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EFSpn(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_Gid1(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_Gid2(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
}

@uuid("80cd1a63-37a5-43d3-80a3-ccd23e8fecee")
@WinrtFactory("Windows.Networking.NetworkOperators.KnownSimFilePaths")
interface IKnownSimFilePathsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EFOns(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_EFSpn(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_Gid1(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_Gid2(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
}

@uuid("7c34e581-1f1b-43f4-9530-8b092d32d71f")
@WinrtFactory("Windows.Networking.NetworkOperators.KnownUSimFilePaths")
interface IKnownUSimFilePathsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EFSpn(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_EFOpl(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_EFPnn(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_Gid1(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_Gid2(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
}

@uuid("36c24ccd-cee2-43e0-a603-ee86a36d6570")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandAccount")
interface IMobileBroadbandAccount : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NetworkAccountId(HSTRING* return_value);
	HRESULT get_ServiceProviderGuid(GUID* return_value);
	HRESULT get_ServiceProviderName(HSTRING* return_value);
	HRESULT get_CurrentNetwork(Windows.Networking.NetworkOperators.MobileBroadbandNetwork* return_network);
	HRESULT get_CurrentDeviceInformation(Windows.Networking.NetworkOperators.MobileBroadbandDeviceInformation* return_deviceInformation);
}

@uuid("38f52f1c-1136-4257-959f-b658a352b6d4")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandAccount")
interface IMobileBroadbandAccount2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetConnectionProfiles(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.ConnectionProfile)* return_value);
}

@uuid("092a1e21-9379-4b9b-ad31-d5fee2f748c6")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandAccount")
interface IMobileBroadbandAccount3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AccountExperienceUrl(Windows.Foundation.Uri* return_value);
}

@uuid("3853c880-77de-4c04-bead-a123b08c9f59")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandAccountEventArgs")
interface IMobileBroadbandAccountEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NetworkAccountId(HSTRING* return_value);
}

@uuid("aa7f4d24-afc1-4fc8-ae9a-a9175310faad")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandAccount")
interface IMobileBroadbandAccountStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AvailableNetworkAccountIds(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_ppAccountIds);
	HRESULT abi_CreateFromNetworkAccountId(HSTRING networkAccountId, Windows.Networking.NetworkOperators.MobileBroadbandAccount* return_ppAccount);
}

@uuid("7bc31d88-a6bd-49e1-80ab-6b91354a57d4")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandAccountUpdatedEventArgs")
interface IMobileBroadbandAccountUpdatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NetworkAccountId(HSTRING* return_value);
	HRESULT get_HasDeviceInformationChanged(bool* return_value);
	HRESULT get_HasNetworkChanged(bool* return_value);
}

@uuid("6bf3335e-23b5-449f-928d-5e0d3e04471d")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher")
interface IMobileBroadbandAccountWatcher : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_AccountAdded(Windows.Foundation.TypedEventHandler!(Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, Windows.Networking.NetworkOperators.MobileBroadbandAccountEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_AccountAdded(EventRegistrationToken cookie);
	HRESULT add_AccountUpdated(Windows.Foundation.TypedEventHandler!(Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, Windows.Networking.NetworkOperators.MobileBroadbandAccountUpdatedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_AccountUpdated(EventRegistrationToken cookie);
	HRESULT add_AccountRemoved(Windows.Foundation.TypedEventHandler!(Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, Windows.Networking.NetworkOperators.MobileBroadbandAccountEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_AccountRemoved(EventRegistrationToken cookie);
	HRESULT add_EnumerationCompleted(Windows.Foundation.TypedEventHandler!(Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_EnumerationCompleted(EventRegistrationToken cookie);
	HRESULT add_Stopped(Windows.Foundation.TypedEventHandler!(Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_Stopped(EventRegistrationToken cookie);
	HRESULT get_Status(Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcherStatus* return_status);
	HRESULT abi_Start();
	HRESULT abi_Stop();
}

@uuid("e6d08168-e381-4c6e-9be8-fe156969a446")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandDeviceInformation")
interface IMobileBroadbandDeviceInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NetworkDeviceStatus(Windows.Networking.NetworkOperators.NetworkDeviceStatus* return_value);
	HRESULT get_Manufacturer(HSTRING* return_value);
	HRESULT get_Model(HSTRING* return_value);
	HRESULT get_FirmwareInformation(HSTRING* return_value);
	HRESULT get_CellularClass(Windows.Devices.Sms.CellularClass* return_value);
	HRESULT get_DataClasses(Windows.Networking.NetworkOperators.DataClasses* return_value);
	HRESULT get_CustomDataClass(HSTRING* return_value);
	HRESULT get_MobileEquipmentId(HSTRING* return_value);
	HRESULT get_TelephoneNumbers(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_SubscriberId(HSTRING* return_value);
	HRESULT get_SimIccId(HSTRING* return_value);
	HRESULT get_DeviceType(Windows.Networking.NetworkOperators.MobileBroadbandDeviceType* return_pDeviceType);
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_CurrentRadioState(Windows.Networking.NetworkOperators.MobileBroadbandRadioState* return_pCurrentState);
}

@uuid("2e467af1-f932-4737-a722-03ba72370cb8")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandDeviceInformation")
interface IMobileBroadbandDeviceInformation2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PinManager(Windows.Networking.NetworkOperators.MobileBroadbandPinManager* return_value);
	HRESULT get_Revision(HSTRING* return_value);
	HRESULT get_SerialNumber(HSTRING* return_value);
}

@uuid("e08bb4bd-5d30-4b5a-92cc-d54df881d49e")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandDeviceInformation")
interface IMobileBroadbandDeviceInformation3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SimSpn(HSTRING* return_value);
	HRESULT get_SimPnn(HSTRING* return_value);
	HRESULT get_SimGid1(HSTRING* return_value);
}

@uuid("22be1a52-bd80-40ac-8e1f-2e07836a3dbd")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandDeviceService")
interface IMobileBroadbandDeviceService : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceServiceId(GUID* return_value);
	HRESULT get_SupportedCommands(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT abi_OpenDataSession(Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataSession* return_value);
	HRESULT abi_OpenCommandSession(Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandSession* return_value);
}

@uuid("b0f46abb-94d6-44b9-a538-f0810b645389")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandResult")
interface IMobileBroadbandDeviceServiceCommandResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StatusCode(UINT32* return_value);
	HRESULT get_ResponseData(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("fc098a45-913b-4914-b6c3-ae6304593e75")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandSession")
interface IMobileBroadbandDeviceServiceCommandSession : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SendQueryCommandAsync(UINT32 commandId, Windows.Storage.Streams.IBuffer data, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandResult)* return_asyncInfo);
	HRESULT abi_SendSetCommandAsync(UINT32 commandId, Windows.Storage.Streams.IBuffer data, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandResult)* return_asyncInfo);
	HRESULT abi_CloseSession();
}

@uuid("b6aa13de-1380-40e3-8618-73cbca48138c")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataReceivedEventArgs")
interface IMobileBroadbandDeviceServiceDataReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ReceivedData(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("dad62333-8bcf-4289-8a37-045c2169486a")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataSession")
interface IMobileBroadbandDeviceServiceDataSession : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_WriteDataAsync(Windows.Storage.Streams.IBuffer value, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_CloseSession();
	HRESULT add_DataReceived(Windows.Foundation.TypedEventHandler!(Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataSession, Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataReceivedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_DataReceived(EventRegistrationToken eventCookie);
}

@uuid("53d69b5b-c4ed-45f0-803a-d9417a6d9846")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceInformation")
interface IMobileBroadbandDeviceServiceInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceServiceId(GUID* return_value);
	HRESULT get_IsDataReadSupported(bool* return_value);
	HRESULT get_IsDataWriteSupported(bool* return_value);
}

@uuid("4a055b70-b9ae-4458-9241-a6a5fbf18a0c")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceTriggerDetails")
interface IMobileBroadbandDeviceServiceTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_DeviceServiceId(GUID* return_value);
	HRESULT get_ReceivedData(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("d0356912-e9f9-4f67-a03d-43189a316bf1")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandModem")
interface IMobileBroadbandModem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CurrentAccount(Windows.Networking.NetworkOperators.MobileBroadbandAccount* return_value);
	HRESULT get_DeviceInformation(Windows.Networking.NetworkOperators.MobileBroadbandDeviceInformation* return_value);
	HRESULT get_MaxDeviceServiceCommandSizeInBytes(UINT32* return_value);
	HRESULT get_MaxDeviceServiceDataSizeInBytes(UINT32* return_value);
	HRESULT get_DeviceServices(Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceInformation)* return_value);
	HRESULT abi_GetDeviceService(GUID deviceServiceId, Windows.Networking.NetworkOperators.MobileBroadbandDeviceService* return_value);
	HRESULT get_IsResetSupported(bool* return_value);
	HRESULT abi_ResetAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_GetCurrentConfigurationAsync(Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandModemConfiguration)* return_asyncInfo);
	HRESULT get_CurrentNetwork(Windows.Networking.NetworkOperators.MobileBroadbandNetwork* return_value);
}

@uuid("fce035a3-d6cd-4320-b982-be9d3ec7890f")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandModemConfiguration")
interface IMobileBroadbandModemConfiguration : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uicc(Windows.Networking.NetworkOperators.MobileBroadbandUicc* return_value);
	HRESULT get_HomeProviderId(HSTRING* return_value);
	HRESULT get_HomeProviderName(HSTRING* return_value);
}

@uuid("f99ed637-d6f1-4a78-8cbc-6421a65063c8")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandModem")
interface IMobileBroadbandModemStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
	HRESULT abi_FromId(HSTRING deviceId, Windows.Networking.NetworkOperators.MobileBroadbandModem* return_value);
	HRESULT abi_GetDefault(Windows.Networking.NetworkOperators.MobileBroadbandModem* return_value);
}

@uuid("cb63928c-0309-4cb6-a8c1-6a5a3c8e1ff6")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandNetwork")
interface IMobileBroadbandNetwork : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NetworkAdapter(Windows.Networking.Connectivity.NetworkAdapter* return_value);
	HRESULT get_NetworkRegistrationState(Windows.Networking.NetworkOperators.NetworkRegistrationState* return_registrationState);
	HRESULT get_RegistrationNetworkError(UINT32* return_networkError);
	HRESULT get_PacketAttachNetworkError(UINT32* return_networkError);
	HRESULT get_ActivationNetworkError(UINT32* return_networkError);
	HRESULT get_AccessPointName(HSTRING* return_apn);
	HRESULT get_RegisteredDataClass(Windows.Networking.NetworkOperators.DataClasses* return_value);
	HRESULT get_RegisteredProviderId(HSTRING* return_value);
	HRESULT get_RegisteredProviderName(HSTRING* return_value);
	HRESULT abi_ShowConnectionUI();
}

@uuid("5a55db22-62f7-4bdd-ba1d-477441960ba0")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandNetwork")
interface IMobileBroadbandNetwork2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetVoiceCallSupportAsync(Windows.Foundation.IAsyncOperation!(bool)* return_asyncInfo);
	HRESULT get_RegistrationUiccApps(Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandUiccApp)* return_value);
}

@uuid("beaf94e1-960f-49b4-a08d-7d85e968c7ec")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandNetworkRegistrationStateChange")
interface IMobileBroadbandNetworkRegistrationStateChange : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Network(Windows.Networking.NetworkOperators.MobileBroadbandNetwork* return_value);
}

@uuid("89135cff-28b8-46aa-b137-1c4b0f21edfe")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandNetworkRegistrationStateChangeTriggerDetails")
interface IMobileBroadbandNetworkRegistrationStateChangeTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NetworkRegistrationStateChanges(Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandNetworkRegistrationStateChange)* return_value);
}

@uuid("e661d709-e779-45bf-8281-75323df9e321")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandPin")
interface IMobileBroadbandPin : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Type(Windows.Networking.NetworkOperators.MobileBroadbandPinType* return_value);
	HRESULT get_LockState(Windows.Networking.NetworkOperators.MobileBroadbandPinLockState* return_value);
	HRESULT get_Format(Windows.Networking.NetworkOperators.MobileBroadbandPinFormat* return_value);
	HRESULT get_Enabled(bool* return_value);
	HRESULT get_MaxLength(UINT32* return_value);
	HRESULT get_MinLength(UINT32* return_value);
	HRESULT get_AttemptsRemaining(UINT32* return_value);
	HRESULT abi_EnableAsync(HSTRING currentPin, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult)* return_asyncInfo);
	HRESULT abi_DisableAsync(HSTRING currentPin, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult)* return_asyncInfo);
	HRESULT abi_EnterAsync(HSTRING currentPin, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult)* return_asyncInfo);
	HRESULT abi_ChangeAsync(HSTRING currentPin, HSTRING newPin, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult)* return_asyncInfo);
	HRESULT abi_UnblockAsync(HSTRING pinUnblockKey, HSTRING newPin, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult)* return_asyncInfo);
}

@uuid("be16673e-1f04-4f95-8b90-e7f559dde7e5")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandPinLockStateChange")
interface IMobileBroadbandPinLockStateChange : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_PinType(Windows.Networking.NetworkOperators.MobileBroadbandPinType* return_value);
	HRESULT get_PinLockState(Windows.Networking.NetworkOperators.MobileBroadbandPinLockState* return_value);
}

@uuid("d338c091-3e91-4d38-9036-aee83a6e79ad")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandPinLockStateChangeTriggerDetails")
interface IMobileBroadbandPinLockStateChangeTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PinLockStateChanges(Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandPinLockStateChange)* return_value);
}

@uuid("83567edd-6e1f-4b9b-a413-2b1f50cc36df")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandPinManager")
interface IMobileBroadbandPinManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SupportedPins(Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandPinType)* return_value);
	HRESULT abi_GetPin(Windows.Networking.NetworkOperators.MobileBroadbandPinType pinType, Windows.Networking.NetworkOperators.MobileBroadbandPin* return_value);
}

@uuid("11dddc32-31e7-49f5-b663-123d3bef0362")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult")
interface IMobileBroadbandPinOperationResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsSuccessful(bool* return_value);
	HRESULT get_AttemptsRemaining(UINT32* return_value);
}

@uuid("b054a561-9833-4aed-9717-4348b21a24b3")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandRadioStateChange")
interface IMobileBroadbandRadioStateChange : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_RadioState(Windows.Networking.NetworkOperators.MobileBroadbandRadioState* return_value);
}

@uuid("71301ace-093c-42c6-b0db-ad1f75a65445")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandRadioStateChangeTriggerDetails")
interface IMobileBroadbandRadioStateChangeTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RadioStateChanges(Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandRadioStateChange)* return_value);
}

@uuid("e634f691-525a-4ce2-8fce-aa4162579154")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandUicc")
interface IMobileBroadbandUicc : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SimIccId(HSTRING* return_value);
	HRESULT abi_GetUiccAppsAsync(Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandUiccAppsResult)* return_asyncInfo);
}

@uuid("4d170556-98a1-43dd-b2ec-50c90cf248df")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandUiccApp")
interface IMobileBroadbandUiccApp : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Kind(Windows.Networking.NetworkOperators.UiccAppKind* return_value);
	HRESULT abi_GetRecordDetailsAsync(Windows.Foundation.Collections.IIterable!(UINT32) uiccFilePath, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandUiccAppRecordDetailsResult)* return_asyncInfo);
	HRESULT abi_ReadRecordAsync(Windows.Foundation.Collections.IIterable!(UINT32) uiccFilePath, INT32 recordIndex, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandUiccAppReadRecordResult)* return_asyncInfo);
}

@uuid("64c95285-358e-47c5-8249-695f383b2bdb")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandUiccAppReadRecordResult")
interface IMobileBroadbandUiccAppReadRecordResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Networking.NetworkOperators.MobileBroadbandUiccAppOperationStatus* return_value);
	HRESULT get_Data(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("d919682f-be14-4934-981d-2f57b9ed83e6")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandUiccAppRecordDetailsResult")
interface IMobileBroadbandUiccAppRecordDetailsResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Networking.NetworkOperators.MobileBroadbandUiccAppOperationStatus* return_value);
	HRESULT get_Kind(Windows.Networking.NetworkOperators.UiccAppRecordKind* return_value);
	HRESULT get_RecordCount(INT32* return_value);
	HRESULT get_RecordSize(INT32* return_value);
	HRESULT get_ReadAccessCondition(Windows.Networking.NetworkOperators.UiccAccessCondition* return_value);
	HRESULT get_WriteAccessCondition(Windows.Networking.NetworkOperators.UiccAccessCondition* return_value);
}

@uuid("744930eb-8157-4a41-8494-6bf54c9b1d2b")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandUiccAppsResult")
interface IMobileBroadbandUiccAppsResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Networking.NetworkOperators.MobileBroadbandUiccAppOperationStatus* return_value);
	HRESULT get_UiccApps(Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandUiccApp)* return_value);
}

@uuid("bc68a9d1-82e1-4488-9f2c-1276c2468fac")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorNotificationEventDetails")
interface INetworkOperatorNotificationEventDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NotificationType(Windows.Networking.NetworkOperators.NetworkOperatorEventMessageType* return_value);
	HRESULT get_NetworkAccountId(HSTRING* return_value);
	HRESULT get_EncodingType(BYTE* return_value);
	HRESULT get_Message(HSTRING* return_value);
	HRESULT get_RuleId(HSTRING* return_value);
	HRESULT get_SmsMessage(Windows.Devices.Sms.ISmsMessage* return_value);
}

@uuid("0bcc0284-412e-403d-acc6-b757e34774a4")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorTetheringAccessPointConfiguration")
interface INetworkOperatorTetheringAccessPointConfiguration : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Ssid(HSTRING* return_value);
	HRESULT set_Ssid(HSTRING value);
	HRESULT get_Passphrase(HSTRING* return_value);
	HRESULT set_Passphrase(HSTRING value);
}

@uuid("709d254c-595f-4847-bb30-646935542918")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorTetheringClient")
interface INetworkOperatorTetheringClient : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MacAddress(HSTRING* return_value);
	HRESULT get_HostNames(Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName)* return_value);
}

@uuid("91b14016-8dca-4225-bbed-eef8b8d718d7")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager")
interface INetworkOperatorTetheringClientManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetTetheringClients(Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.NetworkOperatorTetheringClient)* return_value);
}

@uuid("0108916d-9e9a-4af6-8da3-60493b19c204")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorNotificationEventDetails")
interface INetworkOperatorTetheringEntitlementCheck : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AuthorizeTethering(bool allow, HSTRING entitlementFailureReason);
}

@uuid("d45a8da0-0e86-4d98-8ba4-dd70d4b764d3")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager")
interface INetworkOperatorTetheringManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxClientCount(UINT32* return_value);
	HRESULT get_ClientCount(UINT32* return_value);
	HRESULT get_TetheringOperationalState(Windows.Networking.NetworkOperators.TetheringOperationalState* return_value);
	HRESULT abi_GetCurrentAccessPointConfiguration(Windows.Networking.NetworkOperators.NetworkOperatorTetheringAccessPointConfiguration* return_configuration);
	HRESULT abi_ConfigureAccessPointAsync(Windows.Networking.NetworkOperators.NetworkOperatorTetheringAccessPointConfiguration configuration, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_StartTetheringAsync(Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.NetworkOperatorTetheringOperationResult)* return_asyncInfo);
	HRESULT abi_StopTetheringAsync(Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.NetworkOperatorTetheringOperationResult)* return_asyncInfo);
}

@uuid("3ebcbacc-f8c3-405c-9964-70a1eeabe194")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager")
interface INetworkOperatorTetheringManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetTetheringCapability(HSTRING networkAccountId, Windows.Networking.NetworkOperators.TetheringCapability* return_value);
	HRESULT abi_CreateFromNetworkAccountId(HSTRING networkAccountId, Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager* return_ppManager);
}

@uuid("5b235412-35f0-49e7-9b08-16d278fbaa42")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager")
interface INetworkOperatorTetheringManagerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetTetheringCapabilityFromConnectionProfile(Windows.Networking.Connectivity.ConnectionProfile profile, Windows.Networking.NetworkOperators.TetheringCapability* return_result);
	HRESULT abi_CreateFromConnectionProfile(Windows.Networking.Connectivity.ConnectionProfile profile, Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager* return_ppManager);
}

@uuid("8fdaadb6-4af9-4f21-9b58-d53e9f24231e")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager")
interface INetworkOperatorTetheringManagerStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFromConnectionProfileWithTargetAdapter(Windows.Networking.Connectivity.ConnectionProfile profile, Windows.Networking.Connectivity.NetworkAdapter adapter, Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager* return_ppManager);
}

@uuid("ebd203a1-01ba-476d-b4b3-bf3d12c8f80c")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorTetheringOperationResult")
interface INetworkOperatorTetheringOperationResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Networking.NetworkOperators.TetheringOperationStatus* return_value);
	HRESULT get_AdditionalErrorMessage(HSTRING* return_value);
}

@uuid("217700e0-8203-11df-adb9-f4ce462d9137")
@WinrtFactory("Windows.Networking.NetworkOperators.ProvisionFromXmlDocumentResults")
interface IProvisionFromXmlDocumentResults : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AllElementsProvisioned(bool* return_value);
	HRESULT get_ProvisionResultsXml(HSTRING* return_value);
}

@uuid("217700e0-8202-11df-adb9-f4ce462d9137")
@WinrtFactory("Windows.Networking.NetworkOperators.ProvisionedProfile")
interface IProvisionedProfile : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_UpdateCost(Windows.Networking.Connectivity.NetworkCostType value);
	HRESULT abi_UpdateUsage(Windows.Networking.NetworkOperators.ProfileUsage value);
}

@uuid("217700e0-8201-11df-adb9-f4ce462d9137")
@WinrtFactory("Windows.Networking.NetworkOperators.ProvisioningAgent")
interface IProvisioningAgent : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ProvisionFromXmlDocumentAsync(HSTRING provisioningXmlDocument, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.ProvisionFromXmlDocumentResults)* return_asyncInfo);
	HRESULT abi_GetProvisionedProfile(Windows.Networking.NetworkOperators.ProfileMediaType mediaType, HSTRING profileName, Windows.Networking.NetworkOperators.ProvisionedProfile* return_provisionedProfile);
}

@uuid("217700e0-8101-11df-adb9-f4ce462d9137")
@WinrtFactory("Windows.Networking.NetworkOperators.ProvisioningAgent")
interface IProvisioningAgentStaticMethods : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFromNetworkAccountId(HSTRING networkAccountId, Windows.Networking.NetworkOperators.ProvisioningAgent* return_provisioningAgent);
}

@uuid("2f9acf82-2004-4d5d-bf81-2aba1b4be4a8")
@WinrtFactory("Windows.Networking.NetworkOperators.UssdMessage")
interface IUssdMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DataCodingScheme(BYTE* return_value);
	HRESULT set_DataCodingScheme(BYTE value);
	HRESULT abi_GetPayload(UINT32* out___valueSize, BYTE** return_value);
	HRESULT abi_SetPayload(UINT32 __valueSize, BYTE* value);
	HRESULT get_PayloadAsText(HSTRING* return_value);
	HRESULT set_PayloadAsText(HSTRING value);
}

@uuid("2f9acf82-1003-4d5d-bf81-2aba1b4be4a8")
@WinrtFactory("Windows.Networking.NetworkOperators.UssdMessage")
interface IUssdMessageFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateMessage(HSTRING messageText, Windows.Networking.NetworkOperators.UssdMessage* return_ussdMessage);
}

@uuid("2f9acf82-2005-4d5d-bf81-2aba1b4be4a8")
@WinrtFactory("Windows.Networking.NetworkOperators.UssdReply")
interface IUssdReply : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ResultCode(Windows.Networking.NetworkOperators.UssdResultCode* return_value);
	HRESULT get_Message(Windows.Networking.NetworkOperators.UssdMessage* return_value);
}

@uuid("2f9acf82-2002-4d5d-bf81-2aba1b4be4a8")
@WinrtFactory("Windows.Networking.NetworkOperators.UssdSession")
interface IUssdSession : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SendMessageAndGetReplyAsync(Windows.Networking.NetworkOperators.UssdMessage message, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.UssdReply)* return_asyncInfo);
	HRESULT abi_Close();
}

@uuid("2f9acf82-1001-4d5d-bf81-2aba1b4be4a8")
@WinrtFactory("Windows.Networking.NetworkOperators.UssdSession")
interface IUssdSessionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFromNetworkAccountId(HSTRING networkAccountId, Windows.Networking.NetworkOperators.UssdSession* return_ussdSession);
	HRESULT abi_CreateFromNetworkInterfaceId(HSTRING networkInterfaceId, Windows.Networking.NetworkOperators.UssdSession* return_ussdSession);
}

interface HotspotAuthenticationContext
{
}

interface HotspotAuthenticationEventDetails
{
}

interface HotspotCredentialsAuthenticationResult
{
}

interface MobileBroadbandAccount
{
}

interface MobileBroadbandAccountEventArgs
{
}

interface MobileBroadbandAccountUpdatedEventArgs
{
}

interface MobileBroadbandAccountWatcher
{
}

interface MobileBroadbandDeviceInformation
{
}

interface MobileBroadbandDeviceService
{
}

interface MobileBroadbandDeviceServiceCommandResult
{
}

interface MobileBroadbandDeviceServiceCommandSession
{
}

interface MobileBroadbandDeviceServiceDataReceivedEventArgs
{
}

interface MobileBroadbandDeviceServiceDataSession
{
}

interface MobileBroadbandDeviceServiceInformation
{
}

interface MobileBroadbandDeviceServiceTriggerDetails
{
}

interface MobileBroadbandModem
{
}

interface MobileBroadbandModemConfiguration
{
}

interface MobileBroadbandNetwork
{
}

interface MobileBroadbandNetworkRegistrationStateChange
{
}

interface MobileBroadbandNetworkRegistrationStateChangeTriggerDetails
{
}

interface MobileBroadbandPin
{
}

interface MobileBroadbandPinLockStateChange
{
}

interface MobileBroadbandPinLockStateChangeTriggerDetails
{
}

interface MobileBroadbandPinManager
{
}

interface MobileBroadbandPinOperationResult
{
}

interface MobileBroadbandRadioStateChange
{
}

interface MobileBroadbandRadioStateChangeTriggerDetails
{
}

interface MobileBroadbandUicc
{
}

interface MobileBroadbandUiccApp
{
}

interface MobileBroadbandUiccAppReadRecordResult
{
}

interface MobileBroadbandUiccAppRecordDetailsResult
{
}

interface MobileBroadbandUiccAppsResult
{
}

interface NetworkOperatorNotificationEventDetails
{
}

interface NetworkOperatorTetheringAccessPointConfiguration
{
}

interface NetworkOperatorTetheringClient
{
}

interface NetworkOperatorTetheringManager
{
}

interface NetworkOperatorTetheringOperationResult
{
}

interface ProvisionFromXmlDocumentResults
{
}

interface ProvisionedProfile
{
}

interface ProvisioningAgent
{
}

interface UssdMessage
{
}

interface UssdReply
{
}

interface UssdSession
{
}

@bitflags
enum DataClasses
{
	None = 0x0,
	Gprs = 0x1,
	Edge = 0x2,
	Umts = 0x4,
	Hsdpa = 0x8,
	Hsupa = 0x10,
	LteAdvanced = 0x20,
	Cdma1xRtt = 0x10000,
	Cdma1xEvdo = 0x20000,
	Cdma1xEvdoRevA = 0x40000,
	Cdma1xEvdv = 0x80000,
	Cdma3xRtt = 0x100000,
	Cdma1xEvdoRevB = 0x200000,
	CdmaUmb = 0x400000,
	Custom = 0x80000000
}

enum HotspotAuthenticationResponseCode
{
	NoError = 0,
	LoginSucceeded = 50,
	LoginFailed = 100,
	RadiusServerError = 102,
	NetworkAdministratorError = 105,
	LoginAborted = 151,
	AccessGatewayInternalError = 255
}

enum MobileBroadbandAccountWatcherStatus
{
	Created = 0,
	Started = 1,
	EnumerationCompleted = 2,
	Stopped = 3,
	Aborted = 4
}

enum MobileBroadbandDeviceType
{
	Unknown = 0,
	Embedded = 1,
	Removable = 2,
	Remote = 3
}

enum MobileBroadbandPinFormat
{
	Unknown = 0,
	Numeric = 1,
	Alphanumeric = 2
}

enum MobileBroadbandPinLockState
{
	Unknown = 0,
	Unlocked = 1,
	PinRequired = 2,
	PinUnblockKeyRequired = 3
}

enum MobileBroadbandPinType
{
	None = 0,
	Custom = 1,
	Pin1 = 2,
	Pin2 = 3,
	SimPin = 4,
	FirstSimPin = 5,
	NetworkPin = 6,
	NetworkSubsetPin = 7,
	ServiceProviderPin = 8,
	CorporatePin = 9,
	SubsidyLock = 10
}

enum MobileBroadbandRadioState
{
	Off = 0,
	On = 1
}

enum MobileBroadbandUiccAppOperationStatus
{
	Success = 0,
	InvalidUiccFilePath = 1,
	AccessConditionNotHeld = 2,
	UiccBusy = 3
}

enum NetworkDeviceStatus
{
	DeviceNotReady = 0,
	DeviceReady = 1,
	SimNotInserted = 2,
	BadSim = 3,
	DeviceHardwareFailure = 4,
	AccountNotActivated = 5,
	DeviceLocked = 6,
	DeviceBlocked = 7
}

enum NetworkOperatorEventMessageType
{
	Gsm = 0,
	Cdma = 1,
	Ussd = 2,
	DataPlanThresholdReached = 3,
	DataPlanReset = 4,
	DataPlanDeleted = 5,
	ProfileConnected = 6,
	ProfileDisconnected = 7,
	RegisteredRoaming = 8,
	RegisteredHome = 9,
	TetheringEntitlementCheck = 10,
	TetheringOperationalStateChanged = 11,
	TetheringNumberOfClientsChanged = 12
}

enum NetworkRegistrationState
{
	None = 0,
	Deregistered = 1,
	Searching = 2,
	Home = 3,
	Roaming = 4,
	Partner = 5,
	Denied = 6
}

enum ProfileMediaType
{
	Wlan = 0,
	Wwan = 1
}

enum TetheringCapability
{
	Enabled = 0,
	DisabledByGroupPolicy = 1,
	DisabledByHardwareLimitation = 2,
	DisabledByOperator = 3,
	DisabledBySku = 4,
	DisabledByRequiredAppNotInstalled = 5,
	DisabledDueToUnknownCause = 6,
	DisabledBySystemCapability = 7
}

enum TetheringOperationStatus
{
	Success = 0,
	Unknown = 1,
	MobileBroadbandDeviceOff = 2,
	WiFiDeviceOff = 3,
	EntitlementCheckTimeout = 4,
	EntitlementCheckFailure = 5,
	OperationInProgress = 6,
	BluetoothDeviceOff = 7,
	NetworkLimitedConnectivity = 8
}

enum TetheringOperationalState
{
	Unknown = 0,
	On = 1,
	Off = 2,
	InTransition = 3
}

enum UiccAccessCondition
{
	AlwaysAllowed = 0,
	Pin1 = 1,
	Pin2 = 2,
	Pin3 = 3,
	Pin4 = 4,
	Administrative5 = 5,
	Administrative6 = 6,
	NeverAllowed = 7
}

enum UiccAppKind
{
	Unknown = 0,
	MF = 1,
	MFSim = 2,
	MFRuim = 3,
	USim = 4,
	CSim = 5,
	ISim = 6
}

enum UiccAppRecordKind
{
	Unknown = 0,
	Transparent = 1,
	RecordOriented = 2
}

enum UssdResultCode
{
	NoActionRequired = 0,
	ActionRequired = 1,
	Terminated = 2,
	OtherLocalClient = 3,
	OperationNotSupported = 4,
	NetworkTimeout = 5
}