module Windows.ApplicationModel.Contacts.DataProvider;

import dwinrt;

@uuid("1a398a52-8c9d-4d6f-a4e0-111e9a125a30")
@WinrtFactory("Windows.ApplicationModel.Contacts.DataProvider.ContactDataProviderConnection")
interface IContactDataProviderConnection : IInspectable
{
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
extern(Windows):
	HRESULT get_Connection(Windows.ApplicationModel.Contacts.DataProvider.ContactDataProviderConnection* return_value);
}

@uuid("ba776a97-4030-4925-9fb4-143b295e653b")
@WinrtFactory("Windows.ApplicationModel.Contacts.DataProvider.ContactListServerSearchReadBatchRequest")
interface IContactListServerSearchReadBatchRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Contacts.DataProvider.ContactListServerSearchReadBatchRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("3c0e57a4-c4e7-4970-9a8f-9a66a2bb6c1a")
@WinrtFactory("Windows.ApplicationModel.Contacts.DataProvider.ContactListSyncManagerSyncRequest")
interface IContactListSyncManagerSyncRequest : IInspectable
{
extern(Windows):
	HRESULT get_ContactListId(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("158e4dac-446d-4f10-afc2-02683ec533a6")
@WinrtFactory("Windows.ApplicationModel.Contacts.DataProvider.ContactListSyncManagerSyncRequestEventArgs")
interface IContactListSyncManagerSyncRequestEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Contacts.DataProvider.ContactListSyncManagerSyncRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

interface ContactDataProviderConnection : Windows.ApplicationModel.Contacts.DataProvider.IContactDataProviderConnection
{
extern(Windows):
	final void removeSyncRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_SyncRequested(token));
	}
	final void removeServerSearchReadBatchRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_ServerSearchReadBatchRequested(token));
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.DataProvider.IContactDataProviderConnection).abi_Start());
	}
}

interface ContactDataProviderTriggerDetails : Windows.ApplicationModel.Contacts.DataProvider.IContactDataProviderTriggerDetails
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.DataProvider.ContactDataProviderConnection Connection()
	{
		Windows.ApplicationModel.Contacts.DataProvider.ContactDataProviderConnection _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.DataProvider.IContactDataProviderTriggerDetails).get_Connection(&_ret));
		return _ret;
	}
}

interface ContactListServerSearchReadBatchRequest : Windows.ApplicationModel.Contacts.DataProvider.IContactListServerSearchReadBatchRequest
{
extern(Windows):
	final HSTRING SessionId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.DataProvider.IContactListServerSearchReadBatchRequest).get_SessionId(&_ret));
		return _ret;
	}
	final HSTRING ContactListId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.DataProvider.IContactListServerSearchReadBatchRequest).get_ContactListId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactQueryOptions Options()
	{
		Windows.ApplicationModel.Contacts.ContactQueryOptions _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.DataProvider.IContactListServerSearchReadBatchRequest).get_Options(&_ret));
		return _ret;
	}
	final UINT32 SuggestedBatchSize()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.DataProvider.IContactListServerSearchReadBatchRequest).get_SuggestedBatchSize(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SaveContactAsync(Windows.ApplicationModel.Contacts.Contact contact)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.DataProvider.IContactListServerSearchReadBatchRequest).abi_SaveContactAsync(contact, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.DataProvider.IContactListServerSearchReadBatchRequest).abi_ReportCompletedAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync(Windows.ApplicationModel.Contacts.ContactBatchStatus batchStatus)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.DataProvider.IContactListServerSearchReadBatchRequest).abi_ReportFailedAsync(batchStatus, &_ret));
		return _ret;
	}
}

interface ContactListServerSearchReadBatchRequestEventArgs : Windows.ApplicationModel.Contacts.DataProvider.IContactListServerSearchReadBatchRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.DataProvider.ContactListServerSearchReadBatchRequest Request()
	{
		Windows.ApplicationModel.Contacts.DataProvider.ContactListServerSearchReadBatchRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.DataProvider.IContactListServerSearchReadBatchRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.DataProvider.IContactListServerSearchReadBatchRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface ContactListSyncManagerSyncRequest : Windows.ApplicationModel.Contacts.DataProvider.IContactListSyncManagerSyncRequest
{
extern(Windows):
	final HSTRING ContactListId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.DataProvider.IContactListSyncManagerSyncRequest).get_ContactListId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.DataProvider.IContactListSyncManagerSyncRequest).abi_ReportCompletedAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.DataProvider.IContactListSyncManagerSyncRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface ContactListSyncManagerSyncRequestEventArgs : Windows.ApplicationModel.Contacts.DataProvider.IContactListSyncManagerSyncRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.DataProvider.ContactListSyncManagerSyncRequest Request()
	{
		Windows.ApplicationModel.Contacts.DataProvider.ContactListSyncManagerSyncRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.DataProvider.IContactListSyncManagerSyncRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.DataProvider.IContactListSyncManagerSyncRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}