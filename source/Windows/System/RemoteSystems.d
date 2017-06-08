module Windows.System.RemoteSystems;

import dwinrt;

@uuid("8108e380-7f8a-44e4-92cd-03b6469b94a3")
@WinrtFactory("Windows.System.RemoteSystems.KnownRemoteSystemCapabilities")
interface IKnownRemoteSystemCapabilitiesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsAvailableBySpatialProximity(bool* return_value);
	HRESULT abi_GetCapabilitySupportedAsync(HSTRING capabilityName, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("8f39560f-e534-4697-8836-7abea151516e")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemAddedEventArgs")
interface IRemoteSystemAddedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RemoteSystem(Windows.System.RemoteSystems.RemoteSystem* return_value);
}

@uuid("6b0dde8e-04d0-40f4-a27f-c2acbbd6b734")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemAuthorizationKindFilter")
interface IRemoteSystemAuthorizationKindFilter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RemoteSystemAuthorizationKind(Windows.System.RemoteSystems.RemoteSystemAuthorizationKind* return_value);
}

@uuid("ad65df4d-b66a-45a4-8177-8caed75d9e5a")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemAuthorizationKindFilter")
interface IRemoteSystemAuthorizationKindFilterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.System.RemoteSystems.RemoteSystemAuthorizationKind remoteSystemAuthorizationKind, Windows.System.RemoteSystems.RemoteSystemAuthorizationKindFilter* return_result);
}

@uuid("84ed4104-8d5e-4d72-8238-7621576c7a67")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemConnectionRequest")
interface IRemoteSystemConnectionRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RemoteSystem(Windows.System.RemoteSystems.RemoteSystem* return_value);
}

@uuid("aa0a0a20-baeb-4575-b530-810bb9786334")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemConnectionRequest")
interface IRemoteSystemConnectionRequestFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.System.RemoteSystems.RemoteSystem remoteSystem, Windows.System.RemoteSystems.RemoteSystemConnectionRequest* return_result);
}

@uuid("42d9041f-ee5a-43da-ac6a-6fee25460741")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemDiscoveryTypeFilter")
interface IRemoteSystemDiscoveryTypeFilter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RemoteSystemDiscoveryType(Windows.System.RemoteSystems.RemoteSystemDiscoveryType* return_value);
}

@uuid("9f9eb993-c260-4161-92f2-9c021f23fe5d")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemDiscoveryTypeFilter")
interface IRemoteSystemDiscoveryTypeFilterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.System.RemoteSystems.RemoteSystemDiscoveryType discoveryType, Windows.System.RemoteSystems.RemoteSystemDiscoveryTypeFilter* return_result);
}

@uuid("38e1c9ec-22c3-4ef6-901a-bbb1c7aad4ed")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemKindFilter")
interface IRemoteSystemKindFilter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RemoteSystemKinds(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}

@uuid("a1fb18ee-99ea-40bc-9a39-c670aa804a28")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemKindFilter")
interface IRemoteSystemKindFilterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(HSTRING) remoteSystemKinds, Windows.System.RemoteSystems.RemoteSystemKindFilter* return_result);
}

@uuid("f6317633-ab14-41d0-9553-796aadb882db")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemKinds")
interface IRemoteSystemKindStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RemoteSystemId(HSTRING* return_value);
}

@uuid("69476a01-9ada-490f-9549-d31cb14c9e95")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSession")
interface IRemoteSystemSession : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_ControllerDisplayName(HSTRING* return_value);
	HRESULT add_Disconnected(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSession, Windows.System.RemoteSystems.RemoteSystemSessionDisconnectedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Disconnected(EventRegistrationToken token);
	HRESULT abi_CreateParticipantWatcher(Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher* return_result);
	HRESULT abi_SendInvitationAsync(Windows.System.RemoteSystems.RemoteSystem invitee, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("d585d754-bc97-4c39-99b4-beca76e04c3f")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionAddedEventArgs")
interface IRemoteSystemSessionAddedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SessionInfo(Windows.System.RemoteSystems.RemoteSystemSessionInfo* return_value);
}

@uuid("e48b2dd2-6820-4867-b425-d89c0a3ef7ba")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionController")
interface IRemoteSystemSessionController : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateController(HSTRING displayName, Windows.System.RemoteSystems.RemoteSystemSessionController* return_result);
	HRESULT abi_CreateControllerWithSessionOptions(HSTRING displayName, Windows.System.RemoteSystems.RemoteSystemSessionOptions options, Windows.System.RemoteSystems.RemoteSystemSessionController* return_result);
}

@uuid("a79812c2-37de-448c-8b83-a30aa3c4ead6")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionCreationResult")
interface IRemoteSystemSessionCreationResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.System.RemoteSystems.RemoteSystemSessionCreationStatus* return_value);
	HRESULT get_Session(Windows.System.RemoteSystems.RemoteSystemSession* return_value);
}

@uuid("de0bc69b-77c5-461c-8209-7c6c5d3111ab")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionDisconnectedEventArgs")
interface IRemoteSystemSessionDisconnectedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Reason(Windows.System.RemoteSystems.RemoteSystemSessionDisconnectedReason* return_value);
}

@uuid("ff4df648-8b0a-4e9a-9905-69e4b841c588")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionInfo")
interface IRemoteSystemSessionInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_ControllerDisplayName(HSTRING* return_value);
	HRESULT abi_JoinAsync(Windows.Foundation.IAsyncOperation!(Windows.System.RemoteSystems.RemoteSystemSessionJoinResult)* return_operation);
}

@uuid("3e32cc91-51d7-4766-a121-25516c3b8294")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionInvitation")
interface IRemoteSystemSessionInvitation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Sender(Windows.System.RemoteSystems.RemoteSystem* return_value);
	HRESULT get_SessionInfo(Windows.System.RemoteSystems.RemoteSystemSessionInfo* return_value);
}

@uuid("08f4003f-bc71-49e1-874a-31ddff9a27b9")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionInvitationListener")
interface IRemoteSystemSessionInvitationListener : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_InvitationReceived(Windows.Foundation.TypedEventHandler!(Windows.System.RemoteSystems.RemoteSystemSessionInvitationListener, Windows.System.RemoteSystems.RemoteSystemSessionInvitationReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_InvitationReceived(EventRegistrationToken token);
}

@uuid("5e964a2d-a10d-4edb-8dea-54d20ac19543")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionInvitationReceivedEventArgs")
interface IRemoteSystemSessionInvitationReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Invitation(Windows.System.RemoteSystems.RemoteSystemSessionInvitation* return_value);
}

@uuid("20600068-7994-4331-86d1-d89d882585ee")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionJoinRequest")
interface IRemoteSystemSessionJoinRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Participant(Windows.System.RemoteSystems.RemoteSystemSessionParticipant* return_value);
	HRESULT abi_Accept();
}

@uuid("dbca4fc3-82b9-4816-9c24-e40e61774bd8")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionJoinRequestedEventArgs")
interface IRemoteSystemSessionJoinRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_JoinRequest(Windows.System.RemoteSystems.RemoteSystemSessionJoinRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("ce7b1f04-a03e-41a4-900b-1e79328c1267")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionJoinResult")
interface IRemoteSystemSessionJoinResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.System.RemoteSystems.RemoteSystemSessionJoinStatus* return_value);
	HRESULT get_Session(Windows.System.RemoteSystems.RemoteSystemSession* return_value);
}

@uuid("9524d12a-73d9-4c10-b751-c26784437127")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionMessageChannel")
interface IRemoteSystemSessionMessageChannel : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.System.RemoteSystems.RemoteSystemSession session, HSTRING channelName, Windows.System.RemoteSystems.RemoteSystemSessionMessageChannel* return_result);
	HRESULT abi_CreateWithReliability(Windows.System.RemoteSystems.RemoteSystemSession session, HSTRING channelName, Windows.System.RemoteSystems.RemoteSystemSessionMessageChannelReliability reliability, Windows.System.RemoteSystems.RemoteSystemSessionMessageChannel* return_result);
}

@uuid("740ed755-8418-4f01-9353-e21c9ecc6cfc")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionOptions")
interface IRemoteSystemSessionOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsInviteOnly(bool* return_value);
	HRESULT set_IsInviteOnly(bool value);
}

@uuid("7e90058c-acf9-4729-8a17-44e7baed5dcc")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionParticipant")
interface IRemoteSystemSessionParticipant : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RemoteSystem(Windows.System.RemoteSystems.RemoteSystem* return_value);
	HRESULT abi_GetHostNames(Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName)* return_result);
}

@uuid("d35a57d8-c9a1-4bb7-b6b0-79bb91adf93d")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionParticipantAddedEventArgs")
interface IRemoteSystemSessionParticipantAddedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Participant(Windows.System.RemoteSystems.RemoteSystemSessionParticipant* return_value);
}

@uuid("866ef088-de68-4abf-88a1-f90d16274192")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionParticipantRemovedEventArgs")
interface IRemoteSystemSessionParticipantRemovedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Participant(Windows.System.RemoteSystems.RemoteSystemSessionParticipant* return_value);
}

@uuid("dcdd02cc-aa87-4d79-b6cc-4459b3e92075")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher")
interface IRemoteSystemSessionParticipantWatcher : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SessionInfo(Windows.System.RemoteSystems.RemoteSystemSessionInfo* return_value);
}

@uuid("8524899f-fd20-44e3-9565-e75a3b14c66e")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSession")
interface IRemoteSystemSessionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWatcher(Windows.System.RemoteSystems.RemoteSystemSessionWatcher* return_result);
}

@uuid("16875069-231e-4c91-8ec8-b3a39d9e55a3")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionUpdatedEventArgs")
interface IRemoteSystemSessionUpdatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SessionInfo(Windows.System.RemoteSystems.RemoteSystemSessionInfo* return_value);
}

@uuid("06f31785-2da5-4e58-a78f-9e8d0784ee25")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionValueSetReceivedEventArgs")
interface IRemoteSystemSessionValueSetReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Sender(Windows.System.RemoteSystems.RemoteSystemSessionParticipant* return_value);
	HRESULT get_Message(Windows.Foundation.Collections.ValueSet* return_value);
}

@uuid("8003e340-0c41-4a62-b6d7-bdbe2b19be2d")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemSessionWatcher")
interface IRemoteSystemSessionWatcher : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_IsAuthorizationKindEnabled(Windows.System.RemoteSystems.RemoteSystemAuthorizationKind kind, bool* return_value);
}

@uuid("0c39514e-cbb6-4777-8534-2e0c521affa2")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemStatusTypeFilter")
interface IRemoteSystemStatusTypeFilter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RemoteSystemStatusType(Windows.System.RemoteSystems.RemoteSystemStatusType* return_value);
}

@uuid("33cf78fa-d724-4125-ac7a-8d281e44c949")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemStatusTypeFilter")
interface IRemoteSystemStatusTypeFilterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.System.RemoteSystems.RemoteSystemStatusType remoteSystemStatusType, Windows.System.RemoteSystems.RemoteSystemStatusTypeFilter* return_result);
}

@uuid("7502ff0e-dbcb-4155-b4ca-b30a04f27627")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemUpdatedEventArgs")
interface IRemoteSystemUpdatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RemoteSystem(Windows.System.RemoteSystems.RemoteSystem* return_value);
}

@uuid("5d600c7e-2c07-48c5-889c-455d2b099771")
@WinrtFactory("Windows.System.RemoteSystems.RemoteSystemWatcher")
interface IRemoteSystemWatcher : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

interface RemoteSystem
{
}

interface RemoteSystemAddedEventArgs
{
}

interface RemoteSystemAuthorizationKindFilter
{
}

interface RemoteSystemConnectionRequest
{
}

interface RemoteSystemDiscoveryTypeFilter
{
}

interface RemoteSystemKindFilter
{
}

interface RemoteSystemRemovedEventArgs
{
}

interface RemoteSystemSession
{
}

interface RemoteSystemSessionAddedEventArgs
{
}

interface RemoteSystemSessionController
{
}

interface RemoteSystemSessionCreationResult
{
}

interface RemoteSystemSessionDisconnectedEventArgs
{
}

interface RemoteSystemSessionInfo
{
}

interface RemoteSystemSessionInvitation
{
}

interface RemoteSystemSessionInvitationListener
{
}

interface RemoteSystemSessionInvitationReceivedEventArgs
{
}

interface RemoteSystemSessionJoinRequest
{
}

interface RemoteSystemSessionJoinRequestedEventArgs
{
}

interface RemoteSystemSessionJoinResult
{
}

interface RemoteSystemSessionMessageChannel
{
}

interface RemoteSystemSessionOptions
{
}

interface RemoteSystemSessionParticipant
{
}

interface RemoteSystemSessionParticipantAddedEventArgs
{
}

interface RemoteSystemSessionParticipantRemovedEventArgs
{
}

interface RemoteSystemSessionParticipantWatcher
{
}

interface RemoteSystemSessionRemovedEventArgs
{
}

interface RemoteSystemSessionUpdatedEventArgs
{
}

interface RemoteSystemSessionValueSetReceivedEventArgs
{
}

interface RemoteSystemSessionWatcher
{
}

interface RemoteSystemStatusTypeFilter
{
}

interface RemoteSystemUpdatedEventArgs
{
}

interface RemoteSystemWatcher
{
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