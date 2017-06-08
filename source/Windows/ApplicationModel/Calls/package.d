module Windows.ApplicationModel.Calls;

import dwinrt;

@uuid("fd789617-2dd7-4c8c-b2bd-95d17a5bb733")
@WinrtFactory("Windows.ApplicationModel.Calls.CallAnswerEventArgs")
interface ICallAnswerEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AcceptedMedia(Windows.ApplicationModel.Calls.VoipPhoneCallMedia* return_value);
}

@uuid("da47fad7-13d4-4d92-a1c2-b77811ee37ec")
@WinrtFactory("Windows.ApplicationModel.Calls.CallRejectEventArgs")
interface ICallRejectEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RejectReason(Windows.ApplicationModel.Calls.VoipPhoneCallRejectReason* return_value);
}

@uuid("eab2349e-66f5-47f9-9fb5-459c5198c720")
@WinrtFactory("Windows.ApplicationModel.Calls.CallStateChangeEventArgs")
interface ICallStateChangeEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_State(Windows.ApplicationModel.Calls.VoipPhoneCallState* return_value);
}

@uuid("2dd7ed0d-98ed-4041-9632-50ff812b773f")
@WinrtFactory("Windows.ApplicationModel.Calls.LockScreenCallEndCallDeferral")
interface ILockScreenCallEndCallDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

@uuid("8190a363-6f27-46e9-aeb6-c0ae83e47dc7")
@WinrtFactory("Windows.ApplicationModel.Calls.LockScreenCallEndRequestedEventArgs")
interface ILockScreenCallEndRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeferral(Windows.ApplicationModel.Calls.LockScreenCallEndCallDeferral* return_value);
	HRESULT get_Deadline(Windows.Foundation.DateTime* return_value);
}

@uuid("c596fd8d-73c9-4a14-b021-ec1c50a3b727")
@WinrtFactory("Windows.ApplicationModel.Calls.LockScreenCallUI")
interface ILockScreenCallUI : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Dismiss();
	HRESULT add_EndRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Calls.LockScreenCallUI, Windows.ApplicationModel.Calls.LockScreenCallEndRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_EndRequested(EventRegistrationToken token);
	HRESULT add_Closed(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Calls.LockScreenCallUI, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Closed(EventRegistrationToken token);
	HRESULT get_CallTitle(HSTRING* return_value);
	HRESULT set_CallTitle(HSTRING value);
}

@uuid("8585e159-0c41-432c-814d-c5f1fdf530be")
@WinrtFactory("Windows.ApplicationModel.Calls.MuteChangeEventArgs")
interface IMuteChangeEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Muted(bool* return_value);
}

@uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857")
@WinrtFactory("Windows.ApplicationModel.Calls.PhoneCallHistoryEntry")
interface IPhoneCallHistoryEntry : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Address(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryAddress* return_value);
	HRESULT set_Address(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryAddress value);
	HRESULT get_Duration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_Duration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT get_IsCallerIdBlocked(bool* return_value);
	HRESULT set_IsCallerIdBlocked(bool value);
	HRESULT get_IsEmergency(bool* return_value);
	HRESULT set_IsEmergency(bool value);
	HRESULT get_IsIncoming(bool* return_value);
	HRESULT set_IsIncoming(bool value);
	HRESULT get_IsMissed(bool* return_value);
	HRESULT set_IsMissed(bool value);
	HRESULT get_IsRinging(bool* return_value);
	HRESULT set_IsRinging(bool value);
	HRESULT get_IsSeen(bool* return_value);
	HRESULT set_IsSeen(bool value);
	HRESULT get_IsSuppressed(bool* return_value);
	HRESULT set_IsSuppressed(bool value);
	HRESULT get_IsVoicemail(bool* return_value);
	HRESULT set_IsVoicemail(bool value);
	HRESULT get_Media(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryMedia* return_value);
	HRESULT set_Media(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryMedia value);
	HRESULT get_OtherAppReadAccess(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryOtherAppReadAccess* return_value);
	HRESULT set_OtherAppReadAccess(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryOtherAppReadAccess value);
	HRESULT get_RemoteId(HSTRING* return_value);
	HRESULT set_RemoteId(HSTRING value);
	HRESULT get_SourceDisplayName(HSTRING* return_value);
	HRESULT get_SourceId(HSTRING* return_value);
	HRESULT set_SourceId(HSTRING value);
	HRESULT get_SourceIdKind(Windows.ApplicationModel.Calls.PhoneCallHistorySourceIdKind* return_value);
	HRESULT set_SourceIdKind(Windows.ApplicationModel.Calls.PhoneCallHistorySourceIdKind value);
	HRESULT get_StartTime(Windows.Foundation.DateTime* return_value);
	HRESULT set_StartTime(Windows.Foundation.DateTime value);
}

@uuid("30f159da-3955-4042-84e6-66eebf82e67f")
@WinrtFactory("Windows.ApplicationModel.Calls.PhoneCallHistoryEntryAddress")
interface IPhoneCallHistoryEntryAddress : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContactId(HSTRING* return_value);
	HRESULT set_ContactId(HSTRING value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT set_DisplayName(HSTRING value);
	HRESULT get_RawAddress(HSTRING* return_value);
	HRESULT set_RawAddress(HSTRING value);
	HRESULT get_RawAddressKind(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryRawAddressKind* return_value);
	HRESULT set_RawAddressKind(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryRawAddressKind value);
}

@uuid("fb0fadba-c7f0-4bb6-9f6b-ba5d73209aca")
@WinrtFactory("Windows.ApplicationModel.Calls.PhoneCallHistoryEntryAddress")
interface IPhoneCallHistoryEntryAddressFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING rawAddress, Windows.ApplicationModel.Calls.PhoneCallHistoryEntryRawAddressKind rawAddressKind, Windows.ApplicationModel.Calls.PhoneCallHistoryEntryAddress* return_result);
}

@uuid("9c5fe15c-8bed-40ca-b06e-c4ca8eae5c87")
@WinrtFactory("Windows.ApplicationModel.Calls.PhoneCallHistoryEntryQueryOptions")
interface IPhoneCallHistoryEntryQueryOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DesiredMedia(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryQueryDesiredMedia* return_value);
	HRESULT set_DesiredMedia(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryQueryDesiredMedia value);
	HRESULT get_SourceIds(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("61ece4be-8d86-479f-8404-a9846920fee6")
@WinrtFactory("Windows.ApplicationModel.Calls.PhoneCallHistoryEntryReader")
interface IPhoneCallHistoryEntryReader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry))* return_result);
}

@uuid("d925c523-f55f-4353-9db4-0205a5265a55")
@WinrtFactory("Windows.ApplicationModel.Calls.PhoneCallHistoryManagerForUser")
interface IPhoneCallHistoryManagerForUser : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestStoreAsync(Windows.ApplicationModel.Calls.PhoneCallHistoryStoreAccessType accessType, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Calls.PhoneCallHistoryStore)* return_result);
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("f5a6da39-b31f-4f45-ac8e-1b08893c1b50")
@WinrtFactory("Windows.ApplicationModel.Calls.PhoneCallHistoryManager")
interface IPhoneCallHistoryManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestStoreAsync(Windows.ApplicationModel.Calls.PhoneCallHistoryStoreAccessType accessType, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Calls.PhoneCallHistoryStore)* return_result);
}

@uuid("efd474f0-a2db-4188-9e92-bc3cfa6813cf")
@WinrtFactory("Windows.ApplicationModel.Calls.PhoneCallHistoryManager")
interface IPhoneCallHistoryManagerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForUser(Windows.System.User user, Windows.ApplicationModel.Calls.PhoneCallHistoryManagerForUser* return_result);
}

@uuid("2f907db8-b40e-422b-8545-cb1910a61c52")
@WinrtFactory("Windows.ApplicationModel.Calls.PhoneCallHistoryStore")
interface IPhoneCallHistoryStore : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetEntryAsync(HSTRING callHistoryEntryId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry)* return_result);
	HRESULT abi_GetEntryReader(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryReader* return_result);
	HRESULT abi_GetEntryReaderWithOptions(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryQueryOptions queryOptions, Windows.ApplicationModel.Calls.PhoneCallHistoryEntryReader* return_result);
	HRESULT abi_SaveEntryAsync(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry callHistoryEntry, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_DeleteEntryAsync(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry callHistoryEntry, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_DeleteEntriesAsync(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry) callHistoryEntries, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_MarkEntryAsSeenAsync(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry callHistoryEntry, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_MarkEntriesAsSeenAsync(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry) callHistoryEntries, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_GetUnseenCountAsync(Windows.Foundation.IAsyncOperation!(UINT32)* return_result);
	HRESULT abi_MarkAllAsSeenAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_GetSourcesUnseenCountAsync(Windows.Foundation.Collections.IIterable!(HSTRING) sourceIds, Windows.Foundation.IAsyncOperation!(UINT32)* return_result);
	HRESULT abi_MarkSourcesAsSeenAsync(Windows.Foundation.Collections.IIterable!(HSTRING) sourceIds, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("4f118bcf-e8ef-4434-9c5f-a8d893fafe79")
@WinrtFactory("Windows.ApplicationModel.Calls.VoipCallCoordinator")
interface IVoipCallCoordinator : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ReserveCallResourcesAsync(HSTRING taskEntryPoint, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Calls.VoipPhoneCallResourceReservationStatus)* return_operation);
	HRESULT add_MuteStateChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Calls.VoipCallCoordinator, Windows.ApplicationModel.Calls.MuteChangeEventArgs) muteChangeHandler, EventRegistrationToken* return_token);
	HRESULT remove_MuteStateChanged(EventRegistrationToken token);
	HRESULT abi_RequestNewIncomingCall(HSTRING context, HSTRING contactName, HSTRING contactNumber, Windows.Foundation.Uri contactImage, HSTRING serviceName, Windows.Foundation.Uri brandingImage, HSTRING callDetails, Windows.Foundation.Uri ringtone, Windows.ApplicationModel.Calls.VoipPhoneCallMedia media, Windows.Foundation.TimeSpan ringTimeout, Windows.ApplicationModel.Calls.VoipPhoneCall* return_call);
	HRESULT abi_RequestNewOutgoingCall(HSTRING context, HSTRING contactName, HSTRING serviceName, Windows.ApplicationModel.Calls.VoipPhoneCallMedia media, Windows.ApplicationModel.Calls.VoipPhoneCall* return_call);
	HRESULT abi_NotifyMuted();
	HRESULT abi_NotifyUnmuted();
	HRESULT abi_RequestOutgoingUpgradeToVideoCall(GUID callUpgradeGuid, HSTRING context, HSTRING contactName, HSTRING serviceName, Windows.ApplicationModel.Calls.VoipPhoneCall* return_call);
	HRESULT abi_RequestIncomingUpgradeToVideoCall(HSTRING context, HSTRING contactName, HSTRING contactNumber, Windows.Foundation.Uri contactImage, HSTRING serviceName, Windows.Foundation.Uri brandingImage, HSTRING callDetails, Windows.Foundation.Uri ringtone, Windows.Foundation.TimeSpan ringTimeout, Windows.ApplicationModel.Calls.VoipPhoneCall* return_call);
	HRESULT abi_TerminateCellularCall(GUID callUpgradeGuid);
	HRESULT abi_CancelUpgrade(GUID callUpgradeGuid);
}

@uuid("7f5d1f2b-e04a-4d10-b31a-a55c922cc2fb")
@WinrtFactory("Windows.ApplicationModel.Calls.VoipCallCoordinator")
interface IVoipCallCoordinatorStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefault(Windows.ApplicationModel.Calls.VoipCallCoordinator* return_coordinator);
}

@uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990")
@WinrtFactory("Windows.ApplicationModel.Calls.VoipPhoneCall")
interface IVoipPhoneCall : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_EndRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallStateChangeEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_EndRequested(EventRegistrationToken token);
	HRESULT add_HoldRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallStateChangeEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_HoldRequested(EventRegistrationToken token);
	HRESULT add_ResumeRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallStateChangeEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ResumeRequested(EventRegistrationToken token);
	HRESULT add_AnswerRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallAnswerEventArgs) acceptHandler, EventRegistrationToken* return_token);
	HRESULT remove_AnswerRequested(EventRegistrationToken token);
	HRESULT add_RejectRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallRejectEventArgs) rejectHandler, EventRegistrationToken* return_token);
	HRESULT remove_RejectRequested(EventRegistrationToken token);
	HRESULT abi_NotifyCallHeld();
	HRESULT abi_NotifyCallActive();
	HRESULT abi_NotifyCallEnded();
	HRESULT get_ContactName(HSTRING* return_value);
	HRESULT set_ContactName(HSTRING value);
	HRESULT get_StartTime(Windows.Foundation.DateTime* return_value);
	HRESULT set_StartTime(Windows.Foundation.DateTime value);
	HRESULT get_CallMedia(Windows.ApplicationModel.Calls.VoipPhoneCallMedia* return_value);
	HRESULT set_CallMedia(Windows.ApplicationModel.Calls.VoipPhoneCallMedia value);
	HRESULT abi_NotifyCallReady();
}

interface CallAnswerEventArgs
{
}

interface CallRejectEventArgs
{
}

interface CallStateChangeEventArgs
{
}

interface LockScreenCallEndCallDeferral
{
}

interface LockScreenCallEndRequestedEventArgs
{
}

interface LockScreenCallUI
{
}

interface MuteChangeEventArgs
{
}

interface PhoneCallHistoryEntry
{
}

interface PhoneCallHistoryEntryAddress
{
}

interface PhoneCallHistoryEntryQueryOptions
{
}

interface PhoneCallHistoryEntryReader
{
}

interface PhoneCallHistoryManagerForUser
{
}

interface PhoneCallHistoryStore
{
}

interface VoipCallCoordinator
{
}

interface VoipPhoneCall
{
}

enum PhoneCallHistoryEntryMedia
{
	Audio = 0,
	Video = 1
}

enum PhoneCallHistoryEntryOtherAppReadAccess
{
	Full = 0,
	SystemOnly = 1
}

@bitflags
enum PhoneCallHistoryEntryQueryDesiredMedia
{
	None = 0x0,
	Audio = 0x1,
	Video = 0x2,
	All = 0xFFFFFFFF
}

enum PhoneCallHistoryEntryRawAddressKind
{
	PhoneNumber = 0,
	Custom = 1
}

enum PhoneCallHistorySourceIdKind
{
	CellularPhoneLineId = 0,
	PackageFamilyName = 1
}

enum PhoneCallHistoryStoreAccessType
{
	AppEntriesReadWrite = 0,
	AllEntriesLimitedReadWrite = 1,
	AllEntriesReadWrite = 2
}

@bitflags
enum VoipPhoneCallMedia
{
	None = 0x0,
	Audio = 0x1,
	Video = 0x2
}

enum VoipPhoneCallRejectReason
{
	UserIgnored = 0,
	TimedOut = 1,
	OtherIncomingCall = 2,
	EmergencyCallExists = 3,
	InvalidCallState = 4
}

enum VoipPhoneCallResourceReservationStatus
{
	Success = 0,
	ResourcesNotAvailable = 1
}

enum VoipPhoneCallState
{
	Ended = 0,
	Held = 1,
	Active = 2,
	Incoming = 3,
	Outgoing = 4
}