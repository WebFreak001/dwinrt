module Windows.ApplicationModel.UserDataAccounts.Provider;

import dwinrt;

@uuid("5f200037-f6ef-4ec3-8630-012c59c1149f")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountPartnerAccountInfo")
interface IUserDataAccountPartnerAccountInfo : IInspectable
{
extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_Priority(UINT32* return_value);
	HRESULT get_AccountKind(Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderPartnerAccountKind* return_value);
}

@uuid("b9c72530-3f84-4b5d-8eaa-45e97aa842ed")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderAddAccountOperation")
interface IUserDataAccountProviderAddAccountOperation_Base : IInspectable
{
extern(Windows):
	HRESULT get_ContentKinds(Windows.ApplicationModel.UserDataAccounts.UserDataAccountContentKinds* return_value);
	HRESULT get_PartnerAccountInfos(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountPartnerAccountInfo)* return_value);
	HRESULT abi_ReportCompleted(HSTRING userDataAccountId);
}
@uuid("b9c72530-3f84-4b5d-8eaa-45e97aa842ed")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderAddAccountOperation")
interface IUserDataAccountProviderAddAccountOperation : IUserDataAccountProviderAddAccountOperation_Base, Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderOperation {}

@uuid("a20aad63-888c-4a62-a3dd-34d07a802b2b")
interface IUserDataAccountProviderOperation : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderOperationKind* return_value);
}

@uuid("6235dc15-bfcb-41e1-9957-9759a28846cc")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderResolveErrorsOperation")
interface IUserDataAccountProviderResolveErrorsOperation_Base : IInspectable
{
extern(Windows):
	HRESULT get_UserDataAccountId(HSTRING* return_value);
	HRESULT abi_ReportCompleted();
}
@uuid("6235dc15-bfcb-41e1-9957-9759a28846cc")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderResolveErrorsOperation")
interface IUserDataAccountProviderResolveErrorsOperation : IUserDataAccountProviderResolveErrorsOperation_Base, Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderOperation {}

@uuid("92034db7-8648-4f30-acfa-3002658ca80d")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderSettingsOperation")
interface IUserDataAccountProviderSettingsOperation_Base : IInspectable
{
extern(Windows):
	HRESULT get_UserDataAccountId(HSTRING* return_value);
	HRESULT abi_ReportCompleted();
}
@uuid("92034db7-8648-4f30-acfa-3002658ca80d")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderSettingsOperation")
interface IUserDataAccountProviderSettingsOperation : IUserDataAccountProviderSettingsOperation_Base, Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderOperation {}

interface UserDataAccountPartnerAccountInfo : Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountPartnerAccountInfo
{
extern(Windows):
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountPartnerAccountInfo)this.asInterface(uuid("5f200037-f6ef-4ec3-8630-012c59c1149f"))).get_DisplayName(&_ret));
		return _ret;
	}
	final UINT32 Priority()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountPartnerAccountInfo)this.asInterface(uuid("5f200037-f6ef-4ec3-8630-012c59c1149f"))).get_Priority(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderPartnerAccountKind AccountKind()
	{
		Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderPartnerAccountKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountPartnerAccountInfo)this.asInterface(uuid("5f200037-f6ef-4ec3-8630-012c59c1149f"))).get_AccountKind(&_ret));
		return _ret;
	}
}

interface UserDataAccountProviderAddAccountOperation : Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderAddAccountOperation, Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderOperation
{
extern(Windows):
	final Windows.ApplicationModel.UserDataAccounts.UserDataAccountContentKinds ContentKinds()
	{
		Windows.ApplicationModel.UserDataAccounts.UserDataAccountContentKinds _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderAddAccountOperation)this.asInterface(uuid("b9c72530-3f84-4b5d-8eaa-45e97aa842ed"))).get_ContentKinds(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountPartnerAccountInfo) PartnerAccountInfos()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountPartnerAccountInfo) _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderAddAccountOperation)this.asInterface(uuid("b9c72530-3f84-4b5d-8eaa-45e97aa842ed"))).get_PartnerAccountInfos(&_ret));
		return _ret;
	}
	final void ReportCompleted(HSTRING userDataAccountId)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderAddAccountOperation)this.asInterface(uuid("b9c72530-3f84-4b5d-8eaa-45e97aa842ed"))).abi_ReportCompleted(userDataAccountId));
	}
	final Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderOperationKind Kind()
	{
		Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderOperationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderOperation)this.asInterface(uuid("a20aad63-888c-4a62-a3dd-34d07a802b2b"))).get_Kind(&_ret));
		return _ret;
	}
}

interface UserDataAccountProviderResolveErrorsOperation : Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderResolveErrorsOperation, Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderOperation
{
extern(Windows):
	final HSTRING UserDataAccountId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderResolveErrorsOperation)this.asInterface(uuid("6235dc15-bfcb-41e1-9957-9759a28846cc"))).get_UserDataAccountId(&_ret));
		return _ret;
	}
	final void ReportCompleted()
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderResolveErrorsOperation)this.asInterface(uuid("6235dc15-bfcb-41e1-9957-9759a28846cc"))).abi_ReportCompleted());
	}
	final Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderOperationKind Kind()
	{
		Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderOperationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderOperation)this.asInterface(uuid("a20aad63-888c-4a62-a3dd-34d07a802b2b"))).get_Kind(&_ret));
		return _ret;
	}
}

interface UserDataAccountProviderSettingsOperation : Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderSettingsOperation, Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderOperation
{
extern(Windows):
	final HSTRING UserDataAccountId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderSettingsOperation)this.asInterface(uuid("92034db7-8648-4f30-acfa-3002658ca80d"))).get_UserDataAccountId(&_ret));
		return _ret;
	}
	final void ReportCompleted()
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderSettingsOperation)this.asInterface(uuid("92034db7-8648-4f30-acfa-3002658ca80d"))).abi_ReportCompleted());
	}
	final Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderOperationKind Kind()
	{
		Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderOperationKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderOperation)this.asInterface(uuid("a20aad63-888c-4a62-a3dd-34d07a802b2b"))).get_Kind(&_ret));
		return _ret;
	}
}

enum UserDataAccountProviderOperationKind
{
	AddAccount = 0,
	Settings = 1,
	ResolveErrors = 2
}

enum UserDataAccountProviderPartnerAccountKind
{
	Exchange = 0,
	PopOrImap = 1
}