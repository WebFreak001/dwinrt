module Windows.Web.Http.Filters;

import dwinrt;

@uuid("71c89b09-e131-4b54-a53c-eb43ff37e9bb")
@WinrtFactory("Windows.Web.Http.Filters.HttpBaseProtocolFilter")
interface IHttpBaseProtocolFilter_Base : IInspectable
{
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
@uuid("71c89b09-e131-4b54-a53c-eb43ff37e9bb")
@WinrtFactory("Windows.Web.Http.Filters.HttpBaseProtocolFilter")
interface IHttpBaseProtocolFilter : IHttpBaseProtocolFilter_Base, Windows.Web.Http.Filters.IHttpFilter, Windows.Foundation.IClosable {}

@uuid("2ec30013-9427-4900-a017-fa7da3b5c9ae")
@WinrtFactory("Windows.Web.Http.Filters.HttpBaseProtocolFilter")
interface IHttpBaseProtocolFilter2_Base : IInspectable
{
extern(Windows):
	HRESULT get_MaxVersion(Windows.Web.Http.HttpVersion* return_value);
	HRESULT set_MaxVersion(Windows.Web.Http.HttpVersion value);
}
@uuid("2ec30013-9427-4900-a017-fa7da3b5c9ae")
@WinrtFactory("Windows.Web.Http.Filters.HttpBaseProtocolFilter")
interface IHttpBaseProtocolFilter2 : IHttpBaseProtocolFilter2_Base, Windows.Web.Http.Filters.IHttpFilter, Windows.Foundation.IClosable {}

@uuid("d43f4d4c-bd42-43ae-8717-ad2c8f4b2937")
@WinrtFactory("Windows.Web.Http.Filters.HttpBaseProtocolFilter")
interface IHttpBaseProtocolFilter3_Base : IInspectable
{
extern(Windows):
	HRESULT get_CookieUsageBehavior(Windows.Web.Http.Filters.HttpCookieUsageBehavior* return_value);
	HRESULT set_CookieUsageBehavior(Windows.Web.Http.Filters.HttpCookieUsageBehavior value);
}
@uuid("d43f4d4c-bd42-43ae-8717-ad2c8f4b2937")
@WinrtFactory("Windows.Web.Http.Filters.HttpBaseProtocolFilter")
interface IHttpBaseProtocolFilter3 : IHttpBaseProtocolFilter3_Base, Windows.Web.Http.Filters.IHttpFilter, Windows.Foundation.IClosable {}

@uuid("9fe36ccf-2983-4893-941f-eb518ca8cef9")
@WinrtFactory("Windows.Web.Http.Filters.HttpBaseProtocolFilter")
interface IHttpBaseProtocolFilter4_Base : IInspectable
{
extern(Windows):
	HRESULT add_ServerCustomValidationRequested(Windows.Foundation.TypedEventHandler!(Windows.Web.Http.Filters.HttpBaseProtocolFilter, Windows.Web.Http.Filters.HttpServerCustomValidationRequestedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_ServerCustomValidationRequested(EventRegistrationToken eventCookie);
	HRESULT abi_ClearAuthenticationCache();
}
@uuid("9fe36ccf-2983-4893-941f-eb518ca8cef9")
@WinrtFactory("Windows.Web.Http.Filters.HttpBaseProtocolFilter")
interface IHttpBaseProtocolFilter4 : IHttpBaseProtocolFilter4_Base, Windows.Web.Http.Filters.IHttpFilter, Windows.Foundation.IClosable {}

@uuid("c77e1cb4-3cea-4eb5-ac85-04e186e63ab7")
@WinrtFactory("Windows.Web.Http.Filters.HttpCacheControl")
interface IHttpCacheControl : IInspectable
{
extern(Windows):
	HRESULT get_ReadBehavior(Windows.Web.Http.Filters.HttpCacheReadBehavior* return_value);
	HRESULT set_ReadBehavior(Windows.Web.Http.Filters.HttpCacheReadBehavior value);
	HRESULT get_WriteBehavior(Windows.Web.Http.Filters.HttpCacheWriteBehavior* return_value);
	HRESULT set_WriteBehavior(Windows.Web.Http.Filters.HttpCacheWriteBehavior value);
}

@uuid("a4cb6dd5-0902-439e-bfd7-e12552b165ce")
interface IHttpFilter_Base : IInspectable
{
extern(Windows):
	HRESULT abi_SendRequestAsync(Windows.Web.Http.HttpRequestMessage request, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress)* return_operation);
}
@uuid("a4cb6dd5-0902-439e-bfd7-e12552b165ce")
interface IHttpFilter : IHttpFilter_Base, Windows.Foundation.IClosable {}

@uuid("3165fe32-e7dd-48b7-a361-939c750e63cc")
@WinrtFactory("Windows.Web.Http.Filters.HttpServerCustomValidationRequestedEventArgs")
interface IHttpServerCustomValidationRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_RequestMessage(Windows.Web.Http.HttpRequestMessage* return_value);
	HRESULT get_ServerCertificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT get_ServerCertificateErrorSeverity(Windows.Networking.Sockets.SocketSslErrorSeverity* return_value);
	HRESULT get_ServerCertificateErrors(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult)* return_value);
	HRESULT get_ServerIntermediateCertificates(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_value);
	HRESULT abi_Reject();
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_result);
}

interface HttpBaseProtocolFilter : Windows.Web.Http.Filters.IHttpBaseProtocolFilter, Windows.Web.Http.Filters.IHttpFilter, Windows.Foundation.IClosable, Windows.Web.Http.Filters.IHttpBaseProtocolFilter2, Windows.Web.Http.Filters.IHttpBaseProtocolFilter3, Windows.Web.Http.Filters.IHttpBaseProtocolFilter4
{
extern(Windows):
	final bool AllowAutoRedirect()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).get_AllowAutoRedirect(&_ret));
		return _ret;
	}
	final void AllowAutoRedirect(bool value)
	{
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).set_AllowAutoRedirect(value));
	}
	final bool AllowUI()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).get_AllowUI(&_ret));
		return _ret;
	}
	final void AllowUI(bool value)
	{
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).set_AllowUI(value));
	}
	final bool AutomaticDecompression()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).get_AutomaticDecompression(&_ret));
		return _ret;
	}
	final void AutomaticDecompression(bool value)
	{
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).set_AutomaticDecompression(value));
	}
	final Windows.Web.Http.Filters.HttpCacheControl CacheControl()
	{
		Windows.Web.Http.Filters.HttpCacheControl _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).get_CacheControl(&_ret));
		return _ret;
	}
	final Windows.Web.Http.HttpCookieManager CookieManager()
	{
		Windows.Web.Http.HttpCookieManager _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).get_CookieManager(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Certificates.Certificate ClientCertificate()
	{
		Windows.Security.Cryptography.Certificates.Certificate _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).get_ClientCertificate(&_ret));
		return _ret;
	}
	final void ClientCertificate(Windows.Security.Cryptography.Certificates.Certificate value)
	{
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).set_ClientCertificate(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.ChainValidationResult) IgnorableServerCertificateErrors()
	{
		Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.ChainValidationResult) _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).get_IgnorableServerCertificateErrors(&_ret));
		return _ret;
	}
	final UINT32 MaxConnectionsPerServer()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).get_MaxConnectionsPerServer(&_ret));
		return _ret;
	}
	final void MaxConnectionsPerServer(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).set_MaxConnectionsPerServer(value));
	}
	final Windows.Security.Credentials.PasswordCredential ProxyCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).get_ProxyCredential(&_ret));
		return _ret;
	}
	final void ProxyCredential(Windows.Security.Credentials.PasswordCredential value)
	{
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).set_ProxyCredential(value));
	}
	final Windows.Security.Credentials.PasswordCredential ServerCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).get_ServerCredential(&_ret));
		return _ret;
	}
	final void ServerCredential(Windows.Security.Credentials.PasswordCredential value)
	{
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).set_ServerCredential(value));
	}
	final bool UseProxy()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).get_UseProxy(&_ret));
		return _ret;
	}
	final void UseProxy(bool value)
	{
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter).set_UseProxy(value));
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress) SendRequestAsync(Windows.Web.Http.HttpRequestMessage request)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress) _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpFilter).abi_SendRequestAsync(request, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Web.Http.HttpVersion MaxVersion()
	{
		Windows.Web.Http.HttpVersion _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter2).get_MaxVersion(&_ret));
		return _ret;
	}
	final void MaxVersion(Windows.Web.Http.HttpVersion value)
	{
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter2).set_MaxVersion(value));
	}
	final Windows.Web.Http.Filters.HttpCookieUsageBehavior CookieUsageBehavior()
	{
		Windows.Web.Http.Filters.HttpCookieUsageBehavior _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter3).get_CookieUsageBehavior(&_ret));
		return _ret;
	}
	final void CookieUsageBehavior(Windows.Web.Http.Filters.HttpCookieUsageBehavior value)
	{
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter3).set_CookieUsageBehavior(value));
	}
	final EventRegistrationToken OnServerCustomValidationRequested(void delegate(Windows.Web.Http.Filters.HttpBaseProtocolFilter, Windows.Web.Http.Filters.HttpServerCustomValidationRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ServerCustomValidationRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Web.Http.Filters.HttpBaseProtocolFilter, Windows.Web.Http.Filters.HttpServerCustomValidationRequestedEventArgs), Windows.Web.Http.Filters.HttpBaseProtocolFilter, Windows.Web.Http.Filters.HttpServerCustomValidationRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeServerCustomValidationRequested(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_ServerCustomValidationRequested(eventCookie));
	}
	final void ClearAuthenticationCache()
	{
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpBaseProtocolFilter4).abi_ClearAuthenticationCache());
	}
}

interface HttpCacheControl : Windows.Web.Http.Filters.IHttpCacheControl
{
extern(Windows):
	final Windows.Web.Http.Filters.HttpCacheReadBehavior ReadBehavior()
	{
		Windows.Web.Http.Filters.HttpCacheReadBehavior _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpCacheControl).get_ReadBehavior(&_ret));
		return _ret;
	}
	final void ReadBehavior(Windows.Web.Http.Filters.HttpCacheReadBehavior value)
	{
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpCacheControl).set_ReadBehavior(value));
	}
	final Windows.Web.Http.Filters.HttpCacheWriteBehavior WriteBehavior()
	{
		Windows.Web.Http.Filters.HttpCacheWriteBehavior _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpCacheControl).get_WriteBehavior(&_ret));
		return _ret;
	}
	final void WriteBehavior(Windows.Web.Http.Filters.HttpCacheWriteBehavior value)
	{
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpCacheControl).set_WriteBehavior(value));
	}
}

interface HttpServerCustomValidationRequestedEventArgs : Windows.Web.Http.Filters.IHttpServerCustomValidationRequestedEventArgs
{
extern(Windows):
	final Windows.Web.Http.HttpRequestMessage RequestMessage()
	{
		Windows.Web.Http.HttpRequestMessage _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpServerCustomValidationRequestedEventArgs).get_RequestMessage(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Certificates.Certificate ServerCertificate()
	{
		Windows.Security.Cryptography.Certificates.Certificate _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpServerCustomValidationRequestedEventArgs).get_ServerCertificate(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.SocketSslErrorSeverity ServerCertificateErrorSeverity()
	{
		Windows.Networking.Sockets.SocketSslErrorSeverity _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpServerCustomValidationRequestedEventArgs).get_ServerCertificateErrorSeverity(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult) ServerCertificateErrors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult) _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpServerCustomValidationRequestedEventArgs).get_ServerCertificateErrors(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) ServerIntermediateCertificates()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpServerCustomValidationRequestedEventArgs).get_ServerIntermediateCertificates(&_ret));
		return _ret;
	}
	final void Reject()
	{
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpServerCustomValidationRequestedEventArgs).abi_Reject());
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.Web.Http.Filters.IHttpServerCustomValidationRequestedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
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