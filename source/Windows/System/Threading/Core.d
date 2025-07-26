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
extern(Windows):
	HRESULT abi_RunAsync(Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("e3d32b45-dfea-469b-82c5-f6e3cefdeafb")
@WinrtFactory("Windows.System.Threading.Core.PreallocatedWorkItem")
interface IPreallocatedWorkItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWorkItem(Windows.System.Threading.WorkItemHandler handler, Windows.System.Threading.Core.PreallocatedWorkItem* return_workItem);
	HRESULT abi_CreateWorkItemWithPriority(Windows.System.Threading.WorkItemHandler handler, Windows.System.Threading.WorkItemPriority priority, Windows.System.Threading.Core.PreallocatedWorkItem* return_WorkItem);
	HRESULT abi_CreateWorkItemWithPriorityAndOptions(Windows.System.Threading.WorkItemHandler handler, Windows.System.Threading.WorkItemPriority priority, Windows.System.Threading.WorkItemOptions options, Windows.System.Threading.Core.PreallocatedWorkItem* return_WorkItem);
}

@uuid("14285e06-63a7-4713-b6d9-62f64b56fb8b")
@WinrtFactory("Windows.System.Threading.Core.SignalNotifier")
interface ISignalNotifier : IInspectable
{
extern(Windows):
	HRESULT abi_Enable();
	HRESULT abi_Terminate();
}

@uuid("1c4e4566-8400-46d3-a115-7d0c0dfc9f62")
@WinrtFactory("Windows.System.Threading.Core.SignalNotifier")
interface ISignalNotifierStatics : IInspectable
{
extern(Windows):
	HRESULT abi_AttachToEvent(HSTRING name, Windows.System.Threading.Core.SignalHandler handler, Windows.System.Threading.Core.SignalNotifier* return_signalNotifier);
	HRESULT abi_AttachToEventWithTimeout(HSTRING name, Windows.System.Threading.Core.SignalHandler handler, Windows.Foundation.TimeSpan timeout, Windows.System.Threading.Core.SignalNotifier* return_signalNotifier);
	HRESULT abi_AttachToSemaphore(HSTRING name, Windows.System.Threading.Core.SignalHandler handler, Windows.System.Threading.Core.SignalNotifier* return_signalNotifier);
	HRESULT abi_AttachToSemaphoreWithTimeout(HSTRING name, Windows.System.Threading.Core.SignalHandler handler, Windows.Foundation.TimeSpan timeout, Windows.System.Threading.Core.SignalNotifier* return_signalNotifier);
}

interface PreallocatedWorkItem : Windows.System.Threading.Core.IPreallocatedWorkItem
{
extern(Windows):
	final Windows.Foundation.IAsyncAction RunAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.System.Threading.Core.IPreallocatedWorkItem)this.asInterface(uuid("b6daa9fc-bc5b-401a-a8b2-6e754d14daa6"))).abi_RunAsync(&_ret));
		return _ret;
	}
	static Windows.System.Threading.Core.PreallocatedWorkItem New(Windows.System.Threading.WorkItemHandler handler)
	{
		auto factory = factory!(Windows.System.Threading.Core.IPreallocatedWorkItemFactory);
		Windows.System.Threading.Core.PreallocatedWorkItem _ret;
		Debug.OK((cast(Windows.System.Threading.Core.IPreallocatedWorkItemFactory)factory.asInterface(uuid("e3d32b45-dfea-469b-82c5-f6e3cefdeafb"))).abi_CreateWorkItem(handler, &_ret));
		return _ret;
	}
	static Windows.System.Threading.Core.PreallocatedWorkItem New(Windows.System.Threading.WorkItemHandler handler, Windows.System.Threading.WorkItemPriority priority)
	{
		auto factory = factory!(Windows.System.Threading.Core.IPreallocatedWorkItemFactory);
		Windows.System.Threading.Core.PreallocatedWorkItem _ret;
		Debug.OK((cast(Windows.System.Threading.Core.IPreallocatedWorkItemFactory)factory.asInterface(uuid("e3d32b45-dfea-469b-82c5-f6e3cefdeafb"))).abi_CreateWorkItemWithPriority(handler, priority, &_ret));
		return _ret;
	}
	static Windows.System.Threading.Core.PreallocatedWorkItem New(Windows.System.Threading.WorkItemHandler handler, Windows.System.Threading.WorkItemPriority priority, Windows.System.Threading.WorkItemOptions options)
	{
		auto factory = factory!(Windows.System.Threading.Core.IPreallocatedWorkItemFactory);
		Windows.System.Threading.Core.PreallocatedWorkItem _ret;
		Debug.OK((cast(Windows.System.Threading.Core.IPreallocatedWorkItemFactory)factory.asInterface(uuid("e3d32b45-dfea-469b-82c5-f6e3cefdeafb"))).abi_CreateWorkItemWithPriorityAndOptions(handler, priority, options, &_ret));
		return _ret;
	}
}

interface SignalNotifier : Windows.System.Threading.Core.ISignalNotifier
{
extern(Windows):
	final void Enable()
	{
		Debug.OK((cast(Windows.System.Threading.Core.ISignalNotifier)this.asInterface(uuid("14285e06-63a7-4713-b6d9-62f64b56fb8b"))).abi_Enable());
	}
	final void Terminate()
	{
		Debug.OK((cast(Windows.System.Threading.Core.ISignalNotifier)this.asInterface(uuid("14285e06-63a7-4713-b6d9-62f64b56fb8b"))).abi_Terminate());
	}

	private static Windows.System.Threading.Core.ISignalNotifierStatics _staticInstance;
	public static Windows.System.Threading.Core.ISignalNotifierStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Threading.Core.ISignalNotifierStatics);
		return _staticInstance;
	}
	static Windows.System.Threading.Core.SignalNotifier AttachToEvent(HSTRING name, Windows.System.Threading.Core.SignalHandler handler)
	{
		Windows.System.Threading.Core.SignalNotifier _ret;
		Debug.OK(staticInstance.abi_AttachToEvent(name, handler, &_ret));
		return _ret;
	}
	static Windows.System.Threading.Core.SignalNotifier AttachToEventWithTimeout(HSTRING name, Windows.System.Threading.Core.SignalHandler handler, Windows.Foundation.TimeSpan timeout)
	{
		Windows.System.Threading.Core.SignalNotifier _ret;
		Debug.OK(staticInstance.abi_AttachToEventWithTimeout(name, handler, timeout, &_ret));
		return _ret;
	}
	alias AttachToEvent = AttachToEventWithTimeout;
	static Windows.System.Threading.Core.SignalNotifier AttachToSemaphore(HSTRING name, Windows.System.Threading.Core.SignalHandler handler)
	{
		Windows.System.Threading.Core.SignalNotifier _ret;
		Debug.OK(staticInstance.abi_AttachToSemaphore(name, handler, &_ret));
		return _ret;
	}
	static Windows.System.Threading.Core.SignalNotifier AttachToSemaphoreWithTimeout(HSTRING name, Windows.System.Threading.Core.SignalHandler handler, Windows.Foundation.TimeSpan timeout)
	{
		Windows.System.Threading.Core.SignalNotifier _ret;
		Debug.OK(staticInstance.abi_AttachToSemaphoreWithTimeout(name, handler, timeout, &_ret));
		return _ret;
	}
	alias AttachToSemaphore = AttachToSemaphoreWithTimeout;
}