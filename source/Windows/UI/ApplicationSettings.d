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
extern(Windows):
	HRESULT add_AccountCommandsRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.ApplicationSettings.AccountsSettingsPane, Windows.UI.ApplicationSettings.AccountsSettingsPaneCommandsRequestedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_AccountCommandsRequested(EventRegistrationToken cookie);
}

@uuid("3b68c099-db19-45d0-9abf-95d3773c9330")
@WinrtFactory("Windows.UI.ApplicationSettings.AccountsSettingsPaneCommandsRequestedEventArgs")
interface IAccountsSettingsPaneCommandsRequestedEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("561f8b60-b0ec-4150-a8dc-208ee44b068a")
@WinrtFactory("Windows.UI.ApplicationSettings.AccountsSettingsPane")
interface IAccountsSettingsPaneStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.ApplicationSettings.AccountsSettingsPane* return_current);
	HRESULT abi_Show();
}

@uuid("d21df7c2-ce0d-484f-b8e8-e823c215765e")
@WinrtFactory("Windows.UI.ApplicationSettings.AccountsSettingsPane")
interface IAccountsSettingsPaneStatics2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ShowManageAccountsAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_ShowAddAccountAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
}
@uuid("d21df7c2-ce0d-484f-b8e8-e823c215765e")
@WinrtFactory("Windows.UI.ApplicationSettings.AccountsSettingsPane")
interface IAccountsSettingsPaneStatics2 : IAccountsSettingsPaneStatics2_Base, Windows.UI.ApplicationSettings.IAccountsSettingsPaneStatics {}

@uuid("a5f665e6-6143-4a7a-a971-b017ba978ce2")
@WinrtFactory("Windows.UI.ApplicationSettings.CredentialCommand")
interface ICredentialCommand : IInspectable
{
extern(Windows):
	HRESULT get_PasswordCredential(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT get_CredentialDeleted(Windows.UI.ApplicationSettings.CredentialCommandCredentialDeletedHandler* return_value);
}

@uuid("27e88c17-bc3e-4b80-9495-4ed720e48a91")
@WinrtFactory("Windows.UI.ApplicationSettings.CredentialCommand")
interface ICredentialCommandFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateCredentialCommand(Windows.Security.Credentials.PasswordCredential passwordCredential, Windows.UI.ApplicationSettings.CredentialCommand* return_instance);
	HRESULT abi_CreateCredentialCommandWithHandler(Windows.Security.Credentials.PasswordCredential passwordCredential, Windows.UI.ApplicationSettings.CredentialCommandCredentialDeletedHandler deleted, Windows.UI.ApplicationSettings.CredentialCommand* return_instance);
}

@uuid("68e15b33-1c83-433a-aa5a-ceeea5bd4764")
@WinrtFactory("Windows.UI.ApplicationSettings.SettingsCommand")
interface ISettingsCommandFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateSettingsCommand(IInspectable settingsCommandId, HSTRING label, Windows.UI.Popups.UICommandInvokedHandler handler, Windows.UI.ApplicationSettings.SettingsCommand* return_instance);
}

@uuid("749ae954-2f69-4b17-8aba-d05ce5778e46")
@WinrtFactory("Windows.UI.ApplicationSettings.SettingsCommand")
interface ISettingsCommandStatics : IInspectable
{
extern(Windows):
	HRESULT get_AccountsCommand(Windows.UI.ApplicationSettings.SettingsCommand* return_value);
}

@uuid("b1cd0932-4570-4c69-8d38-89446561ace0")
@WinrtFactory("Windows.UI.ApplicationSettings.SettingsPane")
interface ISettingsPane : IInspectable
{
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
extern(Windows):
	deprecated("SettingsPaneCommandsRequest is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ApplicationCommands(Windows.Foundation.Collections.IVector!(Windows.UI.ApplicationSettings.SettingsCommand)* return_value);
}

@uuid("205f5d24-1b48-4629-a6ca-2fdfedafb75d")
@WinrtFactory("Windows.UI.ApplicationSettings.SettingsPaneCommandsRequestedEventArgs")
interface ISettingsPaneCommandsRequestedEventArgs : IInspectable
{
extern(Windows):
	deprecated("SettingsPaneCommandsRequestedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Request(Windows.UI.ApplicationSettings.SettingsPaneCommandsRequest* return_request);
}

@uuid("1c6a52c5-ff19-471b-ba6b-f8f35694ad9a")
@WinrtFactory("Windows.UI.ApplicationSettings.SettingsPane")
interface ISettingsPaneStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_WebAccount(Windows.Security.Credentials.WebAccount* return_value);
	HRESULT get_Invoked(Windows.UI.ApplicationSettings.WebAccountCommandInvokedHandler* return_value);
	HRESULT get_Actions(Windows.UI.ApplicationSettings.SupportedWebAccountActions* return_value);
}

@uuid("bfa6cdff-2f2d-42f5-81de-1d56bafc496d")
@WinrtFactory("Windows.UI.ApplicationSettings.WebAccountCommand")
interface IWebAccountCommandFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWebAccountCommand(Windows.Security.Credentials.WebAccount webAccount, Windows.UI.ApplicationSettings.WebAccountCommandInvokedHandler invoked, Windows.UI.ApplicationSettings.SupportedWebAccountActions actions, Windows.UI.ApplicationSettings.WebAccountCommand* return_instance);
}

@uuid("e7abcc40-a1d8-4c5d-9a7f-1d34b2f90ad2")
@WinrtFactory("Windows.UI.ApplicationSettings.WebAccountInvokedArgs")
interface IWebAccountInvokedArgs : IInspectable
{
extern(Windows):
	HRESULT get_Action(Windows.UI.ApplicationSettings.WebAccountAction* return_action);
}

@uuid("d69bdd9a-a0a6-4e9b-88dc-c71e757a3501")
@WinrtFactory("Windows.UI.ApplicationSettings.WebAccountProviderCommand")
interface IWebAccountProviderCommand : IInspectable
{
extern(Windows):
	HRESULT get_WebAccountProvider(Windows.Security.Credentials.WebAccountProvider* return_value);
	HRESULT get_Invoked(Windows.UI.ApplicationSettings.WebAccountProviderCommandInvokedHandler* return_value);
}

@uuid("d5658a1b-b176-4776-8469-a9d3ff0b3f59")
@WinrtFactory("Windows.UI.ApplicationSettings.WebAccountProviderCommand")
interface IWebAccountProviderCommandFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWebAccountProviderCommand(Windows.Security.Credentials.WebAccountProvider webAccountProvider, Windows.UI.ApplicationSettings.WebAccountProviderCommandInvokedHandler invoked, Windows.UI.ApplicationSettings.WebAccountProviderCommand* return_instance);
}

interface AccountsSettingsPane : Windows.UI.ApplicationSettings.IAccountsSettingsPane
{
extern(Windows):
	final EventRegistrationToken OnAccountCommandsRequested(void delegate(Windows.UI.ApplicationSettings.AccountsSettingsPane, Windows.UI.ApplicationSettings.AccountsSettingsPaneCommandsRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.ApplicationSettings.IAccountsSettingsPane)this.asInterface(uuid("81ea942c-4f09-4406-a538-838d9b14b7e6"))).add_AccountCommandsRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.ApplicationSettings.AccountsSettingsPane, Windows.UI.ApplicationSettings.AccountsSettingsPaneCommandsRequestedEventArgs), Windows.UI.ApplicationSettings.AccountsSettingsPane, Windows.UI.ApplicationSettings.AccountsSettingsPaneCommandsRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAccountCommandsRequested(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.ApplicationSettings.IAccountsSettingsPane)this.asInterface(uuid("81ea942c-4f09-4406-a538-838d9b14b7e6"))).remove_AccountCommandsRequested(cookie));
	}

	private static Windows.UI.ApplicationSettings.IAccountsSettingsPaneStatics _staticInstance;
	public static Windows.UI.ApplicationSettings.IAccountsSettingsPaneStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.ApplicationSettings.IAccountsSettingsPaneStatics);
		return _staticInstance;
	}
	static Windows.UI.ApplicationSettings.AccountsSettingsPane GetForCurrentView()
	{
		Windows.UI.ApplicationSettings.AccountsSettingsPane _ret;
		Debug.OK(staticInstance.abi_GetForCurrentView(&_ret));
		return _ret;
	}
	static void Show()
	{
		Debug.OK(staticInstance.abi_Show());
	}
}

interface AccountsSettingsPaneCommandsRequestedEventArgs : Windows.UI.ApplicationSettings.IAccountsSettingsPaneCommandsRequestedEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.UI.ApplicationSettings.WebAccountProviderCommand) WebAccountProviderCommands()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.ApplicationSettings.WebAccountProviderCommand) _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.IAccountsSettingsPaneCommandsRequestedEventArgs)this.asInterface(uuid("3b68c099-db19-45d0-9abf-95d3773c9330"))).get_WebAccountProviderCommands(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.ApplicationSettings.WebAccountCommand) WebAccountCommands()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.ApplicationSettings.WebAccountCommand) _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.IAccountsSettingsPaneCommandsRequestedEventArgs)this.asInterface(uuid("3b68c099-db19-45d0-9abf-95d3773c9330"))).get_WebAccountCommands(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.ApplicationSettings.CredentialCommand) CredentialCommands()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.ApplicationSettings.CredentialCommand) _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.IAccountsSettingsPaneCommandsRequestedEventArgs)this.asInterface(uuid("3b68c099-db19-45d0-9abf-95d3773c9330"))).get_CredentialCommands(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.ApplicationSettings.SettingsCommand) Commands()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.ApplicationSettings.SettingsCommand) _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.IAccountsSettingsPaneCommandsRequestedEventArgs)this.asInterface(uuid("3b68c099-db19-45d0-9abf-95d3773c9330"))).get_Commands(&_ret));
		return _ret;
	}
	final wstring HeaderText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.IAccountsSettingsPaneCommandsRequestedEventArgs)this.asInterface(uuid("3b68c099-db19-45d0-9abf-95d3773c9330"))).get_HeaderText(&_ret));
		return hstring(_ret).d_str;
	}
	final void HeaderText(wstring value)
	{
		Debug.OK((cast(Windows.UI.ApplicationSettings.IAccountsSettingsPaneCommandsRequestedEventArgs)this.asInterface(uuid("3b68c099-db19-45d0-9abf-95d3773c9330"))).set_HeaderText(hstring(value).handle));
	}
	final Windows.UI.ApplicationSettings.AccountsSettingsPaneEventDeferral GetDeferral()
	{
		Windows.UI.ApplicationSettings.AccountsSettingsPaneEventDeferral _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.IAccountsSettingsPaneCommandsRequestedEventArgs)this.asInterface(uuid("3b68c099-db19-45d0-9abf-95d3773c9330"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface AccountsSettingsPaneEventDeferral : Windows.UI.ApplicationSettings.IAccountsSettingsPaneEventDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.UI.ApplicationSettings.IAccountsSettingsPaneEventDeferral)this.asInterface(uuid("cbf25d3f-e5ba-40ef-93da-65e096e5fb04"))).abi_Complete());
	}
}

interface CredentialCommand : Windows.UI.ApplicationSettings.ICredentialCommand
{
extern(Windows):
	final Windows.Security.Credentials.PasswordCredential PasswordCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.ICredentialCommand)this.asInterface(uuid("a5f665e6-6143-4a7a-a971-b017ba978ce2"))).get_PasswordCredential(&_ret));
		return _ret;
	}
	final Windows.UI.ApplicationSettings.CredentialCommandCredentialDeletedHandler CredentialDeleted()
	{
		Windows.UI.ApplicationSettings.CredentialCommandCredentialDeletedHandler _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.ICredentialCommand)this.asInterface(uuid("a5f665e6-6143-4a7a-a971-b017ba978ce2"))).get_CredentialDeleted(&_ret));
		return _ret;
	}
	static Windows.UI.ApplicationSettings.CredentialCommand New(Windows.Security.Credentials.PasswordCredential passwordCredential)
	{
		auto factory = factory!(Windows.UI.ApplicationSettings.ICredentialCommandFactory);
		Windows.UI.ApplicationSettings.CredentialCommand _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.ICredentialCommandFactory)factory.asInterface(uuid("27e88c17-bc3e-4b80-9495-4ed720e48a91"))).abi_CreateCredentialCommand(passwordCredential, &_ret));
		return _ret;
	}
	static Windows.UI.ApplicationSettings.CredentialCommand New(Windows.Security.Credentials.PasswordCredential passwordCredential, Windows.UI.ApplicationSettings.CredentialCommandCredentialDeletedHandler deleted)
	{
		auto factory = factory!(Windows.UI.ApplicationSettings.ICredentialCommandFactory);
		Windows.UI.ApplicationSettings.CredentialCommand _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.ICredentialCommandFactory)factory.asInterface(uuid("27e88c17-bc3e-4b80-9495-4ed720e48a91"))).abi_CreateCredentialCommandWithHandler(passwordCredential, deleted, &_ret));
		return _ret;
	}
}

interface SettingsCommand : Windows.UI.Popups.IUICommand
{
extern(Windows):
	final wstring Label()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Popups.IUICommand)this.asInterface(uuid("4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f"))).get_Label(&_ret));
		return hstring(_ret).d_str;
	}
	final void Label(wstring value)
	{
		Debug.OK((cast(Windows.UI.Popups.IUICommand)this.asInterface(uuid("4ff93a75-4145-47ff-ac7f-dff1c1fa5b0f"))).set_Label(hstring(value).handle));
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

	private static Windows.UI.ApplicationSettings.ISettingsCommandStatics _staticInstance;
	public static Windows.UI.ApplicationSettings.ISettingsCommandStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.ApplicationSettings.ISettingsCommandStatics);
		return _staticInstance;
	}
	static Windows.UI.ApplicationSettings.SettingsCommand AccountsCommand()
	{
		Windows.UI.ApplicationSettings.SettingsCommand _ret;
		Debug.OK(staticInstance.get_AccountsCommand(&_ret));
		return _ret;
	}
	static Windows.UI.ApplicationSettings.SettingsCommand New(IInspectable settingsCommandId, wstring label, Windows.UI.Popups.UICommandInvokedHandler handler)
	{
		auto factory = factory!(Windows.UI.ApplicationSettings.ISettingsCommandFactory);
		Windows.UI.ApplicationSettings.SettingsCommand _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.ISettingsCommandFactory)factory.asInterface(uuid("68e15b33-1c83-433a-aa5a-ceeea5bd4764"))).abi_CreateSettingsCommand(settingsCommandId, hstring(label).handle, handler, &_ret));
		return _ret;
	}
}

interface SettingsPane : Windows.UI.ApplicationSettings.ISettingsPane
{
extern(Windows):
	deprecated("SettingsPane is deprecated and might not work on all platforms. For more info, see MSDN.")
	final EventRegistrationToken OnCommandsRequested(void delegate(Windows.UI.ApplicationSettings.SettingsPane, Windows.UI.ApplicationSettings.SettingsPaneCommandsRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.ApplicationSettings.ISettingsPane)this.asInterface(uuid("b1cd0932-4570-4c69-8d38-89446561ace0"))).add_CommandsRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.ApplicationSettings.SettingsPane, Windows.UI.ApplicationSettings.SettingsPaneCommandsRequestedEventArgs), Windows.UI.ApplicationSettings.SettingsPane, Windows.UI.ApplicationSettings.SettingsPaneCommandsRequestedEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("SettingsPane is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void removeCommandsRequested(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.ApplicationSettings.ISettingsPane)this.asInterface(uuid("b1cd0932-4570-4c69-8d38-89446561ace0"))).remove_CommandsRequested(cookie));
	}

	private static Windows.UI.ApplicationSettings.ISettingsPaneStatics _staticInstance;
	public static Windows.UI.ApplicationSettings.ISettingsPaneStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.ApplicationSettings.ISettingsPaneStatics);
		return _staticInstance;
	}
	deprecated("SettingsPane is deprecated and might not work on all platforms. For more info, see MSDN.")
	static Windows.UI.ApplicationSettings.SettingsPane GetForCurrentView()
	{
		Windows.UI.ApplicationSettings.SettingsPane _ret;
		Debug.OK(staticInstance.abi_GetForCurrentView(&_ret));
		return _ret;
	}
	deprecated("SettingsPane is deprecated and might not work on all platforms. For more info, see MSDN.")
	static void Show()
	{
		Debug.OK(staticInstance.abi_Show());
	}
	deprecated("SettingsPane is deprecated and might not work on all platforms. For more info, see MSDN.")
	static Windows.UI.ApplicationSettings.SettingsEdgeLocation Edge()
	{
		Windows.UI.ApplicationSettings.SettingsEdgeLocation _ret;
		Debug.OK(staticInstance.get_Edge(&_ret));
		return _ret;
	}
}

interface SettingsPaneCommandsRequest : Windows.UI.ApplicationSettings.ISettingsPaneCommandsRequest
{
extern(Windows):
	deprecated("SettingsPaneCommandsRequest is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.Collections.IVector!(Windows.UI.ApplicationSettings.SettingsCommand) ApplicationCommands()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.ApplicationSettings.SettingsCommand) _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.ISettingsPaneCommandsRequest)this.asInterface(uuid("44df23ae-5d6e-4068-a168-f47643182114"))).get_ApplicationCommands(&_ret));
		return _ret;
	}
}

interface SettingsPaneCommandsRequestedEventArgs : Windows.UI.ApplicationSettings.ISettingsPaneCommandsRequestedEventArgs
{
extern(Windows):
	deprecated("SettingsPaneCommandsRequestedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.UI.ApplicationSettings.SettingsPaneCommandsRequest Request()
	{
		Windows.UI.ApplicationSettings.SettingsPaneCommandsRequest _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.ISettingsPaneCommandsRequestedEventArgs)this.asInterface(uuid("205f5d24-1b48-4629-a6ca-2fdfedafb75d"))).get_Request(&_ret));
		return _ret;
	}
}

interface WebAccountCommand : Windows.UI.ApplicationSettings.IWebAccountCommand
{
extern(Windows):
	final Windows.Security.Credentials.WebAccount WebAccount()
	{
		Windows.Security.Credentials.WebAccount _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.IWebAccountCommand)this.asInterface(uuid("caa39398-9cfa-4246-b0c4-a913a3896541"))).get_WebAccount(&_ret));
		return _ret;
	}
	final Windows.UI.ApplicationSettings.WebAccountCommandInvokedHandler Invoked()
	{
		Windows.UI.ApplicationSettings.WebAccountCommandInvokedHandler _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.IWebAccountCommand)this.asInterface(uuid("caa39398-9cfa-4246-b0c4-a913a3896541"))).get_Invoked(&_ret));
		return _ret;
	}
	final Windows.UI.ApplicationSettings.SupportedWebAccountActions Actions()
	{
		Windows.UI.ApplicationSettings.SupportedWebAccountActions _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.IWebAccountCommand)this.asInterface(uuid("caa39398-9cfa-4246-b0c4-a913a3896541"))).get_Actions(&_ret));
		return _ret;
	}
	static Windows.UI.ApplicationSettings.WebAccountCommand New(Windows.Security.Credentials.WebAccount webAccount, Windows.UI.ApplicationSettings.WebAccountCommandInvokedHandler invoked, Windows.UI.ApplicationSettings.SupportedWebAccountActions actions)
	{
		auto factory = factory!(Windows.UI.ApplicationSettings.IWebAccountCommandFactory);
		Windows.UI.ApplicationSettings.WebAccountCommand _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.IWebAccountCommandFactory)factory.asInterface(uuid("bfa6cdff-2f2d-42f5-81de-1d56bafc496d"))).abi_CreateWebAccountCommand(webAccount, invoked, actions, &_ret));
		return _ret;
	}
}

interface WebAccountInvokedArgs : Windows.UI.ApplicationSettings.IWebAccountInvokedArgs
{
extern(Windows):
	final Windows.UI.ApplicationSettings.WebAccountAction Action()
	{
		Windows.UI.ApplicationSettings.WebAccountAction _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.IWebAccountInvokedArgs)this.asInterface(uuid("e7abcc40-a1d8-4c5d-9a7f-1d34b2f90ad2"))).get_Action(&_ret));
		return _ret;
	}
}

interface WebAccountProviderCommand : Windows.UI.ApplicationSettings.IWebAccountProviderCommand
{
extern(Windows):
	final Windows.Security.Credentials.WebAccountProvider WebAccountProvider()
	{
		Windows.Security.Credentials.WebAccountProvider _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.IWebAccountProviderCommand)this.asInterface(uuid("d69bdd9a-a0a6-4e9b-88dc-c71e757a3501"))).get_WebAccountProvider(&_ret));
		return _ret;
	}
	final Windows.UI.ApplicationSettings.WebAccountProviderCommandInvokedHandler Invoked()
	{
		Windows.UI.ApplicationSettings.WebAccountProviderCommandInvokedHandler _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.IWebAccountProviderCommand)this.asInterface(uuid("d69bdd9a-a0a6-4e9b-88dc-c71e757a3501"))).get_Invoked(&_ret));
		return _ret;
	}
	static Windows.UI.ApplicationSettings.WebAccountProviderCommand New(Windows.Security.Credentials.WebAccountProvider webAccountProvider, Windows.UI.ApplicationSettings.WebAccountProviderCommandInvokedHandler invoked)
	{
		auto factory = factory!(Windows.UI.ApplicationSettings.IWebAccountProviderCommandFactory);
		Windows.UI.ApplicationSettings.WebAccountProviderCommand _ret;
		Debug.OK((cast(Windows.UI.ApplicationSettings.IWebAccountProviderCommandFactory)factory.asInterface(uuid("d5658a1b-b176-4776-8469-a9d3ff0b3f59"))).abi_CreateWebAccountProviderCommand(webAccountProvider, invoked, &_ret));
		return _ret;
	}
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