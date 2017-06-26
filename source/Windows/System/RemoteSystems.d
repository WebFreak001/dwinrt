module Windows.System.RemoteSystems;

import dwinrt;

@uuid("8108e380-7f8a-44e4-92cd-03b6469b94a3")
@WinrtFactory("Windows.System.RemoteSystems.KnownRemoteSystemCapabilities")
interface IKnownRemoteSystemCapabilitiesStatics : IInspectable
{
extern(Windows):
	HRESULT get_AppService(HSTRING* return_value);
	HRESULT get_LaunchUri(HSTRING* return_value);
	HRESULT get_RemoteSession(HSTRING* return_value);
	HRESULT get_SpatialEntity(HSTRING* return_value);
}

@uuid("ed5838cd-1e10-4a8c-b4a6-4e5fd6f97721")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystem")
interface IRemoteSystem : IInspectable
{
extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Kind(HSTRING* return_value);
	HRESULT get_Status(Windows.System.RemoteSystems.RemoteSystemStatus* return_value);
	HRESULT get_IsAvailableByProximity(bool* return_value);
}

@uuid("09dfe4ec-fb8b-4a08-a758-6876435d769e")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystem")
interface IRemoteSystem2 : IInspectable
{
extern(Windows):
	HRESULT get_IsAvailableBySpatialProximity(bool* return_value);
	HRESULT abi_GetCapabilitySupportedAsync(HSTRING capabilityName, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("8f39560f-e534-4697-8836-7abea151516e")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemAddedEventArgs")
interface IRemoteSystemAddedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_RemoteSystem(Windows.System.RemoteSystems.RemoteSystem* return_value);
}

@uuid("6b0dde8e-04d0-40f4-a27f-c2acbbd6b734")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemAuthorizationKindFilter")
interface IRemoteSystemAuthorizationKindFilter : IInspectable
{
extern(Windows):
	HRESULT get_RemoteSystemAuthorizationKind(Windows.System.RemoteSystems.RemoteSystemAuthorizationKind* return_value);
}

@uuid("ad65df4d-b66a-45a4-8177-8caed75d9e5a")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemAuthorizationKindFilter")
interface IRemoteSystemAuthorizationKindFilterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.System.RemoteSystems.RemoteSystemAuthorizationKind remoteSystemAuthorizationKind, Windows.System.RemoteSystems.RemoteSystemAuthorizationKindFilter* return_result);
}

@uuid("84ed4104-8d5e-4d72-8238-7621576c7a67")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemConnectionRequest")
interface IRemoteSystemConnectionRequest : IInspectable
{
extern(Windows):
	HRESULT get_RemoteSystem(Windows.System.RemoteSystems.RemoteSystem* return_value);
}

@uuid("aa0a0a20-baeb-4575-b530-810bb9786334")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemConnectionRequest")
interface IRemoteSystemConnectionRequestFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.System.RemoteSystems.RemoteSystem remoteSystem, Windows.System.RemoteSystems.RemoteSystemConnectionRequest* return_result);
}

@uuid("42d9041f-ee5a-43da-ac6a-6fee25460741")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemDiscoveryTypeFilter")
interface IRemoteSystemDiscoveryTypeFilter : IInspectable
{
extern(Windows):
	HRESULT get_RemoteSystemDiscoveryType(Windows.System.RemoteSystems.RemoteSystemDiscoveryType* return_value);
}

@uuid("9f9eb993-c260-4161-92f2-9c021f23fe5d")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemDiscoveryTypeFilter")
interface IRemoteSystemDiscoveryTypeFilterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.System.RemoteSystems.RemoteSystemDiscoveryType discoveryType, Windows.System.RemoteSystems.RemoteSystemDiscoveryTypeFilter* return_result);
}

@uuid("4a3ba9e4-99eb-45eb-ba16-0367728ff374")
interface IRemoteSystemFilter : IInspectable
{
}

@uuid("38e1c9ec-22c3-4ef6-901a-bbb1c7aad4ed")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemKindFilter")
interface IRemoteSystemKindFilter : IInspectable
{
extern(Windows):
	HRESULT get_RemoteSystemKinds(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}

@uuid("a1fb18ee-99ea-40bc-9a39-c670aa804a28")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemKindFilter")
interface IRemoteSystemKindFilterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(HSTRING) remoteSystemKinds, Windows.System.RemoteSystems.RemoteSystemKindFilter* return_result);
}

@uuid("f6317633-ab14-41d0-9553-796aadb882db")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemKinds")
interface IRemoteSystemKindStatics : IInspectable
{
extern(Windows):
	HRESULT get_Phone(HSTRING* return_value);
	HRESULT get_Hub(HSTRING* return_value);
	HRESULT get_Holographic(HSTRING* return_value);
	HRESULT get_Desktop(HSTRING* return_value);
	HRESULT get_Xbox(HSTRING* return_value);
}

@uuid("8b3d16bb-7306-49ea-b7df-67d5714cb013")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemRemovedEventArgs")
interface IRemoteSystemRemovedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_RemoteSystemId(HSTRING* return_value);
}

@uuid("69476a01-9ada-490f-9549-d31cb14c9e95")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSession")
interface IRemoteSystemSession_Base : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_ControllerDisplayName(HSTRING* return_value);
	HRESULT add_Disconnected(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSession, Windows.System.RemoteSystems.RemoteSystemSessionDisconnectedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Disconnected(EventRegistrationToken token);
	HRESULT abi_CreateParticipantWatcher(Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher* return_result);
	HRESULT abi_SendInvitationAsync(Windows.System.RemoteSystems.RemoteSystem invitee, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}
@uuid("69476a01-9ada-490f-9549-d31cb14c9e95")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSession")
interface IRemoteSystemSession : IRemoteSystemSession_Base, Windows.Foundation.IClosable {}

@uuid("d585d754-bc97-4c39-99b4-beca76e04c3f")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionAddedEventArgs")
interface IRemoteSystemSessionAddedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_SessionInfo(Windows.System.RemoteSystems.RemoteSystemSessionInfo* return_value);
}

@uuid("e48b2dd2-6820-4867-b425-d89c0a3ef7ba")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionController")
interface IRemoteSystemSessionController : IInspectable
{
extern(Windows):
	HRESULT add_JoinRequested(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionController, Windows.System.RemoteSystems.RemoteSystemSessionJoinRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_JoinRequested(EventRegistrationToken token);
	HRESULT abi_RemoveParticipantAsync(Windows.System.RemoteSystems.RemoteSystemSessionParticipant pParticipant, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_CreateSessionAsync(Windows.Foundation.IAsyncOperation!(Windows.System.RemoteSystems.RemoteSystemSessionCreationResult)* return_operation);
}

@uuid("bfcc2f6b-ac3d-4199-82cd-6670a773ef2e")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionController")
interface IRemoteSystemSessionControllerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateController(HSTRING displayName, Windows.System.RemoteSystems.RemoteSystemSessionController* return_result);
	HRESULT abi_CreateControllerWithSessionOptions(HSTRING displayName, Windows.System.RemoteSystems.RemoteSystemSessionOptions options, Windows.System.RemoteSystems.RemoteSystemSessionController* return_result);
}

@uuid("a79812c2-37de-448c-8b83-a30aa3c4ead6")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionCreationResult")
interface IRemoteSystemSessionCreationResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.System.RemoteSystems.RemoteSystemSessionCreationStatus* return_value);
	HRESULT get_Session(Windows.System.RemoteSystems.RemoteSystemSession* return_value);
}

@uuid("de0bc69b-77c5-461c-8209-7c6c5d3111ab")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionDisconnectedEventArgs")
interface IRemoteSystemSessionDisconnectedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reason(Windows.System.RemoteSystems.RemoteSystemSessionDisconnectedReason* return_value);
}

@uuid("ff4df648-8b0a-4e9a-9905-69e4b841c588")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionInfo")
interface IRemoteSystemSessionInfo : IInspectable
{
extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_ControllerDisplayName(HSTRING* return_value);
	HRESULT abi_JoinAsync(Windows.Foundation.IAsyncOperation!(Windows.System.RemoteSystems.RemoteSystemSessionJoinResult)* return_operation);
}

@uuid("3e32cc91-51d7-4766-a121-25516c3b8294")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionInvitation")
interface IRemoteSystemSessionInvitation : IInspectable
{
extern(Windows):
	HRESULT get_Sender(Windows.System.RemoteSystems.RemoteSystem* return_value);
	HRESULT get_SessionInfo(Windows.System.RemoteSystems.RemoteSystemSessionInfo* return_value);
}

@uuid("08f4003f-bc71-49e1-874a-31ddff9a27b9")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionInvitationListener")
interface IRemoteSystemSessionInvitationListener : IInspectable
{
extern(Windows):
	HRESULT add_InvitationReceived(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionInvitationListener, Windows.System.RemoteSystems.RemoteSystemSessionInvitationReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_InvitationReceived(EventRegistrationToken token);
}

@uuid("5e964a2d-a10d-4edb-8dea-54d20ac19543")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionInvitationReceivedEventArgs")
interface IRemoteSystemSessionInvitationReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Invitation(Windows.System.RemoteSystems.RemoteSystemSessionInvitation* return_value);
}

@uuid("20600068-7994-4331-86d1-d89d882585ee")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionJoinRequest")
interface IRemoteSystemSessionJoinRequest : IInspectable
{
extern(Windows):
	HRESULT get_Participant(Windows.System.RemoteSystems.RemoteSystemSessionParticipant* return_value);
	HRESULT abi_Accept();
}

@uuid("dbca4fc3-82b9-4816-9c24-e40e61774bd8")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionJoinRequestedEventArgs")
interface IRemoteSystemSessionJoinRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_JoinRequest(Windows.System.RemoteSystems.RemoteSystemSessionJoinRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("ce7b1f04-a03e-41a4-900b-1e79328c1267")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionJoinResult")
interface IRemoteSystemSessionJoinResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.System.RemoteSystems.RemoteSystemSessionJoinStatus* return_value);
	HRESULT get_Session(Windows.System.RemoteSystems.RemoteSystemSession* return_value);
}

@uuid("9524d12a-73d9-4c10-b751-c26784437127")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionMessageChannel")
interface IRemoteSystemSessionMessageChannel : IInspectable
{
extern(Windows):
	HRESULT get_Session(Windows.System.RemoteSystems.RemoteSystemSession* return_value);
	HRESULT abi_BroadcastValueSetAsync(Windows.Foundation.Collections.ValueSet messageData, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_SendValueSetAsync(Windows.Foundation.Collections.ValueSet messageData, Windows.System.RemoteSystems.RemoteSystemSessionParticipant participant, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_SendValueSetToParticipantsAsync(Windows.Foundation.Collections.ValueSet messageData, Windows.Foundation.Collections.IIterable!(Windows.System.RemoteSystems.RemoteSystemSessionParticipant) participants, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT add_ValueSetReceived(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionMessageChannel, Windows.System.RemoteSystems.RemoteSystemSessionValueSetReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ValueSetReceived(EventRegistrationToken token);
}

@uuid("295e1c4a-bd16-4298-b7ce-415482b0e11d")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionMessageChannel")
interface IRemoteSystemSessionMessageChannelFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.System.RemoteSystems.RemoteSystemSession session, HSTRING channelName, Windows.System.RemoteSystems.RemoteSystemSessionMessageChannel* return_result);
	HRESULT abi_CreateWithReliability(Windows.System.RemoteSystems.RemoteSystemSession session, HSTRING channelName, Windows.System.RemoteSystems.RemoteSystemSessionMessageChannelReliability reliability, Windows.System.RemoteSystems.RemoteSystemSessionMessageChannel* return_result);
}

@uuid("740ed755-8418-4f01-9353-e21c9ecc6cfc")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionOptions")
interface IRemoteSystemSessionOptions : IInspectable
{
extern(Windows):
	HRESULT get_IsInviteOnly(bool* return_value);
	HRESULT set_IsInviteOnly(bool value);
}

@uuid("7e90058c-acf9-4729-8a17-44e7baed5dcc")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionParticipant")
interface IRemoteSystemSessionParticipant : IInspectable
{
extern(Windows):
	HRESULT get_RemoteSystem(Windows.System.RemoteSystems.RemoteSystem* return_value);
	HRESULT abi_GetHostNames(Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName)* return_result);
}

@uuid("d35a57d8-c9a1-4bb7-b6b0-79bb91adf93d")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionParticipantAddedEventArgs")
interface IRemoteSystemSessionParticipantAddedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Participant(Windows.System.RemoteSystems.RemoteSystemSessionParticipant* return_value);
}

@uuid("866ef088-de68-4abf-88a1-f90d16274192")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionParticipantRemovedEventArgs")
interface IRemoteSystemSessionParticipantRemovedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Participant(Windows.System.RemoteSystems.RemoteSystemSessionParticipant* return_value);
}

@uuid("dcdd02cc-aa87-4d79-b6cc-4459b3e92075")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher")
interface IRemoteSystemSessionParticipantWatcher : IInspectable
{
extern(Windows):
	HRESULT abi_Start();
	HRESULT abi_Stop();
	HRESULT get_Status(Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcherStatus* return_value);
	HRESULT add_Added(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher, Windows.System.RemoteSystems.RemoteSystemSessionParticipantAddedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Added(EventRegistrationToken token);
	HRESULT add_Removed(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher, Windows.System.RemoteSystems.RemoteSystemSessionParticipantRemovedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Removed(EventRegistrationToken token);
	HRESULT add_EnumerationCompleted(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_EnumerationCompleted(EventRegistrationToken token);
}

@uuid("af82914e-39a1-4dea-9d63-43798d5bbbd0")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionRemovedEventArgs")
interface IRemoteSystemSessionRemovedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_SessionInfo(Windows.System.RemoteSystems.RemoteSystemSessionInfo* return_value);
}

@uuid("8524899f-fd20-44e3-9565-e75a3b14c66e")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSession")
interface IRemoteSystemSessionStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWatcher(Windows.System.RemoteSystems.RemoteSystemSessionWatcher* return_result);
}

@uuid("16875069-231e-4c91-8ec8-b3a39d9e55a3")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionUpdatedEventArgs")
interface IRemoteSystemSessionUpdatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_SessionInfo(Windows.System.RemoteSystems.RemoteSystemSessionInfo* return_value);
}

@uuid("06f31785-2da5-4e58-a78f-9e8d0784ee25")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionValueSetReceivedEventArgs")
interface IRemoteSystemSessionValueSetReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Sender(Windows.System.RemoteSystems.RemoteSystemSessionParticipant* return_value);
	HRESULT get_Message(Windows.Foundation.Collections.ValueSet* return_value);
}

@uuid("8003e340-0c41-4a62-b6d7-bdbe2b19be2d")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionWatcher")
interface IRemoteSystemSessionWatcher : IInspectable
{
extern(Windows):
	HRESULT abi_Start();
	HRESULT abi_Stop();
	HRESULT get_Status(Windows.System.RemoteSystems.RemoteSystemSessionWatcherStatus* return_value);
	HRESULT add_Added(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionWatcher, Windows.System.RemoteSystems.RemoteSystemSessionAddedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Added(EventRegistrationToken token);
	HRESULT add_Updated(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionWatcher, Windows.System.RemoteSystems.RemoteSystemSessionUpdatedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Updated(EventRegistrationToken token);
	HRESULT add_Removed(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionWatcher, Windows.System.RemoteSystems.RemoteSystemSessionRemovedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Removed(EventRegistrationToken token);
}

@uuid("a485b392-ff2b-4b47-be62-743f2f140f30")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystem")
interface IRemoteSystemStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FindByHostNameAsync(Windows.Networking.HostName hostName, Windows.Foundation.IAsyncOperation!(Windows.System.RemoteSystems.RemoteSystem)* return_operation);
	HRESULT abi_CreateWatcher(Windows.System.RemoteSystems.RemoteSystemWatcher* return_result);
	HRESULT abi_CreateWatcherWithFilters(Windows.Foundation.Collections.IIterable!(Windows.System.RemoteSystems.IRemoteSystemFilter) filters, Windows.System.RemoteSystems.RemoteSystemWatcher* return_result);
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.System.RemoteSystems.RemoteSystemAccessStatus)* return_operation);
}

@uuid("0c98edca-6f99-4c52-a272-ea4f36471744")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystem")
interface IRemoteSystemStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_IsAuthorizationKindEnabled(Windows.System.RemoteSystems.RemoteSystemAuthorizationKind kind, bool* return_value);
}

@uuid("0c39514e-cbb6-4777-8534-2e0c521affa2")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemStatusTypeFilter")
interface IRemoteSystemStatusTypeFilter : IInspectable
{
extern(Windows):
	HRESULT get_RemoteSystemStatusType(Windows.System.RemoteSystems.RemoteSystemStatusType* return_value);
}

@uuid("33cf78fa-d724-4125-ac7a-8d281e44c949")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemStatusTypeFilter")
interface IRemoteSystemStatusTypeFilterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.System.RemoteSystems.RemoteSystemStatusType remoteSystemStatusType, Windows.System.RemoteSystems.RemoteSystemStatusTypeFilter* return_result);
}

@uuid("7502ff0e-dbcb-4155-b4ca-b30a04f27627")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemUpdatedEventArgs")
interface IRemoteSystemUpdatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_RemoteSystem(Windows.System.RemoteSystems.RemoteSystem* return_value);
}

@uuid("5d600c7e-2c07-48c5-889c-455d2b099771")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemWatcher")
interface IRemoteSystemWatcher : IInspectable
{
extern(Windows):
	HRESULT abi_Start();
	HRESULT abi_Stop();
	HRESULT add_RemoteSystemAdded(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemWatcher, Windows.System.RemoteSystems.RemoteSystemAddedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RemoteSystemAdded(EventRegistrationToken token);
	HRESULT add_RemoteSystemUpdated(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemWatcher, Windows.System.RemoteSystems.RemoteSystemUpdatedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RemoteSystemUpdated(EventRegistrationToken token);
	HRESULT add_RemoteSystemRemoved(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemWatcher, Windows.System.RemoteSystems.RemoteSystemRemovedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RemoteSystemRemoved(EventRegistrationToken token);
}

interface KnownRemoteSystemCapabilities
{
	private static Windows.System.RemoteSystems.IKnownRemoteSystemCapabilitiesStatics _staticInstance;
	public static Windows.System.RemoteSystems.IKnownRemoteSystemCapabilitiesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.RemoteSystems.IKnownRemoteSystemCapabilitiesStatics);
		return _staticInstance;
	}
	static HSTRING AppService()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.System.RemoteSystems.IKnownRemoteSystemCapabilitiesStatics).get_AppService(&_ret));
		return _ret;
	}
	static HSTRING LaunchUri()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.System.RemoteSystems.IKnownRemoteSystemCapabilitiesStatics).get_LaunchUri(&_ret));
		return _ret;
	}
	static HSTRING RemoteSession()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.System.RemoteSystems.IKnownRemoteSystemCapabilitiesStatics).get_RemoteSession(&_ret));
		return _ret;
	}
	static HSTRING SpatialEntity()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.System.RemoteSystems.IKnownRemoteSystemCapabilitiesStatics).get_SpatialEntity(&_ret));
		return _ret;
	}
}

interface RemoteSystem : Windows.System.RemoteSystems.IRemoteSystem, Windows.System.RemoteSystems.IRemoteSystem2
{
extern(Windows):
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystem).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystem).get_Id(&_ret));
		return _ret;
	}
	final HSTRING Kind()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystem).get_Kind(&_ret));
		return _ret;
	}
	final Windows.System.RemoteSystems.RemoteSystemStatus Status()
	{
		Windows.System.RemoteSystems.RemoteSystemStatus _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystem).get_Status(&_ret));
		return _ret;
	}
	final bool IsAvailableByProximity()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystem).get_IsAvailableByProximity(&_ret));
		return _ret;
	}
	final bool IsAvailableBySpatialProximity()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystem2).get_IsAvailableBySpatialProximity(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) GetCapabilitySupportedAsync(HSTRING capabilityName)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystem2).abi_GetCapabilitySupportedAsync(capabilityName, &_ret));
		return _ret;
	}

	private static Windows.System.RemoteSystems.IRemoteSystemStatics _staticInstance;
	public static Windows.System.RemoteSystems.IRemoteSystemStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.RemoteSystems.IRemoteSystemStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.System.RemoteSystems.RemoteSystem) FindByHostNameAsync(Windows.Networking.HostName hostName)
	{
		Windows.Foundation.IAsyncOperation!(Windows.System.RemoteSystems.RemoteSystem) _ret;
		Debug.OK(staticInstance.as!(Windows.System.RemoteSystems.IRemoteSystemStatics).abi_FindByHostNameAsync(hostName, &_ret));
		return _ret;
	}
	static Windows.System.RemoteSystems.RemoteSystemWatcher CreateWatcher()
	{
		Windows.System.RemoteSystems.RemoteSystemWatcher _ret;
		Debug.OK(staticInstance.as!(Windows.System.RemoteSystems.IRemoteSystemStatics).abi_CreateWatcher(&_ret));
		return _ret;
	}
	static Windows.System.RemoteSystems.RemoteSystemWatcher CreateWatcherWithFilters(Windows.Foundation.Collections.IIterable!(Windows.System.RemoteSystems.IRemoteSystemFilter) filters)
	{
		Windows.System.RemoteSystems.RemoteSystemWatcher _ret;
		Debug.OK(staticInstance.as!(Windows.System.RemoteSystems.IRemoteSystemStatics).abi_CreateWatcherWithFilters(filters, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.System.RemoteSystems.RemoteSystemAccessStatus) RequestAccessAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.System.RemoteSystems.RemoteSystemAccessStatus) _ret;
		Debug.OK(staticInstance.as!(Windows.System.RemoteSystems.IRemoteSystemStatics).abi_RequestAccessAsync(&_ret));
		return _ret;
	}
}

interface RemoteSystemAddedEventArgs : Windows.System.RemoteSystems.IRemoteSystemAddedEventArgs
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystem RemoteSystem()
	{
		Windows.System.RemoteSystems.RemoteSystem _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemAddedEventArgs).get_RemoteSystem(&_ret));
		return _ret;
	}
}

interface RemoteSystemAuthorizationKindFilter : Windows.System.RemoteSystems.IRemoteSystemAuthorizationKindFilter, Windows.System.RemoteSystems.IRemoteSystemFilter
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystemAuthorizationKind RemoteSystemAuthorizationKind()
	{
		Windows.System.RemoteSystems.RemoteSystemAuthorizationKind _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemAuthorizationKindFilter).get_RemoteSystemAuthorizationKind(&_ret));
		return _ret;
	}
	static Windows.System.RemoteSystems.RemoteSystemAuthorizationKindFilter New(Windows.System.RemoteSystems.RemoteSystemAuthorizationKind remoteSystemAuthorizationKind)
	{
		auto factory = factory!(Windows.System.RemoteSystems.IRemoteSystemAuthorizationKindFilterFactory);
		Windows.System.RemoteSystems.RemoteSystemAuthorizationKindFilter _ret;
		Debug.OK(factory.as!(Windows.System.RemoteSystems.IRemoteSystemAuthorizationKindFilterFactory).abi_Create(remoteSystemAuthorizationKind, &_ret));
		return _ret;
	}
}

interface RemoteSystemConnectionRequest : Windows.System.RemoteSystems.IRemoteSystemConnectionRequest
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystem RemoteSystem()
	{
		Windows.System.RemoteSystems.RemoteSystem _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemConnectionRequest).get_RemoteSystem(&_ret));
		return _ret;
	}
	static Windows.System.RemoteSystems.RemoteSystemConnectionRequest New(Windows.System.RemoteSystems.RemoteSystem remoteSystem)
	{
		auto factory = factory!(Windows.System.RemoteSystems.IRemoteSystemConnectionRequestFactory);
		Windows.System.RemoteSystems.RemoteSystemConnectionRequest _ret;
		Debug.OK(factory.as!(Windows.System.RemoteSystems.IRemoteSystemConnectionRequestFactory).abi_Create(remoteSystem, &_ret));
		return _ret;
	}
}

interface RemoteSystemDiscoveryTypeFilter : Windows.System.RemoteSystems.IRemoteSystemDiscoveryTypeFilter, Windows.System.RemoteSystems.IRemoteSystemFilter
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystemDiscoveryType RemoteSystemDiscoveryType()
	{
		Windows.System.RemoteSystems.RemoteSystemDiscoveryType _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemDiscoveryTypeFilter).get_RemoteSystemDiscoveryType(&_ret));
		return _ret;
	}
	static Windows.System.RemoteSystems.RemoteSystemDiscoveryTypeFilter New(Windows.System.RemoteSystems.RemoteSystemDiscoveryType discoveryType)
	{
		auto factory = factory!(Windows.System.RemoteSystems.IRemoteSystemDiscoveryTypeFilterFactory);
		Windows.System.RemoteSystems.RemoteSystemDiscoveryTypeFilter _ret;
		Debug.OK(factory.as!(Windows.System.RemoteSystems.IRemoteSystemDiscoveryTypeFilterFactory).abi_Create(discoveryType, &_ret));
		return _ret;
	}
}

interface RemoteSystemKindFilter : Windows.System.RemoteSystems.IRemoteSystemKindFilter, Windows.System.RemoteSystems.IRemoteSystemFilter
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) RemoteSystemKinds()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemKindFilter).get_RemoteSystemKinds(&_ret));
		return _ret;
	}
	static Windows.System.RemoteSystems.RemoteSystemKindFilter New(Windows.Foundation.Collections.IIterable!(HSTRING) remoteSystemKinds)
	{
		auto factory = factory!(Windows.System.RemoteSystems.IRemoteSystemKindFilterFactory);
		Windows.System.RemoteSystems.RemoteSystemKindFilter _ret;
		Debug.OK(factory.as!(Windows.System.RemoteSystems.IRemoteSystemKindFilterFactory).abi_Create(remoteSystemKinds, &_ret));
		return _ret;
	}
}

interface RemoteSystemKinds
{
	private static Windows.System.RemoteSystems.IRemoteSystemKindStatics _staticInstance;
	public static Windows.System.RemoteSystems.IRemoteSystemKindStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.RemoteSystems.IRemoteSystemKindStatics);
		return _staticInstance;
	}
	static HSTRING Phone()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.System.RemoteSystems.IRemoteSystemKindStatics).get_Phone(&_ret));
		return _ret;
	}
	static HSTRING Hub()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.System.RemoteSystems.IRemoteSystemKindStatics).get_Hub(&_ret));
		return _ret;
	}
	static HSTRING Holographic()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.System.RemoteSystems.IRemoteSystemKindStatics).get_Holographic(&_ret));
		return _ret;
	}
	static HSTRING Desktop()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.System.RemoteSystems.IRemoteSystemKindStatics).get_Desktop(&_ret));
		return _ret;
	}
	static HSTRING Xbox()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.System.RemoteSystems.IRemoteSystemKindStatics).get_Xbox(&_ret));
		return _ret;
	}
}

interface RemoteSystemRemovedEventArgs : Windows.System.RemoteSystems.IRemoteSystemRemovedEventArgs
{
extern(Windows):
	final HSTRING RemoteSystemId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemRemovedEventArgs).get_RemoteSystemId(&_ret));
		return _ret;
	}
}

interface RemoteSystemSession : Windows.System.RemoteSystems.IRemoteSystemSession, Windows.Foundation.IClosable
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSession).get_Id(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSession).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING ControllerDisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSession).get_ControllerDisplayName(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnDisconnected(void delegate(Windows.System.RemoteSystems.RemoteSystemSession, Windows.System.RemoteSystems.RemoteSystemSessionDisconnectedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSession).add_Disconnected(event!(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSession, Windows.System.RemoteSystems.RemoteSystemSessionDisconnectedEventArgs), Windows.System.RemoteSystems.RemoteSystemSession, Windows.System.RemoteSystems.RemoteSystemSessionDisconnectedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDisconnected(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSession).remove_Disconnected(token));
	}
	final Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher CreateParticipantWatcher()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSession).abi_CreateParticipantWatcher(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) SendInvitationAsync(Windows.System.RemoteSystems.RemoteSystem invitee)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSession).abi_SendInvitationAsync(invitee, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}

	private static Windows.System.RemoteSystems.IRemoteSystemSessionStatics _staticInstance;
	public static Windows.System.RemoteSystems.IRemoteSystemSessionStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.RemoteSystems.IRemoteSystemSessionStatics);
		return _staticInstance;
	}
	static Windows.System.RemoteSystems.RemoteSystemSessionWatcher CreateWatcher()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionWatcher _ret;
		Debug.OK(staticInstance.as!(Windows.System.RemoteSystems.IRemoteSystemSessionStatics).abi_CreateWatcher(&_ret));
		return _ret;
	}
}

interface RemoteSystemSessionAddedEventArgs : Windows.System.RemoteSystems.IRemoteSystemSessionAddedEventArgs
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystemSessionInfo SessionInfo()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionInfo _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionAddedEventArgs).get_SessionInfo(&_ret));
		return _ret;
	}
}

interface RemoteSystemSessionController : Windows.System.RemoteSystems.IRemoteSystemSessionController
{
extern(Windows):
	final EventRegistrationToken OnJoinRequested(void delegate(Windows.System.RemoteSystems.RemoteSystemSessionController, Windows.System.RemoteSystems.RemoteSystemSessionJoinRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionController).add_JoinRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionController, Windows.System.RemoteSystems.RemoteSystemSessionJoinRequestedEventArgs), Windows.System.RemoteSystems.RemoteSystemSessionController, Windows.System.RemoteSystems.RemoteSystemSessionJoinRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeJoinRequested(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionController).remove_JoinRequested(token));
	}
	final Windows.Foundation.IAsyncOperation!(bool) RemoveParticipantAsync(Windows.System.RemoteSystems.RemoteSystemSessionParticipant pParticipant)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionController).abi_RemoveParticipantAsync(pParticipant, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.System.RemoteSystems.RemoteSystemSessionCreationResult) CreateSessionAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.System.RemoteSystems.RemoteSystemSessionCreationResult) _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionController).abi_CreateSessionAsync(&_ret));
		return _ret;
	}
	static Windows.System.RemoteSystems.RemoteSystemSessionController New(HSTRING displayName)
	{
		auto factory = factory!(Windows.System.RemoteSystems.IRemoteSystemSessionControllerFactory);
		Windows.System.RemoteSystems.RemoteSystemSessionController _ret;
		Debug.OK(factory.as!(Windows.System.RemoteSystems.IRemoteSystemSessionControllerFactory).abi_CreateController(displayName, &_ret));
		return _ret;
	}
	static Windows.System.RemoteSystems.RemoteSystemSessionController New(HSTRING displayName, Windows.System.RemoteSystems.RemoteSystemSessionOptions options)
	{
		auto factory = factory!(Windows.System.RemoteSystems.IRemoteSystemSessionControllerFactory);
		Windows.System.RemoteSystems.RemoteSystemSessionController _ret;
		Debug.OK(factory.as!(Windows.System.RemoteSystems.IRemoteSystemSessionControllerFactory).abi_CreateControllerWithSessionOptions(displayName, options, &_ret));
		return _ret;
	}
}

interface RemoteSystemSessionCreationResult : Windows.System.RemoteSystems.IRemoteSystemSessionCreationResult
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystemSessionCreationStatus Status()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionCreationStatus _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionCreationResult).get_Status(&_ret));
		return _ret;
	}
	final Windows.System.RemoteSystems.RemoteSystemSession Session()
	{
		Windows.System.RemoteSystems.RemoteSystemSession _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionCreationResult).get_Session(&_ret));
		return _ret;
	}
}

interface RemoteSystemSessionDisconnectedEventArgs : Windows.System.RemoteSystems.IRemoteSystemSessionDisconnectedEventArgs
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystemSessionDisconnectedReason Reason()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionDisconnectedReason _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionDisconnectedEventArgs).get_Reason(&_ret));
		return _ret;
	}
}

interface RemoteSystemSessionInfo : Windows.System.RemoteSystems.IRemoteSystemSessionInfo
{
extern(Windows):
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionInfo).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING ControllerDisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionInfo).get_ControllerDisplayName(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.System.RemoteSystems.RemoteSystemSessionJoinResult) JoinAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.System.RemoteSystems.RemoteSystemSessionJoinResult) _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionInfo).abi_JoinAsync(&_ret));
		return _ret;
	}
}

interface RemoteSystemSessionInvitation : Windows.System.RemoteSystems.IRemoteSystemSessionInvitation
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystem Sender()
	{
		Windows.System.RemoteSystems.RemoteSystem _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionInvitation).get_Sender(&_ret));
		return _ret;
	}
	final Windows.System.RemoteSystems.RemoteSystemSessionInfo SessionInfo()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionInfo _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionInvitation).get_SessionInfo(&_ret));
		return _ret;
	}
}

interface RemoteSystemSessionInvitationListener : Windows.System.RemoteSystems.IRemoteSystemSessionInvitationListener
{
extern(Windows):
	final EventRegistrationToken OnInvitationReceived(void delegate(Windows.System.RemoteSystems.RemoteSystemSessionInvitationListener, Windows.System.RemoteSystems.RemoteSystemSessionInvitationReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionInvitationListener).add_InvitationReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionInvitationListener, Windows.System.RemoteSystems.RemoteSystemSessionInvitationReceivedEventArgs), Windows.System.RemoteSystems.RemoteSystemSessionInvitationListener, Windows.System.RemoteSystems.RemoteSystemSessionInvitationReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeInvitationReceived(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionInvitationListener).remove_InvitationReceived(token));
	}
	static RemoteSystemSessionInvitationListener New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(RemoteSystemSessionInvitationListener).abi_ActivateInstance(&ret));
		return ret.as!(RemoteSystemSessionInvitationListener);
	}
}

interface RemoteSystemSessionInvitationReceivedEventArgs : Windows.System.RemoteSystems.IRemoteSystemSessionInvitationReceivedEventArgs
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystemSessionInvitation Invitation()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionInvitation _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionInvitationReceivedEventArgs).get_Invitation(&_ret));
		return _ret;
	}
}

interface RemoteSystemSessionJoinRequest : Windows.System.RemoteSystems.IRemoteSystemSessionJoinRequest
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystemSessionParticipant Participant()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionParticipant _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionJoinRequest).get_Participant(&_ret));
		return _ret;
	}
	final void Accept()
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionJoinRequest).abi_Accept());
	}
}

interface RemoteSystemSessionJoinRequestedEventArgs : Windows.System.RemoteSystems.IRemoteSystemSessionJoinRequestedEventArgs
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystemSessionJoinRequest JoinRequest()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionJoinRequest _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionJoinRequestedEventArgs).get_JoinRequest(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionJoinRequestedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface RemoteSystemSessionJoinResult : Windows.System.RemoteSystems.IRemoteSystemSessionJoinResult
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystemSessionJoinStatus Status()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionJoinStatus _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionJoinResult).get_Status(&_ret));
		return _ret;
	}
	final Windows.System.RemoteSystems.RemoteSystemSession Session()
	{
		Windows.System.RemoteSystems.RemoteSystemSession _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionJoinResult).get_Session(&_ret));
		return _ret;
	}
}

interface RemoteSystemSessionMessageChannel : Windows.System.RemoteSystems.IRemoteSystemSessionMessageChannel
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystemSession Session()
	{
		Windows.System.RemoteSystems.RemoteSystemSession _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionMessageChannel).get_Session(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) BroadcastValueSetAsync(Windows.Foundation.Collections.ValueSet messageData)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionMessageChannel).abi_BroadcastValueSetAsync(messageData, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) SendValueSetAsync(Windows.Foundation.Collections.ValueSet messageData, Windows.System.RemoteSystems.RemoteSystemSessionParticipant participant)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionMessageChannel).abi_SendValueSetAsync(messageData, participant, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) SendValueSetToParticipantsAsync(Windows.Foundation.Collections.ValueSet messageData, Windows.Foundation.Collections.IIterable!(Windows.System.RemoteSystems.RemoteSystemSessionParticipant) participants)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionMessageChannel).abi_SendValueSetToParticipantsAsync(messageData, participants, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnValueSetReceived(void delegate(Windows.System.RemoteSystems.RemoteSystemSessionMessageChannel, Windows.System.RemoteSystems.RemoteSystemSessionValueSetReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionMessageChannel).add_ValueSetReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionMessageChannel, Windows.System.RemoteSystems.RemoteSystemSessionValueSetReceivedEventArgs), Windows.System.RemoteSystems.RemoteSystemSessionMessageChannel, Windows.System.RemoteSystems.RemoteSystemSessionValueSetReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeValueSetReceived(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionMessageChannel).remove_ValueSetReceived(token));
	}
	static Windows.System.RemoteSystems.RemoteSystemSessionMessageChannel New(Windows.System.RemoteSystems.RemoteSystemSession session, HSTRING channelName)
	{
		auto factory = factory!(Windows.System.RemoteSystems.IRemoteSystemSessionMessageChannelFactory);
		Windows.System.RemoteSystems.RemoteSystemSessionMessageChannel _ret;
		Debug.OK(factory.as!(Windows.System.RemoteSystems.IRemoteSystemSessionMessageChannelFactory).abi_Create(session, channelName, &_ret));
		return _ret;
	}
	static Windows.System.RemoteSystems.RemoteSystemSessionMessageChannel New(Windows.System.RemoteSystems.RemoteSystemSession session, HSTRING channelName, Windows.System.RemoteSystems.RemoteSystemSessionMessageChannelReliability reliability)
	{
		auto factory = factory!(Windows.System.RemoteSystems.IRemoteSystemSessionMessageChannelFactory);
		Windows.System.RemoteSystems.RemoteSystemSessionMessageChannel _ret;
		Debug.OK(factory.as!(Windows.System.RemoteSystems.IRemoteSystemSessionMessageChannelFactory).abi_CreateWithReliability(session, channelName, reliability, &_ret));
		return _ret;
	}
}

interface RemoteSystemSessionOptions : Windows.System.RemoteSystems.IRemoteSystemSessionOptions
{
extern(Windows):
	final bool IsInviteOnly()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionOptions).get_IsInviteOnly(&_ret));
		return _ret;
	}
	final void IsInviteOnly(bool value)
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionOptions).set_IsInviteOnly(value));
	}
	static RemoteSystemSessionOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(RemoteSystemSessionOptions).abi_ActivateInstance(&ret));
		return ret.as!(RemoteSystemSessionOptions);
	}
}

interface RemoteSystemSessionParticipant : Windows.System.RemoteSystems.IRemoteSystemSessionParticipant
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystem RemoteSystem()
	{
		Windows.System.RemoteSystems.RemoteSystem _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionParticipant).get_RemoteSystem(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) GetHostNames()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionParticipant).abi_GetHostNames(&_ret));
		return _ret;
	}
}

interface RemoteSystemSessionParticipantAddedEventArgs : Windows.System.RemoteSystems.IRemoteSystemSessionParticipantAddedEventArgs
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystemSessionParticipant Participant()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionParticipant _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionParticipantAddedEventArgs).get_Participant(&_ret));
		return _ret;
	}
}

interface RemoteSystemSessionParticipantRemovedEventArgs : Windows.System.RemoteSystems.IRemoteSystemSessionParticipantRemovedEventArgs
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystemSessionParticipant Participant()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionParticipant _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionParticipantRemovedEventArgs).get_Participant(&_ret));
		return _ret;
	}
}

interface RemoteSystemSessionParticipantWatcher : Windows.System.RemoteSystems.IRemoteSystemSessionParticipantWatcher
{
extern(Windows):
	final void Start()
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionParticipantWatcher).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionParticipantWatcher).abi_Stop());
	}
	final Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcherStatus Status()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcherStatus _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionParticipantWatcher).get_Status(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnAdded(void delegate(Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher, Windows.System.RemoteSystems.RemoteSystemSessionParticipantAddedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionParticipantWatcher).add_Added(event!(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher, Windows.System.RemoteSystems.RemoteSystemSessionParticipantAddedEventArgs), Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher, Windows.System.RemoteSystems.RemoteSystemSessionParticipantAddedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAdded(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionParticipantWatcher).remove_Added(token));
	}
	final EventRegistrationToken OnRemoved(void delegate(Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher, Windows.System.RemoteSystems.RemoteSystemSessionParticipantRemovedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionParticipantWatcher).add_Removed(event!(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher, Windows.System.RemoteSystems.RemoteSystemSessionParticipantRemovedEventArgs), Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher, Windows.System.RemoteSystems.RemoteSystemSessionParticipantRemovedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRemoved(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionParticipantWatcher).remove_Removed(token));
	}
	final EventRegistrationToken OnEnumerationCompleted(void delegate(Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionParticipantWatcher).add_EnumerationCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher, IInspectable), Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeEnumerationCompleted(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionParticipantWatcher).remove_EnumerationCompleted(token));
	}
}

interface RemoteSystemSessionRemovedEventArgs : Windows.System.RemoteSystems.IRemoteSystemSessionRemovedEventArgs
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystemSessionInfo SessionInfo()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionInfo _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionRemovedEventArgs).get_SessionInfo(&_ret));
		return _ret;
	}
}

interface RemoteSystemSessionUpdatedEventArgs : Windows.System.RemoteSystems.IRemoteSystemSessionUpdatedEventArgs
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystemSessionInfo SessionInfo()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionInfo _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionUpdatedEventArgs).get_SessionInfo(&_ret));
		return _ret;
	}
}

interface RemoteSystemSessionValueSetReceivedEventArgs : Windows.System.RemoteSystems.IRemoteSystemSessionValueSetReceivedEventArgs
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystemSessionParticipant Sender()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionParticipant _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionValueSetReceivedEventArgs).get_Sender(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet Message()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionValueSetReceivedEventArgs).get_Message(&_ret));
		return _ret;
	}
}

interface RemoteSystemSessionWatcher : Windows.System.RemoteSystems.IRemoteSystemSessionWatcher
{
extern(Windows):
	final void Start()
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionWatcher).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionWatcher).abi_Stop());
	}
	final Windows.System.RemoteSystems.RemoteSystemSessionWatcherStatus Status()
	{
		Windows.System.RemoteSystems.RemoteSystemSessionWatcherStatus _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionWatcher).get_Status(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnAdded(void delegate(Windows.System.RemoteSystems.RemoteSystemSessionWatcher, Windows.System.RemoteSystems.RemoteSystemSessionAddedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionWatcher).add_Added(event!(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionWatcher, Windows.System.RemoteSystems.RemoteSystemSessionAddedEventArgs), Windows.System.RemoteSystems.RemoteSystemSessionWatcher, Windows.System.RemoteSystems.RemoteSystemSessionAddedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAdded(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionWatcher).remove_Added(token));
	}
	final EventRegistrationToken OnUpdated(void delegate(Windows.System.RemoteSystems.RemoteSystemSessionWatcher, Windows.System.RemoteSystems.RemoteSystemSessionUpdatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionWatcher).add_Updated(event!(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionWatcher, Windows.System.RemoteSystems.RemoteSystemSessionUpdatedEventArgs), Windows.System.RemoteSystems.RemoteSystemSessionWatcher, Windows.System.RemoteSystems.RemoteSystemSessionUpdatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUpdated(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionWatcher).remove_Updated(token));
	}
	final EventRegistrationToken OnRemoved(void delegate(Windows.System.RemoteSystems.RemoteSystemSessionWatcher, Windows.System.RemoteSystems.RemoteSystemSessionRemovedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionWatcher).add_Removed(event!(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionWatcher, Windows.System.RemoteSystems.RemoteSystemSessionRemovedEventArgs), Windows.System.RemoteSystems.RemoteSystemSessionWatcher, Windows.System.RemoteSystems.RemoteSystemSessionRemovedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRemoved(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemSessionWatcher).remove_Removed(token));
	}
}

interface RemoteSystemStatusTypeFilter : Windows.System.RemoteSystems.IRemoteSystemStatusTypeFilter, Windows.System.RemoteSystems.IRemoteSystemFilter
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystemStatusType RemoteSystemStatusType()
	{
		Windows.System.RemoteSystems.RemoteSystemStatusType _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemStatusTypeFilter).get_RemoteSystemStatusType(&_ret));
		return _ret;
	}
	static Windows.System.RemoteSystems.RemoteSystemStatusTypeFilter New(Windows.System.RemoteSystems.RemoteSystemStatusType remoteSystemStatusType)
	{
		auto factory = factory!(Windows.System.RemoteSystems.IRemoteSystemStatusTypeFilterFactory);
		Windows.System.RemoteSystems.RemoteSystemStatusTypeFilter _ret;
		Debug.OK(factory.as!(Windows.System.RemoteSystems.IRemoteSystemStatusTypeFilterFactory).abi_Create(remoteSystemStatusType, &_ret));
		return _ret;
	}
}

interface RemoteSystemUpdatedEventArgs : Windows.System.RemoteSystems.IRemoteSystemUpdatedEventArgs
{
extern(Windows):
	final Windows.System.RemoteSystems.RemoteSystem RemoteSystem()
	{
		Windows.System.RemoteSystems.RemoteSystem _ret;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemUpdatedEventArgs).get_RemoteSystem(&_ret));
		return _ret;
	}
}

interface RemoteSystemWatcher : Windows.System.RemoteSystems.IRemoteSystemWatcher
{
extern(Windows):
	final void Start()
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemWatcher).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemWatcher).abi_Stop());
	}
	final EventRegistrationToken OnRemoteSystemAdded(void delegate(Windows.System.RemoteSystems.RemoteSystemWatcher, Windows.System.RemoteSystems.RemoteSystemAddedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemWatcher).add_RemoteSystemAdded(event!(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemWatcher, Windows.System.RemoteSystems.RemoteSystemAddedEventArgs), Windows.System.RemoteSystems.RemoteSystemWatcher, Windows.System.RemoteSystems.RemoteSystemAddedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRemoteSystemAdded(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemWatcher).remove_RemoteSystemAdded(token));
	}
	final EventRegistrationToken OnRemoteSystemUpdated(void delegate(Windows.System.RemoteSystems.RemoteSystemWatcher, Windows.System.RemoteSystems.RemoteSystemUpdatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemWatcher).add_RemoteSystemUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemWatcher, Windows.System.RemoteSystems.RemoteSystemUpdatedEventArgs), Windows.System.RemoteSystems.RemoteSystemWatcher, Windows.System.RemoteSystems.RemoteSystemUpdatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRemoteSystemUpdated(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemWatcher).remove_RemoteSystemUpdated(token));
	}
	final EventRegistrationToken OnRemoteSystemRemoved(void delegate(Windows.System.RemoteSystems.RemoteSystemWatcher, Windows.System.RemoteSystems.RemoteSystemRemovedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemWatcher).add_RemoteSystemRemoved(event!(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemWatcher, Windows.System.RemoteSystems.RemoteSystemRemovedEventArgs), Windows.System.RemoteSystems.RemoteSystemWatcher, Windows.System.RemoteSystems.RemoteSystemRemovedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRemoteSystemRemoved(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.System.RemoteSystems.IRemoteSystemWatcher).remove_RemoteSystemRemoved(token));
	}
}

enum RemoteSystemAccessStatus
{
	Unspecified = 0,
	Allowed = 1,
	DeniedByUser = 2,
	DeniedBySystem = 3
}

enum RemoteSystemAuthorizationKind
{
	SameUser = 0,
	Anonymous = 1
}

enum RemoteSystemDiscoveryType
{
	Any = 0,
	Proximal = 1,
	Cloud = 2,
	SpatiallyProximal = 3
}

enum RemoteSystemSessionCreationStatus
{
	Success = 0,
	SessionLimitsExceeded = 1,
	OperationAborted = 2
}

enum RemoteSystemSessionDisconnectedReason
{
	SessionUnavailable = 0,
	RemovedByController = 1,
	SessionClosed = 2
}

enum RemoteSystemSessionJoinStatus
{
	Success = 0,
	SessionLimitsExceeded = 1,
	OperationAborted = 2,
	SessionUnavailable = 3,
	RejectedByController = 4
}

enum RemoteSystemSessionMessageChannelReliability
{
	Reliable = 0,
	Unreliable = 1
}

enum RemoteSystemSessionParticipantWatcherStatus
{
	Created = 0,
	Started = 1,
	EnumerationCompleted = 2,
	Stopping = 3,
	Stopped = 4,
	Aborted = 5
}

enum RemoteSystemSessionWatcherStatus
{
	Created = 0,
	Started = 1,
	EnumerationCompleted = 2,
	Stopping = 3,
	Stopped = 4,
	Aborted = 5
}

enum RemoteSystemStatus
{
	Unavailable = 0,
	DiscoveringAvailability = 1,
	Available = 2,
	Unknown = 3
}

enum RemoteSystemStatusType
{
	Any = 0,
	Available = 1
}