module Windows.System.Threading.Core;

import dwinrt;

@uuid("923c402e-4721-440e-9dda-55b6f2e07710")
interface SignalHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.System.Threading.Core.SignalNotifier signalNotifier, bool timedOut);
}

@uuid("b6daa9fc-bc5b-401a-a8b2-6e754d14daa6")
@WinrtFactory("Windows.System.Threading.Core.PreallocatedWorkItem")
interface IPreallocatedWorkItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RunAsync(Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("e3d32b45-dfea-469b-82c5-f6e3cefdeafb")
@WinrtFactory("Windows.System.Threading.Core.PreallocatedWorkItem")
interface IPreallocatedWorkItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWorkItem(Windows.System.Threading.WorkItemHandler handler, Windows.System.Threading.Core.PreallocatedWorkItem* return_workItem);
	HRESULT abi_CreateWorkItemWithPriority(Windows.System.Threading.WorkItemHandler handler, Windows.System.Threading.WorkItemPriority priority, Windows.System.Threading.Core.PreallocatedWorkItem* return_WorkItem);
	HRESULT abi_CreateWorkItemWithPriorityAndOptions(Windows.System.Threading.WorkItemHandler handler, Windows.System.Threading.WorkItemPriority priority, Windows.System.Threading.WorkItemOptions options, Windows.System.Threading.Core.PreallocatedWorkItem* return_WorkItem);
}

@uuid("14285e06-63a7-4713-b6d9-62f64b56fb8b")
@WinrtFactory("Windows.System.Threading.Core.SignalNotifier")
interface ISignalNotifier : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Enable();
	HRESULT abi_Terminate();
}

@uuid("1c4e4566-8400-46d3-a115-7d0c0dfc9f62")
@WinrtFactory("Windows.System.Threading.Core.SignalNotifier")
interface ISignalNotifierStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AttachToEvent(HSTRING name, Windows.System.Threading.Core.SignalHandler handler, Windows.System.Threading.Core.SignalNotifier* return_signalNotifier);
	HRESULT abi_AttachToEventWithTimeout(HSTRING name, Windows.System.Threading.Core.SignalHandler handler, Windows.Foundation.TimeSpan timeout, Windows.System.Threading.Core.SignalNotifier* return_signalNotifier);
	HRESULT abi_AttachToSemaphore(HSTRING name, Windows.System.Threading.Core.SignalHandler handler, Windows.System.Threading.Core.SignalNotifier* return_signalNotifier);
	HRESULT abi_AttachToSemaphoreWithTimeout(HSTRING name, Windows.System.Threading.Core.SignalHandler handler, Windows.Foundation.TimeSpan timeout, Windows.System.Threading.Core.SignalNotifier* return_signalNotifier);
}

interface PreallocatedWorkItem
{
}

interface SignalNotifier
{
}