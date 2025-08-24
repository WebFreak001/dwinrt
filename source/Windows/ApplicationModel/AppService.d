module Windows.ApplicationModel.AppService;

import dwinrt;

@uuid("ef0d2507-d132-4c85-8395-3c31d5a1e941")
@WinrtFactory("Windows.ApplicationModel.AppService.AppServiceCatalog")
interface IAppServiceCatalogStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FindAppServiceProvidersAsync(HSTRING appServiceName, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppInfo))* return_operation);
}

@uuid("de6016f6-cb03-4d35-ac8d-cc6303239731")
@WinrtFactory("Windows.ApplicationModel.AppService.AppServiceClosedEventArgs")
interface IAppServiceClosedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.ApplicationModel.AppService.AppServiceClosedStatus* return_value);
}

@uuid("9dd474a2-871f-4d52-89a9-9e090531bd27")
@WinrtFactory("Windows.ApplicationModel.AppService.AppServiceConnection")
interface IAppServiceConnection_Base : IInspectable
{
extern(Windows):
	HRESULT get_AppServiceName(HSTRING* return_value);
	HRESULT set_AppServiceName(HSTRING value);
	HRESULT get_PackageFamilyName(HSTRING* return_value);
	HRESULT set_PackageFamilyName(HSTRING value);
	HRESULT abi_OpenAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.AppService.AppServiceConnectionStatus)* return_operation);
	HRESULT abi_SendMessageAsync(Windows.Foundation.Collections.ValueSet message, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.AppService.AppServiceResponse)* return_operation);
	HRESULT add_RequestReceived(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.AppService.AppServiceConnection, Windows.ApplicationModel.AppService.AppServiceRequestReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RequestReceived(EventRegistrationToken token);
	HRESULT add_ServiceClosed(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.AppService.AppServiceConnection, Windows.ApplicationModel.AppService.AppServiceClosedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ServiceClosed(EventRegistrationToken token);
}
@uuid("9dd474a2-871f-4d52-89a9-9e090531bd27")
@WinrtFactory("Windows.ApplicationModel.AppService.AppServiceConnection")
interface IAppServiceConnection : IAppServiceConnection_Base, Windows.Foundation.IClosable {}

@uuid("8bdfcd5f-2302-4fbd-8061-52511c2f8bf9")
@WinrtFactory("Windows.ApplicationModel.AppService.AppServiceConnection")
interface IAppServiceConnection2 : IInspectable
{
extern(Windows):
	HRESULT abi_OpenRemoteAsync(Windows.System.RemoteSystems.RemoteSystemConnectionRequest remoteSystemConnectionRequest, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.AppService.AppServiceConnectionStatus)* return_operation);
	HRESULT get_User(Windows.System.User* return_value);
	HRESULT set_User(Windows.System.User value);
}

@uuid("7e1b5322-eab0-4248-ae04-fdf93838e472")
@WinrtFactory("Windows.ApplicationModel.AppService.AppServiceDeferral")
interface IAppServiceDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("20e58d9d-18de-4b01-80ba-90a76204e3c8")
@WinrtFactory("Windows.ApplicationModel.AppService.AppServiceRequest")
interface IAppServiceRequest : IInspectable
{
extern(Windows):
	HRESULT get_Message(Windows.Foundation.Collections.ValueSet* return_value);
	HRESULT abi_SendResponseAsync(Windows.Foundation.Collections.ValueSet message, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.AppService.AppServiceResponseStatus)* return_operation);
}

@uuid("6e122360-ff65-44ae-9e45-857fe4180681")
@WinrtFactory("Windows.ApplicationModel.AppService.AppServiceRequestReceivedEventArgs")
interface IAppServiceRequestReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.AppService.AppServiceRequest* return_value);
	HRESULT abi_GetDeferral(Windows.ApplicationModel.AppService.AppServiceDeferral* return_value);
}

@uuid("8d503cec-9aa3-4e68-9559-9de63e372ce4")
@WinrtFactory("Windows.ApplicationModel.AppService.AppServiceResponse")
interface IAppServiceResponse : IInspectable
{
extern(Windows):
	HRESULT get_Message(Windows.Foundation.Collections.ValueSet* return_value);
	HRESULT get_Status(Windows.ApplicationModel.AppService.AppServiceResponseStatus* return_value);
}

@uuid("88a2dcac-ad28-41b8-80bb-bdf1b2169e19")
@WinrtFactory("Windows.ApplicationModel.AppService.AppServiceTriggerDetails")
interface IAppServiceTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_CallerPackageFamilyName(HSTRING* return_value);
	HRESULT get_AppServiceConnection(Windows.ApplicationModel.AppService.AppServiceConnection* return_value);
}

@uuid("e83d54b2-28cc-43f2-b465-c0482e59e2dc")
@WinrtFactory("Windows.ApplicationModel.AppService.AppServiceTriggerDetails")
interface IAppServiceTriggerDetails2 : IInspectable
{
extern(Windows):
	HRESULT get_IsRemoteSystemConnection(bool* return_value);
}

interface AppServiceCatalog
{
	private static Windows.ApplicationModel.AppService.IAppServiceCatalogStatics _staticInstance;
	public static Windows.ApplicationModel.AppService.IAppServiceCatalogStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.AppService.IAppServiceCatalogStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppInfo)) FindAppServiceProvidersAsync(wstring appServiceName)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppInfo)) _ret;
		Debug.OK(staticInstance.abi_FindAppServiceProvidersAsync(hstring(appServiceName).handle, &_ret));
		return _ret;
	}
}

interface AppServiceClosedEventArgs : Windows.ApplicationModel.AppService.IAppServiceClosedEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.AppService.AppServiceClosedStatus Status()
	{
		Windows.ApplicationModel.AppService.AppServiceClosedStatus _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceClosedEventArgs)this.asInterface(uuid("de6016f6-cb03-4d35-ac8d-cc6303239731"))).get_Status(&_ret));
		return _ret;
	}
}

interface AppServiceConnection : Windows.ApplicationModel.AppService.IAppServiceConnection, Windows.Foundation.IClosable, Windows.ApplicationModel.AppService.IAppServiceConnection2
{
extern(Windows):
	final wstring AppServiceName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceConnection)this.asInterface(uuid("9dd474a2-871f-4d52-89a9-9e090531bd27"))).get_AppServiceName(&_ret));
		return hstring(_ret).d_str;
	}
	final void AppServiceName(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceConnection)this.asInterface(uuid("9dd474a2-871f-4d52-89a9-9e090531bd27"))).set_AppServiceName(hstring(value).handle));
	}
	final wstring PackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceConnection)this.asInterface(uuid("9dd474a2-871f-4d52-89a9-9e090531bd27"))).get_PackageFamilyName(&_ret));
		return hstring(_ret).d_str;
	}
	final void PackageFamilyName(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceConnection)this.asInterface(uuid("9dd474a2-871f-4d52-89a9-9e090531bd27"))).set_PackageFamilyName(hstring(value).handle));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.AppService.AppServiceConnectionStatus) OpenAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.AppService.AppServiceConnectionStatus) _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceConnection)this.asInterface(uuid("9dd474a2-871f-4d52-89a9-9e090531bd27"))).abi_OpenAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.AppService.AppServiceResponse) SendMessageAsync(Windows.Foundation.Collections.ValueSet message)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.AppService.AppServiceResponse) _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceConnection)this.asInterface(uuid("9dd474a2-871f-4d52-89a9-9e090531bd27"))).abi_SendMessageAsync(message, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnRequestReceived(void delegate(Windows.ApplicationModel.AppService.AppServiceConnection, Windows.ApplicationModel.AppService.AppServiceRequestReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceConnection)this.asInterface(uuid("9dd474a2-871f-4d52-89a9-9e090531bd27"))).add_RequestReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.AppService.AppServiceConnection, Windows.ApplicationModel.AppService.AppServiceRequestReceivedEventArgs), Windows.ApplicationModel.AppService.AppServiceConnection, Windows.ApplicationModel.AppService.AppServiceRequestReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRequestReceived(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceConnection)this.asInterface(uuid("9dd474a2-871f-4d52-89a9-9e090531bd27"))).remove_RequestReceived(token));
	}
	final EventRegistrationToken OnServiceClosed(void delegate(Windows.ApplicationModel.AppService.AppServiceConnection, Windows.ApplicationModel.AppService.AppServiceClosedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceConnection)this.asInterface(uuid("9dd474a2-871f-4d52-89a9-9e090531bd27"))).add_ServiceClosed(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.AppService.AppServiceConnection, Windows.ApplicationModel.AppService.AppServiceClosedEventArgs), Windows.ApplicationModel.AppService.AppServiceConnection, Windows.ApplicationModel.AppService.AppServiceClosedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeServiceClosed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceConnection)this.asInterface(uuid("9dd474a2-871f-4d52-89a9-9e090531bd27"))).remove_ServiceClosed(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.AppService.AppServiceConnectionStatus) OpenRemoteAsync(Windows.System.RemoteSystems.RemoteSystemConnectionRequest remoteSystemConnectionRequest)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.AppService.AppServiceConnectionStatus) _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceConnection2)this.asInterface(uuid("8bdfcd5f-2302-4fbd-8061-52511c2f8bf9"))).abi_OpenRemoteAsync(remoteSystemConnectionRequest, &_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceConnection2)this.asInterface(uuid("8bdfcd5f-2302-4fbd-8061-52511c2f8bf9"))).get_User(&_ret));
		return _ret;
	}
	final void User(Windows.System.User value)
	{
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceConnection2)this.asInterface(uuid("8bdfcd5f-2302-4fbd-8061-52511c2f8bf9"))).set_User(value));
	}
	static AppServiceConnection New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(AppServiceConnection).abi_ActivateInstance(&ret));
		return cast(AppServiceConnection) ret;
	}
}

interface AppServiceDeferral : Windows.ApplicationModel.AppService.IAppServiceDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceDeferral)this.asInterface(uuid("7e1b5322-eab0-4248-ae04-fdf93838e472"))).abi_Complete());
	}
}

interface AppServiceRequest : Windows.ApplicationModel.AppService.IAppServiceRequest
{
extern(Windows):
	final Windows.Foundation.Collections.ValueSet Message()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceRequest)this.asInterface(uuid("20e58d9d-18de-4b01-80ba-90a76204e3c8"))).get_Message(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.AppService.AppServiceResponseStatus) SendResponseAsync(Windows.Foundation.Collections.ValueSet message)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.AppService.AppServiceResponseStatus) _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceRequest)this.asInterface(uuid("20e58d9d-18de-4b01-80ba-90a76204e3c8"))).abi_SendResponseAsync(message, &_ret));
		return _ret;
	}
}

interface AppServiceRequestReceivedEventArgs : Windows.ApplicationModel.AppService.IAppServiceRequestReceivedEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.AppService.AppServiceRequest Request()
	{
		Windows.ApplicationModel.AppService.AppServiceRequest _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceRequestReceivedEventArgs)this.asInterface(uuid("6e122360-ff65-44ae-9e45-857fe4180681"))).get_Request(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.AppService.AppServiceDeferral GetDeferral()
	{
		Windows.ApplicationModel.AppService.AppServiceDeferral _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceRequestReceivedEventArgs)this.asInterface(uuid("6e122360-ff65-44ae-9e45-857fe4180681"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface AppServiceResponse : Windows.ApplicationModel.AppService.IAppServiceResponse
{
extern(Windows):
	final Windows.Foundation.Collections.ValueSet Message()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceResponse)this.asInterface(uuid("8d503cec-9aa3-4e68-9559-9de63e372ce4"))).get_Message(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.AppService.AppServiceResponseStatus Status()
	{
		Windows.ApplicationModel.AppService.AppServiceResponseStatus _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceResponse)this.asInterface(uuid("8d503cec-9aa3-4e68-9559-9de63e372ce4"))).get_Status(&_ret));
		return _ret;
	}
}

interface AppServiceTriggerDetails : Windows.ApplicationModel.AppService.IAppServiceTriggerDetails, Windows.ApplicationModel.AppService.IAppServiceTriggerDetails2
{
extern(Windows):
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceTriggerDetails)this.asInterface(uuid("88a2dcac-ad28-41b8-80bb-bdf1b2169e19"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring CallerPackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceTriggerDetails)this.asInterface(uuid("88a2dcac-ad28-41b8-80bb-bdf1b2169e19"))).get_CallerPackageFamilyName(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.ApplicationModel.AppService.AppServiceConnection AppServiceConnection()
	{
		Windows.ApplicationModel.AppService.AppServiceConnection _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceTriggerDetails)this.asInterface(uuid("88a2dcac-ad28-41b8-80bb-bdf1b2169e19"))).get_AppServiceConnection(&_ret));
		return _ret;
	}
	final bool IsRemoteSystemConnection()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppService.IAppServiceTriggerDetails2)this.asInterface(uuid("e83d54b2-28cc-43f2-b465-c0482e59e2dc"))).get_IsRemoteSystemConnection(&_ret));
		return _ret;
	}
}

enum AppServiceClosedStatus
{
	Completed = 0,
	Canceled = 1,
	ResourceLimitsExceeded = 2,
	Unknown = 3
}

enum AppServiceConnectionStatus
{
	Success = 0,
	AppNotInstalled = 1,
	AppUnavailable = 2,
	AppServiceUnavailable = 3,
	Unknown = 4,
	RemoteSystemUnavailable = 5,
	RemoteSystemNotSupportedByApp = 6,
	NotAuthorized = 7
}

enum AppServiceResponseStatus
{
	Success = 0,
	Failure = 1,
	ResourceLimitsExceeded = 2,
	Unknown = 3,
	RemoteSystemUnavailable = 4,
	MessageSizeTooLarge = 5
}