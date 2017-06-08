module Windows.UI.WebUI;

import dwinrt;

@uuid("50f1e730-c5d1-4b6b-9adb-8a11756be29c")
interface ActivatedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.ApplicationModel.Activation.IActivatedEventArgs eventArgs);
}

@uuid("2b09a173-b68e-4def-88c1-8de84e5aab2f")
interface EnteredBackgroundEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.ApplicationModel.IEnteredBackgroundEventArgs e);
}

@uuid("00b4ccd9-7a9c-4b6b-9ac4-13474f268bc4")
interface LeavingBackgroundEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.ApplicationModel.ILeavingBackgroundEventArgs e);
}

@uuid("7af46fe6-40ca-4e49-a7d6-dbdb330cd1a3")
interface NavigatedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.WebUI.IWebUINavigatedEventArgs e);
}

@uuid("26599ba9-a22d-4806-a728-acadc1d075fa")
interface ResumingEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender);
}

@uuid("509c429c-78e2-4883-abc8-8960dcde1b5c")
interface SuspendingEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.ApplicationModel.ISuspendingEventArgs e);
}

@uuid("c3bd1978-a431-49d8-a76a-395a4e03dcf3")
@WinrtFactory("Windows.UI.WebUI.ActivatedDeferral")
interface IActivatedDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b")
interface IActivatedEventArgsDeferral : IInspectable
{
extern(Windows):
	HRESULT get_ActivatedOperation(Windows.UI.WebUI.ActivatedOperation* return_value);
}

@uuid("b6a0b4bc-c6ca-42fd-9818-71904e45fed7")
@WinrtFactory("Windows.UI.WebUI.ActivatedOperation")
interface IActivatedOperation : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.UI.WebUI.ActivatedDeferral* return_deferral);
}

@uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6")
@WinrtFactory("Windows.UI.WebUI.HtmlPrintDocumentSource")
interface IHtmlPrintDocumentSource : IInspectable
{
extern(Windows):
	HRESULT get_Content(Windows.UI.WebUI.PrintContent* return_value);
	HRESULT set_Content(Windows.UI.WebUI.PrintContent value);
	HRESULT get_LeftMargin(FLOAT* return_value);
	HRESULT set_LeftMargin(FLOAT value);
	HRESULT get_TopMargin(FLOAT* return_value);
	HRESULT set_TopMargin(FLOAT value);
	HRESULT get_RightMargin(FLOAT* return_value);
	HRESULT set_RightMargin(FLOAT value);
	HRESULT get_BottomMargin(FLOAT* return_value);
	HRESULT set_BottomMargin(FLOAT value);
	HRESULT get_EnableHeaderFooter(bool* return_value);
	HRESULT set_EnableHeaderFooter(bool value);
	HRESULT get_ShrinkToFit(bool* return_value);
	HRESULT set_ShrinkToFit(bool value);
	HRESULT get_PercentScale(FLOAT* return_pScalePercent);
	HRESULT set_PercentScale(FLOAT scalePercent);
	HRESULT get_PageRange(HSTRING* return_pstrPageRange);
	HRESULT abi_TrySetPageRange(HSTRING strPageRange, bool* return_pfSuccess);
}

@uuid("351b86bd-43b3-482b-85db-35d87b517ad9")
@WinrtFactory("Windows.UI.WebUI.WebUIApplication")
interface IWebUIActivationStatics : IInspectable
{
extern(Windows):
	HRESULT add_Activated(Windows.UI.WebUI.ActivatedEventHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_Activated(EventRegistrationToken token);
	HRESULT add_Suspending(Windows.UI.WebUI.SuspendingEventHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_Suspending(EventRegistrationToken token);
	HRESULT add_Resuming(Windows.UI.WebUI.ResumingEventHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_Resuming(EventRegistrationToken token);
	HRESULT add_Navigated(Windows.UI.WebUI.NavigatedEventHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_Navigated(EventRegistrationToken token);
}

@uuid("c8e88696-4d78-4aa4-8f06-2a9eadc6c40a")
@WinrtFactory("Windows.UI.WebUI.WebUIApplication")
interface IWebUIActivationStatics2 : IInspectable
{
extern(Windows):
	HRESULT add_LeavingBackground(Windows.UI.WebUI.LeavingBackgroundEventHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_LeavingBackground(EventRegistrationToken token);
	HRESULT add_EnteredBackground(Windows.UI.WebUI.EnteredBackgroundEventHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_EnteredBackground(EventRegistrationToken token);
	HRESULT abi_EnablePrelaunch(bool value);
}

@uuid("23f12c25-e2f7-4741-bc9c-394595de24dc")
interface IWebUIBackgroundTaskInstance : IInspectable
{
extern(Windows):
	HRESULT get_Succeeded(bool* return_succeeded);
	HRESULT set_Succeeded(bool succeeded);
}

@uuid("9c7a5291-19ae-4ca3-b94b-fe4ec744a740")
@WinrtFactory("Windows.UI.WebUI.WebUIBackgroundTaskInstance")
interface IWebUIBackgroundTaskInstanceStatics : IInspectable
{
extern(Windows):
	HRESULT get_Current(Windows.UI.WebUI.IWebUIBackgroundTaskInstance* return_backgroundTaskInstance);
}

@uuid("d804204d-831f-46e2-b432-3afce211f962")
@WinrtFactory("Windows.UI.WebUI.WebUINavigatedDeferral")
interface IWebUINavigatedDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("a75841b8-2499-4030-a69d-15d2d9cfe524")
interface IWebUINavigatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_NavigatedOperation(Windows.UI.WebUI.WebUINavigatedOperation* return_value);
}

@uuid("7a965f08-8182-4a89-ab67-8492e8750d4b")
@WinrtFactory("Windows.UI.WebUI.WebUINavigatedOperation")
interface IWebUINavigatedOperation : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.UI.WebUI.WebUINavigatedDeferral* return_deferral);
}

interface ActivatedDeferral : Windows.UI.WebUI.IActivatedDeferral
{
}

interface ActivatedOperation : Windows.UI.WebUI.IActivatedOperation
{
}

interface EnteredBackgroundEventArgs : Windows.ApplicationModel.IEnteredBackgroundEventArgs
{
}

interface HtmlPrintDocumentSource : Windows.UI.WebUI.IHtmlPrintDocumentSource, Windows.Graphics.Printing.IPrintDocumentSource, Windows.Foundation.IClosable
{
}

interface LeavingBackgroundEventArgs : Windows.ApplicationModel.ILeavingBackgroundEventArgs
{
}

interface SuspendingDeferral : Windows.ApplicationModel.ISuspendingDeferral
{
}

interface SuspendingEventArgs : Windows.ApplicationModel.ISuspendingEventArgs
{
}

interface SuspendingOperation : Windows.ApplicationModel.ISuspendingOperation
{
}

interface WebUIApplication
{
}

interface WebUIAppointmentsProviderAddAppointmentActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderAddAppointmentActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIAppointmentsProviderRemoveAppointmentActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderRemoveAppointmentActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIAppointmentsProviderReplaceAppointmentActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderReplaceAppointmentActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIAppointmentsProviderShowAppointmentDetailsActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIAppointmentsProviderShowTimeFrameActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderShowTimeFrameActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIBackgroundTaskInstance
{
}

interface WebUIBackgroundTaskInstanceRuntimeClass : Windows.UI.WebUI.IWebUIBackgroundTaskInstance, Windows.ApplicationModel.Background.IBackgroundTaskInstance
{
}

interface WebUICachedFileUpdaterActivatedEventArgs : Windows.ApplicationModel.Activation.ICachedFileUpdaterActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUICameraSettingsActivatedEventArgs : Windows.ApplicationModel.Activation.ICameraSettingsActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
}

interface WebUIContactCallActivatedEventArgs : Windows.ApplicationModel.Activation.IContactCallActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
}

interface WebUIContactMapActivatedEventArgs : Windows.ApplicationModel.Activation.IContactMapActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
}

interface WebUIContactMessageActivatedEventArgs : Windows.ApplicationModel.Activation.IContactMessageActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
}

interface WebUIContactPanelActivatedEventArgs : Windows.ApplicationModel.Activation.IContactPanelActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIContactPickerActivatedEventArgs : Windows.ApplicationModel.Activation.IContactPickerActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
}

interface WebUIContactPostActivatedEventArgs : Windows.ApplicationModel.Activation.IContactPostActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
}

interface WebUIContactVideoCallActivatedEventArgs : Windows.ApplicationModel.Activation.IContactVideoCallActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
}

interface WebUIDeviceActivatedEventArgs : Windows.ApplicationModel.Activation.IDeviceActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIDevicePairingActivatedEventArgs : Windows.ApplicationModel.Activation.IDevicePairingActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIDialReceiverActivatedEventArgs : Windows.ApplicationModel.Activation.IDialReceiverActivatedEventArgs, Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIFileActivatedEventArgs : Windows.ApplicationModel.Activation.IFileActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IFileActivatedEventArgsWithNeighboringFiles, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIFileOpenPickerActivatedEventArgs : Windows.ApplicationModel.Activation.IFileOpenPickerActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IFileOpenPickerActivatedEventArgs2, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIFileOpenPickerContinuationEventArgs : Windows.ApplicationModel.Activation.IFileOpenPickerContinuationEventArgs, Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIFileSavePickerActivatedEventArgs : Windows.ApplicationModel.Activation.IFileSavePickerActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IFileSavePickerActivatedEventArgs2, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIFileSavePickerContinuationEventArgs : Windows.ApplicationModel.Activation.IFileSavePickerContinuationEventArgs, Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIFolderPickerContinuationEventArgs : Windows.ApplicationModel.Activation.IFolderPickerContinuationEventArgs, Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUILaunchActivatedEventArgs : Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IPrelaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUILockScreenActivatedEventArgs : Windows.ApplicationModel.Activation.ILockScreenActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUILockScreenCallActivatedEventArgs : Windows.ApplicationModel.Activation.ILockScreenCallActivatedEventArgs, Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
}

interface WebUILockScreenComponentActivatedEventArgs : Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
}

interface WebUINavigatedDeferral : Windows.UI.WebUI.IWebUINavigatedDeferral
{
}

interface WebUINavigatedEventArgs : Windows.UI.WebUI.IWebUINavigatedEventArgs
{
}

interface WebUINavigatedOperation : Windows.UI.WebUI.IWebUINavigatedOperation
{
}

interface WebUIPrint3DWorkflowActivatedEventArgs : Windows.ApplicationModel.Activation.IPrint3DWorkflowActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
}

interface WebUIPrintTaskSettingsActivatedEventArgs : Windows.ApplicationModel.Activation.IPrintTaskSettingsActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
}

interface WebUIPrintWorkflowForegroundTaskActivatedEventArgs : Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
}

interface WebUIProtocolActivatedEventArgs : Windows.ApplicationModel.Activation.IProtocolActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIProtocolForResultsActivatedEventArgs : Windows.ApplicationModel.Activation.IProtocolForResultsActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IProtocolActivatedEventArgs, Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIRestrictedLaunchActivatedEventArgs : Windows.ApplicationModel.Activation.IRestrictedLaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUISearchActivatedEventArgs : Windows.ApplicationModel.Activation.ISearchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.ISearchActivatedEventArgsWithLinguisticDetails, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
}

interface WebUIShareTargetActivatedEventArgs : Windows.ApplicationModel.Activation.IShareTargetActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIToastNotificationActivatedEventArgs : Windows.ApplicationModel.Activation.IToastNotificationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIUserDataAccountProviderActivatedEventArgs : Windows.ApplicationModel.Activation.IUserDataAccountProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
}

interface WebUIVoiceCommandActivatedEventArgs : Windows.ApplicationModel.Activation.IVoiceCommandActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIWalletActionActivatedEventArgs : Windows.ApplicationModel.Activation.IWalletActionActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
}

interface WebUIWebAccountProviderActivatedEventArgs : Windows.ApplicationModel.Activation.IWebAccountProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
}

interface WebUIWebAuthenticationBrokerContinuationEventArgs : Windows.ApplicationModel.Activation.IWebAuthenticationBrokerContinuationEventArgs, Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
}

enum PrintContent
{
	AllPages = 0,
	CurrentPage = 1,
	CustomPageRange = 2,
	CurrentSelection = 3
}