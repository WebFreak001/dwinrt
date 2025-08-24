module Windows.ApplicationModel.Contacts.Provider;

import dwinrt;

@uuid("e2cc1366-cf66-43c4-a96a-a5a112db4746")
@WinrtFactory("Windows.ApplicationModel.Contacts.Provider.ContactPickerUI")
interface IContactPickerUI : IInspectable
{
extern(Windows):
	deprecated("AddContact may be altered or unavailable for releases after Windows 8.1. Instead, use AddContact without the ID.")
	HRESULT abi_AddContact(HSTRING id, Windows.ApplicationModel.Contacts.Contact contact, Windows.ApplicationModel.Contacts.Provider.AddContactResult* return_result);
	HRESULT abi_RemoveContact(HSTRING id);
	HRESULT abi_ContainsContact(HSTRING id, bool* return_isContained);
	deprecated("DesiredFields may be altered or unavailable for releases after Windows 8.1. Instead, use DesiredFieldsWithContactFieldType.")
	HRESULT get_DesiredFields(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_SelectionMode(Windows.ApplicationModel.Contacts.ContactSelectionMode* return_value);
	HRESULT add_ContactRemoved(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Contacts.Provider.ContactPickerUI, Windows.ApplicationModel.Contacts.Provider.ContactRemovedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ContactRemoved(EventRegistrationToken token);
}

@uuid("6e449e28-7b25-4999-9b0b-875400a1e8c8")
@WinrtFactory("Windows.ApplicationModel.Contacts.Provider.ContactPickerUI")
interface IContactPickerUI2 : IInspectable
{
extern(Windows):
	HRESULT abi_AddContact(Windows.ApplicationModel.Contacts.Contact contact, Windows.ApplicationModel.Contacts.Provider.AddContactResult* return_result);
	HRESULT get_DesiredFieldsWithContactFieldType(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactFieldType)* return_value);
}

@uuid("6f354338-3302-4d13-ad8d-adcc0ff9e47c")
@WinrtFactory("Windows.ApplicationModel.Contacts.Provider.ContactRemovedEventArgs")
interface IContactRemovedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
}

interface ContactPickerUI : Windows.ApplicationModel.Contacts.Provider.IContactPickerUI, Windows.ApplicationModel.Contacts.Provider.IContactPickerUI2
{
extern(Windows):
	deprecated("AddContact may be altered or unavailable for releases after Windows 8.1. Instead, use AddContact without the ID.")
	final Windows.ApplicationModel.Contacts.Provider.AddContactResult AddContact(wstring id, Windows.ApplicationModel.Contacts.Contact contact)
	{
		Windows.ApplicationModel.Contacts.Provider.AddContactResult _ret;
		Debug.OK((cast(Windows.ApplicationModel.Contacts.Provider.IContactPickerUI)this.asInterface(uuid("e2cc1366-cf66-43c4-a96a-a5a112db4746"))).abi_AddContact(hstring(id).handle, contact, &_ret));
		return _ret;
	}
	final void RemoveContact(wstring id)
	{
		Debug.OK((cast(Windows.ApplicationModel.Contacts.Provider.IContactPickerUI)this.asInterface(uuid("e2cc1366-cf66-43c4-a96a-a5a112db4746"))).abi_RemoveContact(hstring(id).handle));
	}
	final bool ContainsContact(wstring id)
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Contacts.Provider.IContactPickerUI)this.asInterface(uuid("e2cc1366-cf66-43c4-a96a-a5a112db4746"))).abi_ContainsContact(hstring(id).handle, &_ret));
		return _ret;
	}
	deprecated("DesiredFields may be altered or unavailable for releases after Windows 8.1. Instead, use DesiredFieldsWithContactFieldType.")
	final Windows.Foundation.Collections.IVectorView!(HSTRING) DesiredFields()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Contacts.Provider.IContactPickerUI)this.asInterface(uuid("e2cc1366-cf66-43c4-a96a-a5a112db4746"))).get_DesiredFields(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactSelectionMode SelectionMode()
	{
		Windows.ApplicationModel.Contacts.ContactSelectionMode _ret;
		Debug.OK((cast(Windows.ApplicationModel.Contacts.Provider.IContactPickerUI)this.asInterface(uuid("e2cc1366-cf66-43c4-a96a-a5a112db4746"))).get_SelectionMode(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnContactRemoved(void delegate(Windows.ApplicationModel.Contacts.Provider.ContactPickerUI, Windows.ApplicationModel.Contacts.Provider.ContactRemovedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Contacts.Provider.IContactPickerUI)this.asInterface(uuid("e2cc1366-cf66-43c4-a96a-a5a112db4746"))).add_ContactRemoved(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Contacts.Provider.ContactPickerUI, Windows.ApplicationModel.Contacts.Provider.ContactRemovedEventArgs), Windows.ApplicationModel.Contacts.Provider.ContactPickerUI, Windows.ApplicationModel.Contacts.Provider.ContactRemovedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeContactRemoved(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Contacts.Provider.IContactPickerUI)this.asInterface(uuid("e2cc1366-cf66-43c4-a96a-a5a112db4746"))).remove_ContactRemoved(token));
	}
	final Windows.ApplicationModel.Contacts.Provider.AddContactResult AddContact(Windows.ApplicationModel.Contacts.Contact contact)
	{
		Windows.ApplicationModel.Contacts.Provider.AddContactResult _ret;
		Debug.OK((cast(Windows.ApplicationModel.Contacts.Provider.IContactPickerUI2)this.asInterface(uuid("6e449e28-7b25-4999-9b0b-875400a1e8c8"))).abi_AddContact(contact, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactFieldType) DesiredFieldsWithContactFieldType()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactFieldType) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Contacts.Provider.IContactPickerUI2)this.asInterface(uuid("6e449e28-7b25-4999-9b0b-875400a1e8c8"))).get_DesiredFieldsWithContactFieldType(&_ret));
		return _ret;
	}
}

interface ContactRemovedEventArgs : Windows.ApplicationModel.Contacts.Provider.IContactRemovedEventArgs
{
extern(Windows):
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Contacts.Provider.IContactRemovedEventArgs)this.asInterface(uuid("6f354338-3302-4d13-ad8d-adcc0ff9e47c"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
}

enum AddContactResult
{
	Added = 0,
	AlreadyAdded = 1,
	Unavailable = 2
}