module Windows.ApplicationModel.UserDataTasks.DataProvider;

import dwinrt;

@uuid("9ff39d1d-a447-428b-afe9-e5402bdeb041")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskDataProviderConnection")
interface IUserDataTaskDataProviderConnection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_CreateOrUpdateTaskRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskDataProviderConnection, Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCreateOrUpdateTaskRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CreateOrUpdateTaskRequested(EventRegistrationToken token);
	HRESULT add_SyncRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskDataProviderConnection, Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSyncManagerSyncRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SyncRequested(EventRegistrationToken token);
	HRESULT add_SkipOccurrenceRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskDataProviderConnection, Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSkipOccurrenceRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SkipOccurrenceRequested(EventRegistrationToken token);
	HRESULT add_CompleteTaskRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskDataProviderConnection, Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCompleteTaskRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CompleteTaskRequested(EventRegistrationToken token);
	HRESULT add_DeleteTaskRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskDataProviderConnection, Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListDeleteTaskRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DeleteTaskRequested(EventRegistrationToken token);
	HRESULT abi_Start();
}

@uuid("ae273202-b1c9-453e-afc5-b30af3bd217d")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskDataProviderTriggerDetails")
interface IUserDataTaskDataProviderTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Connection(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskDataProviderConnection* return_value);
}

@uuid("f65e14a3-1a42-49da-8552-2873e52c55eb")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCompleteTaskRequest")
interface IUserDataTaskListCompleteTaskRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TaskListId(HSTRING* return_value);
	HRESULT get_TaskId(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(HSTRING completedTaskId, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("d77c393d-4cf2-48ad-87fd-963f0eaa7a95")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCompleteTaskRequestEventArgs")
interface IUserDataTaskListCompleteTaskRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCompleteTaskRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("2133772c-55c2-4300-8279-04326e07cce4")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCreateOrUpdateTaskRequest")
interface IUserDataTaskListCreateOrUpdateTaskRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TaskListId(HSTRING* return_value);
	HRESULT get_Task(Windows.ApplicationModel.UserDataTasks.UserDataTask* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.ApplicationModel.UserDataTasks.UserDataTask createdOrUpdatedUserDataTask, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("12c55a52-e378-419b-ae38-a5e9e604476e")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCreateOrUpdateTaskRequestEventArgs")
interface IUserDataTaskListCreateOrUpdateTaskRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCreateOrUpdateTaskRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("4b863c68-7657-4f3d-b074-d47ec8df07e7")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListDeleteTaskRequest")
interface IUserDataTaskListDeleteTaskRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TaskListId(HSTRING* return_value);
	HRESULT get_TaskId(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("6063dad9-f562-4145-8efe-d50078c92b7f")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListDeleteTaskRequestEventArgs")
interface IUserDataTaskListDeleteTaskRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListDeleteTaskRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("ab87e34d-1cd3-431c-9f58-089aa4338d85")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSkipOccurrenceRequest")
interface IUserDataTaskListSkipOccurrenceRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TaskListId(HSTRING* return_value);
	HRESULT get_TaskId(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("7a3b924a-cc2f-4e7b-aacd-a5b9d29cfa4e")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSkipOccurrenceRequestEventArgs")
interface IUserDataTaskListSkipOccurrenceRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSkipOccurrenceRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("40a73807-7590-4149-ae19-b211431a9f48")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSyncManagerSyncRequest")
interface IUserDataTaskListSyncManagerSyncRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TaskListId(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("8ead1c12-768e-43bd-8385-5cdc351ffdea")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSyncManagerSyncRequestEventArgs")
interface IUserDataTaskListSyncManagerSyncRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSyncManagerSyncRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

interface UserDataTaskDataProviderConnection
{
}

interface UserDataTaskDataProviderTriggerDetails
{
}

interface UserDataTaskListCompleteTaskRequest
{
}

interface UserDataTaskListCompleteTaskRequestEventArgs
{
}

interface UserDataTaskListCreateOrUpdateTaskRequest
{
}

interface UserDataTaskListCreateOrUpdateTaskRequestEventArgs
{
}

interface UserDataTaskListDeleteTaskRequest
{
}

interface UserDataTaskListDeleteTaskRequestEventArgs
{
}

interface UserDataTaskListSkipOccurrenceRequest
{
}

interface UserDataTaskListSkipOccurrenceRequestEventArgs
{
}

interface UserDataTaskListSyncManagerSyncRequest
{
}

interface UserDataTaskListSyncManagerSyncRequestEventArgs
{
}