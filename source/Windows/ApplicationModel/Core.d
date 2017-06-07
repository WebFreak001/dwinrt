module Windows.ApplicationModel.Core;

import dwinrt;

@uuid("338579bf-1a35-5cc4-a622-a6f384fd892c")
interface SuspendingEventHandler : IUnknown
{
}

@uuid("338579bf-1a35-5cc4-a622-a6f384fd892c")
interface IInspectableEventHandler : IUnknown
{
}

@winrtFactory!ICoreApplication @uuid("0aacf7a4-5e1d-49df-8034-fb6a68bc5ed1")
interface ICoreApplication : IInspectable
{
extern (Windows):
	HRESULT get_Id(hstring* value);
	HRESULT add_Suspending(SuspendingEventHandler handler, EventRegistrationToken* token);
	HRESULT remove_Suspending(EventRegistrationToken token);
	HRESULT add_Resuming(IInspectableEventHandler handler, EventRegistrationToken* token);
	HRESULT remove_Resuming(EventRegistrationToken token);
	HRESULT get_Properties(Windows.Foundation.Collections.IPropertySet* value);
	HRESULT abi_GetCurrentView(ICoreApplicationView* value);
	HRESULT abi_Run(IFrameworkViewSource viewSource);
	HRESULT abi_RunWithActivationFactories(IGetActivationFactory activationFactoryCallback);
}

@uuid("638bb2db-451d-4661-b099-414f34ffb9f1")
interface ICoreApplicationView : IInspectable
{
}

@uuid("cd770614-65c4-426c-9494-34fc43554862")
interface IFrameworkViewSource : IInspectable
{
extern (Windows):
	HRESULT abi_CreateView(IFrameworkView* viewProvider);
}

@uuid("faab5cd0-8924-45ac-ad0f-a08fae5d0324")
interface IFrameworkView : IInspectable
{
extern (Windows):
	HRESULT abi_Initialize(ICoreApplicationView applicationView);
	HRESULT abi_SetWindow(Windows.UI.Core.ICoreWindow window);
	HRESULT abi_Load(HSTRING entryPoint);
	HRESULT abi_Run();
	HRESULT abi_Uninitialize();
}
