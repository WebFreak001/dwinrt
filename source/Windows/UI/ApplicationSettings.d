module Windows.UI.ApplicationSettings;

import dwinrt;

@uuid("61c0e185-0977-4678-b4e2-98727afbeed9")
interface CredentialCommandCredentialDeletedHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.UI.ApplicationSettings.CredentialCommand command);
}

@uuid("1ee6e459-1705-4a9a-b599-a0c3d6921973")
interface WebAccountCommandInvokedHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.UI.ApplicationSettings.WebAccountCommand command, Windows.UI.ApplicationSettings.WebAccountInvokedArgs args);
}

@uuid("b7de5527-4c8f-42dd-84da-5ec493abdb9a")
interface WebAccountProviderCommandInvokedHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.UI.ApplicationSettings.WebAccountProviderCommand command);
}

@uuid("81ea942c-4f09-4406-a538-838d9b14b7e6")
@WinrtFactory("Windows.UI.ApplicationSettings.AccountsSettingsPane")
interface IAccountsSettingsPane : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_AccountCommandsRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.ApplicationSettings.AccountsSettingsPane, Windows.UI.ApplicationSettings.AccountsSettingsPaneCommandsRequestedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_AccountCommandsRequested(EventRegistrationToken cookie);
}

@uuid("3b68c099-db19-45d0-9abf-95d3773c9330")
@WinrtFactory("Windows.UI.ApplicationSettings.AccountsSettingsPaneCommandsRequestedEventArgs")
interface IAccountsSettingsPaneCommandsRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_WebAccountProviderCommands(Windows.Foundation.Collections.IVector!(Windows.UI.ApplicationSettings.WebAccountProviderCommand)* return_value);
	HRESULT get_WebAccountCommands(Windows.Foundation.Collections.IVector!(Windows.UI.ApplicationSettings.WebAccountCommand)* return_value);
	HRESULT get_CredentialCommands(Windows.Foundation.Collections.IVector!(Windows.UI.ApplicationSettings.CredentialCommand)* return_value);
	HRESULT get_Commands(Windows.Foundation.Collections.IVector!(Windows.UI.ApplicationSettings.SettingsCommand)* return_value);
	HRESULT get_HeaderText(HSTRING* return_value);
	HRESULT set_HeaderText(HSTRING value);
	HRESULT abi_GetDeferral(Windows.UI.ApplicationSettings.AccountsSettingsPaneEventDeferral* return_deferral);
}

@uuid("cbf25d3f-e5ba-40ef-93da-65e096e5fb04")
@WinrtFactory("Windows.UI.ApplicationSettings.AccountsSettingsPaneEventDeferral")
interface IAccountsSettingsPaneEventDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

@uuid("561f8b60-b0ec-4150-a8dc-208ee44b068a")
@WinrtFactory("Windows.UI.ApplicationSettings.AccountsSettingsPane")
interface IAccountsSettingsPaneStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.ApplicationSettings.AccountsSettingsPane* return_current);
	HRESULT abi_Show();
}

@uuid("d21df7c2-ce0d-484f-b8e8-e823c215765e")
@WinrtFactory("Windows.UI.ApplicationSettings.AccountsSettingsPane")
interface IAccountsSettingsPaneStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ShowManageAccountsAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_ShowAddAccountAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("a5f665e6-6143-4a7a-a971-b017ba978ce2")
@WinrtFactory("Windows.UI.ApplicationSettings.CredentialCommand")
interface ICredentialCommand : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PasswordCredential(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT get_CredentialDeleted(Windows.UI.ApplicationSettings.CredentialCommandCredentialDeletedHandler* return_value);
}

@uuid("27e88c17-bc3e-4b80-9495-4ed720e48a91")
@WinrtFactory("Windows.UI.ApplicationSettings.CredentialCommand")
interface ICredentialCommandFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateCredentialCommand(Windows.Security.Credentials.PasswordCredential passwordCredential, Windows.UI.ApplicationSettings.CredentialCommand* return_instance);
	HRESULT abi_CreateCredentialCommandWithHandler(Windows.Security.Credentials.PasswordCredential passwordCredential, Windows.UI.ApplicationSettings.CredentialCommandCredentialDeletedHandler deleted, Windows.UI.ApplicationSettings.CredentialCommand* return_instance);
}

@uuid("68e15b33-1c83-433a-aa5a-ceeea5bd4764")
@WinrtFactory("Windows.UI.ApplicationSettings.SettingsCommand")
interface ISettingsCommandFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateSettingsCommand(IInspectable settingsCommandId, HSTRING label, Windows.UI.Popups.UICommandInvokedHandler handler, Windows.UI.ApplicationSettings.SettingsCommand* return_instance);
}

@uuid("749ae954-2f69-4b17-8aba-d05ce5778e46")
@WinrtFactory("Windows.UI.ApplicationSettings.SettingsCommand")
interface ISettingsCommandStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AccountsCommand(Windows.UI.ApplicationSettings.SettingsCommand* return_value);
}

@uuid("b1cd0932-4570-4c69-8d38-89446561ace0")
@WinrtFactory("Windows.UI.ApplicationSettings.SettingsPane")
interface ISettingsPane : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("SettingsPane is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT add_CommandsRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.ApplicationSettings.SettingsPane, Windows.UI.ApplicationSettings.SettingsPaneCommandsRequestedEventArgs) handler, EventRegistrationToken* return_cookie);
	deprecated("SettingsPane is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT remove_CommandsRequested(EventRegistrationToken cookie);
}

@uuid("44df23ae-5d6e-4068-a168-f47643182114")
@WinrtFactory("Windows.UI.ApplicationSettings.SettingsPaneCommandsRequest")
interface ISettingsPaneCommandsRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("SettingsPaneCommandsRequest is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ApplicationCommands(Windows.Foundation.Collections.IVector!(Windows.UI.ApplicationSettings.SettingsCommand)* return_value);
}

@uuid("205f5d24-1b48-4629-a6ca-2fdfedafb75d")
@WinrtFactory("Windows.UI.ApplicationSettings.SettingsPaneCommandsRequestedEventArgs")
interface ISettingsPaneCommandsRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("SettingsPaneCommandsRequestedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Request(Windows.UI.ApplicationSettings.SettingsPaneCommandsRequest* return_request);
}

@uuid("1c6a52c5-ff19-471b-ba6b-f8f35694ad9a")
@WinrtFactory("Windows.UI.ApplicationSettings.SettingsPane")
interface ISettingsPaneStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("SettingsPane is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_GetForCurrentView(Windows.UI.ApplicationSettings.SettingsPane* return_current);
	deprecated("SettingsPane is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_Show();
	deprecated("SettingsPane is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Edge(Windows.UI.ApplicationSettings.SettingsEdgeLocation* return_value);
}

@uuid("caa39398-9cfa-4246-b0c4-a913a3896541")
@WinrtFactory("Windows.UI.ApplicationSettings.WebAccountCommand")
interface IWebAccountCommand : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_WebAccount(Windows.Security.Credentials.WebAccount* return_value);
	HRESULT get_Invoked(Windows.UI.ApplicationSettings.WebAccountCommandInvokedHandler* return_value);
	HRESULT get_Actions(Windows.UI.ApplicationSettings.SupportedWebAccountActions* return_value);
}

@uuid("bfa6cdff-2f2d-42f5-81de-1d56bafc496d")
@WinrtFactory("Windows.UI.ApplicationSettings.WebAccountCommand")
interface IWebAccountCommandFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWebAccountCommand(Windows.Security.Credentials.WebAccount webAccount, Windows.UI.ApplicationSettings.WebAccountCommandInvokedHandler invoked, Windows.UI.ApplicationSettings.SupportedWebAccountActions actions, Windows.UI.ApplicationSettings.WebAccountCommand* return_instance);
}

@uuid("e7abcc40-a1d8-4c5d-9a7f-1d34b2f90ad2")
@WinrtFactory("Windows.UI.ApplicationSettings.WebAccountInvokedArgs")
interface IWebAccountInvokedArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Action(Windows.UI.ApplicationSettings.WebAccountAction* return_action);
}

@uuid("d69bdd9a-a0a6-4e9b-88dc-c71e757a3501")
@WinrtFactory("Windows.UI.ApplicationSettings.WebAccountProviderCommand")
interface IWebAccountProviderCommand : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_WebAccountProvider(Windows.Security.Credentials.WebAccountProvider* return_value);
	HRESULT get_Invoked(Windows.UI.ApplicationSettings.WebAccountProviderCommandInvokedHandler* return_value);
}

@uuid("d5658a1b-b176-4776-8469-a9d3ff0b3f59")
@WinrtFactory("Windows.UI.ApplicationSettings.WebAccountProviderCommand")
interface IWebAccountProviderCommandFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWebAccountProviderCommand(Windows.Security.Credentials.WebAccountProvider webAccountProvider, Windows.UI.ApplicationSettings.WebAccountProviderCommandInvokedHandler invoked, Windows.UI.ApplicationSettings.WebAccountProviderCommand* return_instance);
}

interface AccountsSettingsPane : Windows.UI.ApplicationSettings.IAccountsSettingsPane
{
}

interface AccountsSettingsPaneCommandsRequestedEventArgs : Windows.UI.ApplicationSettings.IAccountsSettingsPaneCommandsRequestedEventArgs
{
}

interface AccountsSettingsPaneEventDeferral : Windows.UI.ApplicationSettings.IAccountsSettingsPaneEventDeferral
{
}

interface CredentialCommand : Windows.UI.ApplicationSettings.ICredentialCommand
{
}

interface SettingsCommand : Windows.UI.Popups.IUICommand
{
}

interface SettingsPane : Windows.UI.ApplicationSettings.ISettingsPane
{
}

interface SettingsPaneCommandsRequest : Windows.UI.ApplicationSettings.ISettingsPaneCommandsRequest
{
}

interface SettingsPaneCommandsRequestedEventArgs : Windows.UI.ApplicationSettings.ISettingsPaneCommandsRequestedEventArgs
{
}

interface WebAccountCommand : Windows.UI.ApplicationSettings.IWebAccountCommand
{
}

interface WebAccountInvokedArgs : Windows.UI.ApplicationSettings.IWebAccountInvokedArgs
{
}

interface WebAccountProviderCommand : Windows.UI.ApplicationSettings.IWebAccountProviderCommand
{
}

enum SettingsEdgeLocation
{
	Right = 0,
	Left = 1
}

@bitflags
enum SupportedWebAccountActions
{
	None = 0x0,
	Reconnect = 0x1,
	Remove = 0x2,
	ViewDetails = 0x4,
	Manage = 0x8,
	More = 0x10
}

enum WebAccountAction
{
	Reconnect = 0,
	Remove = 1,
	ViewDetails = 2,
	Manage = 3,
	More = 4
}