module Windows.Security.Authentication.Web.Provider;

import dwinrt;

@uuid("e7bd66ba-0bc7-4c66-bfd4-65d3082cbca8")
@WinrtFactory("Windows.Security.Authentication.Web.Provider.WebAccountClientView")
interface IWebAccountClientView : IInspectable
{
extern(Windows):
	HRESULT get_ApplicationCallbackUri(Windows.Foundation.Uri* return_value);
	HRESULT get_Type(Windows.Security.Authentication.Web.Provider.WebAccountClientViewType* return_value);
	HRESULT get_AccountPairwiseId(HSTRING* return_value);
}

@uuid("616d16a4-de22-4855-a326-06cebf2a3f23")
@WinrtFactory("Windows.Security.Authentication.Web.Provider.WebAccountClientView")
interface IWebAccountClientViewFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Security.Authentication.Web.Provider.WebAccountClientViewType viewType, Windows.Foundation.Uri applicationCallbackUri, Windows.Security.Authentication.Web.Provider.WebAccountClientView* return_view);
	HRESULT abi_CreateWithPairwiseId(Windows.Security.Authentication.Web.Provider.WebAccountClientViewType viewType, Windows.Foundation.Uri applicationCallbackUri, HSTRING accountPairwiseId, Windows.Security.Authentication.Web.Provider.WebAccountClientView* return_view);
}

@uuid("b2e8e1a6-d49a-4032-84bf-1a2847747bf1")
@WinrtFactory("Windows.Security.Authentication.Web.Provider.WebAccountManager")
interface IWebAccountManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_UpdateWebAccountPropertiesAsync(Windows.Security.Credentials.WebAccount webAccount, HSTRING webAccountUserName, Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) additionalProperties, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_AddWebAccountAsync(HSTRING webAccountId, HSTRING webAccountUserName, Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) props, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.WebAccount)* return_asyncInfo);
	HRESULT abi_DeleteWebAccountAsync(Windows.Security.Credentials.WebAccount webAccount, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_FindAllProviderWebAccountsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Security.Credentials.WebAccount))* return_asyncInfo);
	HRESULT abi_PushCookiesAsync(Windows.Foundation.Uri uri, Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.HttpCookie) cookies, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_SetViewAsync(Windows.Security.Credentials.WebAccount webAccount, Windows.Security.Authentication.Web.Provider.WebAccountClientView view, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_ClearViewAsync(Windows.Security.Credentials.WebAccount webAccount, Windows.Foundation.Uri applicationCallbackUri, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_GetViewsAsync(Windows.Security.Credentials.WebAccount webAccount, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Web.Provider.WebAccountClientView))* return_asyncInfo);
	HRESULT abi_SetWebAccountPictureAsync(Windows.Security.Credentials.WebAccount webAccount, Windows.Storage.Streams.IRandomAccessStream webAccountPicture, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_ClearWebAccountPictureAsync(Windows.Security.Credentials.WebAccount webAccount, Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("68a7a829-2d5f-4653-8bb0-bd2fa6bd2d87")
@WinrtFactory("Windows.Security.Authentication.Web.Provider.WebAccountManager")
interface IWebAccountManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_PullCookiesAsync(HSTRING uriString, HSTRING callerPFN, Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("dd4523a6-8a4f-4aa2-b15e-03f550af1359")
@WinrtFactory("Windows.Security.Authentication.Web.Provider.WebAccountManager")
interface IWebAccountManagerStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_FindAllProviderWebAccountsForUserAsync(Windows.System.User user, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Security.Credentials.WebAccount))* return_operation);
	HRESULT abi_AddWebAccountForUserAsync(Windows.System.User user, HSTRING webAccountId, HSTRING webAccountUserName, Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) props, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.WebAccount)* return_operation);
	HRESULT abi_AddWebAccountWithScopeForUserAsync(Windows.System.User user, HSTRING webAccountId, HSTRING webAccountUserName, Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) props, Windows.Security.Authentication.Web.Provider.WebAccountScope scope_, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.WebAccount)* return_operation);
	HRESULT abi_AddWebAccountWithScopeAndMapForUserAsync(Windows.System.User user, HSTRING webAccountId, HSTRING webAccountUserName, Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) props, Windows.Security.Authentication.Web.Provider.WebAccountScope scope_, HSTRING perUserWebAccountId, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.WebAccount)* return_operation);
}

@uuid("e8fa446f-3a1b-48a4-8e90-1e59ca6f54db")
@WinrtFactory("Windows.Security.Authentication.Web.Provider.WebAccountManager")
interface IWebAccountMapManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_AddWebAccountWithScopeAndMapAsync(HSTRING webAccountId, HSTRING webAccountUserName, Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) props, Windows.Security.Authentication.Web.Provider.WebAccountScope scope_, HSTRING perUserWebAccountId, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.WebAccount)* return_asyncInfo);
	HRESULT abi_SetPerAppToPerUserAccountAsync(Windows.Security.Credentials.WebAccount perAppAccount, HSTRING perUserWebAccountId, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_GetPerUserFromPerAppAccountAsync(Windows.Security.Credentials.WebAccount perAppAccount, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.WebAccount)* return_asyncInfo);
	HRESULT abi_ClearPerUserFromPerAppAccountAsync(Windows.Security.Credentials.WebAccount perAppAccount, Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("73ebdccf-4378-4c79-9335-a5d7ab81594e")
@WinrtFactory("Windows.Security.Authentication.Web.Provider.WebAccountProviderAddAccountOperation")
interface IWebAccountProviderAddAccountOperation : IInspectable
{
extern(Windows):
	HRESULT abi_ReportCompleted();
}

@uuid("bba4acbb-993b-4d57-bbe4-1421e3668b4c")
interface IWebAccountProviderBaseReportOperation : IInspectable
{
extern(Windows):
	HRESULT abi_ReportCompleted();
	HRESULT abi_ReportError(Windows.Security.Authentication.Web.Core.WebProviderError value);
}

@uuid("0abb48b8-9e01-49c9-a355-7d48caf7d6ca")
@WinrtFactory("Windows.Security.Authentication.Web.Provider.WebAccountProviderDeleteAccountOperation")
interface IWebAccountProviderDeleteAccountOperation : IInspectable
{
extern(Windows):
	HRESULT get_WebAccount(Windows.Security.Credentials.WebAccount* return_value);
}

@uuid("ed20dc5c-d21b-463e-a9b7-c1fd0edae978")
@WinrtFactory("Windows.Security.Authentication.Web.Provider.WebAccountProviderManageAccountOperation")
interface IWebAccountProviderManageAccountOperation : IInspectable
{
extern(Windows):
	HRESULT get_WebAccount(Windows.Security.Credentials.WebAccount* return_value);
	HRESULT abi_ReportCompleted();
}

@uuid("6d5d2426-10b1-419a-a44e-f9c5161574e6")
interface IWebAccountProviderOperation : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.Security.Authentication.Web.Provider.WebAccountProviderOperationKind* return_value);
}

@uuid("5a040441-0fa3-4ab1-a01c-20b110358594")
@WinrtFactory("Windows.Security.Authentication.Web.Provider.WebAccountProviderRetrieveCookiesOperation")
interface IWebAccountProviderRetrieveCookiesOperation : IInspectable
{
extern(Windows):
	HRESULT get_Context(Windows.Foundation.Uri* return_webCookieRequestContext);
	HRESULT get_Cookies(Windows.Foundation.Collections.IVector!(Windows.Web.Http.HttpCookie)* return_cookies);
	HRESULT set_Uri(Windows.Foundation.Uri uri);
	HRESULT get_Uri(Windows.Foundation.Uri* return_uri);
	HRESULT get_ApplicationCallbackUri(Windows.Foundation.Uri* return_value);
}

@uuid("b890e21d-0c55-47bc-8c72-04a6fc7cac07")
@WinrtFactory("Windows.Security.Authentication.Web.Provider.WebAccountProviderSignOutAccountOperation")
interface IWebAccountProviderSignOutAccountOperation : IInspectable
{
extern(Windows):
	HRESULT get_WebAccount(Windows.Security.Credentials.WebAccount* return_value);
	HRESULT get_ApplicationCallbackUri(Windows.Foundation.Uri* return_value);
	HRESULT get_ClientId(HSTRING* return_value);
}

@uuid("e0b545f8-3b0f-44da-924c-7b18baaa62a9")
interface IWebAccountProviderSilentReportOperation : IInspectable
{
extern(Windows):
	HRESULT abi_ReportUserInteractionRequired();
	HRESULT abi_ReportUserInteractionRequiredWithError(Windows.Security.Authentication.Web.Core.WebProviderError value);
}

@uuid("408f284b-1328-42db-89a4-0bce7a717d8e")
interface IWebAccountProviderTokenObjects : IInspectable
{
extern(Windows):
	HRESULT get_Operation(Windows.Security.Authentication.Web.Provider.IWebAccountProviderOperation* return_value);
}

@uuid("1020b893-5ca5-4fff-95fb-b820273fc395")
interface IWebAccountProviderTokenObjects2 : IInspectable
{
extern(Windows):
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("95c613be-2034-4c38-9434-d26c14b2b4b2")
interface IWebAccountProviderTokenOperation : IInspectable
{
extern(Windows):
	HRESULT get_ProviderRequest(Windows.Security.Authentication.Web.Provider.WebProviderTokenRequest* return_webTokenRequest);
	HRESULT get_ProviderResponses(Windows.Foundation.Collections.IVector!(Windows.Security.Authentication.Web.Provider.WebProviderTokenResponse)* return_value);
	HRESULT set_CacheExpirationTime(Windows.Foundation.DateTime value);
	HRESULT get_CacheExpirationTime(Windows.Foundation.DateTime* return_value);
}

@uuid("28ff92d3-8f80-42fb-944f-b2107bbd42e6")
interface IWebAccountProviderUIReportOperation : IInspectable
{
extern(Windows):
	HRESULT abi_ReportUserCanceled();
}

@uuid("5c6ce37c-12b2-423a-bf3d-85b8d7e53656")
@WinrtFactory("Windows.Security.Authentication.Web.Provider.WebAccountManager")
interface IWebAccountScopeManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_AddWebAccountWithScopeAsync(HSTRING webAccountId, HSTRING webAccountUserName, Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) props, Windows.Security.Authentication.Web.Provider.WebAccountScope scope_, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.WebAccount)* return_asyncInfo);
	HRESULT abi_SetScopeAsync(Windows.Security.Credentials.WebAccount webAccount, Windows.Security.Authentication.Web.Provider.WebAccountScope scope_, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_GetScope(Windows.Security.Credentials.WebAccount webAccount, Windows.Security.Authentication.Web.Provider.WebAccountScope* return_scope_);
}

@uuid("1e18778b-8805-454b-9f11-468d2af1095a")
@WinrtFactory("Windows.Security.Authentication.Web.Provider.WebProviderTokenRequest")
interface IWebProviderTokenRequest : IInspectable
{
extern(Windows):
	HRESULT get_ClientRequest(Windows.Security.Authentication.Web.Core.WebTokenRequest* return_value);
	HRESULT get_WebAccounts(Windows.Foundation.Collections.IVectorView!(Windows.Security.Credentials.WebAccount)* return_value);
	HRESULT get_WebAccountSelectionOptions(Windows.Security.Authentication.Web.Provider.WebAccountSelectionOptions* return_value);
	HRESULT get_ApplicationCallbackUri(Windows.Foundation.Uri* return_value);
	HRESULT abi_GetApplicationTokenBindingKeyAsync(Windows.Security.Authentication.Web.TokenBindingKeyType keyType, Windows.Foundation.Uri target, Windows.Foundation.IAsyncOperation!(Windows.Security.Cryptography.Core.CryptographicKey)* return_asyncInfo);
}

@uuid("b5d72e4c-10b1-4aa6-88b1-0b6c9e0c1e46")
@WinrtFactory("Windows.Security.Authentication.Web.Provider.WebProviderTokenRequest")
interface IWebProviderTokenRequest2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetApplicationTokenBindingKeyIdAsync(Windows.Security.Authentication.Web.TokenBindingKeyType keyType, Windows.Foundation.Uri target, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_asyncInfo);
}

@uuid("ef213793-ef55-4186-b7ce-8cb2e7f9849e")
@WinrtFactory("Windows.Security.Authentication.Web.Provider.WebProviderTokenResponse")
interface IWebProviderTokenResponse : IInspectable
{
extern(Windows):
	HRESULT get_ClientResponse(Windows.Security.Authentication.Web.Core.WebTokenResponse* return_value);
}

@uuid("fa49d99a-25ba-4077-9cfa-9db4dea7b71a")
@WinrtFactory("Windows.Security.Authentication.Web.Provider.WebProviderTokenResponse")
interface IWebProviderTokenResponseFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Security.Authentication.Web.Core.WebTokenResponse webTokenResponse, Windows.Security.Authentication.Web.Provider.WebProviderTokenResponse* return_webProviderTokenResponse);
}

interface WebAccountClientView : Windows.Security.Authentication.Web.Provider.IWebAccountClientView
{
}

interface WebAccountManager
{
}

interface WebAccountProviderAddAccountOperation : Windows.Security.Authentication.Web.Provider.IWebAccountProviderAddAccountOperation, Windows.Security.Authentication.Web.Provider.IWebAccountProviderOperation
{
}

interface WebAccountProviderDeleteAccountOperation : Windows.Security.Authentication.Web.Provider.IWebAccountProviderDeleteAccountOperation, Windows.Security.Authentication.Web.Provider.IWebAccountProviderOperation, Windows.Security.Authentication.Web.Provider.IWebAccountProviderBaseReportOperation
{
}

interface WebAccountProviderGetTokenSilentOperation : Windows.Security.Authentication.Web.Provider.IWebAccountProviderTokenOperation, Windows.Security.Authentication.Web.Provider.IWebAccountProviderOperation, Windows.Security.Authentication.Web.Provider.IWebAccountProviderSilentReportOperation, Windows.Security.Authentication.Web.Provider.IWebAccountProviderBaseReportOperation
{
}

interface WebAccountProviderManageAccountOperation : Windows.Security.Authentication.Web.Provider.IWebAccountProviderManageAccountOperation, Windows.Security.Authentication.Web.Provider.IWebAccountProviderOperation
{
}

interface WebAccountProviderRequestTokenOperation : Windows.Security.Authentication.Web.Provider.IWebAccountProviderTokenOperation, Windows.Security.Authentication.Web.Provider.IWebAccountProviderOperation, Windows.Security.Authentication.Web.Provider.IWebAccountProviderUIReportOperation, Windows.Security.Authentication.Web.Provider.IWebAccountProviderBaseReportOperation
{
}

interface WebAccountProviderRetrieveCookiesOperation : Windows.Security.Authentication.Web.Provider.IWebAccountProviderRetrieveCookiesOperation, Windows.Security.Authentication.Web.Provider.IWebAccountProviderOperation, Windows.Security.Authentication.Web.Provider.IWebAccountProviderBaseReportOperation
{
}

interface WebAccountProviderSignOutAccountOperation : Windows.Security.Authentication.Web.Provider.IWebAccountProviderSignOutAccountOperation, Windows.Security.Authentication.Web.Provider.IWebAccountProviderOperation, Windows.Security.Authentication.Web.Provider.IWebAccountProviderBaseReportOperation
{
}

interface WebAccountProviderTriggerDetails : Windows.Security.Authentication.Web.Provider.IWebAccountProviderTokenObjects, Windows.Security.Authentication.Web.Provider.IWebAccountProviderTokenObjects2
{
}

interface WebProviderTokenRequest : Windows.Security.Authentication.Web.Provider.IWebProviderTokenRequest, Windows.Security.Authentication.Web.Provider.IWebProviderTokenRequest2
{
}

interface WebProviderTokenResponse : Windows.Security.Authentication.Web.Provider.IWebProviderTokenResponse
{
}

enum WebAccountClientViewType
{
	IdOnly = 0,
	IdAndProperties = 1
}

enum WebAccountProviderOperationKind
{
	RequestToken = 0,
	GetTokenSilently = 1,
	AddAccount = 2,
	ManageAccount = 3,
	DeleteAccount = 4,
	RetrieveCookies = 5,
	SignOutAccount = 6
}

enum WebAccountScope
{
	PerUser = 0,
	PerApplication = 1
}

@bitflags
enum WebAccountSelectionOptions
{
	Default = 0x0,
	New = 0x1
}