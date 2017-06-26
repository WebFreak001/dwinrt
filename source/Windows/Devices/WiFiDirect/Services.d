module Windows.Devices.WiFiDirect.Services;

import dwinrt;

@uuid("50aabbb8-5f71-45ec-84f1-a1e4fc7879a3")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectService")
interface IWiFiDirectService : IInspectable
{
extern(Windows):
	HRESULT get_RemoteServiceInfo(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_SupportedConfigurationMethods(Windows.Foundation.Collections.IVectorView!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod)* return_value);
	HRESULT get_PreferGroupOwnerMode(bool* return_value);
	HRESULT set_PreferGroupOwnerMode(bool value);
	HRESULT get_SessionInfo(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_SessionInfo(Windows.Storage.Streams.IBuffer value);
	HRESULT get_ServiceError(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceError* return_value);
	HRESULT add_SessionDeferred(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectService, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionDeferredEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SessionDeferred(EventRegistrationToken token);
	HRESULT abi_GetProvisioningInfoAsync(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod selectedConfigurationMethod, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceProvisioningInfo)* return_result);
	HRESULT abi_ConnectAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession)* return_result);
	HRESULT abi_ConnectAsyncWithPin(HSTRING pin, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession)* return_result);
}

@uuid("a4aa1ee1-9d8f-4f4f-93ee-7ddea2e37f46")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser")
interface IWiFiDirectServiceAdvertiser : IInspectable
{
extern(Windows):
	HRESULT get_ServiceName(HSTRING* return_value);
	HRESULT get_ServiceNamePrefixes(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_ServiceInfo(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_ServiceInfo(Windows.Storage.Streams.IBuffer value);
	HRESULT get_AutoAcceptSession(bool* return_value);
	HRESULT set_AutoAcceptSession(bool value);
	HRESULT get_PreferGroupOwnerMode(bool* return_value);
	HRESULT set_PreferGroupOwnerMode(bool value);
	HRESULT get_PreferredConfigurationMethods(Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod)* return_value);
	HRESULT get_ServiceStatus(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceStatus* return_value);
	HRESULT set_ServiceStatus(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceStatus value);
	HRESULT get_CustomServiceStatusCode(UINT32* return_value);
	HRESULT set_CustomServiceStatusCode(UINT32 value);
	HRESULT get_DeferredSessionInfo(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_DeferredSessionInfo(Windows.Storage.Streams.IBuffer value);
	HRESULT get_AdvertisementStatus(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertisementStatus* return_value);
	HRESULT get_ServiceError(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceError* return_value);
	HRESULT add_SessionRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SessionRequested(EventRegistrationToken token);
	HRESULT add_AutoAcceptSessionConnected(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAutoAcceptSessionConnectedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AutoAcceptSessionConnected(EventRegistrationToken token);
	HRESULT add_AdvertisementStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_AdvertisementStatusChanged(EventRegistrationToken token);
	HRESULT abi_ConnectAsync(Windows.Devices.Enumeration.DeviceInformation deviceInfo, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession)* return_result);
	HRESULT abi_ConnectAsyncWithPin(Windows.Devices.Enumeration.DeviceInformation deviceInfo, HSTRING pin, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession)* return_result);
	HRESULT abi_Start();
	HRESULT abi_Stop();
}

@uuid("3106ac0d-b446-4f13-9f9a-8ae925feba2b")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser")
interface IWiFiDirectServiceAdvertiserFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWiFiDirectServiceAdvertiser(HSTRING serviceName, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser* return_result);
}

@uuid("dcd9e01e-83df-43e5-8f43-cbe8479e84eb")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAutoAcceptSessionConnectedEventArgs")
interface IWiFiDirectServiceAutoAcceptSessionConnectedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Session(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession* return_value);
	HRESULT get_SessionInfo(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("8bdb7cfe-97d9-45a2-8e99-db50910fb6a6")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceProvisioningInfo")
interface IWiFiDirectServiceProvisioningInfo : IInspectable
{
extern(Windows):
	HRESULT get_SelectedConfigurationMethod(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod* return_value);
	HRESULT get_IsGroupFormationNeeded(bool* return_value);
}

@uuid("d4cebac1-3fd3-4f0e-b7bd-782906f44411")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceRemotePortAddedEventArgs")
interface IWiFiDirectServiceRemotePortAddedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_EndpointPairs(Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair)* return_value);
	HRESULT get_Protocol(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceIPProtocol* return_value);
}

@uuid("81142163-e426-47cb-8640-e1b3588bf26f")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession")
interface IWiFiDirectServiceSession_Base : IInspectable
{
extern(Windows):
	HRESULT get_ServiceName(HSTRING* return_value);
	HRESULT get_Status(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionStatus* return_value);
	HRESULT get_ErrorStatus(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionErrorStatus* return_value);
	HRESULT get_SessionId(UINT32* return_value);
	HRESULT get_AdvertisementId(UINT32* return_value);
	HRESULT get_ServiceAddress(HSTRING* return_value);
	HRESULT get_SessionAddress(HSTRING* return_value);
	HRESULT abi_GetConnectionEndpointPairs(Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair)* return_value);
	HRESULT add_SessionStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_SessionStatusChanged(EventRegistrationToken token);
	HRESULT abi_AddStreamSocketListenerAsync(Windows.Networking.Sockets.StreamSocketListener value, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_AddDatagramSocketAsync(Windows.Networking.Sockets.DatagramSocket value, Windows.Foundation.IAsyncAction* return_result);
	HRESULT add_RemotePortAdded(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceRemotePortAddedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RemotePortAdded(EventRegistrationToken token);
}
@uuid("81142163-e426-47cb-8640-e1b3588bf26f")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession")
interface IWiFiDirectServiceSession : IWiFiDirectServiceSession_Base, Windows.Foundation.IClosable {}

@uuid("8dfc197f-1201-4f1f-b6f4-5df1b7b9fb2e")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionDeferredEventArgs")
interface IWiFiDirectServiceSessionDeferredEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_DeferredSessionInfo(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("a0e27c8b-50cb-4a58-9bcf-e472b99fba04")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionRequest")
interface IWiFiDirectServiceSessionRequest_Base : IInspectable
{
extern(Windows):
	HRESULT get_DeviceInformation(Windows.Devices.Enumeration.DeviceInformation* return_value);
	HRESULT get_ProvisioningInfo(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceProvisioningInfo* return_value);
	HRESULT get_SessionInfo(Windows.Storage.Streams.IBuffer* return_value);
}
@uuid("a0e27c8b-50cb-4a58-9bcf-e472b99fba04")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionRequest")
interface IWiFiDirectServiceSessionRequest : IWiFiDirectServiceSessionRequest_Base, Windows.Foundation.IClosable {}

@uuid("74bdcc11-53d6-4999-b4f8-6c8ecc1771e7")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionRequestedEventArgs")
interface IWiFiDirectServiceSessionRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_GetSessionRequest(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionRequest* return_value);
}

@uuid("7db40045-fd74-4688-b725-5dce86acf233")
@WinrtFactory("Windows.Devices.WiFiDirect.Services.WiFiDirectService")
interface IWiFiDirectServiceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetSelector(HSTRING serviceName, HSTRING* return_serviceSelector);
	HRESULT abi_GetSelectorWithFilter(HSTRING serviceName, Windows.Storage.Streams.IBuffer serviceInfoFilter, HSTRING* return_serviceSelector);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectService)* return_asyncOp);
}

interface WiFiDirectService : Windows.Devices.WiFiDirect.Services.IWiFiDirectService
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer RemoteServiceInfo()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectService).get_RemoteServiceInfo(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod) SupportedConfigurationMethods()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod) _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectService).get_SupportedConfigurationMethods(&_ret));
		return _ret;
	}
	final bool PreferGroupOwnerMode()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectService).get_PreferGroupOwnerMode(&_ret));
		return _ret;
	}
	final void PreferGroupOwnerMode(bool value)
	{
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectService).set_PreferGroupOwnerMode(value));
	}
	final Windows.Storage.Streams.IBuffer SessionInfo()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectService).get_SessionInfo(&_ret));
		return _ret;
	}
	final void SessionInfo(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectService).set_SessionInfo(value));
	}
	final Windows.Devices.WiFiDirect.Services.WiFiDirectServiceError ServiceError()
	{
		Windows.Devices.WiFiDirect.Services.WiFiDirectServiceError _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectService).get_ServiceError(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnSessionDeferred(void delegate(Windows.Devices.WiFiDirect.Services.WiFiDirectService, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionDeferredEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectService).add_SessionDeferred(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectService, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionDeferredEventArgs), Windows.Devices.WiFiDirect.Services.WiFiDirectService, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionDeferredEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSessionDeferred(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectService).remove_SessionDeferred(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceProvisioningInfo) GetProvisioningInfoAsync(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod selectedConfigurationMethod)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceProvisioningInfo) _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectService).abi_GetProvisioningInfoAsync(selectedConfigurationMethod, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession) ConnectAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession) _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectService).abi_ConnectAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession) ConnectAsyncWithPin(HSTRING pin)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession) _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectService).abi_ConnectAsyncWithPin(pin, &_ret));
		return _ret;
	}

	private static Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceStatics _staticInstance;
	public static Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceStatics);
		return _staticInstance;
	}
	static HSTRING GetSelector(HSTRING serviceName)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceStatics).abi_GetSelector(serviceName, &_ret));
		return _ret;
	}
	static HSTRING GetSelectorWithFilter(HSTRING serviceName, Windows.Storage.Streams.IBuffer serviceInfoFilter)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceStatics).abi_GetSelectorWithFilter(serviceName, serviceInfoFilter, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectService) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectService) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceStatics).abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
}

interface WiFiDirectServiceAdvertiser : Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser
{
extern(Windows):
	final HSTRING ServiceName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).get_ServiceName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) ServiceNamePrefixes()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).get_ServiceNamePrefixes(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer ServiceInfo()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).get_ServiceInfo(&_ret));
		return _ret;
	}
	final void ServiceInfo(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).set_ServiceInfo(value));
	}
	final bool AutoAcceptSession()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).get_AutoAcceptSession(&_ret));
		return _ret;
	}
	final void AutoAcceptSession(bool value)
	{
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).set_AutoAcceptSession(value));
	}
	final bool PreferGroupOwnerMode()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).get_PreferGroupOwnerMode(&_ret));
		return _ret;
	}
	final void PreferGroupOwnerMode(bool value)
	{
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).set_PreferGroupOwnerMode(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod) PreferredConfigurationMethods()
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod) _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).get_PreferredConfigurationMethods(&_ret));
		return _ret;
	}
	final Windows.Devices.WiFiDirect.Services.WiFiDirectServiceStatus ServiceStatus()
	{
		Windows.Devices.WiFiDirect.Services.WiFiDirectServiceStatus _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).get_ServiceStatus(&_ret));
		return _ret;
	}
	final void ServiceStatus(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceStatus value)
	{
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).set_ServiceStatus(value));
	}
	final UINT32 CustomServiceStatusCode()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).get_CustomServiceStatusCode(&_ret));
		return _ret;
	}
	final void CustomServiceStatusCode(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).set_CustomServiceStatusCode(value));
	}
	final Windows.Storage.Streams.IBuffer DeferredSessionInfo()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).get_DeferredSessionInfo(&_ret));
		return _ret;
	}
	final void DeferredSessionInfo(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).set_DeferredSessionInfo(value));
	}
	final Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertisementStatus AdvertisementStatus()
	{
		Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertisementStatus _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).get_AdvertisementStatus(&_ret));
		return _ret;
	}
	final Windows.Devices.WiFiDirect.Services.WiFiDirectServiceError ServiceError()
	{
		Windows.Devices.WiFiDirect.Services.WiFiDirectServiceError _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).get_ServiceError(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnSessionRequested(void delegate(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).add_SessionRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionRequestedEventArgs), Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSessionRequested(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).remove_SessionRequested(token));
	}
	final EventRegistrationToken OnAutoAcceptSessionConnected(void delegate(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAutoAcceptSessionConnectedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).add_AutoAcceptSessionConnected(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAutoAcceptSessionConnectedEventArgs), Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAutoAcceptSessionConnectedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAutoAcceptSessionConnected(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).remove_AutoAcceptSessionConnected(token));
	}
	final EventRegistrationToken OnAdvertisementStatusChanged(void delegate(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).add_AdvertisementStatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser, IInspectable), Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeAdvertisementStatusChanged(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).remove_AdvertisementStatusChanged(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession) ConnectAsync(Windows.Devices.Enumeration.DeviceInformation deviceInfo)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession) _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).abi_ConnectAsync(deviceInfo, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession) ConnectAsyncWithPin(Windows.Devices.Enumeration.DeviceInformation deviceInfo, HSTRING pin)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession) _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).abi_ConnectAsyncWithPin(deviceInfo, pin, &_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiser).abi_Stop());
	}
	static Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser New(HSTRING serviceName)
	{
		auto factory = factory!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiserFactory);
		Windows.Devices.WiFiDirect.Services.WiFiDirectServiceAdvertiser _ret;
		Debug.OK(factory.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAdvertiserFactory).abi_CreateWiFiDirectServiceAdvertiser(serviceName, &_ret));
		return _ret;
	}
}

interface WiFiDirectServiceAutoAcceptSessionConnectedEventArgs : Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAutoAcceptSessionConnectedEventArgs
{
extern(Windows):
	final Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession Session()
	{
		Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAutoAcceptSessionConnectedEventArgs).get_Session(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer SessionInfo()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceAutoAcceptSessionConnectedEventArgs).get_SessionInfo(&_ret));
		return _ret;
	}
}

interface WiFiDirectServiceProvisioningInfo : Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceProvisioningInfo
{
extern(Windows):
	final Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod SelectedConfigurationMethod()
	{
		Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceProvisioningInfo).get_SelectedConfigurationMethod(&_ret));
		return _ret;
	}
	final bool IsGroupFormationNeeded()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceProvisioningInfo).get_IsGroupFormationNeeded(&_ret));
		return _ret;
	}
}

interface WiFiDirectServiceRemotePortAddedEventArgs : Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceRemotePortAddedEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair) EndpointPairs()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair) _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceRemotePortAddedEventArgs).get_EndpointPairs(&_ret));
		return _ret;
	}
	final Windows.Devices.WiFiDirect.Services.WiFiDirectServiceIPProtocol Protocol()
	{
		Windows.Devices.WiFiDirect.Services.WiFiDirectServiceIPProtocol _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceRemotePortAddedEventArgs).get_Protocol(&_ret));
		return _ret;
	}
}

interface WiFiDirectServiceSession : Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession, Windows.Foundation.IClosable
{
extern(Windows):
	final HSTRING ServiceName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession).get_ServiceName(&_ret));
		return _ret;
	}
	final Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionStatus Status()
	{
		Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionStatus _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession).get_Status(&_ret));
		return _ret;
	}
	final Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionErrorStatus ErrorStatus()
	{
		Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionErrorStatus _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession).get_ErrorStatus(&_ret));
		return _ret;
	}
	final UINT32 SessionId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession).get_SessionId(&_ret));
		return _ret;
	}
	final UINT32 AdvertisementId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession).get_AdvertisementId(&_ret));
		return _ret;
	}
	final HSTRING ServiceAddress()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession).get_ServiceAddress(&_ret));
		return _ret;
	}
	final HSTRING SessionAddress()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession).get_SessionAddress(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair) GetConnectionEndpointPairs()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair) _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession).abi_GetConnectionEndpointPairs(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnSessionStatusChanged(void delegate(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession).add_SessionStatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession, IInspectable), Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeSessionStatusChanged(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession).remove_SessionStatusChanged(token));
	}
	final Windows.Foundation.IAsyncAction AddStreamSocketListenerAsync(Windows.Networking.Sockets.StreamSocketListener value)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession).abi_AddStreamSocketListenerAsync(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction AddDatagramSocketAsync(Windows.Networking.Sockets.DatagramSocket value)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession).abi_AddDatagramSocketAsync(value, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnRemotePortAdded(void delegate(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceRemotePortAddedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession).add_RemotePortAdded(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceRemotePortAddedEventArgs), Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSession, Windows.Devices.WiFiDirect.Services.WiFiDirectServiceRemotePortAddedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRemotePortAdded(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSession).remove_RemotePortAdded(token));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface WiFiDirectServiceSessionDeferredEventArgs : Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSessionDeferredEventArgs
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer DeferredSessionInfo()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSessionDeferredEventArgs).get_DeferredSessionInfo(&_ret));
		return _ret;
	}
}

interface WiFiDirectServiceSessionRequest : Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSessionRequest, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Devices.Enumeration.DeviceInformation DeviceInformation()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSessionRequest).get_DeviceInformation(&_ret));
		return _ret;
	}
	final Windows.Devices.WiFiDirect.Services.WiFiDirectServiceProvisioningInfo ProvisioningInfo()
	{
		Windows.Devices.WiFiDirect.Services.WiFiDirectServiceProvisioningInfo _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSessionRequest).get_ProvisioningInfo(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer SessionInfo()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSessionRequest).get_SessionInfo(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface WiFiDirectServiceSessionRequestedEventArgs : Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSessionRequestedEventArgs
{
extern(Windows):
	final Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionRequest GetSessionRequest()
	{
		Windows.Devices.WiFiDirect.Services.WiFiDirectServiceSessionRequest _ret;
		Debug.OK(this.as!(Windows.Devices.WiFiDirect.Services.IWiFiDirectServiceSessionRequestedEventArgs).abi_GetSessionRequest(&_ret));
		return _ret;
	}
}

enum WiFiDirectServiceAdvertisementStatus
{
	Created = 0,
	Started = 1,
	Stopped = 2,
	Aborted = 3
}

enum WiFiDirectServiceConfigurationMethod
{
	Default = 0,
	PinDisplay = 1,
	PinEntry = 2
}

enum WiFiDirectServiceError
{
	Success = 0,
	RadioNotAvailable = 1,
	ResourceInUse = 2,
	UnsupportedHardware = 3,
	NoHardware = 4
}

enum WiFiDirectServiceIPProtocol
{
	Tcp = 6,
	Udp = 17
}

enum WiFiDirectServiceSessionErrorStatus
{
	Ok = 0,
	Disassociated = 1,
	LocalClose = 2,
	RemoteClose = 3,
	SystemFailure = 4,
	NoResponseFromRemote = 5
}

enum WiFiDirectServiceSessionStatus
{
	Closed = 0,
	Initiated = 1,
	Requested = 2,
	Open = 3
}

enum WiFiDirectServiceStatus
{
	Available = 0,
	Busy = 1,
	Custom = 2
}