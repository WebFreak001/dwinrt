module Windows.ApplicationModel.UserDataTasks;

import dwinrt;

@uuid("7c6585d1-e0d4-4f99-aee2-bc2d5ddadf4c")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.UserDataTask")
interface IUserDataTask : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_ListId(HSTRING* return_value);
	HRESULT get_RemoteId(HSTRING* return_value);
	HRESULT set_RemoteId(HSTRING value);
	HRESULT get_CompletedDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_CompletedDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_Details(HSTRING* return_value);
	HRESULT set_Details(HSTRING value);
	HRESULT get_DetailsKind(Windows.ApplicationModel.UserDataTasks.UserDataTaskDetailsKind* return_value);
	HRESULT set_DetailsKind(Windows.ApplicationModel.UserDataTasks.UserDataTaskDetailsKind value);
	HRESULT get_DueDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_DueDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_Kind(Windows.ApplicationModel.UserDataTasks.UserDataTaskKind* return_value);
	HRESULT get_Priority(Windows.ApplicationModel.UserDataTasks.UserDataTaskPriority* return_value);
	HRESULT set_Priority(Windows.ApplicationModel.UserDataTasks.UserDataTaskPriority value);
	HRESULT get_RecurrenceProperties(Windows.ApplicationModel.UserDataTasks.UserDataTaskRecurrenceProperties* return_value);
	HRESULT set_RecurrenceProperties(Windows.ApplicationModel.UserDataTasks.UserDataTaskRecurrenceProperties value);
	HRESULT get_RegenerationProperties(Windows.ApplicationModel.UserDataTasks.UserDataTaskRegenerationProperties* return_value);
	HRESULT set_RegenerationProperties(Windows.ApplicationModel.UserDataTasks.UserDataTaskRegenerationProperties value);
	HRESULT get_Reminder(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_Reminder(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_Sensitivity(Windows.ApplicationModel.UserDataTasks.UserDataTaskSensitivity* return_value);
	HRESULT set_Sensitivity(Windows.ApplicationModel.UserDataTasks.UserDataTaskSensitivity value);
	HRESULT get_Subject(HSTRING* return_value);
	HRESULT set_Subject(HSTRING value);
	HRESULT get_StartDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_StartDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
}

@uuid("382da5fe-20b5-431c-8f42-a5d292ec930c")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.UserDataTaskBatch")
interface IUserDataTaskBatch : IInspectable
{
extern(Windows):
	HRESULT get_Tasks(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataTasks.UserDataTask)* return_value);
}

@uuid("49412e39-7c1d-4df1-bed3-314b7cbf5e4e")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.UserDataTaskList")
interface IUserDataTaskList : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_UserDataAccountId(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT set_DisplayName(HSTRING value);
	HRESULT get_SourceDisplayName(HSTRING* return_value);
	HRESULT get_OtherAppReadAccess(Windows.ApplicationModel.UserDataTasks.UserDataTaskListOtherAppReadAccess* return_value);
	HRESULT set_OtherAppReadAccess(Windows.ApplicationModel.UserDataTasks.UserDataTaskListOtherAppReadAccess value);
	HRESULT get_OtherAppWriteAccess(Windows.ApplicationModel.UserDataTasks.UserDataTaskListOtherAppWriteAccess* return_value);
	HRESULT set_OtherAppWriteAccess(Windows.ApplicationModel.UserDataTasks.UserDataTaskListOtherAppWriteAccess value);
	HRESULT get_LimitedWriteOperations(Windows.ApplicationModel.UserDataTasks.UserDataTaskListLimitedWriteOperations* return_value);
	HRESULT get_SyncManager(Windows.ApplicationModel.UserDataTasks.UserDataTaskListSyncManager* return_value);
	HRESULT abi_RegisterSyncManagerAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_GetTaskReader(Windows.ApplicationModel.UserDataTasks.UserDataTaskReader* return_result);
	HRESULT abi_GetTaskReaderWithOptions(Windows.ApplicationModel.UserDataTasks.UserDataTaskQueryOptions options, Windows.ApplicationModel.UserDataTasks.UserDataTaskReader* return_value);
	HRESULT abi_GetTaskAsync(HSTRING userDataTask, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTask)* return_operation);
	HRESULT abi_SaveTaskAsync(Windows.ApplicationModel.UserDataTasks.UserDataTask userDataTask, Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_DeleteTaskAsync(HSTRING userDataTaskId, Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_DeleteAsync(Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_SaveAsync(Windows.Foundation.IAsyncAction* return_asyncAction);
}

@uuid("7aa267f2-6078-4183-919e-4f29f19cfae9")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.UserDataTaskListLimitedWriteOperations")
interface IUserDataTaskListLimitedWriteOperations : IInspectable
{
extern(Windows):
	HRESULT abi_TryCompleteTaskAsync(HSTRING userDataTaskId, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_TryCreateOrUpdateTaskAsync(Windows.ApplicationModel.UserDataTasks.UserDataTask userDataTask, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_TryDeleteTaskAsync(HSTRING userDataTaskId, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_TrySkipOccurrenceAsync(HSTRING userDataTaskId, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("8e591a95-1dcf-469f-93ec-ba48bb553c6b")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.UserDataTaskListSyncManager")
interface IUserDataTaskListSyncManager : IInspectable
{
extern(Windows):
	HRESULT get_LastAttemptedSyncTime(Windows.Foundation.DateTime* return_value);
	HRESULT set_LastAttemptedSyncTime(Windows.Foundation.DateTime value);
	HRESULT get_LastSuccessfulSyncTime(Windows.Foundation.DateTime* return_value);
	HRESULT set_LastSuccessfulSyncTime(Windows.Foundation.DateTime value);
	HRESULT get_Status(Windows.ApplicationModel.UserDataTasks.UserDataTaskListSyncStatus* return_value);
	HRESULT set_Status(Windows.ApplicationModel.UserDataTasks.UserDataTaskListSyncStatus value);
	HRESULT abi_SyncAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT add_SyncStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.UserDataTasks.UserDataTaskListSyncManager, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_SyncStatusChanged(EventRegistrationToken token);
}

@uuid("8451c914-e60b-48a9-9211-7fb8a56cb84c")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.UserDataTaskManager")
interface IUserDataTaskManager : IInspectable
{
extern(Windows):
	HRESULT abi_RequestStoreAsync(Windows.ApplicationModel.UserDataTasks.UserDataTaskStoreAccessType accessType, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTaskStore)* return_operation);
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("b35539f8-c502-47fc-a81e-100883719d55")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.UserDataTaskManager")
interface IUserDataTaskManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.ApplicationModel.UserDataTasks.UserDataTaskManager* return_result);
	HRESULT abi_GetForUser(Windows.System.User user, Windows.ApplicationModel.UserDataTasks.UserDataTaskManager* return_result);
}

@uuid("959f27ed-909a-4d30-8c1b-331d8fe667e2")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.UserDataTaskQueryOptions")
interface IUserDataTaskQueryOptions : IInspectable
{
extern(Windows):
	HRESULT get_SortProperty(Windows.ApplicationModel.UserDataTasks.UserDataTaskQuerySortProperty* return_value);
	HRESULT set_SortProperty(Windows.ApplicationModel.UserDataTasks.UserDataTaskQuerySortProperty value);
	HRESULT get_Kind(Windows.ApplicationModel.UserDataTasks.UserDataTaskQueryKind* return_value);
	HRESULT set_Kind(Windows.ApplicationModel.UserDataTasks.UserDataTaskQueryKind value);
}

@uuid("03e688b1-4ccf-4500-883b-e76290cfed63")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.UserDataTaskReader")
interface IUserDataTaskReader : IInspectable
{
extern(Windows):
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTaskBatch)* return_result);
}

@uuid("73df80b0-27c6-40ce-b149-9cd41485a69e")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.UserDataTaskRecurrenceProperties")
interface IUserDataTaskRecurrenceProperties : IInspectable
{
extern(Windows):
	HRESULT get_Unit(Windows.ApplicationModel.UserDataTasks.UserDataTaskRecurrenceUnit* return_value);
	HRESULT set_Unit(Windows.ApplicationModel.UserDataTasks.UserDataTaskRecurrenceUnit value);
	HRESULT get_Occurrences(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_Occurrences(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_Until(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_Until(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_Interval(INT32* return_value);
	HRESULT set_Interval(INT32 value);
	HRESULT get_DaysOfWeek(Windows.Foundation.IReference!(Windows.ApplicationModel.UserDataTasks.UserDataTaskDaysOfWeek)* return_value);
	HRESULT set_DaysOfWeek(Windows.Foundation.IReference!(Windows.ApplicationModel.UserDataTasks.UserDataTaskDaysOfWeek) value);
	HRESULT get_WeekOfMonth(Windows.Foundation.IReference!(Windows.ApplicationModel.UserDataTasks.UserDataTaskWeekOfMonth)* return_value);
	HRESULT set_WeekOfMonth(Windows.Foundation.IReference!(Windows.ApplicationModel.UserDataTasks.UserDataTaskWeekOfMonth) value);
	HRESULT get_Month(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_Month(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_Day(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_Day(Windows.Foundation.IReference!(INT32) value);
}

@uuid("92ab0007-090e-4704-bb5c-84fc0b0d9c31")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.UserDataTaskRegenerationProperties")
interface IUserDataTaskRegenerationProperties : IInspectable
{
extern(Windows):
	HRESULT get_Unit(Windows.ApplicationModel.UserDataTasks.UserDataTaskRegenerationUnit* return_value);
	HRESULT set_Unit(Windows.ApplicationModel.UserDataTasks.UserDataTaskRegenerationUnit value);
	HRESULT get_Occurrences(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_Occurrences(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_Until(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_Until(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_Interval(INT32* return_value);
	HRESULT set_Interval(INT32 value);
}

@uuid("f06a9cb0-f1db-45ba-8a62-086004c0213d")
@WinrtFactory("Windows.ApplicationModel.UserDataTasks.UserDataTaskStore")
interface IUserDataTaskStore : IInspectable
{
extern(Windows):
	HRESULT abi_CreateListAsync(HSTRING name, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTaskList)* return_operation);
	HRESULT abi_CreateListInAccountAsync(HSTRING name, HSTRING userDataAccountId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTaskList)* return_result);
	HRESULT abi_FindListsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataTasks.UserDataTaskList))* return_operation);
	HRESULT abi_GetListAsync(HSTRING taskListId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTaskList)* return_operation);
}

interface UserDataTask : Windows.ApplicationModel.UserDataTasks.IUserDataTask
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).get_Id(&_ret));
		return _ret;
	}
	final HSTRING ListId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).get_ListId(&_ret));
		return _ret;
	}
	final HSTRING RemoteId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).get_RemoteId(&_ret));
		return _ret;
	}
	final void RemoteId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).set_RemoteId(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) CompletedDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).get_CompletedDate(&_ret));
		return _ret;
	}
	final void CompletedDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).set_CompletedDate(value));
	}
	final HSTRING Details()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).get_Details(&_ret));
		return _ret;
	}
	final void Details(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).set_Details(value));
	}
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskDetailsKind DetailsKind()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskDetailsKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).get_DetailsKind(&_ret));
		return _ret;
	}
	final void DetailsKind(Windows.ApplicationModel.UserDataTasks.UserDataTaskDetailsKind value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).set_DetailsKind(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) DueDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).get_DueDate(&_ret));
		return _ret;
	}
	final void DueDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).set_DueDate(value));
	}
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskKind Kind()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskPriority Priority()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskPriority _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).get_Priority(&_ret));
		return _ret;
	}
	final void Priority(Windows.ApplicationModel.UserDataTasks.UserDataTaskPriority value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).set_Priority(value));
	}
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskRecurrenceProperties RecurrenceProperties()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskRecurrenceProperties _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).get_RecurrenceProperties(&_ret));
		return _ret;
	}
	final void RecurrenceProperties(Windows.ApplicationModel.UserDataTasks.UserDataTaskRecurrenceProperties value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).set_RecurrenceProperties(value));
	}
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskRegenerationProperties RegenerationProperties()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskRegenerationProperties _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).get_RegenerationProperties(&_ret));
		return _ret;
	}
	final void RegenerationProperties(Windows.ApplicationModel.UserDataTasks.UserDataTaskRegenerationProperties value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).set_RegenerationProperties(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) Reminder()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).get_Reminder(&_ret));
		return _ret;
	}
	final void Reminder(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).set_Reminder(value));
	}
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskSensitivity Sensitivity()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskSensitivity _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).get_Sensitivity(&_ret));
		return _ret;
	}
	final void Sensitivity(Windows.ApplicationModel.UserDataTasks.UserDataTaskSensitivity value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).set_Sensitivity(value));
	}
	final HSTRING Subject()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).get_Subject(&_ret));
		return _ret;
	}
	final void Subject(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).set_Subject(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) StartDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).get_StartDate(&_ret));
		return _ret;
	}
	final void StartDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTask).set_StartDate(value));
	}
}

interface UserDataTaskBatch : Windows.ApplicationModel.UserDataTasks.IUserDataTaskBatch
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataTasks.UserDataTask) Tasks()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataTasks.UserDataTask) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskBatch).get_Tasks(&_ret));
		return _ret;
	}
}

interface UserDataTaskList : Windows.ApplicationModel.UserDataTasks.IUserDataTaskList
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).get_Id(&_ret));
		return _ret;
	}
	final HSTRING UserDataAccountId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).get_UserDataAccountId(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).get_DisplayName(&_ret));
		return _ret;
	}
	final void DisplayName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).set_DisplayName(value));
	}
	final HSTRING SourceDisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).get_SourceDisplayName(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskListOtherAppReadAccess OtherAppReadAccess()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskListOtherAppReadAccess _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).get_OtherAppReadAccess(&_ret));
		return _ret;
	}
	final void OtherAppReadAccess(Windows.ApplicationModel.UserDataTasks.UserDataTaskListOtherAppReadAccess value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).set_OtherAppReadAccess(value));
	}
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskListOtherAppWriteAccess OtherAppWriteAccess()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskListOtherAppWriteAccess _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).get_OtherAppWriteAccess(&_ret));
		return _ret;
	}
	final void OtherAppWriteAccess(Windows.ApplicationModel.UserDataTasks.UserDataTaskListOtherAppWriteAccess value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).set_OtherAppWriteAccess(value));
	}
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskListLimitedWriteOperations LimitedWriteOperations()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskListLimitedWriteOperations _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).get_LimitedWriteOperations(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskListSyncManager SyncManager()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskListSyncManager _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).get_SyncManager(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction RegisterSyncManagerAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).abi_RegisterSyncManagerAsync(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskReader GetTaskReader()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskReader _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).abi_GetTaskReader(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskReader GetTaskReaderWithOptions(Windows.ApplicationModel.UserDataTasks.UserDataTaskQueryOptions options)
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskReader _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).abi_GetTaskReaderWithOptions(options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTask) GetTaskAsync(HSTRING userDataTask)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTask) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).abi_GetTaskAsync(userDataTask, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SaveTaskAsync(Windows.ApplicationModel.UserDataTasks.UserDataTask userDataTask)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).abi_SaveTaskAsync(userDataTask, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteTaskAsync(HSTRING userDataTaskId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).abi_DeleteTaskAsync(userDataTaskId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).abi_DeleteAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SaveAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskList).abi_SaveAsync(&_ret));
		return _ret;
	}
}

interface UserDataTaskListLimitedWriteOperations : Windows.ApplicationModel.UserDataTasks.IUserDataTaskListLimitedWriteOperations
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(HSTRING) TryCompleteTaskAsync(HSTRING userDataTaskId)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskListLimitedWriteOperations).abi_TryCompleteTaskAsync(userDataTaskId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryCreateOrUpdateTaskAsync(Windows.ApplicationModel.UserDataTasks.UserDataTask userDataTask)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskListLimitedWriteOperations).abi_TryCreateOrUpdateTaskAsync(userDataTask, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryDeleteTaskAsync(HSTRING userDataTaskId)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskListLimitedWriteOperations).abi_TryDeleteTaskAsync(userDataTaskId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TrySkipOccurrenceAsync(HSTRING userDataTaskId)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskListLimitedWriteOperations).abi_TrySkipOccurrenceAsync(userDataTaskId, &_ret));
		return _ret;
	}
}

interface UserDataTaskListSyncManager : Windows.ApplicationModel.UserDataTasks.IUserDataTaskListSyncManager
{
extern(Windows):
	final Windows.Foundation.DateTime LastAttemptedSyncTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskListSyncManager).get_LastAttemptedSyncTime(&_ret));
		return _ret;
	}
	final void LastAttemptedSyncTime(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskListSyncManager).set_LastAttemptedSyncTime(value));
	}
	final Windows.Foundation.DateTime LastSuccessfulSyncTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskListSyncManager).get_LastSuccessfulSyncTime(&_ret));
		return _ret;
	}
	final void LastSuccessfulSyncTime(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskListSyncManager).set_LastSuccessfulSyncTime(value));
	}
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskListSyncStatus Status()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskListSyncStatus _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskListSyncManager).get_Status(&_ret));
		return _ret;
	}
	final void Status(Windows.ApplicationModel.UserDataTasks.UserDataTaskListSyncStatus value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskListSyncManager).set_Status(value));
	}
	final Windows.Foundation.IAsyncOperation!(bool) SyncAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskListSyncManager).abi_SyncAsync(&_ret));
		return _ret;
	}
	final void removeSyncStatusChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_SyncStatusChanged(token));
	}
}

interface UserDataTaskManager : Windows.ApplicationModel.UserDataTasks.IUserDataTaskManager
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTaskStore) RequestStoreAsync(Windows.ApplicationModel.UserDataTasks.UserDataTaskStoreAccessType accessType)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTaskStore) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskManager).abi_RequestStoreAsync(accessType, &_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskManager).get_User(&_ret));
		return _ret;
	}
}

interface UserDataTaskQueryOptions : Windows.ApplicationModel.UserDataTasks.IUserDataTaskQueryOptions
{
extern(Windows):
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskQuerySortProperty SortProperty()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskQuerySortProperty _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskQueryOptions).get_SortProperty(&_ret));
		return _ret;
	}
	final void SortProperty(Windows.ApplicationModel.UserDataTasks.UserDataTaskQuerySortProperty value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskQueryOptions).set_SortProperty(value));
	}
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskQueryKind Kind()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskQueryKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskQueryOptions).get_Kind(&_ret));
		return _ret;
	}
	final void Kind(Windows.ApplicationModel.UserDataTasks.UserDataTaskQueryKind value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskQueryOptions).set_Kind(value));
	}
}

interface UserDataTaskReader : Windows.ApplicationModel.UserDataTasks.IUserDataTaskReader
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTaskBatch) ReadBatchAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTaskBatch) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskReader).abi_ReadBatchAsync(&_ret));
		return _ret;
	}
}

interface UserDataTaskRecurrenceProperties : Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties
{
extern(Windows):
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskRecurrenceUnit Unit()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskRecurrenceUnit _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties).get_Unit(&_ret));
		return _ret;
	}
	final void Unit(Windows.ApplicationModel.UserDataTasks.UserDataTaskRecurrenceUnit value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties).set_Unit(value));
	}
	final Windows.Foundation.IReference!(INT32) Occurrences()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties).get_Occurrences(&_ret));
		return _ret;
	}
	final void Occurrences(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties).set_Occurrences(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) Until()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties).get_Until(&_ret));
		return _ret;
	}
	final void Until(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties).set_Until(value));
	}
	final INT32 Interval()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties).get_Interval(&_ret));
		return _ret;
	}
	final void Interval(INT32 value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties).set_Interval(value));
	}
	final Windows.Foundation.IReference!(Windows.ApplicationModel.UserDataTasks.UserDataTaskDaysOfWeek) DaysOfWeek()
	{
		Windows.Foundation.IReference!(Windows.ApplicationModel.UserDataTasks.UserDataTaskDaysOfWeek) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties).get_DaysOfWeek(&_ret));
		return _ret;
	}
	final void DaysOfWeek(Windows.Foundation.IReference!(Windows.ApplicationModel.UserDataTasks.UserDataTaskDaysOfWeek) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties).set_DaysOfWeek(value));
	}
	final Windows.Foundation.IReference!(Windows.ApplicationModel.UserDataTasks.UserDataTaskWeekOfMonth) WeekOfMonth()
	{
		Windows.Foundation.IReference!(Windows.ApplicationModel.UserDataTasks.UserDataTaskWeekOfMonth) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties).get_WeekOfMonth(&_ret));
		return _ret;
	}
	final void WeekOfMonth(Windows.Foundation.IReference!(Windows.ApplicationModel.UserDataTasks.UserDataTaskWeekOfMonth) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties).set_WeekOfMonth(value));
	}
	final Windows.Foundation.IReference!(INT32) Month()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties).get_Month(&_ret));
		return _ret;
	}
	final void Month(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties).set_Month(value));
	}
	final Windows.Foundation.IReference!(INT32) Day()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties).get_Day(&_ret));
		return _ret;
	}
	final void Day(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties).set_Day(value));
	}
}

interface UserDataTaskRegenerationProperties : Windows.ApplicationModel.UserDataTasks.IUserDataTaskRegenerationProperties
{
extern(Windows):
	final Windows.ApplicationModel.UserDataTasks.UserDataTaskRegenerationUnit Unit()
	{
		Windows.ApplicationModel.UserDataTasks.UserDataTaskRegenerationUnit _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRegenerationProperties).get_Unit(&_ret));
		return _ret;
	}
	final void Unit(Windows.ApplicationModel.UserDataTasks.UserDataTaskRegenerationUnit value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRegenerationProperties).set_Unit(value));
	}
	final Windows.Foundation.IReference!(INT32) Occurrences()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRegenerationProperties).get_Occurrences(&_ret));
		return _ret;
	}
	final void Occurrences(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRegenerationProperties).set_Occurrences(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) Until()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRegenerationProperties).get_Until(&_ret));
		return _ret;
	}
	final void Until(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRegenerationProperties).set_Until(value));
	}
	final INT32 Interval()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRegenerationProperties).get_Interval(&_ret));
		return _ret;
	}
	final void Interval(INT32 value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskRegenerationProperties).set_Interval(value));
	}
}

interface UserDataTaskStore : Windows.ApplicationModel.UserDataTasks.IUserDataTaskStore
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTaskList) CreateListAsync(HSTRING name)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTaskList) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskStore).abi_CreateListAsync(name, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTaskList) CreateListInAccountAsync(HSTRING name, HSTRING userDataAccountId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTaskList) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskStore).abi_CreateListInAccountAsync(name, userDataAccountId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataTasks.UserDataTaskList)) FindListsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataTasks.UserDataTaskList)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskStore).abi_FindListsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTaskList) GetListAsync(HSTRING taskListId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataTasks.UserDataTaskList) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataTasks.IUserDataTaskStore).abi_GetListAsync(taskListId, &_ret));
		return _ret;
	}
}

@bitflags
enum UserDataTaskDaysOfWeek
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

enum UserDataTaskDetailsKind
{
	PlainText = 0,
	Html = 1
}

enum UserDataTaskKind
{
	Single = 0,
	Recurring = 1,
	Regenerating = 2
}

enum UserDataTaskListOtherAppReadAccess
{
	Full = 0,
	SystemOnly = 1,
	None = 2
}

enum UserDataTaskListOtherAppWriteAccess
{
	Limited = 0,
	None = 1
}

enum UserDataTaskListSyncStatus
{
	Idle = 0,
	Syncing = 1,
	UpToDate = 2,
	AuthenticationError = 3,
	PolicyError = 4,
	UnknownError = 5
}

enum UserDataTaskPriority
{
	Normal = 0,
	Low = -1,
	High = 1
}

enum UserDataTaskQueryKind
{
	All = 0,
	Incomplete = 1,
	Complete = 2
}

enum UserDataTaskQuerySortProperty
{
	DueDate = 0
}

enum UserDataTaskRecurrenceUnit
{
	Daily = 0,
	Weekly = 1,
	Monthly = 2,
	MonthlyOnDay = 3,
	Yearly = 4,
	YearlyOnDay = 5
}

enum UserDataTaskRegenerationUnit
{
	Daily = 0,
	Weekly = 1,
	Monthly = 2,
	Yearly = 4
}

enum UserDataTaskSensitivity
{
	Public = 0,
	Private = 1
}

enum UserDataTaskStoreAccessType
{
	AppTasksReadWrite = 0,
	AllTasksLimitedReadWrite = 1
}

enum UserDataTaskWeekOfMonth
{
	First = 0,
	Second = 1,
	Third = 2,
	Fourth = 3,
	Last = 4
}