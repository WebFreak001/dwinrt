module Windows.Web.Http.Diagnostics;

import dwinrt;

@uuid("bd811501-a056-4d39-b174-833b7b03b02c")
@WinrtFactory("Windows.Web.Http.Diagnostics.HttpDiagnosticProvider")
interface IHttpDiagnosticProvider : IInspectable
{
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
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_ActivityId(GUID* return_value);
	HRESULT get_Message(Windows.Web.Http.HttpResponseMessage* return_value);
}

@uuid("5b824ec1-6a6c-47cc-afec-1e86bc26053b")
@WinrtFactory("Windows.Web.Http.Diagnostics.HttpDiagnosticProvider")
interface IHttpDiagnosticProviderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromProcessDiagnosticInfo(Windows.System.Diagnostics.ProcessDiagnosticInfo processDiagnosticInfo, Windows.Web.Http.Diagnostics.HttpDiagnosticProvider* return_value);
}

@uuid("54a9d260-8860-423f-b6fa-d77716f647a7")
@WinrtFactory("Windows.Web.Http.Diagnostics.HttpDiagnosticSourceLocation")
interface IHttpDiagnosticSourceLocation : IInspectable
{
extern(Windows):
	HRESULT get_SourceUri(Windows.Foundation.Uri* return_value);
	HRESULT get_LineNumber(UINT64* return_value);
	HRESULT get_ColumnNumber(UINT64* return_value);
}

interface HttpDiagnosticProvider : Windows.Web.Http.Diagnostics.IHttpDiagnosticProvider
{
extern(Windows):
	final void Start()
	{
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProvider).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProvider).abi_Stop());
	}
}

interface HttpDiagnosticProviderRequestResponseCompletedEventArgs : Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseCompletedEventArgs
{
extern(Windows):
	final GUID ActivityId()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseCompletedEventArgs).get_ActivityId(&_ret));
		return _ret;
	}
	final Windows.Web.Http.Diagnostics.HttpDiagnosticProviderRequestResponseTimestamps Timestamps()
	{
		Windows.Web.Http.Diagnostics.HttpDiagnosticProviderRequestResponseTimestamps _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseCompletedEventArgs).get_Timestamps(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri RequestedUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseCompletedEventArgs).get_RequestedUri(&_ret));
		return _ret;
	}
	final UINT32 ProcessId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseCompletedEventArgs).get_ProcessId(&_ret));
		return _ret;
	}
	final UINT32 ThreadId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseCompletedEventArgs).get_ThreadId(&_ret));
		return _ret;
	}
	final Windows.Web.Http.Diagnostics.HttpDiagnosticRequestInitiator Initiator()
	{
		Windows.Web.Http.Diagnostics.HttpDiagnosticRequestInitiator _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseCompletedEventArgs).get_Initiator(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Diagnostics.HttpDiagnosticSourceLocation) SourceLocations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Diagnostics.HttpDiagnosticSourceLocation) _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseCompletedEventArgs).get_SourceLocations(&_ret));
		return _ret;
	}
}

interface HttpDiagnosticProviderRequestResponseTimestamps : Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseTimestamps
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) CacheCheckedTimestamp()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseTimestamps).get_CacheCheckedTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ConnectionInitiatedTimestamp()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseTimestamps).get_ConnectionInitiatedTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) NameResolvedTimestamp()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseTimestamps).get_NameResolvedTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) SslNegotiatedTimestamp()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseTimestamps).get_SslNegotiatedTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ConnectionCompletedTimestamp()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseTimestamps).get_ConnectionCompletedTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) RequestSentTimestamp()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseTimestamps).get_RequestSentTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) RequestCompletedTimestamp()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseTimestamps).get_RequestCompletedTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ResponseReceivedTimestamp()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseTimestamps).get_ResponseReceivedTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ResponseCompletedTimestamp()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestResponseTimestamps).get_ResponseCompletedTimestamp(&_ret));
		return _ret;
	}
}

interface HttpDiagnosticProviderRequestSentEventArgs : Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestSentEventArgs
{
extern(Windows):
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestSentEventArgs).get_Timestamp(&_ret));
		return _ret;
	}
	final GUID ActivityId()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestSentEventArgs).get_ActivityId(&_ret));
		return _ret;
	}
	final Windows.Web.Http.HttpRequestMessage Message()
	{
		Windows.Web.Http.HttpRequestMessage _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestSentEventArgs).get_Message(&_ret));
		return _ret;
	}
	final UINT32 ProcessId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestSentEventArgs).get_ProcessId(&_ret));
		return _ret;
	}
	final UINT32 ThreadId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestSentEventArgs).get_ThreadId(&_ret));
		return _ret;
	}
	final Windows.Web.Http.Diagnostics.HttpDiagnosticRequestInitiator Initiator()
	{
		Windows.Web.Http.Diagnostics.HttpDiagnosticRequestInitiator _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestSentEventArgs).get_Initiator(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Diagnostics.HttpDiagnosticSourceLocation) SourceLocations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Diagnostics.HttpDiagnosticSourceLocation) _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderRequestSentEventArgs).get_SourceLocations(&_ret));
		return _ret;
	}
}

interface HttpDiagnosticProviderResponseReceivedEventArgs : Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderResponseReceivedEventArgs
{
extern(Windows):
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderResponseReceivedEventArgs).get_Timestamp(&_ret));
		return _ret;
	}
	final GUID ActivityId()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderResponseReceivedEventArgs).get_ActivityId(&_ret));
		return _ret;
	}
	final Windows.Web.Http.HttpResponseMessage Message()
	{
		Windows.Web.Http.HttpResponseMessage _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticProviderResponseReceivedEventArgs).get_Message(&_ret));
		return _ret;
	}
}

interface HttpDiagnosticSourceLocation : Windows.Web.Http.Diagnostics.IHttpDiagnosticSourceLocation
{
extern(Windows):
	final Windows.Foundation.Uri SourceUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticSourceLocation).get_SourceUri(&_ret));
		return _ret;
	}
	final UINT64 LineNumber()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticSourceLocation).get_LineNumber(&_ret));
		return _ret;
	}
	final UINT64 ColumnNumber()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Web.Http.Diagnostics.IHttpDiagnosticSourceLocation).get_ColumnNumber(&_ret));
		return _ret;
	}
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