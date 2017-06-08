module Windows.Networking.Sockets;

import dwinrt;

@uuid("7d1431a7-ee96-40e8-a199-8703cd969ec3")
@WinrtFactory("Windows.Networking.Sockets.ControlChannelTrigger")
interface IControlChannelTrigger : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ControlChannelTriggerId(HSTRING* return_value);
	HRESULT get_ServerKeepAliveIntervalInMinutes(UINT32* return_value);
	HRESULT set_ServerKeepAliveIntervalInMinutes(UINT32 value);
	HRESULT get_CurrentKeepAliveIntervalInMinutes(UINT32* return_value);
	HRESULT get_TransportObject(IInspectable* return_value);
	HRESULT get_KeepAliveTrigger(Windows.ApplicationModel.Background.IBackgroundTrigger* return_trigger);
	HRESULT get_PushNotificationTrigger(Windows.ApplicationModel.Background.IBackgroundTrigger* return_trigger);
	HRESULT abi_UsingTransport(IInspectable transport);
	HRESULT abi_WaitForPushEnabled(Windows.Networking.Sockets.ControlChannelTriggerStatus* return_channelTriggerStatus);
	HRESULT abi_DecreaseNetworkKeepAliveInterval();
	HRESULT abi_FlushTransport();
}

@uuid("af00d237-51be-4514-9725-3556e1879580")
@WinrtFactory("Windows.Networking.Sockets.ControlChannelTrigger")
interface IControlChannelTrigger2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsWakeFromLowPowerSupported(bool* return_value);
}

@uuid("1b36e047-89bb-4236-96ac-71d012bb4869")
interface IControlChannelTriggerEventDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ControlChannelTrigger(Windows.Networking.Sockets.ControlChannelTrigger* return_value);
}

@uuid("da4b7cf0-8d71-446f-88c3-b95184a2d6cd")
@WinrtFactory("Windows.Networking.Sockets.ControlChannelTrigger")
interface IControlChannelTriggerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateControlChannelTrigger(HSTRING channelId, UINT32 serverKeepAliveIntervalInMinutes, Windows.Networking.Sockets.ControlChannelTrigger* return_notificationChannel);
	HRESULT abi_CreateControlChannelTriggerEx(HSTRING channelId, UINT32 serverKeepAliveIntervalInMinutes, Windows.Networking.Sockets.ControlChannelTriggerResourceType resourceRequestType, Windows.Networking.Sockets.ControlChannelTrigger* return_notificationChannel);
}

@uuid("6851038e-8ec4-42fe-9bb2-21e91b7bfcb1")
interface IControlChannelTriggerResetEventDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ResetReason(Windows.Networking.Sockets.ControlChannelTriggerResetReason* return_value);
	HRESULT get_HardwareSlotReset(bool* return_value);
	HRESULT get_SoftwareSlotReset(bool* return_value);
}

@uuid("7fe25bbb-c3bc-4677-8446-ca28a465a3af")
@WinrtFactory("Windows.Networking.Sockets.DatagramSocket")
interface IDatagramSocket : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Control(Windows.Networking.Sockets.DatagramSocketControl* return_value);
	HRESULT get_Information(Windows.Networking.Sockets.DatagramSocketInformation* return_value);
	HRESULT get_OutputStream(Windows.Storage.Streams.IOutputStream* return_value);
	HRESULT abi_ConnectAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_ConnectWithEndpointPairAsync(Windows.Networking.EndpointPair endpointPair, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_BindServiceNameAsync(HSTRING localServiceName, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_BindEndpointAsync(Windows.Networking.HostName localHostName, HSTRING localServiceName, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_JoinMulticastGroup(Windows.Networking.HostName host);
	HRESULT abi_GetOutputStreamAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IOutputStream)* return_value);
	HRESULT abi_GetOutputStreamWithEndpointPairAsync(Windows.Networking.EndpointPair endpointPair, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IOutputStream)* return_value);
	HRESULT add_MessageReceived(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.DatagramSocket*,Windows.Networking.Sockets.DatagramSocketMessageReceivedEventArgs*) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_MessageReceived(EventRegistrationToken eventCookie);
}

@uuid("d83ba354-9a9d-4185-a20a-1424c9c2a7cd")
@WinrtFactory("Windows.Networking.Sockets.DatagramSocket")
interface IDatagramSocket2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_BindServiceNameAndAdapterAsync(HSTRING localServiceName, Windows.Networking.Connectivity.NetworkAdapter adapter, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("37544f09-ab92-4306-9ac1-0c381283d9c6")
@WinrtFactory("Windows.Networking.Sockets.DatagramSocket")
interface IDatagramSocket3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CancelIOAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_EnableTransferOwnership(GUID taskId);
	HRESULT abi_EnableTransferOwnershipWithConnectedStandbyAction(GUID taskId, Windows.Networking.Sockets.SocketActivityConnectedStandbyAction connectedStandbyAction);
	HRESULT abi_TransferOwnership(HSTRING socketId);
	HRESULT abi_TransferOwnershipWithContext(HSTRING socketId, Windows.Networking.Sockets.SocketActivityContext data);
	HRESULT abi_TransferOwnershipWithContextAndKeepAliveTime(HSTRING socketId, Windows.Networking.Sockets.SocketActivityContext data, Windows.Foundation.TimeSpan keepAliveTime);
}

@uuid("52ac3f2e-349a-4135-bb58-b79b2647d390")
@WinrtFactory("Windows.Networking.Sockets.DatagramSocketControl")
interface IDatagramSocketControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_QualityOfService(Windows.Networking.Sockets.SocketQualityOfService* return_value);
	HRESULT set_QualityOfService(Windows.Networking.Sockets.SocketQualityOfService value);
	HRESULT get_OutboundUnicastHopLimit(BYTE* return_value);
	HRESULT set_OutboundUnicastHopLimit(BYTE value);
}

@uuid("33ead5c2-979c-4415-82a1-3cfaf646c192")
@WinrtFactory("Windows.Networking.Sockets.DatagramSocketControl")
interface IDatagramSocketControl2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InboundBufferSizeInBytes(UINT32* return_value);
	HRESULT set_InboundBufferSizeInBytes(UINT32 value);
	HRESULT get_DontFragment(bool* return_value);
	HRESULT set_DontFragment(bool value);
}

@uuid("d4eb8256-1f6d-4598-9b57-d42a001df349")
@WinrtFactory("Windows.Networking.Sockets.DatagramSocketControl")
interface IDatagramSocketControl3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MulticastOnly(bool* return_value);
	HRESULT set_MulticastOnly(bool value);
}

@uuid("5f1a569a-55fb-48cd-9706-7a974f7b1585")
@WinrtFactory("Windows.Networking.Sockets.DatagramSocketInformation")
interface IDatagramSocketInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LocalAddress(Windows.Networking.HostName* return_value);
	HRESULT get_LocalPort(HSTRING* return_value);
	HRESULT get_RemoteAddress(Windows.Networking.HostName* return_value);
	HRESULT get_RemotePort(HSTRING* return_value);
}

@uuid("9e2ddca2-1712-4ce4-b179-8c652c6d107e")
@WinrtFactory("Windows.Networking.Sockets.DatagramSocketMessageReceivedEventArgs")
interface IDatagramSocketMessageReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RemoteAddress(Windows.Networking.HostName* return_value);
	HRESULT get_RemotePort(HSTRING* return_value);
	HRESULT get_LocalAddress(Windows.Networking.HostName* return_value);
	HRESULT abi_GetDataReader(Windows.Storage.Streams.DataReader* return_dataReader);
	HRESULT abi_GetDataStream(Windows.Storage.Streams.IInputStream* return_inputStream);
}

@uuid("e9c62aee-1494-4a21-bb7e-8589fc751d9d")
@WinrtFactory("Windows.Networking.Sockets.DatagramSocket")
interface IDatagramSocketStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetEndpointPairsAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair))* return_operation);
	HRESULT abi_GetEndpointPairsWithSortOptionsAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Networking.HostNameSortOptions sortOptions, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair))* return_operation);
}

@uuid("33727d08-34d5-4746-ad7b-8dde5bc2ef88")
@WinrtFactory("Windows.Networking.Sockets.MessageWebSocket")
interface IMessageWebSocket : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Control(Windows.Networking.Sockets.MessageWebSocketControl* return_value);
	HRESULT get_Information(Windows.Networking.Sockets.MessageWebSocketInformation* return_value);
	HRESULT add_MessageReceived(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.MessageWebSocket*,Windows.Networking.Sockets.MessageWebSocketMessageReceivedEventArgs*) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_MessageReceived(EventRegistrationToken eventCookie);
}

@uuid("bed0cee7-f9c8-440a-9ad5-737281d9742e")
@WinrtFactory("Windows.Networking.Sockets.MessageWebSocket")
interface IMessageWebSocket2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ServerCustomValidationRequested(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.MessageWebSocket*,Windows.Networking.Sockets.WebSocketServerCustomValidationRequestedEventArgs*) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_ServerCustomValidationRequested(EventRegistrationToken eventCookie);
}

@uuid("8118388a-c629-4f0a-80fb-81fc05538862")
@WinrtFactory("Windows.Networking.Sockets.MessageWebSocketControl")
interface IMessageWebSocketControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxMessageSize(UINT32* return_value);
	HRESULT set_MaxMessageSize(UINT32 value);
	HRESULT get_MessageType(Windows.Networking.Sockets.SocketMessageType* return_value);
	HRESULT set_MessageType(Windows.Networking.Sockets.SocketMessageType value);
}

@uuid("478c22ac-4c4b-42ed-9ed7-1ef9f94fa3d5")
@WinrtFactory("Windows.Networking.Sockets.MessageWebSocketMessageReceivedEventArgs")
interface IMessageWebSocketMessageReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MessageType(Windows.Networking.Sockets.SocketMessageType* return_value);
	HRESULT abi_GetDataReader(Windows.Storage.Streams.DataReader* return_dataReader);
	HRESULT abi_GetDataStream(Windows.Storage.Streams.IInputStream* return_inputStream);
}

@uuid("43b04d64-4c85-4396-a637-1d973f6ebd49")
@WinrtFactory("Windows.Networking.Sockets.SocketActivityContext")
interface ISocketActivityContext : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Data(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("b99fc3c3-088c-4388-83ae-2525138e049a")
@WinrtFactory("Windows.Networking.Sockets.SocketActivityContext")
interface ISocketActivityContextFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Storage.Streams.IBuffer data, Windows.Networking.Sockets.SocketActivityContext* return_context);
}

@uuid("8d8a42e4-a87e-4b74-9968-185b2511defe")
@WinrtFactory("Windows.Networking.Sockets.SocketActivityInformation")
interface ISocketActivityInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TaskId(GUID* return_value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_SocketKind(Windows.Networking.Sockets.SocketActivityKind* return_value);
	HRESULT get_Context(Windows.Networking.Sockets.SocketActivityContext* return_value);
	HRESULT get_DatagramSocket(Windows.Networking.Sockets.DatagramSocket* return_value);
	HRESULT get_StreamSocket(Windows.Networking.Sockets.StreamSocket* return_value);
	HRESULT get_StreamSocketListener(Windows.Networking.Sockets.StreamSocketListener* return_value);
}

@uuid("8570b47a-7e7d-4736-8041-1327a6543c56")
@WinrtFactory("Windows.Networking.Sockets.SocketActivityInformation")
interface ISocketActivityInformationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AllSockets(Windows.Foundation.Collections.IMapView!(HSTRING,Windows.Networking.Sockets.SocketActivityInformation*)* return_sockets);
}

@uuid("45f406a7-fc9f-4f81-acad-355fef51e67b")
@WinrtFactory("Windows.Networking.Sockets.SocketActivityTriggerDetails")
interface ISocketActivityTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Reason(Windows.Networking.Sockets.SocketActivityTriggerReason* return_value);
	HRESULT get_SocketInformation(Windows.Networking.Sockets.SocketActivityInformation* return_value);
}

@uuid("828337f4-7d56-4d8e-b7b4-a07dd7c1bca9")
@WinrtFactory("Windows.Networking.Sockets.SocketError")
interface ISocketErrorStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetStatus(INT32 hresult, Windows.Networking.Sockets.SocketErrorStatus* return_status);
}

@uuid("69a22cf3-fc7b-4857-af38-f6e7de6a5b49")
@WinrtFactory("Windows.Networking.Sockets.StreamSocket")
interface IStreamSocket : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Control(Windows.Networking.Sockets.StreamSocketControl* return_value);
	HRESULT get_Information(Windows.Networking.Sockets.StreamSocketInformation* return_value);
	HRESULT get_InputStream(Windows.Storage.Streams.IInputStream* return_value);
	HRESULT get_OutputStream(Windows.Storage.Streams.IOutputStream* return_value);
	HRESULT abi_ConnectWithEndpointPairAsync(Windows.Networking.EndpointPair endpointPair, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_ConnectAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_ConnectWithEndpointPairAndProtectionLevelAsync(Windows.Networking.EndpointPair endpointPair, Windows.Networking.Sockets.SocketProtectionLevel protectionLevel, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_ConnectWithProtectionLevelAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Networking.Sockets.SocketProtectionLevel protectionLevel, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_UpgradeToSslAsync(Windows.Networking.Sockets.SocketProtectionLevel protectionLevel, Windows.Networking.HostName validationHostName, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("29d0e575-f314-4d09-adf0-0fbd967fbd9f")
@WinrtFactory("Windows.Networking.Sockets.StreamSocket")
interface IStreamSocket2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ConnectWithProtectionLevelAndAdapterAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Networking.Sockets.SocketProtectionLevel protectionLevel, Windows.Networking.Connectivity.NetworkAdapter adapter, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("3f430b00-9d28-4854-bac3-2301941ec223")
@WinrtFactory("Windows.Networking.Sockets.StreamSocket")
interface IStreamSocket3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CancelIOAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_EnableTransferOwnership(GUID taskId);
	HRESULT abi_EnableTransferOwnershipWithConnectedStandbyAction(GUID taskId, Windows.Networking.Sockets.SocketActivityConnectedStandbyAction connectedStandbyAction);
	HRESULT abi_TransferOwnership(HSTRING socketId);
	HRESULT abi_TransferOwnershipWithContext(HSTRING socketId, Windows.Networking.Sockets.SocketActivityContext data);
	HRESULT abi_TransferOwnershipWithContextAndKeepAliveTime(HSTRING socketId, Windows.Networking.Sockets.SocketActivityContext data, Windows.Foundation.TimeSpan keepAliveTime);
}

@uuid("fe25adf1-92ab-4af3-9992-0f4c85e36cc4")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketControl")
interface IStreamSocketControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NoDelay(bool* return_value);
	HRESULT set_NoDelay(bool value);
	HRESULT get_KeepAlive(bool* return_value);
	HRESULT set_KeepAlive(bool value);
	HRESULT get_OutboundBufferSizeInBytes(UINT32* return_value);
	HRESULT set_OutboundBufferSizeInBytes(UINT32 value);
	HRESULT get_QualityOfService(Windows.Networking.Sockets.SocketQualityOfService* return_value);
	HRESULT set_QualityOfService(Windows.Networking.Sockets.SocketQualityOfService value);
	HRESULT get_OutboundUnicastHopLimit(BYTE* return_value);
	HRESULT set_OutboundUnicastHopLimit(BYTE value);
}

@uuid("c2d09a56-060f-44c1-b8e2-1fbf60bd62c5")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketControl")
interface IStreamSocketControl2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IgnorableServerCertificateErrors(Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.ChainValidationResult)* return_value);
}

@uuid("c56a444c-4e74-403e-894c-b31cae5c7342")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketControl")
interface IStreamSocketControl3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SerializeConnectionAttempts(bool* return_value);
	HRESULT set_SerializeConnectionAttempts(bool value);
	HRESULT get_ClientCertificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT set_ClientCertificate(Windows.Security.Cryptography.Certificates.Certificate value);
}

@uuid("3b80ae30-5e68-4205-88f0-dc85d2e25ded")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketInformation")
interface IStreamSocketInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LocalAddress(Windows.Networking.HostName* return_value);
	HRESULT get_LocalPort(HSTRING* return_value);
	HRESULT get_RemoteHostName(Windows.Networking.HostName* return_value);
	HRESULT get_RemoteAddress(Windows.Networking.HostName* return_value);
	HRESULT get_RemoteServiceName(HSTRING* return_value);
	HRESULT get_RemotePort(HSTRING* return_value);
	HRESULT get_RoundTripTimeStatistics(Windows.Networking.Sockets.RoundTripTimeStatistics* return_value);
	HRESULT get_BandwidthStatistics(Windows.Networking.Sockets.BandwidthStatistics* return_value);
	HRESULT get_ProtectionLevel(Windows.Networking.Sockets.SocketProtectionLevel* return_value);
	HRESULT get_SessionKey(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("12c28452-4bdc-4ee4-976a-cf130e9d92e3")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketInformation")
interface IStreamSocketInformation2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ServerCertificateErrorSeverity(Windows.Networking.Sockets.SocketSslErrorSeverity* return_value);
	HRESULT get_ServerCertificateErrors(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult)* return_value);
	HRESULT get_ServerCertificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT get_ServerIntermediateCertificates(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_value);
}

@uuid("ff513437-df9f-4df0-bf82-0ec5d7b35aae")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketListener")
interface IStreamSocketListener : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Control(Windows.Networking.Sockets.StreamSocketListenerControl* return_value);
	HRESULT get_Information(Windows.Networking.Sockets.StreamSocketListenerInformation* return_value);
	HRESULT abi_BindServiceNameAsync(HSTRING localServiceName, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_BindEndpointAsync(Windows.Networking.HostName localHostName, HSTRING localServiceName, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT add_ConnectionReceived(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.StreamSocketListener*,Windows.Networking.Sockets.StreamSocketListenerConnectionReceivedEventArgs*) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_ConnectionReceived(EventRegistrationToken eventCookie);
}

@uuid("658dc13e-bb3e-4458-b232-ed1088694b98")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketListener")
interface IStreamSocketListener2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_BindServiceNameWithProtectionLevelAsync(HSTRING localServiceName, Windows.Networking.Sockets.SocketProtectionLevel protectionLevel, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_BindServiceNameWithProtectionLevelAndAdapterAsync(HSTRING localServiceName, Windows.Networking.Sockets.SocketProtectionLevel protectionLevel, Windows.Networking.Connectivity.NetworkAdapter adapter, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("4798201c-bdf8-4919-8542-28d450e74507")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketListener")
interface IStreamSocketListener3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CancelIOAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_EnableTransferOwnership(GUID taskId);
	HRESULT abi_EnableTransferOwnershipWithConnectedStandbyAction(GUID taskId, Windows.Networking.Sockets.SocketActivityConnectedStandbyAction connectedStandbyAction);
	HRESULT abi_TransferOwnership(HSTRING socketId);
	HRESULT abi_TransferOwnershipWithContext(HSTRING socketId, Windows.Networking.Sockets.SocketActivityContext data);
}

@uuid("0c472ea9-373f-447b-85b1-ddd4548803ba")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketListenerConnectionReceivedEventArgs")
interface IStreamSocketListenerConnectionReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Socket(Windows.Networking.Sockets.StreamSocket* return_value);
}

@uuid("20d8c576-8d8a-4dba-9722-a16c4d984980")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketListenerControl")
interface IStreamSocketListenerControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_QualityOfService(Windows.Networking.Sockets.SocketQualityOfService* return_value);
	HRESULT set_QualityOfService(Windows.Networking.Sockets.SocketQualityOfService value);
}

@uuid("948bb665-2c3e-404b-b8b0-8eb249a2b0a1")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketListenerControl")
interface IStreamSocketListenerControl2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NoDelay(bool* return_value);
	HRESULT set_NoDelay(bool value);
	HRESULT get_KeepAlive(bool* return_value);
	HRESULT set_KeepAlive(bool value);
	HRESULT get_OutboundBufferSizeInBytes(UINT32* return_value);
	HRESULT set_OutboundBufferSizeInBytes(UINT32 value);
	HRESULT get_OutboundUnicastHopLimit(BYTE* return_value);
	HRESULT set_OutboundUnicastHopLimit(BYTE value);
}

@uuid("e62ba82f-a63a-430b-bf62-29e93e5633b4")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketListenerInformation")
interface IStreamSocketListenerInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LocalPort(HSTRING* return_value);
}

@uuid("a420bc4a-6e2e-4af5-b556-355ae0cd4f29")
@WinrtFactory("Windows.Networking.Sockets.StreamSocket")
interface IStreamSocketStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetEndpointPairsAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair))* return_operation);
	HRESULT abi_GetEndpointPairsWithSortOptionsAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Networking.HostNameSortOptions sortOptions, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair))* return_operation);
}

@uuid("bd4a49d8-b289-45bb-97eb-c7525205a843")
@WinrtFactory("Windows.Networking.Sockets.StreamWebSocket")
interface IStreamWebSocket : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Control(Windows.Networking.Sockets.StreamWebSocketControl* return_value);
	HRESULT get_Information(Windows.Networking.Sockets.StreamWebSocketInformation* return_value);
	HRESULT get_InputStream(Windows.Storage.Streams.IInputStream* return_value);
}

@uuid("aa4d08cb-93f5-4678-8236-57cce5417ed5")
@WinrtFactory("Windows.Networking.Sockets.StreamWebSocket")
interface IStreamWebSocket2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ServerCustomValidationRequested(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.StreamWebSocket*,Windows.Networking.Sockets.WebSocketServerCustomValidationRequestedEventArgs*) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_ServerCustomValidationRequested(EventRegistrationToken eventCookie);
}

@uuid("b4f478b1-a45a-48db-953a-645b7d964c07")
@WinrtFactory("Windows.Networking.Sockets.StreamWebSocketControl")
interface IStreamWebSocketControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NoDelay(bool* return_value);
	HRESULT set_NoDelay(bool value);
}

@uuid("f877396f-99b1-4e18-bc08-850c9adf156e")
interface IWebSocket : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OutputStream(Windows.Storage.Streams.IOutputStream* return_value);
	HRESULT abi_ConnectAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_SetRequestHeader(HSTRING headerName, HSTRING headerValue);
	HRESULT add_Closed(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.IWebSocket*,Windows.Networking.Sockets.WebSocketClosedEventArgs*) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_Closed(EventRegistrationToken eventCookie);
	HRESULT abi_CloseWithStatus(UINT16 code, HSTRING reason);
}

@uuid("ceb78d07-d0a8-4703-a091-c8c2c0915bc3")
@WinrtFactory("Windows.Networking.Sockets.WebSocketClosedEventArgs")
interface IWebSocketClosedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Code(UINT16* return_value);
	HRESULT get_Reason(HSTRING* return_value);
}

@uuid("2ec4bdc3-d9a5-455a-9811-de24d45337e9")
interface IWebSocketControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OutboundBufferSizeInBytes(UINT32* return_value);
	HRESULT set_OutboundBufferSizeInBytes(UINT32 value);
	HRESULT get_ServerCredential(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT set_ServerCredential(Windows.Security.Credentials.PasswordCredential value);
	HRESULT get_ProxyCredential(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT set_ProxyCredential(Windows.Security.Credentials.PasswordCredential value);
	HRESULT get_SupportedProtocols(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("79c3be03-f2ca-461e-af4e-9665bc2d0620")
interface IWebSocketControl2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IgnorableServerCertificateErrors(Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.ChainValidationResult)* return_value);
}

@uuid("27cdf35b-1f61-4709-8e02-61283ada4e9d")
@WinrtFactory("Windows.Networking.Sockets.WebSocketError")
interface IWebSocketErrorStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetStatus(INT32 hresult, Windows.Web.WebErrorStatus* return_status);
}

@uuid("5e01e316-c92a-47a5-b25f-07847639d181")
interface IWebSocketInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LocalAddress(Windows.Networking.HostName* return_value);
	HRESULT get_BandwidthStatistics(Windows.Networking.Sockets.BandwidthStatistics* return_value);
	HRESULT get_Protocol(HSTRING* return_value);
}

@uuid("ce1d39ce-a1b7-4d43-8269-8d5b981bd47a")
interface IWebSocketInformation2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ServerCertificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT get_ServerCertificateErrorSeverity(Windows.Networking.Sockets.SocketSslErrorSeverity* return_value);
	HRESULT get_ServerCertificateErrors(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult)* return_value);
	HRESULT get_ServerIntermediateCertificates(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_value);
}

@uuid("ffeffe48-022a-4ab7-8b36-e10af4640e6b")
@WinrtFactory("Windows.Networking.Sockets.WebSocketServerCustomValidationRequestedEventArgs")
interface IWebSocketServerCustomValidationRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ServerCertificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT get_ServerCertificateErrorSeverity(Windows.Networking.Sockets.SocketSslErrorSeverity* return_value);
	HRESULT get_ServerCertificateErrors(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult)* return_value);
	HRESULT get_ServerIntermediateCertificates(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_value);
	HRESULT abi_Reject();
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_result);
}

interface ControlChannelTrigger
{
}

interface DatagramSocket
{
}

interface DatagramSocketControl
{
}

interface DatagramSocketInformation
{
}

interface DatagramSocketMessageReceivedEventArgs
{
}

interface MessageWebSocket
{
}

interface MessageWebSocketControl
{
}

interface MessageWebSocketInformation
{
}

interface MessageWebSocketMessageReceivedEventArgs
{
}

interface SocketActivityContext
{
}

interface SocketActivityInformation
{
}

interface SocketActivityTriggerDetails
{
}

interface StreamSocket
{
}

interface StreamSocketControl
{
}

interface StreamSocketInformation
{
}

interface StreamSocketListener
{
}

interface StreamSocketListenerConnectionReceivedEventArgs
{
}

interface StreamSocketListenerControl
{
}

interface StreamSocketListenerInformation
{
}

interface StreamWebSocket
{
}

interface StreamWebSocketControl
{
}

interface StreamWebSocketInformation
{
}

interface WebSocketClosedEventArgs
{
}

interface WebSocketKeepAlive
{
}

interface WebSocketServerCustomValidationRequestedEventArgs
{
}

enum ControlChannelTriggerResetReason
{
	FastUserSwitched = 0,
	LowPowerExit = 1,
	QuietHoursExit = 2,
	ApplicationRestart = 3
}

enum ControlChannelTriggerResourceType
{
	RequestSoftwareSlot = 0,
	RequestHardwareSlot = 1
}

enum ControlChannelTriggerStatus
{
	HardwareSlotRequested = 0,
	SoftwareSlotAllocated = 1,
	HardwareSlotAllocated = 2,
	PolicyError = 3,
	SystemError = 4,
	TransportDisconnected = 5,
	ServiceUnavailable = 6
}

enum SocketActivityConnectedStandbyAction
{
	DoNotWake = 0,
	Wake = 1
}

enum SocketActivityKind
{
	None = 0,
	StreamSocketListener = 1,
	DatagramSocket = 2,
	StreamSocket = 3
}

enum SocketActivityTriggerReason
{
	None = 0,
	SocketActivity = 1,
	ConnectionAccepted = 2,
	KeepAliveTimerExpired = 3,
	SocketClosed = 4
}

enum SocketErrorStatus
{
	Unknown = 0,
	OperationAborted = 1,
	HttpInvalidServerResponse = 2,
	ConnectionTimedOut = 3,
	AddressFamilyNotSupported = 4,
	SocketTypeNotSupported = 5,
	HostNotFound = 6,
	NoDataRecordOfRequestedType = 7,
	NonAuthoritativeHostNotFound = 8,
	ClassTypeNotFound = 9,
	AddressAlreadyInUse = 10,
	CannotAssignRequestedAddress = 11,
	ConnectionRefused = 12,
	NetworkIsUnreachable = 13,
	UnreachableHost = 14,
	NetworkIsDown = 15,
	NetworkDroppedConnectionOnReset = 16,
	SoftwareCausedConnectionAbort = 17,
	ConnectionResetByPeer = 18,
	HostIsDown = 19,
	NoAddressesFound = 20,
	TooManyOpenFiles = 21,
	MessageTooLong = 22,
	CertificateExpired = 23,
	CertificateUntrustedRoot = 24,
	CertificateCommonNameIsIncorrect = 25,
	CertificateWrongUsage = 26,
	CertificateRevoked = 27,
	CertificateNoRevocationCheck = 28,
	CertificateRevocationServerOffline = 29,
	CertificateIsInvalid = 30
}

enum SocketMessageType
{
	Binary = 0,
	Utf8 = 1
}

enum SocketProtectionLevel
{
	PlainSocket = 0,
	Ssl = 1,
	SslAllowNullEncryption = 2,
	BluetoothEncryptionAllowNullAuthentication = 3,
	BluetoothEncryptionWithAuthentication = 4,
	Ssl3AllowWeakEncryption = 5,
	Tls10 = 6,
	Tls11 = 7,
	Tls12 = 8
}

enum SocketQualityOfService
{
	Normal = 0,
	LowLatency = 1
}

enum SocketSslErrorSeverity
{
	None = 0,
	Ignorable = 1,
	Fatal = 2
}