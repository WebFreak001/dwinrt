module Windows.Networking.Proximity;

import dwinrt;

@uuid("efa9da69-f6e1-49c9-a49e-8e0fc58fb911")
interface DeviceArrivedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Networking.Proximity.ProximityDevice sender);
}

@uuid("efa9da69-f6e2-49c9-a49e-8e0fc58fb911")
interface DeviceDepartedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Networking.Proximity.ProximityDevice sender);
}

@uuid("efab0782-f6e2-4675-a045-d8e320c24808")
interface MessageReceivedHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Networking.Proximity.ProximityDevice sender, Windows.Networking.Proximity.ProximityMessage message);
}

@uuid("efaa0b4a-f6e2-4d7d-856c-78fc8efc021e")
interface MessageTransmittedHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Networking.Proximity.ProximityDevice sender, INT64 messageId);
}

@uuid("eb6891ae-4f1e-4c66-bd0d-46924a942e08")
@WinrtFactory("Windows.Networking.Proximity.ConnectionRequestedEventArgs")
interface IConnectionRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PeerInformation(Windows.Networking.Proximity.PeerInformation* return_value);
}

@uuid("914b3b61-f6e1-47c4-a14c-148a1903d0c6")
@WinrtFactory("Windows.Networking.Proximity.PeerFinder")
interface IPeerFinderStatics : IInspectable
{
extern(Windows):
	HRESULT get_AllowBluetooth(bool* return_value);
	HRESULT set_AllowBluetooth(bool value);
	HRESULT get_AllowInfrastructure(bool* return_value);
	HRESULT set_AllowInfrastructure(bool value);
	HRESULT get_AllowWiFiDirect(bool* return_value);
	HRESULT set_AllowWiFiDirect(bool value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT set_DisplayName(HSTRING value);
	HRESULT get_SupportedDiscoveryTypes(Windows.Networking.Proximity.PeerDiscoveryTypes* return_value);
	HRESULT get_AlternateIdentities(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
	HRESULT abi_Start();
	HRESULT abi_StartWithMessage(HSTRING peerMessage);
	HRESULT abi_Stop();
	HRESULT add_TriggeredConnectionStateChanged(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.Networking.Proximity.TriggeredConnectionStateChangedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_TriggeredConnectionStateChanged(EventRegistrationToken cookie);
	HRESULT add_ConnectionRequested(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.Networking.Proximity.ConnectionRequestedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_ConnectionRequested(EventRegistrationToken cookie);
	HRESULT abi_FindAllPeersAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Proximity.PeerInformation))* return_asyncOp);
	HRESULT abi_ConnectAsync(Windows.Networking.Proximity.PeerInformation peerInformation, Windows.Foundation.IAsyncOperation!(Windows.Networking.Sockets.StreamSocket)* return_asyncOp);
}

@uuid("d6e73c65-fdd0-4b0b-9312-866408935d82")
@WinrtFactory("Windows.Networking.Proximity.PeerFinder")
interface IPeerFinderStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_Role(Windows.Networking.Proximity.PeerRole* return_value);
	HRESULT set_Role(Windows.Networking.Proximity.PeerRole value);
	HRESULT get_DiscoveryData(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_DiscoveryData(Windows.Storage.Streams.IBuffer value);
	HRESULT abi_CreateWatcher(Windows.Networking.Proximity.PeerWatcher* return_watcher);
}

@uuid("20024f08-9fff-45f4-b6e9-408b2ebef373")
@WinrtFactory("Windows.Networking.Proximity.PeerInformation")
interface IPeerInformation : IInspectable
{
extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
}

@uuid("b20f612a-dbd0-40f8-95bd-2d4209c7836f")
@WinrtFactory("Windows.Networking.Proximity.PeerInformation")
interface IPeerInformation3 : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_DiscoveryData(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("ecc7ccad-1b70-4e8b-92db-bbe781419308")
@WinrtFactory("Windows.Networking.Proximity.PeerInformation")
interface IPeerInformationWithHostAndService : IInspectable
{
extern(Windows):
	HRESULT get_HostName(Windows.Networking.HostName* return_value);
	HRESULT get_ServiceName(HSTRING* return_value);
}

@uuid("3cee21f8-2fa6-4679-9691-03c94a420f34")
@WinrtFactory("Windows.Networking.Proximity.PeerWatcher")
interface IPeerWatcher : IInspectable
{
extern(Windows):
	HRESULT add_Added(Windows.Foundation.TypedEventHandler!(Windows.Networking.Proximity.PeerWatcher, Windows.Networking.Proximity.PeerInformation) handler, EventRegistrationToken* return_token);
	HRESULT remove_Added(EventRegistrationToken token);
	HRESULT add_Removed(Windows.Foundation.TypedEventHandler!(Windows.Networking.Proximity.PeerWatcher, Windows.Networking.Proximity.PeerInformation) handler, EventRegistrationToken* return_token);
	HRESULT remove_Removed(EventRegistrationToken token);
	HRESULT add_Updated(Windows.Foundation.TypedEventHandler!(Windows.Networking.Proximity.PeerWatcher, Windows.Networking.Proximity.PeerInformation) handler, EventRegistrationToken* return_token);
	HRESULT remove_Updated(EventRegistrationToken token);
	HRESULT add_EnumerationCompleted(Windows.Foundation.TypedEventHandler!(Windows.Networking.Proximity.PeerWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_EnumerationCompleted(EventRegistrationToken token);
	HRESULT add_Stopped(Windows.Foundation.TypedEventHandler!(Windows.Networking.Proximity.PeerWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Stopped(EventRegistrationToken token);
	HRESULT get_Status(Windows.Networking.Proximity.PeerWatcherStatus* return_status);
	HRESULT abi_Start();
	HRESULT abi_Stop();
}

@uuid("efa8a552-f6e1-4329-a0fc-ab6b0fd28262")
@WinrtFactory("Windows.Networking.Proximity.ProximityDevice")
interface IProximityDevice : IInspectable
{
extern(Windows):
	HRESULT abi_SubscribeForMessage(HSTRING messageType, Windows.Networking.Proximity.MessageReceivedHandler messageReceivedHandler, INT64* return_subscriptionId);
	HRESULT abi_PublishMessage(HSTRING messageType, HSTRING message, INT64* return_messageId);
	HRESULT abi_PublishMessageWithCallback(HSTRING messageType, HSTRING message, Windows.Networking.Proximity.MessageTransmittedHandler messageTransmittedHandler, INT64* return_messageId);
	HRESULT abi_PublishBinaryMessage(HSTRING messageType, Windows.Storage.Streams.IBuffer message, INT64* return_messageId);
	HRESULT abi_PublishBinaryMessageWithCallback(HSTRING messageType, Windows.Storage.Streams.IBuffer message, Windows.Networking.Proximity.MessageTransmittedHandler messageTransmittedHandler, INT64* return_messageId);
	HRESULT abi_PublishUriMessage(Windows.Foundation.Uri message, INT64* return_messageId);
	HRESULT abi_PublishUriMessageWithCallback(Windows.Foundation.Uri message, Windows.Networking.Proximity.MessageTransmittedHandler messageTransmittedHandler, INT64* return_messageId);
	HRESULT abi_StopSubscribingForMessage(INT64 subscriptionId);
	HRESULT abi_StopPublishingMessage(INT64 messageId);
	HRESULT add_DeviceArrived(Windows.Networking.Proximity.DeviceArrivedEventHandler arrivedHandler, EventRegistrationToken* return_cookie);
	HRESULT remove_DeviceArrived(EventRegistrationToken cookie);
	HRESULT add_DeviceDeparted(Windows.Networking.Proximity.DeviceDepartedEventHandler departedHandler, EventRegistrationToken* return_cookie);
	HRESULT remove_DeviceDeparted(EventRegistrationToken cookie);
	HRESULT get_MaxMessageBytes(UINT32* return_value);
	HRESULT get_BitsPerSecond(UINT64* return_value);
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("914ba01d-f6e1-47c4-a14c-148a1903d0c6")
@WinrtFactory("Windows.Networking.Proximity.ProximityDevice")
interface IProximityDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_selector);
	HRESULT abi_GetDefault(Windows.Networking.Proximity.ProximityDevice* return_proximityDevice);
	HRESULT abi_FromId(HSTRING deviceId, Windows.Networking.Proximity.ProximityDevice* return_proximityDevice);
}

@uuid("efab0782-f6e1-4675-a045-d8e320c24808")
@WinrtFactory("Windows.Networking.Proximity.ProximityMessage")
interface IProximityMessage : IInspectable
{
extern(Windows):
	HRESULT get_MessageType(HSTRING* return_value);
	HRESULT get_SubscriptionId(INT64* return_value);
	HRESULT get_Data(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_DataAsString(HSTRING* return_value);
}

@uuid("c6a780ad-f6e1-4d54-96e2-33f620bca88a")
@WinrtFactory("Windows.Networking.Proximity.TriggeredConnectionStateChangedEventArgs")
interface ITriggeredConnectionStateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_State(Windows.Networking.Proximity.TriggeredConnectState* return_value);
	HRESULT get_Id(UINT32* return_value);
	HRESULT get_Socket(Windows.Networking.Sockets.StreamSocket* return_value);
}

interface ConnectionRequestedEventArgs : Windows.Networking.Proximity.IConnectionRequestedEventArgs
{
extern(Windows):
	final Windows.Networking.Proximity.PeerInformation PeerInformation()
	{
		Windows.Networking.Proximity.PeerInformation _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IConnectionRequestedEventArgs).get_PeerInformation(&_ret));
		return _ret;
	}
}

interface PeerFinder
{
}

interface PeerInformation : Windows.Networking.Proximity.IPeerInformation, Windows.Networking.Proximity.IPeerInformation3, Windows.Networking.Proximity.IPeerInformationWithHostAndService
{
extern(Windows):
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IPeerInformation).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IPeerInformation3).get_Id(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer DiscoveryData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IPeerInformation3).get_DiscoveryData(&_ret));
		return _ret;
	}
	final Windows.Networking.HostName HostName()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IPeerInformationWithHostAndService).get_HostName(&_ret));
		return _ret;
	}
	final HSTRING ServiceName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IPeerInformationWithHostAndService).get_ServiceName(&_ret));
		return _ret;
	}
}

interface PeerWatcher : Windows.Networking.Proximity.IPeerWatcher
{
extern(Windows):
	final Windows.Networking.Proximity.PeerWatcherStatus Status()
	{
		Windows.Networking.Proximity.PeerWatcherStatus _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IPeerWatcher).get_Status(&_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Networking.Proximity.IPeerWatcher).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Networking.Proximity.IPeerWatcher).abi_Stop());
	}
}

interface ProximityDevice : Windows.Networking.Proximity.IProximityDevice
{
extern(Windows):
	final INT64 SubscribeForMessage(HSTRING messageType, Windows.Networking.Proximity.MessageReceivedHandler messageReceivedHandler)
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IProximityDevice).abi_SubscribeForMessage(messageType, messageReceivedHandler, &_ret));
		return _ret;
	}
	final INT64 PublishMessage(HSTRING messageType, HSTRING message)
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IProximityDevice).abi_PublishMessage(messageType, message, &_ret));
		return _ret;
	}
	final INT64 PublishMessageWithCallback(HSTRING messageType, HSTRING message, Windows.Networking.Proximity.MessageTransmittedHandler messageTransmittedHandler)
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IProximityDevice).abi_PublishMessageWithCallback(messageType, message, messageTransmittedHandler, &_ret));
		return _ret;
	}
	final INT64 PublishBinaryMessage(HSTRING messageType, Windows.Storage.Streams.IBuffer message)
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IProximityDevice).abi_PublishBinaryMessage(messageType, message, &_ret));
		return _ret;
	}
	final INT64 PublishBinaryMessageWithCallback(HSTRING messageType, Windows.Storage.Streams.IBuffer message, Windows.Networking.Proximity.MessageTransmittedHandler messageTransmittedHandler)
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IProximityDevice).abi_PublishBinaryMessageWithCallback(messageType, message, messageTransmittedHandler, &_ret));
		return _ret;
	}
	final INT64 PublishUriMessage(Windows.Foundation.Uri message)
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IProximityDevice).abi_PublishUriMessage(message, &_ret));
		return _ret;
	}
	final INT64 PublishUriMessageWithCallback(Windows.Foundation.Uri message, Windows.Networking.Proximity.MessageTransmittedHandler messageTransmittedHandler)
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IProximityDevice).abi_PublishUriMessageWithCallback(message, messageTransmittedHandler, &_ret));
		return _ret;
	}
	final void StopSubscribingForMessage(INT64 subscriptionId)
	{
		Debug.OK(this.as!(Windows.Networking.Proximity.IProximityDevice).abi_StopSubscribingForMessage(subscriptionId));
	}
	final void StopPublishingMessage(INT64 messageId)
	{
		Debug.OK(this.as!(Windows.Networking.Proximity.IProximityDevice).abi_StopPublishingMessage(messageId));
	}
	final UINT32 MaxMessageBytes()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IProximityDevice).get_MaxMessageBytes(&_ret));
		return _ret;
	}
	final UINT64 BitsPerSecond()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IProximityDevice).get_BitsPerSecond(&_ret));
		return _ret;
	}
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IProximityDevice).get_DeviceId(&_ret));
		return _ret;
	}
}

interface ProximityMessage : Windows.Networking.Proximity.IProximityMessage
{
extern(Windows):
	final HSTRING MessageType()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IProximityMessage).get_MessageType(&_ret));
		return _ret;
	}
	final INT64 SubscriptionId()
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IProximityMessage).get_SubscriptionId(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Data()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IProximityMessage).get_Data(&_ret));
		return _ret;
	}
	final HSTRING DataAsString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.IProximityMessage).get_DataAsString(&_ret));
		return _ret;
	}
}

interface TriggeredConnectionStateChangedEventArgs : Windows.Networking.Proximity.ITriggeredConnectionStateChangedEventArgs
{
extern(Windows):
	final Windows.Networking.Proximity.TriggeredConnectState State()
	{
		Windows.Networking.Proximity.TriggeredConnectState _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.ITriggeredConnectionStateChangedEventArgs).get_State(&_ret));
		return _ret;
	}
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.ITriggeredConnectionStateChangedEventArgs).get_Id(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.StreamSocket Socket()
	{
		Windows.Networking.Sockets.StreamSocket _ret;
		Debug.OK(this.as!(Windows.Networking.Proximity.ITriggeredConnectionStateChangedEventArgs).get_Socket(&_ret));
		return _ret;
	}
}

@bitflags
enum PeerDiscoveryTypes
{
	None = 0x0,
	Browse = 0x1,
	Triggered = 0x2
}

enum PeerRole
{
	Peer = 0,
	Host = 1,
	Client = 2
}

enum PeerWatcherStatus
{
	Created = 0,
	Started = 1,
	EnumerationCompleted = 2,
	Stopping = 3,
	Stopped = 4,
	Aborted = 5
}

enum TriggeredConnectState
{
	PeerFound = 0,
	Listening = 1,
	Connecting = 2,
	Completed = 3,
	Canceled = 4,
	Failed = 5
}