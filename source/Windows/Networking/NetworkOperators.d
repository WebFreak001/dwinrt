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
extern(Windows):
	HRESULT get_WirelessNetworkId(UINT32* out___valueSize, ubyte** return_value);
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
extern(Windows):
	HRESULT abi_IssueCredentialsAsync(HSTRING userName, HSTRING password, HSTRING extraParameters, bool markAsManualConnectOnFailure, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.HotspotCredentialsAuthenticationResult)* return_asyncInfo);
}

@uuid("e756c791-1002-4de5-83c7-de61d88831d0")
@WinrtFactory("Windows.Networking.NetworkOperators.HotspotAuthenticationContext")
interface IHotspotAuthenticationContextStatics : IInspectable
{
extern(Windows):
	HRESULT abi_TryGetAuthenticationContext(HSTRING evenToken, Windows.Networking.NetworkOperators.HotspotAuthenticationContext* out_context, bool* return_isValid);
}

@uuid("e756c791-1001-4de5-83c7-de61d88831d0")
@WinrtFactory("Windows.Networking.NetworkOperators.HotspotAuthenticationEventDetails")
interface IHotspotAuthenticationEventDetails : IInspectable
{
extern(Windows):
	HRESULT get_EventToken(HSTRING* return_value);
}

@uuid("e756c791-1005-4de5-83c7-de61d88831d0")
@WinrtFactory("Windows.Networking.NetworkOperators.HotspotCredentialsAuthenticationResult")
interface IHotspotCredentialsAuthenticationResult : IInspectable
{
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
extern(Windows):
	HRESULT get_EFSpn(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_Gid1(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_Gid2(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
}

@uuid("3883c8b9-ff24-4571-a867-09f960426e14")
@WinrtFactory("Windows.Networking.NetworkOperators.KnownRuimFilePaths")
interface IKnownRuimFilePathsStatics : IInspectable
{
extern(Windows):
	HRESULT get_EFSpn(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_Gid1(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_Gid2(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
}

@uuid("80cd1a63-37a5-43d3-80a3-ccd23e8fecee")
@WinrtFactory("Windows.Networking.NetworkOperators.KnownSimFilePaths")
interface IKnownSimFilePathsStatics : IInspectable
{
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
extern(Windows):
	HRESULT abi_GetConnectionProfiles(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.ConnectionProfile)* return_value);
}

@uuid("092a1e21-9379-4b9b-ad31-d5fee2f748c6")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandAccount")
interface IMobileBroadbandAccount3 : IInspectable
{
extern(Windows):
	HRESULT get_AccountExperienceUrl(Windows.Foundation.Uri* return_value);
}

@uuid("3853c880-77de-4c04-bead-a123b08c9f59")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandAccountEventArgs")
interface IMobileBroadbandAccountEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_NetworkAccountId(HSTRING* return_value);
}

@uuid("aa7f4d24-afc1-4fc8-ae9a-a9175310faad")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandAccount")
interface IMobileBroadbandAccountStatics : IInspectable
{
extern(Windows):
	HRESULT get_AvailableNetworkAccountIds(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_ppAccountIds);
	HRESULT abi_CreateFromNetworkAccountId(HSTRING networkAccountId, Windows.Networking.NetworkOperators.MobileBroadbandAccount* return_ppAccount);
}

@uuid("7bc31d88-a6bd-49e1-80ab-6b91354a57d4")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandAccountUpdatedEventArgs")
interface IMobileBroadbandAccountUpdatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_NetworkAccountId(HSTRING* return_value);
	HRESULT get_HasDeviceInformationChanged(bool* return_value);
	HRESULT get_HasNetworkChanged(bool* return_value);
}

@uuid("6bf3335e-23b5-449f-928d-5e0d3e04471d")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher")
interface IMobileBroadbandAccountWatcher : IInspectable
{
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
extern(Windows):
	HRESULT get_PinManager(Windows.Networking.NetworkOperators.MobileBroadbandPinManager* return_value);
	HRESULT get_Revision(HSTRING* return_value);
	HRESULT get_SerialNumber(HSTRING* return_value);
}

@uuid("e08bb4bd-5d30-4b5a-92cc-d54df881d49e")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandDeviceInformation")
interface IMobileBroadbandDeviceInformation3 : IInspectable
{
extern(Windows):
	HRESULT get_SimSpn(HSTRING* return_value);
	HRESULT get_SimPnn(HSTRING* return_value);
	HRESULT get_SimGid1(HSTRING* return_value);
}

@uuid("22be1a52-bd80-40ac-8e1f-2e07836a3dbd")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandDeviceService")
interface IMobileBroadbandDeviceService : IInspectable
{
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
extern(Windows):
	HRESULT get_StatusCode(UINT32* return_value);
	HRESULT get_ResponseData(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("fc098a45-913b-4914-b6c3-ae6304593e75")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandSession")
interface IMobileBroadbandDeviceServiceCommandSession : IInspectable
{
extern(Windows):
	HRESULT abi_SendQueryCommandAsync(UINT32 commandId, Windows.Storage.Streams.IBuffer data, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandResult)* return_asyncInfo);
	HRESULT abi_SendSetCommandAsync(UINT32 commandId, Windows.Storage.Streams.IBuffer data, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandResult)* return_asyncInfo);
	HRESULT abi_CloseSession();
}

@uuid("b6aa13de-1380-40e3-8618-73cbca48138c")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataReceivedEventArgs")
interface IMobileBroadbandDeviceServiceDataReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ReceivedData(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("dad62333-8bcf-4289-8a37-045c2169486a")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataSession")
interface IMobileBroadbandDeviceServiceDataSession : IInspectable
{
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
extern(Windows):
	HRESULT get_DeviceServiceId(GUID* return_value);
	HRESULT get_IsDataReadSupported(bool* return_value);
	HRESULT get_IsDataWriteSupported(bool* return_value);
}

@uuid("4a055b70-b9ae-4458-9241-a6a5fbf18a0c")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceTriggerDetails")
interface IMobileBroadbandDeviceServiceTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_DeviceServiceId(GUID* return_value);
	HRESULT get_ReceivedData(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("d0356912-e9f9-4f67-a03d-43189a316bf1")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandModem")
interface IMobileBroadbandModem : IInspectable
{
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
extern(Windows):
	HRESULT get_Uicc(Windows.Networking.NetworkOperators.MobileBroadbandUicc* return_value);
	HRESULT get_HomeProviderId(HSTRING* return_value);
	HRESULT get_HomeProviderName(HSTRING* return_value);
}

@uuid("f99ed637-d6f1-4a78-8cbc-6421a65063c8")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandModem")
interface IMobileBroadbandModemStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
	HRESULT abi_FromId(HSTRING deviceId, Windows.Networking.NetworkOperators.MobileBroadbandModem* return_value);
	HRESULT abi_GetDefault(Windows.Networking.NetworkOperators.MobileBroadbandModem* return_value);
}

@uuid("cb63928c-0309-4cb6-a8c1-6a5a3c8e1ff6")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandNetwork")
interface IMobileBroadbandNetwork : IInspectable
{
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
extern(Windows):
	HRESULT abi_GetVoiceCallSupportAsync(Windows.Foundation.IAsyncOperation!(bool)* return_asyncInfo);
	HRESULT get_RegistrationUiccApps(Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandUiccApp)* return_value);
}

@uuid("beaf94e1-960f-49b4-a08d-7d85e968c7ec")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandNetworkRegistrationStateChange")
interface IMobileBroadbandNetworkRegistrationStateChange : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Network(Windows.Networking.NetworkOperators.MobileBroadbandNetwork* return_value);
}

@uuid("89135cff-28b8-46aa-b137-1c4b0f21edfe")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandNetworkRegistrationStateChangeTriggerDetails")
interface IMobileBroadbandNetworkRegistrationStateChangeTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_NetworkRegistrationStateChanges(Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandNetworkRegistrationStateChange)* return_value);
}

@uuid("e661d709-e779-45bf-8281-75323df9e321")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandPin")
interface IMobileBroadbandPin : IInspectable
{
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
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_PinType(Windows.Networking.NetworkOperators.MobileBroadbandPinType* return_value);
	HRESULT get_PinLockState(Windows.Networking.NetworkOperators.MobileBroadbandPinLockState* return_value);
}

@uuid("d338c091-3e91-4d38-9036-aee83a6e79ad")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandPinLockStateChangeTriggerDetails")
interface IMobileBroadbandPinLockStateChangeTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_PinLockStateChanges(Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandPinLockStateChange)* return_value);
}

@uuid("83567edd-6e1f-4b9b-a413-2b1f50cc36df")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandPinManager")
interface IMobileBroadbandPinManager : IInspectable
{
extern(Windows):
	HRESULT get_SupportedPins(Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandPinType)* return_value);
	HRESULT abi_GetPin(Windows.Networking.NetworkOperators.MobileBroadbandPinType pinType, Windows.Networking.NetworkOperators.MobileBroadbandPin* return_value);
}

@uuid("11dddc32-31e7-49f5-b663-123d3bef0362")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult")
interface IMobileBroadbandPinOperationResult : IInspectable
{
extern(Windows):
	HRESULT get_IsSuccessful(bool* return_value);
	HRESULT get_AttemptsRemaining(UINT32* return_value);
}

@uuid("b054a561-9833-4aed-9717-4348b21a24b3")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandRadioStateChange")
interface IMobileBroadbandRadioStateChange : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_RadioState(Windows.Networking.NetworkOperators.MobileBroadbandRadioState* return_value);
}

@uuid("71301ace-093c-42c6-b0db-ad1f75a65445")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandRadioStateChangeTriggerDetails")
interface IMobileBroadbandRadioStateChangeTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_RadioStateChanges(Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandRadioStateChange)* return_value);
}

@uuid("e634f691-525a-4ce2-8fce-aa4162579154")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandUicc")
interface IMobileBroadbandUicc : IInspectable
{
extern(Windows):
	HRESULT get_SimIccId(HSTRING* return_value);
	HRESULT abi_GetUiccAppsAsync(Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandUiccAppsResult)* return_asyncInfo);
}

@uuid("4d170556-98a1-43dd-b2ec-50c90cf248df")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandUiccApp")
interface IMobileBroadbandUiccApp : IInspectable
{
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
extern(Windows):
	HRESULT get_Status(Windows.Networking.NetworkOperators.MobileBroadbandUiccAppOperationStatus* return_value);
	HRESULT get_Data(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("d919682f-be14-4934-981d-2f57b9ed83e6")
@WinrtFactory("Windows.Networking.NetworkOperators.MobileBroadbandUiccAppRecordDetailsResult")
interface IMobileBroadbandUiccAppRecordDetailsResult : IInspectable
{
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
extern(Windows):
	HRESULT get_Status(Windows.Networking.NetworkOperators.MobileBroadbandUiccAppOperationStatus* return_value);
	HRESULT get_UiccApps(Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandUiccApp)* return_value);
}

@uuid("bc68a9d1-82e1-4488-9f2c-1276c2468fac")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorNotificationEventDetails")
interface INetworkOperatorNotificationEventDetails : IInspectable
{
extern(Windows):
	HRESULT get_NotificationType(Windows.Networking.NetworkOperators.NetworkOperatorEventMessageType* return_value);
	HRESULT get_NetworkAccountId(HSTRING* return_value);
	HRESULT get_EncodingType(ubyte* return_value);
	HRESULT get_Message(HSTRING* return_value);
	HRESULT get_RuleId(HSTRING* return_value);
	HRESULT get_SmsMessage(Windows.Devices.Sms.ISmsMessage* return_value);
}

@uuid("0bcc0284-412e-403d-acc6-b757e34774a4")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorTetheringAccessPointConfiguration")
interface INetworkOperatorTetheringAccessPointConfiguration : IInspectable
{
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
extern(Windows):
	HRESULT get_MacAddress(HSTRING* return_value);
	HRESULT get_HostNames(Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName)* return_value);
}

@uuid("91b14016-8dca-4225-bbed-eef8b8d718d7")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager")
interface INetworkOperatorTetheringClientManager : IInspectable
{
extern(Windows):
	HRESULT abi_GetTetheringClients(Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.NetworkOperatorTetheringClient)* return_value);
}

@uuid("0108916d-9e9a-4af6-8da3-60493b19c204")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorNotificationEventDetails")
interface INetworkOperatorTetheringEntitlementCheck : IInspectable
{
extern(Windows):
	HRESULT abi_AuthorizeTethering(bool allow, HSTRING entitlementFailureReason);
}

@uuid("d45a8da0-0e86-4d98-8ba4-dd70d4b764d3")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager")
interface INetworkOperatorTetheringManager : IInspectable
{
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
extern(Windows):
	HRESULT abi_GetTetheringCapability(HSTRING networkAccountId, Windows.Networking.NetworkOperators.TetheringCapability* return_value);
	HRESULT abi_CreateFromNetworkAccountId(HSTRING networkAccountId, Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager* return_ppManager);
}

@uuid("5b235412-35f0-49e7-9b08-16d278fbaa42")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager")
interface INetworkOperatorTetheringManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetTetheringCapabilityFromConnectionProfile(Windows.Networking.Connectivity.ConnectionProfile profile, Windows.Networking.NetworkOperators.TetheringCapability* return_result);
	HRESULT abi_CreateFromConnectionProfile(Windows.Networking.Connectivity.ConnectionProfile profile, Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager* return_ppManager);
}

@uuid("8fdaadb6-4af9-4f21-9b58-d53e9f24231e")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager")
interface INetworkOperatorTetheringManagerStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromConnectionProfileWithTargetAdapter(Windows.Networking.Connectivity.ConnectionProfile profile, Windows.Networking.Connectivity.NetworkAdapter adapter, Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager* return_ppManager);
}

@uuid("ebd203a1-01ba-476d-b4b3-bf3d12c8f80c")
@WinrtFactory("Windows.Networking.NetworkOperators.NetworkOperatorTetheringOperationResult")
interface INetworkOperatorTetheringOperationResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Networking.NetworkOperators.TetheringOperationStatus* return_value);
	HRESULT get_AdditionalErrorMessage(HSTRING* return_value);
}

@uuid("217700e0-8203-11df-adb9-f4ce462d9137")
@WinrtFactory("Windows.Networking.NetworkOperators.ProvisionFromXmlDocumentResults")
interface IProvisionFromXmlDocumentResults : IInspectable
{
extern(Windows):
	HRESULT get_AllElementsProvisioned(bool* return_value);
	HRESULT get_ProvisionResultsXml(HSTRING* return_value);
}

@uuid("217700e0-8202-11df-adb9-f4ce462d9137")
@WinrtFactory("Windows.Networking.NetworkOperators.ProvisionedProfile")
interface IProvisionedProfile : IInspectable
{
extern(Windows):
	HRESULT abi_UpdateCost(Windows.Networking.Connectivity.NetworkCostType value);
	HRESULT abi_UpdateUsage(Windows.Networking.NetworkOperators.ProfileUsage value);
}

@uuid("217700e0-8201-11df-adb9-f4ce462d9137")
@WinrtFactory("Windows.Networking.NetworkOperators.ProvisioningAgent")
interface IProvisioningAgent : IInspectable
{
extern(Windows):
	HRESULT abi_ProvisionFromXmlDocumentAsync(HSTRING provisioningXmlDocument, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.ProvisionFromXmlDocumentResults)* return_asyncInfo);
	HRESULT abi_GetProvisionedProfile(Windows.Networking.NetworkOperators.ProfileMediaType mediaType, HSTRING profileName, Windows.Networking.NetworkOperators.ProvisionedProfile* return_provisionedProfile);
}

@uuid("217700e0-8101-11df-adb9-f4ce462d9137")
@WinrtFactory("Windows.Networking.NetworkOperators.ProvisioningAgent")
interface IProvisioningAgentStaticMethods : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromNetworkAccountId(HSTRING networkAccountId, Windows.Networking.NetworkOperators.ProvisioningAgent* return_provisioningAgent);
}

@uuid("2f9acf82-2004-4d5d-bf81-2aba1b4be4a8")
@WinrtFactory("Windows.Networking.NetworkOperators.UssdMessage")
interface IUssdMessage : IInspectable
{
extern(Windows):
	HRESULT get_DataCodingScheme(ubyte* return_value);
	HRESULT set_DataCodingScheme(ubyte value);
	HRESULT abi_GetPayload(UINT32* out___valueSize, ubyte** return_value);
	HRESULT abi_SetPayload(UINT32 __valueSize, ubyte* value);
	HRESULT get_PayloadAsText(HSTRING* return_value);
	HRESULT set_PayloadAsText(HSTRING value);
}

@uuid("2f9acf82-1003-4d5d-bf81-2aba1b4be4a8")
@WinrtFactory("Windows.Networking.NetworkOperators.UssdMessage")
interface IUssdMessageFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateMessage(HSTRING messageText, Windows.Networking.NetworkOperators.UssdMessage* return_ussdMessage);
}

@uuid("2f9acf82-2005-4d5d-bf81-2aba1b4be4a8")
@WinrtFactory("Windows.Networking.NetworkOperators.UssdReply")
interface IUssdReply : IInspectable
{
extern(Windows):
	HRESULT get_ResultCode(Windows.Networking.NetworkOperators.UssdResultCode* return_value);
	HRESULT get_Message(Windows.Networking.NetworkOperators.UssdMessage* return_value);
}

@uuid("2f9acf82-2002-4d5d-bf81-2aba1b4be4a8")
@WinrtFactory("Windows.Networking.NetworkOperators.UssdSession")
interface IUssdSession : IInspectable
{
extern(Windows):
	HRESULT abi_SendMessageAndGetReplyAsync(Windows.Networking.NetworkOperators.UssdMessage message, Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.UssdReply)* return_asyncInfo);
	HRESULT abi_Close();
}

@uuid("2f9acf82-1001-4d5d-bf81-2aba1b4be4a8")
@WinrtFactory("Windows.Networking.NetworkOperators.UssdSession")
interface IUssdSessionStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromNetworkAccountId(HSTRING networkAccountId, Windows.Networking.NetworkOperators.UssdSession* return_ussdSession);
	HRESULT abi_CreateFromNetworkInterfaceId(HSTRING networkInterfaceId, Windows.Networking.NetworkOperators.UssdSession* return_ussdSession);
}

interface HotspotAuthenticationContext : Windows.Networking.NetworkOperators.IHotspotAuthenticationContext, Windows.Networking.NetworkOperators.IHotspotAuthenticationContext2
{
extern(Windows):
	final ubyte* WirelessNetworkId(UINT32* out___valueSize)
	{
		ubyte* _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IHotspotAuthenticationContext)this.asInterface(uuid("e756c791-1003-4de5-83c7-de61d88831d0"))).get_WirelessNetworkId(out___valueSize, &_ret));
		return _ret;
	}
	final Windows.Networking.Connectivity.NetworkAdapter NetworkAdapter()
	{
		Windows.Networking.Connectivity.NetworkAdapter _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IHotspotAuthenticationContext)this.asInterface(uuid("e756c791-1003-4de5-83c7-de61d88831d0"))).get_NetworkAdapter(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri RedirectMessageUrl()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IHotspotAuthenticationContext)this.asInterface(uuid("e756c791-1003-4de5-83c7-de61d88831d0"))).get_RedirectMessageUrl(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument RedirectMessageXml()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IHotspotAuthenticationContext)this.asInterface(uuid("e756c791-1003-4de5-83c7-de61d88831d0"))).get_RedirectMessageXml(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri AuthenticationUrl()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IHotspotAuthenticationContext)this.asInterface(uuid("e756c791-1003-4de5-83c7-de61d88831d0"))).get_AuthenticationUrl(&_ret));
		return _ret;
	}
	final void IssueCredentials(wstring userName, wstring password, wstring extraParameters, bool markAsManualConnectOnFailure)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IHotspotAuthenticationContext)this.asInterface(uuid("e756c791-1003-4de5-83c7-de61d88831d0"))).abi_IssueCredentials(hstring(userName).handle, hstring(password).handle, hstring(extraParameters).handle, markAsManualConnectOnFailure));
	}
	final void AbortAuthentication(bool markAsManual)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IHotspotAuthenticationContext)this.asInterface(uuid("e756c791-1003-4de5-83c7-de61d88831d0"))).abi_AbortAuthentication(markAsManual));
	}
	final void SkipAuthentication()
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IHotspotAuthenticationContext)this.asInterface(uuid("e756c791-1003-4de5-83c7-de61d88831d0"))).abi_SkipAuthentication());
	}
	final void TriggerAttentionRequired(wstring packageRelativeApplicationId, wstring applicationParameters)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IHotspotAuthenticationContext)this.asInterface(uuid("e756c791-1003-4de5-83c7-de61d88831d0"))).abi_TriggerAttentionRequired(hstring(packageRelativeApplicationId).handle, hstring(applicationParameters).handle));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.HotspotCredentialsAuthenticationResult) IssueCredentialsAsync(wstring userName, wstring password, wstring extraParameters, bool markAsManualConnectOnFailure)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.HotspotCredentialsAuthenticationResult) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IHotspotAuthenticationContext2)this.asInterface(uuid("e756c791-1004-4de5-83c7-de61d88831d0"))).abi_IssueCredentialsAsync(hstring(userName).handle, hstring(password).handle, hstring(extraParameters).handle, markAsManualConnectOnFailure, &_ret));
		return _ret;
	}

	private static Windows.Networking.NetworkOperators.IHotspotAuthenticationContextStatics _staticInstance;
	public static Windows.Networking.NetworkOperators.IHotspotAuthenticationContextStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Networking.NetworkOperators.IHotspotAuthenticationContextStatics);
		return _staticInstance;
	}
	static bool TryGetAuthenticationContext(wstring evenToken, Windows.Networking.NetworkOperators.HotspotAuthenticationContext* out_context)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryGetAuthenticationContext(hstring(evenToken).handle, out_context, &_ret));
		return _ret;
	}
}

interface HotspotAuthenticationEventDetails : Windows.Networking.NetworkOperators.IHotspotAuthenticationEventDetails
{
extern(Windows):
	final wstring EventToken()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IHotspotAuthenticationEventDetails)this.asInterface(uuid("e756c791-1001-4de5-83c7-de61d88831d0"))).get_EventToken(&_ret));
		return hstring(_ret).d_str;
	}
}

interface HotspotCredentialsAuthenticationResult : Windows.Networking.NetworkOperators.IHotspotCredentialsAuthenticationResult
{
extern(Windows):
	final bool HasNetworkErrorOccurred()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IHotspotCredentialsAuthenticationResult)this.asInterface(uuid("e756c791-1005-4de5-83c7-de61d88831d0"))).get_HasNetworkErrorOccurred(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.HotspotAuthenticationResponseCode ResponseCode()
	{
		Windows.Networking.NetworkOperators.HotspotAuthenticationResponseCode _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IHotspotCredentialsAuthenticationResult)this.asInterface(uuid("e756c791-1005-4de5-83c7-de61d88831d0"))).get_ResponseCode(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri LogoffUrl()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IHotspotCredentialsAuthenticationResult)this.asInterface(uuid("e756c791-1005-4de5-83c7-de61d88831d0"))).get_LogoffUrl(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument AuthenticationReplyXml()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IHotspotCredentialsAuthenticationResult)this.asInterface(uuid("e756c791-1005-4de5-83c7-de61d88831d0"))).get_AuthenticationReplyXml(&_ret));
		return _ret;
	}
}

interface KnownCSimFilePaths
{
	private static Windows.Networking.NetworkOperators.IKnownCSimFilePathsStatics _staticInstance;
	public static Windows.Networking.NetworkOperators.IKnownCSimFilePathsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Networking.NetworkOperators.IKnownCSimFilePathsStatics);
		return _staticInstance;
	}
	static Windows.Foundation.Collections.IVectorView!(UINT32) EFSpn()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK(staticInstance.get_EFSpn(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(UINT32) Gid1()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK(staticInstance.get_Gid1(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(UINT32) Gid2()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK(staticInstance.get_Gid2(&_ret));
		return _ret;
	}
}

interface KnownRuimFilePaths
{
	private static Windows.Networking.NetworkOperators.IKnownRuimFilePathsStatics _staticInstance;
	public static Windows.Networking.NetworkOperators.IKnownRuimFilePathsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Networking.NetworkOperators.IKnownRuimFilePathsStatics);
		return _staticInstance;
	}
	static Windows.Foundation.Collections.IVectorView!(UINT32) EFSpn()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK(staticInstance.get_EFSpn(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(UINT32) Gid1()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK(staticInstance.get_Gid1(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(UINT32) Gid2()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK(staticInstance.get_Gid2(&_ret));
		return _ret;
	}
}

interface KnownSimFilePaths
{
	private static Windows.Networking.NetworkOperators.IKnownSimFilePathsStatics _staticInstance;
	public static Windows.Networking.NetworkOperators.IKnownSimFilePathsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Networking.NetworkOperators.IKnownSimFilePathsStatics);
		return _staticInstance;
	}
	static Windows.Foundation.Collections.IVectorView!(UINT32) EFOns()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK(staticInstance.get_EFOns(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(UINT32) EFSpn()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK(staticInstance.get_EFSpn(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(UINT32) Gid1()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK(staticInstance.get_Gid1(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(UINT32) Gid2()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK(staticInstance.get_Gid2(&_ret));
		return _ret;
	}
}

interface KnownUSimFilePaths
{
	private static Windows.Networking.NetworkOperators.IKnownUSimFilePathsStatics _staticInstance;
	public static Windows.Networking.NetworkOperators.IKnownUSimFilePathsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Networking.NetworkOperators.IKnownUSimFilePathsStatics);
		return _staticInstance;
	}
	static Windows.Foundation.Collections.IVectorView!(UINT32) EFSpn()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK(staticInstance.get_EFSpn(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(UINT32) EFOpl()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK(staticInstance.get_EFOpl(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(UINT32) EFPnn()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK(staticInstance.get_EFPnn(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(UINT32) Gid1()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK(staticInstance.get_Gid1(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(UINT32) Gid2()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK(staticInstance.get_Gid2(&_ret));
		return _ret;
	}
}

interface MobileBroadbandAccount : Windows.Networking.NetworkOperators.IMobileBroadbandAccount, Windows.Networking.NetworkOperators.IMobileBroadbandAccount2, Windows.Networking.NetworkOperators.IMobileBroadbandAccount3
{
extern(Windows):
	final wstring NetworkAccountId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccount)this.asInterface(uuid("36c24ccd-cee2-43e0-a603-ee86a36d6570"))).get_NetworkAccountId(&_ret));
		return hstring(_ret).d_str;
	}
	final GUID ServiceProviderGuid()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccount)this.asInterface(uuid("36c24ccd-cee2-43e0-a603-ee86a36d6570"))).get_ServiceProviderGuid(&_ret));
		return _ret;
	}
	final wstring ServiceProviderName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccount)this.asInterface(uuid("36c24ccd-cee2-43e0-a603-ee86a36d6570"))).get_ServiceProviderName(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandNetwork CurrentNetwork()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandNetwork _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccount)this.asInterface(uuid("36c24ccd-cee2-43e0-a603-ee86a36d6570"))).get_CurrentNetwork(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandDeviceInformation CurrentDeviceInformation()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandDeviceInformation _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccount)this.asInterface(uuid("36c24ccd-cee2-43e0-a603-ee86a36d6570"))).get_CurrentDeviceInformation(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.ConnectionProfile) GetConnectionProfiles()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.ConnectionProfile) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccount2)this.asInterface(uuid("38f52f1c-1136-4257-959f-b658a352b6d4"))).abi_GetConnectionProfiles(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri AccountExperienceUrl()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccount3)this.asInterface(uuid("092a1e21-9379-4b9b-ad31-d5fee2f748c6"))).get_AccountExperienceUrl(&_ret));
		return _ret;
	}

	private static Windows.Networking.NetworkOperators.IMobileBroadbandAccountStatics _staticInstance;
	public static Windows.Networking.NetworkOperators.IMobileBroadbandAccountStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Networking.NetworkOperators.IMobileBroadbandAccountStatics);
		return _staticInstance;
	}
	static Windows.Foundation.Collections.IVectorView!(HSTRING) AvailableNetworkAccountIds()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(staticInstance.get_AvailableNetworkAccountIds(&_ret));
		return _ret;
	}
	static Windows.Networking.NetworkOperators.MobileBroadbandAccount CreateFromNetworkAccountId(wstring networkAccountId)
	{
		Windows.Networking.NetworkOperators.MobileBroadbandAccount _ret;
		Debug.OK(staticInstance.abi_CreateFromNetworkAccountId(hstring(networkAccountId).handle, &_ret));
		return _ret;
	}
}

interface MobileBroadbandAccountEventArgs : Windows.Networking.NetworkOperators.IMobileBroadbandAccountEventArgs
{
extern(Windows):
	final wstring NetworkAccountId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountEventArgs)this.asInterface(uuid("3853c880-77de-4c04-bead-a123b08c9f59"))).get_NetworkAccountId(&_ret));
		return hstring(_ret).d_str;
	}
}

interface MobileBroadbandAccountUpdatedEventArgs : Windows.Networking.NetworkOperators.IMobileBroadbandAccountUpdatedEventArgs
{
extern(Windows):
	final wstring NetworkAccountId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountUpdatedEventArgs)this.asInterface(uuid("7bc31d88-a6bd-49e1-80ab-6b91354a57d4"))).get_NetworkAccountId(&_ret));
		return hstring(_ret).d_str;
	}
	final bool HasDeviceInformationChanged()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountUpdatedEventArgs)this.asInterface(uuid("7bc31d88-a6bd-49e1-80ab-6b91354a57d4"))).get_HasDeviceInformationChanged(&_ret));
		return _ret;
	}
	final bool HasNetworkChanged()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountUpdatedEventArgs)this.asInterface(uuid("7bc31d88-a6bd-49e1-80ab-6b91354a57d4"))).get_HasNetworkChanged(&_ret));
		return _ret;
	}
}

interface MobileBroadbandAccountWatcher : Windows.Networking.NetworkOperators.IMobileBroadbandAccountWatcher
{
extern(Windows):
	final EventRegistrationToken OnAccountAdded(void delegate(Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, Windows.Networking.NetworkOperators.MobileBroadbandAccountEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountWatcher)this.asInterface(uuid("6bf3335e-23b5-449f-928d-5e0d3e04471d"))).add_AccountAdded(event!(Windows.Foundation.TypedEventHandler!(Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, Windows.Networking.NetworkOperators.MobileBroadbandAccountEventArgs), Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, Windows.Networking.NetworkOperators.MobileBroadbandAccountEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAccountAdded(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountWatcher)this.asInterface(uuid("6bf3335e-23b5-449f-928d-5e0d3e04471d"))).remove_AccountAdded(cookie));
	}
	final EventRegistrationToken OnAccountUpdated(void delegate(Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, Windows.Networking.NetworkOperators.MobileBroadbandAccountUpdatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountWatcher)this.asInterface(uuid("6bf3335e-23b5-449f-928d-5e0d3e04471d"))).add_AccountUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, Windows.Networking.NetworkOperators.MobileBroadbandAccountUpdatedEventArgs), Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, Windows.Networking.NetworkOperators.MobileBroadbandAccountUpdatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAccountUpdated(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountWatcher)this.asInterface(uuid("6bf3335e-23b5-449f-928d-5e0d3e04471d"))).remove_AccountUpdated(cookie));
	}
	final EventRegistrationToken OnAccountRemoved(void delegate(Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, Windows.Networking.NetworkOperators.MobileBroadbandAccountEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountWatcher)this.asInterface(uuid("6bf3335e-23b5-449f-928d-5e0d3e04471d"))).add_AccountRemoved(event!(Windows.Foundation.TypedEventHandler!(Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, Windows.Networking.NetworkOperators.MobileBroadbandAccountEventArgs), Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, Windows.Networking.NetworkOperators.MobileBroadbandAccountEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAccountRemoved(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountWatcher)this.asInterface(uuid("6bf3335e-23b5-449f-928d-5e0d3e04471d"))).remove_AccountRemoved(cookie));
	}
	final EventRegistrationToken OnEnumerationCompleted(void delegate(Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountWatcher)this.asInterface(uuid("6bf3335e-23b5-449f-928d-5e0d3e04471d"))).add_EnumerationCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, IInspectable), Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeEnumerationCompleted(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountWatcher)this.asInterface(uuid("6bf3335e-23b5-449f-928d-5e0d3e04471d"))).remove_EnumerationCompleted(cookie));
	}
	final EventRegistrationToken OnStopped(void delegate(Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountWatcher)this.asInterface(uuid("6bf3335e-23b5-449f-928d-5e0d3e04471d"))).add_Stopped(event!(Windows.Foundation.TypedEventHandler!(Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, IInspectable), Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeStopped(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountWatcher)this.asInterface(uuid("6bf3335e-23b5-449f-928d-5e0d3e04471d"))).remove_Stopped(cookie));
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcherStatus Status()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcherStatus _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountWatcher)this.asInterface(uuid("6bf3335e-23b5-449f-928d-5e0d3e04471d"))).get_Status(&_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountWatcher)this.asInterface(uuid("6bf3335e-23b5-449f-928d-5e0d3e04471d"))).abi_Start());
	}
	final void Stop()
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandAccountWatcher)this.asInterface(uuid("6bf3335e-23b5-449f-928d-5e0d3e04471d"))).abi_Stop());
	}
	static MobileBroadbandAccountWatcher New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MobileBroadbandAccountWatcher).abi_ActivateInstance(&ret));
		return cast(MobileBroadbandAccountWatcher) ret;
	}
}

interface MobileBroadbandDeviceInformation : Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation, Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation2, Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation3
{
extern(Windows):
	final Windows.Networking.NetworkOperators.NetworkDeviceStatus NetworkDeviceStatus()
	{
		Windows.Networking.NetworkOperators.NetworkDeviceStatus _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation)this.asInterface(uuid("e6d08168-e381-4c6e-9be8-fe156969a446"))).get_NetworkDeviceStatus(&_ret));
		return _ret;
	}
	final wstring Manufacturer()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation)this.asInterface(uuid("e6d08168-e381-4c6e-9be8-fe156969a446"))).get_Manufacturer(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Model()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation)this.asInterface(uuid("e6d08168-e381-4c6e-9be8-fe156969a446"))).get_Model(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring FirmwareInformation()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation)this.asInterface(uuid("e6d08168-e381-4c6e-9be8-fe156969a446"))).get_FirmwareInformation(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Devices.Sms.CellularClass CellularClass()
	{
		Windows.Devices.Sms.CellularClass _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation)this.asInterface(uuid("e6d08168-e381-4c6e-9be8-fe156969a446"))).get_CellularClass(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.DataClasses DataClasses()
	{
		Windows.Networking.NetworkOperators.DataClasses _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation)this.asInterface(uuid("e6d08168-e381-4c6e-9be8-fe156969a446"))).get_DataClasses(&_ret));
		return _ret;
	}
	final wstring CustomDataClass()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation)this.asInterface(uuid("e6d08168-e381-4c6e-9be8-fe156969a446"))).get_CustomDataClass(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring MobileEquipmentId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation)this.asInterface(uuid("e6d08168-e381-4c6e-9be8-fe156969a446"))).get_MobileEquipmentId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) TelephoneNumbers()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation)this.asInterface(uuid("e6d08168-e381-4c6e-9be8-fe156969a446"))).get_TelephoneNumbers(&_ret));
		return _ret;
	}
	final wstring SubscriberId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation)this.asInterface(uuid("e6d08168-e381-4c6e-9be8-fe156969a446"))).get_SubscriberId(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring SimIccId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation)this.asInterface(uuid("e6d08168-e381-4c6e-9be8-fe156969a446"))).get_SimIccId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandDeviceType DeviceType()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandDeviceType _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation)this.asInterface(uuid("e6d08168-e381-4c6e-9be8-fe156969a446"))).get_DeviceType(&_ret));
		return _ret;
	}
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation)this.asInterface(uuid("e6d08168-e381-4c6e-9be8-fe156969a446"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandRadioState CurrentRadioState()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandRadioState _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation)this.asInterface(uuid("e6d08168-e381-4c6e-9be8-fe156969a446"))).get_CurrentRadioState(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandPinManager PinManager()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandPinManager _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation2)this.asInterface(uuid("2e467af1-f932-4737-a722-03ba72370cb8"))).get_PinManager(&_ret));
		return _ret;
	}
	final wstring Revision()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation2)this.asInterface(uuid("2e467af1-f932-4737-a722-03ba72370cb8"))).get_Revision(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring SerialNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation2)this.asInterface(uuid("2e467af1-f932-4737-a722-03ba72370cb8"))).get_SerialNumber(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring SimSpn()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation3)this.asInterface(uuid("e08bb4bd-5d30-4b5a-92cc-d54df881d49e"))).get_SimSpn(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring SimPnn()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation3)this.asInterface(uuid("e08bb4bd-5d30-4b5a-92cc-d54df881d49e"))).get_SimPnn(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring SimGid1()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation3)this.asInterface(uuid("e08bb4bd-5d30-4b5a-92cc-d54df881d49e"))).get_SimGid1(&_ret));
		return hstring(_ret).d_str;
	}
}

interface MobileBroadbandDeviceService : Windows.Networking.NetworkOperators.IMobileBroadbandDeviceService
{
extern(Windows):
	final GUID DeviceServiceId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceService)this.asInterface(uuid("22be1a52-bd80-40ac-8e1f-2e07836a3dbd"))).get_DeviceServiceId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(UINT32) SupportedCommands()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceService)this.asInterface(uuid("22be1a52-bd80-40ac-8e1f-2e07836a3dbd"))).get_SupportedCommands(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataSession OpenDataSession()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataSession _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceService)this.asInterface(uuid("22be1a52-bd80-40ac-8e1f-2e07836a3dbd"))).abi_OpenDataSession(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandSession OpenCommandSession()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandSession _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceService)this.asInterface(uuid("22be1a52-bd80-40ac-8e1f-2e07836a3dbd"))).abi_OpenCommandSession(&_ret));
		return _ret;
	}
}

interface MobileBroadbandDeviceServiceCommandResult : Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceCommandResult
{
extern(Windows):
	final UINT32 StatusCode()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceCommandResult)this.asInterface(uuid("b0f46abb-94d6-44b9-a538-f0810b645389"))).get_StatusCode(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer ResponseData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceCommandResult)this.asInterface(uuid("b0f46abb-94d6-44b9-a538-f0810b645389"))).get_ResponseData(&_ret));
		return _ret;
	}
}

interface MobileBroadbandDeviceServiceCommandSession : Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceCommandSession
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandResult) SendQueryCommandAsync(UINT32 commandId, Windows.Storage.Streams.IBuffer data)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandResult) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceCommandSession)this.asInterface(uuid("fc098a45-913b-4914-b6c3-ae6304593e75"))).abi_SendQueryCommandAsync(commandId, data, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandResult) SendSetCommandAsync(UINT32 commandId, Windows.Storage.Streams.IBuffer data)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandResult) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceCommandSession)this.asInterface(uuid("fc098a45-913b-4914-b6c3-ae6304593e75"))).abi_SendSetCommandAsync(commandId, data, &_ret));
		return _ret;
	}
	final void CloseSession()
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceCommandSession)this.asInterface(uuid("fc098a45-913b-4914-b6c3-ae6304593e75"))).abi_CloseSession());
	}
}

interface MobileBroadbandDeviceServiceDataReceivedEventArgs : Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceDataReceivedEventArgs
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer ReceivedData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceDataReceivedEventArgs)this.asInterface(uuid("b6aa13de-1380-40e3-8618-73cbca48138c"))).get_ReceivedData(&_ret));
		return _ret;
	}
}

interface MobileBroadbandDeviceServiceDataSession : Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceDataSession
{
extern(Windows):
	final Windows.Foundation.IAsyncAction WriteDataAsync(Windows.Storage.Streams.IBuffer value)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceDataSession)this.asInterface(uuid("dad62333-8bcf-4289-8a37-045c2169486a"))).abi_WriteDataAsync(value, &_ret));
		return _ret;
	}
	final void CloseSession()
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceDataSession)this.asInterface(uuid("dad62333-8bcf-4289-8a37-045c2169486a"))).abi_CloseSession());
	}
	final EventRegistrationToken OnDataReceived(void delegate(Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataSession, Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceDataSession)this.asInterface(uuid("dad62333-8bcf-4289-8a37-045c2169486a"))).add_DataReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataSession, Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataReceivedEventArgs), Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataSession, Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDataReceived(EventRegistrationToken eventCookie)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceDataSession)this.asInterface(uuid("dad62333-8bcf-4289-8a37-045c2169486a"))).remove_DataReceived(eventCookie));
	}
}

interface MobileBroadbandDeviceServiceInformation : Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceInformation
{
extern(Windows):
	final GUID DeviceServiceId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceInformation)this.asInterface(uuid("53d69b5b-c4ed-45f0-803a-d9417a6d9846"))).get_DeviceServiceId(&_ret));
		return _ret;
	}
	final bool IsDataReadSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceInformation)this.asInterface(uuid("53d69b5b-c4ed-45f0-803a-d9417a6d9846"))).get_IsDataReadSupported(&_ret));
		return _ret;
	}
	final bool IsDataWriteSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceInformation)this.asInterface(uuid("53d69b5b-c4ed-45f0-803a-d9417a6d9846"))).get_IsDataWriteSupported(&_ret));
		return _ret;
	}
}

interface MobileBroadbandDeviceServiceTriggerDetails : Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceTriggerDetails
{
extern(Windows):
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceTriggerDetails)this.asInterface(uuid("4a055b70-b9ae-4458-9241-a6a5fbf18a0c"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final GUID DeviceServiceId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceTriggerDetails)this.asInterface(uuid("4a055b70-b9ae-4458-9241-a6a5fbf18a0c"))).get_DeviceServiceId(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer ReceivedData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceTriggerDetails)this.asInterface(uuid("4a055b70-b9ae-4458-9241-a6a5fbf18a0c"))).get_ReceivedData(&_ret));
		return _ret;
	}
}

interface MobileBroadbandModem : Windows.Networking.NetworkOperators.IMobileBroadbandModem
{
extern(Windows):
	final Windows.Networking.NetworkOperators.MobileBroadbandAccount CurrentAccount()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandAccount _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandModem)this.asInterface(uuid("d0356912-e9f9-4f67-a03d-43189a316bf1"))).get_CurrentAccount(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandDeviceInformation DeviceInformation()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandDeviceInformation _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandModem)this.asInterface(uuid("d0356912-e9f9-4f67-a03d-43189a316bf1"))).get_DeviceInformation(&_ret));
		return _ret;
	}
	final UINT32 MaxDeviceServiceCommandSizeInBytes()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandModem)this.asInterface(uuid("d0356912-e9f9-4f67-a03d-43189a316bf1"))).get_MaxDeviceServiceCommandSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 MaxDeviceServiceDataSizeInBytes()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandModem)this.asInterface(uuid("d0356912-e9f9-4f67-a03d-43189a316bf1"))).get_MaxDeviceServiceDataSizeInBytes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceInformation) DeviceServices()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceInformation) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandModem)this.asInterface(uuid("d0356912-e9f9-4f67-a03d-43189a316bf1"))).get_DeviceServices(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandDeviceService GetDeviceService(GUID deviceServiceId)
	{
		Windows.Networking.NetworkOperators.MobileBroadbandDeviceService _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandModem)this.asInterface(uuid("d0356912-e9f9-4f67-a03d-43189a316bf1"))).abi_GetDeviceService(deviceServiceId, &_ret));
		return _ret;
	}
	final bool IsResetSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandModem)this.asInterface(uuid("d0356912-e9f9-4f67-a03d-43189a316bf1"))).get_IsResetSupported(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ResetAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandModem)this.asInterface(uuid("d0356912-e9f9-4f67-a03d-43189a316bf1"))).abi_ResetAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandModemConfiguration) GetCurrentConfigurationAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandModemConfiguration) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandModem)this.asInterface(uuid("d0356912-e9f9-4f67-a03d-43189a316bf1"))).abi_GetCurrentConfigurationAsync(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandNetwork CurrentNetwork()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandNetwork _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandModem)this.asInterface(uuid("d0356912-e9f9-4f67-a03d-43189a316bf1"))).get_CurrentNetwork(&_ret));
		return _ret;
	}

	private static Windows.Networking.NetworkOperators.IMobileBroadbandModemStatics _staticInstance;
	public static Windows.Networking.NetworkOperators.IMobileBroadbandModemStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Networking.NetworkOperators.IMobileBroadbandModemStatics);
		return _staticInstance;
	}
	static wstring GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return hstring(_ret).d_str;
	}
	static Windows.Networking.NetworkOperators.MobileBroadbandModem FromId(wstring deviceId)
	{
		Windows.Networking.NetworkOperators.MobileBroadbandModem _ret;
		Debug.OK(staticInstance.abi_FromId(hstring(deviceId).handle, &_ret));
		return _ret;
	}
	static Windows.Networking.NetworkOperators.MobileBroadbandModem GetDefault()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandModem _ret;
		Debug.OK(staticInstance.abi_GetDefault(&_ret));
		return _ret;
	}
}

interface MobileBroadbandModemConfiguration : Windows.Networking.NetworkOperators.IMobileBroadbandModemConfiguration
{
extern(Windows):
	final Windows.Networking.NetworkOperators.MobileBroadbandUicc Uicc()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandUicc _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandModemConfiguration)this.asInterface(uuid("fce035a3-d6cd-4320-b982-be9d3ec7890f"))).get_Uicc(&_ret));
		return _ret;
	}
	final wstring HomeProviderId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandModemConfiguration)this.asInterface(uuid("fce035a3-d6cd-4320-b982-be9d3ec7890f"))).get_HomeProviderId(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring HomeProviderName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandModemConfiguration)this.asInterface(uuid("fce035a3-d6cd-4320-b982-be9d3ec7890f"))).get_HomeProviderName(&_ret));
		return hstring(_ret).d_str;
	}
}

interface MobileBroadbandNetwork : Windows.Networking.NetworkOperators.IMobileBroadbandNetwork, Windows.Networking.NetworkOperators.IMobileBroadbandNetwork2
{
extern(Windows):
	final Windows.Networking.Connectivity.NetworkAdapter NetworkAdapter()
	{
		Windows.Networking.Connectivity.NetworkAdapter _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandNetwork)this.asInterface(uuid("cb63928c-0309-4cb6-a8c1-6a5a3c8e1ff6"))).get_NetworkAdapter(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.NetworkRegistrationState NetworkRegistrationState()
	{
		Windows.Networking.NetworkOperators.NetworkRegistrationState _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandNetwork)this.asInterface(uuid("cb63928c-0309-4cb6-a8c1-6a5a3c8e1ff6"))).get_NetworkRegistrationState(&_ret));
		return _ret;
	}
	final UINT32 RegistrationNetworkError()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandNetwork)this.asInterface(uuid("cb63928c-0309-4cb6-a8c1-6a5a3c8e1ff6"))).get_RegistrationNetworkError(&_ret));
		return _ret;
	}
	final UINT32 PacketAttachNetworkError()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandNetwork)this.asInterface(uuid("cb63928c-0309-4cb6-a8c1-6a5a3c8e1ff6"))).get_PacketAttachNetworkError(&_ret));
		return _ret;
	}
	final UINT32 ActivationNetworkError()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandNetwork)this.asInterface(uuid("cb63928c-0309-4cb6-a8c1-6a5a3c8e1ff6"))).get_ActivationNetworkError(&_ret));
		return _ret;
	}
	final wstring AccessPointName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandNetwork)this.asInterface(uuid("cb63928c-0309-4cb6-a8c1-6a5a3c8e1ff6"))).get_AccessPointName(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Networking.NetworkOperators.DataClasses RegisteredDataClass()
	{
		Windows.Networking.NetworkOperators.DataClasses _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandNetwork)this.asInterface(uuid("cb63928c-0309-4cb6-a8c1-6a5a3c8e1ff6"))).get_RegisteredDataClass(&_ret));
		return _ret;
	}
	final wstring RegisteredProviderId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandNetwork)this.asInterface(uuid("cb63928c-0309-4cb6-a8c1-6a5a3c8e1ff6"))).get_RegisteredProviderId(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring RegisteredProviderName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandNetwork)this.asInterface(uuid("cb63928c-0309-4cb6-a8c1-6a5a3c8e1ff6"))).get_RegisteredProviderName(&_ret));
		return hstring(_ret).d_str;
	}
	final void ShowConnectionUI()
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandNetwork)this.asInterface(uuid("cb63928c-0309-4cb6-a8c1-6a5a3c8e1ff6"))).abi_ShowConnectionUI());
	}
	final Windows.Foundation.IAsyncOperation!(bool) GetVoiceCallSupportAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandNetwork2)this.asInterface(uuid("5a55db22-62f7-4bdd-ba1d-477441960ba0"))).abi_GetVoiceCallSupportAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandUiccApp) RegistrationUiccApps()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandUiccApp) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandNetwork2)this.asInterface(uuid("5a55db22-62f7-4bdd-ba1d-477441960ba0"))).get_RegistrationUiccApps(&_ret));
		return _ret;
	}
}

interface MobileBroadbandNetworkRegistrationStateChange : Windows.Networking.NetworkOperators.IMobileBroadbandNetworkRegistrationStateChange
{
extern(Windows):
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandNetworkRegistrationStateChange)this.asInterface(uuid("beaf94e1-960f-49b4-a08d-7d85e968c7ec"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandNetwork Network()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandNetwork _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandNetworkRegistrationStateChange)this.asInterface(uuid("beaf94e1-960f-49b4-a08d-7d85e968c7ec"))).get_Network(&_ret));
		return _ret;
	}
}

interface MobileBroadbandNetworkRegistrationStateChangeTriggerDetails : Windows.Networking.NetworkOperators.IMobileBroadbandNetworkRegistrationStateChangeTriggerDetails
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandNetworkRegistrationStateChange) NetworkRegistrationStateChanges()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandNetworkRegistrationStateChange) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandNetworkRegistrationStateChangeTriggerDetails)this.asInterface(uuid("89135cff-28b8-46aa-b137-1c4b0f21edfe"))).get_NetworkRegistrationStateChanges(&_ret));
		return _ret;
	}
}

interface MobileBroadbandPin : Windows.Networking.NetworkOperators.IMobileBroadbandPin
{
extern(Windows):
	final Windows.Networking.NetworkOperators.MobileBroadbandPinType Type()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandPinType _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPin)this.asInterface(uuid("e661d709-e779-45bf-8281-75323df9e321"))).get_Type(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandPinLockState LockState()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandPinLockState _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPin)this.asInterface(uuid("e661d709-e779-45bf-8281-75323df9e321"))).get_LockState(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandPinFormat Format()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandPinFormat _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPin)this.asInterface(uuid("e661d709-e779-45bf-8281-75323df9e321"))).get_Format(&_ret));
		return _ret;
	}
	final bool Enabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPin)this.asInterface(uuid("e661d709-e779-45bf-8281-75323df9e321"))).get_Enabled(&_ret));
		return _ret;
	}
	final UINT32 MaxLength()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPin)this.asInterface(uuid("e661d709-e779-45bf-8281-75323df9e321"))).get_MaxLength(&_ret));
		return _ret;
	}
	final UINT32 MinLength()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPin)this.asInterface(uuid("e661d709-e779-45bf-8281-75323df9e321"))).get_MinLength(&_ret));
		return _ret;
	}
	final UINT32 AttemptsRemaining()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPin)this.asInterface(uuid("e661d709-e779-45bf-8281-75323df9e321"))).get_AttemptsRemaining(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult) EnableAsync(wstring currentPin)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPin)this.asInterface(uuid("e661d709-e779-45bf-8281-75323df9e321"))).abi_EnableAsync(hstring(currentPin).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult) DisableAsync(wstring currentPin)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPin)this.asInterface(uuid("e661d709-e779-45bf-8281-75323df9e321"))).abi_DisableAsync(hstring(currentPin).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult) EnterAsync(wstring currentPin)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPin)this.asInterface(uuid("e661d709-e779-45bf-8281-75323df9e321"))).abi_EnterAsync(hstring(currentPin).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult) ChangeAsync(wstring currentPin, wstring newPin)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPin)this.asInterface(uuid("e661d709-e779-45bf-8281-75323df9e321"))).abi_ChangeAsync(hstring(currentPin).handle, hstring(newPin).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult) UnblockAsync(wstring pinUnblockKey, wstring newPin)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPin)this.asInterface(uuid("e661d709-e779-45bf-8281-75323df9e321"))).abi_UnblockAsync(hstring(pinUnblockKey).handle, hstring(newPin).handle, &_ret));
		return _ret;
	}
}

interface MobileBroadbandPinLockStateChange : Windows.Networking.NetworkOperators.IMobileBroadbandPinLockStateChange
{
extern(Windows):
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPinLockStateChange)this.asInterface(uuid("be16673e-1f04-4f95-8b90-e7f559dde7e5"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandPinType PinType()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandPinType _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPinLockStateChange)this.asInterface(uuid("be16673e-1f04-4f95-8b90-e7f559dde7e5"))).get_PinType(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandPinLockState PinLockState()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandPinLockState _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPinLockStateChange)this.asInterface(uuid("be16673e-1f04-4f95-8b90-e7f559dde7e5"))).get_PinLockState(&_ret));
		return _ret;
	}
}

interface MobileBroadbandPinLockStateChangeTriggerDetails : Windows.Networking.NetworkOperators.IMobileBroadbandPinLockStateChangeTriggerDetails
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandPinLockStateChange) PinLockStateChanges()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandPinLockStateChange) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPinLockStateChangeTriggerDetails)this.asInterface(uuid("d338c091-3e91-4d38-9036-aee83a6e79ad"))).get_PinLockStateChanges(&_ret));
		return _ret;
	}
}

interface MobileBroadbandPinManager : Windows.Networking.NetworkOperators.IMobileBroadbandPinManager
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandPinType) SupportedPins()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandPinType) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPinManager)this.asInterface(uuid("83567edd-6e1f-4b9b-a413-2b1f50cc36df"))).get_SupportedPins(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandPin GetPin(Windows.Networking.NetworkOperators.MobileBroadbandPinType pinType)
	{
		Windows.Networking.NetworkOperators.MobileBroadbandPin _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPinManager)this.asInterface(uuid("83567edd-6e1f-4b9b-a413-2b1f50cc36df"))).abi_GetPin(pinType, &_ret));
		return _ret;
	}
}

interface MobileBroadbandPinOperationResult : Windows.Networking.NetworkOperators.IMobileBroadbandPinOperationResult
{
extern(Windows):
	final bool IsSuccessful()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPinOperationResult)this.asInterface(uuid("11dddc32-31e7-49f5-b663-123d3bef0362"))).get_IsSuccessful(&_ret));
		return _ret;
	}
	final UINT32 AttemptsRemaining()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandPinOperationResult)this.asInterface(uuid("11dddc32-31e7-49f5-b663-123d3bef0362"))).get_AttemptsRemaining(&_ret));
		return _ret;
	}
}

interface MobileBroadbandRadioStateChange : Windows.Networking.NetworkOperators.IMobileBroadbandRadioStateChange
{
extern(Windows):
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandRadioStateChange)this.asInterface(uuid("b054a561-9833-4aed-9717-4348b21a24b3"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Networking.NetworkOperators.MobileBroadbandRadioState RadioState()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandRadioState _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandRadioStateChange)this.asInterface(uuid("b054a561-9833-4aed-9717-4348b21a24b3"))).get_RadioState(&_ret));
		return _ret;
	}
}

interface MobileBroadbandRadioStateChangeTriggerDetails : Windows.Networking.NetworkOperators.IMobileBroadbandRadioStateChangeTriggerDetails
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandRadioStateChange) RadioStateChanges()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandRadioStateChange) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandRadioStateChangeTriggerDetails)this.asInterface(uuid("71301ace-093c-42c6-b0db-ad1f75a65445"))).get_RadioStateChanges(&_ret));
		return _ret;
	}
}

interface MobileBroadbandUicc : Windows.Networking.NetworkOperators.IMobileBroadbandUicc
{
extern(Windows):
	final wstring SimIccId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandUicc)this.asInterface(uuid("e634f691-525a-4ce2-8fce-aa4162579154"))).get_SimIccId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandUiccAppsResult) GetUiccAppsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandUiccAppsResult) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandUicc)this.asInterface(uuid("e634f691-525a-4ce2-8fce-aa4162579154"))).abi_GetUiccAppsAsync(&_ret));
		return _ret;
	}
}

interface MobileBroadbandUiccApp : Windows.Networking.NetworkOperators.IMobileBroadbandUiccApp
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer Id()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandUiccApp)this.asInterface(uuid("4d170556-98a1-43dd-b2ec-50c90cf248df"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.UiccAppKind Kind()
	{
		Windows.Networking.NetworkOperators.UiccAppKind _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandUiccApp)this.asInterface(uuid("4d170556-98a1-43dd-b2ec-50c90cf248df"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandUiccAppRecordDetailsResult) GetRecordDetailsAsync(Windows.Foundation.Collections.IIterable!(UINT32) uiccFilePath)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandUiccAppRecordDetailsResult) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandUiccApp)this.asInterface(uuid("4d170556-98a1-43dd-b2ec-50c90cf248df"))).abi_GetRecordDetailsAsync(uiccFilePath, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandUiccAppReadRecordResult) ReadRecordAsync(Windows.Foundation.Collections.IIterable!(UINT32) uiccFilePath, INT32 recordIndex)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.MobileBroadbandUiccAppReadRecordResult) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandUiccApp)this.asInterface(uuid("4d170556-98a1-43dd-b2ec-50c90cf248df"))).abi_ReadRecordAsync(uiccFilePath, recordIndex, &_ret));
		return _ret;
	}
}

interface MobileBroadbandUiccAppReadRecordResult : Windows.Networking.NetworkOperators.IMobileBroadbandUiccAppReadRecordResult
{
extern(Windows):
	final Windows.Networking.NetworkOperators.MobileBroadbandUiccAppOperationStatus Status()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandUiccAppOperationStatus _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandUiccAppReadRecordResult)this.asInterface(uuid("64c95285-358e-47c5-8249-695f383b2bdb"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Data()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandUiccAppReadRecordResult)this.asInterface(uuid("64c95285-358e-47c5-8249-695f383b2bdb"))).get_Data(&_ret));
		return _ret;
	}
}

interface MobileBroadbandUiccAppRecordDetailsResult : Windows.Networking.NetworkOperators.IMobileBroadbandUiccAppRecordDetailsResult
{
extern(Windows):
	final Windows.Networking.NetworkOperators.MobileBroadbandUiccAppOperationStatus Status()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandUiccAppOperationStatus _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandUiccAppRecordDetailsResult)this.asInterface(uuid("d919682f-be14-4934-981d-2f57b9ed83e6"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.UiccAppRecordKind Kind()
	{
		Windows.Networking.NetworkOperators.UiccAppRecordKind _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandUiccAppRecordDetailsResult)this.asInterface(uuid("d919682f-be14-4934-981d-2f57b9ed83e6"))).get_Kind(&_ret));
		return _ret;
	}
	final INT32 RecordCount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandUiccAppRecordDetailsResult)this.asInterface(uuid("d919682f-be14-4934-981d-2f57b9ed83e6"))).get_RecordCount(&_ret));
		return _ret;
	}
	final INT32 RecordSize()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandUiccAppRecordDetailsResult)this.asInterface(uuid("d919682f-be14-4934-981d-2f57b9ed83e6"))).get_RecordSize(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.UiccAccessCondition ReadAccessCondition()
	{
		Windows.Networking.NetworkOperators.UiccAccessCondition _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandUiccAppRecordDetailsResult)this.asInterface(uuid("d919682f-be14-4934-981d-2f57b9ed83e6"))).get_ReadAccessCondition(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.UiccAccessCondition WriteAccessCondition()
	{
		Windows.Networking.NetworkOperators.UiccAccessCondition _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandUiccAppRecordDetailsResult)this.asInterface(uuid("d919682f-be14-4934-981d-2f57b9ed83e6"))).get_WriteAccessCondition(&_ret));
		return _ret;
	}
}

interface MobileBroadbandUiccAppsResult : Windows.Networking.NetworkOperators.IMobileBroadbandUiccAppsResult
{
extern(Windows):
	final Windows.Networking.NetworkOperators.MobileBroadbandUiccAppOperationStatus Status()
	{
		Windows.Networking.NetworkOperators.MobileBroadbandUiccAppOperationStatus _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandUiccAppsResult)this.asInterface(uuid("744930eb-8157-4a41-8494-6bf54c9b1d2b"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandUiccApp) UiccApps()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandUiccApp) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IMobileBroadbandUiccAppsResult)this.asInterface(uuid("744930eb-8157-4a41-8494-6bf54c9b1d2b"))).get_UiccApps(&_ret));
		return _ret;
	}
}

interface NetworkOperatorNotificationEventDetails : Windows.Networking.NetworkOperators.INetworkOperatorNotificationEventDetails, Windows.Networking.NetworkOperators.INetworkOperatorTetheringEntitlementCheck
{
extern(Windows):
	final Windows.Networking.NetworkOperators.NetworkOperatorEventMessageType NotificationType()
	{
		Windows.Networking.NetworkOperators.NetworkOperatorEventMessageType _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorNotificationEventDetails)this.asInterface(uuid("bc68a9d1-82e1-4488-9f2c-1276c2468fac"))).get_NotificationType(&_ret));
		return _ret;
	}
	final wstring NetworkAccountId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorNotificationEventDetails)this.asInterface(uuid("bc68a9d1-82e1-4488-9f2c-1276c2468fac"))).get_NetworkAccountId(&_ret));
		return hstring(_ret).d_str;
	}
	final ubyte EncodingType()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorNotificationEventDetails)this.asInterface(uuid("bc68a9d1-82e1-4488-9f2c-1276c2468fac"))).get_EncodingType(&_ret));
		return _ret;
	}
	final wstring Message()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorNotificationEventDetails)this.asInterface(uuid("bc68a9d1-82e1-4488-9f2c-1276c2468fac"))).get_Message(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring RuleId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorNotificationEventDetails)this.asInterface(uuid("bc68a9d1-82e1-4488-9f2c-1276c2468fac"))).get_RuleId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Devices.Sms.ISmsMessage SmsMessage()
	{
		Windows.Devices.Sms.ISmsMessage _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorNotificationEventDetails)this.asInterface(uuid("bc68a9d1-82e1-4488-9f2c-1276c2468fac"))).get_SmsMessage(&_ret));
		return _ret;
	}
	final void AuthorizeTethering(bool allow, wstring entitlementFailureReason)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringEntitlementCheck)this.asInterface(uuid("0108916d-9e9a-4af6-8da3-60493b19c204"))).abi_AuthorizeTethering(allow, hstring(entitlementFailureReason).handle));
	}
}

interface NetworkOperatorTetheringAccessPointConfiguration : Windows.Networking.NetworkOperators.INetworkOperatorTetheringAccessPointConfiguration
{
extern(Windows):
	final wstring Ssid()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringAccessPointConfiguration)this.asInterface(uuid("0bcc0284-412e-403d-acc6-b757e34774a4"))).get_Ssid(&_ret));
		return hstring(_ret).d_str;
	}
	final void Ssid(wstring value)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringAccessPointConfiguration)this.asInterface(uuid("0bcc0284-412e-403d-acc6-b757e34774a4"))).set_Ssid(hstring(value).handle));
	}
	final wstring Passphrase()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringAccessPointConfiguration)this.asInterface(uuid("0bcc0284-412e-403d-acc6-b757e34774a4"))).get_Passphrase(&_ret));
		return hstring(_ret).d_str;
	}
	final void Passphrase(wstring value)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringAccessPointConfiguration)this.asInterface(uuid("0bcc0284-412e-403d-acc6-b757e34774a4"))).set_Passphrase(hstring(value).handle));
	}
	static NetworkOperatorTetheringAccessPointConfiguration New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(NetworkOperatorTetheringAccessPointConfiguration).abi_ActivateInstance(&ret));
		return cast(NetworkOperatorTetheringAccessPointConfiguration) ret;
	}
}

interface NetworkOperatorTetheringClient : Windows.Networking.NetworkOperators.INetworkOperatorTetheringClient
{
extern(Windows):
	final wstring MacAddress()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringClient)this.asInterface(uuid("709d254c-595f-4847-bb30-646935542918"))).get_MacAddress(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) HostNames()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringClient)this.asInterface(uuid("709d254c-595f-4847-bb30-646935542918"))).get_HostNames(&_ret));
		return _ret;
	}
}

interface NetworkOperatorTetheringManager : Windows.Networking.NetworkOperators.INetworkOperatorTetheringManager, Windows.Networking.NetworkOperators.INetworkOperatorTetheringClientManager
{
extern(Windows):
	final UINT32 MaxClientCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringManager)this.asInterface(uuid("d45a8da0-0e86-4d98-8ba4-dd70d4b764d3"))).get_MaxClientCount(&_ret));
		return _ret;
	}
	final UINT32 ClientCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringManager)this.asInterface(uuid("d45a8da0-0e86-4d98-8ba4-dd70d4b764d3"))).get_ClientCount(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.TetheringOperationalState TetheringOperationalState()
	{
		Windows.Networking.NetworkOperators.TetheringOperationalState _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringManager)this.asInterface(uuid("d45a8da0-0e86-4d98-8ba4-dd70d4b764d3"))).get_TetheringOperationalState(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.NetworkOperatorTetheringAccessPointConfiguration GetCurrentAccessPointConfiguration()
	{
		Windows.Networking.NetworkOperators.NetworkOperatorTetheringAccessPointConfiguration _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringManager)this.asInterface(uuid("d45a8da0-0e86-4d98-8ba4-dd70d4b764d3"))).abi_GetCurrentAccessPointConfiguration(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ConfigureAccessPointAsync(Windows.Networking.NetworkOperators.NetworkOperatorTetheringAccessPointConfiguration configuration)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringManager)this.asInterface(uuid("d45a8da0-0e86-4d98-8ba4-dd70d4b764d3"))).abi_ConfigureAccessPointAsync(configuration, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.NetworkOperatorTetheringOperationResult) StartTetheringAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.NetworkOperatorTetheringOperationResult) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringManager)this.asInterface(uuid("d45a8da0-0e86-4d98-8ba4-dd70d4b764d3"))).abi_StartTetheringAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.NetworkOperatorTetheringOperationResult) StopTetheringAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.NetworkOperatorTetheringOperationResult) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringManager)this.asInterface(uuid("d45a8da0-0e86-4d98-8ba4-dd70d4b764d3"))).abi_StopTetheringAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.NetworkOperatorTetheringClient) GetTetheringClients()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.NetworkOperators.NetworkOperatorTetheringClient) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringClientManager)this.asInterface(uuid("91b14016-8dca-4225-bbed-eef8b8d718d7"))).abi_GetTetheringClients(&_ret));
		return _ret;
	}

	private static Windows.Networking.NetworkOperators.INetworkOperatorTetheringManagerStatics _staticInstance;
	public static Windows.Networking.NetworkOperators.INetworkOperatorTetheringManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Networking.NetworkOperators.INetworkOperatorTetheringManagerStatics);
		return _staticInstance;
	}
	static Windows.Networking.NetworkOperators.TetheringCapability GetTetheringCapability(wstring networkAccountId)
	{
		Windows.Networking.NetworkOperators.TetheringCapability _ret;
		Debug.OK(staticInstance.abi_GetTetheringCapability(hstring(networkAccountId).handle, &_ret));
		return _ret;
	}
	static Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager CreateFromNetworkAccountId(wstring networkAccountId)
	{
		Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager _ret;
		Debug.OK(staticInstance.abi_CreateFromNetworkAccountId(hstring(networkAccountId).handle, &_ret));
		return _ret;
	}
}

interface NetworkOperatorTetheringOperationResult : Windows.Networking.NetworkOperators.INetworkOperatorTetheringOperationResult
{
extern(Windows):
	final Windows.Networking.NetworkOperators.TetheringOperationStatus Status()
	{
		Windows.Networking.NetworkOperators.TetheringOperationStatus _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringOperationResult)this.asInterface(uuid("ebd203a1-01ba-476d-b4b3-bf3d12c8f80c"))).get_Status(&_ret));
		return _ret;
	}
	final wstring AdditionalErrorMessage()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.INetworkOperatorTetheringOperationResult)this.asInterface(uuid("ebd203a1-01ba-476d-b4b3-bf3d12c8f80c"))).get_AdditionalErrorMessage(&_ret));
		return hstring(_ret).d_str;
	}
}

interface ProvisionFromXmlDocumentResults : Windows.Networking.NetworkOperators.IProvisionFromXmlDocumentResults
{
extern(Windows):
	final bool AllElementsProvisioned()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IProvisionFromXmlDocumentResults)this.asInterface(uuid("217700e0-8203-11df-adb9-f4ce462d9137"))).get_AllElementsProvisioned(&_ret));
		return _ret;
	}
	final wstring ProvisionResultsXml()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IProvisionFromXmlDocumentResults)this.asInterface(uuid("217700e0-8203-11df-adb9-f4ce462d9137"))).get_ProvisionResultsXml(&_ret));
		return hstring(_ret).d_str;
	}
}

interface ProvisionedProfile : Windows.Networking.NetworkOperators.IProvisionedProfile
{
extern(Windows):
	final void UpdateCost(Windows.Networking.Connectivity.NetworkCostType value)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IProvisionedProfile)this.asInterface(uuid("217700e0-8202-11df-adb9-f4ce462d9137"))).abi_UpdateCost(value));
	}
	final void UpdateUsage(Windows.Networking.NetworkOperators.ProfileUsage value)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IProvisionedProfile)this.asInterface(uuid("217700e0-8202-11df-adb9-f4ce462d9137"))).abi_UpdateUsage(value));
	}
}

interface ProvisioningAgent : Windows.Networking.NetworkOperators.IProvisioningAgent
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.ProvisionFromXmlDocumentResults) ProvisionFromXmlDocumentAsync(wstring provisioningXmlDocument)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.ProvisionFromXmlDocumentResults) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IProvisioningAgent)this.asInterface(uuid("217700e0-8201-11df-adb9-f4ce462d9137"))).abi_ProvisionFromXmlDocumentAsync(hstring(provisioningXmlDocument).handle, &_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.ProvisionedProfile GetProvisionedProfile(Windows.Networking.NetworkOperators.ProfileMediaType mediaType, wstring profileName)
	{
		Windows.Networking.NetworkOperators.ProvisionedProfile _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IProvisioningAgent)this.asInterface(uuid("217700e0-8201-11df-adb9-f4ce462d9137"))).abi_GetProvisionedProfile(mediaType, hstring(profileName).handle, &_ret));
		return _ret;
	}

	private static Windows.Networking.NetworkOperators.IProvisioningAgentStaticMethods _staticInstance;
	public static Windows.Networking.NetworkOperators.IProvisioningAgentStaticMethods staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Networking.NetworkOperators.IProvisioningAgentStaticMethods);
		return _staticInstance;
	}
	static Windows.Networking.NetworkOperators.ProvisioningAgent CreateFromNetworkAccountId(wstring networkAccountId)
	{
		Windows.Networking.NetworkOperators.ProvisioningAgent _ret;
		Debug.OK(staticInstance.abi_CreateFromNetworkAccountId(hstring(networkAccountId).handle, &_ret));
		return _ret;
	}
	static ProvisioningAgent New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ProvisioningAgent).abi_ActivateInstance(&ret));
		return cast(ProvisioningAgent) ret;
	}
}

interface UssdMessage : Windows.Networking.NetworkOperators.IUssdMessage
{
extern(Windows):
	final ubyte DataCodingScheme()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IUssdMessage)this.asInterface(uuid("2f9acf82-2004-4d5d-bf81-2aba1b4be4a8"))).get_DataCodingScheme(&_ret));
		return _ret;
	}
	final void DataCodingScheme(ubyte value)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IUssdMessage)this.asInterface(uuid("2f9acf82-2004-4d5d-bf81-2aba1b4be4a8"))).set_DataCodingScheme(value));
	}
	final ubyte* GetPayload(UINT32* out___valueSize)
	{
		ubyte* _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IUssdMessage)this.asInterface(uuid("2f9acf82-2004-4d5d-bf81-2aba1b4be4a8"))).abi_GetPayload(out___valueSize, &_ret));
		return _ret;
	}
	final void SetPayload(UINT32 __valueSize, ubyte* value)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IUssdMessage)this.asInterface(uuid("2f9acf82-2004-4d5d-bf81-2aba1b4be4a8"))).abi_SetPayload(__valueSize, value));
	}
	final wstring PayloadAsText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IUssdMessage)this.asInterface(uuid("2f9acf82-2004-4d5d-bf81-2aba1b4be4a8"))).get_PayloadAsText(&_ret));
		return hstring(_ret).d_str;
	}
	final void PayloadAsText(wstring value)
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IUssdMessage)this.asInterface(uuid("2f9acf82-2004-4d5d-bf81-2aba1b4be4a8"))).set_PayloadAsText(hstring(value).handle));
	}
	static Windows.Networking.NetworkOperators.UssdMessage New(wstring messageText)
	{
		auto factory = factory!(Windows.Networking.NetworkOperators.IUssdMessageFactory);
		Windows.Networking.NetworkOperators.UssdMessage _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IUssdMessageFactory)factory.asInterface(uuid("2f9acf82-1003-4d5d-bf81-2aba1b4be4a8"))).abi_CreateMessage(hstring(messageText).handle, &_ret));
		return _ret;
	}
}

interface UssdReply : Windows.Networking.NetworkOperators.IUssdReply
{
extern(Windows):
	final Windows.Networking.NetworkOperators.UssdResultCode ResultCode()
	{
		Windows.Networking.NetworkOperators.UssdResultCode _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IUssdReply)this.asInterface(uuid("2f9acf82-2005-4d5d-bf81-2aba1b4be4a8"))).get_ResultCode(&_ret));
		return _ret;
	}
	final Windows.Networking.NetworkOperators.UssdMessage Message()
	{
		Windows.Networking.NetworkOperators.UssdMessage _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IUssdReply)this.asInterface(uuid("2f9acf82-2005-4d5d-bf81-2aba1b4be4a8"))).get_Message(&_ret));
		return _ret;
	}
}

interface UssdSession : Windows.Networking.NetworkOperators.IUssdSession
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.UssdReply) SendMessageAndGetReplyAsync(Windows.Networking.NetworkOperators.UssdMessage message)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.NetworkOperators.UssdReply) _ret;
		Debug.OK((cast(Windows.Networking.NetworkOperators.IUssdSession)this.asInterface(uuid("2f9acf82-2002-4d5d-bf81-2aba1b4be4a8"))).abi_SendMessageAndGetReplyAsync(message, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Networking.NetworkOperators.IUssdSession)this.asInterface(uuid("2f9acf82-2002-4d5d-bf81-2aba1b4be4a8"))).abi_Close());
	}

	private static Windows.Networking.NetworkOperators.IUssdSessionStatics _staticInstance;
	public static Windows.Networking.NetworkOperators.IUssdSessionStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Networking.NetworkOperators.IUssdSessionStatics);
		return _staticInstance;
	}
	static Windows.Networking.NetworkOperators.UssdSession CreateFromNetworkAccountId(wstring networkAccountId)
	{
		Windows.Networking.NetworkOperators.UssdSession _ret;
		Debug.OK(staticInstance.abi_CreateFromNetworkAccountId(hstring(networkAccountId).handle, &_ret));
		return _ret;
	}
	static Windows.Networking.NetworkOperators.UssdSession CreateFromNetworkInterfaceId(wstring networkInterfaceId)
	{
		Windows.Networking.NetworkOperators.UssdSession _ret;
		Debug.OK(staticInstance.abi_CreateFromNetworkInterfaceId(hstring(networkInterfaceId).handle, &_ret));
		return _ret;
	}
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