module Windows.ApplicationModel.Contacts;

import dwinrt;

@uuid("0379d5dd-db5a-4fd3-b54e-4df17917a212")
@WinrtFactory("Windows.ApplicationModel.Contacts.AggregateContactManager")
interface IAggregateContactManager : IInspectable
{
extern(Windows):
	HRESULT abi_FindRawContactsAsync(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.Contact))* return_value);
	HRESULT abi_TryLinkContactsAsync(Windows.ApplicationModel.Contacts.Contact primaryContact, Windows.ApplicationModel.Contacts.Contact secondaryContact, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact)* return_contact);
	HRESULT abi_UnlinkRawContactAsync(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_TrySetPreferredSourceForPictureAsync(Windows.ApplicationModel.Contacts.Contact aggregateContact, Windows.ApplicationModel.Contacts.Contact rawContact, Windows.Foundation.IAsyncOperation!(bool)* return_value);
}

@uuid("5e8cc2d8-a9cd-4430-9c4b-01348db2ca50")
@WinrtFactory("Windows.ApplicationModel.Contacts.AggregateContactManager")
interface IAggregateContactManager2 : IInspectable
{
extern(Windows):
	HRESULT abi_SetRemoteIdentificationInformationAsync(HSTRING contactListId, HSTRING remoteSourceId, HSTRING accountId, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("ec0072f3-2118-4049-9ebc-17f0ab692b64")
@WinrtFactory("Windows.ApplicationModel.Contacts.Contact")
interface IContact : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_Fields(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.IContactField)* return_value);
}

@uuid("f312f365-bb77-4c94-802d-8328cee40c08")
@WinrtFactory("Windows.ApplicationModel.Contacts.Contact")
interface IContact2_Base : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT set_Id(HSTRING value);
	HRESULT get_Notes(HSTRING* return_value);
	HRESULT set_Notes(HSTRING value);
	HRESULT get_Phones(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactPhone)* return_value);
	HRESULT get_Emails(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactEmail)* return_value);
	HRESULT get_Addresses(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactAddress)* return_value);
	HRESULT get_ConnectedServiceAccounts(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactConnectedServiceAccount)* return_value);
	HRESULT get_ImportantDates(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactDate)* return_value);
	HRESULT get_DataSuppliers(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_JobInfo(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactJobInfo)* return_value);
	HRESULT get_SignificantOthers(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactSignificantOther)* return_value);
	HRESULT get_Websites(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactWebsite)* return_value);
	HRESULT get_ProviderProperties(Windows.Foundation.Collections.IPropertySet* return_value);
}
@uuid("f312f365-bb77-4c94-802d-8328cee40c08")
@WinrtFactory("Windows.ApplicationModel.Contacts.Contact")
interface IContact2 : IContact2_Base, Windows.ApplicationModel.Contacts.IContact {}

@uuid("48201e67-e08e-42a4-b561-41d08ca9575d")
@WinrtFactory("Windows.ApplicationModel.Contacts.Contact")
interface IContact3_Base : IInspectable
{
extern(Windows):
	HRESULT get_ContactListId(HSTRING* return_value);
	HRESULT get_DisplayPictureUserUpdateTime(Windows.Foundation.DateTime* return_value);
	HRESULT set_DisplayPictureUserUpdateTime(Windows.Foundation.DateTime value);
	HRESULT get_IsMe(bool* return_value);
	HRESULT get_AggregateId(HSTRING* return_value);
	HRESULT get_RemoteId(HSTRING* return_value);
	HRESULT set_RemoteId(HSTRING value);
	HRESULT get_RingToneToken(HSTRING* return_value);
	HRESULT set_RingToneToken(HSTRING value);
	HRESULT get_IsDisplayPictureManuallySet(bool* return_value);
	HRESULT get_LargeDisplayPicture(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT get_SmallDisplayPicture(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT get_SourceDisplayPicture(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_SourceDisplayPicture(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_TextToneToken(HSTRING* return_value);
	HRESULT set_TextToneToken(HSTRING value);
	HRESULT get_IsAggregate(bool* return_value);
	HRESULT get_FullName(HSTRING* return_value);
	HRESULT get_DisplayNameOverride(HSTRING* return_value);
	HRESULT set_DisplayNameOverride(HSTRING value);
	HRESULT get_Nickname(HSTRING* return_value);
	HRESULT set_Nickname(HSTRING value);
	HRESULT get_SortName(HSTRING* return_value);
}
@uuid("48201e67-e08e-42a4-b561-41d08ca9575d")
@WinrtFactory("Windows.ApplicationModel.Contacts.Contact")
interface IContact3 : IContact3_Base, Windows.ApplicationModel.Contacts.IContact2, Windows.ApplicationModel.Contacts.IContact {}

@uuid("9739d39a-42ce-4872-8d70-3063aa584b70")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactAddress")
interface IContactAddress : IInspectable
{
extern(Windows):
	HRESULT get_StreetAddress(HSTRING* return_value);
	HRESULT set_StreetAddress(HSTRING value);
	HRESULT get_Locality(HSTRING* return_value);
	HRESULT set_Locality(HSTRING value);
	HRESULT get_Region(HSTRING* return_value);
	HRESULT set_Region(HSTRING value);
	HRESULT get_Country(HSTRING* return_value);
	HRESULT set_Country(HSTRING value);
	HRESULT get_PostalCode(HSTRING* return_value);
	HRESULT set_PostalCode(HSTRING value);
	HRESULT get_Kind(Windows.ApplicationModel.Contacts.ContactAddressKind* return_value);
	HRESULT set_Kind(Windows.ApplicationModel.Contacts.ContactAddressKind value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
}

@uuid("821fc2ef-7d41-44a2-84c3-60a281dd7b86")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactAnnotation")
interface IContactAnnotation : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_AnnotationListId(HSTRING* return_value);
	HRESULT get_ContactId(HSTRING* return_value);
	HRESULT set_ContactId(HSTRING value);
	HRESULT get_RemoteId(HSTRING* return_value);
	HRESULT set_RemoteId(HSTRING value);
	HRESULT get_SupportedOperations(Windows.ApplicationModel.Contacts.ContactAnnotationOperations* return_value);
	HRESULT set_SupportedOperations(Windows.ApplicationModel.Contacts.ContactAnnotationOperations value);
	HRESULT get_IsDisabled(bool* return_value);
	HRESULT get_ProviderProperties(Windows.Foundation.Collections.ValueSet* return_value);
}

@uuid("b691ecf3-4ab7-4a1f-9941-0c9cf3171b75")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactAnnotation")
interface IContactAnnotation2 : IInspectable
{
extern(Windows):
	HRESULT get_ContactListId(HSTRING* return_value);
	HRESULT set_ContactListId(HSTRING value);
}

@uuid("92a486aa-5c88-45b9-aad0-461888e68d8a")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactAnnotationList")
interface IContactAnnotationList : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_ProviderPackageFamilyName(HSTRING* return_value);
	HRESULT get_UserDataAccountId(HSTRING* return_value);
	HRESULT abi_DeleteAsync(Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_TrySaveAnnotationAsync(Windows.ApplicationModel.Contacts.ContactAnnotation annotation, Windows.Foundation.IAsyncOperation!(bool)* return_ppResult);
	HRESULT abi_GetAnnotationAsync(HSTRING annotationId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactAnnotation)* return_annotation);
	HRESULT abi_FindAnnotationsByRemoteIdAsync(HSTRING remoteId, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotation))* return_annotations);
	HRESULT abi_FindAnnotationsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotation))* return_annotations);
	HRESULT abi_DeleteAnnotationAsync(Windows.ApplicationModel.Contacts.ContactAnnotation annotation, Windows.Foundation.IAsyncAction* return_value);
}

@uuid("23acf4aa-7a77-457d-8203-987f4b31af09")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactAnnotationStore")
interface IContactAnnotationStore : IInspectable
{
extern(Windows):
	HRESULT abi_FindContactIdsByEmailAsync(HSTRING emailAddress, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING))* return_contactIds);
	HRESULT abi_FindContactIdsByPhoneNumberAsync(HSTRING phoneNumber, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING))* return_contactIds);
	HRESULT abi_FindAnnotationsForContactAsync(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotation))* return_annotations);
	HRESULT abi_DisableAnnotationAsync(Windows.ApplicationModel.Contacts.ContactAnnotation annotation, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_CreateAnnotationListAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactAnnotationList)* return_value);
	HRESULT abi_CreateAnnotationListInAccountAsync(HSTRING userDataAccountId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactAnnotationList)* return_value);
	HRESULT abi_GetAnnotationListAsync(HSTRING annotationListId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactAnnotationList)* return_value);
	HRESULT abi_FindAnnotationListsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotationList))* return_lists);
}

@uuid("7ede23fd-61e7-4967-8ec5-bdf280a24063")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactAnnotationStore")
interface IContactAnnotationStore2 : IInspectable
{
extern(Windows):
	HRESULT abi_FindAnnotationsForContactListAsync(HSTRING contactListId, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotation))* return_annotations);
}

@uuid("35d1972d-bfce-46bb-93f8-a5b06ec5e201")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactBatch")
interface IContactBatch : IInspectable
{
extern(Windows):
	HRESULT get_Contacts(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.Contact)* return_value);
	HRESULT get_Status(Windows.ApplicationModel.Contacts.ContactBatchStatus* return_value);
}

@uuid("b60af902-1546-434d-869c-6e3520760ef3")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactCardDelayedDataLoader")
interface IContactCardDelayedDataLoader_Base : IInspectable
{
extern(Windows):
	HRESULT abi_SetData(Windows.ApplicationModel.Contacts.Contact contact);
}
@uuid("b60af902-1546-434d-869c-6e3520760ef3")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactCardDelayedDataLoader")
interface IContactCardDelayedDataLoader : IContactCardDelayedDataLoader_Base, Windows.Foundation.IClosable {}

@uuid("8c0a4f7e-6ab6-4f3f-be72-817236eeea5b")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactCardOptions")
interface IContactCardOptions : IInspectable
{
extern(Windows):
	HRESULT get_HeaderKind(Windows.ApplicationModel.Contacts.ContactCardHeaderKind* return_value);
	HRESULT set_HeaderKind(Windows.ApplicationModel.Contacts.ContactCardHeaderKind value);
	HRESULT get_InitialTabKind(Windows.ApplicationModel.Contacts.ContactCardTabKind* return_value);
	HRESULT set_InitialTabKind(Windows.ApplicationModel.Contacts.ContactCardTabKind value);
}

@uuid("8f271ba0-d74b-4cc6-9f53-1b0eb5d1273c")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactCardOptions")
interface IContactCardOptions2_Base : IInspectable
{
extern(Windows):
	HRESULT get_ServerSearchContactListIds(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}
@uuid("8f271ba0-d74b-4cc6-9f53-1b0eb5d1273c")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactCardOptions")
interface IContactCardOptions2 : IContactCardOptions2_Base, Windows.ApplicationModel.Contacts.IContactCardOptions {}

@uuid("951d4b10-6a59-4720-a4e1-363d98c135d5")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactChange")
interface IContactChange : IInspectable
{
extern(Windows):
	HRESULT get_ChangeType(Windows.ApplicationModel.Contacts.ContactChangeType* return_value);
	HRESULT get_Contact(Windows.ApplicationModel.Contacts.Contact* return_value);
}

@uuid("217319fa-2d0c-42e0-a9da-3ecd56a78a47")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactChangeReader")
interface IContactChangeReader : IInspectable
{
extern(Windows):
	HRESULT abi_AcceptChanges();
	HRESULT abi_AcceptChangesThrough(Windows.ApplicationModel.Contacts.ContactChange lastChangeToAccept);
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactChange))* return_value);
}

@uuid("6e992952-309b-404d-9712-b37bd30278aa")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactChangeTracker")
interface IContactChangeTracker : IInspectable
{
extern(Windows):
	HRESULT abi_Enable();
	HRESULT abi_GetChangeReader(Windows.ApplicationModel.Contacts.ContactChangeReader* return_value);
	HRESULT abi_Reset();
}

@uuid("c5143ae8-1b03-46f8-b694-a523e83cfcb6")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactChangedDeferral")
interface IContactChangedDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("525e7fd1-73f3-4b7d-a918-580be4366121")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactChangedEventArgs")
interface IContactChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.ApplicationModel.Contacts.ContactChangedDeferral* return_value);
}

@uuid("f6f83553-aa27-4731-8e4a-3dec5ce9eec9")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactConnectedServiceAccount")
interface IContactConnectedServiceAccount : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT set_Id(HSTRING value);
	HRESULT get_ServiceName(HSTRING* return_value);
	HRESULT set_ServiceName(HSTRING value);
}

@uuid("fe98ae66-b205-4934-9174-0ff2b0565707")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactDate")
interface IContactDate : IInspectable
{
extern(Windows):
	HRESULT get_Day(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_Day(Windows.Foundation.IReference!(UINT32) value);
	HRESULT get_Month(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_Month(Windows.Foundation.IReference!(UINT32) value);
	HRESULT get_Year(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_Year(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_Kind(Windows.ApplicationModel.Contacts.ContactDateKind* return_value);
	HRESULT set_Kind(Windows.ApplicationModel.Contacts.ContactDateKind value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
}

@uuid("90a219a9-e3d3-4d63-993b-05b9a5393abf")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactEmail")
interface IContactEmail : IInspectable
{
extern(Windows):
	HRESULT get_Address(HSTRING* return_value);
	HRESULT set_Address(HSTRING value);
	HRESULT get_Kind(Windows.ApplicationModel.Contacts.ContactEmailKind* return_value);
	HRESULT set_Kind(Windows.ApplicationModel.Contacts.ContactEmailKind value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
}

@uuid("b176486a-d293-492c-a058-db575b3e3c0f")
interface IContactField : IInspectable
{
extern(Windows):
	HRESULT get_Type(Windows.ApplicationModel.Contacts.ContactFieldType* return_value);
	HRESULT get_Category(Windows.ApplicationModel.Contacts.ContactFieldCategory* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Value(HSTRING* return_value);
}

@uuid("85e2913f-0e4a-4a3e-8994-406ae7ed646e")
interface IContactFieldFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateField_Default(HSTRING value, Windows.ApplicationModel.Contacts.ContactFieldType type, Windows.ApplicationModel.Contacts.ContactField* return_field);
	HRESULT abi_CreateField_Category(HSTRING value, Windows.ApplicationModel.Contacts.ContactFieldType type, Windows.ApplicationModel.Contacts.ContactFieldCategory category, Windows.ApplicationModel.Contacts.ContactField* return_field);
	HRESULT abi_CreateField_Custom(HSTRING name, HSTRING value, Windows.ApplicationModel.Contacts.ContactFieldType type, Windows.ApplicationModel.Contacts.ContactFieldCategory category, Windows.ApplicationModel.Contacts.ContactField* return_field);
}

@uuid("59bdeb01-9e9a-475d-bfe5-a37b806d852c")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactGroup")
interface IContactGroup : IInspectable
{
}

@uuid("275eb6d4-6a2e-4278-a914-e460d5f088f6")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactInformation")
interface IContactInformation : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT abi_GetThumbnailAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType)* return_operation);
	HRESULT get_Emails(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactField)* return_value);
	HRESULT get_PhoneNumbers(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactField)* return_value);
	HRESULT get_Locations(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactLocationField)* return_value);
	HRESULT get_InstantMessages(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactInstantMessageField)* return_value);
	HRESULT get_CustomFields(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactField)* return_value);
	HRESULT abi_QueryCustomFields(HSTRING customName, Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactField)* return_value);
}

@uuid("cce33b37-0d85-41fa-b43d-da599c3eb009")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactInstantMessageField")
interface IContactInstantMessageField_Base : IInspectable
{
extern(Windows):
	HRESULT get_UserName(HSTRING* return_value);
	HRESULT get_Service(HSTRING* return_value);
	HRESULT get_DisplayText(HSTRING* return_value);
	HRESULT get_LaunchUri(Windows.Foundation.Uri* return_value);
}
@uuid("cce33b37-0d85-41fa-b43d-da599c3eb009")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactInstantMessageField")
interface IContactInstantMessageField : IContactInstantMessageField_Base, Windows.ApplicationModel.Contacts.IContactField {}

@uuid("ba0b6794-91a3-4bb2-b1b9-69a5dff0ba09")
interface IContactInstantMessageFieldFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstantMessage_Default(HSTRING userName, Windows.ApplicationModel.Contacts.ContactInstantMessageField* return_field);
	HRESULT abi_CreateInstantMessage_Category(HSTRING userName, Windows.ApplicationModel.Contacts.ContactFieldCategory category, Windows.ApplicationModel.Contacts.ContactInstantMessageField* return_field);
	HRESULT abi_CreateInstantMessage_All(HSTRING userName, Windows.ApplicationModel.Contacts.ContactFieldCategory category, HSTRING service, HSTRING displayText, Windows.Foundation.Uri verb, Windows.ApplicationModel.Contacts.ContactInstantMessageField* return_field);
}

@uuid("6d117b4c-ce50-4b43-9e69-b18258ea5315")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactJobInfo")
interface IContactJobInfo : IInspectable
{
extern(Windows):
	HRESULT get_CompanyName(HSTRING* return_value);
	HRESULT set_CompanyName(HSTRING value);
	HRESULT get_CompanyYomiName(HSTRING* return_value);
	HRESULT set_CompanyYomiName(HSTRING value);
	HRESULT get_Department(HSTRING* return_value);
	HRESULT set_Department(HSTRING value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_Manager(HSTRING* return_value);
	HRESULT set_Manager(HSTRING value);
	HRESULT get_Office(HSTRING* return_value);
	HRESULT set_Office(HSTRING value);
	HRESULT get_CompanyAddress(HSTRING* return_value);
	HRESULT set_CompanyAddress(HSTRING value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
}

@uuid("fb1232d6-ee73-46e7-8761-11cd0157728f")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactLaunchActionVerbs")
interface IContactLaunchActionVerbsStatics : IInspectable
{
extern(Windows):
	HRESULT get_Call(HSTRING* return_value);
	HRESULT get_Message(HSTRING* return_value);
	HRESULT get_Map(HSTRING* return_value);
	HRESULT get_Post(HSTRING* return_value);
	HRESULT get_VideoCall(HSTRING* return_value);
}

@uuid("16ddec75-392c-4845-9dfb-51a3e7ef3e42")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactList")
interface IContactList : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT set_DisplayName(HSTRING value);
	HRESULT get_SourceDisplayName(HSTRING* return_value);
	HRESULT get_IsHidden(bool* return_value);
	HRESULT set_IsHidden(bool value);
	HRESULT get_OtherAppReadAccess(Windows.ApplicationModel.Contacts.ContactListOtherAppReadAccess* return_value);
	HRESULT set_OtherAppReadAccess(Windows.ApplicationModel.Contacts.ContactListOtherAppReadAccess value);
	HRESULT get_OtherAppWriteAccess(Windows.ApplicationModel.Contacts.ContactListOtherAppWriteAccess* return_value);
	HRESULT set_OtherAppWriteAccess(Windows.ApplicationModel.Contacts.ContactListOtherAppWriteAccess value);
	HRESULT get_ChangeTracker(Windows.ApplicationModel.Contacts.ContactChangeTracker* return_value);
	HRESULT get_SyncManager(Windows.ApplicationModel.Contacts.ContactListSyncManager* return_value);
	HRESULT get_SupportsServerSearch(bool* return_value);
	HRESULT get_UserDataAccountId(HSTRING* return_value);
	HRESULT add_ContactChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Contacts.ContactList, Windows.ApplicationModel.Contacts.ContactChangedEventArgs) value, EventRegistrationToken* return_returnValue);
	HRESULT remove_ContactChanged(EventRegistrationToken value);
	HRESULT abi_SaveAsync(Windows.Foundation.IAsyncAction* return_returnValue);
	HRESULT abi_DeleteAsync(Windows.Foundation.IAsyncAction* return_returnValue);
	HRESULT abi_GetContactFromRemoteIdAsync(HSTRING remoteId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact)* return_contact);
	HRESULT abi_GetMeContactAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact)* return_meContact);
	HRESULT abi_GetContactReader(Windows.ApplicationModel.Contacts.ContactReader* return_value);
	HRESULT abi_GetContactReaderWithOptions(Windows.ApplicationModel.Contacts.ContactQueryOptions options, Windows.ApplicationModel.Contacts.ContactReader* return_value);
	HRESULT abi_SaveContactAsync(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_DeleteContactAsync(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_GetContactAsync(HSTRING contactId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact)* return_contacts);
}

@uuid("cb3943b4-4550-4dcb-9229-40ff91fb0203")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactList")
interface IContactList2 : IInspectable
{
extern(Windows):
	HRESULT abi_RegisterSyncManagerAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT set_SupportsServerSearch(bool value);
	HRESULT get_SyncConstraints(Windows.ApplicationModel.Contacts.ContactListSyncConstraints* return_value);
}

@uuid("b2b0bf01-3062-4e2e-969d-018d1987f314")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactListSyncConstraints")
interface IContactListSyncConstraints : IInspectable
{
extern(Windows):
	HRESULT get_CanSyncDescriptions(bool* return_value);
	HRESULT set_CanSyncDescriptions(bool value);
	HRESULT get_MaxHomePhoneNumbers(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxHomePhoneNumbers(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxMobilePhoneNumbers(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxMobilePhoneNumbers(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxWorkPhoneNumbers(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxWorkPhoneNumbers(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxOtherPhoneNumbers(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxOtherPhoneNumbers(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxPagerPhoneNumbers(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxPagerPhoneNumbers(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxBusinessFaxPhoneNumbers(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxBusinessFaxPhoneNumbers(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxHomeFaxPhoneNumbers(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxHomeFaxPhoneNumbers(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxCompanyPhoneNumbers(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxCompanyPhoneNumbers(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxAssistantPhoneNumbers(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxAssistantPhoneNumbers(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxRadioPhoneNumbers(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxRadioPhoneNumbers(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxPersonalEmailAddresses(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxPersonalEmailAddresses(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxWorkEmailAddresses(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxWorkEmailAddresses(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxOtherEmailAddresses(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxOtherEmailAddresses(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxHomeAddresses(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxHomeAddresses(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxWorkAddresses(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxWorkAddresses(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxOtherAddresses(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxOtherAddresses(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxBirthdayDates(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxBirthdayDates(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxAnniversaryDates(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxAnniversaryDates(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxOtherDates(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxOtherDates(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxOtherRelationships(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxOtherRelationships(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxSpouseRelationships(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxSpouseRelationships(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxPartnerRelationships(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxPartnerRelationships(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxSiblingRelationships(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxSiblingRelationships(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxParentRelationships(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxParentRelationships(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxChildRelationships(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxChildRelationships(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxJobInfo(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxJobInfo(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_MaxWebsites(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_MaxWebsites(Windows.Foundation.IReference!(INT32) value);
}

@uuid("146e83be-7925-4acc-9de5-21ddd06f8674")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactListSyncManager")
interface IContactListSyncManager : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.ApplicationModel.Contacts.ContactListSyncStatus* return_value);
	HRESULT get_LastSuccessfulSyncTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_LastAttemptedSyncTime(Windows.Foundation.DateTime* return_value);
	HRESULT abi_SyncAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT add_SyncStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Contacts.ContactListSyncManager, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_SyncStatusChanged(EventRegistrationToken token);
}

@uuid("a9591247-bb55-4e23-8128-370134a85d0d")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactListSyncManager")
interface IContactListSyncManager2 : IInspectable
{
extern(Windows):
	HRESULT set_Status(Windows.ApplicationModel.Contacts.ContactListSyncStatus value);
	HRESULT set_LastSuccessfulSyncTime(Windows.Foundation.DateTime value);
	HRESULT set_LastAttemptedSyncTime(Windows.Foundation.DateTime value);
}

@uuid("9ec00f82-ab6e-4b36-89e3-b23bc0a1dacc")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactLocationField")
interface IContactLocationField_Base : IInspectable
{
extern(Windows):
	HRESULT get_UnstructuredAddress(HSTRING* return_value);
	HRESULT get_Street(HSTRING* return_value);
	HRESULT get_City(HSTRING* return_value);
	HRESULT get_Region(HSTRING* return_value);
	HRESULT get_Country(HSTRING* return_value);
	HRESULT get_PostalCode(HSTRING* return_value);
}
@uuid("9ec00f82-ab6e-4b36-89e3-b23bc0a1dacc")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactLocationField")
interface IContactLocationField : IContactLocationField_Base, Windows.ApplicationModel.Contacts.IContactField {}

@uuid("f79932d7-2fdf-43fe-8f18-41897390bcfe")
interface IContactLocationFieldFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateLocation_Default(HSTRING unstructuredAddress, Windows.ApplicationModel.Contacts.ContactLocationField* return_field);
	HRESULT abi_CreateLocation_Category(HSTRING unstructuredAddress, Windows.ApplicationModel.Contacts.ContactFieldCategory category, Windows.ApplicationModel.Contacts.ContactLocationField* return_field);
	HRESULT abi_CreateLocation_All(HSTRING unstructuredAddress, Windows.ApplicationModel.Contacts.ContactFieldCategory category, HSTRING street, HSTRING city, HSTRING region, HSTRING country, HSTRING postalCode, Windows.ApplicationModel.Contacts.ContactLocationField* return_field);
}

@uuid("b74bba57-1076-4bef-aef3-54686d18387d")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactManagerForUser")
interface IContactManagerForUser : IInspectable
{
extern(Windows):
	HRESULT abi_ConvertContactToVCardAsync(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.RandomAccessStreamReference)* return_result);
	HRESULT abi_ConvertContactToVCardAsyncWithMaxBytes(Windows.ApplicationModel.Contacts.Contact contact, UINT32 maxBytes, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.RandomAccessStreamReference)* return_result);
	HRESULT abi_ConvertVCardToContactAsync(Windows.Storage.Streams.IRandomAccessStreamReference vCard, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact)* return_result);
	HRESULT abi_RequestStoreAsync(Windows.ApplicationModel.Contacts.ContactStoreAccessType accessType, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactStore)* return_result);
	HRESULT abi_RequestAnnotationStoreAsync(Windows.ApplicationModel.Contacts.ContactAnnotationStoreAccessType accessType, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactAnnotationStore)* return_result);
	HRESULT get_SystemDisplayNameOrder(Windows.ApplicationModel.Contacts.ContactNameOrder* return_value);
	HRESULT set_SystemDisplayNameOrder(Windows.ApplicationModel.Contacts.ContactNameOrder value);
	HRESULT get_SystemSortOrder(Windows.ApplicationModel.Contacts.ContactNameOrder* return_value);
	HRESULT set_SystemSortOrder(Windows.ApplicationModel.Contacts.ContactNameOrder value);
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("4d469c2e-3b75-4a73-bb30-736645472256")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactManagerForUser")
interface IContactManagerForUser2 : IInspectable
{
extern(Windows):
	HRESULT abi_ShowFullContactCard(Windows.ApplicationModel.Contacts.Contact contact, Windows.ApplicationModel.Contacts.FullContactCardOptions fullContactCardOptions);
}

@uuid("81f21ac0-f661-4708-ba4f-d386bd0d622e")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactManager")
interface IContactManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_ShowContactCard(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.Rect selection);
	HRESULT abi_ShowContactCardWithPlacement(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement);
	HRESULT abi_ShowDelayLoadedContactCard(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.ApplicationModel.Contacts.ContactCardDelayedDataLoader* return_dataLoader);
}

@uuid("a178e620-47d8-48cc-963c-9592b6e510c6")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactManager")
interface IContactManagerStatics2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_RequestStoreAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactStore)* return_store);
}
@uuid("a178e620-47d8-48cc-963c-9592b6e510c6")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactManager")
interface IContactManagerStatics2 : IContactManagerStatics2_Base, Windows.ApplicationModel.Contacts.IContactManagerStatics {}

@uuid("c4cc3d42-7586-492a-930b-7bc138fc2139")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactManager")
interface IContactManagerStatics3_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ConvertContactToVCardAsync(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.RandomAccessStreamReference)* return_vCard);
	HRESULT abi_ConvertContactToVCardAsyncWithMaxBytes(Windows.ApplicationModel.Contacts.Contact contact, UINT32 maxBytes, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.RandomAccessStreamReference)* return_vCard);
	HRESULT abi_ConvertVCardToContactAsync(Windows.Storage.Streams.IRandomAccessStreamReference vCard, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact)* return_contact);
	HRESULT abi_RequestStoreAsyncWithAccessType(Windows.ApplicationModel.Contacts.ContactStoreAccessType accessType, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactStore)* return_store);
	HRESULT abi_RequestAnnotationStoreAsync(Windows.ApplicationModel.Contacts.ContactAnnotationStoreAccessType accessType, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactAnnotationStore)* return_store);
	HRESULT abi_IsShowContactCardSupported(bool* return_result);
	HRESULT abi_ShowContactCardWithOptions(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.ApplicationModel.Contacts.ContactCardOptions contactCardOptions);
	HRESULT abi_IsShowDelayLoadedContactCardSupported(bool* return_result);
	HRESULT abi_ShowDelayLoadedContactCardWithOptions(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.ApplicationModel.Contacts.ContactCardOptions contactCardOptions, Windows.ApplicationModel.Contacts.ContactCardDelayedDataLoader* return_dataLoader);
	HRESULT abi_ShowFullContactCard(Windows.ApplicationModel.Contacts.Contact contact, Windows.ApplicationModel.Contacts.FullContactCardOptions fullContactCardOptions);
	HRESULT get_SystemDisplayNameOrder(Windows.ApplicationModel.Contacts.ContactNameOrder* return_value);
	HRESULT set_SystemDisplayNameOrder(Windows.ApplicationModel.Contacts.ContactNameOrder value);
	HRESULT get_SystemSortOrder(Windows.ApplicationModel.Contacts.ContactNameOrder* return_value);
	HRESULT set_SystemSortOrder(Windows.ApplicationModel.Contacts.ContactNameOrder value);
}
@uuid("c4cc3d42-7586-492a-930b-7bc138fc2139")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactManager")
interface IContactManagerStatics3 : IContactManagerStatics3_Base, Windows.ApplicationModel.Contacts.IContactManagerStatics2, Windows.ApplicationModel.Contacts.IContactManagerStatics {}

@uuid("24982272-347b-46dc-8d95-51bd41e15aaf")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactManager")
interface IContactManagerStatics4 : IInspectable
{
extern(Windows):
	HRESULT abi_GetForUser(Windows.System.User user, Windows.ApplicationModel.Contacts.ContactManagerForUser* return_result);
}

@uuid("f7591a87-acb7-4fad-90f2-a8ab64cdbba4")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactManager")
interface IContactManagerStatics5 : IInspectable
{
extern(Windows):
	HRESULT abi_IsShowFullContactCardSupportedAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT get_IncludeMiddleNameInSystemDisplayAndSort(bool* return_value);
	HRESULT set_IncludeMiddleNameInSystemDisplayAndSort(bool value);
}

@uuid("bc922504-e7d8-413e-95f4-b75c54c74077")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactMatchReason")
interface IContactMatchReason : IInspectable
{
extern(Windows):
	HRESULT get_Field(Windows.ApplicationModel.Contacts.ContactMatchReasonKind* return_value);
	HRESULT get_Segments(Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextSegment)* return_value);
	HRESULT get_Text(HSTRING* return_value);
}

@uuid("f404e97b-9034-453c-8ebf-140a38c86f1d")
@WinrtFactory("Windows.ApplicationModel.Contacts.Contact")
interface IContactName : IInspectable
{
extern(Windows):
	HRESULT get_FirstName(HSTRING* return_value);
	HRESULT set_FirstName(HSTRING value);
	HRESULT get_LastName(HSTRING* return_value);
	HRESULT set_LastName(HSTRING value);
	HRESULT get_MiddleName(HSTRING* return_value);
	HRESULT set_MiddleName(HSTRING value);
	HRESULT get_YomiGivenName(HSTRING* return_value);
	HRESULT set_YomiGivenName(HSTRING value);
	HRESULT get_YomiFamilyName(HSTRING* return_value);
	HRESULT set_YomiFamilyName(HSTRING value);
	HRESULT get_HonorificNameSuffix(HSTRING* return_value);
	HRESULT set_HonorificNameSuffix(HSTRING value);
	HRESULT get_HonorificNamePrefix(HSTRING* return_value);
	HRESULT set_HonorificNamePrefix(HSTRING value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_YomiDisplayName(HSTRING* return_value);
}

@uuid("41bf1265-d2ee-4b97-a80a-7d8d64cca6f5")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactPanel")
interface IContactPanel : IInspectable
{
extern(Windows):
	HRESULT abi_ClosePanel();
	HRESULT get_HeaderColor(Windows.Foundation.IReference!(Windows.UI.Color)* return_value);
	HRESULT set_HeaderColor(Windows.Foundation.IReference!(Windows.UI.Color) value);
	HRESULT add_LaunchFullAppRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Contacts.ContactPanel, Windows.ApplicationModel.Contacts.ContactPanelLaunchFullAppRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_LaunchFullAppRequested(EventRegistrationToken token);
	HRESULT add_Closing(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Contacts.ContactPanel, Windows.ApplicationModel.Contacts.ContactPanelClosingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Closing(EventRegistrationToken token);
}

@uuid("222174d3-cf4b-46d7-b739-6edc16110bfb")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactPanelClosingEventArgs")
interface IContactPanelClosingEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_deferral);
}

@uuid("88d61c0e-23b4-4be8-8afc-072c25a4190d")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactPanelLaunchFullAppRequestedEventArgs")
interface IContactPanelLaunchFullAppRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("467dab65-2712-4f52-b783-9ea8111c63cd")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactPhone")
interface IContactPhone : IInspectable
{
extern(Windows):
	HRESULT get_Number(HSTRING* return_value);
	HRESULT set_Number(HSTRING value);
	HRESULT get_Kind(Windows.ApplicationModel.Contacts.ContactPhoneKind* return_value);
	HRESULT set_Kind(Windows.ApplicationModel.Contacts.ContactPhoneKind value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
}

@uuid("0e09fd91-42f8-4055-90a0-896f96738936")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactPicker")
interface IContactPicker : IInspectable
{
extern(Windows):
	HRESULT get_CommitButtonText(HSTRING* return_value);
	HRESULT set_CommitButtonText(HSTRING value);
	HRESULT get_SelectionMode(Windows.ApplicationModel.Contacts.ContactSelectionMode* return_value);
	HRESULT set_SelectionMode(Windows.ApplicationModel.Contacts.ContactSelectionMode value);
	HRESULT get_DesiredFields(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT abi_PickSingleContactAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactInformation)* return_result);
	HRESULT abi_PickMultipleContactsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactInformation))* return_result);
}

@uuid("b35011cf-5cef-4d24-aa0c-340c5208725d")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactPicker")
interface IContactPicker2 : IInspectable
{
extern(Windows):
	HRESULT get_DesiredFieldsWithContactFieldType(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactFieldType)* return_value);
	HRESULT abi_PickContactAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact)* return_result);
	HRESULT abi_PickContactsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.Contact))* return_result);
}

@uuid("0e723315-b243-4bed-8516-22b1a7ac0ace")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactPicker")
interface IContactPicker3 : IInspectable
{
extern(Windows):
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("7488c029-6a53-4258-a3e9-62dff6784b6c")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactPicker")
interface IContactPickerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateForUser(Windows.System.User user, Windows.ApplicationModel.Contacts.ContactPicker* return_result);
	HRESULT abi_IsSupportedAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
}

@uuid("4408cc9e-7d7c-42f0-8ac7-f50733ecdbc1")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactQueryOptions")
interface IContactQueryOptions : IInspectable
{
extern(Windows):
	HRESULT get_TextSearch(Windows.ApplicationModel.Contacts.ContactQueryTextSearch* return_value);
	HRESULT get_ContactListIds(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_IncludeContactsFromHiddenLists(bool* return_value);
	HRESULT set_IncludeContactsFromHiddenLists(bool value);
	HRESULT get_DesiredFields(Windows.ApplicationModel.Contacts.ContactQueryDesiredFields* return_value);
	HRESULT set_DesiredFields(Windows.ApplicationModel.Contacts.ContactQueryDesiredFields value);
	HRESULT get_DesiredOperations(Windows.ApplicationModel.Contacts.ContactAnnotationOperations* return_value);
	HRESULT set_DesiredOperations(Windows.ApplicationModel.Contacts.ContactAnnotationOperations value);
	HRESULT get_AnnotationListIds(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("543fba47-8ce7-46cb-9dac-9aa42a1bc8e2")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactQueryOptions")
interface IContactQueryOptionsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithText(HSTRING text, Windows.ApplicationModel.Contacts.ContactQueryOptions* return_result);
	HRESULT abi_CreateWithTextAndFields(HSTRING text, Windows.ApplicationModel.Contacts.ContactQuerySearchFields fields, Windows.ApplicationModel.Contacts.ContactQueryOptions* return_result);
}

@uuid("f7e3f9cb-a957-439b-a0b7-1c02a1963ff0")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactQueryTextSearch")
interface IContactQueryTextSearch : IInspectable
{
extern(Windows):
	HRESULT get_Fields(Windows.ApplicationModel.Contacts.ContactQuerySearchFields* return_value);
	HRESULT set_Fields(Windows.ApplicationModel.Contacts.ContactQuerySearchFields value);
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
	HRESULT get_SearchScope(Windows.ApplicationModel.Contacts.ContactQuerySearchScope* return_value);
	HRESULT set_SearchScope(Windows.ApplicationModel.Contacts.ContactQuerySearchScope value);
}

@uuid("d397e42e-1488-42f2-bf64-253f4884bfed")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactReader")
interface IContactReader : IInspectable
{
extern(Windows):
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactBatch)* return_value);
	HRESULT abi_GetMatchingPropertiesWithMatchReason(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactMatchReason)* return_ppRetVal);
}

@uuid("8873b5ab-c5fb-46d8-93fe-da3ff1934054")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactSignificantOther")
interface IContactSignificantOther : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
}

@uuid("8d7bd474-3f03-45f8-ba0f-c4ed37d64219")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactSignificantOther")
interface IContactSignificantOther2_Base : IInspectable
{
extern(Windows):
	HRESULT get_Relationship(Windows.ApplicationModel.Contacts.ContactRelationship* return_value);
	HRESULT set_Relationship(Windows.ApplicationModel.Contacts.ContactRelationship value);
}
@uuid("8d7bd474-3f03-45f8-ba0f-c4ed37d64219")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactSignificantOther")
interface IContactSignificantOther2 : IContactSignificantOther2_Base, Windows.ApplicationModel.Contacts.IContactSignificantOther {}

@uuid("2c220b10-3a6c-4293-b9bc-fe987f6e0d52")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactStore")
interface IContactStore : IInspectable
{
extern(Windows):
	HRESULT abi_FindContactsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.Contact))* return_contacts);
	HRESULT abi_FindContactsWithSearchTextAsync(HSTRING searchText, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.Contact))* return_contacts);
	HRESULT abi_GetContactAsync(HSTRING contactId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact)* return_contacts);
}

@uuid("18ce1c22-ebd5-4bfb-b690-5f4f27c4f0e8")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactStore")
interface IContactStore2_Base : IInspectable
{
extern(Windows):
	HRESULT get_ChangeTracker(Windows.ApplicationModel.Contacts.ContactChangeTracker* return_value);
	HRESULT add_ContactChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Contacts.ContactStore, Windows.ApplicationModel.Contacts.ContactChangedEventArgs) value, EventRegistrationToken* return_returnValue);
	HRESULT remove_ContactChanged(EventRegistrationToken value);
	HRESULT get_AggregateContactManager(Windows.ApplicationModel.Contacts.AggregateContactManager* return_value);
	HRESULT abi_FindContactListsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactList))* return_value);
	HRESULT abi_GetContactListAsync(HSTRING contactListId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactList)* return_value);
	HRESULT abi_CreateContactListAsync(HSTRING displayName, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactList)* return_value);
	HRESULT abi_GetMeContactAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact)* return_meContact);
	HRESULT abi_GetContactReader(Windows.ApplicationModel.Contacts.ContactReader* return_value);
	HRESULT abi_GetContactReaderWithOptions(Windows.ApplicationModel.Contacts.ContactQueryOptions options, Windows.ApplicationModel.Contacts.ContactReader* return_value);
	HRESULT abi_CreateContactListInAccountAsync(HSTRING displayName, HSTRING userDataAccountId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactList)* return_value);
}
@uuid("18ce1c22-ebd5-4bfb-b690-5f4f27c4f0e8")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactStore")
interface IContactStore2 : IContactStore2_Base, Windows.ApplicationModel.Contacts.IContactStore {}

@uuid("abb298d6-878a-4f8b-a9ce-46bb7d1c84ce")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactStoreNotificationTriggerDetails")
interface IContactStoreNotificationTriggerDetails : IInspectable
{
}

@uuid("9f130176-dc1b-4055-ad66-652f39d990e8")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactWebsite")
interface IContactWebsite : IInspectable
{
extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT set_Uri(Windows.Foundation.Uri value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
}

@uuid("f87ee91e-5647-4068-bb5e-4b6f437ce308")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactWebsite")
interface IContactWebsite2_Base : IInspectable
{
extern(Windows):
	HRESULT get_RawValue(HSTRING* return_value);
	HRESULT set_RawValue(HSTRING value);
}
@uuid("f87ee91e-5647-4068-bb5e-4b6f437ce308")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactWebsite")
interface IContactWebsite2 : IContactWebsite2_Base, Windows.ApplicationModel.Contacts.IContactWebsite {}

@uuid("8744436c-5cf9-4683-bdca-a1fdebf8dbce")
@WinrtFactory("Windows.ApplicationModel.Contacts.FullContactCardOptions")
interface IFullContactCardOptions : IInspectable
{
extern(Windows):
	HRESULT get_DesiredRemainingView(Windows.UI.ViewManagement.ViewSizePreference* return_value);
	HRESULT set_DesiredRemainingView(Windows.UI.ViewManagement.ViewSizePreference value);
}

@uuid("2e0e1b12-d627-4fca-bad4-1faf168c7d14")
@WinrtFactory("Windows.ApplicationModel.Contacts.KnownContactField")
interface IKnownContactFieldStatics : IInspectable
{
extern(Windows):
	deprecated("IKnownContactFieldStatics may be altered or unavailable for releases after Windows 8.1. Instead, use ContactAddress, ContactPhone, ContactConnectedServiceAccount or ContactEmail.")
	HRESULT get_Email(HSTRING* return_value);
	deprecated("IKnownContactFieldStatics may be altered or unavailable for releases after Windows 8.1. Instead, use ContactAddress, ContactPhone, ContactConnectedServiceAccount or ContactEmail.")
	HRESULT get_PhoneNumber(HSTRING* return_value);
	deprecated("IKnownContactFieldStatics may be altered or unavailable for releases after Windows 8.1. Instead, use ContactAddress, ContactPhone, ContactConnectedServiceAccount or ContactEmail.")
	HRESULT get_Location(HSTRING* return_value);
	deprecated("IKnownContactFieldStatics may be altered or unavailable for releases after Windows 8.1. Instead, use ContactAddress, ContactPhone, ContactConnectedServiceAccount or ContactEmail.")
	HRESULT get_InstantMessage(HSTRING* return_value);
	deprecated("IKnownContactFieldStatics may be altered or unavailable for releases after Windows 8.1. Instead, use ContactAddress, ContactPhone, ContactConnectedServiceAccount or ContactEmail.")
	HRESULT abi_ConvertNameToType(HSTRING name, Windows.ApplicationModel.Contacts.ContactFieldType* return_type);
	deprecated("IKnownContactFieldStatics may be altered or unavailable for releases after Windows 8.1. Instead, use ContactAddress, ContactPhone, ContactConnectedServiceAccount or ContactEmail.")
	HRESULT abi_ConvertTypeToName(Windows.ApplicationModel.Contacts.ContactFieldType type, HSTRING* return_name);
}

@uuid("7d9b2552-1579-4ddc-871f-a30a3aea9ba1")
@WinrtFactory("Windows.ApplicationModel.Contacts.PinnedContactIdsQueryResult")
interface IPinnedContactIdsQueryResult : IInspectable
{
extern(Windows):
	HRESULT get_ContactIds(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("fcbc740c-e1d6-45c3-b8b6-a35604e167a0")
@WinrtFactory("Windows.ApplicationModel.Contacts.PinnedContactManager")
interface IPinnedContactManager : IInspectable
{
extern(Windows):
	HRESULT get_User(Windows.System.User* return_user);
	HRESULT abi_IsPinSurfaceSupported(Windows.ApplicationModel.Contacts.PinnedContactSurface surface, bool* return_result);
	HRESULT abi_IsContactPinned(Windows.ApplicationModel.Contacts.Contact contact, Windows.ApplicationModel.Contacts.PinnedContactSurface surface, bool* return_result);
	HRESULT abi_RequestPinContactAsync(Windows.ApplicationModel.Contacts.Contact contact, Windows.ApplicationModel.Contacts.PinnedContactSurface surface, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestPinContactsAsync(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Contacts.Contact) contacts, Windows.ApplicationModel.Contacts.PinnedContactSurface surface, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestUnpinContactAsync(Windows.ApplicationModel.Contacts.Contact contact, Windows.ApplicationModel.Contacts.PinnedContactSurface surface, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_SignalContactActivity(Windows.ApplicationModel.Contacts.Contact contact);
	HRESULT abi_GetPinnedContactIdsAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.PinnedContactIdsQueryResult)* return_operation);
}

@uuid("f65ccc7e-fdf9-486a-ace9-bc311d0ae7f0")
@WinrtFactory("Windows.ApplicationModel.Contacts.PinnedContactManager")
interface IPinnedContactManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.ApplicationModel.Contacts.PinnedContactManager* return_result);
	HRESULT abi_GetForUser(Windows.System.User user, Windows.ApplicationModel.Contacts.PinnedContactManager* return_result);
	HRESULT abi_IsSupported(bool* return_result);
}

interface AggregateContactManager : Windows.ApplicationModel.Contacts.IAggregateContactManager, Windows.ApplicationModel.Contacts.IAggregateContactManager2
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.Contact)) FindRawContactsAsync(Windows.ApplicationModel.Contacts.Contact contact)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.Contact)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IAggregateContactManager).abi_FindRawContactsAsync(contact, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact) TryLinkContactsAsync(Windows.ApplicationModel.Contacts.Contact primaryContact, Windows.ApplicationModel.Contacts.Contact secondaryContact)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IAggregateContactManager).abi_TryLinkContactsAsync(primaryContact, secondaryContact, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction UnlinkRawContactAsync(Windows.ApplicationModel.Contacts.Contact contact)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IAggregateContactManager).abi_UnlinkRawContactAsync(contact, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TrySetPreferredSourceForPictureAsync(Windows.ApplicationModel.Contacts.Contact aggregateContact, Windows.ApplicationModel.Contacts.Contact rawContact)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IAggregateContactManager).abi_TrySetPreferredSourceForPictureAsync(aggregateContact, rawContact, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetRemoteIdentificationInformationAsync(HSTRING contactListId, HSTRING remoteSourceId, HSTRING accountId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IAggregateContactManager2).abi_SetRemoteIdentificationInformationAsync(contactListId, remoteSourceId, accountId, &_ret));
		return _ret;
	}
}

interface Contact : Windows.ApplicationModel.Contacts.IContact, Windows.ApplicationModel.Contacts.IContact2, Windows.ApplicationModel.Contacts.IContactName, Windows.ApplicationModel.Contacts.IContact3
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact).get_Name(&_ret));
		return _ret;
	}
	final void Name(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact).set_Name(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Thumbnail()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact).get_Thumbnail(&_ret));
		return _ret;
	}
	final void Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact).set_Thumbnail(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.IContactField) Fields()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.IContactField) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact).get_Fields(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact2).get_Id(&_ret));
		return _ret;
	}
	final void Id(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact2).set_Id(value));
	}
	final HSTRING Notes()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact2).get_Notes(&_ret));
		return _ret;
	}
	final void Notes(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact2).set_Notes(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactPhone) Phones()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactPhone) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact2).get_Phones(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactEmail) Emails()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactEmail) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact2).get_Emails(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactAddress) Addresses()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactAddress) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact2).get_Addresses(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactConnectedServiceAccount) ConnectedServiceAccounts()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactConnectedServiceAccount) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact2).get_ConnectedServiceAccounts(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactDate) ImportantDates()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactDate) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact2).get_ImportantDates(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) DataSuppliers()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact2).get_DataSuppliers(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactJobInfo) JobInfo()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactJobInfo) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact2).get_JobInfo(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactSignificantOther) SignificantOthers()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactSignificantOther) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact2).get_SignificantOthers(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactWebsite) Websites()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactWebsite) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact2).get_Websites(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IPropertySet ProviderProperties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact2).get_ProviderProperties(&_ret));
		return _ret;
	}
	final HSTRING FirstName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactName).get_FirstName(&_ret));
		return _ret;
	}
	final void FirstName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactName).set_FirstName(value));
	}
	final HSTRING LastName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactName).get_LastName(&_ret));
		return _ret;
	}
	final void LastName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactName).set_LastName(value));
	}
	final HSTRING MiddleName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactName).get_MiddleName(&_ret));
		return _ret;
	}
	final void MiddleName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactName).set_MiddleName(value));
	}
	final HSTRING YomiGivenName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactName).get_YomiGivenName(&_ret));
		return _ret;
	}
	final void YomiGivenName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactName).set_YomiGivenName(value));
	}
	final HSTRING YomiFamilyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactName).get_YomiFamilyName(&_ret));
		return _ret;
	}
	final void YomiFamilyName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactName).set_YomiFamilyName(value));
	}
	final HSTRING HonorificNameSuffix()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactName).get_HonorificNameSuffix(&_ret));
		return _ret;
	}
	final void HonorificNameSuffix(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactName).set_HonorificNameSuffix(value));
	}
	final HSTRING HonorificNamePrefix()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactName).get_HonorificNamePrefix(&_ret));
		return _ret;
	}
	final void HonorificNamePrefix(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactName).set_HonorificNamePrefix(value));
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactName).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING YomiDisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactName).get_YomiDisplayName(&_ret));
		return _ret;
	}
	final HSTRING ContactListId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).get_ContactListId(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime DisplayPictureUserUpdateTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).get_DisplayPictureUserUpdateTime(&_ret));
		return _ret;
	}
	final void DisplayPictureUserUpdateTime(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).set_DisplayPictureUserUpdateTime(value));
	}
	final bool IsMe()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).get_IsMe(&_ret));
		return _ret;
	}
	final HSTRING AggregateId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).get_AggregateId(&_ret));
		return _ret;
	}
	final HSTRING RemoteId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).get_RemoteId(&_ret));
		return _ret;
	}
	final void RemoteId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).set_RemoteId(value));
	}
	final HSTRING RingToneToken()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).get_RingToneToken(&_ret));
		return _ret;
	}
	final void RingToneToken(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).set_RingToneToken(value));
	}
	final bool IsDisplayPictureManuallySet()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).get_IsDisplayPictureManuallySet(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference LargeDisplayPicture()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).get_LargeDisplayPicture(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference SmallDisplayPicture()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).get_SmallDisplayPicture(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference SourceDisplayPicture()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).get_SourceDisplayPicture(&_ret));
		return _ret;
	}
	final void SourceDisplayPicture(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).set_SourceDisplayPicture(value));
	}
	final HSTRING TextToneToken()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).get_TextToneToken(&_ret));
		return _ret;
	}
	final void TextToneToken(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).set_TextToneToken(value));
	}
	final bool IsAggregate()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).get_IsAggregate(&_ret));
		return _ret;
	}
	final HSTRING FullName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).get_FullName(&_ret));
		return _ret;
	}
	final HSTRING DisplayNameOverride()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).get_DisplayNameOverride(&_ret));
		return _ret;
	}
	final void DisplayNameOverride(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).set_DisplayNameOverride(value));
	}
	final HSTRING Nickname()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).get_Nickname(&_ret));
		return _ret;
	}
	final void Nickname(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).set_Nickname(value));
	}
	final HSTRING SortName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContact3).get_SortName(&_ret));
		return _ret;
	}
}

interface ContactAddress : Windows.ApplicationModel.Contacts.IContactAddress
{
extern(Windows):
	final HSTRING StreetAddress()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAddress).get_StreetAddress(&_ret));
		return _ret;
	}
	final void StreetAddress(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAddress).set_StreetAddress(value));
	}
	final HSTRING Locality()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAddress).get_Locality(&_ret));
		return _ret;
	}
	final void Locality(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAddress).set_Locality(value));
	}
	final HSTRING Region()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAddress).get_Region(&_ret));
		return _ret;
	}
	final void Region(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAddress).set_Region(value));
	}
	final HSTRING Country()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAddress).get_Country(&_ret));
		return _ret;
	}
	final void Country(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAddress).set_Country(value));
	}
	final HSTRING PostalCode()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAddress).get_PostalCode(&_ret));
		return _ret;
	}
	final void PostalCode(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAddress).set_PostalCode(value));
	}
	final Windows.ApplicationModel.Contacts.ContactAddressKind Kind()
	{
		Windows.ApplicationModel.Contacts.ContactAddressKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAddress).get_Kind(&_ret));
		return _ret;
	}
	final void Kind(Windows.ApplicationModel.Contacts.ContactAddressKind value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAddress).set_Kind(value));
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAddress).get_Description(&_ret));
		return _ret;
	}
	final void Description(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAddress).set_Description(value));
	}
}

interface ContactAnnotation : Windows.ApplicationModel.Contacts.IContactAnnotation, Windows.ApplicationModel.Contacts.IContactAnnotation2
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotation).get_Id(&_ret));
		return _ret;
	}
	final HSTRING AnnotationListId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotation).get_AnnotationListId(&_ret));
		return _ret;
	}
	final HSTRING ContactId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotation).get_ContactId(&_ret));
		return _ret;
	}
	final void ContactId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotation).set_ContactId(value));
	}
	final HSTRING RemoteId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotation).get_RemoteId(&_ret));
		return _ret;
	}
	final void RemoteId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotation).set_RemoteId(value));
	}
	final Windows.ApplicationModel.Contacts.ContactAnnotationOperations SupportedOperations()
	{
		Windows.ApplicationModel.Contacts.ContactAnnotationOperations _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotation).get_SupportedOperations(&_ret));
		return _ret;
	}
	final void SupportedOperations(Windows.ApplicationModel.Contacts.ContactAnnotationOperations value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotation).set_SupportedOperations(value));
	}
	final bool IsDisabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotation).get_IsDisabled(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet ProviderProperties()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotation).get_ProviderProperties(&_ret));
		return _ret;
	}
	final HSTRING ContactListId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotation2).get_ContactListId(&_ret));
		return _ret;
	}
	final void ContactListId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotation2).set_ContactListId(value));
	}
}

interface ContactAnnotationList : Windows.ApplicationModel.Contacts.IContactAnnotationList
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationList).get_Id(&_ret));
		return _ret;
	}
	final HSTRING ProviderPackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationList).get_ProviderPackageFamilyName(&_ret));
		return _ret;
	}
	final HSTRING UserDataAccountId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationList).get_UserDataAccountId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationList).abi_DeleteAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TrySaveAnnotationAsync(Windows.ApplicationModel.Contacts.ContactAnnotation annotation)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationList).abi_TrySaveAnnotationAsync(annotation, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactAnnotation) GetAnnotationAsync(HSTRING annotationId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactAnnotation) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationList).abi_GetAnnotationAsync(annotationId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotation)) FindAnnotationsByRemoteIdAsync(HSTRING remoteId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotation)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationList).abi_FindAnnotationsByRemoteIdAsync(remoteId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotation)) FindAnnotationsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotation)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationList).abi_FindAnnotationsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAnnotationAsync(Windows.ApplicationModel.Contacts.ContactAnnotation annotation)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationList).abi_DeleteAnnotationAsync(annotation, &_ret));
		return _ret;
	}
}

interface ContactAnnotationStore : Windows.ApplicationModel.Contacts.IContactAnnotationStore, Windows.ApplicationModel.Contacts.IContactAnnotationStore2
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) FindContactIdsByEmailAsync(HSTRING emailAddress)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationStore).abi_FindContactIdsByEmailAsync(emailAddress, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) FindContactIdsByPhoneNumberAsync(HSTRING phoneNumber)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationStore).abi_FindContactIdsByPhoneNumberAsync(phoneNumber, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotation)) FindAnnotationsForContactAsync(Windows.ApplicationModel.Contacts.Contact contact)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotation)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationStore).abi_FindAnnotationsForContactAsync(contact, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DisableAnnotationAsync(Windows.ApplicationModel.Contacts.ContactAnnotation annotation)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationStore).abi_DisableAnnotationAsync(annotation, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactAnnotationList) CreateAnnotationListAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactAnnotationList) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationStore).abi_CreateAnnotationListAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactAnnotationList) CreateAnnotationListInAccountAsync(HSTRING userDataAccountId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactAnnotationList) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationStore).abi_CreateAnnotationListInAccountAsync(userDataAccountId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactAnnotationList) GetAnnotationListAsync(HSTRING annotationListId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactAnnotationList) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationStore).abi_GetAnnotationListAsync(annotationListId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotationList)) FindAnnotationListsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotationList)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationStore).abi_FindAnnotationListsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotation)) FindAnnotationsForContactListAsync(HSTRING contactListId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotation)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactAnnotationStore2).abi_FindAnnotationsForContactListAsync(contactListId, &_ret));
		return _ret;
	}
}

interface ContactBatch : Windows.ApplicationModel.Contacts.IContactBatch
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.Contact) Contacts()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.Contact) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactBatch).get_Contacts(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactBatchStatus Status()
	{
		Windows.ApplicationModel.Contacts.ContactBatchStatus _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactBatch).get_Status(&_ret));
		return _ret;
	}
}

interface ContactCardDelayedDataLoader : Windows.ApplicationModel.Contacts.IContactCardDelayedDataLoader, Windows.Foundation.IClosable
{
extern(Windows):
	final void SetData(Windows.ApplicationModel.Contacts.Contact contact)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactCardDelayedDataLoader).abi_SetData(contact));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface ContactCardOptions : Windows.ApplicationModel.Contacts.IContactCardOptions, Windows.ApplicationModel.Contacts.IContactCardOptions2
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.ContactCardHeaderKind HeaderKind()
	{
		Windows.ApplicationModel.Contacts.ContactCardHeaderKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactCardOptions).get_HeaderKind(&_ret));
		return _ret;
	}
	final void HeaderKind(Windows.ApplicationModel.Contacts.ContactCardHeaderKind value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactCardOptions).set_HeaderKind(value));
	}
	final Windows.ApplicationModel.Contacts.ContactCardTabKind InitialTabKind()
	{
		Windows.ApplicationModel.Contacts.ContactCardTabKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactCardOptions).get_InitialTabKind(&_ret));
		return _ret;
	}
	final void InitialTabKind(Windows.ApplicationModel.Contacts.ContactCardTabKind value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactCardOptions).set_InitialTabKind(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) ServerSearchContactListIds()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactCardOptions2).get_ServerSearchContactListIds(&_ret));
		return _ret;
	}
}

interface ContactChange : Windows.ApplicationModel.Contacts.IContactChange
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.ContactChangeType ChangeType()
	{
		Windows.ApplicationModel.Contacts.ContactChangeType _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactChange).get_ChangeType(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.Contact Contact()
	{
		Windows.ApplicationModel.Contacts.Contact _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactChange).get_Contact(&_ret));
		return _ret;
	}
}

interface ContactChangeReader : Windows.ApplicationModel.Contacts.IContactChangeReader
{
extern(Windows):
	final void AcceptChanges()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactChangeReader).abi_AcceptChanges());
	}
	final void AcceptChangesThrough(Windows.ApplicationModel.Contacts.ContactChange lastChangeToAccept)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactChangeReader).abi_AcceptChangesThrough(lastChangeToAccept));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactChange)) ReadBatchAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactChange)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactChangeReader).abi_ReadBatchAsync(&_ret));
		return _ret;
	}
}

interface ContactChangeTracker : Windows.ApplicationModel.Contacts.IContactChangeTracker
{
extern(Windows):
	final void Enable()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactChangeTracker).abi_Enable());
	}
	final Windows.ApplicationModel.Contacts.ContactChangeReader GetChangeReader()
	{
		Windows.ApplicationModel.Contacts.ContactChangeReader _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactChangeTracker).abi_GetChangeReader(&_ret));
		return _ret;
	}
	final void Reset()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactChangeTracker).abi_Reset());
	}
}

interface ContactChangedDeferral : Windows.ApplicationModel.Contacts.IContactChangedDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactChangedDeferral).abi_Complete());
	}
}

interface ContactChangedEventArgs : Windows.ApplicationModel.Contacts.IContactChangedEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.ContactChangedDeferral GetDeferral()
	{
		Windows.ApplicationModel.Contacts.ContactChangedDeferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactChangedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface ContactConnectedServiceAccount : Windows.ApplicationModel.Contacts.IContactConnectedServiceAccount
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactConnectedServiceAccount).get_Id(&_ret));
		return _ret;
	}
	final void Id(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactConnectedServiceAccount).set_Id(value));
	}
	final HSTRING ServiceName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactConnectedServiceAccount).get_ServiceName(&_ret));
		return _ret;
	}
	final void ServiceName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactConnectedServiceAccount).set_ServiceName(value));
	}
}

interface ContactDate : Windows.ApplicationModel.Contacts.IContactDate
{
extern(Windows):
	final Windows.Foundation.IReference!(UINT32) Day()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactDate).get_Day(&_ret));
		return _ret;
	}
	final void Day(Windows.Foundation.IReference!(UINT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactDate).set_Day(value));
	}
	final Windows.Foundation.IReference!(UINT32) Month()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactDate).get_Month(&_ret));
		return _ret;
	}
	final void Month(Windows.Foundation.IReference!(UINT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactDate).set_Month(value));
	}
	final Windows.Foundation.IReference!(INT32) Year()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactDate).get_Year(&_ret));
		return _ret;
	}
	final void Year(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactDate).set_Year(value));
	}
	final Windows.ApplicationModel.Contacts.ContactDateKind Kind()
	{
		Windows.ApplicationModel.Contacts.ContactDateKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactDate).get_Kind(&_ret));
		return _ret;
	}
	final void Kind(Windows.ApplicationModel.Contacts.ContactDateKind value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactDate).set_Kind(value));
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactDate).get_Description(&_ret));
		return _ret;
	}
	final void Description(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactDate).set_Description(value));
	}
}

interface ContactEmail : Windows.ApplicationModel.Contacts.IContactEmail
{
extern(Windows):
	final HSTRING Address()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactEmail).get_Address(&_ret));
		return _ret;
	}
	final void Address(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactEmail).set_Address(value));
	}
	final Windows.ApplicationModel.Contacts.ContactEmailKind Kind()
	{
		Windows.ApplicationModel.Contacts.ContactEmailKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactEmail).get_Kind(&_ret));
		return _ret;
	}
	final void Kind(Windows.ApplicationModel.Contacts.ContactEmailKind value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactEmail).set_Kind(value));
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactEmail).get_Description(&_ret));
		return _ret;
	}
	final void Description(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactEmail).set_Description(value));
	}
}

interface ContactField : Windows.ApplicationModel.Contacts.IContactField
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.ContactFieldType Type()
	{
		Windows.ApplicationModel.Contacts.ContactFieldType _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactField).get_Type(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactFieldCategory Category()
	{
		Windows.ApplicationModel.Contacts.ContactFieldCategory _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactField).get_Category(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactField).get_Name(&_ret));
		return _ret;
	}
	final HSTRING Value()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactField).get_Value(&_ret));
		return _ret;
	}
}

interface ContactFieldFactory : Windows.ApplicationModel.Contacts.IContactFieldFactory, Windows.ApplicationModel.Contacts.IContactLocationFieldFactory, Windows.ApplicationModel.Contacts.IContactInstantMessageFieldFactory
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.ContactField CreateField_Default(HSTRING value, Windows.ApplicationModel.Contacts.ContactFieldType type)
	{
		Windows.ApplicationModel.Contacts.ContactField _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactFieldFactory).abi_CreateField_Default(value, type, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactField CreateField_Category(HSTRING value, Windows.ApplicationModel.Contacts.ContactFieldType type, Windows.ApplicationModel.Contacts.ContactFieldCategory category)
	{
		Windows.ApplicationModel.Contacts.ContactField _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactFieldFactory).abi_CreateField_Category(value, type, category, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactField CreateField_Custom(HSTRING name, HSTRING value, Windows.ApplicationModel.Contacts.ContactFieldType type, Windows.ApplicationModel.Contacts.ContactFieldCategory category)
	{
		Windows.ApplicationModel.Contacts.ContactField _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactFieldFactory).abi_CreateField_Custom(name, value, type, category, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactLocationField CreateLocation_Default(HSTRING unstructuredAddress)
	{
		Windows.ApplicationModel.Contacts.ContactLocationField _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactLocationFieldFactory).abi_CreateLocation_Default(unstructuredAddress, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactLocationField CreateLocation_Category(HSTRING unstructuredAddress, Windows.ApplicationModel.Contacts.ContactFieldCategory category)
	{
		Windows.ApplicationModel.Contacts.ContactLocationField _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactLocationFieldFactory).abi_CreateLocation_Category(unstructuredAddress, category, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactLocationField CreateLocation_All(HSTRING unstructuredAddress, Windows.ApplicationModel.Contacts.ContactFieldCategory category, HSTRING street, HSTRING city, HSTRING region, HSTRING country, HSTRING postalCode)
	{
		Windows.ApplicationModel.Contacts.ContactLocationField _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactLocationFieldFactory).abi_CreateLocation_All(unstructuredAddress, category, street, city, region, country, postalCode, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactInstantMessageField CreateInstantMessage_Default(HSTRING userName)
	{
		Windows.ApplicationModel.Contacts.ContactInstantMessageField _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactInstantMessageFieldFactory).abi_CreateInstantMessage_Default(userName, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactInstantMessageField CreateInstantMessage_Category(HSTRING userName, Windows.ApplicationModel.Contacts.ContactFieldCategory category)
	{
		Windows.ApplicationModel.Contacts.ContactInstantMessageField _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactInstantMessageFieldFactory).abi_CreateInstantMessage_Category(userName, category, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactInstantMessageField CreateInstantMessage_All(HSTRING userName, Windows.ApplicationModel.Contacts.ContactFieldCategory category, HSTRING service, HSTRING displayText, Windows.Foundation.Uri verb)
	{
		Windows.ApplicationModel.Contacts.ContactInstantMessageField _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactInstantMessageFieldFactory).abi_CreateInstantMessage_All(userName, category, service, displayText, verb, &_ret));
		return _ret;
	}
}

interface ContactGroup : Windows.ApplicationModel.Contacts.IContactGroup
{
}

interface ContactInformation : Windows.ApplicationModel.Contacts.IContactInformation
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactInformation).get_Name(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) GetThumbnailAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactInformation).abi_GetThumbnailAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactField) Emails()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactField) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactInformation).get_Emails(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactField) PhoneNumbers()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactField) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactInformation).get_PhoneNumbers(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactLocationField) Locations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactLocationField) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactInformation).get_Locations(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactInstantMessageField) InstantMessages()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactInstantMessageField) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactInformation).get_InstantMessages(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactField) CustomFields()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactField) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactInformation).get_CustomFields(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactField) QueryCustomFields(HSTRING customName)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactField) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactInformation).abi_QueryCustomFields(customName, &_ret));
		return _ret;
	}
}

interface ContactInstantMessageField : Windows.ApplicationModel.Contacts.IContactInstantMessageField, Windows.ApplicationModel.Contacts.IContactField
{
extern(Windows):
	final HSTRING UserName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactInstantMessageField).get_UserName(&_ret));
		return _ret;
	}
	final HSTRING Service()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactInstantMessageField).get_Service(&_ret));
		return _ret;
	}
	final HSTRING DisplayText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactInstantMessageField).get_DisplayText(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri LaunchUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactInstantMessageField).get_LaunchUri(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactFieldType Type()
	{
		Windows.ApplicationModel.Contacts.ContactFieldType _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactField).get_Type(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactFieldCategory Category()
	{
		Windows.ApplicationModel.Contacts.ContactFieldCategory _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactField).get_Category(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactField).get_Name(&_ret));
		return _ret;
	}
	final HSTRING Value()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactField).get_Value(&_ret));
		return _ret;
	}
}

interface ContactJobInfo : Windows.ApplicationModel.Contacts.IContactJobInfo
{
extern(Windows):
	final HSTRING CompanyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactJobInfo).get_CompanyName(&_ret));
		return _ret;
	}
	final void CompanyName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactJobInfo).set_CompanyName(value));
	}
	final HSTRING CompanyYomiName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactJobInfo).get_CompanyYomiName(&_ret));
		return _ret;
	}
	final void CompanyYomiName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactJobInfo).set_CompanyYomiName(value));
	}
	final HSTRING Department()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactJobInfo).get_Department(&_ret));
		return _ret;
	}
	final void Department(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactJobInfo).set_Department(value));
	}
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactJobInfo).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactJobInfo).set_Title(value));
	}
	final HSTRING Manager()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactJobInfo).get_Manager(&_ret));
		return _ret;
	}
	final void Manager(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactJobInfo).set_Manager(value));
	}
	final HSTRING Office()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactJobInfo).get_Office(&_ret));
		return _ret;
	}
	final void Office(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactJobInfo).set_Office(value));
	}
	final HSTRING CompanyAddress()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactJobInfo).get_CompanyAddress(&_ret));
		return _ret;
	}
	final void CompanyAddress(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactJobInfo).set_CompanyAddress(value));
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactJobInfo).get_Description(&_ret));
		return _ret;
	}
	final void Description(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactJobInfo).set_Description(value));
	}
}

interface ContactLaunchActionVerbs
{
}

interface ContactList : Windows.ApplicationModel.Contacts.IContactList, Windows.ApplicationModel.Contacts.IContactList2
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).get_Id(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).get_DisplayName(&_ret));
		return _ret;
	}
	final void DisplayName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).set_DisplayName(value));
	}
	final HSTRING SourceDisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).get_SourceDisplayName(&_ret));
		return _ret;
	}
	final bool IsHidden()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).get_IsHidden(&_ret));
		return _ret;
	}
	final void IsHidden(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).set_IsHidden(value));
	}
	final Windows.ApplicationModel.Contacts.ContactListOtherAppReadAccess OtherAppReadAccess()
	{
		Windows.ApplicationModel.Contacts.ContactListOtherAppReadAccess _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).get_OtherAppReadAccess(&_ret));
		return _ret;
	}
	final void OtherAppReadAccess(Windows.ApplicationModel.Contacts.ContactListOtherAppReadAccess value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).set_OtherAppReadAccess(value));
	}
	final Windows.ApplicationModel.Contacts.ContactListOtherAppWriteAccess OtherAppWriteAccess()
	{
		Windows.ApplicationModel.Contacts.ContactListOtherAppWriteAccess _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).get_OtherAppWriteAccess(&_ret));
		return _ret;
	}
	final void OtherAppWriteAccess(Windows.ApplicationModel.Contacts.ContactListOtherAppWriteAccess value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).set_OtherAppWriteAccess(value));
	}
	final Windows.ApplicationModel.Contacts.ContactChangeTracker ChangeTracker()
	{
		Windows.ApplicationModel.Contacts.ContactChangeTracker _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).get_ChangeTracker(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactListSyncManager SyncManager()
	{
		Windows.ApplicationModel.Contacts.ContactListSyncManager _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).get_SyncManager(&_ret));
		return _ret;
	}
	final bool SupportsServerSearch()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).get_SupportsServerSearch(&_ret));
		return _ret;
	}
	final HSTRING UserDataAccountId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).get_UserDataAccountId(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnContactChanged(void delegate(Windows.ApplicationModel.Contacts.ContactList, Windows.ApplicationModel.Contacts.ContactChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ContactChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Contacts.ContactList, Windows.ApplicationModel.Contacts.ContactChangedEventArgs), Windows.ApplicationModel.Contacts.ContactList, Windows.ApplicationModel.Contacts.ContactChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeContactChanged(EventRegistrationToken value)
	{
		Debug.OK(remove_ContactChanged(value));
	}
	final Windows.Foundation.IAsyncAction SaveAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).abi_SaveAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).abi_DeleteAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact) GetContactFromRemoteIdAsync(HSTRING remoteId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).abi_GetContactFromRemoteIdAsync(remoteId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact) GetMeContactAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).abi_GetMeContactAsync(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactReader GetContactReader()
	{
		Windows.ApplicationModel.Contacts.ContactReader _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).abi_GetContactReader(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactReader GetContactReaderWithOptions(Windows.ApplicationModel.Contacts.ContactQueryOptions options)
	{
		Windows.ApplicationModel.Contacts.ContactReader _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).abi_GetContactReaderWithOptions(options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SaveContactAsync(Windows.ApplicationModel.Contacts.Contact contact)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).abi_SaveContactAsync(contact, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteContactAsync(Windows.ApplicationModel.Contacts.Contact contact)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).abi_DeleteContactAsync(contact, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact) GetContactAsync(HSTRING contactId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList).abi_GetContactAsync(contactId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction RegisterSyncManagerAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList2).abi_RegisterSyncManagerAsync(&_ret));
		return _ret;
	}
	final void SupportsServerSearch(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList2).set_SupportsServerSearch(value));
	}
	final Windows.ApplicationModel.Contacts.ContactListSyncConstraints SyncConstraints()
	{
		Windows.ApplicationModel.Contacts.ContactListSyncConstraints _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactList2).get_SyncConstraints(&_ret));
		return _ret;
	}
}

interface ContactListSyncConstraints : Windows.ApplicationModel.Contacts.IContactListSyncConstraints
{
extern(Windows):
	final bool CanSyncDescriptions()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_CanSyncDescriptions(&_ret));
		return _ret;
	}
	final void CanSyncDescriptions(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_CanSyncDescriptions(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxHomePhoneNumbers()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxHomePhoneNumbers(&_ret));
		return _ret;
	}
	final void MaxHomePhoneNumbers(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxHomePhoneNumbers(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxMobilePhoneNumbers()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxMobilePhoneNumbers(&_ret));
		return _ret;
	}
	final void MaxMobilePhoneNumbers(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxMobilePhoneNumbers(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxWorkPhoneNumbers()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxWorkPhoneNumbers(&_ret));
		return _ret;
	}
	final void MaxWorkPhoneNumbers(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxWorkPhoneNumbers(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxOtherPhoneNumbers()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxOtherPhoneNumbers(&_ret));
		return _ret;
	}
	final void MaxOtherPhoneNumbers(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxOtherPhoneNumbers(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxPagerPhoneNumbers()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxPagerPhoneNumbers(&_ret));
		return _ret;
	}
	final void MaxPagerPhoneNumbers(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxPagerPhoneNumbers(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxBusinessFaxPhoneNumbers()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxBusinessFaxPhoneNumbers(&_ret));
		return _ret;
	}
	final void MaxBusinessFaxPhoneNumbers(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxBusinessFaxPhoneNumbers(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxHomeFaxPhoneNumbers()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxHomeFaxPhoneNumbers(&_ret));
		return _ret;
	}
	final void MaxHomeFaxPhoneNumbers(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxHomeFaxPhoneNumbers(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxCompanyPhoneNumbers()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxCompanyPhoneNumbers(&_ret));
		return _ret;
	}
	final void MaxCompanyPhoneNumbers(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxCompanyPhoneNumbers(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxAssistantPhoneNumbers()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxAssistantPhoneNumbers(&_ret));
		return _ret;
	}
	final void MaxAssistantPhoneNumbers(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxAssistantPhoneNumbers(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxRadioPhoneNumbers()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxRadioPhoneNumbers(&_ret));
		return _ret;
	}
	final void MaxRadioPhoneNumbers(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxRadioPhoneNumbers(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxPersonalEmailAddresses()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxPersonalEmailAddresses(&_ret));
		return _ret;
	}
	final void MaxPersonalEmailAddresses(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxPersonalEmailAddresses(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxWorkEmailAddresses()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxWorkEmailAddresses(&_ret));
		return _ret;
	}
	final void MaxWorkEmailAddresses(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxWorkEmailAddresses(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxOtherEmailAddresses()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxOtherEmailAddresses(&_ret));
		return _ret;
	}
	final void MaxOtherEmailAddresses(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxOtherEmailAddresses(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxHomeAddresses()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxHomeAddresses(&_ret));
		return _ret;
	}
	final void MaxHomeAddresses(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxHomeAddresses(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxWorkAddresses()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxWorkAddresses(&_ret));
		return _ret;
	}
	final void MaxWorkAddresses(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxWorkAddresses(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxOtherAddresses()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxOtherAddresses(&_ret));
		return _ret;
	}
	final void MaxOtherAddresses(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxOtherAddresses(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxBirthdayDates()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxBirthdayDates(&_ret));
		return _ret;
	}
	final void MaxBirthdayDates(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxBirthdayDates(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxAnniversaryDates()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxAnniversaryDates(&_ret));
		return _ret;
	}
	final void MaxAnniversaryDates(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxAnniversaryDates(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxOtherDates()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxOtherDates(&_ret));
		return _ret;
	}
	final void MaxOtherDates(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxOtherDates(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxOtherRelationships()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxOtherRelationships(&_ret));
		return _ret;
	}
	final void MaxOtherRelationships(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxOtherRelationships(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxSpouseRelationships()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxSpouseRelationships(&_ret));
		return _ret;
	}
	final void MaxSpouseRelationships(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxSpouseRelationships(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxPartnerRelationships()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxPartnerRelationships(&_ret));
		return _ret;
	}
	final void MaxPartnerRelationships(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxPartnerRelationships(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxSiblingRelationships()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxSiblingRelationships(&_ret));
		return _ret;
	}
	final void MaxSiblingRelationships(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxSiblingRelationships(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxParentRelationships()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxParentRelationships(&_ret));
		return _ret;
	}
	final void MaxParentRelationships(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxParentRelationships(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxChildRelationships()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxChildRelationships(&_ret));
		return _ret;
	}
	final void MaxChildRelationships(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxChildRelationships(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxJobInfo()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxJobInfo(&_ret));
		return _ret;
	}
	final void MaxJobInfo(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxJobInfo(value));
	}
	final Windows.Foundation.IReference!(INT32) MaxWebsites()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).get_MaxWebsites(&_ret));
		return _ret;
	}
	final void MaxWebsites(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncConstraints).set_MaxWebsites(value));
	}
}

interface ContactListSyncManager : Windows.ApplicationModel.Contacts.IContactListSyncManager, Windows.ApplicationModel.Contacts.IContactListSyncManager2
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.ContactListSyncStatus Status()
	{
		Windows.ApplicationModel.Contacts.ContactListSyncStatus _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncManager).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime LastSuccessfulSyncTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncManager).get_LastSuccessfulSyncTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime LastAttemptedSyncTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncManager).get_LastAttemptedSyncTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) SyncAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncManager).abi_SyncAsync(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnSyncStatusChanged(void delegate(Windows.ApplicationModel.Contacts.ContactListSyncManager, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SyncStatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Contacts.ContactListSyncManager, IInspectable), Windows.ApplicationModel.Contacts.ContactListSyncManager, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeSyncStatusChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_SyncStatusChanged(token));
	}
	final void Status(Windows.ApplicationModel.Contacts.ContactListSyncStatus value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncManager2).set_Status(value));
	}
	final void LastSuccessfulSyncTime(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncManager2).set_LastSuccessfulSyncTime(value));
	}
	final void LastAttemptedSyncTime(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactListSyncManager2).set_LastAttemptedSyncTime(value));
	}
}

interface ContactLocationField : Windows.ApplicationModel.Contacts.IContactLocationField, Windows.ApplicationModel.Contacts.IContactField
{
extern(Windows):
	final HSTRING UnstructuredAddress()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactLocationField).get_UnstructuredAddress(&_ret));
		return _ret;
	}
	final HSTRING Street()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactLocationField).get_Street(&_ret));
		return _ret;
	}
	final HSTRING City()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactLocationField).get_City(&_ret));
		return _ret;
	}
	final HSTRING Region()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactLocationField).get_Region(&_ret));
		return _ret;
	}
	final HSTRING Country()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactLocationField).get_Country(&_ret));
		return _ret;
	}
	final HSTRING PostalCode()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactLocationField).get_PostalCode(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactFieldType Type()
	{
		Windows.ApplicationModel.Contacts.ContactFieldType _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactField).get_Type(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactFieldCategory Category()
	{
		Windows.ApplicationModel.Contacts.ContactFieldCategory _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactField).get_Category(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactField).get_Name(&_ret));
		return _ret;
	}
	final HSTRING Value()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactField).get_Value(&_ret));
		return _ret;
	}
}

interface ContactManager
{
}

interface ContactManagerForUser : Windows.ApplicationModel.Contacts.IContactManagerForUser, Windows.ApplicationModel.Contacts.IContactManagerForUser2
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.RandomAccessStreamReference) ConvertContactToVCardAsync(Windows.ApplicationModel.Contacts.Contact contact)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.RandomAccessStreamReference) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactManagerForUser).abi_ConvertContactToVCardAsync(contact, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.RandomAccessStreamReference) ConvertContactToVCardAsyncWithMaxBytes(Windows.ApplicationModel.Contacts.Contact contact, UINT32 maxBytes)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.RandomAccessStreamReference) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactManagerForUser).abi_ConvertContactToVCardAsyncWithMaxBytes(contact, maxBytes, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact) ConvertVCardToContactAsync(Windows.Storage.Streams.IRandomAccessStreamReference vCard)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactManagerForUser).abi_ConvertVCardToContactAsync(vCard, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactStore) RequestStoreAsync(Windows.ApplicationModel.Contacts.ContactStoreAccessType accessType)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactStore) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactManagerForUser).abi_RequestStoreAsync(accessType, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactAnnotationStore) RequestAnnotationStoreAsync(Windows.ApplicationModel.Contacts.ContactAnnotationStoreAccessType accessType)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactAnnotationStore) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactManagerForUser).abi_RequestAnnotationStoreAsync(accessType, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactNameOrder SystemDisplayNameOrder()
	{
		Windows.ApplicationModel.Contacts.ContactNameOrder _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactManagerForUser).get_SystemDisplayNameOrder(&_ret));
		return _ret;
	}
	final void SystemDisplayNameOrder(Windows.ApplicationModel.Contacts.ContactNameOrder value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactManagerForUser).set_SystemDisplayNameOrder(value));
	}
	final Windows.ApplicationModel.Contacts.ContactNameOrder SystemSortOrder()
	{
		Windows.ApplicationModel.Contacts.ContactNameOrder _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactManagerForUser).get_SystemSortOrder(&_ret));
		return _ret;
	}
	final void SystemSortOrder(Windows.ApplicationModel.Contacts.ContactNameOrder value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactManagerForUser).set_SystemSortOrder(value));
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactManagerForUser).get_User(&_ret));
		return _ret;
	}
	final void ShowFullContactCard(Windows.ApplicationModel.Contacts.Contact contact, Windows.ApplicationModel.Contacts.FullContactCardOptions fullContactCardOptions)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactManagerForUser2).abi_ShowFullContactCard(contact, fullContactCardOptions));
	}
}

interface ContactMatchReason : Windows.ApplicationModel.Contacts.IContactMatchReason
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.ContactMatchReasonKind Field()
	{
		Windows.ApplicationModel.Contacts.ContactMatchReasonKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactMatchReason).get_Field(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextSegment) Segments()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextSegment) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactMatchReason).get_Segments(&_ret));
		return _ret;
	}
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactMatchReason).get_Text(&_ret));
		return _ret;
	}
}

interface ContactPanel : Windows.ApplicationModel.Contacts.IContactPanel
{
extern(Windows):
	final void ClosePanel()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPanel).abi_ClosePanel());
	}
	final Windows.Foundation.IReference!(Windows.UI.Color) HeaderColor()
	{
		Windows.Foundation.IReference!(Windows.UI.Color) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPanel).get_HeaderColor(&_ret));
		return _ret;
	}
	final void HeaderColor(Windows.Foundation.IReference!(Windows.UI.Color) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPanel).set_HeaderColor(value));
	}
	final EventRegistrationToken OnLaunchFullAppRequested(void delegate(Windows.ApplicationModel.Contacts.ContactPanel, Windows.ApplicationModel.Contacts.ContactPanelLaunchFullAppRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_LaunchFullAppRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Contacts.ContactPanel, Windows.ApplicationModel.Contacts.ContactPanelLaunchFullAppRequestedEventArgs), Windows.ApplicationModel.Contacts.ContactPanel, Windows.ApplicationModel.Contacts.ContactPanelLaunchFullAppRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeLaunchFullAppRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_LaunchFullAppRequested(token));
	}
	final EventRegistrationToken OnClosing(void delegate(Windows.ApplicationModel.Contacts.ContactPanel, Windows.ApplicationModel.Contacts.ContactPanelClosingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Closing(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Contacts.ContactPanel, Windows.ApplicationModel.Contacts.ContactPanelClosingEventArgs), Windows.ApplicationModel.Contacts.ContactPanel, Windows.ApplicationModel.Contacts.ContactPanelClosingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeClosing(EventRegistrationToken token)
	{
		Debug.OK(remove_Closing(token));
	}
}

interface ContactPanelClosingEventArgs : Windows.ApplicationModel.Contacts.IContactPanelClosingEventArgs
{
extern(Windows):
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPanelClosingEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface ContactPanelLaunchFullAppRequestedEventArgs : Windows.ApplicationModel.Contacts.IContactPanelLaunchFullAppRequestedEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPanelLaunchFullAppRequestedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPanelLaunchFullAppRequestedEventArgs).set_Handled(value));
	}
}

interface ContactPhone : Windows.ApplicationModel.Contacts.IContactPhone
{
extern(Windows):
	final HSTRING Number()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPhone).get_Number(&_ret));
		return _ret;
	}
	final void Number(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPhone).set_Number(value));
	}
	final Windows.ApplicationModel.Contacts.ContactPhoneKind Kind()
	{
		Windows.ApplicationModel.Contacts.ContactPhoneKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPhone).get_Kind(&_ret));
		return _ret;
	}
	final void Kind(Windows.ApplicationModel.Contacts.ContactPhoneKind value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPhone).set_Kind(value));
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPhone).get_Description(&_ret));
		return _ret;
	}
	final void Description(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPhone).set_Description(value));
	}
}

interface ContactPicker : Windows.ApplicationModel.Contacts.IContactPicker, Windows.ApplicationModel.Contacts.IContactPicker2, Windows.ApplicationModel.Contacts.IContactPicker3
{
extern(Windows):
	final HSTRING CommitButtonText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPicker).get_CommitButtonText(&_ret));
		return _ret;
	}
	final void CommitButtonText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPicker).set_CommitButtonText(value));
	}
	final Windows.ApplicationModel.Contacts.ContactSelectionMode SelectionMode()
	{
		Windows.ApplicationModel.Contacts.ContactSelectionMode _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPicker).get_SelectionMode(&_ret));
		return _ret;
	}
	final void SelectionMode(Windows.ApplicationModel.Contacts.ContactSelectionMode value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPicker).set_SelectionMode(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) DesiredFields()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPicker).get_DesiredFields(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactInformation) PickSingleContactAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactInformation) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPicker).abi_PickSingleContactAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactInformation)) PickMultipleContactsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactInformation)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPicker).abi_PickMultipleContactsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactFieldType) DesiredFieldsWithContactFieldType()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactFieldType) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPicker2).get_DesiredFieldsWithContactFieldType(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact) PickContactAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPicker2).abi_PickContactAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.Contact)) PickContactsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.Contact)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPicker2).abi_PickContactsAsync(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactPicker3).get_User(&_ret));
		return _ret;
	}
}

interface ContactQueryOptions : Windows.ApplicationModel.Contacts.IContactQueryOptions
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.ContactQueryTextSearch TextSearch()
	{
		Windows.ApplicationModel.Contacts.ContactQueryTextSearch _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactQueryOptions).get_TextSearch(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) ContactListIds()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactQueryOptions).get_ContactListIds(&_ret));
		return _ret;
	}
	final bool IncludeContactsFromHiddenLists()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactQueryOptions).get_IncludeContactsFromHiddenLists(&_ret));
		return _ret;
	}
	final void IncludeContactsFromHiddenLists(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactQueryOptions).set_IncludeContactsFromHiddenLists(value));
	}
	final Windows.ApplicationModel.Contacts.ContactQueryDesiredFields DesiredFields()
	{
		Windows.ApplicationModel.Contacts.ContactQueryDesiredFields _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactQueryOptions).get_DesiredFields(&_ret));
		return _ret;
	}
	final void DesiredFields(Windows.ApplicationModel.Contacts.ContactQueryDesiredFields value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactQueryOptions).set_DesiredFields(value));
	}
	final Windows.ApplicationModel.Contacts.ContactAnnotationOperations DesiredOperations()
	{
		Windows.ApplicationModel.Contacts.ContactAnnotationOperations _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactQueryOptions).get_DesiredOperations(&_ret));
		return _ret;
	}
	final void DesiredOperations(Windows.ApplicationModel.Contacts.ContactAnnotationOperations value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactQueryOptions).set_DesiredOperations(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) AnnotationListIds()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactQueryOptions).get_AnnotationListIds(&_ret));
		return _ret;
	}
}

interface ContactQueryTextSearch : Windows.ApplicationModel.Contacts.IContactQueryTextSearch
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.ContactQuerySearchFields Fields()
	{
		Windows.ApplicationModel.Contacts.ContactQuerySearchFields _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactQueryTextSearch).get_Fields(&_ret));
		return _ret;
	}
	final void Fields(Windows.ApplicationModel.Contacts.ContactQuerySearchFields value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactQueryTextSearch).set_Fields(value));
	}
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactQueryTextSearch).get_Text(&_ret));
		return _ret;
	}
	final void Text(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactQueryTextSearch).set_Text(value));
	}
	final Windows.ApplicationModel.Contacts.ContactQuerySearchScope SearchScope()
	{
		Windows.ApplicationModel.Contacts.ContactQuerySearchScope _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactQueryTextSearch).get_SearchScope(&_ret));
		return _ret;
	}
	final void SearchScope(Windows.ApplicationModel.Contacts.ContactQuerySearchScope value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactQueryTextSearch).set_SearchScope(value));
	}
}

interface ContactReader : Windows.ApplicationModel.Contacts.IContactReader
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactBatch) ReadBatchAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactBatch) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactReader).abi_ReadBatchAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactMatchReason) GetMatchingPropertiesWithMatchReason(Windows.ApplicationModel.Contacts.Contact contact)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactMatchReason) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactReader).abi_GetMatchingPropertiesWithMatchReason(contact, &_ret));
		return _ret;
	}
}

interface ContactSignificantOther : Windows.ApplicationModel.Contacts.IContactSignificantOther, Windows.ApplicationModel.Contacts.IContactSignificantOther2
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactSignificantOther).get_Name(&_ret));
		return _ret;
	}
	final void Name(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactSignificantOther).set_Name(value));
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactSignificantOther).get_Description(&_ret));
		return _ret;
	}
	final void Description(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactSignificantOther).set_Description(value));
	}
	final Windows.ApplicationModel.Contacts.ContactRelationship Relationship()
	{
		Windows.ApplicationModel.Contacts.ContactRelationship _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactSignificantOther2).get_Relationship(&_ret));
		return _ret;
	}
	final void Relationship(Windows.ApplicationModel.Contacts.ContactRelationship value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactSignificantOther2).set_Relationship(value));
	}
}

interface ContactStore : Windows.ApplicationModel.Contacts.IContactStore, Windows.ApplicationModel.Contacts.IContactStore2
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.Contact)) FindContactsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.Contact)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactStore).abi_FindContactsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.Contact)) FindContactsWithSearchTextAsync(HSTRING searchText)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.Contact)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactStore).abi_FindContactsWithSearchTextAsync(searchText, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact) GetContactAsync(HSTRING contactId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactStore).abi_GetContactAsync(contactId, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactChangeTracker ChangeTracker()
	{
		Windows.ApplicationModel.Contacts.ContactChangeTracker _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactStore2).get_ChangeTracker(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnContactChanged(void delegate(Windows.ApplicationModel.Contacts.ContactStore, Windows.ApplicationModel.Contacts.ContactChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ContactChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Contacts.ContactStore, Windows.ApplicationModel.Contacts.ContactChangedEventArgs), Windows.ApplicationModel.Contacts.ContactStore, Windows.ApplicationModel.Contacts.ContactChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeContactChanged(EventRegistrationToken value)
	{
		Debug.OK(remove_ContactChanged(value));
	}
	final Windows.ApplicationModel.Contacts.AggregateContactManager AggregateContactManager()
	{
		Windows.ApplicationModel.Contacts.AggregateContactManager _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactStore2).get_AggregateContactManager(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactList)) FindContactListsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactList)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactStore2).abi_FindContactListsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactList) GetContactListAsync(HSTRING contactListId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactList) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactStore2).abi_GetContactListAsync(contactListId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactList) CreateContactListAsync(HSTRING displayName)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactList) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactStore2).abi_CreateContactListAsync(displayName, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact) GetMeContactAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactStore2).abi_GetMeContactAsync(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactReader GetContactReader()
	{
		Windows.ApplicationModel.Contacts.ContactReader _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactStore2).abi_GetContactReader(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.ContactReader GetContactReaderWithOptions(Windows.ApplicationModel.Contacts.ContactQueryOptions options)
	{
		Windows.ApplicationModel.Contacts.ContactReader _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactStore2).abi_GetContactReaderWithOptions(options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactList) CreateContactListInAccountAsync(HSTRING displayName, HSTRING userDataAccountId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactList) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactStore2).abi_CreateContactListInAccountAsync(displayName, userDataAccountId, &_ret));
		return _ret;
	}
}

interface ContactStoreNotificationTriggerDetails : Windows.ApplicationModel.Contacts.IContactStoreNotificationTriggerDetails
{
}

interface ContactWebsite : Windows.ApplicationModel.Contacts.IContactWebsite, Windows.ApplicationModel.Contacts.IContactWebsite2
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactWebsite).get_Uri(&_ret));
		return _ret;
	}
	final void Uri(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactWebsite).set_Uri(value));
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactWebsite).get_Description(&_ret));
		return _ret;
	}
	final void Description(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactWebsite).set_Description(value));
	}
	final HSTRING RawValue()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactWebsite2).get_RawValue(&_ret));
		return _ret;
	}
	final void RawValue(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IContactWebsite2).set_RawValue(value));
	}
}

interface FullContactCardOptions : Windows.ApplicationModel.Contacts.IFullContactCardOptions
{
extern(Windows):
	final Windows.UI.ViewManagement.ViewSizePreference DesiredRemainingView()
	{
		Windows.UI.ViewManagement.ViewSizePreference _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IFullContactCardOptions).get_DesiredRemainingView(&_ret));
		return _ret;
	}
	final void DesiredRemainingView(Windows.UI.ViewManagement.ViewSizePreference value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IFullContactCardOptions).set_DesiredRemainingView(value));
	}
}

interface KnownContactField
{
}

interface PinnedContactIdsQueryResult : Windows.ApplicationModel.Contacts.IPinnedContactIdsQueryResult
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(HSTRING) ContactIds()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IPinnedContactIdsQueryResult).get_ContactIds(&_ret));
		return _ret;
	}
}

interface PinnedContactManager : Windows.ApplicationModel.Contacts.IPinnedContactManager
{
extern(Windows):
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IPinnedContactManager).get_User(&_ret));
		return _ret;
	}
	final bool IsPinSurfaceSupported(Windows.ApplicationModel.Contacts.PinnedContactSurface surface)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IPinnedContactManager).abi_IsPinSurfaceSupported(surface, &_ret));
		return _ret;
	}
	final bool IsContactPinned(Windows.ApplicationModel.Contacts.Contact contact, Windows.ApplicationModel.Contacts.PinnedContactSurface surface)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IPinnedContactManager).abi_IsContactPinned(contact, surface, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestPinContactAsync(Windows.ApplicationModel.Contacts.Contact contact, Windows.ApplicationModel.Contacts.PinnedContactSurface surface)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IPinnedContactManager).abi_RequestPinContactAsync(contact, surface, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestPinContactsAsync(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Contacts.Contact) contacts, Windows.ApplicationModel.Contacts.PinnedContactSurface surface)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IPinnedContactManager).abi_RequestPinContactsAsync(contacts, surface, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestUnpinContactAsync(Windows.ApplicationModel.Contacts.Contact contact, Windows.ApplicationModel.Contacts.PinnedContactSurface surface)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IPinnedContactManager).abi_RequestUnpinContactAsync(contact, surface, &_ret));
		return _ret;
	}
	final void SignalContactActivity(Windows.ApplicationModel.Contacts.Contact contact)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IPinnedContactManager).abi_SignalContactActivity(contact));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.PinnedContactIdsQueryResult) GetPinnedContactIdsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.PinnedContactIdsQueryResult) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Contacts.IPinnedContactManager).abi_GetPinnedContactIdsAsync(&_ret));
		return _ret;
	}
}

enum ContactAddressKind
{
	Home = 0,
	Work = 1,
	Other = 2
}

@bitflags
enum ContactAnnotationOperations
{
	None = 0x0,
	ContactProfile = 0x1,
	Message = 0x2,
	AudioCall = 0x4,
	VideoCall = 0x8,
	SocialFeeds = 0x10,
	Share = 0x20
}

enum ContactAnnotationStoreAccessType
{
	AppAnnotationsReadWrite = 0,
	AllAnnotationsReadWrite = 1
}

enum ContactBatchStatus
{
	Success = 0,
	ServerSearchSyncManagerError = 1,
	ServerSearchUnknownError = 2
}

enum ContactCardHeaderKind
{
	Default = 0,
	Basic = 1,
	Enterprise = 2
}

enum ContactCardTabKind
{
	Default = 0,
	Email = 1,
	Messaging = 2,
	Phone = 3,
	Video = 4,
	OrganizationalHierarchy = 5
}

enum ContactChangeType
{
	Created = 0,
	Modified = 1,
	Deleted = 2,
	ChangeTrackingLost = 3
}

enum ContactDateKind
{
	Birthday = 0,
	Anniversary = 1,
	Other = 2
}

enum ContactEmailKind
{
	Personal = 0,
	Work = 1,
	Other = 2
}

enum ContactFieldCategory
{
	None = 0,
	Home = 1,
	Work = 2,
	Mobile = 3,
	Other = 4
}

enum ContactFieldType
{
	Email = 0,
	PhoneNumber = 1,
	Location = 2,
	InstantMessage = 3,
	Custom = 4,
	ConnectedServiceAccount = 5,
	ImportantDate = 6,
	Address = 7,
	SignificantOther = 8,
	Notes = 9,
	Website = 10,
	JobInfo = 11
}

enum ContactListOtherAppReadAccess
{
	SystemOnly = 0,
	Limited = 1,
	Full = 2,
	None = 3
}

enum ContactListOtherAppWriteAccess
{
	None = 0,
	SystemOnly = 1
}

enum ContactListSyncStatus
{
	Idle = 0,
	Syncing = 1,
	UpToDate = 2,
	AuthenticationError = 3,
	PolicyError = 4,
	UnknownError = 5,
	ManualAccountRemovalRequired = 6
}

enum ContactMatchReasonKind
{
	Name = 0,
	EmailAddress = 1,
	PhoneNumber = 2,
	JobInfo = 3,
	YomiName = 4,
	Other = 5
}

enum ContactNameOrder
{
	FirstNameLastName = 0,
	LastNameFirstName = 1
}

enum ContactPhoneKind
{
	Home = 0,
	Mobile = 1,
	Work = 2,
	Other = 3,
	Pager = 4,
	BusinessFax = 5,
	HomeFax = 6,
	Company = 7,
	Assistant = 8,
	Radio = 9
}

@bitflags
enum ContactQueryDesiredFields
{
	None = 0x0,
	PhoneNumber = 0x1,
	EmailAddress = 0x2,
	PostalAddress = 0x4
}

@bitflags
enum ContactQuerySearchFields
{
	None = 0x0,
	Name = 0x1,
	Email = 0x2,
	Phone = 0x4,
	All = 0xFFFFFFFF
}

enum ContactQuerySearchScope
{
	Local = 0,
	Server = 1
}

enum ContactRelationship
{
	Other = 0,
	Spouse = 1,
	Partner = 2,
	Sibling = 3,
	Parent = 4,
	Child = 5
}

enum ContactSelectionMode
{
	Contacts = 0,
	Fields = 1
}

enum ContactStoreAccessType
{
	AppContactsReadWrite = 0,
	AllContactsReadOnly = 1,
	AllContactsReadWrite = 2
}

enum PinnedContactSurface
{
	StartMenu = 0,
	Taskbar = 1
}