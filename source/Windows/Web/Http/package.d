module Windows.Web.Http;

import dwinrt;

struct HttpProgress
{
	Windows.Web.Http.HttpProgressStage Stage;
	UINT64 BytesSent;
	Windows.Foundation.IReference!(UINT64) TotalBytesToSend;
	UINT64 BytesReceived;
	Windows.Foundation.IReference!(UINT64) TotalBytesToReceive;
	UINT32 Retries;
}

@uuid("bc20c193-c41f-4ff7-9123-6435736eadc2")
@WinrtFactory("Windows.Web.Http.HttpBufferContent")
interface IHttpBufferContentFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFromBuffer(Windows.Storage.Streams.IBuffer content, Windows.Web.Http.HttpBufferContent* return_bufferContent);
	HRESULT abi_CreateFromBufferWithOffset(Windows.Storage.Streams.IBuffer content, UINT32 offset, UINT32 count, Windows.Web.Http.HttpBufferContent* return_bufferContent);
}

@uuid("7fda1151-3574-4880-a8ba-e6b1e0061f3d")
@WinrtFactory("Windows.Web.Http.HttpClient")
interface IHttpClient : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("c30c4eca-e3fa-4f99-afb4-63cc65009462")
@WinrtFactory("Windows.Web.Http.HttpClient")
interface IHttpClientFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Web.Http.Filters.IHttpFilter filter, Windows.Web.Http.HttpClient* return_client);
}

@uuid("6b14a441-fba7-4bd2-af0a-839de7c295da")
interface IHttpContent : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Headers(Windows.Web.Http.Headers.HttpContentHeaderCollection* return_value);
	HRESULT abi_BufferAllAsync(Windows.Foundation.IAsyncOperationWithProgress!(UINT64, UINT64)* return_operation);
	HRESULT abi_ReadAsBufferAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT64)* return_operation);
	HRESULT abi_ReadAsInputStreamAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, UINT64)* return_operation);
	HRESULT abi_ReadAsStringAsync(Windows.Foundation.IAsyncOperationWithProgress!(HSTRING, UINT64)* return_operation);
	HRESULT abi_TryComputeLength(UINT64* out_length, bool* return_succeeded);
	HRESULT abi_WriteToStreamAsync(Windows.Storage.Streams.IOutputStream outputStream, Windows.Foundation.IAsyncOperationWithProgress!(UINT64, UINT64)* return_operation);
}

@uuid("1f5488e2-cc2d-4779-86a7-88f10687d249")
@WinrtFactory("Windows.Web.Http.HttpCookie")
interface IHttpCookie : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING name, HSTRING domain, HSTRING path, Windows.Web.Http.HttpCookie* return_cookie);
}

@uuid("7a431780-cd4f-4e57-a84a-5b0a53d6bb96")
@WinrtFactory("Windows.Web.Http.HttpCookieManager")
interface IHttpCookieManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) content, Windows.Web.Http.HttpFormUrlEncodedContent* return_formUrlEncodedContent);
}

@uuid("728d4022-700d-4fe0-afa5-40299c58dbfd")
@WinrtFactory("Windows.Web.Http.HttpMethod")
interface IHttpMethod : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Method(HSTRING* return_value);
}

@uuid("3c51d10d-36d7-40f8-a86d-e759caf2f83f")
@WinrtFactory("Windows.Web.Http.HttpMethod")
interface IHttpMethodFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING method, Windows.Web.Http.HttpMethod* return_httpMethod);
}

@uuid("64d171f0-d99a-4153-8dc6-d68cc4cce317")
@WinrtFactory("Windows.Web.Http.HttpMethod")
interface IHttpMethodStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
interface IHttpMultipartContent : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Add(Windows.Web.Http.IHttpContent content);
}

@uuid("7eb42e62-0222-4f20-b372-47d5db5d33b4")
@WinrtFactory("Windows.Web.Http.HttpMultipartContent")
interface IHttpMultipartContentFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWithSubtype(HSTRING subtype, Windows.Web.Http.HttpMultipartContent* return_multipartContent);
	HRESULT abi_CreateWithSubtypeAndBoundary(HSTRING subtype, HSTRING boundary, Windows.Web.Http.HttpMultipartContent* return_multipartContent);
}

@uuid("64d337e2-e967-4624-b6d1-cf74604a4a42")
@WinrtFactory("Windows.Web.Http.HttpMultipartFormDataContent")
interface IHttpMultipartFormDataContent : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Add(Windows.Web.Http.IHttpContent content);
	HRESULT abi_AddWithName(Windows.Web.Http.IHttpContent content, HSTRING name);
	HRESULT abi_AddWithNameAndFileName(Windows.Web.Http.IHttpContent content, HSTRING name, HSTRING fileName);
}

@uuid("a04d7311-5017-4622-93a8-49b24a4fcbfc")
@WinrtFactory("Windows.Web.Http.HttpMultipartFormDataContent")
interface IHttpMultipartFormDataContentFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWithBoundary(HSTRING boundary, Windows.Web.Http.HttpMultipartFormDataContent* return_multipartFormDataContent);
}

@uuid("f5762b3c-74d4-4811-b5dc-9f8b4e2f9abf")
@WinrtFactory("Windows.Web.Http.HttpRequestMessage")
interface IHttpRequestMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("5bac994e-3886-412e-aec3-52ec7f25616f")
@WinrtFactory("Windows.Web.Http.HttpRequestMessage")
interface IHttpRequestMessageFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Web.Http.HttpMethod method, Windows.Foundation.Uri uri, Windows.Web.Http.HttpRequestMessage* return_httpRequestMessage);
}

@uuid("fee200fb-8664-44e0-95d9-42696199bffc")
@WinrtFactory("Windows.Web.Http.HttpResponseMessage")
interface IHttpResponseMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("52a8af99-f095-43da-b60f-7cfc2bc7ea2f")
@WinrtFactory("Windows.Web.Http.HttpResponseMessage")
interface IHttpResponseMessageFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Web.Http.HttpStatusCode statusCode, Windows.Web.Http.HttpResponseMessage* return_httpResponseMessage);
}

@uuid("f3e64d9d-f725-407e-942f-0eda189809f4")
@WinrtFactory("Windows.Web.Http.HttpStreamContent")
interface IHttpStreamContentFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFromInputStream(Windows.Storage.Streams.IInputStream content, Windows.Web.Http.HttpStreamContent* return_streamContent);
}

@uuid("46649d5b-2e93-48eb-8e61-19677878e57f")
@WinrtFactory("Windows.Web.Http.HttpStringContent")
interface IHttpStringContentFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFromString(HSTRING content, Windows.Web.Http.HttpStringContent* return_stringContent);
	HRESULT abi_CreateFromStringWithEncoding(HSTRING content, Windows.Storage.Streams.UnicodeEncoding encoding, Windows.Web.Http.HttpStringContent* return_stringContent);
	HRESULT abi_CreateFromStringWithEncodingAndMediaType(HSTRING content, Windows.Storage.Streams.UnicodeEncoding encoding, HSTRING mediaType, Windows.Web.Http.HttpStringContent* return_stringContent);
}

@uuid("70127198-c6a7-4ed0-833a-83fd8b8f178d")
@WinrtFactory("Windows.Web.Http.HttpTransportInformation")
interface IHttpTransportInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ServerCertificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT get_ServerCertificateErrorSeverity(Windows.Networking.Sockets.SocketSslErrorSeverity* return_value);
	HRESULT get_ServerCertificateErrors(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult)* return_value);
	HRESULT get_ServerIntermediateCertificates(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_value);
}

interface HttpBufferContent
{
}

interface HttpClient
{
}

interface HttpCookie
{
}

interface HttpCookieCollection
{
}

interface HttpCookieManager
{
}

interface HttpFormUrlEncodedContent
{
}

interface HttpMethod
{
}

interface HttpMultipartContent
{
}

interface HttpMultipartFormDataContent
{
}

interface HttpRequestMessage
{
}

interface HttpResponseMessage
{
}

interface HttpStreamContent
{
}

interface HttpStringContent
{
}

interface HttpTransportInformation
{
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