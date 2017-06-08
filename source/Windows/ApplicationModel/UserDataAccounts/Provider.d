module Windows.ApplicationModel.UserDataAccounts.Provider;

import dwinrt;

@uuid("5f200037-f6ef-4ec3-8630-012c59c1149f")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountPartnerAccountInfo")
interface IUserDataAccountPartnerAccountInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_Priority(UINT32* return_value);
	HRESULT get_AccountKind(Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderPartnerAccountKind* return_value);
}

@uuid("b9c72530-3f84-4b5d-8eaa-45e97aa842ed")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderAddAccountOperation")
interface IUserDataAccountProviderAddAccountOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContentKinds(Windows.ApplicationModel.UserDataAccounts.UserDataAccountContentKinds* return_value);
	HRESULT get_PartnerAccountInfos(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountPartnerAccountInfo)* return_value);
	HRESULT abi_ReportCompleted(HSTRING userDataAccountId);
}

@uuid("a20aad63-888c-4a62-a3dd-34d07a802b2b")
interface IUserDataAccountProviderOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Kind(Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderOperationKind* return_value);
}

@uuid("6235dc15-bfcb-41e1-9957-9759a28846cc")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderResolveErrorsOperation")
interface IUserDataAccountProviderResolveErrorsOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UserDataAccountId(HSTRING* return_value);
	HRESULT abi_ReportCompleted();
}

@uuid("92034db7-8648-4f30-acfa-3002658ca80d")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderSettingsOperation")
interface IUserDataAccountProviderSettingsOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UserDataAccountId(HSTRING* return_value);
	HRESULT abi_ReportCompleted();
}

interface UserDataAccountPartnerAccountInfo
{
}

interface UserDataAccountProviderAddAccountOperation
{
}

interface UserDataAccountProviderResolveErrorsOperation
{
}

interface UserDataAccountProviderSettingsOperation
{
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