module Windows.ApplicationModel.UserDataAccounts;

import dwinrt;

@uuid("b9c4367e-b348-4910-be94-4ad4bba6dea7")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccount")
interface IUserDataAccount : IInspectable
{
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
interface IUserDataAccount2_Base : IInspectable
{
extern(Windows):
	HRESULT get_EnterpriseId(HSTRING* return_value);
	HRESULT get_IsProtectedUnderLock(bool* return_value);
}
@uuid("078cd89f-de82-404b-8195-c8a3ac198f60")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccount")
interface IUserDataAccount2 : IUserDataAccount2_Base, Windows.ApplicationModel.UserDataAccounts.IUserDataAccount {}

@uuid("01533845-6c43-4286-9d69-3e1709a1f266")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccount")
interface IUserDataAccount3 : IInspectable
{
extern(Windows):
	HRESULT get_ExplictReadAccessPackageFamilyNames(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT set_DisplayName(HSTRING value);
}

@uuid("c4315210-eae5-4f0a-a8b2-1cca115e008f")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccount")
interface IUserDataAccount4 : IInspectable
{
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
extern(Windows):
	HRESULT abi_RequestStoreAsync(Windows.ApplicationModel.UserDataAccounts.UserDataAccountStoreAccessType storeAccessType, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore)* return_result);
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("0d9b89ea-1928-4a20-86d5-3c737f7dc3b0")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccountManager")
interface IUserDataAccountManagerStatics : IInspectable
{
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
extern(Windows):
	HRESULT abi_GetForUser(Windows.System.User user, Windows.ApplicationModel.UserDataAccounts.UserDataAccountManagerForUser* return_result);
}

@uuid("2073b0ad-7d0a-4e76-bf45-2368f978a59a")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore")
interface IUserDataAccountStore : IInspectable
{
extern(Windows):
	HRESULT abi_FindAccountsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount))* return_result);
	HRESULT abi_GetAccountAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount)* return_result);
	HRESULT abi_CreateAccountAsync(HSTRING userDisplayName, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount)* return_result);
}

@uuid("b1e0aef7-9560-4631-8af0-061d30161469")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore")
interface IUserDataAccountStore2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAccountAsync(HSTRING userDisplayName, HSTRING packageRelativeAppId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount)* return_result);
	HRESULT add_StoreChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore, Windows.ApplicationModel.UserDataAccounts.UserDataAccountStoreChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_StoreChanged(EventRegistrationToken token);
}
@uuid("b1e0aef7-9560-4631-8af0-061d30161469")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore")
interface IUserDataAccountStore2 : IUserDataAccountStore2_Base, Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStore {}

@uuid("8142c094-f3c9-478b-b117-6585bebb6789")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore")
interface IUserDataAccountStore3_Base : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAccountAsync(HSTRING userDisplayName, HSTRING packageRelativeAppId, HSTRING enterpriseId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount)* return_result);
}
@uuid("8142c094-f3c9-478b-b117-6585bebb6789")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore")
interface IUserDataAccountStore3 : IUserDataAccountStore3_Base, Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStore {}

@uuid("84e3e2e5-8820-4512-b1f6-2e035be1072c")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.UserDataAccountStoreChangedEventArgs")
interface IUserDataAccountStoreChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_result);
}

interface UserDataAccount : Windows.ApplicationModel.UserDataAccounts.IUserDataAccount, Windows.ApplicationModel.UserDataAccounts.IUserDataAccount2, Windows.ApplicationModel.UserDataAccounts.IUserDataAccount3, Windows.ApplicationModel.UserDataAccounts.IUserDataAccount4
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount)this.asInterface(uuid("b9c4367e-b348-4910-be94-4ad4bba6dea7"))).get_Id(&_ret));
		return _ret;
	}
	final HSTRING UserDisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount)this.asInterface(uuid("b9c4367e-b348-4910-be94-4ad4bba6dea7"))).get_UserDisplayName(&_ret));
		return _ret;
	}
	final void UserDisplayName(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount)this.asInterface(uuid("b9c4367e-b348-4910-be94-4ad4bba6dea7"))).set_UserDisplayName(value));
	}
	final Windows.ApplicationModel.UserDataAccounts.UserDataAccountOtherAppReadAccess OtherAppReadAccess()
	{
		Windows.ApplicationModel.UserDataAccounts.UserDataAccountOtherAppReadAccess _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount)this.asInterface(uuid("b9c4367e-b348-4910-be94-4ad4bba6dea7"))).get_OtherAppReadAccess(&_ret));
		return _ret;
	}
	final void OtherAppReadAccess(Windows.ApplicationModel.UserDataAccounts.UserDataAccountOtherAppReadAccess value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount)this.asInterface(uuid("b9c4367e-b348-4910-be94-4ad4bba6dea7"))).set_OtherAppReadAccess(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Icon()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount)this.asInterface(uuid("b9c4367e-b348-4910-be94-4ad4bba6dea7"))).get_Icon(&_ret));
		return _ret;
	}
	final HSTRING DeviceAccountTypeId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount)this.asInterface(uuid("b9c4367e-b348-4910-be94-4ad4bba6dea7"))).get_DeviceAccountTypeId(&_ret));
		return _ret;
	}
	final HSTRING PackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount)this.asInterface(uuid("b9c4367e-b348-4910-be94-4ad4bba6dea7"))).get_PackageFamilyName(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SaveAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount)this.asInterface(uuid("b9c4367e-b348-4910-be94-4ad4bba6dea7"))).abi_SaveAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount)this.asInterface(uuid("b9c4367e-b348-4910-be94-4ad4bba6dea7"))).abi_DeleteAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.AppointmentCalendar)) FindAppointmentCalendarsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Appointments.AppointmentCalendar)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount)this.asInterface(uuid("b9c4367e-b348-4910-be94-4ad4bba6dea7"))).abi_FindAppointmentCalendarsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMailbox)) FindEmailMailboxesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMailbox)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount)this.asInterface(uuid("b9c4367e-b348-4910-be94-4ad4bba6dea7"))).abi_FindEmailMailboxesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactList)) FindContactListsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactList)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount)this.asInterface(uuid("b9c4367e-b348-4910-be94-4ad4bba6dea7"))).abi_FindContactListsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotationList)) FindContactAnnotationListsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotationList)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount)this.asInterface(uuid("b9c4367e-b348-4910-be94-4ad4bba6dea7"))).abi_FindContactAnnotationListsAsync(&_ret));
		return _ret;
	}
	final HSTRING EnterpriseId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount2)this.asInterface(uuid("078cd89f-de82-404b-8195-c8a3ac198f60"))).get_EnterpriseId(&_ret));
		return _ret;
	}
	final bool IsProtectedUnderLock()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount2)this.asInterface(uuid("078cd89f-de82-404b-8195-c8a3ac198f60"))).get_IsProtectedUnderLock(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) ExplictReadAccessPackageFamilyNames()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount3)this.asInterface(uuid("01533845-6c43-4286-9d69-3e1709a1f266"))).get_ExplictReadAccessPackageFamilyNames(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount3)this.asInterface(uuid("01533845-6c43-4286-9d69-3e1709a1f266"))).get_DisplayName(&_ret));
		return _ret;
	}
	final void DisplayName(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount3)this.asInterface(uuid("01533845-6c43-4286-9d69-3e1709a1f266"))).set_DisplayName(value));
	}
	final bool CanShowCreateContactGroup()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount4)this.asInterface(uuid("c4315210-eae5-4f0a-a8b2-1cca115e008f"))).get_CanShowCreateContactGroup(&_ret));
		return _ret;
	}
	final void CanShowCreateContactGroup(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount4)this.asInterface(uuid("c4315210-eae5-4f0a-a8b2-1cca115e008f"))).set_CanShowCreateContactGroup(value));
	}
	final Windows.Foundation.Collections.IPropertySet ProviderProperties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount4)this.asInterface(uuid("c4315210-eae5-4f0a-a8b2-1cca115e008f"))).get_ProviderProperties(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataTasks.UserDataTaskList)) FindUserDataTaskListsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataTasks.UserDataTaskList)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount4)this.asInterface(uuid("c4315210-eae5-4f0a-a8b2-1cca115e008f"))).abi_FindUserDataTaskListsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactGroup)) FindContactGroupsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactGroup)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount4)this.asInterface(uuid("c4315210-eae5-4f0a-a8b2-1cca115e008f"))).abi_FindContactGroupsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) TryShowCreateContactGroupAsync()
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount4)this.asInterface(uuid("c4315210-eae5-4f0a-a8b2-1cca115e008f"))).abi_TryShowCreateContactGroupAsync(&_ret));
		return _ret;
	}
	final void IsProtectedUnderLock(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount4)this.asInterface(uuid("c4315210-eae5-4f0a-a8b2-1cca115e008f"))).set_IsProtectedUnderLock(value));
	}
	final void Icon(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccount4)this.asInterface(uuid("c4315210-eae5-4f0a-a8b2-1cca115e008f"))).set_Icon(value));
	}
}

interface UserDataAccountManager
{
	private static Windows.ApplicationModel.UserDataAccounts.IUserDataAccountManagerStatics _staticInstance;
	public static Windows.ApplicationModel.UserDataAccounts.IUserDataAccountManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.UserDataAccounts.IUserDataAccountManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore) RequestStoreAsync(Windows.ApplicationModel.UserDataAccounts.UserDataAccountStoreAccessType storeAccessType)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore) _ret;
		Debug.OK(staticInstance.abi_RequestStoreAsync(storeAccessType, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(HSTRING) ShowAddAccountAsync(Windows.ApplicationModel.UserDataAccounts.UserDataAccountContentKinds contentKinds)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.abi_ShowAddAccountAsync(contentKinds, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction ShowAccountSettingsAsync(HSTRING id)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_ShowAccountSettingsAsync(id, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction ShowAccountErrorResolverAsync(HSTRING id)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_ShowAccountErrorResolverAsync(id, &_ret));
		return _ret;
	}
}

interface UserDataAccountManagerForUser : Windows.ApplicationModel.UserDataAccounts.IUserDataAccountManagerForUser
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore) RequestStoreAsync(Windows.ApplicationModel.UserDataAccounts.UserDataAccountStoreAccessType storeAccessType)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore) _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccountManagerForUser)this.asInterface(uuid("56a6e8db-db8f-41ab-a65f-8c5971aac982"))).abi_RequestStoreAsync(storeAccessType, &_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccountManagerForUser)this.asInterface(uuid("56a6e8db-db8f-41ab-a65f-8c5971aac982"))).get_User(&_ret));
		return _ret;
	}
}

interface UserDataAccountStore : Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStore, Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStore2, Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStore3
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount)) FindAccountsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStore)this.asInterface(uuid("2073b0ad-7d0a-4e76-bf45-2368f978a59a"))).abi_FindAccountsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount) GetAccountAsync(HSTRING id)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount) _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStore)this.asInterface(uuid("2073b0ad-7d0a-4e76-bf45-2368f978a59a"))).abi_GetAccountAsync(id, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount) CreateAccountAsync(HSTRING userDisplayName)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount) _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStore)this.asInterface(uuid("2073b0ad-7d0a-4e76-bf45-2368f978a59a"))).abi_CreateAccountAsync(userDisplayName, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount) CreateAccountAsync(HSTRING userDisplayName, HSTRING packageRelativeAppId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount) _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStore2)this.asInterface(uuid("b1e0aef7-9560-4631-8af0-061d30161469"))).abi_CreateAccountAsync(userDisplayName, packageRelativeAppId, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnStoreChanged(void delegate(Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore, Windows.ApplicationModel.UserDataAccounts.UserDataAccountStoreChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStore2)this.asInterface(uuid("b1e0aef7-9560-4631-8af0-061d30161469"))).add_StoreChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore, Windows.ApplicationModel.UserDataAccounts.UserDataAccountStoreChangedEventArgs), Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore, Windows.ApplicationModel.UserDataAccounts.UserDataAccountStoreChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStoreChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStore2)this.asInterface(uuid("b1e0aef7-9560-4631-8af0-061d30161469"))).remove_StoreChanged(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount) CreateAccountAsync(HSTRING userDisplayName, HSTRING packageRelativeAppId, HSTRING enterpriseId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.UserDataAccount) _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStore3)this.asInterface(uuid("8142c094-f3c9-478b-b117-6585bebb6789"))).abi_CreateAccountAsync(userDisplayName, packageRelativeAppId, enterpriseId, &_ret));
		return _ret;
	}
}

interface UserDataAccountStoreChangedEventArgs : Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStoreChangedEventArgs
{
extern(Windows):
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStoreChangedEventArgs)this.asInterface(uuid("84e3e2e5-8820-4512-b1f6-2e035be1072c"))).abi_GetDeferral(&_ret));
		return _ret;
	}
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