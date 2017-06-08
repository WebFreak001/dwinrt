module Windows.ApplicationModel.Core;

import dwinrt;

@uuid("ef00f07f-2108-490a-877a-8a9f17c25fad")
@WinrtFactory("Windows.ApplicationModel.Core.AppListEntry")
interface IAppListEntry : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DisplayInfo(Windows.ApplicationModel.AppDisplayInfo* return_value);
	HRESULT abi_LaunchAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("0aacf7a4-5e1d-49df-8034-fb6a68bc5ed1")
@WinrtFactory("Windows.ApplicationModel.Core.CoreApplication")
interface ICoreApplication : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT add_Suspending(Windows.Foundation.EventHandler!(Windows.ApplicationModel.SuspendingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Suspending(EventRegistrationToken token);
	HRESULT add_Resuming(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Resuming(EventRegistrationToken token);
	HRESULT get_Properties(Windows.Foundation.Collections.IPropertySet* return_value);
	HRESULT abi_GetCurrentView(Windows.ApplicationModel.Core.CoreApplicationView* return_value);
	HRESULT abi_Run(Windows.ApplicationModel.Core.IFrameworkViewSource viewSource);
	HRESULT abi_RunWithActivationFactories(Windows.Foundation.IGetActivationFactory activationFactoryCallback);
}

@uuid("998681fb-1ab6-4b7f-be4a-9a0645224c04")
@WinrtFactory("Windows.ApplicationModel.Core.CoreApplication")
interface ICoreApplication2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_BackgroundActivated(Windows.Foundation.EventHandler!(Windows.ApplicationModel.Activation.BackgroundActivatedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_BackgroundActivated(EventRegistrationToken token);
	HRESULT add_LeavingBackground(Windows.Foundation.EventHandler!(Windows.ApplicationModel.LeavingBackgroundEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_LeavingBackground(EventRegistrationToken token);
	HRESULT add_EnteredBackground(Windows.Foundation.EventHandler!(Windows.ApplicationModel.EnteredBackgroundEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_EnteredBackground(EventRegistrationToken token);
	HRESULT abi_EnablePrelaunch(bool value);
}

@uuid("cf86461d-261e-4b72-9acd-44ed2ace6a29")
@WinrtFactory("Windows.ApplicationModel.Core.CoreApplication")
interface ICoreApplicationExit : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Exit();
	HRESULT add_Exiting(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Exiting(EventRegistrationToken token);
}

@uuid("f0e24ab0-dd09-42e1-b0bc-e0e131f78d7e")
interface ICoreApplicationUnhandledError : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_UnhandledErrorDetected(Windows.Foundation.EventHandler!(Windows.ApplicationModel.Core.UnhandledErrorDetectedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_UnhandledErrorDetected(EventRegistrationToken token);
}

@uuid("518dc408-c077-475b-809e-0bc0c57e4b74")
@WinrtFactory("Windows.ApplicationModel.Core.CoreApplication")
interface ICoreApplicationUseCount : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_IncrementApplicationUseCount();
	HRESULT abi_DecrementApplicationUseCount();
}

@uuid("638bb2db-451d-4661-b099-414f34ffb9f1")
@WinrtFactory("Windows.ApplicationModel.Core.CoreApplicationView")
interface ICoreApplicationView : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CoreWindow(Windows.UI.Core.CoreWindow* return_value);
	HRESULT add_Activated(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Core.CoreApplicationView*,Windows.ApplicationModel.Activation.IActivatedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_Activated(EventRegistrationToken token);
	HRESULT get_IsMain(bool* return_value);
	HRESULT get_IsHosted(bool* return_value);
}

@uuid("68eb7adf-917f-48eb-9aeb-7de53e086ab1")
@WinrtFactory("Windows.ApplicationModel.Core.CoreApplicationView")
interface ICoreApplicationView2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value);
}

@uuid("07ebe1b3-a4cf-4550-ab70-b07e85330bc8")
@WinrtFactory("Windows.ApplicationModel.Core.CoreApplicationView")
interface ICoreApplicationView3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsComponent(bool* return_value);
	HRESULT get_TitleBar(Windows.ApplicationModel.Core.CoreApplicationViewTitleBar* return_value);
	HRESULT add_HostedViewClosing(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Core.CoreApplicationView*,Windows.ApplicationModel.Core.HostedViewClosingEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_HostedViewClosing(EventRegistrationToken token);
}

@uuid("2bc095a8-8ef0-446d-9e60-3a3e0428c671")
@WinrtFactory("Windows.ApplicationModel.Core.CoreApplicationView")
interface ICoreApplicationView5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Properties(Windows.Foundation.Collections.IPropertySet* return_value);
}

@uuid("006d35e3-e1f1-431b-9508-29b96926ac53")
@WinrtFactory("Windows.ApplicationModel.Core.CoreApplicationViewTitleBar")
interface ICoreApplicationViewTitleBar : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_ExtendViewIntoTitleBar(bool value);
	HRESULT get_ExtendViewIntoTitleBar(bool* return_value);
	HRESULT get_SystemOverlayLeftInset(double* return_value);
	HRESULT get_SystemOverlayRightInset(double* return_value);
	HRESULT get_Height(double* return_value);
	HRESULT add_LayoutMetricsChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Core.CoreApplicationViewTitleBar*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_LayoutMetricsChanged(EventRegistrationToken token);
	HRESULT get_IsVisible(bool* return_value);
	HRESULT add_IsVisibleChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Core.CoreApplicationViewTitleBar*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_IsVisibleChanged(EventRegistrationToken token);
}

@uuid("1ada0e3e-e4a2-4123-b451-dc96bf800419")
@WinrtFactory("Windows.ApplicationModel.Core.CoreApplication")
interface ICoreImmersiveApplication : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Views(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Core.CoreApplicationView)* return_value);
	HRESULT abi_CreateNewView(HSTRING runtimeType, HSTRING entryPoint, Windows.ApplicationModel.Core.CoreApplicationView* return_view);
	HRESULT get_MainView(Windows.ApplicationModel.Core.CoreApplicationView* return_value);
}

@uuid("828e1e36-e9e3-4cfc-9b66-48b78ea9bb2c")
@WinrtFactory("Windows.ApplicationModel.Core.CoreApplication")
interface ICoreImmersiveApplication2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateNewViewFromMainView(Windows.ApplicationModel.Core.CoreApplicationView* return_view);
}

@uuid("34a05b2f-ee0d-41e5-8314-cf10c91bf0af")
@WinrtFactory("Windows.ApplicationModel.Core.CoreApplication")
interface ICoreImmersiveApplication3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateNewViewWithViewSource(Windows.ApplicationModel.Core.IFrameworkViewSource viewSource, Windows.ApplicationModel.Core.CoreApplicationView* return_view);
}

@uuid("faab5cd0-8924-45ac-ad0f-a08fae5d0324")
interface IFrameworkView : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Initialize(Windows.ApplicationModel.Core.CoreApplicationView applicationView);
	HRESULT abi_SetWindow(Windows.UI.Core.CoreWindow window);
	HRESULT abi_Load(HSTRING entryPoint);
	HRESULT abi_Run();
	HRESULT abi_Uninitialize();
}

@uuid("cd770614-65c4-426c-9494-34fc43554862")
interface IFrameworkViewSource : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateView(Windows.ApplicationModel.Core.IFrameworkView* return_viewProvider);
}

@uuid("d238943c-b24e-4790-acb5-3e4243c4ff87")
@WinrtFactory("Windows.ApplicationModel.Core.HostedViewClosingEventArgs")
interface IHostedViewClosingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_result);
}

@uuid("9459b726-53b5-4686-9eaf-fa8162dc3980")
@WinrtFactory("Windows.ApplicationModel.Core.UnhandledError")
interface IUnhandledError : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT abi_Propagate();
}

@uuid("679ab78b-b336-4822-ac40-0d750f0b7a2b")
@WinrtFactory("Windows.ApplicationModel.Core.UnhandledErrorDetectedEventArgs")
interface IUnhandledErrorDetectedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UnhandledError(Windows.ApplicationModel.Core.UnhandledError* return_value);
}

interface AppListEntry
{
}

interface CoreApplicationView
{
}

interface CoreApplicationViewTitleBar
{
}

interface HostedViewClosingEventArgs
{
}

interface UnhandledError
{
}

interface UnhandledErrorDetectedEventArgs
{
}