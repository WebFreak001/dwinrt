module Windows.Security.Authentication.Web.Core;

import dwinrt;

@uuid("6fb7037d-424e-44ec-977c-ef2415462a5a")
@WinrtFactory("Windows.Security.Authentication.Web.Core.WebAccountEventArgs")
interface IWebAccountEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Account(Windows.Security.Credentials.WebAccount* return_value);
}

@uuid("7445f5fd-aa9d-4619-8d5d-c138a4ede3e5")
@WinrtFactory("Windows.Security.Authentication.Web.Core.WebAccountMonitor")
interface IWebAccountMonitor : IInspectable
{
extern(Windows):
	HRESULT add_Updated(Windows.Foundation.TypedEventHandler!(Windows.Security.Authentication.Web.Core.WebAccountMonitor, Windows.Security.Authentication.Web.Core.WebAccountEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Updated(EventRegistrationToken token);
	HRESULT add_Removed(Windows.Foundation.TypedEventHandler!(Windows.Security.Authentication.Web.Core.WebAccountMonitor, Windows.Security.Authentication.Web.Core.WebAccountEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Removed(EventRegistrationToken token);
	HRESULT add_DefaultSignInAccountChanged(Windows.Foundation.TypedEventHandler!(Windows.Security.Authentication.Web.Core.WebAccountMonitor, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_DefaultSignInAccountChanged(EventRegistrationToken token);
}

@uuid("6aca7c92-a581-4479-9c10-752eff44fd34")
@WinrtFactory("Windows.Security.Authentication.Web.Core.WebAuthenticationCoreManager")
interface IWebAuthenticationCoreManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetTokenSilentlyAsync(Windows.Security.Authentication.Web.Core.WebTokenRequest request, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Web.Core.WebTokenRequestResult)* return_asyncInfo);
	HRESULT abi_GetTokenSilentlyWithWebAccountAsync(Windows.Security.Authentication.Web.Core.WebTokenRequest request, Windows.Security.Credentials.WebAccount webAccount, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Web.Core.WebTokenRequestResult)* return_asyncInfo);
	HRESULT abi_RequestTokenAsync(Windows.Security.Authentication.Web.Core.WebTokenRequest request, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Web.Core.WebTokenRequestResult)* return_asyncInfo);
	HRESULT abi_RequestTokenWithWebAccountAsync(Windows.Security.Authentication.Web.Core.WebTokenRequest request, Windows.Security.Credentials.WebAccount webAccount, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Web.Core.WebTokenRequestResult)* return_asyncInfo);
	HRESULT abi_FindAccountAsync(Windows.Security.Credentials.WebAccountProvider provider, HSTRING webAccountId, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.WebAccount)* return_asyncInfo);
	HRESULT abi_FindAccountProviderAsync(HSTRING webAccountProviderId, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.WebAccountProvider)* return_asyncInfo);
	HRESULT abi_FindAccountProviderWithAuthorityAsync(HSTRING webAccountProviderId, HSTRING authority, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.WebAccountProvider)* return_asyncInfo);
}

@uuid("f584184a-8b57-4820-b6a4-70a5b6fcf44a")
@WinrtFactory("Windows.Security.Authentication.Web.Core.WebAuthenticationCoreManager")
interface IWebAuthenticationCoreManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_FindAccountProviderWithAuthorityForUserAsync(HSTRING webAccountProviderId, HSTRING authority, Windows.System.User user, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.WebAccountProvider)* return_asyncInfo);
}

@uuid("2404eeb2-8924-4d93-ab3a-99688b419d56")
@WinrtFactory("Windows.Security.Authentication.Web.Core.WebAuthenticationCoreManager")
interface IWebAuthenticationCoreManagerStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWebAccountMonitor(Windows.Foundation.Collections.IIterable!(Windows.Security.Credentials.WebAccount) webAccounts, Windows.Security.Authentication.Web.Core.WebAccountMonitor* return_result);
}

@uuid("db191bb1-50c5-4809-8dca-09c99410245c")
@WinrtFactory("Windows.Security.Authentication.Web.Core.WebProviderError")
interface IWebProviderError : IInspectable
{
extern(Windows):
	HRESULT get_ErrorCode(UINT32* return_value);
	HRESULT get_ErrorMessage(HSTRING* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
}

@uuid("e3c40a2d-89ef-4e37-847f-a8b9d5a32910")
@WinrtFactory("Windows.Security.Authentication.Web.Core.WebProviderError")
interface IWebProviderErrorFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(UINT32 errorCode, HSTRING errorMessage, Windows.Security.Authentication.Web.Core.WebProviderError* return_webProviderError);
}

@uuid("b77b4d68-adcb-4673-b364-0cf7b35caf97")
@WinrtFactory("Windows.Security.Authentication.Web.Core.WebTokenRequest")
interface IWebTokenRequest : IInspectable
{
extern(Windows):
	HRESULT get_WebAccountProvider(Windows.Security.Credentials.WebAccountProvider* return_value);
	HRESULT get_Scope(HSTRING* return_value);
	HRESULT get_ClientId(HSTRING* return_value);
	HRESULT get_PromptType(Windows.Security.Authentication.Web.Core.WebTokenRequestPromptType* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_requestProperties);
}

@uuid("d700c079-30c8-4397-9654-961c3be8b855")
@WinrtFactory("Windows.Security.Authentication.Web.Core.WebTokenRequest")
interface IWebTokenRequest2 : IInspectable
{
extern(Windows):
	HRESULT get_AppProperties(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_requestProperties);
}

@uuid("5a755b51-3bb1-41a5-a63d-90bc32c7db9a")
@WinrtFactory("Windows.Security.Authentication.Web.Core.WebTokenRequest")
interface IWebTokenRequest3 : IInspectable
{
extern(Windows):
	HRESULT get_CorrelationId(HSTRING* return_value);
	HRESULT set_CorrelationId(HSTRING value);
}

@uuid("6cf2141c-0ff0-4c67-b84f-99ddbe4a72c9")
@WinrtFactory("Windows.Security.Authentication.Web.Core.WebTokenRequest")
interface IWebTokenRequestFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Security.Credentials.WebAccountProvider provider, HSTRING scope_, HSTRING clientId, Windows.Security.Authentication.Web.Core.WebTokenRequest* return_webTokenRequest);
	HRESULT abi_CreateWithPromptType(Windows.Security.Credentials.WebAccountProvider provider, HSTRING scope_, HSTRING clientId, Windows.Security.Authentication.Web.Core.WebTokenRequestPromptType promptType, Windows.Security.Authentication.Web.Core.WebTokenRequest* return_webTokenRequest);
	HRESULT abi_CreateWithProvider(Windows.Security.Credentials.WebAccountProvider provider, Windows.Security.Authentication.Web.Core.WebTokenRequest* return_webTokenRequest);
	HRESULT abi_CreateWithScope(Windows.Security.Credentials.WebAccountProvider provider, HSTRING scope_, Windows.Security.Authentication.Web.Core.WebTokenRequest* return_webTokenRequest);
}

@uuid("c12a8305-d1f8-4483-8d54-38fe292784ff")
@WinrtFactory("Windows.Security.Authentication.Web.Core.WebTokenRequestResult")
interface IWebTokenRequestResult : IInspectable
{
extern(Windows):
	HRESULT get_ResponseData(Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Web.Core.WebTokenResponse)* return_value);
	HRESULT get_ResponseStatus(Windows.Security.Authentication.Web.Core.WebTokenRequestStatus* return_value);
	HRESULT get_ResponseError(Windows.Security.Authentication.Web.Core.WebProviderError* return_value);
	HRESULT abi_InvalidateCacheAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("67a7c5ca-83f6-44c6-a3b1-0eb69e41fa8a")
@WinrtFactory("Windows.Security.Authentication.Web.Core.WebTokenResponse")
interface IWebTokenResponse : IInspectable
{
extern(Windows):
	HRESULT get_Token(HSTRING* return_value);
	HRESULT get_ProviderError(Windows.Security.Authentication.Web.Core.WebProviderError* return_value);
	HRESULT get_WebAccount(Windows.Security.Credentials.WebAccount* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
}

@uuid("ab6bf7f8-5450-4ef6-97f7-052b0431c0f0")
@WinrtFactory("Windows.Security.Authentication.Web.Core.WebTokenResponse")
interface IWebTokenResponseFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithToken(HSTRING token, Windows.Security.Authentication.Web.Core.WebTokenResponse* return_webTokenResponse);
	HRESULT abi_CreateWithTokenAndAccount(HSTRING token, Windows.Security.Credentials.WebAccount webAccount, Windows.Security.Authentication.Web.Core.WebTokenResponse* return_webTokenResponse);
	HRESULT abi_CreateWithTokenAccountAndError(HSTRING token, Windows.Security.Credentials.WebAccount webAccount, Windows.Security.Authentication.Web.Core.WebProviderError error, Windows.Security.Authentication.Web.Core.WebTokenResponse* return_webTokenResponse);
}

interface WebAccountEventArgs : Windows.Security.Authentication.Web.Core.IWebAccountEventArgs
{
extern(Windows):
	final Windows.Security.Credentials.WebAccount Account()
	{
		Windows.Security.Credentials.WebAccount _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebAccountEventArgs).get_Account(&_ret));
		return _ret;
	}
}

interface WebAccountMonitor : Windows.Security.Authentication.Web.Core.IWebAccountMonitor
{
}

interface WebAuthenticationCoreManager
{
}

interface WebProviderError : Windows.Security.Authentication.Web.Core.IWebProviderError
{
extern(Windows):
	final UINT32 ErrorCode()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebProviderError).get_ErrorCode(&_ret));
		return _ret;
	}
	final HSTRING ErrorMessage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebProviderError).get_ErrorMessage(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) Properties()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebProviderError).get_Properties(&_ret));
		return _ret;
	}
}

interface WebTokenRequest : Windows.Security.Authentication.Web.Core.IWebTokenRequest, Windows.Security.Authentication.Web.Core.IWebTokenRequest2, Windows.Security.Authentication.Web.Core.IWebTokenRequest3
{
extern(Windows):
	final Windows.Security.Credentials.WebAccountProvider WebAccountProvider()
	{
		Windows.Security.Credentials.WebAccountProvider _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebTokenRequest).get_WebAccountProvider(&_ret));
		return _ret;
	}
	final HSTRING Scope()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebTokenRequest).get_Scope(&_ret));
		return _ret;
	}
	final HSTRING ClientId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebTokenRequest).get_ClientId(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.Web.Core.WebTokenRequestPromptType PromptType()
	{
		Windows.Security.Authentication.Web.Core.WebTokenRequestPromptType _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebTokenRequest).get_PromptType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) Properties()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebTokenRequest).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) AppProperties()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebTokenRequest2).get_AppProperties(&_ret));
		return _ret;
	}
	final HSTRING CorrelationId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebTokenRequest3).get_CorrelationId(&_ret));
		return _ret;
	}
	final void CorrelationId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebTokenRequest3).set_CorrelationId(value));
	}
}

interface WebTokenRequestResult : Windows.Security.Authentication.Web.Core.IWebTokenRequestResult
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Web.Core.WebTokenResponse) ResponseData()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Web.Core.WebTokenResponse) _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebTokenRequestResult).get_ResponseData(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.Web.Core.WebTokenRequestStatus ResponseStatus()
	{
		Windows.Security.Authentication.Web.Core.WebTokenRequestStatus _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebTokenRequestResult).get_ResponseStatus(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.Web.Core.WebProviderError ResponseError()
	{
		Windows.Security.Authentication.Web.Core.WebProviderError _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebTokenRequestResult).get_ResponseError(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction InvalidateCacheAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebTokenRequestResult).abi_InvalidateCacheAsync(&_ret));
		return _ret;
	}
}

interface WebTokenResponse : Windows.Security.Authentication.Web.Core.IWebTokenResponse
{
extern(Windows):
	final HSTRING Token()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebTokenResponse).get_Token(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.Web.Core.WebProviderError ProviderError()
	{
		Windows.Security.Authentication.Web.Core.WebProviderError _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebTokenResponse).get_ProviderError(&_ret));
		return _ret;
	}
	final Windows.Security.Credentials.WebAccount WebAccount()
	{
		Windows.Security.Credentials.WebAccount _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebTokenResponse).get_WebAccount(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) Properties()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.Core.IWebTokenResponse).get_Properties(&_ret));
		return _ret;
	}
}

enum WebTokenRequestPromptType
{
	Default = 0,
	ForceAuthentication = 1
}

enum WebTokenRequestStatus
{
	Success = 0,
	UserCancel = 1,
	AccountSwitch = 2,
	UserInteractionRequired = 3,
	AccountProviderNotAvailable = 4,
	ProviderError = 5
}