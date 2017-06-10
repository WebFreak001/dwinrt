module Windows.ApplicationModel.Appointments;

import dwinrt;

@uuid("dd002f2f-2bdd-4076-90a3-22c275312965")
@WinrtFactory("Windows.ApplicationModel.Appointments.Appointment")
interface IAppointment : IInspectable
{
extern(Windows):
	HRESULT get_StartTime(Windows.Foundation.DateTime* return_value);
	HRESULT set_StartTime(Windows.Foundation.DateTime value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Duration(Windows.Foundation.TimeSpan value);
	HRESULT get_Location(HSTRING* return_value);
	HRESULT set_Location(HSTRING value);
	HRESULT get_Subject(HSTRING* return_value);
	HRESULT set_Subject(HSTRING value);
	HRESULT get_Details(HSTRING* return_value);
	HRESULT set_Details(HSTRING value);
	HRESULT get_Reminder(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_Reminder(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT get_Organizer(Windows.ApplicationModel.Appointments.AppointmentOrganizer* return_value);
	HRESULT set_Organizer(Windows.ApplicationModel.Appointments.AppointmentOrganizer value);
	HRESULT get_Invitees(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Appointments.AppointmentInvitee)* return_value);
	HRESULT get_Recurrence(Windows.ApplicationModel.Appointments.AppointmentRecurrence* return_value);
	HRESULT set_Recurrence(Windows.ApplicationModel.Appointments.AppointmentRecurrence value);
	HRESULT get_BusyStatus(Windows.ApplicationModel.Appointments.AppointmentBusyStatus* return_value);
	HRESULT set_BusyStatus(Windows.ApplicationModel.Appointments.AppointmentBusyStatus value);
	HRESULT get_AllDay(bool* return_value);
	HRESULT set_AllDay(bool value);
	HRESULT get_Sensitivity(Windows.ApplicationModel.Appointments.AppointmentSensitivity* return_value);
	HRESULT set_Sensitivity(Windows.ApplicationModel.Appointments.AppointmentSensitivity value);
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT set_Uri(Windows.Foundation.Uri value);
}

@uuid("5e85983c-540f-3452-9b5c-0dd7ad4c65a2")
@WinrtFactory("Windows.ApplicationModel.Appointments.Appointment")
interface IAppointment2 : IInspectable
{
extern(Windows):
	HRESULT get_LocalId(HSTRING* return_value);
	HRESULT get_CalendarId(HSTRING* return_value);
	HRESULT get_RoamingId(HSTRING* return_value);
	HRESULT set_RoamingId(HSTRING value);
	HRESULT get_OriginalStartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_IsResponseRequested(bool* return_value);
	HRESULT set_IsResponseRequested(bool value);
	HRESULT get_AllowNewTimeProposal(bool* return_value);
	HRESULT set_AllowNewTimeProposal(bool value);
	HRESULT get_OnlineMeetingLink(HSTRING* return_value);
	HRESULT set_OnlineMeetingLink(HSTRING value);
	HRESULT get_ReplyTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_ReplyTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_UserResponse(Windows.ApplicationModel.Appointments.AppointmentParticipantResponse* return_value);
	HRESULT set_UserResponse(Windows.ApplicationModel.Appointments.AppointmentParticipantResponse value);
	HRESULT get_HasInvitees(bool* return_value);
	HRESULT get_IsCanceledMeeting(bool* return_value);
	HRESULT set_IsCanceledMeeting(bool value);
	HRESULT get_IsOrganizedByUser(bool* return_value);
	HRESULT set_IsOrganizedByUser(bool value);
}

@uuid("bfcc45a9-8961-4991-934b-c48768e5a96c")
@WinrtFactory("Windows.ApplicationModel.Appointments.Appointment")
interface IAppointment3 : IInspectable
{
extern(Windows):
	HRESULT get_ChangeNumber(UINT64* return_value);
	HRESULT get_RemoteChangeNumber(UINT64* return_value);
	HRESULT set_RemoteChangeNumber(UINT64 value);
	HRESULT get_DetailsKind(Windows.ApplicationModel.Appointments.AppointmentDetailsKind* return_value);
	HRESULT set_DetailsKind(Windows.ApplicationModel.Appointments.AppointmentDetailsKind value);
}

@uuid("5273819d-8339-3d4f-a02f-64084452bb5d")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentCalendar")
interface IAppointmentCalendar : IInspectable
{
extern(Windows):
	HRESULT get_DisplayColor(Windows.UI.Color* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT set_DisplayName(HSTRING value);
	HRESULT get_LocalId(HSTRING* return_value);
	HRESULT get_IsHidden(bool* return_value);
	HRESULT get_OtherAppReadAccess(Windows.ApplicationModel.Appointments.AppointmentCalendarOtherAppReadAccess* return_value);
	HRESULT set_OtherAppReadAccess(Windows.ApplicationModel.Appointments.AppointmentCalendarOtherAppReadAccess value);
	HRESULT get_OtherAppWriteAccess(Windows.ApplicationModel.Appointments.AppointmentCalendarOtherAppWriteAccess* return_value);
	HRESULT set_OtherAppWriteAccess(Windows.ApplicationModel.Appointments.AppointmentCalendarOtherAppWriteAccess value);
	HRESULT get_SourceDisplayName(HSTRING* return_value);
	HRESULT get_SummaryCardView(Windows.ApplicationModel.Appointments.AppointmentSummaryCardView* return_value);
	HRESULT set_SummaryCardView(Windows.ApplicationModel.Appointments.AppointmentSummaryCardView value);
	HRESULT abi_FindAppointmentsAsync(Windows.Foundation.DateTime rangeStart, Windows.Foundation.TimeSpan rangeLength, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment))* return_result);
	HRESULT abi_FindAppointmentsAsyncWithOptions(Windows.Foundation.DateTime rangeStart, Windows.Foundation.TimeSpan rangeLength, Windows.ApplicationModel.Appointments.FindAppointmentsOptions options, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment))* return_result);
	HRESULT abi_FindExceptionsFromMasterAsync(HSTRING masterLocalId, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.AppointmentException))* return_value);
	HRESULT abi_FindAllInstancesAsync(HSTRING masterLocalId, Windows.Foundation.DateTime rangeStart, Windows.Foundation.TimeSpan rangeLength, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment))* return_value);
	HRESULT abi_FindAllInstancesAsyncWithOptions(HSTRING masterLocalId, Windows.Foundation.DateTime rangeStart, Windows.Foundation.TimeSpan rangeLength, Windows.ApplicationModel.Appointments.FindAppointmentsOptions pOptions, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment))* return_value);
	HRESULT abi_GetAppointmentAsync(HSTRING localId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.Appointment)* return_result);
	HRESULT abi_GetAppointmentInstanceAsync(HSTRING localId, Windows.Foundation.DateTime instanceStartTime, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.Appointment)* return_result);
	HRESULT abi_FindUnexpandedAppointmentsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment))* return_result);
	HRESULT abi_FindUnexpandedAppointmentsAsyncWithOptions(Windows.ApplicationModel.Appointments.FindAppointmentsOptions options, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment))* return_result);
	HRESULT abi_DeleteAsync(Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_SaveAsync(Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_DeleteAppointmentAsync(HSTRING localId, Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_DeleteAppointmentInstanceAsync(HSTRING localId, Windows.Foundation.DateTime instanceStartTime, Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_SaveAppointmentAsync(Windows.ApplicationModel.Appointments.Appointment pAppointment, Windows.Foundation.IAsyncAction* return_asyncAction);
}

@uuid("18e7e422-2467-4e1c-a459-d8a29303d092")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentCalendar")
interface IAppointmentCalendar2 : IInspectable
{
extern(Windows):
	HRESULT get_SyncManager(Windows.ApplicationModel.Appointments.AppointmentCalendarSyncManager* return_value);
	HRESULT get_RemoteId(HSTRING* return_value);
	HRESULT set_RemoteId(HSTRING value);
	HRESULT set_DisplayColor(Windows.UI.Color value);
	HRESULT set_IsHidden(bool value);
	HRESULT get_UserDataAccountId(HSTRING* return_value);
	HRESULT get_CanCreateOrUpdateAppointments(bool* return_value);
	HRESULT set_CanCreateOrUpdateAppointments(bool value);
	HRESULT get_CanCancelMeetings(bool* return_value);
	HRESULT set_CanCancelMeetings(bool value);
	HRESULT get_CanForwardMeetings(bool* return_value);
	HRESULT set_CanForwardMeetings(bool value);
	HRESULT get_CanProposeNewTimeForMeetings(bool* return_value);
	HRESULT set_CanProposeNewTimeForMeetings(bool value);
	HRESULT get_CanUpdateMeetingResponses(bool* return_value);
	HRESULT set_CanUpdateMeetingResponses(bool value);
	HRESULT get_CanNotifyInvitees(bool* return_value);
	HRESULT set_CanNotifyInvitees(bool value);
	HRESULT get_MustNofityInvitees(bool* return_value);
	HRESULT set_MustNofityInvitees(bool value);
	HRESULT abi_TryCreateOrUpdateAppointmentAsync(Windows.ApplicationModel.Appointments.Appointment appointment, bool notifyInvitees, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_TryCancelMeetingAsync(Windows.ApplicationModel.Appointments.Appointment meeting, HSTRING subject, HSTRING comment, bool notifyInvitees, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_TryForwardMeetingAsync(Windows.ApplicationModel.Appointments.Appointment meeting, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Appointments.AppointmentInvitee) invitees, HSTRING subject, HSTRING forwardHeader, HSTRING comment, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_TryProposeNewTimeForMeetingAsync(Windows.ApplicationModel.Appointments.Appointment meeting, Windows.Foundation.DateTime newStartTime, Windows.Foundation.TimeSpan newDuration, HSTRING subject, HSTRING comment, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_TryUpdateMeetingResponseAsync(Windows.ApplicationModel.Appointments.Appointment meeting, Windows.ApplicationModel.Appointments.AppointmentParticipantResponse response, HSTRING subject, HSTRING comment, bool sendUpdate, Windows.Foundation.IAsyncOperation!(bool)* return_result);
}

@uuid("eb23d22b-a685-42ae-8495-b3119adb4167")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentCalendar")
interface IAppointmentCalendar3 : IInspectable
{
extern(Windows):
	HRESULT abi_RegisterSyncManagerAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("2b21b3a0-4aff-4392-bc5f-5645ffcffb17")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentCalendarSyncManager")
interface IAppointmentCalendarSyncManager : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.ApplicationModel.Appointments.AppointmentCalendarSyncStatus* return_value);
	HRESULT get_LastSuccessfulSyncTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_LastAttemptedSyncTime(Windows.Foundation.DateTime* return_value);
	HRESULT abi_SyncAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT add_SyncStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Appointments.AppointmentCalendarSyncManager, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_SyncStatusChanged(EventRegistrationToken token);
}

@uuid("647528ad-0d29-4c7c-aaa7-bf996805537c")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentCalendarSyncManager")
interface IAppointmentCalendarSyncManager2 : IInspectable
{
extern(Windows):
	HRESULT set_Status(Windows.ApplicationModel.Appointments.AppointmentCalendarSyncStatus value);
	HRESULT set_LastSuccessfulSyncTime(Windows.Foundation.DateTime value);
	HRESULT set_LastAttemptedSyncTime(Windows.Foundation.DateTime value);
}

@uuid("d5cdf0be-2f2f-3b7d-af0a-a7e20f3a46e3")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentConflictResult")
interface IAppointmentConflictResult : IInspectable
{
extern(Windows):
	HRESULT get_Type(Windows.ApplicationModel.Appointments.AppointmentConflictType* return_value);
	HRESULT get_Date(Windows.Foundation.DateTime* return_value);
}

@uuid("a2076767-16f6-4bce-9f5a-8600b8019fcb")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentException")
interface IAppointmentException : IInspectable
{
extern(Windows):
	HRESULT get_Appointment(Windows.ApplicationModel.Appointments.Appointment* return_value);
	HRESULT get_ExceptionProperties(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_IsDeleted(bool* return_value);
}

@uuid("13bf0796-9842-495b-b0e7-ef8f79c0701d")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentInvitee")
interface IAppointmentInvitee : IInspectable
{
extern(Windows):
	HRESULT get_Role(Windows.ApplicationModel.Appointments.AppointmentParticipantRole* return_value);
	HRESULT set_Role(Windows.ApplicationModel.Appointments.AppointmentParticipantRole value);
	HRESULT get_Response(Windows.ApplicationModel.Appointments.AppointmentParticipantResponse* return_value);
	HRESULT set_Response(Windows.ApplicationModel.Appointments.AppointmentParticipantResponse value);
}

@uuid("70261423-73cc-4660-b318-b01365302a03")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentManagerForUser")
interface IAppointmentManagerForUser : IInspectable
{
extern(Windows):
	HRESULT abi_ShowAddAppointmentAsync(Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.Foundation.IAsyncOperation!(HSTRING)* return_result);
	HRESULT abi_ShowAddAppointmentWithPlacementAsync(Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.IAsyncOperation!(HSTRING)* return_result);
	HRESULT abi_ShowReplaceAppointmentAsync(HSTRING appointmentId, Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.Foundation.IAsyncOperation!(HSTRING)* return_result);
	HRESULT abi_ShowReplaceAppointmentWithPlacementAsync(HSTRING appointmentId, Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.IAsyncOperation!(HSTRING)* return_result);
	HRESULT abi_ShowReplaceAppointmentWithPlacementAndDateAsync(HSTRING appointmentId, Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.DateTime instanceStartDate, Windows.Foundation.IAsyncOperation!(HSTRING)* return_result);
	HRESULT abi_ShowRemoveAppointmentAsync(HSTRING appointmentId, Windows.Foundation.Rect selection, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_ShowRemoveAppointmentWithPlacementAsync(HSTRING appointmentId, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_ShowRemoveAppointmentWithPlacementAndDateAsync(HSTRING appointmentId, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.DateTime instanceStartDate, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_ShowTimeFrameAsync(Windows.Foundation.DateTime timeToShow, Windows.Foundation.TimeSpan duration, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ShowAppointmentDetailsAsync(HSTRING appointmentId, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ShowAppointmentDetailsWithDateAsync(HSTRING appointmentId, Windows.Foundation.DateTime instanceStartDate, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ShowEditNewAppointmentAsync(Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.IAsyncOperation!(HSTRING)* return_result);
	HRESULT abi_RequestStoreAsync(Windows.ApplicationModel.Appointments.AppointmentStoreAccessType options, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentStore)* return_result);
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("3a30fa01-5c40-499d-b33f-a43050f74fc4")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentManager")
interface IAppointmentManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_ShowAddAppointmentAsync(Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_ShowAddAppointmentWithPlacementAsync(Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_ShowReplaceAppointmentAsync(HSTRING appointmentId, Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_ShowReplaceAppointmentWithPlacementAsync(HSTRING appointmentId, Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_ShowReplaceAppointmentWithPlacementAndDateAsync(HSTRING appointmentId, Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.DateTime instanceStartDate, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_ShowRemoveAppointmentAsync(HSTRING appointmentId, Windows.Foundation.Rect selection, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_ShowRemoveAppointmentWithPlacementAsync(HSTRING appointmentId, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_ShowRemoveAppointmentWithPlacementAndDateAsync(HSTRING appointmentId, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.DateTime instanceStartDate, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_ShowTimeFrameAsync(Windows.Foundation.DateTime timeToShow, Windows.Foundation.TimeSpan duration, Windows.Foundation.IAsyncAction* return_asyncAction);
}

@uuid("0a81f60d-d04f-4034-af72-a36573b45ff0")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentManager")
interface IAppointmentManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_ShowAppointmentDetailsAsync(HSTRING appointmentId, Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_ShowAppointmentDetailsWithDateAsync(HSTRING appointmentId, Windows.Foundation.DateTime instanceStartDate, Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_ShowEditNewAppointmentAsync(Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_RequestStoreAsync(Windows.ApplicationModel.Appointments.AppointmentStoreAccessType options, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentStore)* return_operation);
}

@uuid("2f9ae09c-b34c-4dc7-a35d-cafd88ae3ec6")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentManager")
interface IAppointmentManagerStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_GetForUser(Windows.System.User user, Windows.ApplicationModel.Appointments.AppointmentManagerForUser* return_result);
}

@uuid("615e2902-9718-467b-83fb-b293a19121de")
interface IAppointmentParticipant : IInspectable
{
extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT set_DisplayName(HSTRING value);
	HRESULT get_Address(HSTRING* return_value);
	HRESULT set_Address(HSTRING value);
}

@uuid("25141fe9-68ae-3aae-855f-bc4441caa234")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentProperties")
interface IAppointmentPropertiesStatics : IInspectable
{
extern(Windows):
	HRESULT get_Subject(HSTRING* return_value);
	HRESULT get_Location(HSTRING* return_value);
	HRESULT get_StartTime(HSTRING* return_value);
	HRESULT get_Duration(HSTRING* return_value);
	HRESULT get_Reminder(HSTRING* return_value);
	HRESULT get_BusyStatus(HSTRING* return_value);
	HRESULT get_Sensitivity(HSTRING* return_value);
	HRESULT get_OriginalStartTime(HSTRING* return_value);
	HRESULT get_IsResponseRequested(HSTRING* return_value);
	HRESULT get_AllowNewTimeProposal(HSTRING* return_value);
	HRESULT get_AllDay(HSTRING* return_value);
	HRESULT get_Details(HSTRING* return_value);
	HRESULT get_OnlineMeetingLink(HSTRING* return_value);
	HRESULT get_ReplyTime(HSTRING* return_value);
	HRESULT get_Organizer(HSTRING* return_value);
	HRESULT get_UserResponse(HSTRING* return_value);
	HRESULT get_HasInvitees(HSTRING* return_value);
	HRESULT get_IsCanceledMeeting(HSTRING* return_value);
	HRESULT get_IsOrganizedByUser(HSTRING* return_value);
	HRESULT get_Recurrence(HSTRING* return_value);
	HRESULT get_Uri(HSTRING* return_value);
	HRESULT get_Invitees(HSTRING* return_value);
	HRESULT get_DefaultProperties(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("dffc434b-b017-45dd-8af5-d163d10801bb")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentProperties")
interface IAppointmentPropertiesStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_ChangeNumber(HSTRING* return_value);
	HRESULT get_RemoteChangeNumber(HSTRING* return_value);
	HRESULT get_DetailsKind(HSTRING* return_value);
}

@uuid("d87b3e83-15a6-487b-b959-0c361e60e954")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentRecurrence")
interface IAppointmentRecurrence : IInspectable
{
extern(Windows):
	HRESULT get_Unit(Windows.ApplicationModel.Appointments.AppointmentRecurrenceUnit* return_value);
	HRESULT set_Unit(Windows.ApplicationModel.Appointments.AppointmentRecurrenceUnit value);
	HRESULT get_Occurrences(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_Occurrences(Windows.Foundation.IReference!(UINT32) value);
	HRESULT get_Until(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_Until(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_Interval(UINT32* return_value);
	HRESULT set_Interval(UINT32 value);
	HRESULT get_DaysOfWeek(Windows.ApplicationModel.Appointments.AppointmentDaysOfWeek* return_value);
	HRESULT set_DaysOfWeek(Windows.ApplicationModel.Appointments.AppointmentDaysOfWeek value);
	HRESULT get_WeekOfMonth(Windows.ApplicationModel.Appointments.AppointmentWeekOfMonth* return_value);
	HRESULT set_WeekOfMonth(Windows.ApplicationModel.Appointments.AppointmentWeekOfMonth value);
	HRESULT get_Month(UINT32* return_value);
	HRESULT set_Month(UINT32 value);
	HRESULT get_Day(UINT32* return_value);
	HRESULT set_Day(UINT32 value);
}

@uuid("3df3a2e0-05a7-4f50-9f86-b03f9436254d")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentRecurrence")
interface IAppointmentRecurrence2 : IInspectable
{
extern(Windows):
	HRESULT get_RecurrenceType(Windows.ApplicationModel.Appointments.RecurrenceType* return_value);
	HRESULT get_TimeZone(HSTRING* return_value);
	HRESULT set_TimeZone(HSTRING value);
}

@uuid("89ff96d9-da4d-4a17-8dd2-1cebc2b5ff9d")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentRecurrence")
interface IAppointmentRecurrence3 : IInspectable
{
extern(Windows):
	HRESULT get_CalendarIdentifier(HSTRING* return_value);
}

@uuid("a461918c-7a47-4d96-96c9-15cd8a05a735")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentStore")
interface IAppointmentStore : IInspectable
{
extern(Windows):
	HRESULT get_ChangeTracker(Windows.ApplicationModel.Appointments.AppointmentStoreChangeTracker* return_value);
	HRESULT abi_CreateAppointmentCalendarAsync(HSTRING name, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentCalendar)* return_operation);
	HRESULT abi_GetAppointmentCalendarAsync(HSTRING calendarId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentCalendar)* return_result);
	HRESULT abi_GetAppointmentAsync(HSTRING localId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.Appointment)* return_result);
	HRESULT abi_GetAppointmentInstanceAsync(HSTRING localId, Windows.Foundation.DateTime instanceStartTime, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.Appointment)* return_result);
	HRESULT abi_FindAppointmentCalendarsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.AppointmentCalendar))* return_result);
	HRESULT abi_FindAppointmentCalendarsAsyncWithOptions(Windows.ApplicationModel.Appointments.FindAppointmentCalendarsOptions options, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.AppointmentCalendar))* return_result);
	HRESULT abi_FindAppointmentsAsync(Windows.Foundation.DateTime rangeStart, Windows.Foundation.TimeSpan rangeLength, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment))* return_result);
	HRESULT abi_FindAppointmentsAsyncWithOptions(Windows.Foundation.DateTime rangeStart, Windows.Foundation.TimeSpan rangeLength, Windows.ApplicationModel.Appointments.FindAppointmentsOptions options, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment))* return_result);
	HRESULT abi_FindConflictAsync(Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentConflictResult)* return_result);
	HRESULT abi_FindConflictAsyncWithInstanceStart(Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.DateTime instanceStartTime, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentConflictResult)* return_result);
	HRESULT abi_MoveAppointmentAsync(Windows.ApplicationModel.Appointments.Appointment appointment, Windows.ApplicationModel.Appointments.AppointmentCalendar destinationCalendar, Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_ShowAddAppointmentAsync(Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_ShowReplaceAppointmentAsync(HSTRING localId, Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_ShowReplaceAppointmentWithPlacementAndDateAsync(HSTRING localId, Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.DateTime instanceStartDate, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_ShowRemoveAppointmentAsync(HSTRING localId, Windows.Foundation.Rect selection, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_ShowRemoveAppointmentWithPlacementAndDateAsync(HSTRING localId, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.DateTime instanceStartDate, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_ShowAppointmentDetailsAsync(HSTRING localId, Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_ShowAppointmentDetailsWithDateAsync(HSTRING localId, Windows.Foundation.DateTime instanceStartDate, Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_ShowEditNewAppointmentAsync(Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_FindLocalIdsFromRoamingIdAsync(HSTRING roamingId, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING))* return_operation);
}

@uuid("25c48c20-1c41-424f-8084-67c1cfe0a854")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentStore")
interface IAppointmentStore2 : IInspectable
{
extern(Windows):
	HRESULT add_StoreChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Appointments.AppointmentStore, Windows.ApplicationModel.Appointments.AppointmentStoreChangedEventArgs) pHandler, EventRegistrationToken* return_pToken);
	HRESULT remove_StoreChanged(EventRegistrationToken token);
	HRESULT abi_CreateAppointmentCalendarInAccountAsync(HSTRING name, HSTRING userDataAccountId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentCalendar)* return_operation);
}

@uuid("a5a6e035-0a33-3654-8463-b543e90c3b79")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentStoreChange")
interface IAppointmentStoreChange : IInspectable
{
extern(Windows):
	HRESULT get_Appointment(Windows.ApplicationModel.Appointments.Appointment* return_value);
	HRESULT get_ChangeType(Windows.ApplicationModel.Appointments.AppointmentStoreChangeType* return_value);
}

@uuid("b37d0dce-5211-4402-a608-a96fe70b8ee2")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentStoreChange")
interface IAppointmentStoreChange2 : IInspectable
{
extern(Windows):
	HRESULT get_AppointmentCalendar(Windows.ApplicationModel.Appointments.AppointmentCalendar* return_value);
}

@uuid("8b2409f1-65f3-42a0-961d-4c209bf30370")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentStoreChangeReader")
interface IAppointmentStoreChangeReader : IInspectable
{
extern(Windows):
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.AppointmentStoreChange))* return_result);
	HRESULT abi_AcceptChanges();
	HRESULT abi_AcceptChangesThrough(Windows.ApplicationModel.Appointments.AppointmentStoreChange lastChangeToAccept);
}

@uuid("1b25f4b1-8ece-4f17-93c8-e6412458fd5c")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentStoreChangeTracker")
interface IAppointmentStoreChangeTracker : IInspectable
{
extern(Windows):
	HRESULT abi_GetChangeReader(Windows.ApplicationModel.Appointments.AppointmentStoreChangeReader* return_value);
	HRESULT abi_Enable();
	HRESULT abi_Reset();
}

@uuid("4cb82026-fedb-4bc3-9662-95a9befdf4df")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentStoreChangedDeferral")
interface IAppointmentStoreChangedDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("2285f8b9-0791-417e-bfea-cc6d41636c8c")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentStoreChangedEventArgs")
interface IAppointmentStoreChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.ApplicationModel.Appointments.AppointmentStoreChangedDeferral* return_result);
}

@uuid("9b33cb11-c301-421e-afef-047ecfa76adb")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentStoreNotificationTriggerDetails")
interface IAppointmentStoreNotificationTriggerDetails : IInspectable
{
}

@uuid("55f7dc55-9942-3086-82b5-2cb29f64d5f5")
@WinrtFactory("Windows.ApplicationModel.Appointments.FindAppointmentsOptions")
interface IFindAppointmentsOptions : IInspectable
{
extern(Windows):
	HRESULT get_CalendarIds(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_FetchProperties(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_IncludeHidden(bool* return_value);
	HRESULT set_IncludeHidden(bool value);
	HRESULT get_MaxCount(UINT32* return_value);
	HRESULT set_MaxCount(UINT32 value);
}

interface Appointment : Windows.ApplicationModel.Appointments.IAppointment, Windows.ApplicationModel.Appointments.IAppointment2, Windows.ApplicationModel.Appointments.IAppointment3
{
extern(Windows):
	final Windows.Foundation.DateTime StartTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).get_StartTime(&_ret));
		return _ret;
	}
	final void StartTime(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).set_StartTime(value));
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).get_Duration(&_ret));
		return _ret;
	}
	final void Duration(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).set_Duration(value));
	}
	final HSTRING Location()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).get_Location(&_ret));
		return _ret;
	}
	final void Location(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).set_Location(value));
	}
	final HSTRING Subject()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).get_Subject(&_ret));
		return _ret;
	}
	final void Subject(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).set_Subject(value));
	}
	final HSTRING Details()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).get_Details(&_ret));
		return _ret;
	}
	final void Details(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).set_Details(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Reminder()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).get_Reminder(&_ret));
		return _ret;
	}
	final void Reminder(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).set_Reminder(value));
	}
	final Windows.ApplicationModel.Appointments.AppointmentOrganizer Organizer()
	{
		Windows.ApplicationModel.Appointments.AppointmentOrganizer _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).get_Organizer(&_ret));
		return _ret;
	}
	final void Organizer(Windows.ApplicationModel.Appointments.AppointmentOrganizer value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).set_Organizer(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Appointments.AppointmentInvitee) Invitees()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Appointments.AppointmentInvitee) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).get_Invitees(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Appointments.AppointmentRecurrence Recurrence()
	{
		Windows.ApplicationModel.Appointments.AppointmentRecurrence _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).get_Recurrence(&_ret));
		return _ret;
	}
	final void Recurrence(Windows.ApplicationModel.Appointments.AppointmentRecurrence value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).set_Recurrence(value));
	}
	final Windows.ApplicationModel.Appointments.AppointmentBusyStatus BusyStatus()
	{
		Windows.ApplicationModel.Appointments.AppointmentBusyStatus _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).get_BusyStatus(&_ret));
		return _ret;
	}
	final void BusyStatus(Windows.ApplicationModel.Appointments.AppointmentBusyStatus value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).set_BusyStatus(value));
	}
	final bool AllDay()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).get_AllDay(&_ret));
		return _ret;
	}
	final void AllDay(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).set_AllDay(value));
	}
	final Windows.ApplicationModel.Appointments.AppointmentSensitivity Sensitivity()
	{
		Windows.ApplicationModel.Appointments.AppointmentSensitivity _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).get_Sensitivity(&_ret));
		return _ret;
	}
	final void Sensitivity(Windows.ApplicationModel.Appointments.AppointmentSensitivity value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).set_Sensitivity(value));
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).get_Uri(&_ret));
		return _ret;
	}
	final void Uri(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment).set_Uri(value));
	}
	final HSTRING LocalId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).get_LocalId(&_ret));
		return _ret;
	}
	final HSTRING CalendarId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).get_CalendarId(&_ret));
		return _ret;
	}
	final HSTRING RoamingId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).get_RoamingId(&_ret));
		return _ret;
	}
	final void RoamingId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).set_RoamingId(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) OriginalStartTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).get_OriginalStartTime(&_ret));
		return _ret;
	}
	final bool IsResponseRequested()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).get_IsResponseRequested(&_ret));
		return _ret;
	}
	final void IsResponseRequested(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).set_IsResponseRequested(value));
	}
	final bool AllowNewTimeProposal()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).get_AllowNewTimeProposal(&_ret));
		return _ret;
	}
	final void AllowNewTimeProposal(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).set_AllowNewTimeProposal(value));
	}
	final HSTRING OnlineMeetingLink()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).get_OnlineMeetingLink(&_ret));
		return _ret;
	}
	final void OnlineMeetingLink(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).set_OnlineMeetingLink(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ReplyTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).get_ReplyTime(&_ret));
		return _ret;
	}
	final void ReplyTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).set_ReplyTime(value));
	}
	final Windows.ApplicationModel.Appointments.AppointmentParticipantResponse UserResponse()
	{
		Windows.ApplicationModel.Appointments.AppointmentParticipantResponse _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).get_UserResponse(&_ret));
		return _ret;
	}
	final void UserResponse(Windows.ApplicationModel.Appointments.AppointmentParticipantResponse value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).set_UserResponse(value));
	}
	final bool HasInvitees()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).get_HasInvitees(&_ret));
		return _ret;
	}
	final bool IsCanceledMeeting()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).get_IsCanceledMeeting(&_ret));
		return _ret;
	}
	final void IsCanceledMeeting(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).set_IsCanceledMeeting(value));
	}
	final bool IsOrganizedByUser()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).get_IsOrganizedByUser(&_ret));
		return _ret;
	}
	final void IsOrganizedByUser(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment2).set_IsOrganizedByUser(value));
	}
	final UINT64 ChangeNumber()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment3).get_ChangeNumber(&_ret));
		return _ret;
	}
	final UINT64 RemoteChangeNumber()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment3).get_RemoteChangeNumber(&_ret));
		return _ret;
	}
	final void RemoteChangeNumber(UINT64 value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment3).set_RemoteChangeNumber(value));
	}
	final Windows.ApplicationModel.Appointments.AppointmentDetailsKind DetailsKind()
	{
		Windows.ApplicationModel.Appointments.AppointmentDetailsKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment3).get_DetailsKind(&_ret));
		return _ret;
	}
	final void DetailsKind(Windows.ApplicationModel.Appointments.AppointmentDetailsKind value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointment3).set_DetailsKind(value));
	}
}

interface AppointmentCalendar : Windows.ApplicationModel.Appointments.IAppointmentCalendar, Windows.ApplicationModel.Appointments.IAppointmentCalendar2, Windows.ApplicationModel.Appointments.IAppointmentCalendar3
{
extern(Windows):
	final Windows.UI.Color DisplayColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).get_DisplayColor(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).get_DisplayName(&_ret));
		return _ret;
	}
	final void DisplayName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).set_DisplayName(value));
	}
	final HSTRING LocalId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).get_LocalId(&_ret));
		return _ret;
	}
	final bool IsHidden()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).get_IsHidden(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Appointments.AppointmentCalendarOtherAppReadAccess OtherAppReadAccess()
	{
		Windows.ApplicationModel.Appointments.AppointmentCalendarOtherAppReadAccess _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).get_OtherAppReadAccess(&_ret));
		return _ret;
	}
	final void OtherAppReadAccess(Windows.ApplicationModel.Appointments.AppointmentCalendarOtherAppReadAccess value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).set_OtherAppReadAccess(value));
	}
	final Windows.ApplicationModel.Appointments.AppointmentCalendarOtherAppWriteAccess OtherAppWriteAccess()
	{
		Windows.ApplicationModel.Appointments.AppointmentCalendarOtherAppWriteAccess _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).get_OtherAppWriteAccess(&_ret));
		return _ret;
	}
	final void OtherAppWriteAccess(Windows.ApplicationModel.Appointments.AppointmentCalendarOtherAppWriteAccess value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).set_OtherAppWriteAccess(value));
	}
	final HSTRING SourceDisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).get_SourceDisplayName(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Appointments.AppointmentSummaryCardView SummaryCardView()
	{
		Windows.ApplicationModel.Appointments.AppointmentSummaryCardView _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).get_SummaryCardView(&_ret));
		return _ret;
	}
	final void SummaryCardView(Windows.ApplicationModel.Appointments.AppointmentSummaryCardView value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).set_SummaryCardView(value));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment)) FindAppointmentsAsync(Windows.Foundation.DateTime rangeStart, Windows.Foundation.TimeSpan rangeLength)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).abi_FindAppointmentsAsync(rangeStart, rangeLength, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment)) FindAppointmentsAsyncWithOptions(Windows.Foundation.DateTime rangeStart, Windows.Foundation.TimeSpan rangeLength, Windows.ApplicationModel.Appointments.FindAppointmentsOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).abi_FindAppointmentsAsyncWithOptions(rangeStart, rangeLength, options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.AppointmentException)) FindExceptionsFromMasterAsync(HSTRING masterLocalId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.AppointmentException)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).abi_FindExceptionsFromMasterAsync(masterLocalId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment)) FindAllInstancesAsync(HSTRING masterLocalId, Windows.Foundation.DateTime rangeStart, Windows.Foundation.TimeSpan rangeLength)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).abi_FindAllInstancesAsync(masterLocalId, rangeStart, rangeLength, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment)) FindAllInstancesAsyncWithOptions(HSTRING masterLocalId, Windows.Foundation.DateTime rangeStart, Windows.Foundation.TimeSpan rangeLength, Windows.ApplicationModel.Appointments.FindAppointmentsOptions pOptions)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).abi_FindAllInstancesAsyncWithOptions(masterLocalId, rangeStart, rangeLength, pOptions, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.Appointment) GetAppointmentAsync(HSTRING localId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.Appointment) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).abi_GetAppointmentAsync(localId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.Appointment) GetAppointmentInstanceAsync(HSTRING localId, Windows.Foundation.DateTime instanceStartTime)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.Appointment) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).abi_GetAppointmentInstanceAsync(localId, instanceStartTime, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment)) FindUnexpandedAppointmentsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).abi_FindUnexpandedAppointmentsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment)) FindUnexpandedAppointmentsAsyncWithOptions(Windows.ApplicationModel.Appointments.FindAppointmentsOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).abi_FindUnexpandedAppointmentsAsyncWithOptions(options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).abi_DeleteAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SaveAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).abi_SaveAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAppointmentAsync(HSTRING localId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).abi_DeleteAppointmentAsync(localId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAppointmentInstanceAsync(HSTRING localId, Windows.Foundation.DateTime instanceStartTime)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).abi_DeleteAppointmentInstanceAsync(localId, instanceStartTime, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SaveAppointmentAsync(Windows.ApplicationModel.Appointments.Appointment pAppointment)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar).abi_SaveAppointmentAsync(pAppointment, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Appointments.AppointmentCalendarSyncManager SyncManager()
	{
		Windows.ApplicationModel.Appointments.AppointmentCalendarSyncManager _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).get_SyncManager(&_ret));
		return _ret;
	}
	final HSTRING RemoteId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).get_RemoteId(&_ret));
		return _ret;
	}
	final void RemoteId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).set_RemoteId(value));
	}
	final void DisplayColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).set_DisplayColor(value));
	}
	final void IsHidden(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).set_IsHidden(value));
	}
	final HSTRING UserDataAccountId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).get_UserDataAccountId(&_ret));
		return _ret;
	}
	final bool CanCreateOrUpdateAppointments()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).get_CanCreateOrUpdateAppointments(&_ret));
		return _ret;
	}
	final void CanCreateOrUpdateAppointments(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).set_CanCreateOrUpdateAppointments(value));
	}
	final bool CanCancelMeetings()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).get_CanCancelMeetings(&_ret));
		return _ret;
	}
	final void CanCancelMeetings(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).set_CanCancelMeetings(value));
	}
	final bool CanForwardMeetings()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).get_CanForwardMeetings(&_ret));
		return _ret;
	}
	final void CanForwardMeetings(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).set_CanForwardMeetings(value));
	}
	final bool CanProposeNewTimeForMeetings()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).get_CanProposeNewTimeForMeetings(&_ret));
		return _ret;
	}
	final void CanProposeNewTimeForMeetings(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).set_CanProposeNewTimeForMeetings(value));
	}
	final bool CanUpdateMeetingResponses()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).get_CanUpdateMeetingResponses(&_ret));
		return _ret;
	}
	final void CanUpdateMeetingResponses(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).set_CanUpdateMeetingResponses(value));
	}
	final bool CanNotifyInvitees()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).get_CanNotifyInvitees(&_ret));
		return _ret;
	}
	final void CanNotifyInvitees(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).set_CanNotifyInvitees(value));
	}
	final bool MustNofityInvitees()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).get_MustNofityInvitees(&_ret));
		return _ret;
	}
	final void MustNofityInvitees(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).set_MustNofityInvitees(value));
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryCreateOrUpdateAppointmentAsync(Windows.ApplicationModel.Appointments.Appointment appointment, bool notifyInvitees)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).abi_TryCreateOrUpdateAppointmentAsync(appointment, notifyInvitees, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryCancelMeetingAsync(Windows.ApplicationModel.Appointments.Appointment meeting, HSTRING subject, HSTRING comment, bool notifyInvitees)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).abi_TryCancelMeetingAsync(meeting, subject, comment, notifyInvitees, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryForwardMeetingAsync(Windows.ApplicationModel.Appointments.Appointment meeting, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Appointments.AppointmentInvitee) invitees, HSTRING subject, HSTRING forwardHeader, HSTRING comment)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).abi_TryForwardMeetingAsync(meeting, invitees, subject, forwardHeader, comment, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryProposeNewTimeForMeetingAsync(Windows.ApplicationModel.Appointments.Appointment meeting, Windows.Foundation.DateTime newStartTime, Windows.Foundation.TimeSpan newDuration, HSTRING subject, HSTRING comment)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).abi_TryProposeNewTimeForMeetingAsync(meeting, newStartTime, newDuration, subject, comment, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryUpdateMeetingResponseAsync(Windows.ApplicationModel.Appointments.Appointment meeting, Windows.ApplicationModel.Appointments.AppointmentParticipantResponse response, HSTRING subject, HSTRING comment, bool sendUpdate)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar2).abi_TryUpdateMeetingResponseAsync(meeting, response, subject, comment, sendUpdate, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction RegisterSyncManagerAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendar3).abi_RegisterSyncManagerAsync(&_ret));
		return _ret;
	}
}

interface AppointmentCalendarSyncManager : Windows.ApplicationModel.Appointments.IAppointmentCalendarSyncManager, Windows.ApplicationModel.Appointments.IAppointmentCalendarSyncManager2
{
extern(Windows):
	final Windows.ApplicationModel.Appointments.AppointmentCalendarSyncStatus Status()
	{
		Windows.ApplicationModel.Appointments.AppointmentCalendarSyncStatus _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendarSyncManager).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime LastSuccessfulSyncTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendarSyncManager).get_LastSuccessfulSyncTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime LastAttemptedSyncTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendarSyncManager).get_LastAttemptedSyncTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) SyncAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendarSyncManager).abi_SyncAsync(&_ret));
		return _ret;
	}
	final void Status(Windows.ApplicationModel.Appointments.AppointmentCalendarSyncStatus value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendarSyncManager2).set_Status(value));
	}
	final void LastSuccessfulSyncTime(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendarSyncManager2).set_LastSuccessfulSyncTime(value));
	}
	final void LastAttemptedSyncTime(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentCalendarSyncManager2).set_LastAttemptedSyncTime(value));
	}
}

interface AppointmentConflictResult : Windows.ApplicationModel.Appointments.IAppointmentConflictResult
{
extern(Windows):
	final Windows.ApplicationModel.Appointments.AppointmentConflictType Type()
	{
		Windows.ApplicationModel.Appointments.AppointmentConflictType _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentConflictResult).get_Type(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Date()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentConflictResult).get_Date(&_ret));
		return _ret;
	}
}

interface AppointmentException : Windows.ApplicationModel.Appointments.IAppointmentException
{
extern(Windows):
	final Windows.ApplicationModel.Appointments.Appointment Appointment()
	{
		Windows.ApplicationModel.Appointments.Appointment _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentException).get_Appointment(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) ExceptionProperties()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentException).get_ExceptionProperties(&_ret));
		return _ret;
	}
	final bool IsDeleted()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentException).get_IsDeleted(&_ret));
		return _ret;
	}
}

interface AppointmentInvitee : Windows.ApplicationModel.Appointments.IAppointmentInvitee, Windows.ApplicationModel.Appointments.IAppointmentParticipant
{
extern(Windows):
	final Windows.ApplicationModel.Appointments.AppointmentParticipantRole Role()
	{
		Windows.ApplicationModel.Appointments.AppointmentParticipantRole _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentInvitee).get_Role(&_ret));
		return _ret;
	}
	final void Role(Windows.ApplicationModel.Appointments.AppointmentParticipantRole value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentInvitee).set_Role(value));
	}
	final Windows.ApplicationModel.Appointments.AppointmentParticipantResponse Response()
	{
		Windows.ApplicationModel.Appointments.AppointmentParticipantResponse _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentInvitee).get_Response(&_ret));
		return _ret;
	}
	final void Response(Windows.ApplicationModel.Appointments.AppointmentParticipantResponse value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentInvitee).set_Response(value));
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentParticipant).get_DisplayName(&_ret));
		return _ret;
	}
	final void DisplayName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentParticipant).set_DisplayName(value));
	}
	final HSTRING Address()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentParticipant).get_Address(&_ret));
		return _ret;
	}
	final void Address(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentParticipant).set_Address(value));
	}
}

interface AppointmentManager
{
}

interface AppointmentManagerForUser : Windows.ApplicationModel.Appointments.IAppointmentManagerForUser
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(HSTRING) ShowAddAppointmentAsync(Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentManagerForUser).abi_ShowAddAppointmentAsync(appointment, selection, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) ShowAddAppointmentWithPlacementAsync(Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentManagerForUser).abi_ShowAddAppointmentWithPlacementAsync(appointment, selection, preferredPlacement, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) ShowReplaceAppointmentAsync(HSTRING appointmentId, Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentManagerForUser).abi_ShowReplaceAppointmentAsync(appointmentId, appointment, selection, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) ShowReplaceAppointmentWithPlacementAsync(HSTRING appointmentId, Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentManagerForUser).abi_ShowReplaceAppointmentWithPlacementAsync(appointmentId, appointment, selection, preferredPlacement, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) ShowReplaceAppointmentWithPlacementAndDateAsync(HSTRING appointmentId, Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.DateTime instanceStartDate)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentManagerForUser).abi_ShowReplaceAppointmentWithPlacementAndDateAsync(appointmentId, appointment, selection, preferredPlacement, instanceStartDate, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) ShowRemoveAppointmentAsync(HSTRING appointmentId, Windows.Foundation.Rect selection)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentManagerForUser).abi_ShowRemoveAppointmentAsync(appointmentId, selection, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) ShowRemoveAppointmentWithPlacementAsync(HSTRING appointmentId, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentManagerForUser).abi_ShowRemoveAppointmentWithPlacementAsync(appointmentId, selection, preferredPlacement, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) ShowRemoveAppointmentWithPlacementAndDateAsync(HSTRING appointmentId, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.DateTime instanceStartDate)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentManagerForUser).abi_ShowRemoveAppointmentWithPlacementAndDateAsync(appointmentId, selection, preferredPlacement, instanceStartDate, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ShowTimeFrameAsync(Windows.Foundation.DateTime timeToShow, Windows.Foundation.TimeSpan duration)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentManagerForUser).abi_ShowTimeFrameAsync(timeToShow, duration, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ShowAppointmentDetailsAsync(HSTRING appointmentId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentManagerForUser).abi_ShowAppointmentDetailsAsync(appointmentId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ShowAppointmentDetailsWithDateAsync(HSTRING appointmentId, Windows.Foundation.DateTime instanceStartDate)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentManagerForUser).abi_ShowAppointmentDetailsWithDateAsync(appointmentId, instanceStartDate, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) ShowEditNewAppointmentAsync(Windows.ApplicationModel.Appointments.Appointment appointment)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentManagerForUser).abi_ShowEditNewAppointmentAsync(appointment, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentStore) RequestStoreAsync(Windows.ApplicationModel.Appointments.AppointmentStoreAccessType options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentStore) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentManagerForUser).abi_RequestStoreAsync(options, &_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentManagerForUser).get_User(&_ret));
		return _ret;
	}
}

interface AppointmentOrganizer : Windows.ApplicationModel.Appointments.IAppointmentParticipant
{
extern(Windows):
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentParticipant).get_DisplayName(&_ret));
		return _ret;
	}
	final void DisplayName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentParticipant).set_DisplayName(value));
	}
	final HSTRING Address()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentParticipant).get_Address(&_ret));
		return _ret;
	}
	final void Address(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentParticipant).set_Address(value));
	}
}

interface AppointmentProperties
{
}

interface AppointmentRecurrence : Windows.ApplicationModel.Appointments.IAppointmentRecurrence, Windows.ApplicationModel.Appointments.IAppointmentRecurrence2, Windows.ApplicationModel.Appointments.IAppointmentRecurrence3
{
extern(Windows):
	final Windows.ApplicationModel.Appointments.AppointmentRecurrenceUnit Unit()
	{
		Windows.ApplicationModel.Appointments.AppointmentRecurrenceUnit _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence).get_Unit(&_ret));
		return _ret;
	}
	final void Unit(Windows.ApplicationModel.Appointments.AppointmentRecurrenceUnit value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence).set_Unit(value));
	}
	final Windows.Foundation.IReference!(UINT32) Occurrences()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence).get_Occurrences(&_ret));
		return _ret;
	}
	final void Occurrences(Windows.Foundation.IReference!(UINT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence).set_Occurrences(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) Until()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence).get_Until(&_ret));
		return _ret;
	}
	final void Until(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence).set_Until(value));
	}
	final UINT32 Interval()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence).get_Interval(&_ret));
		return _ret;
	}
	final void Interval(UINT32 value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence).set_Interval(value));
	}
	final Windows.ApplicationModel.Appointments.AppointmentDaysOfWeek DaysOfWeek()
	{
		Windows.ApplicationModel.Appointments.AppointmentDaysOfWeek _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence).get_DaysOfWeek(&_ret));
		return _ret;
	}
	final void DaysOfWeek(Windows.ApplicationModel.Appointments.AppointmentDaysOfWeek value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence).set_DaysOfWeek(value));
	}
	final Windows.ApplicationModel.Appointments.AppointmentWeekOfMonth WeekOfMonth()
	{
		Windows.ApplicationModel.Appointments.AppointmentWeekOfMonth _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence).get_WeekOfMonth(&_ret));
		return _ret;
	}
	final void WeekOfMonth(Windows.ApplicationModel.Appointments.AppointmentWeekOfMonth value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence).set_WeekOfMonth(value));
	}
	final UINT32 Month()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence).get_Month(&_ret));
		return _ret;
	}
	final void Month(UINT32 value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence).set_Month(value));
	}
	final UINT32 Day()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence).get_Day(&_ret));
		return _ret;
	}
	final void Day(UINT32 value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence).set_Day(value));
	}
	final Windows.ApplicationModel.Appointments.RecurrenceType RecurrenceType()
	{
		Windows.ApplicationModel.Appointments.RecurrenceType _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence2).get_RecurrenceType(&_ret));
		return _ret;
	}
	final HSTRING TimeZone()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence2).get_TimeZone(&_ret));
		return _ret;
	}
	final void TimeZone(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence2).set_TimeZone(value));
	}
	final HSTRING CalendarIdentifier()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentRecurrence3).get_CalendarIdentifier(&_ret));
		return _ret;
	}
}

interface AppointmentStore : Windows.ApplicationModel.Appointments.IAppointmentStore, Windows.ApplicationModel.Appointments.IAppointmentStore2
{
extern(Windows):
	final Windows.ApplicationModel.Appointments.AppointmentStoreChangeTracker ChangeTracker()
	{
		Windows.ApplicationModel.Appointments.AppointmentStoreChangeTracker _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).get_ChangeTracker(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentCalendar) CreateAppointmentCalendarAsync(HSTRING name)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentCalendar) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_CreateAppointmentCalendarAsync(name, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentCalendar) GetAppointmentCalendarAsync(HSTRING calendarId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentCalendar) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_GetAppointmentCalendarAsync(calendarId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.Appointment) GetAppointmentAsync(HSTRING localId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.Appointment) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_GetAppointmentAsync(localId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.Appointment) GetAppointmentInstanceAsync(HSTRING localId, Windows.Foundation.DateTime instanceStartTime)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.Appointment) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_GetAppointmentInstanceAsync(localId, instanceStartTime, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.AppointmentCalendar)) FindAppointmentCalendarsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.AppointmentCalendar)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_FindAppointmentCalendarsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.AppointmentCalendar)) FindAppointmentCalendarsAsyncWithOptions(Windows.ApplicationModel.Appointments.FindAppointmentCalendarsOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.AppointmentCalendar)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_FindAppointmentCalendarsAsyncWithOptions(options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment)) FindAppointmentsAsync(Windows.Foundation.DateTime rangeStart, Windows.Foundation.TimeSpan rangeLength)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_FindAppointmentsAsync(rangeStart, rangeLength, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment)) FindAppointmentsAsyncWithOptions(Windows.Foundation.DateTime rangeStart, Windows.Foundation.TimeSpan rangeLength, Windows.ApplicationModel.Appointments.FindAppointmentsOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.Appointment)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_FindAppointmentsAsyncWithOptions(rangeStart, rangeLength, options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentConflictResult) FindConflictAsync(Windows.ApplicationModel.Appointments.Appointment appointment)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentConflictResult) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_FindConflictAsync(appointment, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentConflictResult) FindConflictAsyncWithInstanceStart(Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.DateTime instanceStartTime)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentConflictResult) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_FindConflictAsyncWithInstanceStart(appointment, instanceStartTime, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction MoveAppointmentAsync(Windows.ApplicationModel.Appointments.Appointment appointment, Windows.ApplicationModel.Appointments.AppointmentCalendar destinationCalendar)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_MoveAppointmentAsync(appointment, destinationCalendar, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) ShowAddAppointmentAsync(Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_ShowAddAppointmentAsync(appointment, selection, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) ShowReplaceAppointmentAsync(HSTRING localId, Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_ShowReplaceAppointmentAsync(localId, appointment, selection, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) ShowReplaceAppointmentWithPlacementAndDateAsync(HSTRING localId, Windows.ApplicationModel.Appointments.Appointment appointment, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.DateTime instanceStartDate)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_ShowReplaceAppointmentWithPlacementAndDateAsync(localId, appointment, selection, preferredPlacement, instanceStartDate, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) ShowRemoveAppointmentAsync(HSTRING localId, Windows.Foundation.Rect selection)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_ShowRemoveAppointmentAsync(localId, selection, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) ShowRemoveAppointmentWithPlacementAndDateAsync(HSTRING localId, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.DateTime instanceStartDate)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_ShowRemoveAppointmentWithPlacementAndDateAsync(localId, selection, preferredPlacement, instanceStartDate, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ShowAppointmentDetailsAsync(HSTRING localId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_ShowAppointmentDetailsAsync(localId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ShowAppointmentDetailsWithDateAsync(HSTRING localId, Windows.Foundation.DateTime instanceStartDate)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_ShowAppointmentDetailsWithDateAsync(localId, instanceStartDate, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) ShowEditNewAppointmentAsync(Windows.ApplicationModel.Appointments.Appointment appointment)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_ShowEditNewAppointmentAsync(appointment, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) FindLocalIdsFromRoamingIdAsync(HSTRING roamingId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore).abi_FindLocalIdsFromRoamingIdAsync(roamingId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentCalendar) CreateAppointmentCalendarInAccountAsync(HSTRING name, HSTRING userDataAccountId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Appointments.AppointmentCalendar) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStore2).abi_CreateAppointmentCalendarInAccountAsync(name, userDataAccountId, &_ret));
		return _ret;
	}
}

interface AppointmentStoreChange : Windows.ApplicationModel.Appointments.IAppointmentStoreChange, Windows.ApplicationModel.Appointments.IAppointmentStoreChange2
{
extern(Windows):
	final Windows.ApplicationModel.Appointments.Appointment Appointment()
	{
		Windows.ApplicationModel.Appointments.Appointment _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStoreChange).get_Appointment(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Appointments.AppointmentStoreChangeType ChangeType()
	{
		Windows.ApplicationModel.Appointments.AppointmentStoreChangeType _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStoreChange).get_ChangeType(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Appointments.AppointmentCalendar AppointmentCalendar()
	{
		Windows.ApplicationModel.Appointments.AppointmentCalendar _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStoreChange2).get_AppointmentCalendar(&_ret));
		return _ret;
	}
}

interface AppointmentStoreChangeReader : Windows.ApplicationModel.Appointments.IAppointmentStoreChangeReader
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.AppointmentStoreChange)) ReadBatchAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.AppointmentStoreChange)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStoreChangeReader).abi_ReadBatchAsync(&_ret));
		return _ret;
	}
	final void AcceptChanges()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStoreChangeReader).abi_AcceptChanges());
	}
	final void AcceptChangesThrough(Windows.ApplicationModel.Appointments.AppointmentStoreChange lastChangeToAccept)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStoreChangeReader).abi_AcceptChangesThrough(lastChangeToAccept));
	}
}

interface AppointmentStoreChangeTracker : Windows.ApplicationModel.Appointments.IAppointmentStoreChangeTracker
{
extern(Windows):
	final Windows.ApplicationModel.Appointments.AppointmentStoreChangeReader GetChangeReader()
	{
		Windows.ApplicationModel.Appointments.AppointmentStoreChangeReader _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStoreChangeTracker).abi_GetChangeReader(&_ret));
		return _ret;
	}
	final void Enable()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStoreChangeTracker).abi_Enable());
	}
	final void Reset()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStoreChangeTracker).abi_Reset());
	}
}

interface AppointmentStoreChangedDeferral : Windows.ApplicationModel.Appointments.IAppointmentStoreChangedDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStoreChangedDeferral).abi_Complete());
	}
}

interface AppointmentStoreChangedEventArgs : Windows.ApplicationModel.Appointments.IAppointmentStoreChangedEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Appointments.AppointmentStoreChangedDeferral GetDeferral()
	{
		Windows.ApplicationModel.Appointments.AppointmentStoreChangedDeferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IAppointmentStoreChangedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface AppointmentStoreNotificationTriggerDetails : Windows.ApplicationModel.Appointments.IAppointmentStoreNotificationTriggerDetails
{
}

interface FindAppointmentsOptions : Windows.ApplicationModel.Appointments.IFindAppointmentsOptions
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(HSTRING) CalendarIds()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IFindAppointmentsOptions).get_CalendarIds(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) FetchProperties()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IFindAppointmentsOptions).get_FetchProperties(&_ret));
		return _ret;
	}
	final bool IncludeHidden()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IFindAppointmentsOptions).get_IncludeHidden(&_ret));
		return _ret;
	}
	final void IncludeHidden(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IFindAppointmentsOptions).set_IncludeHidden(value));
	}
	final UINT32 MaxCount()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IFindAppointmentsOptions).get_MaxCount(&_ret));
		return _ret;
	}
	final void MaxCount(UINT32 value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.IFindAppointmentsOptions).set_MaxCount(value));
	}
}

enum AppointmentBusyStatus
{
	Busy = 0,
	Tentative = 1,
	Free = 2,
	OutOfOffice = 3,
	WorkingElsewhere = 4
}

enum AppointmentCalendarOtherAppReadAccess
{
	SystemOnly = 0,
	Limited = 1,
	Full = 2,
	None = 3
}

enum AppointmentCalendarOtherAppWriteAccess
{
	None = 0,
	SystemOnly = 1,
	Limited = 2
}

enum AppointmentCalendarSyncStatus
{
	Idle = 0,
	Syncing = 1,
	UpToDate = 2,
	AuthenticationError = 3,
	PolicyError = 4,
	UnknownError = 5,
	ManualAccountRemovalRequired = 6
}

enum AppointmentConflictType
{
	None = 0,
	Adjacent = 1,
	Overlap = 2
}

@bitflags
enum AppointmentDaysOfWeek
{
	None = 0x0,
	Sunday = 0x1,
	Monday = 0x2,
	Tuesday = 0x4,
	Wednesday = 0x8,
	Thursday = 0x10,
	Friday = 0x20,
	Saturday = 0x40
}

enum AppointmentDetailsKind
{
	PlainText = 0,
	Html = 1
}

enum AppointmentParticipantResponse
{
	None = 0,
	Tentative = 1,
	Accepted = 2,
	Declined = 3,
	Unknown = 4
}

enum AppointmentParticipantRole
{
	RequiredAttendee = 0,
	OptionalAttendee = 1,
	Resource = 2
}

enum AppointmentRecurrenceUnit
{
	Daily = 0,
	Weekly = 1,
	Monthly = 2,
	MonthlyOnDay = 3,
	Yearly = 4,
	YearlyOnDay = 5
}

enum AppointmentSensitivity
{
	Public = 0,
	Private = 1
}

enum AppointmentStoreAccessType
{
	AppCalendarsReadWrite = 0,
	AllCalendarsReadOnly = 1,
	AllCalendarsReadWrite = 2
}

enum AppointmentStoreChangeType
{
	AppointmentCreated = 0,
	AppointmentModified = 1,
	AppointmentDeleted = 2,
	ChangeTrackingLost = 3,
	CalendarCreated = 4,
	CalendarModified = 5,
	CalendarDeleted = 6
}

enum AppointmentSummaryCardView
{
	System = 0,
	App = 1
}

enum AppointmentWeekOfMonth
{
	First = 0,
	Second = 1,
	Third = 2,
	Fourth = 3,
	Last = 4
}

@bitflags
enum FindAppointmentCalendarsOptions
{
	None = 0x0,
	IncludeHidden = 0x1
}

enum RecurrenceType
{
	Master = 0,
	Instance = 1,
	ExceptionInstance = 2
}