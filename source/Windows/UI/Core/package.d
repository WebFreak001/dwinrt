module Windows.UI.Core;

import dwinrt;

@uuid("cd292360-2763-4085-8a9f-74b224a29175")
interface ICoreWindowFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateCoreWindow(HSTRING windowTitle, Windows.UI.Core.CoreWindow* return_window);
	HRESULT get_WindowReuseAllowed(bool* return_value);
}

interface HostedCoreWindowFactory
{
}

interface ImmersiveCoreWindowFactory
{
}

interface UAPCoreWindowFactory
{
}

@uuid("ff1c4c4a-9287-470b-836e-9086e3126ade")
@WinrtFactory("Windows.UI.Core.AcceleratorKeyEventArgs")
interface IAcceleratorKeyEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EventType(Windows.UI.Core.CoreAcceleratorKeyEventType* return_value);
	HRESULT get_VirtualKey(Windows.System.VirtualKey* return_value);
	HRESULT get_KeyStatus(Windows.UI.Core.CorePhysicalKeyStatus* return_value);
}

@uuid("d300a9f6-2f7e-4873-a555-166e596ee1c5")
@WinrtFactory("Windows.UI.Core.AcceleratorKeyEventArgs")
interface IAcceleratorKeyEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("961ff258-21bf-4b42-a298-fa479d4c52e2")
@WinrtFactory("Windows.UI.Core.AutomationProviderRequestedEventArgs")
interface IAutomationProviderRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AutomationProvider(IInspectable* return_value);
	HRESULT set_AutomationProvider(IInspectable value);
}

@uuid("d603d28a-e411-4a4e-ba41-6a327a8675bc")
@WinrtFactory("Windows.UI.Core.BackRequestedEventArgs")
interface IBackRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("c584659f-99b2-4bcc-bd33-04e63f42902e")
@WinrtFactory("Windows.UI.Core.CharacterReceivedEventArgs")
interface ICharacterReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_KeyCode(UINT32* return_value);
	HRESULT get_KeyStatus(Windows.UI.Core.CorePhysicalKeyStatus* return_value);
}

@uuid("347c11d7-f6f8-40e3-b29f-ae50d3e86486")
@WinrtFactory("Windows.UI.Core.ClosestInteractiveBoundsRequestedEventArgs")
interface IClosestInteractiveBoundsRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PointerPosition(Windows.Foundation.Point* return_value);
	HRESULT get_SearchBounds(Windows.Foundation.Rect* return_value);
	HRESULT get_ClosestInteractiveBounds(Windows.Foundation.Rect* return_value);
	HRESULT set_ClosestInteractiveBounds(Windows.Foundation.Rect value);
}

@uuid("9ffdf7f5-b8c9-4ef0-b7d2-1de626561fc8")
interface ICoreAcceleratorKeys : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_AcceleratorKeyActivated(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreDispatcher*,Windows.UI.Core.AcceleratorKeyEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_AcceleratorKeyActivated(EventRegistrationToken cookie);
}

@uuid("f303043a-e8bf-4e8e-ae69-c9dadd57a114")
@WinrtFactory("Windows.UI.Core.CoreComponentInputSource")
interface ICoreClosestInteractiveBoundsRequested : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ClosestInteractiveBoundsRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreComponentInputSource*,Windows.UI.Core.ClosestInteractiveBoundsRequestedEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_ClosestInteractiveBoundsRequested(EventRegistrationToken cookie);
}

@uuid("52f96fa3-8742-4411-ae69-79a85f29ac8b")
@WinrtFactory("Windows.UI.Core.CoreComponentInputSource")
interface ICoreComponentFocusable : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HasFocus(bool* return_value);
	HRESULT add_GotFocus(Windows.Foundation.TypedEventHandler!(IInspectable*,Windows.UI.Core.CoreWindowEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_GotFocus(EventRegistrationToken cookie);
	HRESULT add_LostFocus(Windows.Foundation.TypedEventHandler!(IInspectable*,Windows.UI.Core.CoreWindowEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_LostFocus(EventRegistrationToken cookie);
}

@uuid("96893acf-111d-442c-8a77-b87992f8e2d6")
@WinrtFactory("Windows.UI.Core.CoreCursor")
interface ICoreCursor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(UINT32* return_value);
	HRESULT get_Type(Windows.UI.Core.CoreCursorType* return_value);
}

@uuid("f6359621-a79d-4ed3-8c32-a9ef9d6b76a4")
@WinrtFactory("Windows.UI.Core.CoreCursor")
interface ICoreCursorFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateCursor(Windows.UI.Core.CoreCursorType type, UINT32 id, Windows.UI.Core.CoreCursor* return_cursor);
}

@uuid("60db2fa8-b705-4fde-a7d6-ebbb1891d39e")
@WinrtFactory("Windows.UI.Core.CoreDispatcher")
interface ICoreDispatcher : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HasThreadAccess(bool* return_value);
	HRESULT abi_ProcessEvents(Windows.UI.Core.CoreProcessEventsOption options);
	HRESULT abi_RunAsync(Windows.UI.Core.CoreDispatcherPriority priority, Windows.UI.Core.DispatchedHandler* agileCallback, Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_RunIdleAsync(Windows.UI.Core.IdleDispatchedHandler* agileCallback, Windows.Foundation.IAsyncAction* return_asyncAction);
}

@uuid("6f5e63c7-e3aa-4eae-b0e0-dcf321ca4b2f")
@WinrtFactory("Windows.UI.Core.CoreDispatcher")
interface ICoreDispatcher2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TryRunAsync(Windows.UI.Core.CoreDispatcherPriority priority, Windows.UI.Core.DispatchedHandler* agileCallback, Windows.Foundation.IAsyncOperation!(bool)* return_asyncOperation);
	HRESULT abi_TryRunIdleAsync(Windows.UI.Core.IdleDispatchedHandler* agileCallback, Windows.Foundation.IAsyncOperation!(bool)* return_asyncOperation);
}

@uuid("bafaecad-484d-41be-ba80-1d58c65263ea")
@WinrtFactory("Windows.UI.Core.CoreDispatcher")
interface ICoreDispatcherWithTaskPriority : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CurrentPriority(Windows.UI.Core.CoreDispatcherPriority* return_value);
	HRESULT set_CurrentPriority(Windows.UI.Core.CoreDispatcherPriority value);
	HRESULT abi_ShouldYield(bool* return_value);
	HRESULT abi_ShouldYieldToPriority(Windows.UI.Core.CoreDispatcherPriority priority, bool* return_value);
	HRESULT abi_StopProcessEvents();
}

@uuid("9f488807-4580-4be8-be68-92a9311713bb")
interface ICoreInputSourceBase : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value);
	HRESULT get_IsInputEnabled(bool* return_value);
	HRESULT set_IsInputEnabled(bool value);
	HRESULT add_InputEnabled(Windows.Foundation.TypedEventHandler!(IInspectable*,Windows.UI.Core.InputEnabledEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_InputEnabled(EventRegistrationToken cookie);
}

@uuid("231c9088-e469-4df1-b208-6e490d71cb90")
@WinrtFactory("Windows.UI.Core.CoreComponentInputSource")
interface ICoreKeyboardInputSource : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetCurrentKeyState(Windows.System.VirtualKey virtualKey, Windows.UI.Core.CoreVirtualKeyStates* return_KeyState);
	HRESULT add_CharacterReceived(Windows.Foundation.TypedEventHandler!(IInspectable*,Windows.UI.Core.CharacterReceivedEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_CharacterReceived(EventRegistrationToken cookie);
	HRESULT add_KeyDown(Windows.Foundation.TypedEventHandler!(IInspectable*,Windows.UI.Core.KeyEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_KeyDown(EventRegistrationToken cookie);
	HRESULT add_KeyUp(Windows.Foundation.TypedEventHandler!(IInspectable*,Windows.UI.Core.KeyEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_KeyUp(EventRegistrationToken cookie);
}

@uuid("fa24cb94-f963-47a5-8778-207c482b0afd")
@WinrtFactory("Windows.UI.Core.CoreComponentInputSource")
interface ICoreKeyboardInputSource2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetCurrentKeyEventDeviceId(HSTRING* return_value);
}

@uuid("bbf1bb18-e47a-48eb-8807-f8f8d3ea4551")
interface ICorePointerInputSource : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ReleasePointerCapture();
	HRESULT abi_SetPointerCapture();
	HRESULT get_HasCapture(bool* return_value);
	HRESULT get_PointerPosition(Windows.Foundation.Point* return_value);
	HRESULT get_PointerCursor(Windows.UI.Core.CoreCursor* return_value);
	HRESULT set_PointerCursor(Windows.UI.Core.CoreCursor value);
	HRESULT add_PointerCaptureLost(Windows.Foundation.TypedEventHandler!(IInspectable*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerCaptureLost(EventRegistrationToken cookie);
	HRESULT add_PointerEntered(Windows.Foundation.TypedEventHandler!(IInspectable*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerEntered(EventRegistrationToken cookie);
	HRESULT add_PointerExited(Windows.Foundation.TypedEventHandler!(IInspectable*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerExited(EventRegistrationToken cookie);
	HRESULT add_PointerMoved(Windows.Foundation.TypedEventHandler!(IInspectable*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerMoved(EventRegistrationToken cookie);
	HRESULT add_PointerPressed(Windows.Foundation.TypedEventHandler!(IInspectable*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerPressed(EventRegistrationToken cookie);
	HRESULT add_PointerReleased(Windows.Foundation.TypedEventHandler!(IInspectable*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerReleased(EventRegistrationToken cookie);
	HRESULT add_PointerWheelChanged(Windows.Foundation.TypedEventHandler!(IInspectable*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerWheelChanged(EventRegistrationToken cookie);
}

@uuid("8f9d0c94-5688-4b0c-a9f1-f931f7fa3dc3")
interface ICorePointerRedirector : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_PointerRoutedAway(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.ICorePointerRedirector*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerRoutedAway(EventRegistrationToken cookie);
	HRESULT add_PointerRoutedTo(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.ICorePointerRedirector*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerRoutedTo(EventRegistrationToken cookie);
	HRESULT add_PointerRoutedReleased(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.ICorePointerRedirector*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerRoutedReleased(EventRegistrationToken cookie);
}

@uuid("b1d8a289-3acf-4124-9fa3-ea8aba353c21")
@WinrtFactory("Windows.UI.Core.CoreComponentInputSource")
interface ICoreTouchHitTesting : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_TouchHitTesting(Windows.Foundation.TypedEventHandler!(IInspectable*,Windows.UI.Core.TouchHitTestingEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_TouchHitTesting(EventRegistrationToken cookie);
}

@uuid("79b9d5f2-879e-4b89-b798-79e47598030c")
interface ICoreWindow : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AutomationHostProvider(IInspectable* return_value);
	HRESULT get_Bounds(Windows.Foundation.Rect* return_value);
	HRESULT get_CustomProperties(Windows.Foundation.Collections.IPropertySet* return_value);
	HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value);
	HRESULT get_FlowDirection(Windows.UI.Core.CoreWindowFlowDirection* return_value);
	HRESULT set_FlowDirection(Windows.UI.Core.CoreWindowFlowDirection value);
	HRESULT get_IsInputEnabled(bool* return_value);
	HRESULT set_IsInputEnabled(bool value);
	HRESULT get_PointerCursor(Windows.UI.Core.CoreCursor* return_value);
	HRESULT set_PointerCursor(Windows.UI.Core.CoreCursor value);
	HRESULT get_PointerPosition(Windows.Foundation.Point* return_value);
	HRESULT get_Visible(bool* return_value);
	HRESULT abi_Activate();
	HRESULT abi_Close();
	HRESULT abi_GetAsyncKeyState(Windows.System.VirtualKey virtualKey, Windows.UI.Core.CoreVirtualKeyStates* return_KeyState);
	HRESULT abi_GetKeyState(Windows.System.VirtualKey virtualKey, Windows.UI.Core.CoreVirtualKeyStates* return_KeyState);
	HRESULT abi_ReleasePointerCapture();
	HRESULT abi_SetPointerCapture();
	HRESULT add_Activated(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.WindowActivatedEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_Activated(EventRegistrationToken cookie);
	HRESULT add_AutomationProviderRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.AutomationProviderRequestedEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_AutomationProviderRequested(EventRegistrationToken cookie);
	HRESULT add_CharacterReceived(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.CharacterReceivedEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_CharacterReceived(EventRegistrationToken cookie);
	HRESULT add_Closed(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.CoreWindowEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_Closed(EventRegistrationToken cookie);
	HRESULT add_InputEnabled(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.InputEnabledEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_InputEnabled(EventRegistrationToken cookie);
	HRESULT add_KeyDown(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.KeyEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_KeyDown(EventRegistrationToken cookie);
	HRESULT add_KeyUp(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.KeyEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_KeyUp(EventRegistrationToken cookie);
	HRESULT add_PointerCaptureLost(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerCaptureLost(EventRegistrationToken cookie);
	HRESULT add_PointerEntered(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerEntered(EventRegistrationToken cookie);
	HRESULT add_PointerExited(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerExited(EventRegistrationToken cookie);
	HRESULT add_PointerMoved(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerMoved(EventRegistrationToken cookie);
	HRESULT add_PointerPressed(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerPressed(EventRegistrationToken cookie);
	HRESULT add_PointerReleased(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerReleased(EventRegistrationToken cookie);
	HRESULT add_TouchHitTesting(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.TouchHitTestingEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_TouchHitTesting(EventRegistrationToken cookie);
	HRESULT add_PointerWheelChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.PointerEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerWheelChanged(EventRegistrationToken cookie);
	HRESULT add_SizeChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.WindowSizeChangedEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_SizeChanged(EventRegistrationToken cookie);
	HRESULT add_VisibilityChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.VisibilityChangedEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_VisibilityChanged(EventRegistrationToken cookie);
}

@uuid("7c2b1b85-6917-4361-9c02-0d9e3a420b95")
@WinrtFactory("Windows.UI.Core.CoreWindow")
interface ICoreWindow2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_PointerPosition(Windows.Foundation.Point value);
}

@uuid("32c20dd8-faef-4375-a2ab-32640e4815c7")
@WinrtFactory("Windows.UI.Core.CoreWindow")
interface ICoreWindow3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ClosestInteractiveBoundsRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.ClosestInteractiveBoundsRequestedEventArgs*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_ClosestInteractiveBoundsRequested(EventRegistrationToken cookie);
	HRESULT abi_GetCurrentKeyEventDeviceId(HSTRING* return_value);
}

@uuid("35caf0d0-47f0-436c-af97-0dd88f6f5f02")
@WinrtFactory("Windows.UI.Core.CoreWindow")
interface ICoreWindow4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ResizeStarted(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,IInspectable*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_ResizeStarted(EventRegistrationToken cookie);
	HRESULT add_ResizeCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,IInspectable*) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_ResizeCompleted(EventRegistrationToken cookie);
}

@uuid("e7392ce0-c78d-427e-8b2c-01ff420c69d5")
@WinrtFactory("Windows.UI.Core.CoreWindowDialog")
interface ICoreWindowDialog : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_Showing(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.CoreWindowPopupShowingEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_Showing(EventRegistrationToken cookie);
	HRESULT get_MaxSize(Windows.Foundation.Size* return_value);
	HRESULT get_MinSize(Windows.Foundation.Size* return_value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_IsInteractionDelayed(INT32* return_value);
	HRESULT set_IsInteractionDelayed(INT32 value);
	HRESULT get_Commands(Windows.Foundation.Collections.IVector!(Windows.UI.Popups.IUICommand)* return_value);
	HRESULT get_DefaultCommandIndex(UINT32* return_value);
	HRESULT set_DefaultCommandIndex(UINT32 value);
	HRESULT get_CancelCommandIndex(UINT32* return_value);
	HRESULT set_CancelCommandIndex(UINT32 value);
	HRESULT get_BackButtonCommand(Windows.UI.Popups.UICommandInvokedHandler** return_value);
	HRESULT set_BackButtonCommand(Windows.UI.Popups.UICommandInvokedHandler* value);
	HRESULT abi_ShowAsync(Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand)* return_asyncInfo);
}

@uuid("cfb2a855-1c59-4b13-b1e5-16e29805f7c4")
@WinrtFactory("Windows.UI.Core.CoreWindowDialog")
interface ICoreWindowDialogFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWithTitle(HSTRING title, Windows.UI.Core.CoreWindowDialog* return_coreWindowDialog);
}

@uuid("272b1ef3-c633-4da5-a26c-c6d0f56b29da")
interface ICoreWindowEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("e89d854d-2050-40bb-b344-f6f355eeb314")
@WinrtFactory("Windows.UI.Core.CoreWindowFlyout")
interface ICoreWindowFlyout : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_Showing(Windows.Foundation.TypedEventHandler!(Windows.UI.Core.CoreWindow*,Windows.UI.Core.CoreWindowPopupShowingEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_Showing(EventRegistrationToken cookie);
	HRESULT get_MaxSize(Windows.Foundation.Size* return_value);
	HRESULT get_MinSize(Windows.Foundation.Size* return_value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_IsInteractionDelayed(INT32* return_value);
	HRESULT set_IsInteractionDelayed(INT32 value);
	HRESULT get_Commands(Windows.Foundation.Collections.IVector!(Windows.UI.Popups.IUICommand)* return_value);
	HRESULT get_DefaultCommandIndex(UINT32* return_value);
	HRESULT set_DefaultCommandIndex(UINT32 value);
	HRESULT get_BackButtonCommand(Windows.UI.Popups.UICommandInvokedHandler** return_value);
	HRESULT set_BackButtonCommand(Windows.UI.Popups.UICommandInvokedHandler* value);
	HRESULT abi_ShowAsync(Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand)* return_asyncInfo);
}

@uuid("dec4c6c4-93e8-4f7c-be27-cefaa1af68a7")
@WinrtFactory("Windows.UI.Core.CoreWindowFlyout")
interface ICoreWindowFlyoutFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Point position, Windows.UI.Core.CoreWindowFlyout* return_coreWindowFlyout);
	HRESULT abi_CreateWithTitle(Windows.Foundation.Point position, HSTRING title, Windows.UI.Core.CoreWindowFlyout* return_coreWindowFlyout);
}

@uuid("26155fa2-5ba5-4ea4-a3b4-2dc7d63c8e26")
@WinrtFactory("Windows.UI.Core.CoreWindowPopupShowingEventArgs")
interface ICoreWindowPopupShowingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetDesiredSize(Windows.Foundation.Size value);
}

@uuid("b8f0b925-b350-48b3-a198-5c1a84700243")
@WinrtFactory("Windows.UI.Core.CoreWindowResizeManager")
interface ICoreWindowResizeManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_NotifyLayoutCompleted();
}

@uuid("bb74f27b-a544-4301-80e6-0ae033ef4536")
@WinrtFactory("Windows.UI.Core.CoreWindowResizeManager")
interface ICoreWindowResizeManagerLayoutCapability : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_ShouldWaitForLayoutCompletion(bool value);
	HRESULT get_ShouldWaitForLayoutCompletion(bool* return_value);
}

@uuid("ae4a9045-6d70-49db-8e68-46ffbd17d38d")
@WinrtFactory("Windows.UI.Core.CoreWindowResizeManager")
interface ICoreWindowResizeManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Core.CoreWindowResizeManager* return_CoreWindowResizeManager);
}

@uuid("4d239005-3c2a-41b1-9022-536bb9cf93b1")
@WinrtFactory("Windows.UI.Core.CoreWindow")
interface ICoreWindowStatic : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentThread(Windows.UI.Core.CoreWindow* return_ppWindow);
}

@uuid("98bb6a24-dc1c-43cb-b4ed-d1c0eb2391f3")
@WinrtFactory("Windows.UI.Core.IdleDispatchedHandlerArgs")
interface IIdleDispatchedHandlerArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsDispatcherIdle(bool* return_value);
}

@uuid("188f20d6-9873-464a-ace5-57e010f465e6")
interface IInitializeWithCoreWindow : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Initialize(Windows.UI.Core.CoreWindow window);
}

@uuid("80371d4f-2fd8-4c24-aa86-3163a87b4e5a")
@WinrtFactory("Windows.UI.Core.InputEnabledEventArgs")
interface IInputEnabledEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InputEnabled(bool* return_value);
}

@uuid("5ff5e930-2544-4a17-bd78-1f2fdebb106b")
@WinrtFactory("Windows.UI.Core.KeyEventArgs")
interface IKeyEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_VirtualKey(Windows.System.VirtualKey* return_value);
	HRESULT get_KeyStatus(Windows.UI.Core.CorePhysicalKeyStatus* return_value);
}

@uuid("583add98-0790-4571-9b12-645ef9d79e42")
@WinrtFactory("Windows.UI.Core.KeyEventArgs")
interface IKeyEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("920d9cb1-a5fc-4a21-8c09-49dfe6ffe25f")
@WinrtFactory("Windows.UI.Core.PointerEventArgs")
interface IPointerEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CurrentPoint(Windows.UI.Input.PointerPoint* return_value);
	HRESULT get_KeyModifiers(Windows.System.VirtualKeyModifiers* return_value);
	HRESULT abi_GetIntermediatePoints(Windows.Foundation.Collections.IVector!(Windows.UI.Input.PointerPoint)* return_value);
}

@uuid("93023118-cf50-42a6-9706-69107fa122e1")
@WinrtFactory("Windows.UI.Core.SystemNavigationManager")
interface ISystemNavigationManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_BackRequested(Windows.Foundation.EventHandler!(Windows.UI.Core.BackRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_BackRequested(EventRegistrationToken token);
}

@uuid("8c510401-67be-49ae-9509-671c1e54a389")
@WinrtFactory("Windows.UI.Core.SystemNavigationManager")
interface ISystemNavigationManager2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AppViewBackButtonVisibility(Windows.UI.Core.AppViewBackButtonVisibility* return_value);
	HRESULT set_AppViewBackButtonVisibility(Windows.UI.Core.AppViewBackButtonVisibility value);
}

@uuid("dc52b5ce-bee0-4305-8c54-68228ed683b5")
@WinrtFactory("Windows.UI.Core.SystemNavigationManager")
interface ISystemNavigationManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Core.SystemNavigationManager* return_loader);
}

@uuid("22f3b823-0b7c-424e-9df7-33d4f962931b")
@WinrtFactory("Windows.UI.Core.TouchHitTestingEventArgs")
interface ITouchHitTestingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ProximityEvaluation(Windows.UI.Core.CoreProximityEvaluation* return_value);
	HRESULT set_ProximityEvaluation(Windows.UI.Core.CoreProximityEvaluation value);
	HRESULT get_Point(Windows.Foundation.Point* return_value);
	HRESULT get_BoundingBox(Windows.Foundation.Rect* return_value);
	HRESULT abi_EvaluateProximityToRect(Windows.Foundation.Rect controlBoundingBox, Windows.UI.Core.CoreProximityEvaluation* return_proximityEvaluation);
	HRESULT abi_EvaluateProximityToPolygon(UINT32 __controlVerticesSize, Windows.Foundation.Point* controlVertices, Windows.UI.Core.CoreProximityEvaluation* return_proximityEvaluation);
}

@uuid("bf9918ea-d801-4564-a495-b1e84f8ad085")
@WinrtFactory("Windows.UI.Core.VisibilityChangedEventArgs")
interface IVisibilityChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Visible(bool* return_value);
}

@uuid("179d65e7-4658-4cb6-aa13-41d094ea255e")
@WinrtFactory("Windows.UI.Core.WindowActivatedEventArgs")
interface IWindowActivatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_WindowActivationState(Windows.UI.Core.CoreWindowActivationState* return_value);
}

@uuid("5a200ec7-0426-47dc-b86c-6f475915e451")
@WinrtFactory("Windows.UI.Core.WindowSizeChangedEventArgs")
interface IWindowSizeChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Size(Windows.Foundation.Size* return_value);
}

interface AcceleratorKeyEventArgs
{
}

interface AutomationProviderRequestedEventArgs
{
}

interface BackRequestedEventArgs
{
}

interface CharacterReceivedEventArgs
{
}

interface ClosestInteractiveBoundsRequestedEventArgs
{
}

interface CoreAcceleratorKeys
{
}

interface CoreComponentInputSource
{
}

interface CoreCursor
{
}

interface CoreDispatcher
{
}

interface CoreIndependentInputSource
{
}

interface CoreWindow
{
}

interface CoreWindowDialog
{
}

interface CoreWindowEventArgs
{
}

interface CoreWindowFlyout
{
}

interface CoreWindowPopupShowingEventArgs
{
}

interface CoreWindowResizeManager
{
}

interface IdleDispatchedHandlerArgs
{
}

interface InputEnabledEventArgs
{
}

interface KeyEventArgs
{
}

interface PointerEventArgs
{
}

interface SystemNavigationManager
{
}

interface TouchHitTestingEventArgs
{
}

interface VisibilityChangedEventArgs
{
}

interface WindowActivatedEventArgs
{
}

interface WindowSizeChangedEventArgs
{
}

enum AppViewBackButtonVisibility
{
	Visible = 0,
	Collapsed = 1
}

enum CoreAcceleratorKeyEventType
{
	Character = 2,
	DeadCharacter = 3,
	KeyDown = 0,
	KeyUp = 1,
	SystemCharacter = 6,
	SystemDeadCharacter = 7,
	SystemKeyDown = 4,
	SystemKeyUp = 5,
	UnicodeCharacter = 8
}

enum CoreCursorType
{
	Arrow = 0,
	Cross = 1,
	Custom = 2,
	Hand = 3,
	Help = 4,
	IBeam = 5,
	SizeAll = 6,
	SizeNortheastSouthwest = 7,
	SizeNorthSouth = 8,
	SizeNorthwestSoutheast = 9,
	SizeWestEast = 10,
	UniversalNo = 11,
	UpArrow = 12,
	Wait = 13
}

enum CoreDispatcherPriority
{
	Idle = -2,
	Low = -1,
	Normal = 0,
	High = 1
}

@bitflags
enum CoreInputDeviceTypes
{
	None = 0x0,
	Touch = 0x1,
	Pen = 0x2,
	Mouse = 0x4
}

enum CoreProcessEventsOption
{
	ProcessOneAndAllPending = 0,
	ProcessOneIfPresent = 1,
	ProcessUntilQuit = 2,
	ProcessAllIfPresent = 3
}

enum CoreProximityEvaluationScore
{
	Closest = 0,
	Farthest = 2147483647
}

@bitflags
enum CoreVirtualKeyStates
{
	None = 0x0,
	Down = 0x1,
	Locked = 0x2
}

enum CoreWindowActivationState
{
	CodeActivated = 0,
	Deactivated = 1,
	PointerActivated = 2
}

enum CoreWindowFlowDirection
{
	LeftToRight = 0,
	RightToLeft = 1
}