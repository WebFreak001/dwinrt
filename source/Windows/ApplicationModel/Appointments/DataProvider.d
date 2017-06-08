module Windows.ApplicationModel.Appointments.DataProvider;

import dwinrt;

@uuid("49460f8d-6434-40d7-ad46-6297419314d1")
@WinrtFactory("Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarCancelMeetingRequest")
interface IAppointmentCalendarCancelMeetingRequest : IInspectable
{
extern(Windows):
	HRESULT get_AppointmentCalendarLocalId(HSTRING* return_value);
	HRESULT get_AppointmentLocalId(HSTRING* return_value);
	HRESULT get_AppointmentOriginalStartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_Subject(HSTRING* return_value);
	HRESULT get_Comment(HSTRING* return_value);
	HRESULT get_NotifyInvitees(bool* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("1a79be16-7f30-4e35-beef-9d2c7b6dcae1")
@WinrtFactory("Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarCancelMeetingRequestEventArgs")
interface IAppointmentCalendarCancelMeetingRequestEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarCancelMeetingRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("2e62f2b2-ca96-48ac-9124-406b19fefa70")
@WinrtFactory("Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarCreateOrUpdateAppointmentRequest")
interface IAppointmentCalendarCreateOrUpdateAppointmentRequest : IInspectable
{
extern(Windows):
	HRESULT get_AppointmentCalendarLocalId(HSTRING* return_value);
	HRESULT get_Appointment(Windows.ApplicationModel.Appointments.Appointment* return_value);
	HRESULT get_NotifyInvitees(bool* return_value);
	HRESULT get_ChangedProperties(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.ApplicationModel.Appointments.Appointment createdOrUpdatedAppointment, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("cf8ded28-002e-4bf7-8e9d-5e20d49aa3ba")
@WinrtFactory("Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs")
interface IAppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarCreateOrUpdateAppointmentRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("82e5ee56-26b6-4253-8a8f-6cf5f2ff7884")
@WinrtFactory("Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarForwardMeetingRequest")
interface IAppointmentCalendarForwardMeetingRequest : IInspectable
{
extern(Windows):
	HRESULT get_AppointmentCalendarLocalId(HSTRING* return_value);
	HRESULT get_AppointmentLocalId(HSTRING* return_value);
	HRESULT get_AppointmentOriginalStartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_Invitees(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.AppointmentInvitee)* return_value);
	HRESULT get_Subject(HSTRING* return_value);
	HRESULT get_ForwardHeader(HSTRING* return_value);
	HRESULT get_Comment(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("3109151a-23a2-42fd-9c82-c9a60d59f8a8")
@WinrtFactory("Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarForwardMeetingRequestEventArgs")
interface IAppointmentCalendarForwardMeetingRequestEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarForwardMeetingRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("ce1c63f5-edf6-43c3-82b7-be6b368c6900")
@WinrtFactory("Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarProposeNewTimeForMeetingRequest")
interface IAppointmentCalendarProposeNewTimeForMeetingRequest : IInspectable
{
extern(Windows):
	HRESULT get_AppointmentCalendarLocalId(HSTRING* return_value);
	HRESULT get_AppointmentLocalId(HSTRING* return_value);
	HRESULT get_AppointmentOriginalStartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_NewStartTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_NewDuration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Subject(HSTRING* return_value);
	HRESULT get_Comment(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("d2d777d8-fed1-4280-a3ba-2e1f47609aa2")
@WinrtFactory("Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarProposeNewTimeForMeetingRequestEventArgs")
interface IAppointmentCalendarProposeNewTimeForMeetingRequestEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarProposeNewTimeForMeetingRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("12ab382b-7163-4a56-9a4e-7223a84adf46")
@WinrtFactory("Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarSyncManagerSyncRequest")
interface IAppointmentCalendarSyncManagerSyncRequest : IInspectable
{
extern(Windows):
	HRESULT get_AppointmentCalendarLocalId(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("ca17c6f7-0284-4edd-87ba-4d8f69dcf5c0")
@WinrtFactory("Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarSyncManagerSyncRequestEventArgs")
interface IAppointmentCalendarSyncManagerSyncRequestEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarSyncManagerSyncRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("a36d608c-c29d-4b94-b086-7e9ff7bd84a0")
@WinrtFactory("Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarUpdateMeetingResponseRequest")
interface IAppointmentCalendarUpdateMeetingResponseRequest : IInspectable
{
extern(Windows):
	HRESULT get_AppointmentCalendarLocalId(HSTRING* return_value);
	HRESULT get_AppointmentLocalId(HSTRING* return_value);
	HRESULT get_AppointmentOriginalStartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_Response(Windows.ApplicationModel.Appointments.AppointmentParticipantResponse* return_response);
	HRESULT get_Subject(HSTRING* return_value);
	HRESULT get_Comment(HSTRING* return_value);
	HRESULT get_SendUpdate(bool* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("88759883-97bf-479d-aed5-0be8ce567d1e")
@WinrtFactory("Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarUpdateMeetingResponseRequestEventArgs")
interface IAppointmentCalendarUpdateMeetingResponseRequestEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarUpdateMeetingResponseRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("f3dd9d83-3254-465f-abdb-928046552cf4")
@WinrtFactory("Windows.ApplicationModel.Appointments.DataProvider.AppointmentDataProviderConnection")
interface IAppointmentDataProviderConnection : IInspectable
{
extern(Windows):
	HRESULT add_SyncRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Appointments.DataProvider.AppointmentDataProviderConnection, Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarSyncManagerSyncRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SyncRequested(EventRegistrationToken token);
	HRESULT add_CreateOrUpdateAppointmentRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Appointments.DataProvider.AppointmentDataProviderConnection, Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CreateOrUpdateAppointmentRequested(EventRegistrationToken token);
	HRESULT add_CancelMeetingRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Appointments.DataProvider.AppointmentDataProviderConnection, Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarCancelMeetingRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CancelMeetingRequested(EventRegistrationToken token);
	HRESULT add_ForwardMeetingRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Appointments.DataProvider.AppointmentDataProviderConnection, Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarForwardMeetingRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ForwardMeetingRequested(EventRegistrationToken token);
	HRESULT add_ProposeNewTimeForMeetingRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Appointments.DataProvider.AppointmentDataProviderConnection, Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarProposeNewTimeForMeetingRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ProposeNewTimeForMeetingRequested(EventRegistrationToken token);
	HRESULT add_UpdateMeetingResponseRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Appointments.DataProvider.AppointmentDataProviderConnection, Windows.ApplicationModel.Appointments.DataProvider.AppointmentCalendarUpdateMeetingResponseRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_UpdateMeetingResponseRequested(EventRegistrationToken token);
	HRESULT abi_Start();
}

@uuid("b3283c01-7e12-4e5e-b1ef-74fb68ac6f2a")
@WinrtFactory("Windows.ApplicationModel.Appointments.DataProvider.AppointmentDataProviderTriggerDetails")
interface IAppointmentDataProviderTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_Connection(Windows.ApplicationModel.Appointments.DataProvider.AppointmentDataProviderConnection* return_value);
}

interface AppointmentCalendarCancelMeetingRequest : Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarCancelMeetingRequest
{
}

interface AppointmentCalendarCancelMeetingRequestEventArgs : Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarCancelMeetingRequestEventArgs
{
}

interface AppointmentCalendarCreateOrUpdateAppointmentRequest : Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarCreateOrUpdateAppointmentRequest
{
}

interface AppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs : Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs
{
}

interface AppointmentCalendarForwardMeetingRequest : Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarForwardMeetingRequest
{
}

interface AppointmentCalendarForwardMeetingRequestEventArgs : Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarForwardMeetingRequestEventArgs
{
}

interface AppointmentCalendarProposeNewTimeForMeetingRequest : Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarProposeNewTimeForMeetingRequest
{
}

interface AppointmentCalendarProposeNewTimeForMeetingRequestEventArgs : Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarProposeNewTimeForMeetingRequestEventArgs
{
}

interface AppointmentCalendarSyncManagerSyncRequest : Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarSyncManagerSyncRequest
{
}

interface AppointmentCalendarSyncManagerSyncRequestEventArgs : Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarSyncManagerSyncRequestEventArgs
{
}

interface AppointmentCalendarUpdateMeetingResponseRequest : Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarUpdateMeetingResponseRequest
{
}

interface AppointmentCalendarUpdateMeetingResponseRequestEventArgs : Windows.ApplicationModel.Appointments.DataProvider.IAppointmentCalendarUpdateMeetingResponseRequestEventArgs
{
}

interface AppointmentDataProviderConnection : Windows.ApplicationModel.Appointments.DataProvider.IAppointmentDataProviderConnection
{
}

interface AppointmentDataProviderTriggerDetails : Windows.ApplicationModel.Appointments.DataProvider.IAppointmentDataProviderTriggerDetails
{
}