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
		Debug.OK((cast(Windows.UI.WebUI.IActivatedDeferral)this.asInterface(uuid("c3bd1978-a431-49d8-a76a-395a4e03dcf3"))).abi_Complete());
	}
}

interface ActivatedOperation : Windows.UI.WebUI.IActivatedOperation
{
extern(Windows):
	final Windows.UI.WebUI.ActivatedDeferral GetDeferral()
	{
		Windows.UI.WebUI.ActivatedDeferral _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedOperation)this.asInterface(uuid("b6a0b4bc-c6ca-42fd-9818-71904e45fed7"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EnteredBackgroundEventArgs : Windows.ApplicationModel.IEnteredBackgroundEventArgs
{
extern(Windows):
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.ApplicationModel.IEnteredBackgroundEventArgs)this.asInterface(uuid("f722dcc2-9827-403d-aaed-ecca9ac17398"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface HtmlPrintDocumentSource : Windows.UI.WebUI.IHtmlPrintDocumentSource, Windows.Graphics.Printing.IPrintDocumentSource, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.UI.WebUI.PrintContent Content()
	{
		Windows.UI.WebUI.PrintContent _ret;
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).get_Content(&_ret));
		return _ret;
	}
	final void Content(Windows.UI.WebUI.PrintContent value)
	{
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).set_Content(value));
	}
	final float LeftMargin()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).get_LeftMargin(&_ret));
		return _ret;
	}
	final void LeftMargin(float value)
	{
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).set_LeftMargin(value));
	}
	final float TopMargin()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).get_TopMargin(&_ret));
		return _ret;
	}
	final void TopMargin(float value)
	{
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).set_TopMargin(value));
	}
	final float RightMargin()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).get_RightMargin(&_ret));
		return _ret;
	}
	final void RightMargin(float value)
	{
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).set_RightMargin(value));
	}
	final float BottomMargin()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).get_BottomMargin(&_ret));
		return _ret;
	}
	final void BottomMargin(float value)
	{
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).set_BottomMargin(value));
	}
	final bool EnableHeaderFooter()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).get_EnableHeaderFooter(&_ret));
		return _ret;
	}
	final void EnableHeaderFooter(bool value)
	{
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).set_EnableHeaderFooter(value));
	}
	final bool ShrinkToFit()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).get_ShrinkToFit(&_ret));
		return _ret;
	}
	final void ShrinkToFit(bool value)
	{
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).set_ShrinkToFit(value));
	}
	final float PercentScale()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).get_PercentScale(&_ret));
		return _ret;
	}
	final void PercentScale(float scalePercent)
	{
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).set_PercentScale(scalePercent));
	}
	final HSTRING PageRange()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).get_PageRange(&_ret));
		return _ret;
	}
	final bool TrySetPageRange(HSTRING strPageRange)
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.WebUI.IHtmlPrintDocumentSource)this.asInterface(uuid("cea6469a-0e05-467a-abc9-36ec1d4cdcb6"))).abi_TrySetPageRange(strPageRange, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
}

interface LeavingBackgroundEventArgs : Windows.ApplicationModel.ILeavingBackgroundEventArgs
{
extern(Windows):
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.ApplicationModel.ILeavingBackgroundEventArgs)this.asInterface(uuid("39c6ec9a-ae6e-46f9-a07a-cfc23f88733e"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface SuspendingDeferral : Windows.ApplicationModel.ISuspendingDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.ApplicationModel.ISuspendingDeferral)this.asInterface(uuid("59140509-8bc9-4eb4-b636-dabdc4f46f66"))).abi_Complete());
	}
}

interface SuspendingEventArgs : Windows.ApplicationModel.ISuspendingEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.SuspendingOperation SuspendingOperation()
	{
		Windows.ApplicationModel.SuspendingOperation _ret;
		Debug.OK((cast(Windows.ApplicationModel.ISuspendingEventArgs)this.asInterface(uuid("96061c05-2dba-4d08-b0bd-2b30a131c6aa"))).get_SuspendingOperation(&_ret));
		return _ret;
	}
}

interface SuspendingOperation : Windows.ApplicationModel.ISuspendingOperation
{
extern(Windows):
	final Windows.ApplicationModel.SuspendingDeferral GetDeferral()
	{
		Windows.ApplicationModel.SuspendingDeferral _ret;
		Debug.OK((cast(Windows.ApplicationModel.ISuspendingOperation)this.asInterface(uuid("9da4ca41-20e1-4e9b-9f65-a9f435340c3a"))).abi_GetDeferral(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Deadline()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.ISuspendingOperation)this.asInterface(uuid("9da4ca41-20e1-4e9b-9f65-a9f435340c3a"))).get_Deadline(&_ret));
		return _ret;
	}
}

interface WebUIApplication
{
	private static Windows.UI.WebUI.IWebUIActivationStatics _staticInstance;
	public static Windows.UI.WebUI.IWebUIActivationStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.WebUI.IWebUIActivationStatics);
		return _staticInstance;
	}
	static EventRegistrationToken OnActivated(void delegate(IInspectable, Windows.ApplicationModel.Activation.IActivatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_Activated(event!(Windows.UI.WebUI.ActivatedEventHandler, IInspectable, Windows.ApplicationModel.Activation.IActivatedEventArgs)(fn), &tok));
		return tok;
	}
	static void removeActivated(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_Activated(token));
	}
	static EventRegistrationToken OnSuspending(void delegate(IInspectable, Windows.ApplicationModel.ISuspendingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_Suspending(event!(Windows.UI.WebUI.SuspendingEventHandler, IInspectable, Windows.ApplicationModel.ISuspendingEventArgs)(fn), &tok));
		return tok;
	}
	static void removeSuspending(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_Suspending(token));
	}
	static EventRegistrationToken OnResuming(void delegate(IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_Resuming(event!(Windows.UI.WebUI.ResumingEventHandler, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeResuming(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_Resuming(token));
	}
	static EventRegistrationToken OnNavigated(void delegate(IInspectable, Windows.UI.WebUI.IWebUINavigatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_Navigated(event!(Windows.UI.WebUI.NavigatedEventHandler, IInspectable, Windows.UI.WebUI.IWebUINavigatedEventArgs)(fn), &tok));
		return tok;
	}
	static void removeNavigated(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_Navigated(token));
	}
}

interface WebUIAppointmentsProviderAddAppointmentActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderAddAppointmentActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.ApplicationModel.Appointments.AppointmentsProvider.AddAppointmentOperation AddAppointmentOperation()
	{
		Windows.ApplicationModel.Appointments.AppointmentsProvider.AddAppointmentOperation _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IAppointmentsProviderAddAppointmentActivatedEventArgs)this.asInterface(uuid("a2861367-cee5-4e4d-9ed7-41c34ec18b02"))).get_AddAppointmentOperation(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs)this.asInterface(uuid("3364c405-933c-4e7d-a034-500fb8dcd9f3"))).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIAppointmentsProviderRemoveAppointmentActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderRemoveAppointmentActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.ApplicationModel.Appointments.AppointmentsProvider.RemoveAppointmentOperation RemoveAppointmentOperation()
	{
		Windows.ApplicationModel.Appointments.AppointmentsProvider.RemoveAppointmentOperation _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IAppointmentsProviderRemoveAppointmentActivatedEventArgs)this.asInterface(uuid("751f3ab8-0b8e-451c-9f15-966e699bac25"))).get_RemoveAppointmentOperation(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs)this.asInterface(uuid("3364c405-933c-4e7d-a034-500fb8dcd9f3"))).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIAppointmentsProviderReplaceAppointmentActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderReplaceAppointmentActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.ApplicationModel.Appointments.AppointmentsProvider.ReplaceAppointmentOperation ReplaceAppointmentOperation()
	{
		Windows.ApplicationModel.Appointments.AppointmentsProvider.ReplaceAppointmentOperation _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IAppointmentsProviderReplaceAppointmentActivatedEventArgs)this.asInterface(uuid("1551b7d4-a981-4067-8a62-0524e4ade121"))).get_ReplaceAppointmentOperation(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs)this.asInterface(uuid("3364c405-933c-4e7d-a034-500fb8dcd9f3"))).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIAppointmentsProviderShowAppointmentDetailsActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) InstanceStartDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs)this.asInterface(uuid("3958f065-9841-4ca5-999b-885198b9ef2a"))).get_InstanceStartDate(&_ret));
		return _ret;
	}
	final HSTRING LocalId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs)this.asInterface(uuid("3958f065-9841-4ca5-999b-885198b9ef2a"))).get_LocalId(&_ret));
		return _ret;
	}
	final HSTRING RoamingId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IAppointmentsProviderShowAppointmentDetailsActivatedEventArgs)this.asInterface(uuid("3958f065-9841-4ca5-999b-885198b9ef2a"))).get_RoamingId(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs)this.asInterface(uuid("3364c405-933c-4e7d-a034-500fb8dcd9f3"))).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIAppointmentsProviderShowTimeFrameActivatedEventArgs : Windows.ApplicationModel.Activation.IAppointmentsProviderShowTimeFrameActivatedEventArgs, Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Foundation.DateTime TimeToShow()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IAppointmentsProviderShowTimeFrameActivatedEventArgs)this.asInterface(uuid("9baeaba6-0e0b-49aa-babc-12b1dc774986"))).get_TimeToShow(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IAppointmentsProviderShowTimeFrameActivatedEventArgs)this.asInterface(uuid("9baeaba6-0e0b-49aa-babc-12b1dc774986"))).get_Duration(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IAppointmentsProviderActivatedEventArgs)this.asInterface(uuid("3364c405-933c-4e7d-a034-500fb8dcd9f3"))).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIBackgroundTaskInstance
{
	private static Windows.UI.WebUI.IWebUIBackgroundTaskInstanceStatics _staticInstance;
	public static Windows.UI.WebUI.IWebUIBackgroundTaskInstanceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.WebUI.IWebUIBackgroundTaskInstanceStatics);
		return _staticInstance;
	}
	static Windows.UI.WebUI.IWebUIBackgroundTaskInstance Current()
	{
		Windows.UI.WebUI.IWebUIBackgroundTaskInstance _ret;
		Debug.OK(staticInstance.get_Current(&_ret));
		return _ret;
	}
}

interface WebUIBackgroundTaskInstanceRuntimeClass : Windows.UI.WebUI.IWebUIBackgroundTaskInstance, Windows.ApplicationModel.Background.IBackgroundTaskInstance
{
extern(Windows):
	final bool Succeeded()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.WebUI.IWebUIBackgroundTaskInstance)this.asInterface(uuid("23f12c25-e2f7-4741-bc9c-394595de24dc"))).get_Succeeded(&_ret));
		return _ret;
	}
	final void Succeeded(bool succeeded)
	{
		Debug.OK((cast(Windows.UI.WebUI.IWebUIBackgroundTaskInstance)this.asInterface(uuid("23f12c25-e2f7-4741-bc9c-394595de24dc"))).set_Succeeded(succeeded));
	}
	final GUID InstanceId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskInstance)this.asInterface(uuid("865bda7a-21d8-4573-8f32-928a1b0641f6"))).get_InstanceId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Background.BackgroundTaskRegistration Task()
	{
		Windows.ApplicationModel.Background.BackgroundTaskRegistration _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskInstance)this.asInterface(uuid("865bda7a-21d8-4573-8f32-928a1b0641f6"))).get_Task(&_ret));
		return _ret;
	}
	final UINT32 Progress()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskInstance)this.asInterface(uuid("865bda7a-21d8-4573-8f32-928a1b0641f6"))).get_Progress(&_ret));
		return _ret;
	}
	final void Progress(UINT32 value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskInstance)this.asInterface(uuid("865bda7a-21d8-4573-8f32-928a1b0641f6"))).set_Progress(value));
	}
	final IInspectable TriggerDetails()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskInstance)this.asInterface(uuid("865bda7a-21d8-4573-8f32-928a1b0641f6"))).get_TriggerDetails(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnCanceled(void delegate(Windows.ApplicationModel.Background.IBackgroundTaskInstance, Windows.ApplicationModel.Background.BackgroundTaskCancellationReason) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskInstance)this.asInterface(uuid("865bda7a-21d8-4573-8f32-928a1b0641f6"))).add_Canceled(event!(Windows.ApplicationModel.Background.BackgroundTaskCanceledEventHandler, Windows.ApplicationModel.Background.IBackgroundTaskInstance, Windows.ApplicationModel.Background.BackgroundTaskCancellationReason)(fn), &tok));
		return tok;
	}
	final void removeCanceled(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskInstance)this.asInterface(uuid("865bda7a-21d8-4573-8f32-928a1b0641f6"))).remove_Canceled(cookie));
	}
	final UINT32 SuspendedCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskInstance)this.asInterface(uuid("865bda7a-21d8-4573-8f32-928a1b0641f6"))).get_SuspendedCount(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Background.BackgroundTaskDeferral GetDeferral()
	{
		Windows.ApplicationModel.Background.BackgroundTaskDeferral _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskInstance)this.asInterface(uuid("865bda7a-21d8-4573-8f32-928a1b0641f6"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface WebUICachedFileUpdaterActivatedEventArgs : Windows.ApplicationModel.Activation.ICachedFileUpdaterActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Storage.Provider.CachedFileUpdaterUI CachedFileUpdaterUI()
	{
		Windows.Storage.Provider.CachedFileUpdaterUI _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.ICachedFileUpdaterActivatedEventArgs)this.asInterface(uuid("d06eb1c7-3805-4ecb-b757-6cf15e26fef3"))).get_CachedFileUpdaterUI(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUICameraSettingsActivatedEventArgs : Windows.ApplicationModel.Activation.ICameraSettingsActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final IInspectable VideoDeviceController()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.ICameraSettingsActivatedEventArgs)this.asInterface(uuid("fb67a508-2dad-490a-9170-dca036eb114b"))).get_VideoDeviceController(&_ret));
		return _ret;
	}
	final IInspectable VideoDeviceExtension()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.ICameraSettingsActivatedEventArgs)this.asInterface(uuid("fb67a508-2dad-490a-9170-dca036eb114b"))).get_VideoDeviceExtension(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIContactCallActivatedEventArgs : Windows.ApplicationModel.Activation.IContactCallActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final HSTRING ServiceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactCallActivatedEventArgs)this.asInterface(uuid("c2df14c7-30eb-41c6-b3bc-5b1694f9dab3"))).get_ServiceId(&_ret));
		return _ret;
	}
	final HSTRING ServiceUserId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactCallActivatedEventArgs)this.asInterface(uuid("c2df14c7-30eb-41c6-b3bc-5b1694f9dab3"))).get_ServiceUserId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.Contact Contact()
	{
		Windows.ApplicationModel.Contacts.Contact _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactCallActivatedEventArgs)this.asInterface(uuid("c2df14c7-30eb-41c6-b3bc-5b1694f9dab3"))).get_Contact(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactActivatedEventArgs)this.asInterface(uuid("d627a1c4-c025-4c41-9def-f1eafad075e7"))).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIContactMapActivatedEventArgs : Windows.ApplicationModel.Activation.IContactMapActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.ContactAddress Address()
	{
		Windows.ApplicationModel.Contacts.ContactAddress _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactMapActivatedEventArgs)this.asInterface(uuid("b32bf870-eee7-4ad2-aaf1-a87effcf00a4"))).get_Address(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.Contact Contact()
	{
		Windows.ApplicationModel.Contacts.Contact _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactMapActivatedEventArgs)this.asInterface(uuid("b32bf870-eee7-4ad2-aaf1-a87effcf00a4"))).get_Contact(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactActivatedEventArgs)this.asInterface(uuid("d627a1c4-c025-4c41-9def-f1eafad075e7"))).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIContactMessageActivatedEventArgs : Windows.ApplicationModel.Activation.IContactMessageActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final HSTRING ServiceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactMessageActivatedEventArgs)this.asInterface(uuid("de598db2-0e03-43b0-bf56-bcc40b3162df"))).get_ServiceId(&_ret));
		return _ret;
	}
	final HSTRING ServiceUserId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactMessageActivatedEventArgs)this.asInterface(uuid("de598db2-0e03-43b0-bf56-bcc40b3162df"))).get_ServiceUserId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.Contact Contact()
	{
		Windows.ApplicationModel.Contacts.Contact _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactMessageActivatedEventArgs)this.asInterface(uuid("de598db2-0e03-43b0-bf56-bcc40b3162df"))).get_Contact(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactActivatedEventArgs)this.asInterface(uuid("d627a1c4-c025-4c41-9def-f1eafad075e7"))).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIContactPanelActivatedEventArgs : Windows.ApplicationModel.Activation.IContactPanelActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.ContactPanel ContactPanel()
	{
		Windows.ApplicationModel.Contacts.ContactPanel _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactPanelActivatedEventArgs)this.asInterface(uuid("52bb63e4-d3d4-4b63-8051-4af2082cab80"))).get_ContactPanel(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.Contact Contact()
	{
		Windows.ApplicationModel.Contacts.Contact _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactPanelActivatedEventArgs)this.asInterface(uuid("52bb63e4-d3d4-4b63-8051-4af2082cab80"))).get_Contact(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIContactPickerActivatedEventArgs : Windows.ApplicationModel.Activation.IContactPickerActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.ApplicationModel.Contacts.Provider.ContactPickerUI ContactPickerUI()
	{
		Windows.ApplicationModel.Contacts.Provider.ContactPickerUI _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactPickerActivatedEventArgs)this.asInterface(uuid("ce57aae7-6449-45a7-971f-d113be7a8936"))).get_ContactPickerUI(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIContactPostActivatedEventArgs : Windows.ApplicationModel.Activation.IContactPostActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final HSTRING ServiceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactPostActivatedEventArgs)this.asInterface(uuid("b35a3c67-f1e7-4655-ad6e-4857588f552f"))).get_ServiceId(&_ret));
		return _ret;
	}
	final HSTRING ServiceUserId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactPostActivatedEventArgs)this.asInterface(uuid("b35a3c67-f1e7-4655-ad6e-4857588f552f"))).get_ServiceUserId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.Contact Contact()
	{
		Windows.ApplicationModel.Contacts.Contact _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactPostActivatedEventArgs)this.asInterface(uuid("b35a3c67-f1e7-4655-ad6e-4857588f552f"))).get_Contact(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactActivatedEventArgs)this.asInterface(uuid("d627a1c4-c025-4c41-9def-f1eafad075e7"))).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIContactVideoCallActivatedEventArgs : Windows.ApplicationModel.Activation.IContactVideoCallActivatedEventArgs, Windows.ApplicationModel.Activation.IContactActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final HSTRING ServiceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactVideoCallActivatedEventArgs)this.asInterface(uuid("61079db8-e3e7-4b4f-858d-5c63a96ef684"))).get_ServiceId(&_ret));
		return _ret;
	}
	final HSTRING ServiceUserId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactVideoCallActivatedEventArgs)this.asInterface(uuid("61079db8-e3e7-4b4f-858d-5c63a96ef684"))).get_ServiceUserId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Contacts.Contact Contact()
	{
		Windows.ApplicationModel.Contacts.Contact _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactVideoCallActivatedEventArgs)this.asInterface(uuid("61079db8-e3e7-4b4f-858d-5c63a96ef684"))).get_Contact(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContactActivatedEventArgs)this.asInterface(uuid("d627a1c4-c025-4c41-9def-f1eafad075e7"))).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIDeviceActivatedEventArgs : Windows.ApplicationModel.Activation.IDeviceActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final HSTRING DeviceInformationId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IDeviceActivatedEventArgs)this.asInterface(uuid("cd50b9a9-ce10-44d2-8234-c355a073ef33"))).get_DeviceInformationId(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IDeviceActivatedEventArgs)this.asInterface(uuid("cd50b9a9-ce10-44d2-8234-c355a073ef33"))).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs)this.asInterface(uuid("930cef4b-b829-40fc-88f4-8513e8a64738"))).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIDevicePairingActivatedEventArgs : Windows.ApplicationModel.Activation.IDevicePairingActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Devices.Enumeration.DeviceInformation DeviceInformation()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IDevicePairingActivatedEventArgs)this.asInterface(uuid("eba0d1e4-ecc6-4148-94ed-f4b37ec05b3e"))).get_DeviceInformation(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIDialReceiverActivatedEventArgs : Windows.ApplicationModel.Activation.IDialReceiverActivatedEventArgs, Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final HSTRING AppName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IDialReceiverActivatedEventArgs)this.asInterface(uuid("fb777ed7-85ee-456e-a44d-85d730e70aed"))).get_AppName(&_ret));
		return _ret;
	}
	final HSTRING Arguments()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs)this.asInterface(uuid("fbc93e26-a14a-4b4f-82b0-33bed920af52"))).get_Arguments(&_ret));
		return _ret;
	}
	final HSTRING TileId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs)this.asInterface(uuid("fbc93e26-a14a-4b4f-82b0-33bed920af52"))).get_TileId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs)this.asInterface(uuid("930cef4b-b829-40fc-88f4-8513e8a64738"))).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIFileActivatedEventArgs : Windows.ApplicationModel.Activation.IFileActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IFileActivatedEventArgsWithNeighboringFiles, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem) Files()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IFileActivatedEventArgs)this.asInterface(uuid("bb2afc33-93b1-42ed-8b26-236dd9c78496"))).get_Files(&_ret));
		return _ret;
	}
	final HSTRING Verb()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IFileActivatedEventArgs)this.asInterface(uuid("bb2afc33-93b1-42ed-8b26-236dd9c78496"))).get_Verb(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs)this.asInterface(uuid("930cef4b-b829-40fc-88f4-8513e8a64738"))).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.Storage.Search.StorageFileQueryResult NeighboringFilesQuery()
	{
		Windows.Storage.Search.StorageFileQueryResult _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IFileActivatedEventArgsWithNeighboringFiles)this.asInterface(uuid("433ba1a4-e1e2-48fd-b7fc-b5d6eee65033"))).get_NeighboringFilesQuery(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIFileOpenPickerActivatedEventArgs : Windows.ApplicationModel.Activation.IFileOpenPickerActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IFileOpenPickerActivatedEventArgs2, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Storage.Pickers.Provider.FileOpenPickerUI FileOpenPickerUI()
	{
		Windows.Storage.Pickers.Provider.FileOpenPickerUI _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IFileOpenPickerActivatedEventArgs)this.asInterface(uuid("72827082-5525-4bf2-bc09-1f5095d4964d"))).get_FileOpenPickerUI(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final HSTRING CallerPackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IFileOpenPickerActivatedEventArgs2)this.asInterface(uuid("5e731f66-8d1f-45fb-af1d-73205c8fc7a1"))).get_CallerPackageFamilyName(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIFileOpenPickerContinuationEventArgs : Windows.ApplicationModel.Activation.IFileOpenPickerContinuationEventArgs, Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile) Files()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IFileOpenPickerContinuationEventArgs)this.asInterface(uuid("f0fa3f3a-d4e8-4ad3-9c34-2308f32fcec9"))).get_Files(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet ContinuationData()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs)this.asInterface(uuid("e58106b5-155f-4a94-a742-c7e08f4e188c"))).get_ContinuationData(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIFileSavePickerActivatedEventArgs : Windows.ApplicationModel.Activation.IFileSavePickerActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IFileSavePickerActivatedEventArgs2, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Storage.Pickers.Provider.FileSavePickerUI FileSavePickerUI()
	{
		Windows.Storage.Pickers.Provider.FileSavePickerUI _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IFileSavePickerActivatedEventArgs)this.asInterface(uuid("81c19cf1-74e6-4387-82eb-bb8fd64b4346"))).get_FileSavePickerUI(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final HSTRING CallerPackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IFileSavePickerActivatedEventArgs2)this.asInterface(uuid("6b73fe13-2cf2-4d48-8cbc-af67d23f1ce7"))).get_CallerPackageFamilyName(&_ret));
		return _ret;
	}
	final HSTRING EnterpriseId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IFileSavePickerActivatedEventArgs2)this.asInterface(uuid("6b73fe13-2cf2-4d48-8cbc-af67d23f1ce7"))).get_EnterpriseId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIFileSavePickerContinuationEventArgs : Windows.ApplicationModel.Activation.IFileSavePickerContinuationEventArgs, Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Storage.StorageFile File()
	{
		Windows.Storage.StorageFile _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IFileSavePickerContinuationEventArgs)this.asInterface(uuid("2c846fe1-3bad-4f33-8c8b-e46fae824b4b"))).get_File(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet ContinuationData()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs)this.asInterface(uuid("e58106b5-155f-4a94-a742-c7e08f4e188c"))).get_ContinuationData(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIFolderPickerContinuationEventArgs : Windows.ApplicationModel.Activation.IFolderPickerContinuationEventArgs, Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Storage.StorageFolder Folder()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IFolderPickerContinuationEventArgs)this.asInterface(uuid("51882366-9f4b-498f-beb0-42684f6e1c29"))).get_Folder(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet ContinuationData()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs)this.asInterface(uuid("e58106b5-155f-4a94-a742-c7e08f4e188c"))).get_ContinuationData(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUILaunchActivatedEventArgs : Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IPrelaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final HSTRING Arguments()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs)this.asInterface(uuid("fbc93e26-a14a-4b4f-82b0-33bed920af52"))).get_Arguments(&_ret));
		return _ret;
	}
	final HSTRING TileId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs)this.asInterface(uuid("fbc93e26-a14a-4b4f-82b0-33bed920af52"))).get_TileId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final bool PrelaunchActivated()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IPrelaunchActivatedEventArgs)this.asInterface(uuid("0c44717b-19f7-48d6-b046-cf22826eaa74"))).get_PrelaunchActivated(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs)this.asInterface(uuid("930cef4b-b829-40fc-88f4-8513e8a64738"))).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUILockScreenActivatedEventArgs : Windows.ApplicationModel.Activation.ILockScreenActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final IInspectable Info()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.ILockScreenActivatedEventArgs)this.asInterface(uuid("3ca77966-6108-4a41-8220-ee7d133c8532"))).get_Info(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs)this.asInterface(uuid("930cef4b-b829-40fc-88f4-8513e8a64738"))).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUILockScreenCallActivatedEventArgs : Windows.ApplicationModel.Activation.ILockScreenCallActivatedEventArgs, Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.ApplicationModel.Calls.LockScreenCallUI CallUI()
	{
		Windows.ApplicationModel.Calls.LockScreenCallUI _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.ILockScreenCallActivatedEventArgs)this.asInterface(uuid("06f37fbe-b5f2-448b-b13e-e328ac1c516a"))).get_CallUI(&_ret));
		return _ret;
	}
	final HSTRING Arguments()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs)this.asInterface(uuid("fbc93e26-a14a-4b4f-82b0-33bed920af52"))).get_Arguments(&_ret));
		return _ret;
	}
	final HSTRING TileId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.ILaunchActivatedEventArgs)this.asInterface(uuid("fbc93e26-a14a-4b4f-82b0-33bed920af52"))).get_TileId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs)this.asInterface(uuid("930cef4b-b829-40fc-88f4-8513e8a64738"))).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUILockScreenComponentActivatedEventArgs : Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUINavigatedDeferral : Windows.UI.WebUI.IWebUINavigatedDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.UI.WebUI.IWebUINavigatedDeferral)this.asInterface(uuid("d804204d-831f-46e2-b432-3afce211f962"))).abi_Complete());
	}
}

interface WebUINavigatedEventArgs : Windows.UI.WebUI.IWebUINavigatedEventArgs
{
extern(Windows):
	final Windows.UI.WebUI.WebUINavigatedOperation NavigatedOperation()
	{
		Windows.UI.WebUI.WebUINavigatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IWebUINavigatedEventArgs)this.asInterface(uuid("a75841b8-2499-4030-a69d-15d2d9cfe524"))).get_NavigatedOperation(&_ret));
		return _ret;
	}
}

interface WebUINavigatedOperation : Windows.UI.WebUI.IWebUINavigatedOperation
{
extern(Windows):
	final Windows.UI.WebUI.WebUINavigatedDeferral GetDeferral()
	{
		Windows.UI.WebUI.WebUINavigatedDeferral _ret;
		Debug.OK((cast(Windows.UI.WebUI.IWebUINavigatedOperation)this.asInterface(uuid("7a965f08-8182-4a89-ab67-8492e8750d4b"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface WebUIPrint3DWorkflowActivatedEventArgs : Windows.ApplicationModel.Activation.IPrint3DWorkflowActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.Devices.Printers.Extensions.Print3DWorkflow Workflow()
	{
		Windows.Devices.Printers.Extensions.Print3DWorkflow _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IPrint3DWorkflowActivatedEventArgs)this.asInterface(uuid("3f57e78b-f2ac-4619-8302-ef855e1c9b90"))).get_Workflow(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIPrintTaskSettingsActivatedEventArgs : Windows.ApplicationModel.Activation.IPrintTaskSettingsActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.Devices.Printers.Extensions.PrintTaskConfiguration Configuration()
	{
		Windows.Devices.Printers.Extensions.PrintTaskConfiguration _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IPrintTaskSettingsActivatedEventArgs)this.asInterface(uuid("ee30a0c9-ce56-4865-ba8e-8954ac271107"))).get_Configuration(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIPrintWorkflowForegroundTaskActivatedEventArgs : Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIProtocolActivatedEventArgs : Windows.ApplicationModel.Activation.IProtocolActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IProtocolActivatedEventArgs)this.asInterface(uuid("6095f4dd-b7c0-46ab-81fe-d90f36d00d24"))).get_Uri(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final HSTRING CallerPackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData)this.asInterface(uuid("d84a0c12-5c8f-438c-83cb-c28fcc0b2fdb"))).get_CallerPackageFamilyName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet Data()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData)this.asInterface(uuid("d84a0c12-5c8f-438c-83cb-c28fcc0b2fdb"))).get_Data(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs)this.asInterface(uuid("930cef4b-b829-40fc-88f4-8513e8a64738"))).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIProtocolForResultsActivatedEventArgs : Windows.ApplicationModel.Activation.IProtocolForResultsActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.IProtocolActivatedEventArgs, Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.System.ProtocolForResultsOperation ProtocolForResultsOperation()
	{
		Windows.System.ProtocolForResultsOperation _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IProtocolForResultsActivatedEventArgs)this.asInterface(uuid("e75132c2-7ae7-4517-80ac-dbe8d7cc5b9c"))).get_ProtocolForResultsOperation(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IProtocolActivatedEventArgs)this.asInterface(uuid("6095f4dd-b7c0-46ab-81fe-d90f36d00d24"))).get_Uri(&_ret));
		return _ret;
	}
	final HSTRING CallerPackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData)this.asInterface(uuid("d84a0c12-5c8f-438c-83cb-c28fcc0b2fdb"))).get_CallerPackageFamilyName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet Data()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData)this.asInterface(uuid("d84a0c12-5c8f-438c-83cb-c28fcc0b2fdb"))).get_Data(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs)this.asInterface(uuid("930cef4b-b829-40fc-88f4-8513e8a64738"))).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIRestrictedLaunchActivatedEventArgs : Windows.ApplicationModel.Activation.IRestrictedLaunchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final IInspectable SharedContext()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IRestrictedLaunchActivatedEventArgs)this.asInterface(uuid("e0b7ac81-bfc3-4344-a5da-19fd5a27baae"))).get_SharedContext(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUISearchActivatedEventArgs : Windows.ApplicationModel.Activation.ISearchActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.ApplicationModel.Activation.ISearchActivatedEventArgsWithLinguisticDetails, Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final HSTRING QueryText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.ISearchActivatedEventArgs)this.asInterface(uuid("8cb36951-58c8-43e3-94bc-41d33f8b630e"))).get_QueryText(&_ret));
		return _ret;
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.ISearchActivatedEventArgs)this.asInterface(uuid("8cb36951-58c8-43e3-94bc-41d33f8b630e"))).get_Language(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails LinguisticDetails()
	{
		Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.ISearchActivatedEventArgsWithLinguisticDetails)this.asInterface(uuid("c09f33da-08ab-4931-9b7c-451025f21f81"))).get_LinguisticDetails(&_ret));
		return _ret;
	}
	final INT32 CurrentlyShownApplicationViewId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IApplicationViewActivatedEventArgs)this.asInterface(uuid("930cef4b-b829-40fc-88f4-8513e8a64738"))).get_CurrentlyShownApplicationViewId(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIShareTargetActivatedEventArgs : Windows.ApplicationModel.Activation.IShareTargetActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.ApplicationModel.DataTransfer.ShareTarget.ShareOperation ShareOperation()
	{
		Windows.ApplicationModel.DataTransfer.ShareTarget.ShareOperation _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IShareTargetActivatedEventArgs)this.asInterface(uuid("4bdaf9c8-cdb2-4acb-bfc3-6648563378ec"))).get_ShareOperation(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIToastNotificationActivatedEventArgs : Windows.ApplicationModel.Activation.IToastNotificationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final HSTRING Argument()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IToastNotificationActivatedEventArgs)this.asInterface(uuid("92a86f82-5290-431d-be85-c4aaeeb8685f"))).get_Argument(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet UserInput()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IToastNotificationActivatedEventArgs)this.asInterface(uuid("92a86f82-5290-431d-be85-c4aaeeb8685f"))).get_UserInput(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIUserDataAccountProviderActivatedEventArgs : Windows.ApplicationModel.Activation.IUserDataAccountProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderOperation Operation()
	{
		Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderOperation _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IUserDataAccountProviderActivatedEventArgs)this.asInterface(uuid("1bc9f723-8ef1-4a51-a63a-fe711eeab607"))).get_Operation(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIVoiceCommandActivatedEventArgs : Windows.ApplicationModel.Activation.IVoiceCommandActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Media.SpeechRecognition.SpeechRecognitionResult Result()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionResult _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IVoiceCommandActivatedEventArgs)this.asInterface(uuid("ab92dcfd-8d43-4de6-9775-20704b581b00"))).get_Result(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIWalletActionActivatedEventArgs : Windows.ApplicationModel.Activation.IWalletActionActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final HSTRING ItemId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IWalletActionActivatedEventArgs)this.asInterface(uuid("fcfc027b-1a1a-4d22-923f-ae6f45fa52d9"))).get_ItemId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Wallet.WalletActionKind ActionKind()
	{
		Windows.ApplicationModel.Wallet.WalletActionKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IWalletActionActivatedEventArgs)this.asInterface(uuid("fcfc027b-1a1a-4d22-923f-ae6f45fa52d9"))).get_ActionKind(&_ret));
		return _ret;
	}
	final HSTRING ActionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IWalletActionActivatedEventArgs)this.asInterface(uuid("fcfc027b-1a1a-4d22-923f-ae6f45fa52d9"))).get_ActionId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
}

interface WebUIWebAccountProviderActivatedEventArgs : Windows.ApplicationModel.Activation.IWebAccountProviderActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral, Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser
{
extern(Windows):
	final Windows.Security.Authentication.Web.Provider.IWebAccountProviderOperation Operation()
	{
		Windows.Security.Authentication.Web.Provider.IWebAccountProviderOperation _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IWebAccountProviderActivatedEventArgs)this.asInterface(uuid("72b71774-98ea-4ccf-9752-46d9051004f1"))).get_Operation(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgsWithUser)this.asInterface(uuid("1cf09b9e-9962-4936-80ff-afc8e8ae5c8c"))).get_User(&_ret));
		return _ret;
	}
}

interface WebUIWebAuthenticationBrokerContinuationEventArgs : Windows.ApplicationModel.Activation.IWebAuthenticationBrokerContinuationEventArgs, Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs, Windows.ApplicationModel.Activation.IActivatedEventArgs, Windows.UI.WebUI.IActivatedEventArgsDeferral
{
extern(Windows):
	final Windows.Security.Authentication.Web.WebAuthenticationResult WebAuthenticationResult()
	{
		Windows.Security.Authentication.Web.WebAuthenticationResult _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IWebAuthenticationBrokerContinuationEventArgs)this.asInterface(uuid("75dda3d4-7714-453d-b7ff-b95e3a1709da"))).get_WebAuthenticationResult(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet ContinuationData()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IContinuationActivatedEventArgs)this.asInterface(uuid("e58106b5-155f-4a94-a742-c7e08f4e188c"))).get_ContinuationData(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ActivationKind Kind()
	{
		Windows.ApplicationModel.Activation.ActivationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.ApplicationExecutionState PreviousExecutionState()
	{
		Windows.ApplicationModel.Activation.ApplicationExecutionState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_PreviousExecutionState(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Activation.SplashScreen SplashScreen()
	{
		Windows.ApplicationModel.Activation.SplashScreen _ret;
		Debug.OK((cast(Windows.ApplicationModel.Activation.IActivatedEventArgs)this.asInterface(uuid("cf651713-cd08-4fd8-b697-a281b6544e2e"))).get_SplashScreen(&_ret));
		return _ret;
	}
	final Windows.UI.WebUI.ActivatedOperation ActivatedOperation()
	{
		Windows.UI.WebUI.ActivatedOperation _ret;
		Debug.OK((cast(Windows.UI.WebUI.IActivatedEventArgsDeferral)this.asInterface(uuid("ca6d5f74-63c2-44a6-b97b-d9a03c20bc9b"))).get_ActivatedOperation(&_ret));
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