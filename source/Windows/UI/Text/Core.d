module Windows.UI.Text.Core;

import dwinrt;

struct CoreTextRange
{
	INT32 StartCaretPosition;
	INT32 EndCaretPosition;
}

@uuid("1f34ebb6-b79f-4121-a5e7-fda9b8616e30")
@WinrtFactory("Windows.UI.Text.Core.CoreTextCompositionCompletedEventArgs")
interface ICoreTextCompositionCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_IsCanceled(bool* return_value);
	HRESULT get_CompositionSegments(Windows.Foundation.Collections.IVectorView!(Windows.UI.Text.Core.CoreTextCompositionSegment)* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("776c6bd9-4ead-4da7-8f47-3a88b523cc34")
@WinrtFactory("Windows.UI.Text.Core.CoreTextCompositionSegment")
interface ICoreTextCompositionSegment : IInspectable
{
extern(Windows):
	HRESULT get_PreconversionString(HSTRING* return_value);
	HRESULT get_Range(Windows.UI.Text.Core.CoreTextRange* return_value);
}

@uuid("276b16a9-64e7-4ab0-bc4b-a02d73835bfb")
@WinrtFactory("Windows.UI.Text.Core.CoreTextCompositionStartedEventArgs")
interface ICoreTextCompositionStartedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_IsCanceled(bool* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("bf6608af-4041-47c3-b263-a918eb5eaef2")
@WinrtFactory("Windows.UI.Text.Core.CoreTextEditContext")
interface ICoreTextEditContext : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_InputScope(Windows.UI.Text.Core.CoreTextInputScope* return_value);
	HRESULT set_InputScope(Windows.UI.Text.Core.CoreTextInputScope value);
	HRESULT get_IsReadOnly(bool* return_value);
	HRESULT set_IsReadOnly(bool value);
	HRESULT get_InputPaneDisplayPolicy(Windows.UI.Text.Core.CoreTextInputPaneDisplayPolicy* return_value);
	HRESULT set_InputPaneDisplayPolicy(Windows.UI.Text.Core.CoreTextInputPaneDisplayPolicy value);
	HRESULT add_TextRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextTextRequestedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_TextRequested(EventRegistrationToken cookie);
	HRESULT add_SelectionRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextSelectionRequestedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_SelectionRequested(EventRegistrationToken cookie);
	HRESULT add_LayoutRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextLayoutRequestedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_LayoutRequested(EventRegistrationToken cookie);
	HRESULT add_TextUpdating(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextTextUpdatingEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_TextUpdating(EventRegistrationToken cookie);
	HRESULT add_SelectionUpdating(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextSelectionUpdatingEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_SelectionUpdating(EventRegistrationToken cookie);
	HRESULT add_FormatUpdating(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextFormatUpdatingEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_FormatUpdating(EventRegistrationToken cookie);
	HRESULT add_CompositionStarted(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextCompositionStartedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_CompositionStarted(EventRegistrationToken cookie);
	HRESULT add_CompositionCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextCompositionCompletedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_CompositionCompleted(EventRegistrationToken cookie);
	HRESULT add_FocusRemoved(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_FocusRemoved(EventRegistrationToken cookie);
	HRESULT abi_NotifyFocusEnter();
	HRESULT abi_NotifyFocusLeave();
	HRESULT abi_NotifyTextChanged(Windows.UI.Text.Core.CoreTextRange modifiedRange, INT32 newLength, Windows.UI.Text.Core.CoreTextRange newSelection);
	HRESULT abi_NotifySelectionChanged(Windows.UI.Text.Core.CoreTextRange selection);
	HRESULT abi_NotifyLayoutChanged();
}

@uuid("b1867dbb-083b-49e1-b281-2b35d62bf466")
@WinrtFactory("Windows.UI.Text.Core.CoreTextEditContext")
interface ICoreTextEditContext2 : IInspectable
{
extern(Windows):
	HRESULT add_NotifyFocusLeaveCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_NotifyFocusLeaveCompleted(EventRegistrationToken cookie);
}

@uuid("7310bd33-b4a8-43b1-b37b-0724d4aca7ab")
@WinrtFactory("Windows.UI.Text.Core.CoreTextFormatUpdatingEventArgs")
interface ICoreTextFormatUpdatingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Range(Windows.UI.Text.Core.CoreTextRange* return_value);
	HRESULT get_TextColor(Windows.Foundation.IReference!(Windows.UI.ViewManagement.UIElementType)* return_value);
	HRESULT get_BackgroundColor(Windows.Foundation.IReference!(Windows.UI.ViewManagement.UIElementType)* return_value);
	HRESULT get_UnderlineColor(Windows.Foundation.IReference!(Windows.UI.ViewManagement.UIElementType)* return_value);
	HRESULT get_UnderlineType(Windows.Foundation.IReference!(Windows.UI.Text.UnderlineType)* return_value);
	HRESULT get_Reason(Windows.UI.Text.Core.CoreTextFormatUpdatingReason* return_value);
	HRESULT get_Result(Windows.UI.Text.Core.CoreTextFormatUpdatingResult* return_value);
	HRESULT set_Result(Windows.UI.Text.Core.CoreTextFormatUpdatingResult value);
	HRESULT get_IsCanceled(bool* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("e972c974-4436-4917-80d0-a525e4ca6780")
@WinrtFactory("Windows.UI.Text.Core.CoreTextLayoutBounds")
interface ICoreTextLayoutBounds : IInspectable
{
extern(Windows):
	HRESULT get_TextBounds(Windows.Foundation.Rect* return_value);
	HRESULT set_TextBounds(Windows.Foundation.Rect value);
	HRESULT get_ControlBounds(Windows.Foundation.Rect* return_value);
	HRESULT set_ControlBounds(Windows.Foundation.Rect value);
}

@uuid("2555a8cc-51fd-4f03-98bf-ac78174d68e0")
@WinrtFactory("Windows.UI.Text.Core.CoreTextLayoutRequest")
interface ICoreTextLayoutRequest : IInspectable
{
extern(Windows):
	HRESULT get_Range(Windows.UI.Text.Core.CoreTextRange* return_value);
	HRESULT get_LayoutBounds(Windows.UI.Text.Core.CoreTextLayoutBounds* return_value);
	HRESULT get_IsCanceled(bool* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("b1dc6ae0-9a7b-4e9e-a566-4a6b5f8ad676")
@WinrtFactory("Windows.UI.Text.Core.CoreTextLayoutRequestedEventArgs")
interface ICoreTextLayoutRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.UI.Text.Core.CoreTextLayoutRequest* return_value);
}

@uuid("f0a70403-208b-4301-883c-74ca7485fd8d")
@WinrtFactory("Windows.UI.Text.Core.CoreTextSelectionRequest")
interface ICoreTextSelectionRequest : IInspectable
{
extern(Windows):
	HRESULT get_Selection(Windows.UI.Text.Core.CoreTextRange* return_value);
	HRESULT set_Selection(Windows.UI.Text.Core.CoreTextRange value);
	HRESULT get_IsCanceled(bool* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("13c6682b-f614-421a-8f4b-9ec8a5a37fcd")
@WinrtFactory("Windows.UI.Text.Core.CoreTextSelectionRequestedEventArgs")
interface ICoreTextSelectionRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.UI.Text.Core.CoreTextSelectionRequest* return_value);
}

@uuid("d445839f-fe7f-4bd5-8a26-0922c1b3e639")
@WinrtFactory("Windows.UI.Text.Core.CoreTextSelectionUpdatingEventArgs")
interface ICoreTextSelectionUpdatingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Selection(Windows.UI.Text.Core.CoreTextRange* return_value);
	HRESULT get_Result(Windows.UI.Text.Core.CoreTextSelectionUpdatingResult* return_value);
	HRESULT set_Result(Windows.UI.Text.Core.CoreTextSelectionUpdatingResult value);
	HRESULT get_IsCanceled(bool* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("c2507d83-6e0a-4a8a-bdf8-1948874854ba")
@WinrtFactory("Windows.UI.Text.Core.CoreTextServicesManager")
interface ICoreTextServicesManager : IInspectable
{
extern(Windows):
	HRESULT get_InputLanguage(Windows.Globalization.Language* return_value);
	HRESULT add_InputLanguageChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextServicesManager, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_InputLanguageChanged(EventRegistrationToken cookie);
	HRESULT abi_CreateEditContext(Windows.UI.Text.Core.CoreTextEditContext* return_value);
}

@uuid("1520a388-e2cf-4d65-aeb9-b32d86fe39b9")
@WinrtFactory("Windows.UI.Text.Core.CoreTextServicesManager")
interface ICoreTextServicesManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Text.Core.CoreTextServicesManager* return_value);
}

@uuid("91859a46-eccf-47a4-8ae7-098a9c6fbb15")
@WinrtFactory("Windows.UI.Text.Core.CoreTextServicesConstants")
interface ICoreTextServicesStatics : IInspectable
{
extern(Windows):
	HRESULT get_HiddenCharacter(wchar* return_value);
}

@uuid("50d950a9-f51e-4cc1-8ca1-e6346d1a61be")
@WinrtFactory("Windows.UI.Text.Core.CoreTextTextRequest")
interface ICoreTextTextRequest : IInspectable
{
extern(Windows):
	HRESULT get_Range(Windows.UI.Text.Core.CoreTextRange* return_value);
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
	HRESULT get_IsCanceled(bool* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("f096a2d0-41c6-4c02-8b1a-d953b00cabb3")
@WinrtFactory("Windows.UI.Text.Core.CoreTextTextRequestedEventArgs")
interface ICoreTextTextRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.UI.Text.Core.CoreTextTextRequest* return_value);
}

@uuid("eea7918d-cc2b-4f03-8ff6-02fd217db450")
@WinrtFactory("Windows.UI.Text.Core.CoreTextTextUpdatingEventArgs")
interface ICoreTextTextUpdatingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Range(Windows.UI.Text.Core.CoreTextRange* return_value);
	HRESULT get_Text(HSTRING* return_value);
	HRESULT get_NewSelection(Windows.UI.Text.Core.CoreTextRange* return_value);
	HRESULT get_InputLanguage(Windows.Globalization.Language* return_value);
	HRESULT get_Result(Windows.UI.Text.Core.CoreTextTextUpdatingResult* return_value);
	HRESULT set_Result(Windows.UI.Text.Core.CoreTextTextUpdatingResult value);
	HRESULT get_IsCanceled(bool* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

interface CoreTextCompositionCompletedEventArgs : Windows.UI.Text.Core.ICoreTextCompositionCompletedEventArgs
{
extern(Windows):
	final bool IsCanceled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextCompositionCompletedEventArgs)this.asInterface(uuid("1f34ebb6-b79f-4121-a5e7-fda9b8616e30"))).get_IsCanceled(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Text.Core.CoreTextCompositionSegment) CompositionSegments()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Text.Core.CoreTextCompositionSegment) _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextCompositionCompletedEventArgs)this.asInterface(uuid("1f34ebb6-b79f-4121-a5e7-fda9b8616e30"))).get_CompositionSegments(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextCompositionCompletedEventArgs)this.asInterface(uuid("1f34ebb6-b79f-4121-a5e7-fda9b8616e30"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface CoreTextCompositionSegment : Windows.UI.Text.Core.ICoreTextCompositionSegment
{
extern(Windows):
	final wstring PreconversionString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextCompositionSegment)this.asInterface(uuid("776c6bd9-4ead-4da7-8f47-3a88b523cc34"))).get_PreconversionString(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.UI.Text.Core.CoreTextRange Range()
	{
		Windows.UI.Text.Core.CoreTextRange _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextCompositionSegment)this.asInterface(uuid("776c6bd9-4ead-4da7-8f47-3a88b523cc34"))).get_Range(&_ret));
		return _ret;
	}
}

interface CoreTextCompositionStartedEventArgs : Windows.UI.Text.Core.ICoreTextCompositionStartedEventArgs
{
extern(Windows):
	final bool IsCanceled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextCompositionStartedEventArgs)this.asInterface(uuid("276b16a9-64e7-4ab0-bc4b-a02d73835bfb"))).get_IsCanceled(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextCompositionStartedEventArgs)this.asInterface(uuid("276b16a9-64e7-4ab0-bc4b-a02d73835bfb"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface CoreTextEditContext : Windows.UI.Text.Core.ICoreTextEditContext, Windows.UI.Text.Core.ICoreTextEditContext2
{
extern(Windows):
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final void Name(wstring value)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).set_Name(hstring(value).handle));
	}
	final Windows.UI.Text.Core.CoreTextInputScope InputScope()
	{
		Windows.UI.Text.Core.CoreTextInputScope _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).get_InputScope(&_ret));
		return _ret;
	}
	final void InputScope(Windows.UI.Text.Core.CoreTextInputScope value)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).set_InputScope(value));
	}
	final bool IsReadOnly()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).get_IsReadOnly(&_ret));
		return _ret;
	}
	final void IsReadOnly(bool value)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).set_IsReadOnly(value));
	}
	final Windows.UI.Text.Core.CoreTextInputPaneDisplayPolicy InputPaneDisplayPolicy()
	{
		Windows.UI.Text.Core.CoreTextInputPaneDisplayPolicy _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).get_InputPaneDisplayPolicy(&_ret));
		return _ret;
	}
	final void InputPaneDisplayPolicy(Windows.UI.Text.Core.CoreTextInputPaneDisplayPolicy value)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).set_InputPaneDisplayPolicy(value));
	}
	final EventRegistrationToken OnTextRequested(void delegate(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextTextRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).add_TextRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextTextRequestedEventArgs), Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextTextRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTextRequested(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).remove_TextRequested(cookie));
	}
	final EventRegistrationToken OnSelectionRequested(void delegate(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextSelectionRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).add_SelectionRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextSelectionRequestedEventArgs), Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextSelectionRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSelectionRequested(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).remove_SelectionRequested(cookie));
	}
	final EventRegistrationToken OnLayoutRequested(void delegate(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextLayoutRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).add_LayoutRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextLayoutRequestedEventArgs), Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextLayoutRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeLayoutRequested(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).remove_LayoutRequested(cookie));
	}
	final EventRegistrationToken OnTextUpdating(void delegate(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextTextUpdatingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).add_TextUpdating(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextTextUpdatingEventArgs), Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextTextUpdatingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTextUpdating(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).remove_TextUpdating(cookie));
	}
	final EventRegistrationToken OnSelectionUpdating(void delegate(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextSelectionUpdatingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).add_SelectionUpdating(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextSelectionUpdatingEventArgs), Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextSelectionUpdatingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSelectionUpdating(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).remove_SelectionUpdating(cookie));
	}
	final EventRegistrationToken OnFormatUpdating(void delegate(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextFormatUpdatingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).add_FormatUpdating(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextFormatUpdatingEventArgs), Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextFormatUpdatingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeFormatUpdating(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).remove_FormatUpdating(cookie));
	}
	final EventRegistrationToken OnCompositionStarted(void delegate(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextCompositionStartedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).add_CompositionStarted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextCompositionStartedEventArgs), Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextCompositionStartedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCompositionStarted(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).remove_CompositionStarted(cookie));
	}
	final EventRegistrationToken OnCompositionCompleted(void delegate(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextCompositionCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).add_CompositionCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextCompositionCompletedEventArgs), Windows.UI.Text.Core.CoreTextEditContext, Windows.UI.Text.Core.CoreTextCompositionCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCompositionCompleted(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).remove_CompositionCompleted(cookie));
	}
	final EventRegistrationToken OnFocusRemoved(void delegate(Windows.UI.Text.Core.CoreTextEditContext, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).add_FocusRemoved(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, IInspectable), Windows.UI.Text.Core.CoreTextEditContext, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeFocusRemoved(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).remove_FocusRemoved(cookie));
	}
	final void NotifyFocusEnter()
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).abi_NotifyFocusEnter());
	}
	final void NotifyFocusLeave()
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).abi_NotifyFocusLeave());
	}
	final void NotifyTextChanged(Windows.UI.Text.Core.CoreTextRange modifiedRange, INT32 newLength, Windows.UI.Text.Core.CoreTextRange newSelection)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).abi_NotifyTextChanged(modifiedRange, newLength, newSelection));
	}
	final void NotifySelectionChanged(Windows.UI.Text.Core.CoreTextRange selection)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).abi_NotifySelectionChanged(selection));
	}
	final void NotifyLayoutChanged()
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext)this.asInterface(uuid("bf6608af-4041-47c3-b263-a918eb5eaef2"))).abi_NotifyLayoutChanged());
	}
	final EventRegistrationToken OnNotifyFocusLeaveCompleted(void delegate(Windows.UI.Text.Core.CoreTextEditContext, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext2)this.asInterface(uuid("b1867dbb-083b-49e1-b281-2b35d62bf466"))).add_NotifyFocusLeaveCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextEditContext, IInspectable), Windows.UI.Text.Core.CoreTextEditContext, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeNotifyFocusLeaveCompleted(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextEditContext2)this.asInterface(uuid("b1867dbb-083b-49e1-b281-2b35d62bf466"))).remove_NotifyFocusLeaveCompleted(cookie));
	}
}

interface CoreTextFormatUpdatingEventArgs : Windows.UI.Text.Core.ICoreTextFormatUpdatingEventArgs
{
extern(Windows):
	final Windows.UI.Text.Core.CoreTextRange Range()
	{
		Windows.UI.Text.Core.CoreTextRange _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextFormatUpdatingEventArgs)this.asInterface(uuid("7310bd33-b4a8-43b1-b37b-0724d4aca7ab"))).get_Range(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.UI.ViewManagement.UIElementType) TextColor()
	{
		Windows.Foundation.IReference!(Windows.UI.ViewManagement.UIElementType) _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextFormatUpdatingEventArgs)this.asInterface(uuid("7310bd33-b4a8-43b1-b37b-0724d4aca7ab"))).get_TextColor(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.UI.ViewManagement.UIElementType) BackgroundColor()
	{
		Windows.Foundation.IReference!(Windows.UI.ViewManagement.UIElementType) _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextFormatUpdatingEventArgs)this.asInterface(uuid("7310bd33-b4a8-43b1-b37b-0724d4aca7ab"))).get_BackgroundColor(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.UI.ViewManagement.UIElementType) UnderlineColor()
	{
		Windows.Foundation.IReference!(Windows.UI.ViewManagement.UIElementType) _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextFormatUpdatingEventArgs)this.asInterface(uuid("7310bd33-b4a8-43b1-b37b-0724d4aca7ab"))).get_UnderlineColor(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.UI.Text.UnderlineType) UnderlineType()
	{
		Windows.Foundation.IReference!(Windows.UI.Text.UnderlineType) _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextFormatUpdatingEventArgs)this.asInterface(uuid("7310bd33-b4a8-43b1-b37b-0724d4aca7ab"))).get_UnderlineType(&_ret));
		return _ret;
	}
	final Windows.UI.Text.Core.CoreTextFormatUpdatingReason Reason()
	{
		Windows.UI.Text.Core.CoreTextFormatUpdatingReason _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextFormatUpdatingEventArgs)this.asInterface(uuid("7310bd33-b4a8-43b1-b37b-0724d4aca7ab"))).get_Reason(&_ret));
		return _ret;
	}
	final Windows.UI.Text.Core.CoreTextFormatUpdatingResult Result()
	{
		Windows.UI.Text.Core.CoreTextFormatUpdatingResult _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextFormatUpdatingEventArgs)this.asInterface(uuid("7310bd33-b4a8-43b1-b37b-0724d4aca7ab"))).get_Result(&_ret));
		return _ret;
	}
	final void Result(Windows.UI.Text.Core.CoreTextFormatUpdatingResult value)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextFormatUpdatingEventArgs)this.asInterface(uuid("7310bd33-b4a8-43b1-b37b-0724d4aca7ab"))).set_Result(value));
	}
	final bool IsCanceled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextFormatUpdatingEventArgs)this.asInterface(uuid("7310bd33-b4a8-43b1-b37b-0724d4aca7ab"))).get_IsCanceled(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextFormatUpdatingEventArgs)this.asInterface(uuid("7310bd33-b4a8-43b1-b37b-0724d4aca7ab"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface CoreTextLayoutBounds : Windows.UI.Text.Core.ICoreTextLayoutBounds
{
extern(Windows):
	final Windows.Foundation.Rect TextBounds()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextLayoutBounds)this.asInterface(uuid("e972c974-4436-4917-80d0-a525e4ca6780"))).get_TextBounds(&_ret));
		return _ret;
	}
	final void TextBounds(Windows.Foundation.Rect value)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextLayoutBounds)this.asInterface(uuid("e972c974-4436-4917-80d0-a525e4ca6780"))).set_TextBounds(value));
	}
	final Windows.Foundation.Rect ControlBounds()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextLayoutBounds)this.asInterface(uuid("e972c974-4436-4917-80d0-a525e4ca6780"))).get_ControlBounds(&_ret));
		return _ret;
	}
	final void ControlBounds(Windows.Foundation.Rect value)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextLayoutBounds)this.asInterface(uuid("e972c974-4436-4917-80d0-a525e4ca6780"))).set_ControlBounds(value));
	}
}

interface CoreTextLayoutRequest : Windows.UI.Text.Core.ICoreTextLayoutRequest
{
extern(Windows):
	final Windows.UI.Text.Core.CoreTextRange Range()
	{
		Windows.UI.Text.Core.CoreTextRange _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextLayoutRequest)this.asInterface(uuid("2555a8cc-51fd-4f03-98bf-ac78174d68e0"))).get_Range(&_ret));
		return _ret;
	}
	final Windows.UI.Text.Core.CoreTextLayoutBounds LayoutBounds()
	{
		Windows.UI.Text.Core.CoreTextLayoutBounds _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextLayoutRequest)this.asInterface(uuid("2555a8cc-51fd-4f03-98bf-ac78174d68e0"))).get_LayoutBounds(&_ret));
		return _ret;
	}
	final bool IsCanceled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextLayoutRequest)this.asInterface(uuid("2555a8cc-51fd-4f03-98bf-ac78174d68e0"))).get_IsCanceled(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextLayoutRequest)this.asInterface(uuid("2555a8cc-51fd-4f03-98bf-ac78174d68e0"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface CoreTextLayoutRequestedEventArgs : Windows.UI.Text.Core.ICoreTextLayoutRequestedEventArgs
{
extern(Windows):
	final Windows.UI.Text.Core.CoreTextLayoutRequest Request()
	{
		Windows.UI.Text.Core.CoreTextLayoutRequest _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextLayoutRequestedEventArgs)this.asInterface(uuid("b1dc6ae0-9a7b-4e9e-a566-4a6b5f8ad676"))).get_Request(&_ret));
		return _ret;
	}
}

interface CoreTextSelectionRequest : Windows.UI.Text.Core.ICoreTextSelectionRequest
{
extern(Windows):
	final Windows.UI.Text.Core.CoreTextRange Selection()
	{
		Windows.UI.Text.Core.CoreTextRange _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextSelectionRequest)this.asInterface(uuid("f0a70403-208b-4301-883c-74ca7485fd8d"))).get_Selection(&_ret));
		return _ret;
	}
	final void Selection(Windows.UI.Text.Core.CoreTextRange value)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextSelectionRequest)this.asInterface(uuid("f0a70403-208b-4301-883c-74ca7485fd8d"))).set_Selection(value));
	}
	final bool IsCanceled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextSelectionRequest)this.asInterface(uuid("f0a70403-208b-4301-883c-74ca7485fd8d"))).get_IsCanceled(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextSelectionRequest)this.asInterface(uuid("f0a70403-208b-4301-883c-74ca7485fd8d"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface CoreTextSelectionRequestedEventArgs : Windows.UI.Text.Core.ICoreTextSelectionRequestedEventArgs
{
extern(Windows):
	final Windows.UI.Text.Core.CoreTextSelectionRequest Request()
	{
		Windows.UI.Text.Core.CoreTextSelectionRequest _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextSelectionRequestedEventArgs)this.asInterface(uuid("13c6682b-f614-421a-8f4b-9ec8a5a37fcd"))).get_Request(&_ret));
		return _ret;
	}
}

interface CoreTextSelectionUpdatingEventArgs : Windows.UI.Text.Core.ICoreTextSelectionUpdatingEventArgs
{
extern(Windows):
	final Windows.UI.Text.Core.CoreTextRange Selection()
	{
		Windows.UI.Text.Core.CoreTextRange _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextSelectionUpdatingEventArgs)this.asInterface(uuid("d445839f-fe7f-4bd5-8a26-0922c1b3e639"))).get_Selection(&_ret));
		return _ret;
	}
	final Windows.UI.Text.Core.CoreTextSelectionUpdatingResult Result()
	{
		Windows.UI.Text.Core.CoreTextSelectionUpdatingResult _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextSelectionUpdatingEventArgs)this.asInterface(uuid("d445839f-fe7f-4bd5-8a26-0922c1b3e639"))).get_Result(&_ret));
		return _ret;
	}
	final void Result(Windows.UI.Text.Core.CoreTextSelectionUpdatingResult value)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextSelectionUpdatingEventArgs)this.asInterface(uuid("d445839f-fe7f-4bd5-8a26-0922c1b3e639"))).set_Result(value));
	}
	final bool IsCanceled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextSelectionUpdatingEventArgs)this.asInterface(uuid("d445839f-fe7f-4bd5-8a26-0922c1b3e639"))).get_IsCanceled(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextSelectionUpdatingEventArgs)this.asInterface(uuid("d445839f-fe7f-4bd5-8a26-0922c1b3e639"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface CoreTextServicesConstants
{
	private static Windows.UI.Text.Core.ICoreTextServicesStatics _staticInstance;
	public static Windows.UI.Text.Core.ICoreTextServicesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Text.Core.ICoreTextServicesStatics);
		return _staticInstance;
	}
	static wchar HiddenCharacter()
	{
		wchar _ret;
		Debug.OK(staticInstance.get_HiddenCharacter(&_ret));
		return _ret;
	}
}

interface CoreTextServicesManager : Windows.UI.Text.Core.ICoreTextServicesManager
{
extern(Windows):
	final Windows.Globalization.Language InputLanguage()
	{
		Windows.Globalization.Language _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextServicesManager)this.asInterface(uuid("c2507d83-6e0a-4a8a-bdf8-1948874854ba"))).get_InputLanguage(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnInputLanguageChanged(void delegate(Windows.UI.Text.Core.CoreTextServicesManager, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextServicesManager)this.asInterface(uuid("c2507d83-6e0a-4a8a-bdf8-1948874854ba"))).add_InputLanguageChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Text.Core.CoreTextServicesManager, IInspectable), Windows.UI.Text.Core.CoreTextServicesManager, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeInputLanguageChanged(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextServicesManager)this.asInterface(uuid("c2507d83-6e0a-4a8a-bdf8-1948874854ba"))).remove_InputLanguageChanged(cookie));
	}
	final Windows.UI.Text.Core.CoreTextEditContext CreateEditContext()
	{
		Windows.UI.Text.Core.CoreTextEditContext _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextServicesManager)this.asInterface(uuid("c2507d83-6e0a-4a8a-bdf8-1948874854ba"))).abi_CreateEditContext(&_ret));
		return _ret;
	}

	private static Windows.UI.Text.Core.ICoreTextServicesManagerStatics _staticInstance;
	public static Windows.UI.Text.Core.ICoreTextServicesManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Text.Core.ICoreTextServicesManagerStatics);
		return _staticInstance;
	}
	static Windows.UI.Text.Core.CoreTextServicesManager GetForCurrentView()
	{
		Windows.UI.Text.Core.CoreTextServicesManager _ret;
		Debug.OK(staticInstance.abi_GetForCurrentView(&_ret));
		return _ret;
	}
}

interface CoreTextTextRequest : Windows.UI.Text.Core.ICoreTextTextRequest
{
extern(Windows):
	final Windows.UI.Text.Core.CoreTextRange Range()
	{
		Windows.UI.Text.Core.CoreTextRange _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextTextRequest)this.asInterface(uuid("50d950a9-f51e-4cc1-8ca1-e6346d1a61be"))).get_Range(&_ret));
		return _ret;
	}
	final wstring Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextTextRequest)this.asInterface(uuid("50d950a9-f51e-4cc1-8ca1-e6346d1a61be"))).get_Text(&_ret));
		return hstring(_ret).d_str;
	}
	final void Text(wstring value)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextTextRequest)this.asInterface(uuid("50d950a9-f51e-4cc1-8ca1-e6346d1a61be"))).set_Text(hstring(value).handle));
	}
	final bool IsCanceled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextTextRequest)this.asInterface(uuid("50d950a9-f51e-4cc1-8ca1-e6346d1a61be"))).get_IsCanceled(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextTextRequest)this.asInterface(uuid("50d950a9-f51e-4cc1-8ca1-e6346d1a61be"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface CoreTextTextRequestedEventArgs : Windows.UI.Text.Core.ICoreTextTextRequestedEventArgs
{
extern(Windows):
	final Windows.UI.Text.Core.CoreTextTextRequest Request()
	{
		Windows.UI.Text.Core.CoreTextTextRequest _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextTextRequestedEventArgs)this.asInterface(uuid("f096a2d0-41c6-4c02-8b1a-d953b00cabb3"))).get_Request(&_ret));
		return _ret;
	}
}

interface CoreTextTextUpdatingEventArgs : Windows.UI.Text.Core.ICoreTextTextUpdatingEventArgs
{
extern(Windows):
	final Windows.UI.Text.Core.CoreTextRange Range()
	{
		Windows.UI.Text.Core.CoreTextRange _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextTextUpdatingEventArgs)this.asInterface(uuid("eea7918d-cc2b-4f03-8ff6-02fd217db450"))).get_Range(&_ret));
		return _ret;
	}
	final wstring Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextTextUpdatingEventArgs)this.asInterface(uuid("eea7918d-cc2b-4f03-8ff6-02fd217db450"))).get_Text(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.UI.Text.Core.CoreTextRange NewSelection()
	{
		Windows.UI.Text.Core.CoreTextRange _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextTextUpdatingEventArgs)this.asInterface(uuid("eea7918d-cc2b-4f03-8ff6-02fd217db450"))).get_NewSelection(&_ret));
		return _ret;
	}
	final Windows.Globalization.Language InputLanguage()
	{
		Windows.Globalization.Language _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextTextUpdatingEventArgs)this.asInterface(uuid("eea7918d-cc2b-4f03-8ff6-02fd217db450"))).get_InputLanguage(&_ret));
		return _ret;
	}
	final Windows.UI.Text.Core.CoreTextTextUpdatingResult Result()
	{
		Windows.UI.Text.Core.CoreTextTextUpdatingResult _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextTextUpdatingEventArgs)this.asInterface(uuid("eea7918d-cc2b-4f03-8ff6-02fd217db450"))).get_Result(&_ret));
		return _ret;
	}
	final void Result(Windows.UI.Text.Core.CoreTextTextUpdatingResult value)
	{
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextTextUpdatingEventArgs)this.asInterface(uuid("eea7918d-cc2b-4f03-8ff6-02fd217db450"))).set_Result(value));
	}
	final bool IsCanceled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextTextUpdatingEventArgs)this.asInterface(uuid("eea7918d-cc2b-4f03-8ff6-02fd217db450"))).get_IsCanceled(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.UI.Text.Core.ICoreTextTextUpdatingEventArgs)this.asInterface(uuid("eea7918d-cc2b-4f03-8ff6-02fd217db450"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

enum CoreTextFormatUpdatingReason
{
	None = 0,
	CompositionUnconverted = 1,
	CompositionConverted = 2,
	CompositionTargetUnconverted = 3,
	CompositionTargetConverted = 4
}

enum CoreTextFormatUpdatingResult
{
	Succeeded = 0,
	Failed = 1
}

enum CoreTextInputPaneDisplayPolicy
{
	Automatic = 0,
	Manual = 1
}

enum CoreTextInputScope
{
	Default = 0,
	Url = 1,
	FilePath = 2,
	FileName = 3,
	EmailUserName = 4,
	EmailAddress = 5,
	UserName = 6,
	PersonalFullName = 7,
	PersonalNamePrefix = 8,
	PersonalGivenName = 9,
	PersonalMiddleName = 10,
	PersonalSurname = 11,
	PersonalNameSuffix = 12,
	Address = 13,
	AddressPostalCode = 14,
	AddressStreet = 15,
	AddressStateOrProvince = 16,
	AddressCity = 17,
	AddressCountryName = 18,
	AddressCountryShortName = 19,
	CurrencyAmountAndSymbol = 20,
	CurrencyAmount = 21,
	Date = 22,
	DateMonth = 23,
	DateDay = 24,
	DateYear = 25,
	DateMonthName = 26,
	DateDayName = 27,
	Number = 29,
	SingleCharacter = 30,
	Password = 31,
	TelephoneNumber = 32,
	TelephoneCountryCode = 33,
	TelephoneAreaCode = 34,
	TelephoneLocalNumber = 35,
	Time = 36,
	TimeHour = 37,
	TimeMinuteOrSecond = 38,
	NumberFullWidth = 39,
	AlphanumericHalfWidth = 40,
	AlphanumericFullWidth = 41,
	CurrencyChinese = 42,
	Bopomofo = 43,
	Hiragana = 44,
	KatakanaHalfWidth = 45,
	KatakanaFullWidth = 46,
	Hanja = 47,
	HangulHalfWidth = 48,
	HangulFullWidth = 49,
	Search = 50,
	Formula = 51,
	SearchIncremental = 52,
	ChineseHalfWidth = 53,
	ChineseFullWidth = 54,
	NativeScript = 55,
	Text = 57,
	Chat = 58,
	NameOrPhoneNumber = 59,
	EmailUserNameOrAddress = 60,
	Private = 61,
	Maps = 62,
	PasswordNumeric = 63,
	FormulaNumber = 67,
	ChatWithoutEmoji = 68
}

enum CoreTextSelectionUpdatingResult
{
	Succeeded = 0,
	Failed = 1
}

enum CoreTextTextUpdatingResult
{
	Succeeded = 0,
	Failed = 1
}