module Windows.Web.Http.Filters;

import dwinrt;

@uuid("71c89b09-e131-4b54-a53c-eb43ff37e9bb")
@WinrtFactory("Windows.Web.Http.Filters.HttpBaseProtocolFilter")
interface IHttpBaseProtocolFilter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AllowAutoRedirect(bool* return_value);
	HRESULT set_AllowAutoRedirect(bool value);
	HRESULT get_AllowUI(bool* return_value);
	HRESULT set_AllowUI(bool value);
	HRESULT get_AutomaticDecompression(bool* return_value);
	HRESULT set_AutomaticDecompression(bool value);
	HRESULT get_CacheControl(Windows.Web.Http.Filters.HttpCacheControl* return_value);
	HRESULT get_CookieManager(Windows.Web.Http.HttpCookieManager* return_value);
	HRESULT get_ClientCertificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT set_ClientCertificate(Windows.Security.Cryptography.Certificates.Certificate value);
	HRESULT get_IgnorableServerCertificateErrors(Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.ChainValidationResult)* return_value);
	HRESULT get_MaxConnectionsPerServer(UINT32* return_value);
	HRESULT set_MaxConnectionsPerServer(UINT32 value);
	HRESULT get_ProxyCredential(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT set_ProxyCredential(Windows.Security.Credentials.PasswordCredential value);
	HRESULT get_ServerCredential(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT set_ServerCredential(Windows.Security.Credentials.PasswordCredential value);
	HRESULT get_UseProxy(bool* return_value);
	HRESULT set_UseProxy(bool value);
}

@uuid("2ec30013-9427-4900-a017-fa7da3b5c9ae")
@WinrtFactory("Windows.Web.Http.Filters.HttpBaseProtocolFilter")
interface IHttpBaseProtocolFilter2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxVersion(Windows.Web.Http.HttpVersion* return_value);
	HRESULT set_MaxVersion(Windows.Web.Http.HttpVersion value);
}

@uuid("d43f4d4c-bd42-43ae-8717-ad2c8f4b2937")
@WinrtFactory("Windows.Web.Http.Filters.HttpBaseProtocolFilter")
interface IHttpBaseProtocolFilter3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CookieUsageBehavior(Windows.Web.Http.Filters.HttpCookieUsageBehavior* return_value);
	HRESULT set_CookieUsageBehavior(Windows.Web.Http.Filters.HttpCookieUsageBehavior value);
}

@uuid("9fe36ccf-2983-4893-941f-eb518ca8cef9")
@WinrtFactory("Windows.Web.Http.Filters.HttpBaseProtocolFilter")
interface IHttpBaseProtocolFilter4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ServerCustomValidationRequested(Windows.Foundation.TypedEventHandler!(Windows.Web.Http.Filters.HttpBaseProtocolFilter*,Windows.Web.Http.Filters.HttpServerCustomValidationRequestedEventArgs*) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_ServerCustomValidationRequested(EventRegistrationToken eventCookie);
	HRESULT abi_ClearAuthenticationCache();
}

@uuid("c77e1cb4-3cea-4eb5-ac85-04e186e63ab7")
@WinrtFactory("Windows.Web.Http.Filters.HttpCacheControl")
interface IHttpCacheControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ReadBehavior(Windows.Web.Http.Filters.HttpCacheReadBehavior* return_value);
	HRESULT set_ReadBehavior(Windows.Web.Http.Filters.HttpCacheReadBehavior value);
	HRESULT get_WriteBehavior(Windows.Web.Http.Filters.HttpCacheWriteBehavior* return_value);
	HRESULT set_WriteBehavior(Windows.Web.Http.Filters.HttpCacheWriteBehavior value);
}

@uuid("a4cb6dd5-0902-439e-bfd7-e12552b165ce")
interface IHttpFilter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SendRequestAsync(Windows.Web.Http.HttpRequestMessage request, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage*,Windows.Web.Http.HttpProgress)* return_operation);
}

@uuid("3165fe32-e7dd-48b7-a361-939c750e63cc")
@WinrtFactory("Windows.Web.Http.Filters.HttpServerCustomValidationRequestedEventArgs")
interface IHttpServerCustomValidationRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RequestMessage(Windows.Web.Http.HttpRequestMessage* return_value);
	HRESULT get_ServerCertificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT get_ServerCertificateErrorSeverity(Windows.Networking.Sockets.SocketSslErrorSeverity* return_value);
	HRESULT get_ServerCertificateErrors(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult)* return_value);
	HRESULT get_ServerIntermediateCertificates(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_value);
	HRESULT abi_Reject();
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_result);
}

interface HttpBaseProtocolFilter
{
}

interface HttpCacheControl
{
}

interface HttpServerCustomValidationRequestedEventArgs
{
}

enum HttpCacheReadBehavior
{
	Default = 0,
	MostRecent = 1,
	OnlyFromCache = 2,
	NoCache = 3
}

enum HttpCacheWriteBehavior
{
	Default = 0,
	NoCache = 1
}

enum HttpCookieUsageBehavior
{
	Default = 0,
	NoCookies = 1
}