module Windows.ApplicationModel.Contacts.DataProvider;

import dwinrt;

@uuid("1a398a52-8c9d-4d6f-a4e0-111e9a125a30")
@WinrtFactory("Windows.ApplicationModel.Contacts.DataProvider.ContactDataProviderConnection")
interface IContactDataProviderConnection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_SyncRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Contacts.DataProvider.ContactDataProviderConnection, Windows.ApplicationModel.Contacts.DataProvider.ContactListSyncManagerSyncRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SyncRequested(EventRegistrationToken token);
	HRESULT add_ServerSearchReadBatchRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Contacts.DataProvider.ContactDataProviderConnection, Windows.ApplicationModel.Contacts.DataProvider.ContactListServerSearchReadBatchRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ServerSearchReadBatchRequested(EventRegistrationToken token);
	HRESULT abi_Start();
}

@uuid("527104be-3c62-43c8-9ae7-db531685cd99")
@WinrtFactory("Windows.ApplicationModel.Contacts.DataProvider.ContactDataProviderTriggerDetails")
interface IContactDataProviderTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Connection(Windows.ApplicationModel.Contacts.DataProvider.ContactDataProviderConnection* return_value);
}

@uuid("ba776a97-4030-4925-9fb4-143b295e653b")
@WinrtFactory("Windows.ApplicationModel.Contacts.DataProvider.ContactListServerSearchReadBatchRequest")
interface IContactListServerSearchReadBatchRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SessionId(HSTRING* return_value);
	HRESULT get_ContactListId(HSTRING* return_value);
	HRESULT get_Options(Windows.ApplicationModel.Contacts.ContactQueryOptions* return_value);
	HRESULT get_SuggestedBatchSize(UINT32* return_value);
	HRESULT abi_SaveContactAsync(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.ApplicationModel.Contacts.ContactBatchStatus batchStatus, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("1a27e87b-69d7-4e4e-8042-861cba61471e")
@WinrtFactory("Windows.ApplicationModel.Contacts.DataProvider.ContactListServerSearchReadBatchRequestEventArgs")
interface IContactListServerSearchReadBatchRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Contacts.DataProvider.ContactListServerSearchReadBatchRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("3c0e57a4-c4e7-4970-9a8f-9a66a2bb6c1a")
@WinrtFactory("Windows.ApplicationModel.Contacts.DataProvider.ContactListSyncManagerSyncRequest")
interface IContactListSyncManagerSyncRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContactListId(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("158e4dac-446d-4f10-afc2-02683ec533a6")
@WinrtFactory("Windows.ApplicationModel.Contacts.DataProvider.ContactListSyncManagerSyncRequestEventArgs")
interface IContactListSyncManagerSyncRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Contacts.DataProvider.ContactListSyncManagerSyncRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

interface ContactDataProviderConnection : Windows.ApplicationModel.Contacts.DataProvider.IContactDataProviderConnection
{
}

interface ContactDataProviderTriggerDetails : Windows.ApplicationModel.Contacts.DataProvider.IContactDataProviderTriggerDetails
{
}

interface ContactListServerSearchReadBatchRequest : Windows.ApplicationModel.Contacts.DataProvider.IContactListServerSearchReadBatchRequest
{
}

interface ContactListServerSearchReadBatchRequestEventArgs : Windows.ApplicationModel.Contacts.DataProvider.IContactListServerSearchReadBatchRequestEventArgs
{
}

interface ContactListSyncManagerSyncRequest : Windows.ApplicationModel.Contacts.DataProvider.IContactListSyncManagerSyncRequest
{
}

interface ContactListSyncManagerSyncRequestEventArgs : Windows.ApplicationModel.Contacts.DataProvider.IContactListSyncManagerSyncRequestEventArgs
{
}