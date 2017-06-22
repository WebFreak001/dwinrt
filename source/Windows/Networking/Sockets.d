module Windows.Networking.Sockets;

import dwinrt;

struct BandwidthStatistics
{
	ulong OutboundBitsPerSecond;
	ulong InboundBitsPerSecond;
	ulong OutboundBitsPerSecondInstability;
	ulong InboundBitsPerSecondInstability;
	bool OutboundBandwidthPeaked;
	bool InboundBandwidthPeaked;
}

struct RoundTripTimeStatistics
{
	UINT32 Variance;
	UINT32 Max;
	UINT32 Min;
	UINT32 Sum;
}

@uuid("7d1431a7-ee96-40e8-a199-8703cd969ec3")
@WinrtFactory("Windows.Networking.Sockets.ControlChannelTrigger")
interface IControlChannelTrigger_Base : IInspectable
{
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
@uuid("7d1431a7-ee96-40e8-a199-8703cd969ec3")
@WinrtFactory("Windows.Networking.Sockets.ControlChannelTrigger")
interface IControlChannelTrigger : IControlChannelTrigger_Base, Windows.Foundation.IClosable {}

@uuid("af00d237-51be-4514-9725-3556e1879580")
@WinrtFactory("Windows.Networking.Sockets.ControlChannelTrigger")
interface IControlChannelTrigger2 : IInspectable
{
extern(Windows):
	HRESULT get_IsWakeFromLowPowerSupported(bool* return_value);
}

@uuid("1b36e047-89bb-4236-96ac-71d012bb4869")
interface IControlChannelTriggerEventDetails : IInspectable
{
extern(Windows):
	HRESULT get_ControlChannelTrigger(Windows.Networking.Sockets.ControlChannelTrigger* return_value);
}

@uuid("da4b7cf0-8d71-446f-88c3-b95184a2d6cd")
@WinrtFactory("Windows.Networking.Sockets.ControlChannelTrigger")
interface IControlChannelTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateControlChannelTrigger(HSTRING channelId, UINT32 serverKeepAliveIntervalInMinutes, Windows.Networking.Sockets.ControlChannelTrigger* return_notificationChannel);
	HRESULT abi_CreateControlChannelTriggerEx(HSTRING channelId, UINT32 serverKeepAliveIntervalInMinutes, Windows.Networking.Sockets.ControlChannelTriggerResourceType resourceRequestType, Windows.Networking.Sockets.ControlChannelTrigger* return_notificationChannel);
}

@uuid("6851038e-8ec4-42fe-9bb2-21e91b7bfcb1")
interface IControlChannelTriggerResetEventDetails : IInspectable
{
extern(Windows):
	HRESULT get_ResetReason(Windows.Networking.Sockets.ControlChannelTriggerResetReason* return_value);
	HRESULT get_HardwareSlotReset(bool* return_value);
	HRESULT get_SoftwareSlotReset(bool* return_value);
}

@uuid("7fe25bbb-c3bc-4677-8446-ca28a465a3af")
@WinrtFactory("Windows.Networking.Sockets.DatagramSocket")
interface IDatagramSocket_Base : IInspectable
{
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
	HRESULT add_MessageReceived(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.DatagramSocket, Windows.Networking.Sockets.DatagramSocketMessageReceivedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_MessageReceived(EventRegistrationToken eventCookie);
}
@uuid("7fe25bbb-c3bc-4677-8446-ca28a465a3af")
@WinrtFactory("Windows.Networking.Sockets.DatagramSocket")
interface IDatagramSocket : IDatagramSocket_Base, Windows.Foundation.IClosable {}

@uuid("d83ba354-9a9d-4185-a20a-1424c9c2a7cd")
@WinrtFactory("Windows.Networking.Sockets.DatagramSocket")
interface IDatagramSocket2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_BindServiceNameAndAdapterAsync(HSTRING localServiceName, Windows.Networking.Connectivity.NetworkAdapter adapter, Windows.Foundation.IAsyncAction* return_operation);
}
@uuid("d83ba354-9a9d-4185-a20a-1424c9c2a7cd")
@WinrtFactory("Windows.Networking.Sockets.DatagramSocket")
interface IDatagramSocket2 : IDatagramSocket2_Base, Windows.Foundation.IClosable {}

@uuid("37544f09-ab92-4306-9ac1-0c381283d9c6")
@WinrtFactory("Windows.Networking.Sockets.DatagramSocket")
interface IDatagramSocket3 : IInspectable
{
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
extern(Windows):
	HRESULT get_QualityOfService(Windows.Networking.Sockets.SocketQualityOfService* return_value);
	HRESULT set_QualityOfService(Windows.Networking.Sockets.SocketQualityOfService value);
	HRESULT get_OutboundUnicastHopLimit(ubyte* return_value);
	HRESULT set_OutboundUnicastHopLimit(ubyte value);
}

@uuid("33ead5c2-979c-4415-82a1-3cfaf646c192")
@WinrtFactory("Windows.Networking.Sockets.DatagramSocketControl")
interface IDatagramSocketControl2 : IInspectable
{
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
extern(Windows):
	HRESULT get_MulticastOnly(bool* return_value);
	HRESULT set_MulticastOnly(bool value);
}

@uuid("5f1a569a-55fb-48cd-9706-7a974f7b1585")
@WinrtFactory("Windows.Networking.Sockets.DatagramSocketInformation")
interface IDatagramSocketInformation : IInspectable
{
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
extern(Windows):
	HRESULT abi_GetEndpointPairsAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair))* return_operation);
	HRESULT abi_GetEndpointPairsWithSortOptionsAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Networking.HostNameSortOptions sortOptions, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair))* return_operation);
}

@uuid("33727d08-34d5-4746-ad7b-8dde5bc2ef88")
@WinrtFactory("Windows.Networking.Sockets.MessageWebSocket")
interface IMessageWebSocket_Base : IInspectable
{
extern(Windows):
	HRESULT get_Control(Windows.Networking.Sockets.MessageWebSocketControl* return_value);
	HRESULT get_Information(Windows.Networking.Sockets.MessageWebSocketInformation* return_value);
	HRESULT add_MessageReceived(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.MessageWebSocket, Windows.Networking.Sockets.MessageWebSocketMessageReceivedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_MessageReceived(EventRegistrationToken eventCookie);
}
@uuid("33727d08-34d5-4746-ad7b-8dde5bc2ef88")
@WinrtFactory("Windows.Networking.Sockets.MessageWebSocket")
interface IMessageWebSocket : IMessageWebSocket_Base, Windows.Networking.Sockets.IWebSocket, Windows.Foundation.IClosable {}

@uuid("bed0cee7-f9c8-440a-9ad5-737281d9742e")
@WinrtFactory("Windows.Networking.Sockets.MessageWebSocket")
interface IMessageWebSocket2_Base : IInspectable
{
extern(Windows):
	HRESULT add_ServerCustomValidationRequested(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.MessageWebSocket, Windows.Networking.Sockets.WebSocketServerCustomValidationRequestedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_ServerCustomValidationRequested(EventRegistrationToken eventCookie);
}
@uuid("bed0cee7-f9c8-440a-9ad5-737281d9742e")
@WinrtFactory("Windows.Networking.Sockets.MessageWebSocket")
interface IMessageWebSocket2 : IMessageWebSocket2_Base, Windows.Networking.Sockets.IMessageWebSocket, Windows.Networking.Sockets.IWebSocket, Windows.Foundation.IClosable {}

@uuid("8118388a-c629-4f0a-80fb-81fc05538862")
@WinrtFactory("Windows.Networking.Sockets.MessageWebSocketControl")
interface IMessageWebSocketControl_Base : IInspectable
{
extern(Windows):
	HRESULT get_MaxMessageSize(UINT32* return_value);
	HRESULT set_MaxMessageSize(UINT32 value);
	HRESULT get_MessageType(Windows.Networking.Sockets.SocketMessageType* return_value);
	HRESULT set_MessageType(Windows.Networking.Sockets.SocketMessageType value);
}
@uuid("8118388a-c629-4f0a-80fb-81fc05538862")
@WinrtFactory("Windows.Networking.Sockets.MessageWebSocketControl")
interface IMessageWebSocketControl : IMessageWebSocketControl_Base, Windows.Networking.Sockets.IWebSocketControl {}

@uuid("478c22ac-4c4b-42ed-9ed7-1ef9f94fa3d5")
@WinrtFactory("Windows.Networking.Sockets.MessageWebSocketMessageReceivedEventArgs")
interface IMessageWebSocketMessageReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_MessageType(Windows.Networking.Sockets.SocketMessageType* return_value);
	HRESULT abi_GetDataReader(Windows.Storage.Streams.DataReader* return_dataReader);
	HRESULT abi_GetDataStream(Windows.Storage.Streams.IInputStream* return_inputStream);
}

@uuid("43b04d64-4c85-4396-a637-1d973f6ebd49")
@WinrtFactory("Windows.Networking.Sockets.SocketActivityContext")
interface ISocketActivityContext : IInspectable
{
extern(Windows):
	HRESULT get_Data(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("b99fc3c3-088c-4388-83ae-2525138e049a")
@WinrtFactory("Windows.Networking.Sockets.SocketActivityContext")
interface ISocketActivityContextFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Storage.Streams.IBuffer data, Windows.Networking.Sockets.SocketActivityContext* return_context);
}

@uuid("8d8a42e4-a87e-4b74-9968-185b2511defe")
@WinrtFactory("Windows.Networking.Sockets.SocketActivityInformation")
interface ISocketActivityInformation : IInspectable
{
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
extern(Windows):
	HRESULT get_AllSockets(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Networking.Sockets.SocketActivityInformation)* return_sockets);
}

@uuid("45f406a7-fc9f-4f81-acad-355fef51e67b")
@WinrtFactory("Windows.Networking.Sockets.SocketActivityTriggerDetails")
interface ISocketActivityTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_Reason(Windows.Networking.Sockets.SocketActivityTriggerReason* return_value);
	HRESULT get_SocketInformation(Windows.Networking.Sockets.SocketActivityInformation* return_value);
}

@uuid("828337f4-7d56-4d8e-b7b4-a07dd7c1bca9")
@WinrtFactory("Windows.Networking.Sockets.SocketError")
interface ISocketErrorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetStatus(INT32 hresult, Windows.Networking.Sockets.SocketErrorStatus* return_status);
}

@uuid("69a22cf3-fc7b-4857-af38-f6e7de6a5b49")
@WinrtFactory("Windows.Networking.Sockets.StreamSocket")
interface IStreamSocket_Base : IInspectable
{
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
@uuid("69a22cf3-fc7b-4857-af38-f6e7de6a5b49")
@WinrtFactory("Windows.Networking.Sockets.StreamSocket")
interface IStreamSocket : IStreamSocket_Base, Windows.Foundation.IClosable {}

@uuid("29d0e575-f314-4d09-adf0-0fbd967fbd9f")
@WinrtFactory("Windows.Networking.Sockets.StreamSocket")
interface IStreamSocket2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ConnectWithProtectionLevelAndAdapterAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Networking.Sockets.SocketProtectionLevel protectionLevel, Windows.Networking.Connectivity.NetworkAdapter adapter, Windows.Foundation.IAsyncAction* return_operation);
}
@uuid("29d0e575-f314-4d09-adf0-0fbd967fbd9f")
@WinrtFactory("Windows.Networking.Sockets.StreamSocket")
interface IStreamSocket2 : IStreamSocket2_Base, Windows.Foundation.IClosable {}

@uuid("3f430b00-9d28-4854-bac3-2301941ec223")
@WinrtFactory("Windows.Networking.Sockets.StreamSocket")
interface IStreamSocket3 : IInspectable
{
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
extern(Windows):
	HRESULT get_NoDelay(bool* return_value);
	HRESULT set_NoDelay(bool value);
	HRESULT get_KeepAlive(bool* return_value);
	HRESULT set_KeepAlive(bool value);
	HRESULT get_OutboundBufferSizeInBytes(UINT32* return_value);
	HRESULT set_OutboundBufferSizeInBytes(UINT32 value);
	HRESULT get_QualityOfService(Windows.Networking.Sockets.SocketQualityOfService* return_value);
	HRESULT set_QualityOfService(Windows.Networking.Sockets.SocketQualityOfService value);
	HRESULT get_OutboundUnicastHopLimit(ubyte* return_value);
	HRESULT set_OutboundUnicastHopLimit(ubyte value);
}

@uuid("c2d09a56-060f-44c1-b8e2-1fbf60bd62c5")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketControl")
interface IStreamSocketControl2 : IInspectable
{
extern(Windows):
	HRESULT get_IgnorableServerCertificateErrors(Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.ChainValidationResult)* return_value);
}

@uuid("c56a444c-4e74-403e-894c-b31cae5c7342")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketControl")
interface IStreamSocketControl3 : IInspectable
{
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
extern(Windows):
	HRESULT get_ServerCertificateErrorSeverity(Windows.Networking.Sockets.SocketSslErrorSeverity* return_value);
	HRESULT get_ServerCertificateErrors(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult)* return_value);
	HRESULT get_ServerCertificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT get_ServerIntermediateCertificates(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_value);
}

@uuid("ff513437-df9f-4df0-bf82-0ec5d7b35aae")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketListener")
interface IStreamSocketListener_Base : IInspectable
{
extern(Windows):
	HRESULT get_Control(Windows.Networking.Sockets.StreamSocketListenerControl* return_value);
	HRESULT get_Information(Windows.Networking.Sockets.StreamSocketListenerInformation* return_value);
	HRESULT abi_BindServiceNameAsync(HSTRING localServiceName, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_BindEndpointAsync(Windows.Networking.HostName localHostName, HSTRING localServiceName, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT add_ConnectionReceived(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.StreamSocketListener, Windows.Networking.Sockets.StreamSocketListenerConnectionReceivedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_ConnectionReceived(EventRegistrationToken eventCookie);
}
@uuid("ff513437-df9f-4df0-bf82-0ec5d7b35aae")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketListener")
interface IStreamSocketListener : IStreamSocketListener_Base, Windows.Foundation.IClosable {}

@uuid("658dc13e-bb3e-4458-b232-ed1088694b98")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketListener")
interface IStreamSocketListener2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_BindServiceNameWithProtectionLevelAsync(HSTRING localServiceName, Windows.Networking.Sockets.SocketProtectionLevel protectionLevel, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_BindServiceNameWithProtectionLevelAndAdapterAsync(HSTRING localServiceName, Windows.Networking.Sockets.SocketProtectionLevel protectionLevel, Windows.Networking.Connectivity.NetworkAdapter adapter, Windows.Foundation.IAsyncAction* return_operation);
}
@uuid("658dc13e-bb3e-4458-b232-ed1088694b98")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketListener")
interface IStreamSocketListener2 : IStreamSocketListener2_Base, Windows.Foundation.IClosable {}

@uuid("4798201c-bdf8-4919-8542-28d450e74507")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketListener")
interface IStreamSocketListener3 : IInspectable
{
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
extern(Windows):
	HRESULT get_Socket(Windows.Networking.Sockets.StreamSocket* return_value);
}

@uuid("20d8c576-8d8a-4dba-9722-a16c4d984980")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketListenerControl")
interface IStreamSocketListenerControl : IInspectable
{
extern(Windows):
	HRESULT get_QualityOfService(Windows.Networking.Sockets.SocketQualityOfService* return_value);
	HRESULT set_QualityOfService(Windows.Networking.Sockets.SocketQualityOfService value);
}

@uuid("948bb665-2c3e-404b-b8b0-8eb249a2b0a1")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketListenerControl")
interface IStreamSocketListenerControl2 : IInspectable
{
extern(Windows):
	HRESULT get_NoDelay(bool* return_value);
	HRESULT set_NoDelay(bool value);
	HRESULT get_KeepAlive(bool* return_value);
	HRESULT set_KeepAlive(bool value);
	HRESULT get_OutboundBufferSizeInBytes(UINT32* return_value);
	HRESULT set_OutboundBufferSizeInBytes(UINT32 value);
	HRESULT get_OutboundUnicastHopLimit(ubyte* return_value);
	HRESULT set_OutboundUnicastHopLimit(ubyte value);
}

@uuid("e62ba82f-a63a-430b-bf62-29e93e5633b4")
@WinrtFactory("Windows.Networking.Sockets.StreamSocketListenerInformation")
interface IStreamSocketListenerInformation : IInspectable
{
extern(Windows):
	HRESULT get_LocalPort(HSTRING* return_value);
}

@uuid("a420bc4a-6e2e-4af5-b556-355ae0cd4f29")
@WinrtFactory("Windows.Networking.Sockets.StreamSocket")
interface IStreamSocketStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetEndpointPairsAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair))* return_operation);
	HRESULT abi_GetEndpointPairsWithSortOptionsAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Networking.HostNameSortOptions sortOptions, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair))* return_operation);
}

@uuid("bd4a49d8-b289-45bb-97eb-c7525205a843")
@WinrtFactory("Windows.Networking.Sockets.StreamWebSocket")
interface IStreamWebSocket_Base : IInspectable
{
extern(Windows):
	HRESULT get_Control(Windows.Networking.Sockets.StreamWebSocketControl* return_value);
	HRESULT get_Information(Windows.Networking.Sockets.StreamWebSocketInformation* return_value);
	HRESULT get_InputStream(Windows.Storage.Streams.IInputStream* return_value);
}
@uuid("bd4a49d8-b289-45bb-97eb-c7525205a843")
@WinrtFactory("Windows.Networking.Sockets.StreamWebSocket")
interface IStreamWebSocket : IStreamWebSocket_Base, Windows.Networking.Sockets.IWebSocket, Windows.Foundation.IClosable {}

@uuid("aa4d08cb-93f5-4678-8236-57cce5417ed5")
@WinrtFactory("Windows.Networking.Sockets.StreamWebSocket")
interface IStreamWebSocket2_Base : IInspectable
{
extern(Windows):
	HRESULT add_ServerCustomValidationRequested(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.StreamWebSocket, Windows.Networking.Sockets.WebSocketServerCustomValidationRequestedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_ServerCustomValidationRequested(EventRegistrationToken eventCookie);
}
@uuid("aa4d08cb-93f5-4678-8236-57cce5417ed5")
@WinrtFactory("Windows.Networking.Sockets.StreamWebSocket")
interface IStreamWebSocket2 : IStreamWebSocket2_Base, Windows.Networking.Sockets.IStreamWebSocket, Windows.Networking.Sockets.IWebSocket, Windows.Foundation.IClosable {}

@uuid("b4f478b1-a45a-48db-953a-645b7d964c07")
@WinrtFactory("Windows.Networking.Sockets.StreamWebSocketControl")
interface IStreamWebSocketControl_Base : IInspectable
{
extern(Windows):
	HRESULT get_NoDelay(bool* return_value);
	HRESULT set_NoDelay(bool value);
}
@uuid("b4f478b1-a45a-48db-953a-645b7d964c07")
@WinrtFactory("Windows.Networking.Sockets.StreamWebSocketControl")
interface IStreamWebSocketControl : IStreamWebSocketControl_Base, Windows.Networking.Sockets.IWebSocketControl {}

@uuid("f877396f-99b1-4e18-bc08-850c9adf156e")
interface IWebSocket_Base : IInspectable
{
extern(Windows):
	HRESULT get_OutputStream(Windows.Storage.Streams.IOutputStream* return_value);
	HRESULT abi_ConnectAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_SetRequestHeader(HSTRING headerName, HSTRING headerValue);
	HRESULT add_Closed(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.IWebSocket, Windows.Networking.Sockets.WebSocketClosedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_Closed(EventRegistrationToken eventCookie);
	HRESULT abi_CloseWithStatus(UINT16 code, HSTRING reason);
}
@uuid("f877396f-99b1-4e18-bc08-850c9adf156e")
interface IWebSocket : IWebSocket_Base, Windows.Foundation.IClosable {}

@uuid("ceb78d07-d0a8-4703-a091-c8c2c0915bc3")
@WinrtFactory("Windows.Networking.Sockets.WebSocketClosedEventArgs")
interface IWebSocketClosedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Code(UINT16* return_value);
	HRESULT get_Reason(HSTRING* return_value);
}

@uuid("2ec4bdc3-d9a5-455a-9811-de24d45337e9")
interface IWebSocketControl : IInspectable
{
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
interface IWebSocketControl2_Base : IInspectable
{
extern(Windows):
	HRESULT get_IgnorableServerCertificateErrors(Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.ChainValidationResult)* return_value);
}
@uuid("79c3be03-f2ca-461e-af4e-9665bc2d0620")
interface IWebSocketControl2 : IWebSocketControl2_Base, Windows.Networking.Sockets.IWebSocketControl {}

@uuid("27cdf35b-1f61-4709-8e02-61283ada4e9d")
@WinrtFactory("Windows.Networking.Sockets.WebSocketError")
interface IWebSocketErrorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetStatus(INT32 hresult, Windows.Web.WebErrorStatus* return_status);
}

@uuid("5e01e316-c92a-47a5-b25f-07847639d181")
interface IWebSocketInformation : IInspectable
{
extern(Windows):
	HRESULT get_LocalAddress(Windows.Networking.HostName* return_value);
	HRESULT get_BandwidthStatistics(Windows.Networking.Sockets.BandwidthStatistics* return_value);
	HRESULT get_Protocol(HSTRING* return_value);
}

@uuid("ce1d39ce-a1b7-4d43-8269-8d5b981bd47a")
interface IWebSocketInformation2_Base : IInspectable
{
extern(Windows):
	HRESULT get_ServerCertificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT get_ServerCertificateErrorSeverity(Windows.Networking.Sockets.SocketSslErrorSeverity* return_value);
	HRESULT get_ServerCertificateErrors(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult)* return_value);
	HRESULT get_ServerIntermediateCertificates(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_value);
}
@uuid("ce1d39ce-a1b7-4d43-8269-8d5b981bd47a")
interface IWebSocketInformation2 : IWebSocketInformation2_Base, Windows.Networking.Sockets.IWebSocketInformation {}

@uuid("ffeffe48-022a-4ab7-8b36-e10af4640e6b")
@WinrtFactory("Windows.Networking.Sockets.WebSocketServerCustomValidationRequestedEventArgs")
interface IWebSocketServerCustomValidationRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ServerCertificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT get_ServerCertificateErrorSeverity(Windows.Networking.Sockets.SocketSslErrorSeverity* return_value);
	HRESULT get_ServerCertificateErrors(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult)* return_value);
	HRESULT get_ServerIntermediateCertificates(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_value);
	HRESULT abi_Reject();
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_result);
}

interface ControlChannelTrigger : Windows.Networking.Sockets.IControlChannelTrigger, Windows.Foundation.IClosable, Windows.Networking.Sockets.IControlChannelTrigger2
{
extern(Windows):
	final HSTRING ControlChannelTriggerId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IControlChannelTrigger).get_ControlChannelTriggerId(&_ret));
		return _ret;
	}
	final UINT32 ServerKeepAliveIntervalInMinutes()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IControlChannelTrigger).get_ServerKeepAliveIntervalInMinutes(&_ret));
		return _ret;
	}
	final void ServerKeepAliveIntervalInMinutes(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IControlChannelTrigger).set_ServerKeepAliveIntervalInMinutes(value));
	}
	final UINT32 CurrentKeepAliveIntervalInMinutes()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IControlChannelTrigger).get_CurrentKeepAliveIntervalInMinutes(&_ret));
		return _ret;
	}
	final IInspectable TransportObject()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IControlChannelTrigger).get_TransportObject(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Background.IBackgroundTrigger KeepAliveTrigger()
	{
		Windows.ApplicationModel.Background.IBackgroundTrigger _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IControlChannelTrigger).get_KeepAliveTrigger(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Background.IBackgroundTrigger PushNotificationTrigger()
	{
		Windows.ApplicationModel.Background.IBackgroundTrigger _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IControlChannelTrigger).get_PushNotificationTrigger(&_ret));
		return _ret;
	}
	final void UsingTransport(IInspectable transport)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IControlChannelTrigger).abi_UsingTransport(transport));
	}
	final Windows.Networking.Sockets.ControlChannelTriggerStatus WaitForPushEnabled()
	{
		Windows.Networking.Sockets.ControlChannelTriggerStatus _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IControlChannelTrigger).abi_WaitForPushEnabled(&_ret));
		return _ret;
	}
	final void DecreaseNetworkKeepAliveInterval()
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IControlChannelTrigger).abi_DecreaseNetworkKeepAliveInterval());
	}
	final void FlushTransport()
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IControlChannelTrigger).abi_FlushTransport());
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final bool IsWakeFromLowPowerSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IControlChannelTrigger2).get_IsWakeFromLowPowerSupported(&_ret));
		return _ret;
	}
}

interface DatagramSocket : Windows.Networking.Sockets.IDatagramSocket, Windows.Foundation.IClosable, Windows.Networking.Sockets.IDatagramSocket2, Windows.Networking.Sockets.IDatagramSocket3
{
extern(Windows):
	final Windows.Networking.Sockets.DatagramSocketControl Control()
	{
		Windows.Networking.Sockets.DatagramSocketControl _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket).get_Control(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.DatagramSocketInformation Information()
	{
		Windows.Networking.Sockets.DatagramSocketInformation _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket).get_Information(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream OutputStream()
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket).get_OutputStream(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ConnectAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket).abi_ConnectAsync(remoteHostName, remoteServiceName, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ConnectWithEndpointPairAsync(Windows.Networking.EndpointPair endpointPair)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket).abi_ConnectWithEndpointPairAsync(endpointPair, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction BindServiceNameAsync(HSTRING localServiceName)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket).abi_BindServiceNameAsync(localServiceName, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction BindEndpointAsync(Windows.Networking.HostName localHostName, HSTRING localServiceName)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket).abi_BindEndpointAsync(localHostName, localServiceName, &_ret));
		return _ret;
	}
	final void JoinMulticastGroup(Windows.Networking.HostName host)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket).abi_JoinMulticastGroup(host));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IOutputStream) GetOutputStreamAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IOutputStream) _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket).abi_GetOutputStreamAsync(remoteHostName, remoteServiceName, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IOutputStream) GetOutputStreamWithEndpointPairAsync(Windows.Networking.EndpointPair endpointPair)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IOutputStream) _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket).abi_GetOutputStreamWithEndpointPairAsync(endpointPair, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnMessageReceived(void delegate(Windows.Networking.Sockets.DatagramSocket, Windows.Networking.Sockets.DatagramSocketMessageReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MessageReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.DatagramSocket, Windows.Networking.Sockets.DatagramSocketMessageReceivedEventArgs), Windows.Networking.Sockets.DatagramSocket, Windows.Networking.Sockets.DatagramSocketMessageReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMessageReceived(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_MessageReceived(eventCookie));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Foundation.IAsyncAction BindServiceNameAndAdapterAsync(HSTRING localServiceName, Windows.Networking.Connectivity.NetworkAdapter adapter)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket2).abi_BindServiceNameAndAdapterAsync(localServiceName, adapter, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction CancelIOAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket3).abi_CancelIOAsync(&_ret));
		return _ret;
	}
	final void EnableTransferOwnership(GUID taskId)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket3).abi_EnableTransferOwnership(taskId));
	}
	final void EnableTransferOwnershipWithConnectedStandbyAction(GUID taskId, Windows.Networking.Sockets.SocketActivityConnectedStandbyAction connectedStandbyAction)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket3).abi_EnableTransferOwnershipWithConnectedStandbyAction(taskId, connectedStandbyAction));
	}
	final void TransferOwnership(HSTRING socketId)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket3).abi_TransferOwnership(socketId));
	}
	final void TransferOwnershipWithContext(HSTRING socketId, Windows.Networking.Sockets.SocketActivityContext data)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket3).abi_TransferOwnershipWithContext(socketId, data));
	}
	final void TransferOwnershipWithContextAndKeepAliveTime(HSTRING socketId, Windows.Networking.Sockets.SocketActivityContext data, Windows.Foundation.TimeSpan keepAliveTime)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocket3).abi_TransferOwnershipWithContextAndKeepAliveTime(socketId, data, keepAliveTime));
	}
}

interface DatagramSocketControl : Windows.Networking.Sockets.IDatagramSocketControl, Windows.Networking.Sockets.IDatagramSocketControl2, Windows.Networking.Sockets.IDatagramSocketControl3
{
extern(Windows):
	final Windows.Networking.Sockets.SocketQualityOfService QualityOfService()
	{
		Windows.Networking.Sockets.SocketQualityOfService _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketControl).get_QualityOfService(&_ret));
		return _ret;
	}
	final void QualityOfService(Windows.Networking.Sockets.SocketQualityOfService value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketControl).set_QualityOfService(value));
	}
	final ubyte OutboundUnicastHopLimit()
	{
		ubyte _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketControl).get_OutboundUnicastHopLimit(&_ret));
		return _ret;
	}
	final void OutboundUnicastHopLimit(ubyte value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketControl).set_OutboundUnicastHopLimit(value));
	}
	final UINT32 InboundBufferSizeInBytes()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketControl2).get_InboundBufferSizeInBytes(&_ret));
		return _ret;
	}
	final void InboundBufferSizeInBytes(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketControl2).set_InboundBufferSizeInBytes(value));
	}
	final bool DontFragment()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketControl2).get_DontFragment(&_ret));
		return _ret;
	}
	final void DontFragment(bool value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketControl2).set_DontFragment(value));
	}
	final bool MulticastOnly()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketControl3).get_MulticastOnly(&_ret));
		return _ret;
	}
	final void MulticastOnly(bool value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketControl3).set_MulticastOnly(value));
	}
}

interface DatagramSocketInformation : Windows.Networking.Sockets.IDatagramSocketInformation
{
extern(Windows):
	final Windows.Networking.HostName LocalAddress()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketInformation).get_LocalAddress(&_ret));
		return _ret;
	}
	final HSTRING LocalPort()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketInformation).get_LocalPort(&_ret));
		return _ret;
	}
	final Windows.Networking.HostName RemoteAddress()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketInformation).get_RemoteAddress(&_ret));
		return _ret;
	}
	final HSTRING RemotePort()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketInformation).get_RemotePort(&_ret));
		return _ret;
	}
}

interface DatagramSocketMessageReceivedEventArgs : Windows.Networking.Sockets.IDatagramSocketMessageReceivedEventArgs
{
extern(Windows):
	final Windows.Networking.HostName RemoteAddress()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketMessageReceivedEventArgs).get_RemoteAddress(&_ret));
		return _ret;
	}
	final HSTRING RemotePort()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketMessageReceivedEventArgs).get_RemotePort(&_ret));
		return _ret;
	}
	final Windows.Networking.HostName LocalAddress()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketMessageReceivedEventArgs).get_LocalAddress(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.DataReader GetDataReader()
	{
		Windows.Storage.Streams.DataReader _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketMessageReceivedEventArgs).abi_GetDataReader(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IInputStream GetDataStream()
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IDatagramSocketMessageReceivedEventArgs).abi_GetDataStream(&_ret));
		return _ret;
	}
}

interface MessageWebSocket : Windows.Networking.Sockets.IMessageWebSocket, Windows.Networking.Sockets.IWebSocket, Windows.Foundation.IClosable, Windows.Networking.Sockets.IMessageWebSocket2
{
extern(Windows):
	final Windows.Networking.Sockets.MessageWebSocketControl Control()
	{
		Windows.Networking.Sockets.MessageWebSocketControl _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IMessageWebSocket).get_Control(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.MessageWebSocketInformation Information()
	{
		Windows.Networking.Sockets.MessageWebSocketInformation _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IMessageWebSocket).get_Information(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnMessageReceived(void delegate(Windows.Networking.Sockets.MessageWebSocket, Windows.Networking.Sockets.MessageWebSocketMessageReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MessageReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.MessageWebSocket, Windows.Networking.Sockets.MessageWebSocketMessageReceivedEventArgs), Windows.Networking.Sockets.MessageWebSocket, Windows.Networking.Sockets.MessageWebSocketMessageReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMessageReceived(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_MessageReceived(eventCookie));
	}
	final Windows.Storage.Streams.IOutputStream OutputStream()
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocket).get_OutputStream(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ConnectAsync(Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocket).abi_ConnectAsync(uri, &_ret));
		return _ret;
	}
	final void SetRequestHeader(HSTRING headerName, HSTRING headerValue)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocket).abi_SetRequestHeader(headerName, headerValue));
	}
	final EventRegistrationToken OnClosed(void delegate(Windows.Networking.Sockets.IWebSocket, Windows.Networking.Sockets.WebSocketClosedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Closed(event!(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.IWebSocket, Windows.Networking.Sockets.WebSocketClosedEventArgs), Windows.Networking.Sockets.IWebSocket, Windows.Networking.Sockets.WebSocketClosedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeClosed(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_Closed(eventCookie));
	}
	final void CloseWithStatus(UINT16 code, HSTRING reason)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocket).abi_CloseWithStatus(code, reason));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final EventRegistrationToken OnServerCustomValidationRequested(void delegate(Windows.Networking.Sockets.MessageWebSocket, Windows.Networking.Sockets.WebSocketServerCustomValidationRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ServerCustomValidationRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.MessageWebSocket, Windows.Networking.Sockets.WebSocketServerCustomValidationRequestedEventArgs), Windows.Networking.Sockets.MessageWebSocket, Windows.Networking.Sockets.WebSocketServerCustomValidationRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeServerCustomValidationRequested(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_ServerCustomValidationRequested(eventCookie));
	}
}

interface MessageWebSocketControl : Windows.Networking.Sockets.IMessageWebSocketControl, Windows.Networking.Sockets.IWebSocketControl, Windows.Networking.Sockets.IWebSocketControl2
{
extern(Windows):
	final UINT32 MaxMessageSize()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IMessageWebSocketControl).get_MaxMessageSize(&_ret));
		return _ret;
	}
	final void MaxMessageSize(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IMessageWebSocketControl).set_MaxMessageSize(value));
	}
	final Windows.Networking.Sockets.SocketMessageType MessageType()
	{
		Windows.Networking.Sockets.SocketMessageType _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IMessageWebSocketControl).get_MessageType(&_ret));
		return _ret;
	}
	final void MessageType(Windows.Networking.Sockets.SocketMessageType value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IMessageWebSocketControl).set_MessageType(value));
	}
	final UINT32 OutboundBufferSizeInBytes()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketControl).get_OutboundBufferSizeInBytes(&_ret));
		return _ret;
	}
	final void OutboundBufferSizeInBytes(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketControl).set_OutboundBufferSizeInBytes(value));
	}
	final Windows.Security.Credentials.PasswordCredential ServerCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketControl).get_ServerCredential(&_ret));
		return _ret;
	}
	final void ServerCredential(Windows.Security.Credentials.PasswordCredential value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketControl).set_ServerCredential(value));
	}
	final Windows.Security.Credentials.PasswordCredential ProxyCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketControl).get_ProxyCredential(&_ret));
		return _ret;
	}
	final void ProxyCredential(Windows.Security.Credentials.PasswordCredential value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketControl).set_ProxyCredential(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) SupportedProtocols()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketControl).get_SupportedProtocols(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.ChainValidationResult) IgnorableServerCertificateErrors()
	{
		Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.ChainValidationResult) _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketControl2).get_IgnorableServerCertificateErrors(&_ret));
		return _ret;
	}
}

interface MessageWebSocketInformation : Windows.Networking.Sockets.IWebSocketInformation, Windows.Networking.Sockets.IWebSocketInformation2
{
extern(Windows):
	final Windows.Networking.HostName LocalAddress()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketInformation).get_LocalAddress(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.BandwidthStatistics BandwidthStatistics()
	{
		Windows.Networking.Sockets.BandwidthStatistics _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketInformation).get_BandwidthStatistics(&_ret));
		return _ret;
	}
	final HSTRING Protocol()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketInformation).get_Protocol(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Certificates.Certificate ServerCertificate()
	{
		Windows.Security.Cryptography.Certificates.Certificate _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketInformation2).get_ServerCertificate(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.SocketSslErrorSeverity ServerCertificateErrorSeverity()
	{
		Windows.Networking.Sockets.SocketSslErrorSeverity _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketInformation2).get_ServerCertificateErrorSeverity(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult) ServerCertificateErrors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult) _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketInformation2).get_ServerCertificateErrors(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) ServerIntermediateCertificates()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketInformation2).get_ServerIntermediateCertificates(&_ret));
		return _ret;
	}
}

interface MessageWebSocketMessageReceivedEventArgs : Windows.Networking.Sockets.IMessageWebSocketMessageReceivedEventArgs
{
extern(Windows):
	final Windows.Networking.Sockets.SocketMessageType MessageType()
	{
		Windows.Networking.Sockets.SocketMessageType _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IMessageWebSocketMessageReceivedEventArgs).get_MessageType(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.DataReader GetDataReader()
	{
		Windows.Storage.Streams.DataReader _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IMessageWebSocketMessageReceivedEventArgs).abi_GetDataReader(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IInputStream GetDataStream()
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IMessageWebSocketMessageReceivedEventArgs).abi_GetDataStream(&_ret));
		return _ret;
	}
}

interface SocketActivityContext : Windows.Networking.Sockets.ISocketActivityContext
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer Data()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.ISocketActivityContext).get_Data(&_ret));
		return _ret;
	}
}

interface SocketActivityInformation : Windows.Networking.Sockets.ISocketActivityInformation
{
extern(Windows):
	final GUID TaskId()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.ISocketActivityInformation).get_TaskId(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.ISocketActivityInformation).get_Id(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.SocketActivityKind SocketKind()
	{
		Windows.Networking.Sockets.SocketActivityKind _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.ISocketActivityInformation).get_SocketKind(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.SocketActivityContext Context()
	{
		Windows.Networking.Sockets.SocketActivityContext _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.ISocketActivityInformation).get_Context(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.DatagramSocket DatagramSocket()
	{
		Windows.Networking.Sockets.DatagramSocket _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.ISocketActivityInformation).get_DatagramSocket(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.StreamSocket StreamSocket()
	{
		Windows.Networking.Sockets.StreamSocket _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.ISocketActivityInformation).get_StreamSocket(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.StreamSocketListener StreamSocketListener()
	{
		Windows.Networking.Sockets.StreamSocketListener _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.ISocketActivityInformation).get_StreamSocketListener(&_ret));
		return _ret;
	}
}

interface SocketActivityTriggerDetails : Windows.Networking.Sockets.ISocketActivityTriggerDetails
{
extern(Windows):
	final Windows.Networking.Sockets.SocketActivityTriggerReason Reason()
	{
		Windows.Networking.Sockets.SocketActivityTriggerReason _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.ISocketActivityTriggerDetails).get_Reason(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.SocketActivityInformation SocketInformation()
	{
		Windows.Networking.Sockets.SocketActivityInformation _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.ISocketActivityTriggerDetails).get_SocketInformation(&_ret));
		return _ret;
	}
}

interface SocketError
{
}

interface StreamSocket : Windows.Networking.Sockets.IStreamSocket, Windows.Foundation.IClosable, Windows.Networking.Sockets.IStreamSocket2, Windows.Networking.Sockets.IStreamSocket3
{
extern(Windows):
	final Windows.Networking.Sockets.StreamSocketControl Control()
	{
		Windows.Networking.Sockets.StreamSocketControl _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocket).get_Control(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.StreamSocketInformation Information()
	{
		Windows.Networking.Sockets.StreamSocketInformation _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocket).get_Information(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IInputStream InputStream()
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocket).get_InputStream(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream OutputStream()
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocket).get_OutputStream(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ConnectWithEndpointPairAsync(Windows.Networking.EndpointPair endpointPair)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocket).abi_ConnectWithEndpointPairAsync(endpointPair, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ConnectAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocket).abi_ConnectAsync(remoteHostName, remoteServiceName, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ConnectWithEndpointPairAndProtectionLevelAsync(Windows.Networking.EndpointPair endpointPair, Windows.Networking.Sockets.SocketProtectionLevel protectionLevel)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocket).abi_ConnectWithEndpointPairAndProtectionLevelAsync(endpointPair, protectionLevel, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ConnectWithProtectionLevelAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Networking.Sockets.SocketProtectionLevel protectionLevel)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocket).abi_ConnectWithProtectionLevelAsync(remoteHostName, remoteServiceName, protectionLevel, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction UpgradeToSslAsync(Windows.Networking.Sockets.SocketProtectionLevel protectionLevel, Windows.Networking.HostName validationHostName)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocket).abi_UpgradeToSslAsync(protectionLevel, validationHostName, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Foundation.IAsyncAction ConnectWithProtectionLevelAndAdapterAsync(Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Networking.Sockets.SocketProtectionLevel protectionLevel, Windows.Networking.Connectivity.NetworkAdapter adapter)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocket2).abi_ConnectWithProtectionLevelAndAdapterAsync(remoteHostName, remoteServiceName, protectionLevel, adapter, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction CancelIOAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocket3).abi_CancelIOAsync(&_ret));
		return _ret;
	}
	final void EnableTransferOwnership(GUID taskId)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocket3).abi_EnableTransferOwnership(taskId));
	}
	final void EnableTransferOwnershipWithConnectedStandbyAction(GUID taskId, Windows.Networking.Sockets.SocketActivityConnectedStandbyAction connectedStandbyAction)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocket3).abi_EnableTransferOwnershipWithConnectedStandbyAction(taskId, connectedStandbyAction));
	}
	final void TransferOwnership(HSTRING socketId)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocket3).abi_TransferOwnership(socketId));
	}
	final void TransferOwnershipWithContext(HSTRING socketId, Windows.Networking.Sockets.SocketActivityContext data)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocket3).abi_TransferOwnershipWithContext(socketId, data));
	}
	final void TransferOwnershipWithContextAndKeepAliveTime(HSTRING socketId, Windows.Networking.Sockets.SocketActivityContext data, Windows.Foundation.TimeSpan keepAliveTime)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocket3).abi_TransferOwnershipWithContextAndKeepAliveTime(socketId, data, keepAliveTime));
	}
}

interface StreamSocketControl : Windows.Networking.Sockets.IStreamSocketControl, Windows.Networking.Sockets.IStreamSocketControl2, Windows.Networking.Sockets.IStreamSocketControl3
{
extern(Windows):
	final bool NoDelay()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketControl).get_NoDelay(&_ret));
		return _ret;
	}
	final void NoDelay(bool value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketControl).set_NoDelay(value));
	}
	final bool KeepAlive()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketControl).get_KeepAlive(&_ret));
		return _ret;
	}
	final void KeepAlive(bool value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketControl).set_KeepAlive(value));
	}
	final UINT32 OutboundBufferSizeInBytes()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketControl).get_OutboundBufferSizeInBytes(&_ret));
		return _ret;
	}
	final void OutboundBufferSizeInBytes(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketControl).set_OutboundBufferSizeInBytes(value));
	}
	final Windows.Networking.Sockets.SocketQualityOfService QualityOfService()
	{
		Windows.Networking.Sockets.SocketQualityOfService _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketControl).get_QualityOfService(&_ret));
		return _ret;
	}
	final void QualityOfService(Windows.Networking.Sockets.SocketQualityOfService value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketControl).set_QualityOfService(value));
	}
	final ubyte OutboundUnicastHopLimit()
	{
		ubyte _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketControl).get_OutboundUnicastHopLimit(&_ret));
		return _ret;
	}
	final void OutboundUnicastHopLimit(ubyte value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketControl).set_OutboundUnicastHopLimit(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.ChainValidationResult) IgnorableServerCertificateErrors()
	{
		Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.ChainValidationResult) _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketControl2).get_IgnorableServerCertificateErrors(&_ret));
		return _ret;
	}
	final bool SerializeConnectionAttempts()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketControl3).get_SerializeConnectionAttempts(&_ret));
		return _ret;
	}
	final void SerializeConnectionAttempts(bool value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketControl3).set_SerializeConnectionAttempts(value));
	}
	final Windows.Security.Cryptography.Certificates.Certificate ClientCertificate()
	{
		Windows.Security.Cryptography.Certificates.Certificate _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketControl3).get_ClientCertificate(&_ret));
		return _ret;
	}
	final void ClientCertificate(Windows.Security.Cryptography.Certificates.Certificate value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketControl3).set_ClientCertificate(value));
	}
}

interface StreamSocketInformation : Windows.Networking.Sockets.IStreamSocketInformation, Windows.Networking.Sockets.IStreamSocketInformation2
{
extern(Windows):
	final Windows.Networking.HostName LocalAddress()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketInformation).get_LocalAddress(&_ret));
		return _ret;
	}
	final HSTRING LocalPort()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketInformation).get_LocalPort(&_ret));
		return _ret;
	}
	final Windows.Networking.HostName RemoteHostName()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketInformation).get_RemoteHostName(&_ret));
		return _ret;
	}
	final Windows.Networking.HostName RemoteAddress()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketInformation).get_RemoteAddress(&_ret));
		return _ret;
	}
	final HSTRING RemoteServiceName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketInformation).get_RemoteServiceName(&_ret));
		return _ret;
	}
	final HSTRING RemotePort()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketInformation).get_RemotePort(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.RoundTripTimeStatistics RoundTripTimeStatistics()
	{
		Windows.Networking.Sockets.RoundTripTimeStatistics _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketInformation).get_RoundTripTimeStatistics(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.BandwidthStatistics BandwidthStatistics()
	{
		Windows.Networking.Sockets.BandwidthStatistics _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketInformation).get_BandwidthStatistics(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.SocketProtectionLevel ProtectionLevel()
	{
		Windows.Networking.Sockets.SocketProtectionLevel _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketInformation).get_ProtectionLevel(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer SessionKey()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketInformation).get_SessionKey(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.SocketSslErrorSeverity ServerCertificateErrorSeverity()
	{
		Windows.Networking.Sockets.SocketSslErrorSeverity _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketInformation2).get_ServerCertificateErrorSeverity(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult) ServerCertificateErrors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult) _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketInformation2).get_ServerCertificateErrors(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Certificates.Certificate ServerCertificate()
	{
		Windows.Security.Cryptography.Certificates.Certificate _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketInformation2).get_ServerCertificate(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) ServerIntermediateCertificates()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketInformation2).get_ServerIntermediateCertificates(&_ret));
		return _ret;
	}
}

interface StreamSocketListener : Windows.Networking.Sockets.IStreamSocketListener, Windows.Foundation.IClosable, Windows.Networking.Sockets.IStreamSocketListener2, Windows.Networking.Sockets.IStreamSocketListener3
{
extern(Windows):
	final Windows.Networking.Sockets.StreamSocketListenerControl Control()
	{
		Windows.Networking.Sockets.StreamSocketListenerControl _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListener).get_Control(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.StreamSocketListenerInformation Information()
	{
		Windows.Networking.Sockets.StreamSocketListenerInformation _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListener).get_Information(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction BindServiceNameAsync(HSTRING localServiceName)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListener).abi_BindServiceNameAsync(localServiceName, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction BindEndpointAsync(Windows.Networking.HostName localHostName, HSTRING localServiceName)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListener).abi_BindEndpointAsync(localHostName, localServiceName, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnConnectionReceived(void delegate(Windows.Networking.Sockets.StreamSocketListener, Windows.Networking.Sockets.StreamSocketListenerConnectionReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ConnectionReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.StreamSocketListener, Windows.Networking.Sockets.StreamSocketListenerConnectionReceivedEventArgs), Windows.Networking.Sockets.StreamSocketListener, Windows.Networking.Sockets.StreamSocketListenerConnectionReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeConnectionReceived(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_ConnectionReceived(eventCookie));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Foundation.IAsyncAction BindServiceNameWithProtectionLevelAsync(HSTRING localServiceName, Windows.Networking.Sockets.SocketProtectionLevel protectionLevel)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListener2).abi_BindServiceNameWithProtectionLevelAsync(localServiceName, protectionLevel, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction BindServiceNameWithProtectionLevelAndAdapterAsync(HSTRING localServiceName, Windows.Networking.Sockets.SocketProtectionLevel protectionLevel, Windows.Networking.Connectivity.NetworkAdapter adapter)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListener2).abi_BindServiceNameWithProtectionLevelAndAdapterAsync(localServiceName, protectionLevel, adapter, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction CancelIOAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListener3).abi_CancelIOAsync(&_ret));
		return _ret;
	}
	final void EnableTransferOwnership(GUID taskId)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListener3).abi_EnableTransferOwnership(taskId));
	}
	final void EnableTransferOwnershipWithConnectedStandbyAction(GUID taskId, Windows.Networking.Sockets.SocketActivityConnectedStandbyAction connectedStandbyAction)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListener3).abi_EnableTransferOwnershipWithConnectedStandbyAction(taskId, connectedStandbyAction));
	}
	final void TransferOwnership(HSTRING socketId)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListener3).abi_TransferOwnership(socketId));
	}
	final void TransferOwnershipWithContext(HSTRING socketId, Windows.Networking.Sockets.SocketActivityContext data)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListener3).abi_TransferOwnershipWithContext(socketId, data));
	}
}

interface StreamSocketListenerConnectionReceivedEventArgs : Windows.Networking.Sockets.IStreamSocketListenerConnectionReceivedEventArgs
{
extern(Windows):
	final Windows.Networking.Sockets.StreamSocket Socket()
	{
		Windows.Networking.Sockets.StreamSocket _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListenerConnectionReceivedEventArgs).get_Socket(&_ret));
		return _ret;
	}
}

interface StreamSocketListenerControl : Windows.Networking.Sockets.IStreamSocketListenerControl, Windows.Networking.Sockets.IStreamSocketListenerControl2
{
extern(Windows):
	final Windows.Networking.Sockets.SocketQualityOfService QualityOfService()
	{
		Windows.Networking.Sockets.SocketQualityOfService _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListenerControl).get_QualityOfService(&_ret));
		return _ret;
	}
	final void QualityOfService(Windows.Networking.Sockets.SocketQualityOfService value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListenerControl).set_QualityOfService(value));
	}
	final bool NoDelay()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListenerControl2).get_NoDelay(&_ret));
		return _ret;
	}
	final void NoDelay(bool value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListenerControl2).set_NoDelay(value));
	}
	final bool KeepAlive()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListenerControl2).get_KeepAlive(&_ret));
		return _ret;
	}
	final void KeepAlive(bool value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListenerControl2).set_KeepAlive(value));
	}
	final UINT32 OutboundBufferSizeInBytes()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListenerControl2).get_OutboundBufferSizeInBytes(&_ret));
		return _ret;
	}
	final void OutboundBufferSizeInBytes(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListenerControl2).set_OutboundBufferSizeInBytes(value));
	}
	final ubyte OutboundUnicastHopLimit()
	{
		ubyte _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListenerControl2).get_OutboundUnicastHopLimit(&_ret));
		return _ret;
	}
	final void OutboundUnicastHopLimit(ubyte value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListenerControl2).set_OutboundUnicastHopLimit(value));
	}
}

interface StreamSocketListenerInformation : Windows.Networking.Sockets.IStreamSocketListenerInformation
{
extern(Windows):
	final HSTRING LocalPort()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamSocketListenerInformation).get_LocalPort(&_ret));
		return _ret;
	}
}

interface StreamWebSocket : Windows.Networking.Sockets.IStreamWebSocket, Windows.Networking.Sockets.IWebSocket, Windows.Foundation.IClosable, Windows.Networking.Sockets.IStreamWebSocket2
{
extern(Windows):
	final Windows.Networking.Sockets.StreamWebSocketControl Control()
	{
		Windows.Networking.Sockets.StreamWebSocketControl _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamWebSocket).get_Control(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.StreamWebSocketInformation Information()
	{
		Windows.Networking.Sockets.StreamWebSocketInformation _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamWebSocket).get_Information(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IInputStream InputStream()
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamWebSocket).get_InputStream(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream OutputStream()
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocket).get_OutputStream(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ConnectAsync(Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocket).abi_ConnectAsync(uri, &_ret));
		return _ret;
	}
	final void SetRequestHeader(HSTRING headerName, HSTRING headerValue)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocket).abi_SetRequestHeader(headerName, headerValue));
	}
	final EventRegistrationToken OnClosed(void delegate(Windows.Networking.Sockets.IWebSocket, Windows.Networking.Sockets.WebSocketClosedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Closed(event!(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.IWebSocket, Windows.Networking.Sockets.WebSocketClosedEventArgs), Windows.Networking.Sockets.IWebSocket, Windows.Networking.Sockets.WebSocketClosedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeClosed(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_Closed(eventCookie));
	}
	final void CloseWithStatus(UINT16 code, HSTRING reason)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocket).abi_CloseWithStatus(code, reason));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final EventRegistrationToken OnServerCustomValidationRequested(void delegate(Windows.Networking.Sockets.StreamWebSocket, Windows.Networking.Sockets.WebSocketServerCustomValidationRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ServerCustomValidationRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Networking.Sockets.StreamWebSocket, Windows.Networking.Sockets.WebSocketServerCustomValidationRequestedEventArgs), Windows.Networking.Sockets.StreamWebSocket, Windows.Networking.Sockets.WebSocketServerCustomValidationRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeServerCustomValidationRequested(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_ServerCustomValidationRequested(eventCookie));
	}
}

interface StreamWebSocketControl : Windows.Networking.Sockets.IStreamWebSocketControl, Windows.Networking.Sockets.IWebSocketControl, Windows.Networking.Sockets.IWebSocketControl2
{
extern(Windows):
	final bool NoDelay()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamWebSocketControl).get_NoDelay(&_ret));
		return _ret;
	}
	final void NoDelay(bool value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IStreamWebSocketControl).set_NoDelay(value));
	}
	final UINT32 OutboundBufferSizeInBytes()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketControl).get_OutboundBufferSizeInBytes(&_ret));
		return _ret;
	}
	final void OutboundBufferSizeInBytes(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketControl).set_OutboundBufferSizeInBytes(value));
	}
	final Windows.Security.Credentials.PasswordCredential ServerCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketControl).get_ServerCredential(&_ret));
		return _ret;
	}
	final void ServerCredential(Windows.Security.Credentials.PasswordCredential value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketControl).set_ServerCredential(value));
	}
	final Windows.Security.Credentials.PasswordCredential ProxyCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketControl).get_ProxyCredential(&_ret));
		return _ret;
	}
	final void ProxyCredential(Windows.Security.Credentials.PasswordCredential value)
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketControl).set_ProxyCredential(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) SupportedProtocols()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketControl).get_SupportedProtocols(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.ChainValidationResult) IgnorableServerCertificateErrors()
	{
		Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.ChainValidationResult) _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketControl2).get_IgnorableServerCertificateErrors(&_ret));
		return _ret;
	}
}

interface StreamWebSocketInformation : Windows.Networking.Sockets.IWebSocketInformation, Windows.Networking.Sockets.IWebSocketInformation2
{
extern(Windows):
	final Windows.Networking.HostName LocalAddress()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketInformation).get_LocalAddress(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.BandwidthStatistics BandwidthStatistics()
	{
		Windows.Networking.Sockets.BandwidthStatistics _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketInformation).get_BandwidthStatistics(&_ret));
		return _ret;
	}
	final HSTRING Protocol()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketInformation).get_Protocol(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Certificates.Certificate ServerCertificate()
	{
		Windows.Security.Cryptography.Certificates.Certificate _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketInformation2).get_ServerCertificate(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.SocketSslErrorSeverity ServerCertificateErrorSeverity()
	{
		Windows.Networking.Sockets.SocketSslErrorSeverity _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketInformation2).get_ServerCertificateErrorSeverity(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult) ServerCertificateErrors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult) _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketInformation2).get_ServerCertificateErrors(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) ServerIntermediateCertificates()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketInformation2).get_ServerIntermediateCertificates(&_ret));
		return _ret;
	}
}

interface WebSocketClosedEventArgs : Windows.Networking.Sockets.IWebSocketClosedEventArgs
{
extern(Windows):
	final UINT16 Code()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketClosedEventArgs).get_Code(&_ret));
		return _ret;
	}
	final HSTRING Reason()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketClosedEventArgs).get_Reason(&_ret));
		return _ret;
	}
}

interface WebSocketError
{
}

interface WebSocketKeepAlive : Windows.ApplicationModel.Background.IBackgroundTask
{
extern(Windows):
	final void Run(Windows.ApplicationModel.Background.IBackgroundTaskInstance taskInstance)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Background.IBackgroundTask).abi_Run(taskInstance));
	}
}

interface WebSocketServerCustomValidationRequestedEventArgs : Windows.Networking.Sockets.IWebSocketServerCustomValidationRequestedEventArgs
{
extern(Windows):
	final Windows.Security.Cryptography.Certificates.Certificate ServerCertificate()
	{
		Windows.Security.Cryptography.Certificates.Certificate _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketServerCustomValidationRequestedEventArgs).get_ServerCertificate(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.SocketSslErrorSeverity ServerCertificateErrorSeverity()
	{
		Windows.Networking.Sockets.SocketSslErrorSeverity _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketServerCustomValidationRequestedEventArgs).get_ServerCertificateErrorSeverity(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult) ServerCertificateErrors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult) _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketServerCustomValidationRequestedEventArgs).get_ServerCertificateErrors(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) ServerIntermediateCertificates()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketServerCustomValidationRequestedEventArgs).get_ServerIntermediateCertificates(&_ret));
		return _ret;
	}
	final void Reject()
	{
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketServerCustomValidationRequestedEventArgs).abi_Reject());
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.Networking.Sockets.IWebSocketServerCustomValidationRequestedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
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