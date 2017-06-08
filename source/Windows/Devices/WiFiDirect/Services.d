module Windows.Devices.WiFiDirect.Services;

import dwinrt;

@uuid("50aabbb8-5f71-45ec-84f1-a1e4fc7879a3")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectService")
interface IWiFiDirectService : IInspectable
{
extern(Windows):
	HRESULT get_RemoteServiceInfo(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_SupportedConfigurationMethods(Windows.Foundation.Collections.IVectorView!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod)* return_value);
	HRESULT get_PreferGroupOwnerMode(bool* return_value);
	HRESULT set_PreferGroupOwnerMode(bool value);
	HRESULT get_SessionInfo(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_SessionInfo(Windows.Storage.Streams.IBuffer value);
	HRESULT get_ServiceError(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceError* return_value);
	HRESULT add_SessionDeferred(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectService, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionDeferredEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SessionDeferred(EventRegistrationToken token);
	HRESULT abi_GetProvisioningInfoAsync(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod selectedConfigurationMethod, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceProvisioningInfo)* return_result);
	HRESULT abi_ConnectAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession)* return_result);
	HRESULT abi_ConnectAsyncWithPin(HSTRING pin, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession)* return_result);
}

@uuid("a4aa1ee1-9d8f-4f4f-93ee-7ddea2e37f46")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser")
interface IWiFiDirectServiceAdvertiser : IInspectable
{
extern(Windows):
	HRESULT get_ServiceName(HSTRING* return_value);
	HRESULT get_ServiceNamePrefixes(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_ServiceInfo(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_ServiceInfo(Windows.Storage.Streams.IBuffer value);
	HRESULT get_AutoAcceptSession(bool* return_value);
	HRESULT set_AutoAcceptSession(bool value);
	HRESULT get_PreferGroupOwnerMode(bool* return_value);
	HRESULT set_PreferGroupOwnerMode(bool value);
	HRESULT get_PreferredConfigurationMethods(Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod)* return_value);
	HRESULT get_ServiceStatus(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceStatus* return_value);
	HRESULT set_ServiceStatus(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceStatus value);
	HRESULT get_CustomServiceStatusCode(UINT32* return_value);
	HRESULT set_CustomServiceStatusCode(UINT32 value);
	HRESULT get_DeferredSessionInfo(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_DeferredSessionInfo(Windows.Storage.Streams.IBuffer value);
	HRESULT get_AdvertisementStatus(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertisementStatus* return_value);
	HRESULT get_ServiceError(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceError* return_value);
	HRESULT add_SessionRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SessionRequested(EventRegistrationToken token);
	HRESULT add_AutoAcceptSessionConnected(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAutoAcceptSessionConnectedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AutoAcceptSessionConnected(EventRegistrationToken token);
	HRESULT add_AdvertisementStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_AdvertisementStatusChanged(EventRegistrationToken token);
	HRESULT abi_ConnectAsync(Windows.Devices.Enumeration.DeviceInformation deviceInfo, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession)* return_result);
	HRESULT abi_ConnectAsyncWithPin(Windows.Devices.Enumeration.DeviceInformation deviceInfo, HSTRING pin, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession)* return_result);
	HRESULT abi_Start();
	HRESULT abi_Stop();
}

@uuid("3106ac0d-b446-4f13-9f9a-8ae925feba2b")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser")
interface IWiFiDirectServiceAdvertiserFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWiFiDirectServiceAdvertiser(HSTRING serviceName, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser* return_result);
}

@uuid("dcd9e01e-83df-43e5-8f43-cbe8479e84eb")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAutoAcceptSessionConnectedEventArgs")
interface IWiFiDirectServiceAutoAcceptSessionConnectedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Session(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession* return_value);
	HRESULT get_SessionInfo(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("8bdb7cfe-97d9-45a2-8e99-db50910fb6a6")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceProvisioningInfo")
interface IWiFiDirectServiceProvisioningInfo : IInspectable
{
extern(Windows):
	HRESULT get_SelectedConfigurationMethod(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod* return_value);
	HRESULT get_IsGroupFormationNeeded(bool* return_value);
}

@uuid("d4cebac1-3fd3-4f0e-b7bd-782906f44411")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceRemotePortAddedEventArgs")
interface IWiFiDirectServiceRemotePortAddedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_EndpointPairs(Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair)* return_value);
	HRESULT get_Protocol(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceIPProtocol* return_value);
}

@uuid("81142163-e426-47cb-8640-e1b3588bf26f")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession")
interface IWiFiDirectServiceSession : IInspectable
{
extern(Windows):
	HRESULT get_ServiceName(HSTRING* return_value);
	HRESULT get_Status(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionStatus* return_value);
	HRESULT get_ErrorStatus(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionErrorStatus* return_value);
	HRESULT get_SessionId(UINT32* return_value);
	HRESULT get_AdvertisementId(UINT32* return_value);
	HRESULT get_ServiceAddress(HSTRING* return_value);
	HRESULT get_SessionAddress(HSTRING* return_value);
	HRESULT abi_GetConnectionEndpointPairs(Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair)* return_value);
	HRESULT add_SessionStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_SessionStatusChanged(EventRegistrationToken token);
	HRESULT abi_AddStreamSocketListenerAsync(Windows.Networking.Sockets.StreamSocketListener value, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_AddDatagramSocketAsync(Windows.Networking.Sockets.DatagramSocket value, Windows.Foundation.IAsyncAction* return_result);
	HRESULT add_RemotePortAdded(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceRemotePortAddedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RemotePortAdded(EventRegistrationToken token);
}

@uuid("8dfc197f-1201-4f1f-b6f4-5df1b7b9fb2e")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionDeferredEventArgs")
interface IWiFiDirectServiceSessionDeferredEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_DeferredSessionInfo(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("a0e27c8b-50cb-4a58-9bcf-e472b99fba04")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionRequest")
interface IWiFiDirectServiceSessionRequest : IInspectable
{
extern(Windows):
	HRESULT get_DeviceInformation(Windows.Devices.Enumeration.DeviceInformation* return_value);
	HRESULT get_ProvisioningInfo(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceProvisioningInfo* return_value);
	HRESULT get_SessionInfo(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("74bdcc11-53d6-4999-b4f8-6c8ecc1771e7")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionRequestedEventArgs")
interface IWiFiDirectServiceSessionRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_GetSessionRequest(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionRequest* return_value);
}

@uuid("7db40045-fd74-4688-b725-5dce86acf233")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectService")
interface IWiFiDirectServiceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetSelector(HSTRING serviceName, HSTRING* return_serviceSelector);
	HRESULT abi_GetSelectorWithFilter(HSTRING serviceName, Windows.Storage.Streams.IBuffer serviceInfoFilter, HSTRING* return_serviceSelector);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectService)* return_asyncOp);
}

interface WiFiDirectService : Windows.Devices.WiFiDirect.Services.IWiFiDirectService
{
}

interface WiFiDirectServiceAdvertiser : Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser
{
}

interface WiFiDirectServiceAutoAcceptSessionConnectedEventArgs : Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAutoAcceptSessionConnectedEventArgs
{
}

interface WiFiDirectServiceProvisioningInfo : Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceProvisioningInfo
{
}

interface WiFiDirectServiceRemotePortAddedEventArgs : Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceRemotePortAddedEventArgs
{
}

interface WiFiDirectServiceSession : Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession, Windows.Foundation.IClosable
{
}

interface WiFiDirectServiceSessionDeferredEventArgs : Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSessionDeferredEventArgs
{
}

interface WiFiDirectServiceSessionRequest : Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSessionRequest, Windows.Foundation.IClosable
{
}

interface WiFiDirectServiceSessionRequestedEventArgs : Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSessionRequestedEventArgs
{
}

enum WiFiDirectServiceAdvertisementStatus
{
	Created = 0,
	Started = 1,
	Stopped = 2,
	Aborted = 3
}

enum WiFiDirectServiceConfigurationMethod
{
	Default = 0,
	PinDisplay = 1,
	PinEntry = 2
}

enum WiFiDirectServiceError
{
	Success = 0,
	RadioNotAvailable = 1,
	ResourceInUse = 2,
	UnsupportedHardware = 3,
	NoHardware = 4
}

enum WiFiDirectServiceIPProtocol
{
	Tcp = 6,
	Udp = 17
}

enum WiFiDirectServiceSessionErrorStatus
{
	Ok = 0,
	Disassociated = 1,
	LocalClose = 2,
	RemoteClose = 3,
	SystemFailure = 4,
	NoResponseFromRemote = 5
}

enum WiFiDirectServiceSessionStatus
{
	Closed = 0,
	Initiated = 1,
	Requested = 2,
	Open = 3
}

enum WiFiDirectServiceStatus
{
	Available = 0,
	Busy = 1,
	Custom = 2
}