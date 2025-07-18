module Windows.Web.Http;

import dwinrt;

struct HttpProgress
{
	Windows.Web.Http.HttpProgressStage Stage;
	ulong BytesSent;
	Windows.Foundation.IReference!(ulong) TotalBytesToSend;
	ulong BytesReceived;
	Windows.Foundation.IReference!(ulong) TotalBytesToReceive;
	UINT32 Retries;
}

@uuid("bc20c193-c41f-4ff7-9123-6435736eadc2")
@WinrtFactory("Windows.Web.Http.HttpBufferContent")
interface IHttpBufferContentFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromBuffer(Windows.Storage.Streams.IBuffer content, Windows.Web.Http.HttpBufferContent* return_bufferContent);
	HRESULT abi_CreateFromBufferWithOffset(Windows.Storage.Streams.IBuffer content, UINT32 offset, UINT32 count, Windows.Web.Http.HttpBufferContent* return_bufferContent);
}

@uuid("7fda1151-3574-4880-a8ba-e6b1e0061f3d")
@WinrtFactory("Windows.Web.Http.HttpClient")
interface IHttpClient_Base : IInspectable
{
extern(Windows):
	HRESULT abi_DeleteAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress)* return_operation);
	HRESULT abi_GetAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress)* return_operation);
	HRESULT abi_GetWithOptionAsync(Windows.Foundation.Uri uri, Windows.Web.Http.HttpCompletionOption completionOption, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress)* return_operation);
	HRESULT abi_GetBufferAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, Windows.Web.Http.HttpProgress)* return_operation);
	HRESULT abi_GetInputStreamAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, Windows.Web.Http.HttpProgress)* return_operation);
	HRESULT abi_GetStringAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, Windows.Web.Http.HttpProgress)* return_operation);
	HRESULT abi_PostAsync(Windows.Foundation.Uri uri, Windows.Web.Http.IHttpContent content, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress)* return_operation);
	HRESULT abi_PutAsync(Windows.Foundation.Uri uri, Windows.Web.Http.IHttpContent content, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress)* return_operation);
	HRESULT abi_SendRequestAsync(Windows.Web.Http.HttpRequestMessage request, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress)* return_operation);
	HRESULT abi_SendRequestWithOptionAsync(Windows.Web.Http.HttpRequestMessage request, Windows.Web.Http.HttpCompletionOption completionOption, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress)* return_operation);
	HRESULT get_DefaultRequestHeaders(Windows.Web.Http.Headers.HttpRequestHeaderCollection* return_value);
}
@uuid("7fda1151-3574-4880-a8ba-e6b1e0061f3d")
@WinrtFactory("Windows.Web.Http.HttpClient")
interface IHttpClient : IHttpClient_Base, Windows.Foundation.IClosable {}

@uuid("c30c4eca-e3fa-4f99-afb4-63cc65009462")
@WinrtFactory("Windows.Web.Http.HttpClient")
interface IHttpClientFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Web.Http.Filters.IHttpFilter filter, Windows.Web.Http.HttpClient* return_client);
}

@uuid("6b14a441-fba7-4bd2-af0a-839de7c295da")
interface IHttpContent_Base : IInspectable
{
extern(Windows):
	HRESULT get_Headers(Windows.Web.Http.Headers.HttpContentHeaderCollection* return_value);
	HRESULT abi_BufferAllAsync(Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong)* return_operation);
	HRESULT abi_ReadAsBufferAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, ulong)* return_operation);
	HRESULT abi_ReadAsInputStreamAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, ulong)* return_operation);
	HRESULT abi_ReadAsStringAsync(Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, ulong)* return_operation);
	HRESULT abi_TryComputeLength(ulong* out_length, bool* return_succeeded);
	HRESULT abi_WriteToStreamAsync(Windows.Storage.Streams.IOutputStream outputStream, Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong)* return_operation);
}
@uuid("6b14a441-fba7-4bd2-af0a-839de7c295da")
interface IHttpContent : IHttpContent_Base, Windows.Foundation.IClosable {}

@uuid("1f5488e2-cc2d-4779-86a7-88f10687d249")
@WinrtFactory("Windows.Web.Http.HttpCookie")
interface IHttpCookie : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Domain(HSTRING* return_value);
	HRESULT get_Path(HSTRING* return_value);
	HRESULT get_Expires(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_Expires(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_HttpOnly(bool* return_value);
	HRESULT set_HttpOnly(bool value);
	HRESULT get_Secure(bool* return_value);
	HRESULT set_Secure(bool value);
	HRESULT get_Value(HSTRING* return_value);
	HRESULT set_Value(HSTRING value);
}

@uuid("6a0585a9-931c-4cd1-a96d-c21701785c5f")
@WinrtFactory("Windows.Web.Http.HttpCookie")
interface IHttpCookieFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING name, HSTRING domain, HSTRING path, Windows.Web.Http.HttpCookie* return_cookie);
}

@uuid("7a431780-cd4f-4e57-a84a-5b0a53d6bb96")
@WinrtFactory("Windows.Web.Http.HttpCookieManager")
interface IHttpCookieManager : IInspectable
{
extern(Windows):
	HRESULT abi_SetCookie(Windows.Web.Http.HttpCookie cookie, bool* return_replaced);
	HRESULT abi_SetCookieWithThirdParty(Windows.Web.Http.HttpCookie cookie, bool thirdParty, bool* return_replaced);
	HRESULT abi_DeleteCookie(Windows.Web.Http.HttpCookie cookie);
	HRESULT abi_GetCookies(Windows.Foundation.Uri uri, Windows.Web.Http.HttpCookieCollection* return_value);
}

@uuid("43f0138c-2f73-4302-b5f3-eae9238a5e01")
@WinrtFactory("Windows.Web.Http.HttpFormUrlEncodedContent")
interface IHttpFormUrlEncodedContentFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) content, Windows.Web.Http.HttpFormUrlEncodedContent* return_formUrlEncodedContent);
}

@uuid("728d4022-700d-4fe0-afa5-40299c58dbfd")
@WinrtFactory("Windows.Web.Http.HttpMethod")
interface IHttpMethod : IInspectable
{
extern(Windows):
	HRESULT get_Method(HSTRING* return_value);
}

@uuid("3c51d10d-36d7-40f8-a86d-e759caf2f83f")
@WinrtFactory("Windows.Web.Http.HttpMethod")
interface IHttpMethodFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING method, Windows.Web.Http.HttpMethod* return_httpMethod);
}

@uuid("64d171f0-d99a-4153-8dc6-d68cc4cce317")
@WinrtFactory("Windows.Web.Http.HttpMethod")
interface IHttpMethodStatics : IInspectable
{
extern(Windows):
	HRESULT get_Delete(Windows.Web.Http.HttpMethod* return_value);
	HRESULT get_Get(Windows.Web.Http.HttpMethod* return_value);
	HRESULT get_Head(Windows.Web.Http.HttpMethod* return_value);
	HRESULT get_Options(Windows.Web.Http.HttpMethod* return_value);
	HRESULT get_Patch(Windows.Web.Http.HttpMethod* return_value);
	HRESULT get_Post(Windows.Web.Http.HttpMethod* return_value);
	HRESULT get_Put(Windows.Web.Http.HttpMethod* return_value);
}

@uuid("df916aff-9926-4ac9-aaf1-e0d04ef09bb9")
@WinrtFactory("Windows.Web.Http.HttpMultipartContent")
interface IHttpMultipartContent_Base : IInspectable
{
extern(Windows):
	HRESULT abi_Add(Windows.Web.Http.IHttpContent content);
}
@uuid("df916aff-9926-4ac9-aaf1-e0d04ef09bb9")
@WinrtFactory("Windows.Web.Http.HttpMultipartContent")
interface IHttpMultipartContent : IHttpMultipartContent_Base, Windows.Foundation.Collections.IIterable!(Windows.Web.Http.IHttpContent) {}

@uuid("7eb42e62-0222-4f20-b372-47d5db5d33b4")
@WinrtFactory("Windows.Web.Http.HttpMultipartContent")
interface IHttpMultipartContentFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithSubtype(HSTRING subtype, Windows.Web.Http.HttpMultipartContent* return_multipartContent);
	HRESULT abi_CreateWithSubtypeAndBoundary(HSTRING subtype, HSTRING boundary, Windows.Web.Http.HttpMultipartContent* return_multipartContent);
}

@uuid("64d337e2-e967-4624-b6d1-cf74604a4a42")
@WinrtFactory("Windows.Web.Http.HttpMultipartFormDataContent")
interface IHttpMultipartFormDataContent_Base : IInspectable
{
extern(Windows):
	HRESULT abi_Add(Windows.Web.Http.IHttpContent content);
	HRESULT abi_AddWithName(Windows.Web.Http.IHttpContent content, HSTRING name);
	HRESULT abi_AddWithNameAndFileName(Windows.Web.Http.IHttpContent content, HSTRING name, HSTRING fileName);
}
@uuid("64d337e2-e967-4624-b6d1-cf74604a4a42")
@WinrtFactory("Windows.Web.Http.HttpMultipartFormDataContent")
interface IHttpMultipartFormDataContent : IHttpMultipartFormDataContent_Base, Windows.Foundation.Collections.IIterable!(Windows.Web.Http.IHttpContent) {}

@uuid("a04d7311-5017-4622-93a8-49b24a4fcbfc")
@WinrtFactory("Windows.Web.Http.HttpMultipartFormDataContent")
interface IHttpMultipartFormDataContentFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithBoundary(HSTRING boundary, Windows.Web.Http.HttpMultipartFormDataContent* return_multipartFormDataContent);
}

@uuid("f5762b3c-74d4-4811-b5dc-9f8b4e2f9abf")
@WinrtFactory("Windows.Web.Http.HttpRequestMessage")
interface IHttpRequestMessage_Base : IInspectable
{
extern(Windows):
	HRESULT get_Content(Windows.Web.Http.IHttpContent* return_value);
	HRESULT set_Content(Windows.Web.Http.IHttpContent value);
	HRESULT get_Headers(Windows.Web.Http.Headers.HttpRequestHeaderCollection* return_value);
	HRESULT get_Method(Windows.Web.Http.HttpMethod* return_value);
	HRESULT set_Method(Windows.Web.Http.HttpMethod value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)* return_value);
	HRESULT get_RequestUri(Windows.Foundation.Uri* return_value);
	HRESULT set_RequestUri(Windows.Foundation.Uri value);
	HRESULT get_TransportInformation(Windows.Web.Http.HttpTransportInformation* return_value);
}
@uuid("f5762b3c-74d4-4811-b5dc-9f8b4e2f9abf")
@WinrtFactory("Windows.Web.Http.HttpRequestMessage")
interface IHttpRequestMessage : IHttpRequestMessage_Base, Windows.Foundation.IClosable {}

@uuid("5bac994e-3886-412e-aec3-52ec7f25616f")
@WinrtFactory("Windows.Web.Http.HttpRequestMessage")
interface IHttpRequestMessageFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Web.Http.HttpMethod method, Windows.Foundation.Uri uri, Windows.Web.Http.HttpRequestMessage* return_httpRequestMessage);
}

@uuid("fee200fb-8664-44e0-95d9-42696199bffc")
@WinrtFactory("Windows.Web.Http.HttpResponseMessage")
interface IHttpResponseMessage_Base : IInspectable
{
extern(Windows):
	HRESULT get_Content(Windows.Web.Http.IHttpContent* return_value);
	HRESULT set_Content(Windows.Web.Http.IHttpContent value);
	HRESULT get_Headers(Windows.Web.Http.Headers.HttpResponseHeaderCollection* return_value);
	HRESULT get_IsSuccessStatusCode(bool* return_value);
	HRESULT get_ReasonPhrase(HSTRING* return_value);
	HRESULT set_ReasonPhrase(HSTRING value);
	HRESULT get_RequestMessage(Windows.Web.Http.HttpRequestMessage* return_value);
	HRESULT set_RequestMessage(Windows.Web.Http.HttpRequestMessage value);
	HRESULT get_Source(Windows.Web.Http.HttpResponseMessageSource* return_value);
	HRESULT set_Source(Windows.Web.Http.HttpResponseMessageSource value);
	HRESULT get_StatusCode(Windows.Web.Http.HttpStatusCode* return_value);
	HRESULT set_StatusCode(Windows.Web.Http.HttpStatusCode value);
	HRESULT get_Version(Windows.Web.Http.HttpVersion* return_value);
	HRESULT set_Version(Windows.Web.Http.HttpVersion value);
	HRESULT abi_EnsureSuccessStatusCode(Windows.Web.Http.HttpResponseMessage* return_httpResponseMessage);
}
@uuid("fee200fb-8664-44e0-95d9-42696199bffc")
@WinrtFactory("Windows.Web.Http.HttpResponseMessage")
interface IHttpResponseMessage : IHttpResponseMessage_Base, Windows.Foundation.IClosable {}

@uuid("52a8af99-f095-43da-b60f-7cfc2bc7ea2f")
@WinrtFactory("Windows.Web.Http.HttpResponseMessage")
interface IHttpResponseMessageFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Web.Http.HttpStatusCode statusCode, Windows.Web.Http.HttpResponseMessage* return_httpResponseMessage);
}

@uuid("f3e64d9d-f725-407e-942f-0eda189809f4")
@WinrtFactory("Windows.Web.Http.HttpStreamContent")
interface IHttpStreamContentFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromInputStream(Windows.Storage.Streams.IInputStream content, Windows.Web.Http.HttpStreamContent* return_streamContent);
}

@uuid("46649d5b-2e93-48eb-8e61-19677878e57f")
@WinrtFactory("Windows.Web.Http.HttpStringContent")
interface IHttpStringContentFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromString(HSTRING content, Windows.Web.Http.HttpStringContent* return_stringContent);
	HRESULT abi_CreateFromStringWithEncoding(HSTRING content, Windows.Storage.Streams.UnicodeEncoding encoding, Windows.Web.Http.HttpStringContent* return_stringContent);
	HRESULT abi_CreateFromStringWithEncodingAndMediaType(HSTRING content, Windows.Storage.Streams.UnicodeEncoding encoding, HSTRING mediaType, Windows.Web.Http.HttpStringContent* return_stringContent);
}

@uuid("70127198-c6a7-4ed0-833a-83fd8b8f178d")
@WinrtFactory("Windows.Web.Http.HttpTransportInformation")
interface IHttpTransportInformation : IInspectable
{
extern(Windows):
	HRESULT get_ServerCertificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT get_ServerCertificateErrorSeverity(Windows.Networking.Sockets.SocketSslErrorSeverity* return_value);
	HRESULT get_ServerCertificateErrors(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult)* return_value);
	HRESULT get_ServerIntermediateCertificates(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_value);
}

interface HttpBufferContent : Windows.Web.Http.IHttpContent, Windows.Foundation.IClosable, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Web.Http.Headers.HttpContentHeaderCollection Headers()
	{
		Windows.Web.Http.Headers.HttpContentHeaderCollection _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).get_Headers(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) BufferAllAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_BufferAllAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, ulong) ReadAsBufferAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsBufferAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, ulong) ReadAsInputStreamAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsInputStreamAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, ulong) ReadAsStringAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsStringAsync(&_ret));
		return _ret;
	}
	final bool TryComputeLength(ulong* out_length)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_TryComputeLength(out_length, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) WriteToStreamAsync(Windows.Storage.Streams.IOutputStream outputStream)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_WriteToStreamAsync(outputStream, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return _ret;
	}
	static Windows.Web.Http.HttpBufferContent New(Windows.Storage.Streams.IBuffer content)
	{
		auto factory = factory!(Windows.Web.Http.IHttpBufferContentFactory);
		Windows.Web.Http.HttpBufferContent _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpBufferContentFactory)factory.asInterface(uuid("bc20c193-c41f-4ff7-9123-6435736eadc2"))).abi_CreateFromBuffer(content, &_ret));
		return _ret;
	}
	static Windows.Web.Http.HttpBufferContent New(Windows.Storage.Streams.IBuffer content, UINT32 offset, UINT32 count)
	{
		auto factory = factory!(Windows.Web.Http.IHttpBufferContentFactory);
		Windows.Web.Http.HttpBufferContent _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpBufferContentFactory)factory.asInterface(uuid("bc20c193-c41f-4ff7-9123-6435736eadc2"))).abi_CreateFromBufferWithOffset(content, offset, count, &_ret));
		return _ret;
	}
}

interface HttpClient : Windows.Web.Http.IHttpClient, Windows.Foundation.IClosable, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress) DeleteAsync(Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpClient)this.asInterface(uuid("7fda1151-3574-4880-a8ba-e6b1e0061f3d"))).abi_DeleteAsync(uri, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress) GetAsync(Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpClient)this.asInterface(uuid("7fda1151-3574-4880-a8ba-e6b1e0061f3d"))).abi_GetAsync(uri, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress) GetWithOptionAsync(Windows.Foundation.Uri uri, Windows.Web.Http.HttpCompletionOption completionOption)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpClient)this.asInterface(uuid("7fda1151-3574-4880-a8ba-e6b1e0061f3d"))).abi_GetWithOptionAsync(uri, completionOption, &_ret));
		return _ret;
	}
	alias GetAsync = GetWithOptionAsync;
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, Windows.Web.Http.HttpProgress) GetBufferAsync(Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, Windows.Web.Http.HttpProgress) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpClient)this.asInterface(uuid("7fda1151-3574-4880-a8ba-e6b1e0061f3d"))).abi_GetBufferAsync(uri, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, Windows.Web.Http.HttpProgress) GetInputStreamAsync(Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, Windows.Web.Http.HttpProgress) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpClient)this.asInterface(uuid("7fda1151-3574-4880-a8ba-e6b1e0061f3d"))).abi_GetInputStreamAsync(uri, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, Windows.Web.Http.HttpProgress) GetStringAsync(Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, Windows.Web.Http.HttpProgress) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpClient)this.asInterface(uuid("7fda1151-3574-4880-a8ba-e6b1e0061f3d"))).abi_GetStringAsync(uri, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress) PostAsync(Windows.Foundation.Uri uri, Windows.Web.Http.IHttpContent content)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpClient)this.asInterface(uuid("7fda1151-3574-4880-a8ba-e6b1e0061f3d"))).abi_PostAsync(uri, content, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress) PutAsync(Windows.Foundation.Uri uri, Windows.Web.Http.IHttpContent content)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpClient)this.asInterface(uuid("7fda1151-3574-4880-a8ba-e6b1e0061f3d"))).abi_PutAsync(uri, content, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress) SendRequestAsync(Windows.Web.Http.HttpRequestMessage request)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpClient)this.asInterface(uuid("7fda1151-3574-4880-a8ba-e6b1e0061f3d"))).abi_SendRequestAsync(request, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress) SendRequestWithOptionAsync(Windows.Web.Http.HttpRequestMessage request, Windows.Web.Http.HttpCompletionOption completionOption)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Http.HttpResponseMessage, Windows.Web.Http.HttpProgress) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpClient)this.asInterface(uuid("7fda1151-3574-4880-a8ba-e6b1e0061f3d"))).abi_SendRequestWithOptionAsync(request, completionOption, &_ret));
		return _ret;
	}
	alias SendRequestAsync = SendRequestWithOptionAsync;
	final Windows.Web.Http.Headers.HttpRequestHeaderCollection DefaultRequestHeaders()
	{
		Windows.Web.Http.Headers.HttpRequestHeaderCollection _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpClient)this.asInterface(uuid("7fda1151-3574-4880-a8ba-e6b1e0061f3d"))).get_DefaultRequestHeaders(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return _ret;
	}
	static HttpClient New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(HttpClient).abi_ActivateInstance(&ret));
		return cast(HttpClient) ret;
	}
	static Windows.Web.Http.HttpClient New(Windows.Web.Http.Filters.IHttpFilter filter)
	{
		auto factory = factory!(Windows.Web.Http.IHttpClientFactory);
		Windows.Web.Http.HttpClient _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpClientFactory)factory.asInterface(uuid("c30c4eca-e3fa-4f99-afb4-63cc65009462"))).abi_Create(filter, &_ret));
		return _ret;
	}
}

interface HttpCookie : Windows.Web.Http.IHttpCookie, Windows.Foundation.IStringable
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpCookie)this.asInterface(uuid("1f5488e2-cc2d-4779-86a7-88f10687d249"))).get_Name(&_ret));
		return _ret;
	}
	final HSTRING Domain()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpCookie)this.asInterface(uuid("1f5488e2-cc2d-4779-86a7-88f10687d249"))).get_Domain(&_ret));
		return _ret;
	}
	final HSTRING Path()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpCookie)this.asInterface(uuid("1f5488e2-cc2d-4779-86a7-88f10687d249"))).get_Path(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) Expires()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpCookie)this.asInterface(uuid("1f5488e2-cc2d-4779-86a7-88f10687d249"))).get_Expires(&_ret));
		return _ret;
	}
	final void Expires(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpCookie)this.asInterface(uuid("1f5488e2-cc2d-4779-86a7-88f10687d249"))).set_Expires(value));
	}
	final bool HttpOnly()
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpCookie)this.asInterface(uuid("1f5488e2-cc2d-4779-86a7-88f10687d249"))).get_HttpOnly(&_ret));
		return _ret;
	}
	final void HttpOnly(bool value)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpCookie)this.asInterface(uuid("1f5488e2-cc2d-4779-86a7-88f10687d249"))).set_HttpOnly(value));
	}
	final bool Secure()
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpCookie)this.asInterface(uuid("1f5488e2-cc2d-4779-86a7-88f10687d249"))).get_Secure(&_ret));
		return _ret;
	}
	final void Secure(bool value)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpCookie)this.asInterface(uuid("1f5488e2-cc2d-4779-86a7-88f10687d249"))).set_Secure(value));
	}
	final HSTRING Value()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpCookie)this.asInterface(uuid("1f5488e2-cc2d-4779-86a7-88f10687d249"))).get_Value(&_ret));
		return _ret;
	}
	final void Value(HSTRING value)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpCookie)this.asInterface(uuid("1f5488e2-cc2d-4779-86a7-88f10687d249"))).set_Value(value));
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return _ret;
	}
	static Windows.Web.Http.HttpCookie New(HSTRING name, HSTRING domain, HSTRING path)
	{
		auto factory = factory!(Windows.Web.Http.IHttpCookieFactory);
		Windows.Web.Http.HttpCookie _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpCookieFactory)factory.asInterface(uuid("6a0585a9-931c-4cd1-a96d-c21701785c5f"))).abi_Create(name, domain, path, &_ret));
		return _ret;
	}
}

interface HttpCookieCollection : Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.HttpCookie), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.HttpCookie)
{
extern(Windows):
	final void GetAt(uint index, Windows.Web.Http.HttpCookie* out_item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.HttpCookie))this).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.HttpCookie))this).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Web.Http.HttpCookie value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.HttpCookie))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Web.Http.HttpCookie* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.HttpCookie))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Web.Http.HttpCookie)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Web.Http.HttpCookie))this).abi_First(out_first));
	}
}

interface HttpCookieManager : Windows.Web.Http.IHttpCookieManager
{
extern(Windows):
	final bool SetCookie(Windows.Web.Http.HttpCookie cookie)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpCookieManager)this.asInterface(uuid("7a431780-cd4f-4e57-a84a-5b0a53d6bb96"))).abi_SetCookie(cookie, &_ret));
		return _ret;
	}
	final bool SetCookieWithThirdParty(Windows.Web.Http.HttpCookie cookie, bool thirdParty)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpCookieManager)this.asInterface(uuid("7a431780-cd4f-4e57-a84a-5b0a53d6bb96"))).abi_SetCookieWithThirdParty(cookie, thirdParty, &_ret));
		return _ret;
	}
	alias SetCookie = SetCookieWithThirdParty;
	final void DeleteCookie(Windows.Web.Http.HttpCookie cookie)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpCookieManager)this.asInterface(uuid("7a431780-cd4f-4e57-a84a-5b0a53d6bb96"))).abi_DeleteCookie(cookie));
	}
	final Windows.Web.Http.HttpCookieCollection GetCookies(Windows.Foundation.Uri uri)
	{
		Windows.Web.Http.HttpCookieCollection _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpCookieManager)this.asInterface(uuid("7a431780-cd4f-4e57-a84a-5b0a53d6bb96"))).abi_GetCookies(uri, &_ret));
		return _ret;
	}
}

interface HttpFormUrlEncodedContent : Windows.Web.Http.IHttpContent, Windows.Foundation.IClosable, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Web.Http.Headers.HttpContentHeaderCollection Headers()
	{
		Windows.Web.Http.Headers.HttpContentHeaderCollection _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).get_Headers(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) BufferAllAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_BufferAllAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, ulong) ReadAsBufferAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsBufferAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, ulong) ReadAsInputStreamAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsInputStreamAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, ulong) ReadAsStringAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsStringAsync(&_ret));
		return _ret;
	}
	final bool TryComputeLength(ulong* out_length)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_TryComputeLength(out_length, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) WriteToStreamAsync(Windows.Storage.Streams.IOutputStream outputStream)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_WriteToStreamAsync(outputStream, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return _ret;
	}
	static Windows.Web.Http.HttpFormUrlEncodedContent New(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) content)
	{
		auto factory = factory!(Windows.Web.Http.IHttpFormUrlEncodedContentFactory);
		Windows.Web.Http.HttpFormUrlEncodedContent _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpFormUrlEncodedContentFactory)factory.asInterface(uuid("43f0138c-2f73-4302-b5f3-eae9238a5e01"))).abi_Create(content, &_ret));
		return _ret;
	}
}

interface HttpMethod : Windows.Web.Http.IHttpMethod, Windows.Foundation.IStringable
{
extern(Windows):
	final HSTRING Method()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpMethod)this.asInterface(uuid("728d4022-700d-4fe0-afa5-40299c58dbfd"))).get_Method(&_ret));
		return _ret;
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return _ret;
	}

	private static Windows.Web.Http.IHttpMethodStatics _staticInstance;
	public static Windows.Web.Http.IHttpMethodStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.IHttpMethodStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.HttpMethod Delete()
	{
		Windows.Web.Http.HttpMethod _ret;
		Debug.OK(staticInstance.get_Delete(&_ret));
		return _ret;
	}
	static Windows.Web.Http.HttpMethod Get()
	{
		Windows.Web.Http.HttpMethod _ret;
		Debug.OK(staticInstance.get_Get(&_ret));
		return _ret;
	}
	static Windows.Web.Http.HttpMethod Head()
	{
		Windows.Web.Http.HttpMethod _ret;
		Debug.OK(staticInstance.get_Head(&_ret));
		return _ret;
	}
	static Windows.Web.Http.HttpMethod Options()
	{
		Windows.Web.Http.HttpMethod _ret;
		Debug.OK(staticInstance.get_Options(&_ret));
		return _ret;
	}
	static Windows.Web.Http.HttpMethod Patch()
	{
		Windows.Web.Http.HttpMethod _ret;
		Debug.OK(staticInstance.get_Patch(&_ret));
		return _ret;
	}
	static Windows.Web.Http.HttpMethod Post()
	{
		Windows.Web.Http.HttpMethod _ret;
		Debug.OK(staticInstance.get_Post(&_ret));
		return _ret;
	}
	static Windows.Web.Http.HttpMethod Put()
	{
		Windows.Web.Http.HttpMethod _ret;
		Debug.OK(staticInstance.get_Put(&_ret));
		return _ret;
	}
	static Windows.Web.Http.HttpMethod New(HSTRING method)
	{
		auto factory = factory!(Windows.Web.Http.IHttpMethodFactory);
		Windows.Web.Http.HttpMethod _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpMethodFactory)factory.asInterface(uuid("3c51d10d-36d7-40f8-a86d-e759caf2f83f"))).abi_Create(method, &_ret));
		return _ret;
	}
}

interface HttpMultipartContent : Windows.Web.Http.IHttpContent, Windows.Foundation.IClosable, Windows.Web.Http.IHttpMultipartContent, Windows.Foundation.Collections.IIterable!(Windows.Web.Http.IHttpContent), Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Web.Http.Headers.HttpContentHeaderCollection Headers()
	{
		Windows.Web.Http.Headers.HttpContentHeaderCollection _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).get_Headers(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) BufferAllAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_BufferAllAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, ulong) ReadAsBufferAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsBufferAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, ulong) ReadAsInputStreamAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsInputStreamAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, ulong) ReadAsStringAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsStringAsync(&_ret));
		return _ret;
	}
	final bool TryComputeLength(ulong* out_length)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_TryComputeLength(out_length, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) WriteToStreamAsync(Windows.Storage.Streams.IOutputStream outputStream)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_WriteToStreamAsync(outputStream, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final void Add(Windows.Web.Http.IHttpContent content)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpMultipartContent)this.asInterface(uuid("df916aff-9926-4ac9-aaf1-e0d04ef09bb9"))).abi_Add(content));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Web.Http.IHttpContent)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Web.Http.IHttpContent))this).abi_First(out_first));
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return _ret;
	}
	static HttpMultipartContent New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(HttpMultipartContent).abi_ActivateInstance(&ret));
		return cast(HttpMultipartContent) ret;
	}
	static Windows.Web.Http.HttpMultipartContent New(HSTRING subtype)
	{
		auto factory = factory!(Windows.Web.Http.IHttpMultipartContentFactory);
		Windows.Web.Http.HttpMultipartContent _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpMultipartContentFactory)factory.asInterface(uuid("7eb42e62-0222-4f20-b372-47d5db5d33b4"))).abi_CreateWithSubtype(subtype, &_ret));
		return _ret;
	}
	static Windows.Web.Http.HttpMultipartContent New(HSTRING subtype, HSTRING boundary)
	{
		auto factory = factory!(Windows.Web.Http.IHttpMultipartContentFactory);
		Windows.Web.Http.HttpMultipartContent _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpMultipartContentFactory)factory.asInterface(uuid("7eb42e62-0222-4f20-b372-47d5db5d33b4"))).abi_CreateWithSubtypeAndBoundary(subtype, boundary, &_ret));
		return _ret;
	}
}

interface HttpMultipartFormDataContent : Windows.Web.Http.IHttpContent, Windows.Foundation.IClosable, Windows.Web.Http.IHttpMultipartFormDataContent, Windows.Foundation.Collections.IIterable!(Windows.Web.Http.IHttpContent), Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Web.Http.Headers.HttpContentHeaderCollection Headers()
	{
		Windows.Web.Http.Headers.HttpContentHeaderCollection _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).get_Headers(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) BufferAllAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_BufferAllAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, ulong) ReadAsBufferAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsBufferAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, ulong) ReadAsInputStreamAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsInputStreamAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, ulong) ReadAsStringAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsStringAsync(&_ret));
		return _ret;
	}
	final bool TryComputeLength(ulong* out_length)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_TryComputeLength(out_length, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) WriteToStreamAsync(Windows.Storage.Streams.IOutputStream outputStream)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_WriteToStreamAsync(outputStream, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final void Add(Windows.Web.Http.IHttpContent content)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpMultipartFormDataContent)this.asInterface(uuid("64d337e2-e967-4624-b6d1-cf74604a4a42"))).abi_Add(content));
	}
	final void AddWithName(Windows.Web.Http.IHttpContent content, HSTRING name)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpMultipartFormDataContent)this.asInterface(uuid("64d337e2-e967-4624-b6d1-cf74604a4a42"))).abi_AddWithName(content, name));
	}
	alias Add = AddWithName;
	final void AddWithNameAndFileName(Windows.Web.Http.IHttpContent content, HSTRING name, HSTRING fileName)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpMultipartFormDataContent)this.asInterface(uuid("64d337e2-e967-4624-b6d1-cf74604a4a42"))).abi_AddWithNameAndFileName(content, name, fileName));
	}
	alias Add = AddWithNameAndFileName;
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Web.Http.IHttpContent)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Web.Http.IHttpContent))this).abi_First(out_first));
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return _ret;
	}
	static HttpMultipartFormDataContent New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(HttpMultipartFormDataContent).abi_ActivateInstance(&ret));
		return cast(HttpMultipartFormDataContent) ret;
	}
	static Windows.Web.Http.HttpMultipartFormDataContent New(HSTRING boundary)
	{
		auto factory = factory!(Windows.Web.Http.IHttpMultipartFormDataContentFactory);
		Windows.Web.Http.HttpMultipartFormDataContent _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpMultipartFormDataContentFactory)factory.asInterface(uuid("a04d7311-5017-4622-93a8-49b24a4fcbfc"))).abi_CreateWithBoundary(boundary, &_ret));
		return _ret;
	}
}

interface HttpRequestMessage : Windows.Web.Http.IHttpRequestMessage, Windows.Foundation.IClosable, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Web.Http.IHttpContent Content()
	{
		Windows.Web.Http.IHttpContent _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpRequestMessage)this.asInterface(uuid("f5762b3c-74d4-4811-b5dc-9f8b4e2f9abf"))).get_Content(&_ret));
		return _ret;
	}
	final void Content(Windows.Web.Http.IHttpContent value)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpRequestMessage)this.asInterface(uuid("f5762b3c-74d4-4811-b5dc-9f8b4e2f9abf"))).set_Content(value));
	}
	final Windows.Web.Http.Headers.HttpRequestHeaderCollection Headers()
	{
		Windows.Web.Http.Headers.HttpRequestHeaderCollection _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpRequestMessage)this.asInterface(uuid("f5762b3c-74d4-4811-b5dc-9f8b4e2f9abf"))).get_Headers(&_ret));
		return _ret;
	}
	final Windows.Web.Http.HttpMethod Method()
	{
		Windows.Web.Http.HttpMethod _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpRequestMessage)this.asInterface(uuid("f5762b3c-74d4-4811-b5dc-9f8b4e2f9abf"))).get_Method(&_ret));
		return _ret;
	}
	final void Method(Windows.Web.Http.HttpMethod value)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpRequestMessage)this.asInterface(uuid("f5762b3c-74d4-4811-b5dc-9f8b4e2f9abf"))).set_Method(value));
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, IInspectable) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpRequestMessage)this.asInterface(uuid("f5762b3c-74d4-4811-b5dc-9f8b4e2f9abf"))).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri RequestUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpRequestMessage)this.asInterface(uuid("f5762b3c-74d4-4811-b5dc-9f8b4e2f9abf"))).get_RequestUri(&_ret));
		return _ret;
	}
	final void RequestUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpRequestMessage)this.asInterface(uuid("f5762b3c-74d4-4811-b5dc-9f8b4e2f9abf"))).set_RequestUri(value));
	}
	final Windows.Web.Http.HttpTransportInformation TransportInformation()
	{
		Windows.Web.Http.HttpTransportInformation _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpRequestMessage)this.asInterface(uuid("f5762b3c-74d4-4811-b5dc-9f8b4e2f9abf"))).get_TransportInformation(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return _ret;
	}
	static HttpRequestMessage New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(HttpRequestMessage).abi_ActivateInstance(&ret));
		return cast(HttpRequestMessage) ret;
	}
	static Windows.Web.Http.HttpRequestMessage New(Windows.Web.Http.HttpMethod method, Windows.Foundation.Uri uri)
	{
		auto factory = factory!(Windows.Web.Http.IHttpRequestMessageFactory);
		Windows.Web.Http.HttpRequestMessage _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpRequestMessageFactory)factory.asInterface(uuid("5bac994e-3886-412e-aec3-52ec7f25616f"))).abi_Create(method, uri, &_ret));
		return _ret;
	}
}

interface HttpResponseMessage : Windows.Web.Http.IHttpResponseMessage, Windows.Foundation.IClosable, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Web.Http.IHttpContent Content()
	{
		Windows.Web.Http.IHttpContent _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpResponseMessage)this.asInterface(uuid("fee200fb-8664-44e0-95d9-42696199bffc"))).get_Content(&_ret));
		return _ret;
	}
	final void Content(Windows.Web.Http.IHttpContent value)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpResponseMessage)this.asInterface(uuid("fee200fb-8664-44e0-95d9-42696199bffc"))).set_Content(value));
	}
	final Windows.Web.Http.Headers.HttpResponseHeaderCollection Headers()
	{
		Windows.Web.Http.Headers.HttpResponseHeaderCollection _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpResponseMessage)this.asInterface(uuid("fee200fb-8664-44e0-95d9-42696199bffc"))).get_Headers(&_ret));
		return _ret;
	}
	final bool IsSuccessStatusCode()
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpResponseMessage)this.asInterface(uuid("fee200fb-8664-44e0-95d9-42696199bffc"))).get_IsSuccessStatusCode(&_ret));
		return _ret;
	}
	final HSTRING ReasonPhrase()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpResponseMessage)this.asInterface(uuid("fee200fb-8664-44e0-95d9-42696199bffc"))).get_ReasonPhrase(&_ret));
		return _ret;
	}
	final void ReasonPhrase(HSTRING value)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpResponseMessage)this.asInterface(uuid("fee200fb-8664-44e0-95d9-42696199bffc"))).set_ReasonPhrase(value));
	}
	final Windows.Web.Http.HttpRequestMessage RequestMessage()
	{
		Windows.Web.Http.HttpRequestMessage _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpResponseMessage)this.asInterface(uuid("fee200fb-8664-44e0-95d9-42696199bffc"))).get_RequestMessage(&_ret));
		return _ret;
	}
	final void RequestMessage(Windows.Web.Http.HttpRequestMessage value)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpResponseMessage)this.asInterface(uuid("fee200fb-8664-44e0-95d9-42696199bffc"))).set_RequestMessage(value));
	}
	final Windows.Web.Http.HttpResponseMessageSource Source()
	{
		Windows.Web.Http.HttpResponseMessageSource _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpResponseMessage)this.asInterface(uuid("fee200fb-8664-44e0-95d9-42696199bffc"))).get_Source(&_ret));
		return _ret;
	}
	final void Source(Windows.Web.Http.HttpResponseMessageSource value)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpResponseMessage)this.asInterface(uuid("fee200fb-8664-44e0-95d9-42696199bffc"))).set_Source(value));
	}
	final Windows.Web.Http.HttpStatusCode StatusCode()
	{
		Windows.Web.Http.HttpStatusCode _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpResponseMessage)this.asInterface(uuid("fee200fb-8664-44e0-95d9-42696199bffc"))).get_StatusCode(&_ret));
		return _ret;
	}
	final void StatusCode(Windows.Web.Http.HttpStatusCode value)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpResponseMessage)this.asInterface(uuid("fee200fb-8664-44e0-95d9-42696199bffc"))).set_StatusCode(value));
	}
	final Windows.Web.Http.HttpVersion Version()
	{
		Windows.Web.Http.HttpVersion _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpResponseMessage)this.asInterface(uuid("fee200fb-8664-44e0-95d9-42696199bffc"))).get_Version(&_ret));
		return _ret;
	}
	final void Version(Windows.Web.Http.HttpVersion value)
	{
		Debug.OK((cast(Windows.Web.Http.IHttpResponseMessage)this.asInterface(uuid("fee200fb-8664-44e0-95d9-42696199bffc"))).set_Version(value));
	}
	final Windows.Web.Http.HttpResponseMessage EnsureSuccessStatusCode()
	{
		Windows.Web.Http.HttpResponseMessage _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpResponseMessage)this.asInterface(uuid("fee200fb-8664-44e0-95d9-42696199bffc"))).abi_EnsureSuccessStatusCode(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return _ret;
	}
	static HttpResponseMessage New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(HttpResponseMessage).abi_ActivateInstance(&ret));
		return cast(HttpResponseMessage) ret;
	}
	static Windows.Web.Http.HttpResponseMessage New(Windows.Web.Http.HttpStatusCode statusCode)
	{
		auto factory = factory!(Windows.Web.Http.IHttpResponseMessageFactory);
		Windows.Web.Http.HttpResponseMessage _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpResponseMessageFactory)factory.asInterface(uuid("52a8af99-f095-43da-b60f-7cfc2bc7ea2f"))).abi_Create(statusCode, &_ret));
		return _ret;
	}
}

interface HttpStreamContent : Windows.Web.Http.IHttpContent, Windows.Foundation.IClosable, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Web.Http.Headers.HttpContentHeaderCollection Headers()
	{
		Windows.Web.Http.Headers.HttpContentHeaderCollection _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).get_Headers(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) BufferAllAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_BufferAllAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, ulong) ReadAsBufferAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsBufferAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, ulong) ReadAsInputStreamAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsInputStreamAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, ulong) ReadAsStringAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsStringAsync(&_ret));
		return _ret;
	}
	final bool TryComputeLength(ulong* out_length)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_TryComputeLength(out_length, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) WriteToStreamAsync(Windows.Storage.Streams.IOutputStream outputStream)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_WriteToStreamAsync(outputStream, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return _ret;
	}
	static Windows.Web.Http.HttpStreamContent New(Windows.Storage.Streams.IInputStream content)
	{
		auto factory = factory!(Windows.Web.Http.IHttpStreamContentFactory);
		Windows.Web.Http.HttpStreamContent _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpStreamContentFactory)factory.asInterface(uuid("f3e64d9d-f725-407e-942f-0eda189809f4"))).abi_CreateFromInputStream(content, &_ret));
		return _ret;
	}
}

interface HttpStringContent : Windows.Web.Http.IHttpContent, Windows.Foundation.IClosable, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Web.Http.Headers.HttpContentHeaderCollection Headers()
	{
		Windows.Web.Http.Headers.HttpContentHeaderCollection _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).get_Headers(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) BufferAllAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_BufferAllAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, ulong) ReadAsBufferAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsBufferAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, ulong) ReadAsInputStreamAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsInputStreamAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, ulong) ReadAsStringAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_ReadAsStringAsync(&_ret));
		return _ret;
	}
	final bool TryComputeLength(ulong* out_length)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_TryComputeLength(out_length, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) WriteToStreamAsync(Windows.Storage.Streams.IOutputStream outputStream)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpContent)this.asInterface(uuid("6b14a441-fba7-4bd2-af0a-839de7c295da"))).abi_WriteToStreamAsync(outputStream, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return _ret;
	}
	static Windows.Web.Http.HttpStringContent New(HSTRING content)
	{
		auto factory = factory!(Windows.Web.Http.IHttpStringContentFactory);
		Windows.Web.Http.HttpStringContent _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpStringContentFactory)factory.asInterface(uuid("46649d5b-2e93-48eb-8e61-19677878e57f"))).abi_CreateFromString(content, &_ret));
		return _ret;
	}
	static Windows.Web.Http.HttpStringContent New(HSTRING content, Windows.Storage.Streams.UnicodeEncoding encoding)
	{
		auto factory = factory!(Windows.Web.Http.IHttpStringContentFactory);
		Windows.Web.Http.HttpStringContent _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpStringContentFactory)factory.asInterface(uuid("46649d5b-2e93-48eb-8e61-19677878e57f"))).abi_CreateFromStringWithEncoding(content, encoding, &_ret));
		return _ret;
	}
	static Windows.Web.Http.HttpStringContent New(HSTRING content, Windows.Storage.Streams.UnicodeEncoding encoding, HSTRING mediaType)
	{
		auto factory = factory!(Windows.Web.Http.IHttpStringContentFactory);
		Windows.Web.Http.HttpStringContent _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpStringContentFactory)factory.asInterface(uuid("46649d5b-2e93-48eb-8e61-19677878e57f"))).abi_CreateFromStringWithEncodingAndMediaType(content, encoding, mediaType, &_ret));
		return _ret;
	}
}

interface HttpTransportInformation : Windows.Web.Http.IHttpTransportInformation, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Security.Cryptography.Certificates.Certificate ServerCertificate()
	{
		Windows.Security.Cryptography.Certificates.Certificate _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpTransportInformation)this.asInterface(uuid("70127198-c6a7-4ed0-833a-83fd8b8f178d"))).get_ServerCertificate(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.SocketSslErrorSeverity ServerCertificateErrorSeverity()
	{
		Windows.Networking.Sockets.SocketSslErrorSeverity _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpTransportInformation)this.asInterface(uuid("70127198-c6a7-4ed0-833a-83fd8b8f178d"))).get_ServerCertificateErrorSeverity(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult) ServerCertificateErrors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpTransportInformation)this.asInterface(uuid("70127198-c6a7-4ed0-833a-83fd8b8f178d"))).get_ServerCertificateErrors(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) ServerIntermediateCertificates()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) _ret;
		Debug.OK((cast(Windows.Web.Http.IHttpTransportInformation)this.asInterface(uuid("70127198-c6a7-4ed0-833a-83fd8b8f178d"))).get_ServerIntermediateCertificates(&_ret));
		return _ret;
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return _ret;
	}
}

enum HttpCompletionOption
{
	ResponseContentRead = 0,
	ResponseHeadersRead = 1
}

enum HttpProgressStage
{
	None = 0,
	DetectingProxy = 10,
	ResolvingName = 20,
	ConnectingToServer = 30,
	NegotiatingSsl = 40,
	SendingHeaders = 50,
	SendingContent = 60,
	WaitingForResponse = 70,
	ReceivingHeaders = 80,
	ReceivingContent = 90
}

enum HttpResponseMessageSource
{
	None = 0,
	Cache = 1,
	Network = 2
}

enum HttpStatusCode
{
	None = 0,
	Continue = 100,
	SwitchingProtocols = 101,
	Processing = 102,
	Ok = 200,
	Created = 201,
	Accepted = 202,
	NonAuthoritativeInformation = 203,
	NoContent = 204,
	ResetContent = 205,
	PartialContent = 206,
	MultiStatus = 207,
	AlreadyReported = 208,
	IMUsed = 226,
	MultipleChoices = 300,
	MovedPermanently = 301,
	Found = 302,
	SeeOther = 303,
	NotModified = 304,
	UseProxy = 305,
	TemporaryRedirect = 307,
	PermanentRedirect = 308,
	BadRequest = 400,
	Unauthorized = 401,
	PaymentRequired = 402,
	Forbidden = 403,
	NotFound = 404,
	MethodNotAllowed = 405,
	NotAcceptable = 406,
	ProxyAuthenticationRequired = 407,
	RequestTimeout = 408,
	Conflict = 409,
	Gone = 410,
	LengthRequired = 411,
	PreconditionFailed = 412,
	RequestEntityTooLarge = 413,
	RequestUriTooLong = 414,
	UnsupportedMediaType = 415,
	RequestedRangeNotSatisfiable = 416,
	ExpectationFailed = 417,
	UnprocessableEntity = 422,
	Locked = 423,
	FailedDependency = 424,
	UpgradeRequired = 426,
	PreconditionRequired = 428,
	TooManyRequests = 429,
	RequestHeaderFieldsTooLarge = 431,
	InternalServerError = 500,
	NotImplemented = 501,
	BadGateway = 502,
	ServiceUnavailable = 503,
	GatewayTimeout = 504,
	HttpVersionNotSupported = 505,
	VariantAlsoNegotiates = 506,
	InsufficientStorage = 507,
	LoopDetected = 508,
	NotExtended = 510,
	NetworkAuthenticationRequired = 511
}

enum HttpVersion
{
	None = 0,
	Http10 = 1,
	Http11 = 2,
	Http20 = 3
}