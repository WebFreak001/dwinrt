module Windows.ApplicationModel.Contacts;

import dwinrt;

@uuid("0379d5dd-db5a-4fd3-b54e-4df17917a212")
@WinrtFactory("Windows.ApplicationModel.Contacts.AggregateContactManager")
interface IAggregateContactManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetRemoteIdentificationInformationAsync(HSTRING contactListId, HSTRING remoteSourceId, HSTRING accountId, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("ec0072f3-2118-4049-9ebc-17f0ab692b64")
@WinrtFactory("Windows.ApplicationModel.Contacts.Contact")
interface IContact : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_Fields(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.IContactField)* return_value);
}

@uuid("f312f365-bb77-4c94-802d-8328cee40c08")
@WinrtFactory("Windows.ApplicationModel.Contacts.Contact")
interface IContact2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("48201e67-e08e-42a4-b561-41d08ca9575d")
@WinrtFactory("Windows.ApplicationModel.Contacts.Contact")
interface IContact3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("9739d39a-42ce-4872-8d70-3063aa584b70")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactAddress")
interface IContactAddress : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContactListId(HSTRING* return_value);
	HRESULT set_ContactListId(HSTRING value);
}

@uuid("92a486aa-5c88-45b9-aad0-461888e68d8a")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactAnnotationList")
interface IContactAnnotationList : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FindAnnotationsForContactListAsync(HSTRING contactListId, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactAnnotation))* return_annotations);
}

@uuid("35d1972d-bfce-46bb-93f8-a5b06ec5e201")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactBatch")
interface IContactBatch : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Contacts(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.Contact)* return_value);
	HRESULT get_Status(Windows.ApplicationModel.Contacts.ContactBatchStatus* return_value);
}

@uuid("b60af902-1546-434d-869c-6e3520760ef3")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactCardDelayedDataLoader")
interface IContactCardDelayedDataLoader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetData(Windows.ApplicationModel.Contacts.Contact contact);
}

@uuid("8c0a4f7e-6ab6-4f3f-be72-817236eeea5b")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactCardOptions")
interface IContactCardOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HeaderKind(Windows.ApplicationModel.Contacts.ContactCardHeaderKind* return_value);
	HRESULT set_HeaderKind(Windows.ApplicationModel.Contacts.ContactCardHeaderKind value);
	HRESULT get_InitialTabKind(Windows.ApplicationModel.Contacts.ContactCardTabKind* return_value);
	HRESULT set_InitialTabKind(Windows.ApplicationModel.Contacts.ContactCardTabKind value);
}

@uuid("8f271ba0-d74b-4cc6-9f53-1b0eb5d1273c")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactCardOptions")
interface IContactCardOptions2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ServerSearchContactListIds(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("951d4b10-6a59-4720-a4e1-363d98c135d5")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactChange")
interface IContactChange : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ChangeType(Windows.ApplicationModel.Contacts.ContactChangeType* return_value);
	HRESULT get_Contact(Windows.ApplicationModel.Contacts.Contact* return_value);
}

@uuid("217319fa-2d0c-42e0-a9da-3ecd56a78a47")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactChangeReader")
interface IContactChangeReader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AcceptChanges();
	HRESULT abi_AcceptChangesThrough(Windows.ApplicationModel.Contacts.ContactChange lastChangeToAccept);
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactChange))* return_value);
}

@uuid("6e992952-309b-404d-9712-b37bd30278aa")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactChangeTracker")
interface IContactChangeTracker : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Enable();
	HRESULT abi_GetChangeReader(Windows.ApplicationModel.Contacts.ContactChangeReader* return_value);
	HRESULT abi_Reset();
}

@uuid("c5143ae8-1b03-46f8-b694-a523e83cfcb6")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactChangedDeferral")
interface IContactChangedDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

@uuid("525e7fd1-73f3-4b7d-a918-580be4366121")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactChangedEventArgs")
interface IContactChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeferral(Windows.ApplicationModel.Contacts.ContactChangedDeferral* return_value);
}

@uuid("f6f83553-aa27-4731-8e4a-3dec5ce9eec9")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactConnectedServiceAccount")
interface IContactConnectedServiceAccount : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Type(Windows.ApplicationModel.Contacts.ContactFieldType* return_value);
	HRESULT get_Category(Windows.ApplicationModel.Contacts.ContactFieldCategory* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Value(HSTRING* return_value);
}

@uuid("85e2913f-0e4a-4a3e-8994-406ae7ed646e")
interface IContactFieldFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateField_Default(HSTRING value, Windows.ApplicationModel.Contacts.ContactFieldType type, Windows.ApplicationModel.Contacts.ContactField* return_field);
	HRESULT abi_CreateField_Category(HSTRING value, Windows.ApplicationModel.Contacts.ContactFieldType type, Windows.ApplicationModel.Contacts.ContactFieldCategory category, Windows.ApplicationModel.Contacts.ContactField* return_field);
	HRESULT abi_CreateField_Custom(HSTRING name, HSTRING value, Windows.ApplicationModel.Contacts.ContactFieldType type, Windows.ApplicationModel.Contacts.ContactFieldCategory category, Windows.ApplicationModel.Contacts.ContactField* return_field);
}

@uuid("275eb6d4-6a2e-4278-a914-e460d5f088f6")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactInformation")
interface IContactInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
interface IContactInstantMessageField : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UserName(HSTRING* return_value);
	HRESULT get_Service(HSTRING* return_value);
	HRESULT get_DisplayText(HSTRING* return_value);
	HRESULT get_LaunchUri(Windows.Foundation.Uri* return_value);
}

@uuid("ba0b6794-91a3-4bb2-b1b9-69a5dff0ba09")
interface IContactInstantMessageFieldFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstantMessage_Default(HSTRING userName, Windows.ApplicationModel.Contacts.ContactInstantMessageField* return_field);
	HRESULT abi_CreateInstantMessage_Category(HSTRING userName, Windows.ApplicationModel.Contacts.ContactFieldCategory category, Windows.ApplicationModel.Contacts.ContactInstantMessageField* return_field);
	HRESULT abi_CreateInstantMessage_All(HSTRING userName, Windows.ApplicationModel.Contacts.ContactFieldCategory category, HSTRING service, HSTRING displayText, Windows.Foundation.Uri verb, Windows.ApplicationModel.Contacts.ContactInstantMessageField* return_field);
}

@uuid("6d117b4c-ce50-4b43-9e69-b18258ea5315")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactJobInfo")
interface IContactJobInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RegisterSyncManagerAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT set_SupportsServerSearch(bool value);
	HRESULT get_SyncConstraints(Windows.ApplicationModel.Contacts.ContactListSyncConstraints* return_value);
}

@uuid("b2b0bf01-3062-4e2e-969d-018d1987f314")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactListSyncConstraints")
interface IContactListSyncConstraints : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_Status(Windows.ApplicationModel.Contacts.ContactListSyncStatus value);
	HRESULT set_LastSuccessfulSyncTime(Windows.Foundation.DateTime value);
	HRESULT set_LastAttemptedSyncTime(Windows.Foundation.DateTime value);
}

@uuid("9ec00f82-ab6e-4b36-89e3-b23bc0a1dacc")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactLocationField")
interface IContactLocationField : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UnstructuredAddress(HSTRING* return_value);
	HRESULT get_Street(HSTRING* return_value);
	HRESULT get_City(HSTRING* return_value);
	HRESULT get_Region(HSTRING* return_value);
	HRESULT get_Country(HSTRING* return_value);
	HRESULT get_PostalCode(HSTRING* return_value);
}

@uuid("f79932d7-2fdf-43fe-8f18-41897390bcfe")
interface IContactLocationFieldFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateLocation_Default(HSTRING unstructuredAddress, Windows.ApplicationModel.Contacts.ContactLocationField* return_field);
	HRESULT abi_CreateLocation_Category(HSTRING unstructuredAddress, Windows.ApplicationModel.Contacts.ContactFieldCategory category, Windows.ApplicationModel.Contacts.ContactLocationField* return_field);
	HRESULT abi_CreateLocation_All(HSTRING unstructuredAddress, Windows.ApplicationModel.Contacts.ContactFieldCategory category, HSTRING street, HSTRING city, HSTRING region, HSTRING country, HSTRING postalCode, Windows.ApplicationModel.Contacts.ContactLocationField* return_field);
}

@uuid("b74bba57-1076-4bef-aef3-54686d18387d")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactManagerForUser")
interface IContactManagerForUser : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ShowFullContactCard(Windows.ApplicationModel.Contacts.Contact contact, Windows.ApplicationModel.Contacts.FullContactCardOptions fullContactCardOptions);
}

@uuid("81f21ac0-f661-4708-ba4f-d386bd0d622e")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactManager")
interface IContactManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ShowContactCard(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.Rect selection);
	HRESULT abi_ShowContactCardWithPlacement(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement);
	HRESULT abi_ShowDelayLoadedContactCard(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.ApplicationModel.Contacts.ContactCardDelayedDataLoader* return_dataLoader);
}

@uuid("a178e620-47d8-48cc-963c-9592b6e510c6")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactManager")
interface IContactManagerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestStoreAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactStore)* return_store);
}

@uuid("c4cc3d42-7586-492a-930b-7bc138fc2139")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactManager")
interface IContactManagerStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("24982272-347b-46dc-8d95-51bd41e15aaf")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactManager")
interface IContactManagerStatics4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForUser(Windows.System.User user, Windows.ApplicationModel.Contacts.ContactManagerForUser* return_result);
}

@uuid("f7591a87-acb7-4fad-90f2-a8ab64cdbba4")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactManager")
interface IContactManagerStatics5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_IsShowFullContactCardSupportedAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT get_IncludeMiddleNameInSystemDisplayAndSort(bool* return_value);
	HRESULT set_IncludeMiddleNameInSystemDisplayAndSort(bool value);
}

@uuid("bc922504-e7d8-413e-95f4-b75c54c74077")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactMatchReason")
interface IContactMatchReason : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Field(Windows.ApplicationModel.Contacts.ContactMatchReasonKind* return_value);
	HRESULT get_Segments(Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextSegment)* return_value);
	HRESULT get_Text(HSTRING* return_value);
}

@uuid("f404e97b-9034-453c-8ebf-140a38c86f1d")
@WinrtFactory("Windows.ApplicationModel.Contacts.Contact")
interface IContactName : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_deferral);
}

@uuid("88d61c0e-23b4-4be8-8afc-072c25a4190d")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactPanelLaunchFullAppRequestedEventArgs")
interface IContactPanelLaunchFullAppRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("467dab65-2712-4f52-b783-9ea8111c63cd")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactPhone")
interface IContactPhone : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DesiredFieldsWithContactFieldType(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.ContactFieldType)* return_value);
	HRESULT abi_PickContactAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact)* return_result);
	HRESULT abi_PickContactsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Contacts.Contact))* return_result);
}

@uuid("0e723315-b243-4bed-8516-22b1a7ac0ace")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactPicker")
interface IContactPicker3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("7488c029-6a53-4258-a3e9-62dff6784b6c")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactPicker")
interface IContactPickerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateForUser(Windows.System.User user, Windows.ApplicationModel.Contacts.ContactPicker* return_result);
	HRESULT abi_IsSupportedAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
}

@uuid("4408cc9e-7d7c-42f0-8ac7-f50733ecdbc1")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactQueryOptions")
interface IContactQueryOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWithText(HSTRING text, Windows.ApplicationModel.Contacts.ContactQueryOptions* return_result);
	HRESULT abi_CreateWithTextAndFields(HSTRING text, Windows.ApplicationModel.Contacts.ContactQuerySearchFields fields, Windows.ApplicationModel.Contacts.ContactQueryOptions* return_result);
}

@uuid("f7e3f9cb-a957-439b-a0b7-1c02a1963ff0")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactQueryTextSearch")
interface IContactQueryTextSearch : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.ContactBatch)* return_value);
	HRESULT abi_GetMatchingPropertiesWithMatchReason(Windows.ApplicationModel.Contacts.Contact contact, Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.ContactMatchReason)* return_ppRetVal);
}

@uuid("8873b5ab-c5fb-46d8-93fe-da3ff1934054")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactSignificantOther")
interface IContactSignificantOther : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
}

@uuid("8d7bd474-3f03-45f8-ba0f-c4ed37d64219")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactSignificantOther")
interface IContactSignificantOther2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Relationship(Windows.ApplicationModel.Contacts.ContactRelationship* return_value);
	HRESULT set_Relationship(Windows.ApplicationModel.Contacts.ContactRelationship value);
}

@uuid("2c220b10-3a6c-4293-b9bc-fe987f6e0d52")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactStore")
interface IContactStore : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FindContactsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.Contact))* return_contacts);
	HRESULT abi_FindContactsWithSearchTextAsync(HSTRING searchText, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Contacts.Contact))* return_contacts);
	HRESULT abi_GetContactAsync(HSTRING contactId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Contacts.Contact)* return_contacts);
}

@uuid("18ce1c22-ebd5-4bfb-b690-5f4f27c4f0e8")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactStore")
interface IContactStore2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("9f130176-dc1b-4055-ad66-652f39d990e8")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactWebsite")
interface IContactWebsite : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT set_Uri(Windows.Foundation.Uri value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
}

@uuid("f87ee91e-5647-4068-bb5e-4b6f437ce308")
@WinrtFactory("Windows.ApplicationModel.Contacts.ContactWebsite")
interface IContactWebsite2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RawValue(HSTRING* return_value);
	HRESULT set_RawValue(HSTRING value);
}

@uuid("8744436c-5cf9-4683-bdca-a1fdebf8dbce")
@WinrtFactory("Windows.ApplicationModel.Contacts.FullContactCardOptions")
interface IFullContactCardOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DesiredRemainingView(Windows.UI.ViewManagement.ViewSizePreference* return_value);
	HRESULT set_DesiredRemainingView(Windows.UI.ViewManagement.ViewSizePreference value);
}

@uuid("2e0e1b12-d627-4fca-bad4-1faf168c7d14")
@WinrtFactory("Windows.ApplicationModel.Contacts.KnownContactField")
interface IKnownContactFieldStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContactIds(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("fcbc740c-e1d6-45c3-b8b6-a35604e167a0")
@WinrtFactory("Windows.ApplicationModel.Contacts.PinnedContactManager")
interface IPinnedContactManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefault(Windows.ApplicationModel.Contacts.PinnedContactManager* return_result);
	HRESULT abi_GetForUser(Windows.System.User user, Windows.ApplicationModel.Contacts.PinnedContactManager* return_result);
	HRESULT abi_IsSupported(bool* return_result);
}

interface AggregateContactManager
{
}

interface Contact
{
}

interface ContactAddress
{
}

interface ContactAnnotation
{
}

interface ContactAnnotationList
{
}

interface ContactAnnotationStore
{
}

interface ContactBatch
{
}

interface ContactCardDelayedDataLoader
{
}

interface ContactCardOptions
{
}

interface ContactChange
{
}

interface ContactChangeReader
{
}

interface ContactChangeTracker
{
}

interface ContactChangedDeferral
{
}

interface ContactChangedEventArgs
{
}

interface ContactConnectedServiceAccount
{
}

interface ContactDate
{
}

interface ContactEmail
{
}

interface ContactField
{
}

interface ContactFieldFactory
{
}

interface ContactGroup
{
}

interface ContactInformation
{
}

interface ContactInstantMessageField
{
}

interface ContactJobInfo
{
}

interface ContactList
{
}

interface ContactListSyncConstraints
{
}

interface ContactListSyncManager
{
}

interface ContactLocationField
{
}

interface ContactManagerForUser
{
}

interface ContactMatchReason
{
}

interface ContactPanel
{
}

interface ContactPanelClosingEventArgs
{
}

interface ContactPanelLaunchFullAppRequestedEventArgs
{
}

interface ContactPhone
{
}

interface ContactPicker
{
}

interface ContactQueryOptions
{
}

interface ContactQueryTextSearch
{
}

interface ContactReader
{
}

interface ContactSignificantOther
{
}

interface ContactStore
{
}

interface ContactStoreNotificationTriggerDetails
{
}

interface ContactWebsite
{
}

interface FullContactCardOptions
{
}

interface PinnedContactIdsQueryResult
{
}

interface PinnedContactManager
{
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