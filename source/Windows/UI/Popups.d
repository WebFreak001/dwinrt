module Windows.UI.Popups;

import dwinrt;

@uuid("33f59b01-5325-43ab-9ab3-bdae440e4121")
@WinrtFactory("Windows.UI.Popups.MessageDialog")
interface IMessageDialog : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING content, Windows.UI.Popups.MessageDialog* return_messageDialog);
	HRESULT abi_CreateWithTitle(HSTRING content, HSTRING title, Windows.UI.Popups.MessageDialog* return_messageDialog);
}

@uuid("4e9bc6dc-880d-47fc-a0a1-72b639e62559")
@WinrtFactory("Windows.UI.Popups.PopupMenu")
interface IPopupMenu : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Commands(Windows.Foundation.Collections.IVector!(Windows.UI.Popups.IUICommand)* return_value);
	HRESULT abi_ShowAsync(Windows.Foundation.Point invocationPoint, Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand)* return_asyncOperation);
	HRESULT abi_ShowAsyncWithRect(Windows.Foundation.Rect selection, Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand)* return_asyncOperation);
	HRESULT abi_ShowAsyncWithRectAndPlacement(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.IAsyncOperation!(Windows.UI.Popups.IUICommand)* return_asyncOperation);
}

@uuid("4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f")
interface IUICommand : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Label(HSTRING* return_value);
	HRESULT set_Label(HSTRING value);
	HRESULT get_Invoked(Windows.UI.Popups.UICommandInvokedHandler** return_value);
	HRESULT set_Invoked(Windows.UI.Popups.UICommandInvokedHandler* value);
	HRESULT get_Id(IInspectable* return_value);
	HRESULT set_Id(IInspectable value);
}

@uuid("a21a8189-26b0-4676-ae94-54041bc125e8")
@WinrtFactory("Windows.UI.Popups.UICommand")
interface IUICommandFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING label, Windows.UI.Popups.UICommand* return_instance);
	HRESULT abi_CreateWithHandler(HSTRING label, Windows.UI.Popups.UICommandInvokedHandler* action, Windows.UI.Popups.UICommand* return_instance);
	HRESULT abi_CreateWithHandlerAndId(HSTRING label, Windows.UI.Popups.UICommandInvokedHandler* action, IInspectable commandId, Windows.UI.Popups.UICommand* return_instance);
}

interface MessageDialog
{
}

interface PopupMenu
{
}

interface UICommand
{
}

interface UICommandSeparator
{
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