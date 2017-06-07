module Windows.UI.Core;

import dwinrt;

@uuid("96893acf-111d-442c-8a77-b87992f8e2d6")
interface ICoreCursor : IInspectable
{
}

enum CoreWindowFlowDirection
{
	LeftToRight,
	RightToLeft
}

@uuid("79b9d5f2-879e-4b89-b798-79e47598030c")
interface ICoreWindow : IInspectable
{
extern (Windows):
	HRESULT get_AutomationHostProvider(IInspectable* value);
	HRESULT get_Bounds(Windows.Foundation.Rect* value);
	HRESULT get_CustomProperties(Windows.Foundation.Collections.IPropertySet* value);
	HRESULT get_Dispatcher(ICoreDispatcher* value);
	HRESULT get_FlowDirection(CoreWindowFlowDirection* value);
	HRESULT put_FlowDirection(CoreWindowFlowDirection value);
	HRESULT get_IsInputEnabled(bool* value);
	HRESULT put_IsInputEnabled(bool value);
	HRESULT get_PointerCursor(ICoreCursor* value);
	HRESULT put_PointerCursor(ICoreCursor value);
	HRESULT get_PointerPosition(Windows.Foundation.Point* value);
	HRESULT get_Visible(bool* value);
	HRESULT abi_Activate();
	HRESULT abi_Close();
	/*HRESULT abi_GetAsyncKeyState([in] Windows.System.VirtualKey virtualKey, [out] [retval] CoreVirtualKeyStates* KeyState);
	HRESULT abi_GetKeyState([in] Windows.System.VirtualKey virtualKey, [out] [retval] CoreVirtualKeyStates* KeyState);
	HRESULT abi_ReleasePointerCapture();
	HRESULT abi_SetPointerCapture();
	HRESULT add_Activated([in] Windows.Foundation.TypedEventHandler<CoreWindow*, WindowActivatedEventArgs*>* handler, [out] [retval] EventRegistrationToken* pCookie);
	HRESULT remove_Activated([in] EventRegistrationToken cookie);
	HRESULT add_AutomationProviderRequested([in] Windows.Foundation.TypedEventHandler<CoreWindow*, AutomationProviderRequestedEventArgs*>* handler, [out] [retval] EventRegistrationToken* cookie);
	HRESULT remove_AutomationProviderRequested([in] EventRegistrationToken cookie);
	HRESULT add_CharacterReceived([in] Windows.Foundation.TypedEventHandler<CoreWindow*, CharacterReceivedEventArgs*>* handler, [out] [retval] EventRegistrationToken* pCookie);
	HRESULT remove_CharacterReceived([in] EventRegistrationToken cookie);
	HRESULT add_Closed([in] Windows.Foundation.TypedEventHandler<CoreWindow*, CoreWindowEventArgs*>* handler, [out] [retval] EventRegistrationToken* pCookie);
	HRESULT remove_Closed([in] EventRegistrationToken cookie);
	HRESULT add_InputEnabled([in] Windows.Foundation.TypedEventHandler<CoreWindow*, InputEnabledEventArgs*>* handler, [out] [retval] EventRegistrationToken* pCookie);
	HRESULT remove_InputEnabled([in] EventRegistrationToken cookie);
	HRESULT add_KeyDown([in] Windows.Foundation.TypedEventHandler<CoreWindow*, KeyEventArgs*>* handler, [out] [retval] EventRegistrationToken* pCookie);
	HRESULT remove_KeyDown([in] EventRegistrationToken cookie);
	HRESULT add_KeyUp([in] Windows.Foundation.TypedEventHandler<CoreWindow*, KeyEventArgs*>* handler, [out] [retval] EventRegistrationToken* pCookie);
	HRESULT remove_KeyUp([in] EventRegistrationToken cookie);
	HRESULT add_PointerCaptureLost([in] Windows.Foundation.TypedEventHandler<CoreWindow*, PointerEventArgs*>* handler, [out] [retval] EventRegistrationToken* cookie);
	HRESULT remove_PointerCaptureLost([in] EventRegistrationToken cookie);
	HRESULT add_PointerEntered([in] Windows.Foundation.TypedEventHandler<CoreWindow*, PointerEventArgs*>* handler, [out] [retval] EventRegistrationToken* cookie);
	HRESULT remove_PointerEntered([in] EventRegistrationToken cookie);
	HRESULT add_PointerExited([in] Windows.Foundation.TypedEventHandler<CoreWindow*, PointerEventArgs*>* handler, [out] [retval] EventRegistrationToken* cookie);
	HRESULT remove_PointerExited([in] EventRegistrationToken cookie);
	HRESULT add_PointerMoved([in] Windows.Foundation.TypedEventHandler<CoreWindow*, PointerEventArgs*>* handler, [out] [retval] EventRegistrationToken* cookie);
	HRESULT remove_PointerMoved([in] EventRegistrationToken cookie);
	HRESULT add_PointerPressed([in] Windows.Foundation.TypedEventHandler<CoreWindow*, PointerEventArgs*>* handler, [out] [retval] EventRegistrationToken* cookie);
	HRESULT remove_PointerPressed([in] EventRegistrationToken cookie);
	HRESULT add_PointerReleased([in] Windows.Foundation.TypedEventHandler<CoreWindow*, PointerEventArgs*>* handler, [out] [retval] EventRegistrationToken* cookie);
	HRESULT remove_PointerReleased([in] EventRegistrationToken cookie);
	HRESULT add_TouchHitTesting([in] Windows.Foundation.TypedEventHandler<CoreWindow*, TouchHitTestingEventArgs*>* handler, [out] [retval] EventRegistrationToken* pCookie);
	HRESULT remove_TouchHitTesting([in] EventRegistrationToken cookie);
	HRESULT add_PointerWheelChanged([in] Windows.Foundation.TypedEventHandler<CoreWindow*, PointerEventArgs*>* handler, [out] [retval] EventRegistrationToken* cookie);
	HRESULT remove_PointerWheelChanged([in] EventRegistrationToken cookie);
	HRESULT add_SizeChanged([in] Windows.Foundation.TypedEventHandler<CoreWindow*, WindowSizeChangedEventArgs*>* handler, [out] [retval] EventRegistrationToken* pCookie);
	HRESULT remove_SizeChanged([in] EventRegistrationToken cookie);
	HRESULT add_VisibilityChanged([in] Windows.Foundation.TypedEventHandler<CoreWindow*, VisibilityChangedEventArgs*>* handler, [out] [retval] EventRegistrationToken* pCookie);
	HRESULT remove_VisibilityChanged([in] EventRegistrationToken cookie);*/
}

enum CoreProcessEventOptions
{
	ProcessOneAndAllPending = 0,
	ProcessOneIfPresent = 1,
	ProcessUntilQuit = 2,
	ProcessAllIfPresent = 3,
}

@uuid("60db2fa8-b705-4fde-a7d6-ebbb1891d39e")
interface ICoreDispatcher : IInspectable
{
extern (Windows):
	HRESULT get_HasThreadAccess(bool* value);
	HRESULT abi_ProcessEvents(CoreProcessEventOptions options);
}

@winrtFactory!ICoreWindow @uuid("4d239005-3c2a-41b1-9022-536bb9cf93b1")
interface ICoreWindowStatic : IInspectable
{
extern (Windows):
	HRESULT abi_GetForCurrentThread(ICoreWindow* ppWindow);
}
