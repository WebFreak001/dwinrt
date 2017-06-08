module Windows.ApplicationModel.Activation;

import dwinrt;

@uuid("cf651713-cd08-4fd8-b697-a281b6544e2e")
interface IActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Kind(Windows.ApplicationModel.Activation.ActivationKind* return_value);
	HRESULT get_PreviousExecutionState(Windows.ApplicationModel.Activation.ApplicationExecutionState* return_value);
	HRESULT get_SplashScreen(Windows.ApplicationModel.Activation.SplashScreen* return_value);
}

@uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c")
interface IActivatedEventArgsWithUser : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("930cef4b-b829-40fc-88f4-8513e8a64738")
interface IApplicationViewActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CurrentlyShownApplicationViewId(INT32* return_value);
}

@uuid("3364c405-933c-4e7d-a034-500fb8dcd9f3")
interface IAppointmentsProviderActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Verb(HSTRING* return_value);
}

@uuid("a2861367-cee5-4e4d-9ed7-41c34ec18b02")
interface IAppointmentsProviderAddAppointmentActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AddAppointmentOperation(Windows.ApplicationModel.Appointments.AppointmentsProvider.AddAppointmentOperation* return_value);
}

@uuid("751f3ab8-0b8e-451c-9f15-966e699bac25")
interface IAppointmentsProviderRemoveAppointmentActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RemoveAppointmentOperation(Windows.ApplicationModel.Appointments.AppointmentsProvider.RemoveAppointmentOperation* return_value);
}

@uuid("1551b7d4-a981-4067-8a62-0524e4ade121")
interface IAppointmentsProviderReplaceAppointmentActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ReplaceAppointmentOperation(Windows.ApplicationModel.Appointments.AppointmentsProvider.ReplaceAppointmentOperation* return_value);
}

@uuid("3958f065-9841-4ca5-999b-885198b9ef2a")
interface IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InstanceStartDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_LocalId(HSTRING* return_value);
	HRESULT get_RoamingId(HSTRING* return_value);
}

@uuid("9baeaba6-0e0b-49aa-babc-12b1dc774986")
interface IAppointmentsProviderShowTimeFrameActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TimeToShow(Windows.Foundation.DateTime* return_value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
}

@uuid("ab14bee0-e760-440e-a91c-44796de3a92d")
interface IBackgroundActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TaskInstance(Windows.ApplicationModel.Background.IBackgroundTaskInstance* return_value);
}

@uuid("d06eb1c7-3805-4ecb-b757-6cf15e26fef3")
interface ICachedFileUpdaterActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CachedFileUpdaterUI(Windows.Storage.Provider.CachedFileUpdaterUI* return_value);
}

@uuid("fb67a508-2dad-490a-9170-dca036eb114b")
interface ICameraSettingsActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_VideoDeviceController(IInspectable* return_value);
	HRESULT get_VideoDeviceExtension(IInspectable* return_value);
}

@uuid("d627a1c4-c025-4c41-9def-f1eafad075e7")
interface IContactActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Verb(HSTRING* return_value);
}

@uuid("c2df14c7-30eb-41c6-b3bc-5b1694f9dab3")
interface IContactCallActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ServiceId(HSTRING* return_value);
	HRESULT get_ServiceUserId(HSTRING* return_value);
	HRESULT get_Contact(Windows.ApplicationModel.Contacts.Contact* return_value);
}

@uuid("b32bf870-eee7-4ad2-aaf1-a87effcf00a4")
interface IContactMapActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Address(Windows.ApplicationModel.Contacts.ContactAddress* return_value);
	HRESULT get_Contact(Windows.ApplicationModel.Contacts.Contact* return_value);
}

@uuid("de598db2-0e03-43b0-bf56-bcc40b3162df")
interface IContactMessageActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ServiceId(HSTRING* return_value);
	HRESULT get_ServiceUserId(HSTRING* return_value);
	HRESULT get_Contact(Windows.ApplicationModel.Contacts.Contact* return_value);
}

@uuid("52bb63e4-d3d4-4b63-8051-4af2082cab80")
interface IContactPanelActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContactPanel(Windows.ApplicationModel.Contacts.ContactPanel* return_value);
	HRESULT get_Contact(Windows.ApplicationModel.Contacts.Contact* return_value);
}

@uuid("ce57aae7-6449-45a7-971f-d113be7a8936")
interface IContactPickerActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContactPickerUI(Windows.ApplicationModel.Contacts.Provider.ContactPickerUI* return_value);
}

@uuid("b35a3c67-f1e7-4655-ad6e-4857588f552f")
interface IContactPostActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ServiceId(HSTRING* return_value);
	HRESULT get_ServiceUserId(HSTRING* return_value);
	HRESULT get_Contact(Windows.ApplicationModel.Contacts.Contact* return_value);
}

@uuid("61079db8-e3e7-4b4f-858d-5c63a96ef684")
interface IContactVideoCallActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ServiceId(HSTRING* return_value);
	HRESULT get_ServiceUserId(HSTRING* return_value);
	HRESULT get_Contact(Windows.ApplicationModel.Contacts.Contact* return_value);
}

@uuid("4580dca8-5750-4916-aa52-c0829521eb94")
interface IContactsProviderActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Verb(HSTRING* return_value);
}

@uuid("e58106b5-155f-4a94-a742-c7e08f4e188c")
interface IContinuationActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContinuationData(Windows.Foundation.Collections.ValueSet* return_value);
}

@uuid("cd50b9a9-ce10-44d2-8234-c355a073ef33")
interface IDeviceActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceInformationId(HSTRING* return_value);
	HRESULT get_Verb(HSTRING* return_value);
}

@uuid("eba0d1e4-ecc6-4148-94ed-f4b37ec05b3e")
interface IDevicePairingActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceInformation(Windows.Devices.Enumeration.DeviceInformation* return_value);
}

@uuid("fb777ed7-85ee-456e-a44d-85d730e70aed")
interface IDialReceiverActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AppName(HSTRING* return_value);
}

@uuid("bb2afc33-93b1-42ed-8b26-236dd9c78496")
interface IFileActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Files(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem)* return_value);
	HRESULT get_Verb(HSTRING* return_value);
}

@uuid("2d60f06b-d25f-4d25-8653-e1c5e1108309")
interface IFileActivatedEventArgsWithCallerPackageFamilyName : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CallerPackageFamilyName(HSTRING* return_value);
}

@uuid("433ba1a4-e1e2-48fd-b7fc-b5d6eee65033")
interface IFileActivatedEventArgsWithNeighboringFiles : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NeighboringFilesQuery(Windows.Storage.Search.StorageFileQueryResult* return_value);
}

@uuid("72827082-5525-4bf2-bc09-1f5095d4964d")
interface IFileOpenPickerActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FileOpenPickerUI(Windows.Storage.Pickers.Provider.FileOpenPickerUI* return_value);
}

@uuid("5e731f66-8d1f-45fb-af1d-73205c8fc7a1")
interface IFileOpenPickerActivatedEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CallerPackageFamilyName(HSTRING* return_value);
}

@uuid("f0fa3f3a-d4e8-4ad3-9c34-2308f32fcec9")
interface IFileOpenPickerContinuationEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Files(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)* return_value);
}

@uuid("81c19cf1-74e6-4387-82eb-bb8fd64b4346")
interface IFileSavePickerActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FileSavePickerUI(Windows.Storage.Pickers.Provider.FileSavePickerUI* return_value);
}

@uuid("6b73fe13-2cf2-4d48-8cbc-af67d23f1ce7")
interface IFileSavePickerActivatedEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CallerPackageFamilyName(HSTRING* return_value);
	HRESULT get_EnterpriseId(HSTRING* return_value);
}

@uuid("2c846fe1-3bad-4f33-8c8b-e46fae824b4b")
interface IFileSavePickerContinuationEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_File(Windows.Storage.StorageFile* return_value);
}

@uuid("51882366-9f4b-498f-beb0-42684f6e1c29")
interface IFolderPickerContinuationEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Folder(Windows.Storage.StorageFolder* return_value);
}

@uuid("fbc93e26-a14a-4b4f-82b0-33bed920af52")
interface ILaunchActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Arguments(HSTRING* return_value);
	HRESULT get_TileId(HSTRING* return_value);
}

@uuid("0fd37ebc-9dc9-46b5-9ace-bd95d4565345")
interface ILaunchActivatedEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TileActivatedInfo(Windows.ApplicationModel.Activation.TileActivatedInfo* return_value);
}

@uuid("3ca77966-6108-4a41-8220-ee7d133c8532")
interface ILockScreenActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Info(IInspectable* return_value);
}

@uuid("06f37fbe-b5f2-448b-b13e-e328ac1c516a")
interface ILockScreenCallActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CallUI(Windows.ApplicationModel.Calls.LockScreenCallUI* return_value);
}

@uuid("360defb9-a9d3-4984-a4ed-9ec734604921")
interface IPickerReturnedActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PickerOperationId(HSTRING* return_value);
}

@uuid("0c44717b-19f7-48d6-b046-cf22826eaa74")
interface IPrelaunchActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PrelaunchActivated(bool* return_value);
}

@uuid("3f57e78b-f2ac-4619-8302-ef855e1c9b90")
interface IPrint3DWorkflowActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Workflow(Windows.Devices.Printers.Extensions.Print3DWorkflow* return_value);
}

@uuid("ee30a0c9-ce56-4865-ba8e-8954ac271107")
interface IPrintTaskSettingsActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Configuration(Windows.Devices.Printers.Extensions.PrintTaskConfiguration* return_value);
}

@uuid("6095f4dd-b7c0-46ab-81fe-d90f36d00d24")
interface IProtocolActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
}

@uuid("d84a0c12-5c8f-438c-83cb-c28fcc0b2fdb")
interface IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CallerPackageFamilyName(HSTRING* return_value);
	HRESULT get_Data(Windows.Foundation.Collections.ValueSet* return_value);
}

@uuid("e75132c2-7ae7-4517-80ac-dbe8d7cc5b9c")
interface IProtocolForResultsActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ProtocolForResultsOperation(Windows.System.ProtocolForResultsOperation* return_value);
}

@uuid("e0b7ac81-bfc3-4344-a5da-19fd5a27baae")
interface IRestrictedLaunchActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SharedContext(IInspectable* return_value);
}

@uuid("8cb36951-58c8-43e3-94bc-41d33f8b630e")
interface ISearchActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_QueryText(HSTRING* return_value);
	HRESULT get_Language(HSTRING* return_value);
}

@uuid("c09f33da-08ab-4931-9b7c-451025f21f81")
interface ISearchActivatedEventArgsWithLinguisticDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LinguisticDetails(Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails* return_value);
}

@uuid("4bdaf9c8-cdb2-4acb-bfc3-6648563378ec")
interface IShareTargetActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ShareOperation(Windows.ApplicationModel.DataTransfer.ShareTarget.ShareOperation* return_value);
}

@uuid("ca4d975c-d4d6-43f0-97c0-0833c6391c24")
@WinrtFactory("Windows.ApplicationModel.Activation.SplashScreen")
interface ISplashScreen : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ImageLocation(Windows.Foundation.Rect* return_value);
	HRESULT add_Dismissed(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Activation.SplashScreen, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_Dismissed(EventRegistrationToken cookie);
}

@uuid("80e4a3b1-3980-4f17-b738-89194e0b8f65")
@WinrtFactory("Windows.ApplicationModel.Activation.TileActivatedInfo")
interface ITileActivatedInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RecentlyShownNotifications(Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.ShownTileNotification)* return_value);
}

@uuid("92a86f82-5290-431d-be85-c4aaeeb8685f")
interface IToastNotificationActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Argument(HSTRING* return_argument);
	HRESULT get_UserInput(Windows.Foundation.Collections.ValueSet* return_value);
}

@uuid("1bc9f723-8ef1-4a51-a63a-fe711eeab607")
interface IUserDataAccountProviderActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Operation(Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderOperation* return_value);
}

@uuid("33f288a6-5c2c-4d27-bac7-7536088f1219")
interface IViewSwitcherProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ViewSwitcher(Windows.UI.ViewManagement.ActivationViewSwitcher* return_value);
}

@uuid("ab92dcfd-8d43-4de6-9775-20704b581b00")
interface IVoiceCommandActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Result(Windows.Media.SpeechRecognition.SpeechRecognitionResult* return_value);
}

@uuid("fcfc027b-1a1a-4d22-923f-ae6f45fa52d9")
interface IWalletActionActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ItemId(HSTRING* return_value);
	HRESULT get_ActionKind(Windows.ApplicationModel.Wallet.WalletActionKind* return_value);
	HRESULT get_ActionId(HSTRING* return_value);
}

@uuid("72b71774-98ea-4ccf-9752-46d9051004f1")
interface IWebAccountProviderActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Operation(Windows.Security.Authentication.Web.Provider.IWebAccountProviderOperation* return_value);
}

@uuid("75dda3d4-7714-453d-b7ff-b95e3a1709da")
interface IWebAuthenticationBrokerContinuationEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_WebAuthenticationResult(Windows.Security.Authentication.Web.WebAuthenticationResult* return_result);
}

interface AppointmentsProviderAddAppointmentActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderAddAppointmentActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface AppointmentsProviderRemoveAppointmentActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderRemoveAppointmentActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface AppointmentsProviderReplaceAppointmentActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderReplaceAppointmentActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface AppointmentsProviderShowAppointmentDetailsActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface AppointmentsProviderShowTimeFrameActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderShowTimeFrameActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface BackgroundActivatedEventArgs : Windows.ApplicationModel.Activation.IBackgroundActivatedEventArgs
{
}

interface CachedFileUpdaterActivatedEventArgs : Windows.ApplicationModel.Activation.ICachedFileUpdaterActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface CameraSettingsActivatedEventArgs : Windows.ApplicationModel.Activation.ICameraSettingsActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs
{
}

interface ContactCallActivatedEventArgs : Windows.ApplicationModel.Activation.IContactCallActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs
{
}

interface ContactMapActivatedEventArgs : Windows.ApplicationModel.Activation.IContactMapActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs
{
}

interface ContactMessageActivatedEventArgs : Windows.ApplicationModel.Activation.IContactMessageActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs
{
}

interface ContactPanelActivatedEventArgs : Windows.ApplicationModel.Activation.IContactPanelActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface ContactPickerActivatedEventArgs : Windows.ApplicationModel.Activation.IContactPickerActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs
{
}

interface ContactPostActivatedEventArgs : Windows.ApplicationModel.Activation.IContactPostActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs
{
}

interface ContactVideoCallActivatedEventArgs : Windows.ApplicationModel.Activation.IContactVideoCallActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs
{
}

interface DeviceActivatedEventArgs : Windows.ApplicationModel.Activation.IDeviceActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.ApplicationModel.Activation.IViewSwitcherProvider, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface DevicePairingActivatedEventArgs : Windows.ApplicationModel.Activation.IDevicePairingActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface DialReceiverActivatedEventArgs : Windows.ApplicationModel.Activation.IDialReceiverActivatedEventArgs, Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.ApplicationModel.Activation.IViewSwitcherProvider, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface FileActivatedEventArgs : Windows.ApplicationModel.Activation.IFileActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IFileActivatedEventArgsWithNeighboringFiles, Windows.ApplicationModel.Activation.IFileActivatedEventArgsWithCallerPackageFamilyName, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.ApplicationModel.Activation.IViewSwitcherProvider, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface FileOpenPickerActivatedEventArgs : Windows.ApplicationModel.Activation.IFileOpenPickerActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IFileOpenPickerActivatedEventArgs2, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface FileOpenPickerContinuationEventArgs : Windows.ApplicationModel.Activation.IFileOpenPickerContinuationEventArgs, Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface FileSavePickerActivatedEventArgs : Windows.ApplicationModel.Activation.IFileSavePickerActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IFileSavePickerActivatedEventArgs2, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface FileSavePickerContinuationEventArgs : Windows.ApplicationModel.Activation.IFileSavePickerContinuationEventArgs, Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface FolderPickerContinuationEventArgs : Windows.ApplicationModel.Activation.IFolderPickerContinuationEventArgs, Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface LaunchActivatedEventArgs : Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.ApplicationModel.Activation.IPrelaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IViewSwitcherProvider, Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs2, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface LockScreenActivatedEventArgs : Windows.ApplicationModel.Activation.ILockScreenActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface LockScreenCallActivatedEventArgs : Windows.ApplicationModel.Activation.ILockScreenCallActivatedEventArgs, Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.ApplicationModel.Activation.IViewSwitcherProvider
{
}

interface LockScreenComponentActivatedEventArgs : Windows.ApplicationModel.Activation.IActivatedEventArgs
{
}

interface PickerReturnedActivatedEventArgs : Windows.ApplicationModel.Activation.IPickerReturnedActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs
{
}

interface Print3DWorkflowActivatedEventArgs : Windows.ApplicationModel.Activation.IPrint3DWorkflowActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs
{
}

interface PrintTaskSettingsActivatedEventArgs : Windows.ApplicationModel.Activation.IPrintTaskSettingsActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs
{
}

interface ProtocolActivatedEventArgs : Windows.ApplicationModel.Activation.IProtocolActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.ApplicationModel.Activation.IViewSwitcherProvider, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface ProtocolForResultsActivatedEventArgs : Windows.ApplicationModel.Activation.IProtocolForResultsActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IProtocolActivatedEventArgs, Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.ApplicationModel.Activation.IViewSwitcherProvider, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface RestrictedLaunchActivatedEventArgs : Windows.ApplicationModel.Activation.IRestrictedLaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface SearchActivatedEventArgs : Windows.ApplicationModel.Activation.ISearchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.ApplicationModel.Activation.ISearchActivatedEventArgsWithLinguisticDetails, Windows.ApplicationModel.Activation.IViewSwitcherProvider, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface ShareTargetActivatedEventArgs : Windows.ApplicationModel.Activation.IShareTargetActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface SplashScreen : Windows.ApplicationModel.Activation.ISplashScreen
{
}

interface TileActivatedInfo : Windows.ApplicationModel.Activation.ITileActivatedInfo
{
}

interface ToastNotificationActivatedEventArgs : Windows.ApplicationModel.Activation.IToastNotificationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs
{
}

interface UserDataAccountProviderActivatedEventArgs : Windows.ApplicationModel.Activation.IUserDataAccountProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs
{
}

interface VoiceCommandActivatedEventArgs : Windows.ApplicationModel.Activation.IVoiceCommandActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WalletActionActivatedEventArgs : Windows.ApplicationModel.Activation.IWalletActionActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs
{
}

interface WebAccountProviderActivatedEventArgs : Windows.ApplicationModel.Activation.IWebAccountProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebAuthenticationBrokerContinuationEventArgs : Windows.ApplicationModel.Activation.IWebAuthenticationBrokerContinuationEventArgs, Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs
{
}

enum ActivationKind
{
	Launch = 0,
	Search = 1,
	ShareTarget = 2,
	File = 3,
	Protocol = 4,
	FileOpenPicker = 5,
	FileSavePicker = 6,
	CachedFileUpdater = 7,
	ContactPicker = 8,
	Device = 9,
	PrintTaskSettings = 10,
	CameraSettings = 11,
	RestrictedLaunch = 12,
	AppointmentsProvider = 13,
	Contact = 14,
	LockScreenCall = 15,
	VoiceCommand = 16,
	LockScreen = 17,
	PickerReturned = 1000,
	WalletAction = 1001,
	PickFileContinuation = 1002,
	PickSaveFileContinuation = 1003,
	PickFolderContinuation = 1004,
	WebAuthenticationBrokerContinuation = 1005,
	WebAccountProvider = 1006,
	ComponentUI = 1007,
	ProtocolForResults = 1009,
	ToastNotification = 1010,
	Print3DWorkflow = 1011,
	DialReceiver = 1012,
	DevicePairing = 1013,
	UserDataAccountsProvider = 1014,
	FilePickerExperience = 1015,
	LockScreenComponent = 1016,
	ContactPanel = 1017
}

enum ApplicationExecutionState
{
	NotRunning = 0,
	Running = 1,
	Suspended = 2,
	Terminated = 3,
	ClosedByUser = 4
}