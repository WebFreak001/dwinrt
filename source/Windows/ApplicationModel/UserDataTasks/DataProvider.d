module Windows.ApplicationModel.UserDataTasks.DataProvider;

import dwinrt;

@uuid("9ff39d1d-a447-428b-afe9-e5402bdeb041")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskDataProviderConnection")
interface IUserDataTaskDataProviderConnection : IInspectable
{
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
extern(Windows):
	HRESULT get_Connection(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskDataProviderConnection* return_value);
}

@uuid("f65e14a3-1a42-49da-8552-2873e52c55eb")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCompleteTaskRequest")
interface IUserDataTaskListCompleteTaskRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCompleteTaskRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("2133772c-55c2-4300-8279-04326e07cce4")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCreateOrUpdateTaskRequest")
interface IUserDataTaskListCreateOrUpdateTaskRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCreateOrUpdateTaskRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("4b863c68-7657-4f3d-b074-d47ec8df07e7")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListDeleteTaskRequest")
interface IUserDataTaskListDeleteTaskRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListDeleteTaskRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("ab87e34d-1cd3-431c-9f58-089aa4338d85")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSkipOccurrenceRequest")
interface IUserDataTaskListSkipOccurrenceRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSkipOccurrenceRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("40a73807-7590-4149-ae19-b211431a9f48")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSyncManagerSyncRequest")
interface IUserDataTaskListSyncManagerSyncRequest : IInspectable
{
extern(Windows):
	HRESULT get_TaskListId(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("8ead1c12-768e-43bd-8385-5cdc351ffdea")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSyncManagerSyncRequestEventArgs")
interface IUserDataTaskListSyncManagerSyncRequestEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSyncManagerSyncRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

interface UserDataTaskDataProviderConnection : Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskDataProviderConnection
{
extern(Windows):
	final void Start()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskDataProviderConnection).abi_Start());
	}
}

interface UserDataTaskDataProviderTriggerDetails : Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskDataProviderTriggerDetails
{
extern(Windows):
	final Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskDataProviderConnection Connection()
	{
		Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskDataProviderConnection _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskDataProviderTriggerDetails).get_Connection(&_ret));
		return _ret;
	}
}

interface UserDataTaskListCompleteTaskRequest : Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCompleteTaskRequest
{
extern(Windows):
	final HSTRING TaskListId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCompleteTaskRequest).get_TaskListId(&_ret));
		return _ret;
	}
	final HSTRING TaskId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCompleteTaskRequest).get_TaskId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync(HSTRING completedTaskId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCompleteTaskRequest).abi_ReportCompletedAsync(completedTaskId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCompleteTaskRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface UserDataTaskListCompleteTaskRequestEventArgs : Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCompleteTaskRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCompleteTaskRequest Request()
	{
		Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCompleteTaskRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCompleteTaskRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCompleteTaskRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface UserDataTaskListCreateOrUpdateTaskRequest : Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCreateOrUpdateTaskRequest
{
extern(Windows):
	final HSTRING TaskListId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCreateOrUpdateTaskRequest).get_TaskListId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.UserDataTasks.UserDataTask Task()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTask _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCreateOrUpdateTaskRequest).get_Task(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync(Windows.ApplicationModel.UserDataTasks.UserDataTask createdOrUpdatedUserDataTask)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCreateOrUpdateTaskRequest).abi_ReportCompletedAsync(createdOrUpdatedUserDataTask, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCreateOrUpdateTaskRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface UserDataTaskListCreateOrUpdateTaskRequestEventArgs : Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCreateOrUpdateTaskRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCreateOrUpdateTaskRequest Request()
	{
		Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListCreateOrUpdateTaskRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCreateOrUpdateTaskRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListCreateOrUpdateTaskRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface UserDataTaskListDeleteTaskRequest : Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListDeleteTaskRequest
{
extern(Windows):
	final HSTRING TaskListId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListDeleteTaskRequest).get_TaskListId(&_ret));
		return _ret;
	}
	final HSTRING TaskId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListDeleteTaskRequest).get_TaskId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListDeleteTaskRequest).abi_ReportCompletedAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListDeleteTaskRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface UserDataTaskListDeleteTaskRequestEventArgs : Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListDeleteTaskRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListDeleteTaskRequest Request()
	{
		Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListDeleteTaskRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListDeleteTaskRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListDeleteTaskRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface UserDataTaskListSkipOccurrenceRequest : Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSkipOccurrenceRequest
{
extern(Windows):
	final HSTRING TaskListId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSkipOccurrenceRequest).get_TaskListId(&_ret));
		return _ret;
	}
	final HSTRING TaskId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSkipOccurrenceRequest).get_TaskId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSkipOccurrenceRequest).abi_ReportCompletedAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSkipOccurrenceRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface UserDataTaskListSkipOccurrenceRequestEventArgs : Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSkipOccurrenceRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSkipOccurrenceRequest Request()
	{
		Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSkipOccurrenceRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSkipOccurrenceRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSkipOccurrenceRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface UserDataTaskListSyncManagerSyncRequest : Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSyncManagerSyncRequest
{
extern(Windows):
	final HSTRING TaskListId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSyncManagerSyncRequest).get_TaskListId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSyncManagerSyncRequest).abi_ReportCompletedAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSyncManagerSyncRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface UserDataTaskListSyncManagerSyncRequestEventArgs : Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSyncManagerSyncRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSyncManagerSyncRequest Request()
	{
		Windows.ApplicationModel.UserDataTasks.DataProvider.UserDataTaskListSyncManagerSyncRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSyncManagerSyncRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.DataProvider.IUserDataTaskListSyncManagerSyncRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}