module Windows.Web.Http.Diagnostics;

import dwinrt;

@uuid("bd811501-a056-4d39-b174-833b7b03b02c")
@WinrtFactory("Windows.Web.Http.Diagnostics.HttpDiagnosticProvider")
interface IHttpDiagnosticProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Start();
	HRESULT abi_Stop();
	HRESULT add_RequestSent(Windows.Foundation.TypedEventHandler!(Windows.Web.Http.Diagnostics.HttpDiagnosticProvider, Windows.Web.Http.Diagnostics.HttpDiagnosticProviderRequestSentEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RequestSent(EventRegistrationToken token);
	HRESULT add_ResponseReceived(Windows.Foundation.TypedEventHandler!(Windows.Web.Http.Diagnostics.HttpDiagnosticProvider, Windows.Web.Http.Diagnostics.HttpDiagnosticProviderResponseReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ResponseReceived(EventRegistrationToken token);
	HRESULT add_RequestResponseCompleted(Windows.Foundation.TypedEventHandler!(Windows.Web.Http.Diagnostics.HttpDiagnosticProvider, Windows.Web.Http.Diagnostics.HttpDiagnosticProviderRequestResponseCompletedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RequestResponseCompleted(EventRegistrationToken token);
}

@uuid("735f98ee-94f6-4532-b26e-61e1b1e4efd4")
@WinrtFactory("Windows.Web.Http.Diagnostics.HttpDiagnosticProviderRequestResponseCompletedEventArgs")
interface IHttpDiagnosticProviderRequestResponseCompletedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ActivityId(GUID* return_value);
	HRESULT get_Timestamps(Windows.Web.Http.Diagnostics.HttpDiagnosticProviderRequestResponseTimestamps* return_value);
	HRESULT get_RequestedUri(Windows.Foundation.Uri* return_value);
	HRESULT get_ProcessId(UINT32* return_value);
	HRESULT get_ThreadId(UINT32* return_value);
	HRESULT get_Initiator(Windows.Web.Http.Diagnostics.HttpDiagnosticRequestInitiator* return_value);
	HRESULT get_SourceLocations(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Diagnostics.HttpDiagnosticSourceLocation)* return_value);
}

@uuid("e0afde10-55cf-4c01-91d4-a20557d849f0")
@WinrtFactory("Windows.Web.Http.Diagnostics.HttpDiagnosticProviderRequestResponseTimestamps")
interface IHttpDiagnosticProviderRequestResponseTimestamps : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CacheCheckedTimestamp(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_ConnectionInitiatedTimestamp(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_NameResolvedTimestamp(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_SslNegotiatedTimestamp(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_ConnectionCompletedTimestamp(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_RequestSentTimestamp(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_RequestCompletedTimestamp(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_ResponseReceivedTimestamp(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_ResponseCompletedTimestamp(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
}

@uuid("3f5196d0-4c1f-4ebe-a57a-06930771c50d")
@WinrtFactory("Windows.Web.Http.Diagnostics.HttpDiagnosticProviderRequestSentEventArgs")
interface IHttpDiagnosticProviderRequestSentEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_ActivityId(GUID* return_value);
	HRESULT get_Message(Windows.Web.Http.HttpRequestMessage* return_value);
	HRESULT get_ProcessId(UINT32* return_value);
	HRESULT get_ThreadId(UINT32* return_value);
	HRESULT get_Initiator(Windows.Web.Http.Diagnostics.HttpDiagnosticRequestInitiator* return_value);
	HRESULT get_SourceLocations(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Diagnostics.HttpDiagnosticSourceLocation)* return_value);
}

@uuid("a0a2566c-ab5f-4d66-bb2d-084cf41635d0")
@WinrtFactory("Windows.Web.Http.Diagnostics.HttpDiagnosticProviderResponseReceivedEventArgs")
interface IHttpDiagnosticProviderResponseReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_ActivityId(GUID* return_value);
	HRESULT get_Message(Windows.Web.Http.HttpResponseMessage* return_value);
}

@uuid("5b824ec1-6a6c-47cc-afec-1e86bc26053b")
@WinrtFactory("Windows.Web.Http.Diagnostics.HttpDiagnosticProvider")
interface IHttpDiagnosticProviderStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFromProcessDiagnosticInfo(Windows.System.Diagnostics.ProcessDiagnosticInfo processDiagnosticInfo, Windows.Web.Http.Diagnostics.HttpDiagnosticProvider* return_value);
}

@uuid("54a9d260-8860-423f-b6fa-d77716f647a7")
@WinrtFactory("Windows.Web.Http.Diagnostics.HttpDiagnosticSourceLocation")
interface IHttpDiagnosticSourceLocation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SourceUri(Windows.Foundation.Uri* return_value);
	HRESULT get_LineNumber(UINT64* return_value);
	HRESULT get_ColumnNumber(UINT64* return_value);
}

interface HttpDiagnosticProvider
{
}

interface HttpDiagnosticProviderRequestResponseCompletedEventArgs
{
}

interface HttpDiagnosticProviderRequestResponseTimestamps
{
}

interface HttpDiagnosticProviderRequestSentEventArgs
{
}

interface HttpDiagnosticProviderResponseReceivedEventArgs
{
}

interface HttpDiagnosticSourceLocation
{
}

enum HttpDiagnosticRequestInitiator
{
	ParsedElement = 0,
	Script = 1,
	Image = 2,
	Link = 3,
	Style = 4,
	XmlHttpRequest = 5,
	Media = 6,
	HtmlDownload = 7,
	Prefetch = 8,
	Other = 9,
	CrossOriginPreFlight = 10,
	Fetch = 11,
	Beacon = 12
}