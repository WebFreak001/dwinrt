module Windows.Security.Authentication.Web;

import dwinrt;

@uuid("2f149f1a-e673-40b5-bc22-201a6864a37b")
@WinrtFactory("Windows.Security.Authentication.Web.WebAuthenticationBroker")
interface IWebAuthenticationBrokerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_AuthenticateWithCallbackUriAsync(Windows.Security.Authentication.Web.WebAuthenticationOptions options, Windows.Foundation.Uri requestUri, Windows.Foundation.Uri callbackUri, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Web.WebAuthenticationResult)* return_asyncInfo);
	HRESULT abi_AuthenticateWithoutCallbackUriAsync(Windows.Security.Authentication.Web.WebAuthenticationOptions options, Windows.Foundation.Uri requestUri, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Web.WebAuthenticationResult)* return_asyncInfo);
	HRESULT abi_GetCurrentApplicationCallbackUri(Windows.Foundation.Uri* return_callbackUri);
}

@uuid("73cdfb9e-14e7-41da-a971-aaf4410b621e")
@WinrtFactory("Windows.Security.Authentication.Web.WebAuthenticationBroker")
interface IWebAuthenticationBrokerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_AuthenticateAndContinue(Windows.Foundation.Uri requestUri);
	HRESULT abi_AuthenticateWithCallbackUriAndContinue(Windows.Foundation.Uri requestUri, Windows.Foundation.Uri callbackUri);
	HRESULT abi_AuthenticateWithCallbackUriContinuationDataAndOptionsAndContinue(Windows.Foundation.Uri requestUri, Windows.Foundation.Uri callbackUri, Windows.Foundation.Collections.ValueSet continuationData, Windows.Security.Authentication.Web.WebAuthenticationOptions options);
	HRESULT abi_AuthenticateSilentlyAsync(Windows.Foundation.Uri requestUri, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Web.WebAuthenticationResult)* return_asyncInfo);
	HRESULT abi_AuthenticateSilentlyWithOptionsAsync(Windows.Foundation.Uri requestUri, Windows.Security.Authentication.Web.WebAuthenticationOptions options, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Web.WebAuthenticationResult)* return_asyncInfo);
}

@uuid("64002b4b-ede9-470a-a5cd-0323faf6e262")
@WinrtFactory("Windows.Security.Authentication.Web.WebAuthenticationResult")
interface IWebAuthenticationResult : IInspectable
{
extern(Windows):
	HRESULT get_ResponseData(HSTRING* return_value);
	HRESULT get_ResponseStatus(Windows.Security.Authentication.Web.WebAuthenticationStatus* return_value);
	HRESULT get_ResponseErrorDetail(UINT32* return_value);
}

interface WebAuthenticationBroker
{
}

interface WebAuthenticationResult : Windows.Security.Authentication.Web.IWebAuthenticationResult
{
extern(Windows):
	final HSTRING ResponseData()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.IWebAuthenticationResult).get_ResponseData(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.Web.WebAuthenticationStatus ResponseStatus()
	{
		Windows.Security.Authentication.Web.WebAuthenticationStatus _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.IWebAuthenticationResult).get_ResponseStatus(&_ret));
		return _ret;
	}
	final UINT32 ResponseErrorDetail()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.Web.IWebAuthenticationResult).get_ResponseErrorDetail(&_ret));
		return _ret;
	}
}

enum TokenBindingKeyType
{
	Rsa2048 = 0,
	EcdsaP256 = 1,
	AnyExisting = 2
}

@bitflags
enum WebAuthenticationOptions
{
	None = 0x0,
	SilentMode = 0x1,
	UseTitle = 0x2,
	UseHttpPost = 0x4,
	UseCorporateNetwork = 0x8
}

enum WebAuthenticationStatus
{
	Success = 0,
	UserCancel = 1,
	ErrorHttp = 2
}