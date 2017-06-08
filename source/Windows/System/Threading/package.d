module Windows.System.Threading;

import dwinrt;

@uuid("34ed19fa-8384-4eb9-8209-fb5094eeec35")
interface TimerDestroyedHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.System.Threading.ThreadPoolTimer timer);
}

@uuid("faaea667-fbeb-49cb-adb2-71184c556e43")
interface TimerElapsedHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.System.Threading.ThreadPoolTimer timer);
}

@uuid("1d1a8b8b-fa66-414f-9cbd-b65fc99d17fa")
interface WorkItemHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Foundation.IAsyncAction operation);
}

@uuid("b6bf67dd-84bd-44f8-ac1c-93ebcb9dba91")
@WinrtFactory("Windows.System.Threading.ThreadPool")
interface IThreadPoolStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RunAsync(Windows.System.Threading.WorkItemHandler handler, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_RunWithPriorityAsync(Windows.System.Threading.WorkItemHandler handler, Windows.System.Threading.WorkItemPriority priority, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_RunWithPriorityAndOptionsAsync(Windows.System.Threading.WorkItemHandler handler, Windows.System.Threading.WorkItemPriority priority, Windows.System.Threading.WorkItemOptions options, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("594ebe78-55ea-4a88-a50d-3402ae1f9cf2")
@WinrtFactory("Windows.System.Threading.ThreadPoolTimer")
interface IThreadPoolTimer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Period(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Delay(Windows.Foundation.TimeSpan* return_value);
	HRESULT abi_Cancel();
}

@uuid("1a8a9d02-e482-461b-b8c7-8efad1cce590")
@WinrtFactory("Windows.System.Threading.ThreadPoolTimer")
interface IThreadPoolTimerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreatePeriodicTimer(Windows.System.Threading.TimerElapsedHandler handler, Windows.Foundation.TimeSpan period, Windows.System.Threading.ThreadPoolTimer* return_timer);
	HRESULT abi_CreateTimer(Windows.System.Threading.TimerElapsedHandler handler, Windows.Foundation.TimeSpan delay, Windows.System.Threading.ThreadPoolTimer* return_timer);
	HRESULT abi_CreatePeriodicTimerWithCompletion(Windows.System.Threading.TimerElapsedHandler handler, Windows.Foundation.TimeSpan period, Windows.System.Threading.TimerDestroyedHandler destroyed, Windows.System.Threading.ThreadPoolTimer* return_timer);
	HRESULT abi_CreateTimerWithCompletion(Windows.System.Threading.TimerElapsedHandler handler, Windows.Foundation.TimeSpan delay, Windows.System.Threading.TimerDestroyedHandler destroyed, Windows.System.Threading.ThreadPoolTimer* return_timer);
}

interface ThreadPool
{
}

interface ThreadPoolTimer : Windows.System.Threading.IThreadPoolTimer
{
}

@bitflags
enum WorkItemOptions
{
	None = 0x0,
	TimeSliced = 0x1
}

enum WorkItemPriority
{
	Low = -1,
	Normal = 0,
	High = 1
}