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
}

interface UserDataTaskBatch : Windows.ApplicationModel.UserDataTasks.IUserDataTaskBatch
{
}

interface UserDataTaskList : Windows.ApplicationModel.UserDataTasks.IUserDataTaskList
{
}

interface UserDataTaskListLimitedWriteOperations : Windows.ApplicationModel.UserDataTasks.IUserDataTaskListLimitedWriteOperations
{
}

interface UserDataTaskListSyncManager : Windows.ApplicationModel.UserDataTasks.IUserDataTaskListSyncManager
{
}

interface UserDataTaskManager : Windows.ApplicationModel.UserDataTasks.IUserDataTaskManager
{
}

interface UserDataTaskQueryOptions : Windows.ApplicationModel.UserDataTasks.IUserDataTaskQueryOptions
{
}

interface UserDataTaskReader : Windows.ApplicationModel.UserDataTasks.IUserDataTaskReader
{
}

interface UserDataTaskRecurrenceProperties : Windows.ApplicationModel.UserDataTasks.IUserDataTaskRecurrenceProperties
{
}

interface UserDataTaskRegenerationProperties : Windows.ApplicationModel.UserDataTasks.IUserDataTaskRegenerationProperties
{
}

interface UserDataTaskStore : Windows.ApplicationModel.UserDataTasks.IUserDataTaskStore
{
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