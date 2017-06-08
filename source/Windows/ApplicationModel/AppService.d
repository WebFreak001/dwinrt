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
interface IAppServiceConnection : IInspectable
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
}

interface AppServiceClosedEventArgs : Windows.ApplicationModel.AppService.IAppServiceClosedEventArgs
{
}

interface AppServiceConnection : Windows.ApplicationModel.AppService.IAppServiceConnection, Windows.Foundation.IClosable, Windows.ApplicationModel.AppService.IAppServiceConnection2
{
}

interface AppServiceDeferral : Windows.ApplicationModel.AppService.IAppServiceDeferral
{
}

interface AppServiceRequest : Windows.ApplicationModel.AppService.IAppServiceRequest
{
}

interface AppServiceRequestReceivedEventArgs : Windows.ApplicationModel.AppService.IAppServiceRequestReceivedEventArgs
{
}

interface AppServiceResponse : Windows.ApplicationModel.AppService.IAppServiceResponse
{
}

interface AppServiceTriggerDetails : Windows.ApplicationModel.AppService.IAppServiceTriggerDetails, Windows.ApplicationModel.AppService.IAppServiceTriggerDetails2
{
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