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
}

interface ContactRemovedEventArgs : Windows.ApplicationModel.Contacts.Provider.IContactRemovedEventArgs
{
}

enum AddContactResult
{
	Added = 0,
	AlreadyAdded = 1,
	Unavailable = 2
}