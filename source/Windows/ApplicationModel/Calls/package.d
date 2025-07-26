module Windows.ApplicationModel.Calls;

import dwinrt;

@uuid("fd789617-2dd7-4c8c-b2bd-95d17a5bb733")
@WinrtFactory("Windows.ApplicationModel.Calls.CallAnswerEventArgs")
interface ICallAnswerEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_AcceptedMedia(Windows.ApplicationModel.Calls.VoipPhoneCallMedia* return_value);
}

@uuid("da47fad7-13d4-4d92-a1c2-b77811ee37ec")
@WinrtFactory("Windows.ApplicationModel.Calls.CallRejectEventArgs")
interface ICallRejectEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_RejectReason(Windows.ApplicationModel.Calls.VoipPhoneCallRejectReason* return_value);
}

@uuid("eab2349e-66f5-47f9-9fb5-459c5198c720")
@WinrtFactory("Windows.ApplicationModel.Calls.CallStateChangeEventArgs")
interface ICallStateChangeEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_State(Windows.ApplicationModel.Calls.VoipPhoneCallState* return_value);
}

@uuid("2dd7ed0d-98ed-4041-9632-50ff812b773f")
@WinrtFactory("Windows.ApplicationModel.Calls.LockScreenCallEndCallDeferral")
interface ILockScreenCallEndCallDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("8190a363-6f27-46e9-aeb6-c0ae83e47dc7")
@WinrtFactory("Windows.ApplicationModel.Calls.LockScreenCallEndRequestedEventArgs")
interface ILockScreenCallEndRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.ApplicationModel.Calls.LockScreenCallEndCallDeferral* return_value);
	HRESULT get_Deadline(Windows.Foundation.DateTime* return_value);
}

@uuid("c596fd8d-73c9-4a14-b021-ec1c50a3b727")
@WinrtFactory("Windows.ApplicationModel.Calls.LockScreenCallUI")
interface ILockScreenCallUI : IInspectable
{
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
extern(Windows):
	HRESULT get_Muted(bool* return_value);
}

@uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857")
@WinrtFactory("Windows.ApplicationModel.Calls.PhoneCallHistoryEntry")
interface IPhoneCallHistoryEntry : IInspectable
{
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
extern(Windows):
	HRESULT abi_Create(HSTRING rawAddress, Windows.ApplicationModel.Calls.PhoneCallHistoryEntryRawAddressKind rawAddressKind, Windows.ApplicationModel.Calls.PhoneCallHistoryEntryAddress* return_result);
}

@uuid("9c5fe15c-8bed-40ca-b06e-c4ca8eae5c87")
@WinrtFactory("Windows.ApplicationModel.Calls.PhoneCallHistoryEntryQueryOptions")
interface IPhoneCallHistoryEntryQueryOptions : IInspectable
{
extern(Windows):
	HRESULT get_DesiredMedia(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryQueryDesiredMedia* return_value);
	HRESULT set_DesiredMedia(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryQueryDesiredMedia value);
	HRESULT get_SourceIds(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("61ece4be-8d86-479f-8404-a9846920fee6")
@WinrtFactory("Windows.ApplicationModel.Calls.PhoneCallHistoryEntryReader")
interface IPhoneCallHistoryEntryReader : IInspectable
{
extern(Windows):
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry))* return_result);
}

@uuid("d925c523-f55f-4353-9db4-0205a5265a55")
@WinrtFactory("Windows.ApplicationModel.Calls.PhoneCallHistoryManagerForUser")
interface IPhoneCallHistoryManagerForUser : IInspectable
{
extern(Windows):
	HRESULT abi_RequestStoreAsync(Windows.ApplicationModel.Calls.PhoneCallHistoryStoreAccessType accessType, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Calls.PhoneCallHistoryStore)* return_result);
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("f5a6da39-b31f-4f45-ac8e-1b08893c1b50")
@WinrtFactory("Windows.ApplicationModel.Calls.PhoneCallHistoryManager")
interface IPhoneCallHistoryManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_RequestStoreAsync(Windows.ApplicationModel.Calls.PhoneCallHistoryStoreAccessType accessType, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Calls.PhoneCallHistoryStore)* return_result);
}

@uuid("efd474f0-a2db-4188-9e92-bc3cfa6813cf")
@WinrtFactory("Windows.ApplicationModel.Calls.PhoneCallHistoryManager")
interface IPhoneCallHistoryManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetForUser(Windows.System.User user, Windows.ApplicationModel.Calls.PhoneCallHistoryManagerForUser* return_result);
}

@uuid("2f907db8-b40e-422b-8545-cb1910a61c52")
@WinrtFactory("Windows.ApplicationModel.Calls.PhoneCallHistoryStore")
interface IPhoneCallHistoryStore : IInspectable
{
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
extern(Windows):
	HRESULT abi_GetDefault(Windows.ApplicationModel.Calls.VoipCallCoordinator* return_coordinator);
}

@uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990")
@WinrtFactory("Windows.ApplicationModel.Calls.VoipPhoneCall")
interface IVoipPhoneCall : IInspectable
{
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

interface CallAnswerEventArgs : Windows.ApplicationModel.Calls.ICallAnswerEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Calls.VoipPhoneCallMedia AcceptedMedia()
	{
		Windows.ApplicationModel.Calls.VoipPhoneCallMedia _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.ICallAnswerEventArgs)this.asInterface(uuid("fd789617-2dd7-4c8c-b2bd-95d17a5bb733"))).get_AcceptedMedia(&_ret));
		return _ret;
	}
}

interface CallRejectEventArgs : Windows.ApplicationModel.Calls.ICallRejectEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Calls.VoipPhoneCallRejectReason RejectReason()
	{
		Windows.ApplicationModel.Calls.VoipPhoneCallRejectReason _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.ICallRejectEventArgs)this.asInterface(uuid("da47fad7-13d4-4d92-a1c2-b77811ee37ec"))).get_RejectReason(&_ret));
		return _ret;
	}
}

interface CallStateChangeEventArgs : Windows.ApplicationModel.Calls.ICallStateChangeEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Calls.VoipPhoneCallState State()
	{
		Windows.ApplicationModel.Calls.VoipPhoneCallState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.ICallStateChangeEventArgs)this.asInterface(uuid("eab2349e-66f5-47f9-9fb5-459c5198c720"))).get_State(&_ret));
		return _ret;
	}
}

interface LockScreenCallEndCallDeferral : Windows.ApplicationModel.Calls.ILockScreenCallEndCallDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.ILockScreenCallEndCallDeferral)this.asInterface(uuid("2dd7ed0d-98ed-4041-9632-50ff812b773f"))).abi_Complete());
	}
}

interface LockScreenCallEndRequestedEventArgs : Windows.ApplicationModel.Calls.ILockScreenCallEndRequestedEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Calls.LockScreenCallEndCallDeferral GetDeferral()
	{
		Windows.ApplicationModel.Calls.LockScreenCallEndCallDeferral _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.ILockScreenCallEndRequestedEventArgs)this.asInterface(uuid("8190a363-6f27-46e9-aeb6-c0ae83e47dc7"))).abi_GetDeferral(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Deadline()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.ILockScreenCallEndRequestedEventArgs)this.asInterface(uuid("8190a363-6f27-46e9-aeb6-c0ae83e47dc7"))).get_Deadline(&_ret));
		return _ret;
	}
}

interface LockScreenCallUI : Windows.ApplicationModel.Calls.ILockScreenCallUI
{
extern(Windows):
	final void Dismiss()
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.ILockScreenCallUI)this.asInterface(uuid("c596fd8d-73c9-4a14-b021-ec1c50a3b727"))).abi_Dismiss());
	}
	final EventRegistrationToken OnEndRequested(void delegate(Windows.ApplicationModel.Calls.LockScreenCallUI, Windows.ApplicationModel.Calls.LockScreenCallEndRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Calls.ILockScreenCallUI)this.asInterface(uuid("c596fd8d-73c9-4a14-b021-ec1c50a3b727"))).add_EndRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Calls.LockScreenCallUI, Windows.ApplicationModel.Calls.LockScreenCallEndRequestedEventArgs), Windows.ApplicationModel.Calls.LockScreenCallUI, Windows.ApplicationModel.Calls.LockScreenCallEndRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeEndRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.ILockScreenCallUI)this.asInterface(uuid("c596fd8d-73c9-4a14-b021-ec1c50a3b727"))).remove_EndRequested(token));
	}
	final EventRegistrationToken OnClosed(void delegate(Windows.ApplicationModel.Calls.LockScreenCallUI, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Calls.ILockScreenCallUI)this.asInterface(uuid("c596fd8d-73c9-4a14-b021-ec1c50a3b727"))).add_Closed(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Calls.LockScreenCallUI, IInspectable), Windows.ApplicationModel.Calls.LockScreenCallUI, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeClosed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.ILockScreenCallUI)this.asInterface(uuid("c596fd8d-73c9-4a14-b021-ec1c50a3b727"))).remove_Closed(token));
	}
	final HSTRING CallTitle()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.ILockScreenCallUI)this.asInterface(uuid("c596fd8d-73c9-4a14-b021-ec1c50a3b727"))).get_CallTitle(&_ret));
		return _ret;
	}
	final void CallTitle(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.ILockScreenCallUI)this.asInterface(uuid("c596fd8d-73c9-4a14-b021-ec1c50a3b727"))).set_CallTitle(value));
	}
}

interface MuteChangeEventArgs : Windows.ApplicationModel.Calls.IMuteChangeEventArgs
{
extern(Windows):
	final bool Muted()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IMuteChangeEventArgs)this.asInterface(uuid("8585e159-0c41-432c-814d-c5f1fdf530be"))).get_Muted(&_ret));
		return _ret;
	}
}

interface PhoneCallHistoryEntry : Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Calls.PhoneCallHistoryEntryAddress Address()
	{
		Windows.ApplicationModel.Calls.PhoneCallHistoryEntryAddress _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_Address(&_ret));
		return _ret;
	}
	final void Address(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryAddress value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).set_Address(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Duration()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_Duration(&_ret));
		return _ret;
	}
	final void Duration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).set_Duration(value));
	}
	final bool IsCallerIdBlocked()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_IsCallerIdBlocked(&_ret));
		return _ret;
	}
	final void IsCallerIdBlocked(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).set_IsCallerIdBlocked(value));
	}
	final bool IsEmergency()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_IsEmergency(&_ret));
		return _ret;
	}
	final void IsEmergency(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).set_IsEmergency(value));
	}
	final bool IsIncoming()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_IsIncoming(&_ret));
		return _ret;
	}
	final void IsIncoming(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).set_IsIncoming(value));
	}
	final bool IsMissed()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_IsMissed(&_ret));
		return _ret;
	}
	final void IsMissed(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).set_IsMissed(value));
	}
	final bool IsRinging()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_IsRinging(&_ret));
		return _ret;
	}
	final void IsRinging(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).set_IsRinging(value));
	}
	final bool IsSeen()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_IsSeen(&_ret));
		return _ret;
	}
	final void IsSeen(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).set_IsSeen(value));
	}
	final bool IsSuppressed()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_IsSuppressed(&_ret));
		return _ret;
	}
	final void IsSuppressed(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).set_IsSuppressed(value));
	}
	final bool IsVoicemail()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_IsVoicemail(&_ret));
		return _ret;
	}
	final void IsVoicemail(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).set_IsVoicemail(value));
	}
	final Windows.ApplicationModel.Calls.PhoneCallHistoryEntryMedia Media()
	{
		Windows.ApplicationModel.Calls.PhoneCallHistoryEntryMedia _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_Media(&_ret));
		return _ret;
	}
	final void Media(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryMedia value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).set_Media(value));
	}
	final Windows.ApplicationModel.Calls.PhoneCallHistoryEntryOtherAppReadAccess OtherAppReadAccess()
	{
		Windows.ApplicationModel.Calls.PhoneCallHistoryEntryOtherAppReadAccess _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_OtherAppReadAccess(&_ret));
		return _ret;
	}
	final void OtherAppReadAccess(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryOtherAppReadAccess value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).set_OtherAppReadAccess(value));
	}
	final HSTRING RemoteId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_RemoteId(&_ret));
		return _ret;
	}
	final void RemoteId(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).set_RemoteId(value));
	}
	final HSTRING SourceDisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_SourceDisplayName(&_ret));
		return _ret;
	}
	final HSTRING SourceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_SourceId(&_ret));
		return _ret;
	}
	final void SourceId(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).set_SourceId(value));
	}
	final Windows.ApplicationModel.Calls.PhoneCallHistorySourceIdKind SourceIdKind()
	{
		Windows.ApplicationModel.Calls.PhoneCallHistorySourceIdKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_SourceIdKind(&_ret));
		return _ret;
	}
	final void SourceIdKind(Windows.ApplicationModel.Calls.PhoneCallHistorySourceIdKind value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).set_SourceIdKind(value));
	}
	final Windows.Foundation.DateTime StartTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).get_StartTime(&_ret));
		return _ret;
	}
	final void StartTime(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry)this.asInterface(uuid("fab0e129-32a4-4b85-83d1-f90d8c23a857"))).set_StartTime(value));
	}
	static PhoneCallHistoryEntry New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PhoneCallHistoryEntry).abi_ActivateInstance(&ret));
		return cast(PhoneCallHistoryEntry) ret;
	}
}

interface PhoneCallHistoryEntryAddress : Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryAddress
{
extern(Windows):
	final HSTRING ContactId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryAddress)this.asInterface(uuid("30f159da-3955-4042-84e6-66eebf82e67f"))).get_ContactId(&_ret));
		return _ret;
	}
	final void ContactId(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryAddress)this.asInterface(uuid("30f159da-3955-4042-84e6-66eebf82e67f"))).set_ContactId(value));
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryAddress)this.asInterface(uuid("30f159da-3955-4042-84e6-66eebf82e67f"))).get_DisplayName(&_ret));
		return _ret;
	}
	final void DisplayName(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryAddress)this.asInterface(uuid("30f159da-3955-4042-84e6-66eebf82e67f"))).set_DisplayName(value));
	}
	final HSTRING RawAddress()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryAddress)this.asInterface(uuid("30f159da-3955-4042-84e6-66eebf82e67f"))).get_RawAddress(&_ret));
		return _ret;
	}
	final void RawAddress(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryAddress)this.asInterface(uuid("30f159da-3955-4042-84e6-66eebf82e67f"))).set_RawAddress(value));
	}
	final Windows.ApplicationModel.Calls.PhoneCallHistoryEntryRawAddressKind RawAddressKind()
	{
		Windows.ApplicationModel.Calls.PhoneCallHistoryEntryRawAddressKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryAddress)this.asInterface(uuid("30f159da-3955-4042-84e6-66eebf82e67f"))).get_RawAddressKind(&_ret));
		return _ret;
	}
	final void RawAddressKind(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryRawAddressKind value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryAddress)this.asInterface(uuid("30f159da-3955-4042-84e6-66eebf82e67f"))).set_RawAddressKind(value));
	}
	static PhoneCallHistoryEntryAddress New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PhoneCallHistoryEntryAddress).abi_ActivateInstance(&ret));
		return cast(PhoneCallHistoryEntryAddress) ret;
	}
	static Windows.ApplicationModel.Calls.PhoneCallHistoryEntryAddress New(HSTRING rawAddress, Windows.ApplicationModel.Calls.PhoneCallHistoryEntryRawAddressKind rawAddressKind)
	{
		auto factory = factory!(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryAddressFactory);
		Windows.ApplicationModel.Calls.PhoneCallHistoryEntryAddress _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryAddressFactory)factory.asInterface(uuid("fb0fadba-c7f0-4bb6-9f6b-ba5d73209aca"))).abi_Create(rawAddress, rawAddressKind, &_ret));
		return _ret;
	}
}

interface PhoneCallHistoryEntryQueryOptions : Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryQueryOptions
{
extern(Windows):
	final Windows.ApplicationModel.Calls.PhoneCallHistoryEntryQueryDesiredMedia DesiredMedia()
	{
		Windows.ApplicationModel.Calls.PhoneCallHistoryEntryQueryDesiredMedia _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryQueryOptions)this.asInterface(uuid("9c5fe15c-8bed-40ca-b06e-c4ca8eae5c87"))).get_DesiredMedia(&_ret));
		return _ret;
	}
	final void DesiredMedia(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryQueryDesiredMedia value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryQueryOptions)this.asInterface(uuid("9c5fe15c-8bed-40ca-b06e-c4ca8eae5c87"))).set_DesiredMedia(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) SourceIds()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryQueryOptions)this.asInterface(uuid("9c5fe15c-8bed-40ca-b06e-c4ca8eae5c87"))).get_SourceIds(&_ret));
		return _ret;
	}
	static PhoneCallHistoryEntryQueryOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PhoneCallHistoryEntryQueryOptions).abi_ActivateInstance(&ret));
		return cast(PhoneCallHistoryEntryQueryOptions) ret;
	}
}

interface PhoneCallHistoryEntryReader : Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryReader
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry)) ReadBatchAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryReader)this.asInterface(uuid("61ece4be-8d86-479f-8404-a9846920fee6"))).abi_ReadBatchAsync(&_ret));
		return _ret;
	}
}

interface PhoneCallHistoryManager
{
	private static Windows.ApplicationModel.Calls.IPhoneCallHistoryManagerStatics _staticInstance;
	public static Windows.ApplicationModel.Calls.IPhoneCallHistoryManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Calls.IPhoneCallHistoryManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Calls.PhoneCallHistoryStore) RequestStoreAsync(Windows.ApplicationModel.Calls.PhoneCallHistoryStoreAccessType accessType)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Calls.PhoneCallHistoryStore) _ret;
		Debug.OK(staticInstance.abi_RequestStoreAsync(accessType, &_ret));
		return _ret;
	}
}

interface PhoneCallHistoryManagerForUser : Windows.ApplicationModel.Calls.IPhoneCallHistoryManagerForUser
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Calls.PhoneCallHistoryStore) RequestStoreAsync(Windows.ApplicationModel.Calls.PhoneCallHistoryStoreAccessType accessType)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Calls.PhoneCallHistoryStore) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryManagerForUser)this.asInterface(uuid("d925c523-f55f-4353-9db4-0205a5265a55"))).abi_RequestStoreAsync(accessType, &_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryManagerForUser)this.asInterface(uuid("d925c523-f55f-4353-9db4-0205a5265a55"))).get_User(&_ret));
		return _ret;
	}
}

interface PhoneCallHistoryStore : Windows.ApplicationModel.Calls.IPhoneCallHistoryStore
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry) GetEntryAsync(HSTRING callHistoryEntryId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryStore)this.asInterface(uuid("2f907db8-b40e-422b-8545-cb1910a61c52"))).abi_GetEntryAsync(callHistoryEntryId, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Calls.PhoneCallHistoryEntryReader GetEntryReader()
	{
		Windows.ApplicationModel.Calls.PhoneCallHistoryEntryReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryStore)this.asInterface(uuid("2f907db8-b40e-422b-8545-cb1910a61c52"))).abi_GetEntryReader(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Calls.PhoneCallHistoryEntryReader GetEntryReaderWithOptions(Windows.ApplicationModel.Calls.PhoneCallHistoryEntryQueryOptions queryOptions)
	{
		Windows.ApplicationModel.Calls.PhoneCallHistoryEntryReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryStore)this.asInterface(uuid("2f907db8-b40e-422b-8545-cb1910a61c52"))).abi_GetEntryReaderWithOptions(queryOptions, &_ret));
		return _ret;
	}
	alias GetEntryReader = GetEntryReaderWithOptions;
	final Windows.Foundation.IAsyncAction SaveEntryAsync(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry callHistoryEntry)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryStore)this.asInterface(uuid("2f907db8-b40e-422b-8545-cb1910a61c52"))).abi_SaveEntryAsync(callHistoryEntry, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteEntryAsync(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry callHistoryEntry)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryStore)this.asInterface(uuid("2f907db8-b40e-422b-8545-cb1910a61c52"))).abi_DeleteEntryAsync(callHistoryEntry, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteEntriesAsync(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry) callHistoryEntries)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryStore)this.asInterface(uuid("2f907db8-b40e-422b-8545-cb1910a61c52"))).abi_DeleteEntriesAsync(callHistoryEntries, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction MarkEntryAsSeenAsync(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry callHistoryEntry)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryStore)this.asInterface(uuid("2f907db8-b40e-422b-8545-cb1910a61c52"))).abi_MarkEntryAsSeenAsync(callHistoryEntry, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction MarkEntriesAsSeenAsync(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Calls.PhoneCallHistoryEntry) callHistoryEntries)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryStore)this.asInterface(uuid("2f907db8-b40e-422b-8545-cb1910a61c52"))).abi_MarkEntriesAsSeenAsync(callHistoryEntries, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) GetUnseenCountAsync()
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryStore)this.asInterface(uuid("2f907db8-b40e-422b-8545-cb1910a61c52"))).abi_GetUnseenCountAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction MarkAllAsSeenAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryStore)this.asInterface(uuid("2f907db8-b40e-422b-8545-cb1910a61c52"))).abi_MarkAllAsSeenAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) GetSourcesUnseenCountAsync(Windows.Foundation.Collections.IIterable!(HSTRING) sourceIds)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryStore)this.asInterface(uuid("2f907db8-b40e-422b-8545-cb1910a61c52"))).abi_GetSourcesUnseenCountAsync(sourceIds, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction MarkSourcesAsSeenAsync(Windows.Foundation.Collections.IIterable!(HSTRING) sourceIds)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IPhoneCallHistoryStore)this.asInterface(uuid("2f907db8-b40e-422b-8545-cb1910a61c52"))).abi_MarkSourcesAsSeenAsync(sourceIds, &_ret));
		return _ret;
	}
}

interface VoipCallCoordinator : Windows.ApplicationModel.Calls.IVoipCallCoordinator
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Calls.VoipPhoneCallResourceReservationStatus) ReserveCallResourcesAsync(HSTRING taskEntryPoint)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Calls.VoipPhoneCallResourceReservationStatus) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipCallCoordinator)this.asInterface(uuid("4f118bcf-e8ef-4434-9c5f-a8d893fafe79"))).abi_ReserveCallResourcesAsync(taskEntryPoint, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnMuteStateChanged(void delegate(Windows.ApplicationModel.Calls.VoipCallCoordinator, Windows.ApplicationModel.Calls.MuteChangeEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipCallCoordinator)this.asInterface(uuid("4f118bcf-e8ef-4434-9c5f-a8d893fafe79"))).add_MuteStateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Calls.VoipCallCoordinator, Windows.ApplicationModel.Calls.MuteChangeEventArgs), Windows.ApplicationModel.Calls.VoipCallCoordinator, Windows.ApplicationModel.Calls.MuteChangeEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMuteStateChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipCallCoordinator)this.asInterface(uuid("4f118bcf-e8ef-4434-9c5f-a8d893fafe79"))).remove_MuteStateChanged(token));
	}
	final Windows.ApplicationModel.Calls.VoipPhoneCall RequestNewIncomingCall(HSTRING context, HSTRING contactName, HSTRING contactNumber, Windows.Foundation.Uri contactImage, HSTRING serviceName, Windows.Foundation.Uri brandingImage, HSTRING callDetails, Windows.Foundation.Uri ringtone, Windows.ApplicationModel.Calls.VoipPhoneCallMedia media, Windows.Foundation.TimeSpan ringTimeout)
	{
		Windows.ApplicationModel.Calls.VoipPhoneCall _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipCallCoordinator)this.asInterface(uuid("4f118bcf-e8ef-4434-9c5f-a8d893fafe79"))).abi_RequestNewIncomingCall(context, contactName, contactNumber, contactImage, serviceName, brandingImage, callDetails, ringtone, media, ringTimeout, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Calls.VoipPhoneCall RequestNewOutgoingCall(HSTRING context, HSTRING contactName, HSTRING serviceName, Windows.ApplicationModel.Calls.VoipPhoneCallMedia media)
	{
		Windows.ApplicationModel.Calls.VoipPhoneCall _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipCallCoordinator)this.asInterface(uuid("4f118bcf-e8ef-4434-9c5f-a8d893fafe79"))).abi_RequestNewOutgoingCall(context, contactName, serviceName, media, &_ret));
		return _ret;
	}
	final void NotifyMuted()
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipCallCoordinator)this.asInterface(uuid("4f118bcf-e8ef-4434-9c5f-a8d893fafe79"))).abi_NotifyMuted());
	}
	final void NotifyUnmuted()
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipCallCoordinator)this.asInterface(uuid("4f118bcf-e8ef-4434-9c5f-a8d893fafe79"))).abi_NotifyUnmuted());
	}
	final Windows.ApplicationModel.Calls.VoipPhoneCall RequestOutgoingUpgradeToVideoCall(GUID callUpgradeGuid, HSTRING context, HSTRING contactName, HSTRING serviceName)
	{
		Windows.ApplicationModel.Calls.VoipPhoneCall _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipCallCoordinator)this.asInterface(uuid("4f118bcf-e8ef-4434-9c5f-a8d893fafe79"))).abi_RequestOutgoingUpgradeToVideoCall(callUpgradeGuid, context, contactName, serviceName, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Calls.VoipPhoneCall RequestIncomingUpgradeToVideoCall(HSTRING context, HSTRING contactName, HSTRING contactNumber, Windows.Foundation.Uri contactImage, HSTRING serviceName, Windows.Foundation.Uri brandingImage, HSTRING callDetails, Windows.Foundation.Uri ringtone, Windows.Foundation.TimeSpan ringTimeout)
	{
		Windows.ApplicationModel.Calls.VoipPhoneCall _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipCallCoordinator)this.asInterface(uuid("4f118bcf-e8ef-4434-9c5f-a8d893fafe79"))).abi_RequestIncomingUpgradeToVideoCall(context, contactName, contactNumber, contactImage, serviceName, brandingImage, callDetails, ringtone, ringTimeout, &_ret));
		return _ret;
	}
	final void TerminateCellularCall(GUID callUpgradeGuid)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipCallCoordinator)this.asInterface(uuid("4f118bcf-e8ef-4434-9c5f-a8d893fafe79"))).abi_TerminateCellularCall(callUpgradeGuid));
	}
	final void CancelUpgrade(GUID callUpgradeGuid)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipCallCoordinator)this.asInterface(uuid("4f118bcf-e8ef-4434-9c5f-a8d893fafe79"))).abi_CancelUpgrade(callUpgradeGuid));
	}

	private static Windows.ApplicationModel.Calls.IVoipCallCoordinatorStatics _staticInstance;
	public static Windows.ApplicationModel.Calls.IVoipCallCoordinatorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Calls.IVoipCallCoordinatorStatics);
		return _staticInstance;
	}
	static Windows.ApplicationModel.Calls.VoipCallCoordinator GetDefault()
	{
		Windows.ApplicationModel.Calls.VoipCallCoordinator _ret;
		Debug.OK(staticInstance.abi_GetDefault(&_ret));
		return _ret;
	}
}

interface VoipPhoneCall : Windows.ApplicationModel.Calls.IVoipPhoneCall
{
extern(Windows):
	final EventRegistrationToken OnEndRequested(void delegate(Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallStateChangeEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).add_EndRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallStateChangeEventArgs), Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallStateChangeEventArgs)(fn), &tok));
		return tok;
	}
	final void removeEndRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).remove_EndRequested(token));
	}
	final EventRegistrationToken OnHoldRequested(void delegate(Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallStateChangeEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).add_HoldRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallStateChangeEventArgs), Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallStateChangeEventArgs)(fn), &tok));
		return tok;
	}
	final void removeHoldRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).remove_HoldRequested(token));
	}
	final EventRegistrationToken OnResumeRequested(void delegate(Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallStateChangeEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).add_ResumeRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallStateChangeEventArgs), Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallStateChangeEventArgs)(fn), &tok));
		return tok;
	}
	final void removeResumeRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).remove_ResumeRequested(token));
	}
	final EventRegistrationToken OnAnswerRequested(void delegate(Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallAnswerEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).add_AnswerRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallAnswerEventArgs), Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallAnswerEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAnswerRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).remove_AnswerRequested(token));
	}
	final EventRegistrationToken OnRejectRequested(void delegate(Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallRejectEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).add_RejectRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallRejectEventArgs), Windows.ApplicationModel.Calls.VoipPhoneCall, Windows.ApplicationModel.Calls.CallRejectEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRejectRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).remove_RejectRequested(token));
	}
	final void NotifyCallHeld()
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).abi_NotifyCallHeld());
	}
	final void NotifyCallActive()
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).abi_NotifyCallActive());
	}
	final void NotifyCallEnded()
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).abi_NotifyCallEnded());
	}
	final HSTRING ContactName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).get_ContactName(&_ret));
		return _ret;
	}
	final void ContactName(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).set_ContactName(value));
	}
	final Windows.Foundation.DateTime StartTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).get_StartTime(&_ret));
		return _ret;
	}
	final void StartTime(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).set_StartTime(value));
	}
	final Windows.ApplicationModel.Calls.VoipPhoneCallMedia CallMedia()
	{
		Windows.ApplicationModel.Calls.VoipPhoneCallMedia _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).get_CallMedia(&_ret));
		return _ret;
	}
	final void CallMedia(Windows.ApplicationModel.Calls.VoipPhoneCallMedia value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).set_CallMedia(value));
	}
	final void NotifyCallReady()
	{
		Debug.OK((cast(Windows.ApplicationModel.Calls.IVoipPhoneCall)this.asInterface(uuid("6cf1f19a-7794-4a5a-8c68-ae87947a6990"))).abi_NotifyCallReady());
	}
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