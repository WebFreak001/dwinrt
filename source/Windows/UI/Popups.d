module Windows.UI.Popups;

import dwinrt;

@uuid("daf77a4f-c27a-4298-9ac6-2922c45e7da6")
interface UICommandInvokedHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.UI.Popups.IUICommand command);
}

@uuid("33f59b01-5325-43ab-9ab3-bdae440e4121")
@WinrtFactory("Windows.UI.Popups.MessageDialog")
interface IMessageDialog : IInspectable
{
extern(Windows):
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_Commands(Windows.Foundation.Collections.IVector!(Windows.UI.Popups.IUICommand)* return_value);
	HRESULT get_DefaultCommandIndex(UINT32* return_value);
	HRESULT set_DefaultCommandIndex(UINT32 value);
	HRESULT get_CancelCommandIndex(UINT32* return_value);
	HRESULT set_CancelCommandIndex(UINT32 value);
	HRESULT get_Content(HSTRING* return_value);
	HRESULT set_Content(HSTRING value);
	HRESULT abi_ShowAsync(Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand)* return_messageDialogAsyncOperation);
	HRESULT get_Options(Windows.UI.Popups.MessageDialogOptions* return_value);
	HRESULT set_Options(Windows.UI.Popups.MessageDialogOptions value);
}

@uuid("2d161777-a66f-4ea5-bb87-793ffa4941f2")
@WinrtFactory("Windows.UI.Popups.MessageDialog")
interface IMessageDialogFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING content, Windows.UI.Popups.MessageDialog* return_messageDialog);
	HRESULT abi_CreateWithTitle(HSTRING content, HSTRING title, Windows.UI.Popups.MessageDialog* return_messageDialog);
}

@uuid("4e9bc6dc-880d-47fc-a0a1-72b639e62559")
@WinrtFactory("Windows.UI.Popups.PopupMenu")
interface IPopupMenu : IInspectable
{
extern(Windows):
	HRESULT get_Commands(Windows.Foundation.Collections.IVector!(Windows.UI.Popups.IUICommand)* return_value);
	HRESULT abi_ShowAsync(Windows.Foundation.Point invocationPoint, Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand)* return_asyncOperation);
	HRESULT abi_ShowForSelectionAsync(Windows.Foundation.Rect selection, Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand)* return_asyncOperation);
	HRESULT abi_ShowForSelectionAsync(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand)* return_asyncOperation);
}

@uuid("4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f")
interface IUICommand : IInspectable
{
extern(Windows):
	HRESULT get_Label(HSTRING* return_value);
	HRESULT set_Label(HSTRING value);
	HRESULT get_Invoked(Windows.UI.Popups.UICommandInvokedHandler* return_value);
	HRESULT set_Invoked(Windows.UI.Popups.UICommandInvokedHandler value);
	HRESULT get_Id(IInspectable* return_value);
	HRESULT set_Id(IInspectable value);
}

@uuid("a21a8189-26b0-4676-ae94-54041bc125e8")
@WinrtFactory("Windows.UI.Popups.UICommand")
interface IUICommandFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING label, Windows.UI.Popups.UICommand* return_instance);
	HRESULT abi_CreateWithHandler(HSTRING label, Windows.UI.Popups.UICommandInvokedHandler action, Windows.UI.Popups.UICommand* return_instance);
	HRESULT abi_CreateWithHandlerAndId(HSTRING label, Windows.UI.Popups.UICommandInvokedHandler action, IInspectable commandId, Windows.UI.Popups.UICommand* return_instance);
}

interface MessageDialog : Windows.UI.Popups.IMessageDialog
{
extern(Windows):
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Popups.IMessageDialog)this.asInterface(uuid("33f59b01-5325-43ab-9ab3-bdae440e4121"))).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Popups.IMessageDialog)this.asInterface(uuid("33f59b01-5325-43ab-9ab3-bdae440e4121"))).set_Title(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Popups.IUICommand) Commands()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Popups.IUICommand) _ret;
		Debug.OK((cast(Windows.UI.Popups.IMessageDialog)this.asInterface(uuid("33f59b01-5325-43ab-9ab3-bdae440e4121"))).get_Commands(&_ret));
		return _ret;
	}
	final UINT32 DefaultCommandIndex()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.Popups.IMessageDialog)this.asInterface(uuid("33f59b01-5325-43ab-9ab3-bdae440e4121"))).get_DefaultCommandIndex(&_ret));
		return _ret;
	}
	final void DefaultCommandIndex(UINT32 value)
	{
		Debug.OK((cast(Windows.UI.Popups.IMessageDialog)this.asInterface(uuid("33f59b01-5325-43ab-9ab3-bdae440e4121"))).set_DefaultCommandIndex(value));
	}
	final UINT32 CancelCommandIndex()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.Popups.IMessageDialog)this.asInterface(uuid("33f59b01-5325-43ab-9ab3-bdae440e4121"))).get_CancelCommandIndex(&_ret));
		return _ret;
	}
	final void CancelCommandIndex(UINT32 value)
	{
		Debug.OK((cast(Windows.UI.Popups.IMessageDialog)this.asInterface(uuid("33f59b01-5325-43ab-9ab3-bdae440e4121"))).set_CancelCommandIndex(value));
	}
	final HSTRING Content()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Popups.IMessageDialog)this.asInterface(uuid("33f59b01-5325-43ab-9ab3-bdae440e4121"))).get_Content(&_ret));
		return _ret;
	}
	final void Content(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Popups.IMessageDialog)this.asInterface(uuid("33f59b01-5325-43ab-9ab3-bdae440e4121"))).set_Content(value));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand) ShowAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand) _ret;
		Debug.OK((cast(Windows.UI.Popups.IMessageDialog)this.asInterface(uuid("33f59b01-5325-43ab-9ab3-bdae440e4121"))).abi_ShowAsync(&_ret));
		return _ret;
	}
	final Windows.UI.Popups.MessageDialogOptions Options()
	{
		Windows.UI.Popups.MessageDialogOptions _ret;
		Debug.OK((cast(Windows.UI.Popups.IMessageDialog)this.asInterface(uuid("33f59b01-5325-43ab-9ab3-bdae440e4121"))).get_Options(&_ret));
		return _ret;
	}
	final void Options(Windows.UI.Popups.MessageDialogOptions value)
	{
		Debug.OK((cast(Windows.UI.Popups.IMessageDialog)this.asInterface(uuid("33f59b01-5325-43ab-9ab3-bdae440e4121"))).set_Options(value));
	}
	static Windows.UI.Popups.MessageDialog New(HSTRING content)
	{
		auto factory = factory!(Windows.UI.Popups.IMessageDialogFactory);
		Windows.UI.Popups.MessageDialog _ret;
		Debug.OK((cast(Windows.UI.Popups.IMessageDialogFactory)factory.asInterface(uuid("2d161777-a66f-4ea5-bb87-793ffa4941f2"))).abi_Create(content, &_ret));
		return _ret;
	}
	static Windows.UI.Popups.MessageDialog New(HSTRING content, HSTRING title)
	{
		auto factory = factory!(Windows.UI.Popups.IMessageDialogFactory);
		Windows.UI.Popups.MessageDialog _ret;
		Debug.OK((cast(Windows.UI.Popups.IMessageDialogFactory)factory.asInterface(uuid("2d161777-a66f-4ea5-bb87-793ffa4941f2"))).abi_CreateWithTitle(content, title, &_ret));
		return _ret;
	}
}

interface PopupMenu : Windows.UI.Popups.IPopupMenu
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.UI.Popups.IUICommand) Commands()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Popups.IUICommand) _ret;
		Debug.OK((cast(Windows.UI.Popups.IPopupMenu)this.asInterface(uuid("4e9bc6dc-880d-47fc-a0a1-72b639e62559"))).get_Commands(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand) ShowAsync(Windows.Foundation.Point invocationPoint)
	{
		Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand) _ret;
		Debug.OK((cast(Windows.UI.Popups.IPopupMenu)this.asInterface(uuid("4e9bc6dc-880d-47fc-a0a1-72b639e62559"))).abi_ShowAsync(invocationPoint, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand) ShowForSelectionAsync(Windows.Foundation.Rect selection)
	{
		Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand) _ret;
		Debug.OK((cast(Windows.UI.Popups.IPopupMenu)this.asInterface(uuid("4e9bc6dc-880d-47fc-a0a1-72b639e62559"))).abi_ShowForSelectionAsync(selection, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand) ShowForSelectionAsync(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement)
	{
		Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand) _ret;
		Debug.OK((cast(Windows.UI.Popups.IPopupMenu)this.asInterface(uuid("4e9bc6dc-880d-47fc-a0a1-72b639e62559"))).abi_ShowForSelectionAsync(selection, preferredPlacement, &_ret));
		return _ret;
	}
	static PopupMenu New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PopupMenu).abi_ActivateInstance(&ret));
		return cast(PopupMenu) ret;
	}
}

interface UICommand : Windows.UI.Popups.IUICommand
{
extern(Windows):
	final HSTRING Label()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Popups.IUICommand)this.asInterface(uuid("4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f"))).get_Label(&_ret));
		return _ret;
	}
	final void Label(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Popups.IUICommand)this.asInterface(uuid("4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f"))).set_Label(value));
	}
	final Windows.UI.Popups.UICommandInvokedHandler Invoked()
	{
		Windows.UI.Popups.UICommandInvokedHandler _ret;
		Debug.OK((cast(Windows.UI.Popups.IUICommand)this.asInterface(uuid("4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f"))).get_Invoked(&_ret));
		return _ret;
	}
	final void Invoked(Windows.UI.Popups.UICommandInvokedHandler value)
	{
		Debug.OK((cast(Windows.UI.Popups.IUICommand)this.asInterface(uuid("4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f"))).set_Invoked(value));
	}
	final IInspectable Id()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Popups.IUICommand)this.asInterface(uuid("4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f"))).get_Id(&_ret));
		return _ret;
	}
	final void Id(IInspectable value)
	{
		Debug.OK((cast(Windows.UI.Popups.IUICommand)this.asInterface(uuid("4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f"))).set_Id(value));
	}
	static UICommand New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(UICommand).abi_ActivateInstance(&ret));
		return cast(UICommand) ret;
	}
	static Windows.UI.Popups.UICommand New(HSTRING label)
	{
		auto factory = factory!(Windows.UI.Popups.IUICommandFactory);
		Windows.UI.Popups.UICommand _ret;
		Debug.OK((cast(Windows.UI.Popups.IUICommandFactory)factory.asInterface(uuid("a21a8189-26b0-4676-ae94-54041bc125e8"))).abi_Create(label, &_ret));
		return _ret;
	}
	static Windows.UI.Popups.UICommand New(HSTRING label, Windows.UI.Popups.UICommandInvokedHandler action)
	{
		auto factory = factory!(Windows.UI.Popups.IUICommandFactory);
		Windows.UI.Popups.UICommand _ret;
		Debug.OK((cast(Windows.UI.Popups.IUICommandFactory)factory.asInterface(uuid("a21a8189-26b0-4676-ae94-54041bc125e8"))).abi_CreateWithHandler(label, action, &_ret));
		return _ret;
	}
	static Windows.UI.Popups.UICommand New(HSTRING label, Windows.UI.Popups.UICommandInvokedHandler action, IInspectable commandId)
	{
		auto factory = factory!(Windows.UI.Popups.IUICommandFactory);
		Windows.UI.Popups.UICommand _ret;
		Debug.OK((cast(Windows.UI.Popups.IUICommandFactory)factory.asInterface(uuid("a21a8189-26b0-4676-ae94-54041bc125e8"))).abi_CreateWithHandlerAndId(label, action, commandId, &_ret));
		return _ret;
	}
}

interface UICommandSeparator : Windows.UI.Popups.IUICommand
{
extern(Windows):
	final HSTRING Label()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Popups.IUICommand)this.asInterface(uuid("4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f"))).get_Label(&_ret));
		return _ret;
	}
	final void Label(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Popups.IUICommand)this.asInterface(uuid("4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f"))).set_Label(value));
	}
	final Windows.UI.Popups.UICommandInvokedHandler Invoked()
	{
		Windows.UI.Popups.UICommandInvokedHandler _ret;
		Debug.OK((cast(Windows.UI.Popups.IUICommand)this.asInterface(uuid("4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f"))).get_Invoked(&_ret));
		return _ret;
	}
	final void Invoked(Windows.UI.Popups.UICommandInvokedHandler value)
	{
		Debug.OK((cast(Windows.UI.Popups.IUICommand)this.asInterface(uuid("4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f"))).set_Invoked(value));
	}
	final IInspectable Id()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Popups.IUICommand)this.asInterface(uuid("4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f"))).get_Id(&_ret));
		return _ret;
	}
	final void Id(IInspectable value)
	{
		Debug.OK((cast(Windows.UI.Popups.IUICommand)this.asInterface(uuid("4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f"))).set_Id(value));
	}
	static UICommandSeparator New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(UICommandSeparator).abi_ActivateInstance(&ret));
		return cast(UICommandSeparator) ret;
	}
}

@bitflags
enum MessageDialogOptions
{
	None = 0x0,
	AcceptUserInputAfterDelay = 0x1
}

enum Placement
{
	Default = 0,
	Above = 1,
	Below = 2,
	Left = 3,
	Right = 4
}