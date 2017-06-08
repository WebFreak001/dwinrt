module Windows.ApplicationModel.UserDataAccounts;

import dwinrt;

@uuid("b9c4367e-b348-4910-be94-4ad4bba6dea7")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccount")
interface IUserDataAccount : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_UserDisplayName(HSTRING* return_value);
	HRESULT set_UserDisplayName(HSTRING value);
	HRESULT get_OtherAppReadAccess(Windows.ApplicationModel.UserDataAccounts.UserDataAccountOtherAppReadAccess* return_value);
	HRESULT set_OtherAppReadAccess(Windows.ApplicationModel.UserDataAccounts.UserDataAccountOtherAppReadAccess value);
	HRESULT get_Icon(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT get_DeviceAccountTypeId(HSTRING* return_value);
	HRESULT get_PackageFamilyName(HSTRING* return_value);
	HRESULT abi_SaveAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_DeleteAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_FindAppointmentCalendarsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.AppointmentCalendar))* return_result);
	HRESULT abi_FindEmailMailboxesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMailbox))* return_result);
	HRESULT abi_FindContactListsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactList))* return_result);
	HRESULT abi_FindContactAnnotationListsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotationList))* return_result);
}

@uuid("078cd89f-de82-404b-8195-c8a3ac198f60")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccount")
interface IUserDataAccount2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EnterpriseId(HSTRING* return_value);
	HRESULT get_IsProtectedUnderLock(bool* return_value);
}

@uuid("01533845-6c43-4286-9d69-3e1709a1f266")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccount")
interface IUserDataAccount3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ExplictReadAccessPackageFamilyNames(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT set_DisplayName(HSTRING value);
}

@uuid("c4315210-eae5-4f0a-a8b2-1cca115e008f")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccount")
interface IUserDataAccount4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CanShowCreateContactGroup(bool* return_value);
	HRESULT set_CanShowCreateContactGroup(bool value);
	HRESULT get_ProviderProperties(Windows.Foundation.Collections.IPropertySet* return_value);
	HRESULT abi_FindUserDataTaskListsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataTasks.UserDataTaskList))* return_operation);
	HRESULT abi_FindContactGroupsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactGroup))* return_operation);
	HRESULT abi_TryShowCreateContactGroupAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT set_IsProtectedUnderLock(bool value);
	HRESULT set_Icon(Windows.Storage.Streams.IRandomAccessStreamReference value);
}

@uuid("56a6e8db-db8f-41ab-a65f-8c5971aac982")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccountManagerForUser")
interface IUserDataAccountManagerForUser : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestStoreAsync(Windows.ApplicationModel.UserDataAccounts.UserDataAccountStoreAccessType storeAccessType, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore)* return_result);
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("0d9b89ea-1928-4a20-86d5-3c737f7dc3b0")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccountManager")
interface IUserDataAccountManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestStoreAsync(Windows.ApplicationModel.UserDataAccounts.UserDataAccountStoreAccessType storeAccessType, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore)* return_result);
	HRESULT abi_ShowAddAccountAsync(Windows.ApplicationModel.UserDataAccounts.UserDataAccountContentKinds contentKinds, Windows.Foundation.IAsyncOperation!(HSTRING)* return_result);
	HRESULT abi_ShowAccountSettingsAsync(HSTRING id, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ShowAccountErrorResolverAsync(HSTRING id, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("6a3ded88-316b-435e-b534-f7d4b4b7dba6")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccountManager")
interface IUserDataAccountManagerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForUser(Windows.System.User user, Windows.ApplicationModel.UserDataAccounts.UserDataAccountManagerForUser* return_result);
}

@uuid("2073b0ad-7d0a-4e76-bf45-2368f978a59a")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore")
interface IUserDataAccountStore : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FindAccountsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount))* return_result);
	HRESULT abi_GetAccountAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount)* return_result);
	HRESULT abi_CreateAccountAsync(HSTRING userDisplayName, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount)* return_result);
}

@uuid("b1e0aef7-9560-4631-8af0-061d30161469")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore")
interface IUserDataAccountStore2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateAccountWithPackageRelativeAppIdAsync(HSTRING userDisplayName, HSTRING packageRelativeAppId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount)* return_result);
	HRESULT add_StoreChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore, Windows.ApplicationModel.UserDataAccounts.UserDataAccountStoreChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_StoreChanged(EventRegistrationToken token);
}

@uuid("8142c094-f3c9-478b-b117-6585bebb6789")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore")
interface IUserDataAccountStore3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateAccountWithPackageRelativeAppIdAndEnterpriseIdAsync(HSTRING userDisplayName, HSTRING packageRelativeAppId, HSTRING enterpriseId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount)* return_result);
}

@uuid("84e3e2e5-8820-4512-b1f6-2e035be1072c")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccountStoreChangedEventArgs")
interface IUserDataAccountStoreChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_result);
}

interface UserDataAccount
{
}

interface UserDataAccountManagerForUser
{
}

interface UserDataAccountStore
{
}

interface UserDataAccountStoreChangedEventArgs
{
}

@bitflags
enum UserDataAccountContentKinds
{
	Email = 0x1,
	Contact = 0x2,
	Appointment = 0x4
}

enum UserDataAccountOtherAppReadAccess
{
	SystemOnly = 0,
	Full = 1,
	None = 2
}

enum UserDataAccountStoreAccessType
{
	AllAccountsReadOnly = 0,
	AppAccountsReadWrite = 1
}