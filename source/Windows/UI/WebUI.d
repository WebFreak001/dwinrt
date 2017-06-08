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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

@uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b")
interface IActivatedEventArgsDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ActivatedOperation(Windows.UI.WebUI.ActivatedOperation* return_value);
}

@uuid("b6a0b4bc-c6ca-42fd-9818-71904e45fed7")
@WinrtFactory("Windows.UI.WebUI.ActivatedOperation")
interface IActivatedOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeferral(Windows.UI.WebUI.ActivatedDeferral* return_deferral);
}

@uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6")
@WinrtFactory("Windows.UI.WebUI.HtmlPrintDocumentSource")
interface IHtmlPrintDocumentSource : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Succeeded(bool* return_succeeded);
	HRESULT set_Succeeded(bool succeeded);
}

@uuid("9c7a5291-19ae-4ca3-b94b-fe4ec744a740")
@WinrtFactory("Windows.UI.WebUI.WebUIBackgroundTaskInstance")
interface IWebUIBackgroundTaskInstanceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Current(Windows.UI.WebUI.IWebUIBackgroundTaskInstance* return_backgroundTaskInstance);
}

@uuid("d804204d-831f-46e2-b432-3afce211f962")
@WinrtFactory("Windows.UI.WebUI.WebUINavigatedDeferral")
interface IWebUINavigatedDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

@uuid("a75841b8-2499-4030-a69d-15d2d9cfe524")
interface IWebUINavigatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NavigatedOperation(Windows.UI.WebUI.WebUINavigatedOperation* return_value);
}

@uuid("7a965f08-8182-4a89-ab67-8492e8750d4b")
@WinrtFactory("Windows.UI.WebUI.WebUINavigatedOperation")
interface IWebUINavigatedOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeferral(Windows.UI.WebUI.WebUINavigatedDeferral* return_deferral);
}

interface ActivatedDeferral
{
}

interface ActivatedOperation
{
}

interface EnteredBackgroundEventArgs
{
}

interface HtmlPrintDocumentSource
{
}

interface LeavingBackgroundEventArgs
{
}

interface SuspendingDeferral
{
}

interface SuspendingEventArgs
{
}

interface SuspendingOperation
{
}

interface WebUIAppointmentsProviderAddAppointmentActivatedEventArgs
{
}

interface WebUIAppointmentsProviderRemoveAppointmentActivatedEventArgs
{
}

interface WebUIAppointmentsProviderReplaceAppointmentActivatedEventArgs
{
}

interface WebUIAppointmentsProviderShowAppointmentDetailsActivatedEventArgs
{
}

interface WebUIAppointmentsProviderShowTimeFrameActivatedEventArgs
{
}

interface WebUIBackgroundTaskInstanceRuntimeClass
{
}

interface WebUICachedFileUpdaterActivatedEventArgs
{
}

interface WebUICameraSettingsActivatedEventArgs
{
}

interface WebUIContactCallActivatedEventArgs
{
}

interface WebUIContactMapActivatedEventArgs
{
}

interface WebUIContactMessageActivatedEventArgs
{
}

interface WebUIContactPanelActivatedEventArgs
{
}

interface WebUIContactPickerActivatedEventArgs
{
}

interface WebUIContactPostActivatedEventArgs
{
}

interface WebUIContactVideoCallActivatedEventArgs
{
}

interface WebUIDeviceActivatedEventArgs
{
}

interface WebUIDevicePairingActivatedEventArgs
{
}

interface WebUIDialReceiverActivatedEventArgs
{
}

interface WebUIFileActivatedEventArgs
{
}

interface WebUIFileOpenPickerActivatedEventArgs
{
}

interface WebUIFileOpenPickerContinuationEventArgs
{
}

interface WebUIFileSavePickerActivatedEventArgs
{
}

interface WebUIFileSavePickerContinuationEventArgs
{
}

interface WebUIFolderPickerContinuationEventArgs
{
}

interface WebUILaunchActivatedEventArgs
{
}

interface WebUILockScreenActivatedEventArgs
{
}

interface WebUILockScreenCallActivatedEventArgs
{
}

interface WebUILockScreenComponentActivatedEventArgs
{
}

interface WebUINavigatedDeferral
{
}

interface WebUINavigatedEventArgs
{
}

interface WebUINavigatedOperation
{
}

interface WebUIPrint3DWorkflowActivatedEventArgs
{
}

interface WebUIPrintTaskSettingsActivatedEventArgs
{
}

interface WebUIPrintWorkflowForegroundTaskActivatedEventArgs
{
}

interface WebUIProtocolActivatedEventArgs
{
}

interface WebUIProtocolForResultsActivatedEventArgs
{
}

interface WebUIRestrictedLaunchActivatedEventArgs
{
}

interface WebUISearchActivatedEventArgs
{
}

interface WebUIShareTargetActivatedEventArgs
{
}

interface WebUIToastNotificationActivatedEventArgs
{
}

interface WebUIUserDataAccountProviderActivatedEventArgs
{
}

interface WebUIVoiceCommandActivatedEventArgs
{
}

interface WebUIWalletActionActivatedEventArgs
{
}

interface WebUIWebAccountProviderActivatedEventArgs
{
}

interface WebUIWebAuthenticationBrokerContinuationEventArgs
{
}

enum PrintContent
{
	AllPages = 0,
	CurrentPage = 1,
	CustomPageRange = 2,
	CurrentSelection = 3
}