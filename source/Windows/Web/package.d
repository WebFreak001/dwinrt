module Windows.Web;

import dwinrt;

@uuid("b0aba86a-9aeb-4d3a-9590-003e3ca7e290")
interface IUriToStreamResolver : IInspectable
{
extern(Windows):
	HRESULT abi_UriToStreamAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IInputStream)* return_operation);
}

@uuid("fe616766-bf27-4064-87b7-6563bb11ce2e")
@WinrtFactory("Windows.Web.WebError")
interface IWebErrorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetStatus(INT32 hresult, Windows.Web.WebErrorStatus* return_status);
}

interface WebError
{
}

enum WebErrorStatus
{
	Unknown = 0,
	CertificateCommonNameIsIncorrect = 1,
	CertificateExpired = 2,
	CertificateContainsErrors = 3,
	CertificateRevoked = 4,
	CertificateIsInvalid = 5,
	ServerUnreachable = 6,
	Timeout = 7,
	ErrorHttpInvalidServerResponse = 8,
	ConnectionAborted = 9,
	ConnectionReset = 10,
	Disconnected = 11,
	HttpToHttpsOnRedirection = 12,
	HttpsToHttpOnRedirection = 13,
	CannotConnect = 14,
	HostNameNotResolved = 15,
	OperationCanceled = 16,
	RedirectFailed = 17,
	UnexpectedStatusCode = 18,
	UnexpectedRedirection = 19,
	UnexpectedClientError = 20,
	UnexpectedServerError = 21,
	MultipleChoices = 300,
	MovedPermanently = 301,
	Found = 302,
	SeeOther = 303,
	NotModified = 304,
	UseProxy = 305,
	TemporaryRedirect = 307,
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
	InternalServerError = 500,
	NotImplemented = 501,
	BadGateway = 502,
	ServiceUnavailable = 503,
	GatewayTimeout = 504,
	HttpVersionNotSupported = 505
}