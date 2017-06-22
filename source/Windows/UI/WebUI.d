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
interface IHtmlPrintDocumentSource_Base : IInspectable
{
extern(Windows):
	HRESULT get_Content(Windows.UI.WebUI.PrintContent* return_value);
	HRESULT set_Content(Windows.UI.WebUI.PrintContent value);
	HRESULT get_LeftMargin(float* return_value);
	HRESULT set_LeftMargin(float value);
	HRESULT get_TopMargin(float* return_value);
	HRESULT set_TopMargin(float value);
	HRESULT get_RightMargin(float* return_value);
	HRESULT set_RightMargin(float value);
	HRESULT get_BottomMargin(float* return_value);
	HRESULT set_BottomMargin(float value);
	HRESULT get_EnableHeaderFooter(bool* return_value);
	HRESULT set_EnableHeaderFooter(bool value);
	HRESULT get_ShrinkToFit(bool* return_value);
	HRESULT set_ShrinkToFit(bool value);
	HRESULT get_PercentScale(float* return_pScalePercent);
	HRESULT set_PercentScale(float scalePercent);
	HRESULT get_PageRange(HSTRING* return_pstrPageRange);
	HRESULT abi_TrySetPageRange(HSTRING strPageRange, bool* return_pfSuccess);
}
@uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6")
@WinrtFactory("Windows.UI.WebUI.HtmlPrintDocumentSource")
interface IHtmlPrintDocumentSource : IHtmlPrintDocumentSource_Base, Windows.Graphics.Printing.IPrintDocumentSource {}

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
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedDeferral).abi_Complete());
	}
}

interface ActivatedOperation : Windows.UI.WebUI.IActivatedOperation
{
extern(Windows):
	final Windows.UI.WebUI.ActivatedDeferral GetDeferral()
	{
		Windows.UI.WebUI.ActivatedDeferral _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedOperation).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EnteredBackgroundEventArgs : Windows.ApplicationModel.IEnteredBackgroundEventArgs
{
extern(Windows):
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.IEnteredBackgroundEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface HtmlPrintDocumentSource : Windows.UI.WebUI.IHtmlPrintDocumentSource, Windows.Graphics.Printing.IPrintDocumentSource, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.UI.WebUI.PrintContent Content()
	{
		Windows.UI.WebUI.PrintContent _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).get_Content(&_ret));
		return _ret;
	}
	final void Content(Windows.UI.WebUI.PrintContent value)
	{
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).set_Content(value));
	}
	final float LeftMargin()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).get_LeftMargin(&_ret));
		return _ret;
	}
	final void LeftMargin(float value)
	{
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).set_LeftMargin(value));
	}
	final float TopMargin()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).get_TopMargin(&_ret));
		return _ret;
	}
	final void TopMargin(float value)
	{
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).set_TopMargin(value));
	}
	final float RightMargin()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).get_RightMargin(&_ret));
		return _ret;
	}
	final void RightMargin(float value)
	{
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).set_RightMargin(value));
	}
	final float BottomMargin()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).get_BottomMargin(&_ret));
		return _ret;
	}
	final void BottomMargin(float value)
	{
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).set_BottomMargin(value));
	}
	final bool EnableHeaderFooter()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).get_EnableHeaderFooter(&_ret));
		return _ret;
	}
	final void EnableHeaderFooter(bool value)
	{
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).set_EnableHeaderFooter(value));
	}
	final bool ShrinkToFit()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).get_ShrinkToFit(&_ret));
		return _ret;
	}
	final void ShrinkToFit(bool value)
	{
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).set_ShrinkToFit(value));
	}
	final float PercentScale()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).get_PercentScale(&_ret));
		return _ret;
	}
	final void PercentScale(float scalePercent)
	{
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).set_PercentScale(scalePercent));
	}
	final HSTRING PageRange()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).get_PageRange(&_ret));
		return _ret;
	}
	final bool TrySetPageRange(HSTRING strPageRange)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IHtmlPrintDocumentSource).abi_TrySetPageRange(strPageRange, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface LeavingBackgroundEventArgs : Windows.ApplicationModel.ILeavingBackgroundEventArgs
{
extern(Windows):
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.ILeavingBackgroundEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface SuspendingDeferral : Windows.ApplicationModel.ISuspendingDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.ISuspendingDeferral).abi_Complete());
	}
}

interface SuspendingEventArgs : Windows.ApplicationModel.ISuspendingEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.SuspendingOperation SuspendingOperation()
	{
		Windows.ApplicationModel.SuspendingOperation _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.ISuspendingEventArgs).get_SuspendingOperation(&_ret));
		return _ret;
	}
}

interface SuspendingOperation : Windows.ApplicationModel.ISuspendingOperation
{
extern(Windows):
	final Windows.ApplicationModel.SuspendingDeferral GetDeferral()
	{
		Windows.ApplicationModel.SuspendingDeferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.ISuspendingOperation).abi_GetDeferral(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Deadline()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.ISuspendingOperation).get_Deadline(&_ret));
		return _ret;
	}
}

interface WebUIApplication
{
}

interface WebUIAppointmentsProviderAddAppointmentActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderAddAppointmentActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.ApplicationModel.Appointments.AppointmentsProvider.AddAppointmentOperation AddAppointmentOperation()
	{
		Windows.ApplicationModel.Appointments.AppointmentsProvider.AddAppointmentOperation _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IAppointmentsProviderAddAppointmentActivatedEventArgs).get_AddAppointmentOperation(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIAppointmentsProviderRemoveAppointmentActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderRemoveAppointmentActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.ApplicationModel.Appointments.AppointmentsProvider.RemoveAppointmentOperation RemoveAppointmentOperation()
	{
		Windows.ApplicationModel.Appointments.AppointmentsProvider.RemoveAppointmentOperation _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IAppointmentsProviderRemoveAppointmentActivatedEventArgs).get_RemoveAppointmentOperation(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIAppointmentsProviderReplaceAppointmentActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderReplaceAppointmentActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.ApplicationModel.Appointments.AppointmentsProvider.ReplaceAppointmentOperation ReplaceAppointmentOperation()
	{
		Windows.ApplicationModel.Appointments.AppointmentsProvider.ReplaceAppointmentOperation _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IAppointmentsProviderReplaceAppointmentActivatedEventArgs).get_ReplaceAppointmentOperation(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIAppointmentsProviderShowAppointmentDetailsActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) InstanceStartDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs).get_InstanceStartDate(&_ret));
		return _ret;
	}
	final HSTRING LocalId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs).get_LocalId(&_ret));
		return _ret;
	}
	final HSTRING RoamingId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs).get_RoamingId(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIAppointmentsProviderShowTimeFrameActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderShowTimeFrameActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Foundation.DateTime TimeToShow()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IAppointmentsProviderShowTimeFrameActivatedEventArgs).get_TimeToShow(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IAppointmentsProviderShowTimeFrameActivatedEventArgs).get_Duration(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIBackgroundTaskInstance
{
}

interface WebUIBackgroundTaskInstanceRuntimeClass : Windows.UI.WebUI.IWebUIBackgroundTaskInstance, Windows.ApplicationModel.Background.IBackgroundTaskInstance
{
extern(Windows):
	final bool Succeeded()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IWebUIBackgroundTaskInstance).get_Succeeded(&_ret));
		return _ret;
	}
	final void Succeeded(bool succeeded)
	{
		Debug.OK(this.as!(Windows.UI.WebUI.IWebUIBackgroundTaskInstance).set_Succeeded(succeeded));
	}
	final GUID InstanceId()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Background.IBackgroundTaskInstance).get_InstanceId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Background.BackgroundTaskRegistration Task()
	{
		Windows.ApplicationModel.Background.BackgroundTaskRegistration _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Background.IBackgroundTaskInstance).get_Task(&_ret));
		return _ret;
	}
	final UINT32 Progress()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Background.IBackgroundTaskInstance).get_Progress(&_ret));
		return _ret;
	}
	final void Progress(UINT32 value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Background.IBackgroundTaskInstance).set_Progress(value));
	}
	final IInspectable TriggerDetails()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Background.IBackgroundTaskInstance).get_TriggerDetails(&_ret));
		return _ret;
	}
	final void removeCanceled(EventRegistrationToken cookie)
	{
		Debug.OK(remove_Canceled(cookie));
	}
	final UINT32 SuspendedCount()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Background.IBackgroundTaskInstance).get_SuspendedCount(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Background.BackgroundTaskDeferral GetDeferral()
	{
		Windows.ApplicationModel.Background.BackgroundTaskDeferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Background.IBackgroundTaskInstance).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface WebUICachedFileUpdaterActivatedEventArgs : Windows.ApplicationModel.Activation.ICachedFileUpdaterActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Storage.Provider.CachedFileUpdaterUI CachedFileUpdaterUI()
	{
		Windows.Storage.Provider.CachedFileUpdaterUI _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.ICachedFileUpdaterActivatedEventArgs).get_CachedFileUpdaterUI(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUICameraSettingsActivatedEventArgs : Windows.ApplicationModel.Activation.ICameraSettingsActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final IInspectable VideoDeviceController()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.ICameraSettingsActivatedEventArgs).get_VideoDeviceController(&_ret));
		return _ret;
	}
	final IInspectable VideoDeviceExtension()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.ICameraSettingsActivatedEventArgs).get_VideoDeviceExtension(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIContactCallActivatedEventArgs : Windows.ApplicationModel.Activation.IContactCallActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final HSTRING ServiceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactCallActivatedEventArgs).get_ServiceId(&_ret));
		return _ret;
	}
	final HSTRING ServiceUserId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactCallActivatedEventArgs).get_ServiceUserId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.Contact Contact()
	{
		Windows.ApplicationModel.Contacts.Contact _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactCallActivatedEventArgs).get_Contact(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactActivatedEventArgs).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIContactMapActivatedEventArgs : Windows.ApplicationModel.Activation.IContactMapActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.ContactAddress Address()
	{
		Windows.ApplicationModel.Contacts.ContactAddress _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactMapActivatedEventArgs).get_Address(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.Contact Contact()
	{
		Windows.ApplicationModel.Contacts.Contact _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactMapActivatedEventArgs).get_Contact(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactActivatedEventArgs).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIContactMessageActivatedEventArgs : Windows.ApplicationModel.Activation.IContactMessageActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final HSTRING ServiceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactMessageActivatedEventArgs).get_ServiceId(&_ret));
		return _ret;
	}
	final HSTRING ServiceUserId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactMessageActivatedEventArgs).get_ServiceUserId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.Contact Contact()
	{
		Windows.ApplicationModel.Contacts.Contact _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactMessageActivatedEventArgs).get_Contact(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactActivatedEventArgs).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIContactPanelActivatedEventArgs : Windows.ApplicationModel.Activation.IContactPanelActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.ContactPanel ContactPanel()
	{
		Windows.ApplicationModel.Contacts.ContactPanel _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactPanelActivatedEventArgs).get_ContactPanel(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.Contact Contact()
	{
		Windows.ApplicationModel.Contacts.Contact _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactPanelActivatedEventArgs).get_Contact(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIContactPickerActivatedEventArgs : Windows.ApplicationModel.Activation.IContactPickerActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.Provider.ContactPickerUI ContactPickerUI()
	{
		Windows.ApplicationModel.Contacts.Provider.ContactPickerUI _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactPickerActivatedEventArgs).get_ContactPickerUI(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIContactPostActivatedEventArgs : Windows.ApplicationModel.Activation.IContactPostActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final HSTRING ServiceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactPostActivatedEventArgs).get_ServiceId(&_ret));
		return _ret;
	}
	final HSTRING ServiceUserId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactPostActivatedEventArgs).get_ServiceUserId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.Contact Contact()
	{
		Windows.ApplicationModel.Contacts.Contact _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactPostActivatedEventArgs).get_Contact(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactActivatedEventArgs).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIContactVideoCallActivatedEventArgs : Windows.ApplicationModel.Activation.IContactVideoCallActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final HSTRING ServiceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactVideoCallActivatedEventArgs).get_ServiceId(&_ret));
		return _ret;
	}
	final HSTRING ServiceUserId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactVideoCallActivatedEventArgs).get_ServiceUserId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.Contact Contact()
	{
		Windows.ApplicationModel.Contacts.Contact _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactVideoCallActivatedEventArgs).get_Contact(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContactActivatedEventArgs).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIDeviceActivatedEventArgs : Windows.ApplicationModel.Activation.IDeviceActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final HSTRING DeviceInformationId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IDeviceActivatedEventArgs).get_DeviceInformationId(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IDeviceActivatedEventArgs).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIDevicePairingActivatedEventArgs : Windows.ApplicationModel.Activation.IDevicePairingActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Devices.Enumeration.DeviceInformation DeviceInformation()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IDevicePairingActivatedEventArgs).get_DeviceInformation(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIDialReceiverActivatedEventArgs : Windows.ApplicationModel.Activation.IDialReceiverActivatedEventArgs, Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final HSTRING AppName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IDialReceiverActivatedEventArgs).get_AppName(&_ret));
		return _ret;
	}
	final HSTRING Arguments()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs).get_Arguments(&_ret));
		return _ret;
	}
	final HSTRING TileId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs).get_TileId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIFileActivatedEventArgs : Windows.ApplicationModel.Activation.IFileActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IFileActivatedEventArgsWithNeighboringFiles, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem) Files()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IFileActivatedEventArgs).get_Files(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IFileActivatedEventArgs).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.Storage.Search.StorageFileQueryResult NeighboringFilesQuery()
	{
		Windows.Storage.Search.StorageFileQueryResult _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IFileActivatedEventArgsWithNeighboringFiles).get_NeighboringFilesQuery(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIFileOpenPickerActivatedEventArgs : Windows.ApplicationModel.Activation.IFileOpenPickerActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IFileOpenPickerActivatedEventArgs2, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Storage.Pickers.Provider.FileOpenPickerUI FileOpenPickerUI()
	{
		Windows.Storage.Pickers.Provider.FileOpenPickerUI _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IFileOpenPickerActivatedEventArgs).get_FileOpenPickerUI(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final HSTRING CallerPackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IFileOpenPickerActivatedEventArgs2).get_CallerPackageFamilyName(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIFileOpenPickerContinuationEventArgs : Windows.ApplicationModel.Activation.IFileOpenPickerContinuationEventArgs, Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile) Files()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IFileOpenPickerContinuationEventArgs).get_Files(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet ContinuationData()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs).get_ContinuationData(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIFileSavePickerActivatedEventArgs : Windows.ApplicationModel.Activation.IFileSavePickerActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IFileSavePickerActivatedEventArgs2, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Storage.Pickers.Provider.FileSavePickerUI FileSavePickerUI()
	{
		Windows.Storage.Pickers.Provider.FileSavePickerUI _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IFileSavePickerActivatedEventArgs).get_FileSavePickerUI(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final HSTRING CallerPackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IFileSavePickerActivatedEventArgs2).get_CallerPackageFamilyName(&_ret));
		return _ret;
	}
	final HSTRING EnterpriseId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IFileSavePickerActivatedEventArgs2).get_EnterpriseId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIFileSavePickerContinuationEventArgs : Windows.ApplicationModel.Activation.IFileSavePickerContinuationEventArgs, Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Storage.StorageFile File()
	{
		Windows.Storage.StorageFile _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IFileSavePickerContinuationEventArgs).get_File(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet ContinuationData()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs).get_ContinuationData(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIFolderPickerContinuationEventArgs : Windows.ApplicationModel.Activation.IFolderPickerContinuationEventArgs, Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Storage.StorageFolder Folder()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IFolderPickerContinuationEventArgs).get_Folder(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet ContinuationData()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs).get_ContinuationData(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUILaunchActivatedEventArgs : Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IPrelaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final HSTRING Arguments()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs).get_Arguments(&_ret));
		return _ret;
	}
	final HSTRING TileId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs).get_TileId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final bool PrelaunchActivated()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IPrelaunchActivatedEventArgs).get_PrelaunchActivated(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUILockScreenActivatedEventArgs : Windows.ApplicationModel.Activation.ILockScreenActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final IInspectable Info()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.ILockScreenActivatedEventArgs).get_Info(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUILockScreenCallActivatedEventArgs : Windows.ApplicationModel.Activation.ILockScreenCallActivatedEventArgs, Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.ApplicationModel.Calls.LockScreenCallUI CallUI()
	{
		Windows.ApplicationModel.Calls.LockScreenCallUI _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.ILockScreenCallActivatedEventArgs).get_CallUI(&_ret));
		return _ret;
	}
	final HSTRING Arguments()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs).get_Arguments(&_ret));
		return _ret;
	}
	final HSTRING TileId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs).get_TileId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUILockScreenComponentActivatedEventArgs : Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUINavigatedDeferral : Windows.UI.WebUI.IWebUINavigatedDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.UI.WebUI.IWebUINavigatedDeferral).abi_Complete());
	}
}

interface WebUINavigatedEventArgs : Windows.UI.WebUI.IWebUINavigatedEventArgs
{
extern(Windows):
	final Windows.UI.WebUI.WebUINavigatedOperation NavigatedOperation()
	{
		Windows.UI.WebUI.WebUINavigatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IWebUINavigatedEventArgs).get_NavigatedOperation(&_ret));
		return _ret;
	}
}

interface WebUINavigatedOperation : Windows.UI.WebUI.IWebUINavigatedOperation
{
extern(Windows):
	final Windows.UI.WebUI.WebUINavigatedDeferral GetDeferral()
	{
		Windows.UI.WebUI.WebUINavigatedDeferral _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IWebUINavigatedOperation).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface WebUIPrint3DWorkflowActivatedEventArgs : Windows.ApplicationModel.Activation.IPrint3DWorkflowActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.Devices.Printers.Extensions.Print3DWorkflow Workflow()
	{
		Windows.Devices.Printers.Extensions.Print3DWorkflow _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IPrint3DWorkflowActivatedEventArgs).get_Workflow(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIPrintTaskSettingsActivatedEventArgs : Windows.ApplicationModel.Activation.IPrintTaskSettingsActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.Devices.Printers.Extensions.PrintTaskConfiguration Configuration()
	{
		Windows.Devices.Printers.Extensions.PrintTaskConfiguration _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IPrintTaskSettingsActivatedEventArgs).get_Configuration(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIPrintWorkflowForegroundTaskActivatedEventArgs : Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIProtocolActivatedEventArgs : Windows.ApplicationModel.Activation.IProtocolActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IProtocolActivatedEventArgs).get_Uri(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final HSTRING CallerPackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData).get_CallerPackageFamilyName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet Data()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData).get_Data(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIProtocolForResultsActivatedEventArgs : Windows.ApplicationModel.Activation.IProtocolForResultsActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IProtocolActivatedEventArgs, Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.System.ProtocolForResultsOperation ProtocolForResultsOperation()
	{
		Windows.System.ProtocolForResultsOperation _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IProtocolForResultsActivatedEventArgs).get_ProtocolForResultsOperation(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IProtocolActivatedEventArgs).get_Uri(&_ret));
		return _ret;
	}
	final HSTRING CallerPackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData).get_CallerPackageFamilyName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet Data()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData).get_Data(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIRestrictedLaunchActivatedEventArgs : Windows.ApplicationModel.Activation.IRestrictedLaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final IInspectable SharedContext()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IRestrictedLaunchActivatedEventArgs).get_SharedContext(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUISearchActivatedEventArgs : Windows.ApplicationModel.Activation.ISearchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.ISearchActivatedEventArgsWithLinguisticDetails, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final HSTRING QueryText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.ISearchActivatedEventArgs).get_QueryText(&_ret));
		return _ret;
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.ISearchActivatedEventArgs).get_Language(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails LinguisticDetails()
	{
		Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.ISearchActivatedEventArgsWithLinguisticDetails).get_LinguisticDetails(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIShareTargetActivatedEventArgs : Windows.ApplicationModel.Activation.IShareTargetActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.ApplicationModel.DataTransfer.ShareTarget.ShareOperation ShareOperation()
	{
		Windows.ApplicationModel.DataTransfer.ShareTarget.ShareOperation _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IShareTargetActivatedEventArgs).get_ShareOperation(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIToastNotificationActivatedEventArgs : Windows.ApplicationModel.Activation.IToastNotificationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final HSTRING Argument()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IToastNotificationActivatedEventArgs).get_Argument(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet UserInput()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IToastNotificationActivatedEventArgs).get_UserInput(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIUserDataAccountProviderActivatedEventArgs : Windows.ApplicationModel.Activation.IUserDataAccountProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderOperation Operation()
	{
		Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderOperation _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IUserDataAccountProviderActivatedEventArgs).get_Operation(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIVoiceCommandActivatedEventArgs : Windows.ApplicationModel.Activation.IVoiceCommandActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Media.SpeechRecognition.SpeechRecognitionResult Result()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionResult _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IVoiceCommandActivatedEventArgs).get_Result(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIWalletActionActivatedEventArgs : Windows.ApplicationModel.Activation.IWalletActionActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final HSTRING ItemId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IWalletActionActivatedEventArgs).get_ItemId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Wallet.WalletActionKind ActionKind()
	{
		Windows.ApplicationModel.Wallet.WalletActionKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IWalletActionActivatedEventArgs).get_ActionKind(&_ret));
		return _ret;
	}
	final HSTRING ActionId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IWalletActionActivatedEventArgs).get_ActionId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIWebAccountProviderActivatedEventArgs : Windows.ApplicationModel.Activation.IWebAccountProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Security.Authentication.Web.Provider.IWebAccountProviderOperation Operation()
	{
		Windows.Security.Authentication.Web.Provider.IWebAccountProviderOperation _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IWebAccountProviderActivatedEventArgs).get_Operation(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser).get_User(&_ret));
		return _ret;
	}
}

interface WebUIWebAuthenticationBrokerContinuationEventArgs : Windows.ApplicationModel.Activation.IWebAuthenticationBrokerContinuationEventArgs, Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.Security.Authentication.Web.WebAuthenticationResult WebAuthenticationResult()
	{
		Windows.Security.Authentication.Web.WebAuthenticationResult _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IWebAuthenticationBrokerContinuationEventArgs).get_WebAuthenticationResult(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet ContinuationData()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs).get_ContinuationData(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Activation.IActivatedEventArgs).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK(this.as!(Windows.UI.WebUI.IActivatedEventArgsDeferral).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

enum PrintContent
{
	AllPages = 0,
	CurrentPage = 1,
	CustomPageRange = 2,
	CurrentSelection = 3
}