module Windows.Devices.WiFiDirect;

import dwinrt;

@uuid("ab511a2d-2a06-49a1-a584-61435c7905a6")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectAdvertisement")
interface IWiFiDirectAdvertisement : IInspectable
{
extern(Windows):
	HRESULT get_InformationElements(Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectInformationElement)* return_value);
	HRESULT set_InformationElements(Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectInformationElement) value);
	HRESULT get_ListenStateDiscoverability(Windows.Devices.WiFiDirect.WiFiDirectAdvertisementListenStateDiscoverability* return_value);
	HRESULT set_ListenStateDiscoverability(Windows.Devices.WiFiDirect.WiFiDirectAdvertisementListenStateDiscoverability value);
	HRESULT get_IsAutonomousGroupOwnerEnabled(bool* return_value);
	HRESULT set_IsAutonomousGroupOwnerEnabled(bool value);
	HRESULT get_LegacySettings(Windows.Devices.WiFiDirect.WiFiDirectLegacySettings* return_value);
}

@uuid("b759aa46-d816-491b-917a-b40d7dc403a2")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectAdvertisement")
interface IWiFiDirectAdvertisement2 : IInspectable
{
extern(Windows):
	HRESULT get_SupportedConfigurationMethods(Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectConfigurationMethod)* return_value);
}

@uuid("b35a2d1a-9b1f-45d9-925a-694d66df68ef")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisher")
interface IWiFiDirectAdvertisementPublisher : IInspectable
{
extern(Windows):
	HRESULT get_Advertisement(Windows.Devices.WiFiDirect.WiFiDirectAdvertisement* return_value);
	HRESULT get_Status(Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisherStatus* return_value);
	HRESULT add_StatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisher, Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisherStatusChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_StatusChanged(EventRegistrationToken token);
	HRESULT abi_Start();
	HRESULT abi_Stop();
}

@uuid("aafde53c-5481-46e6-90dd-32116518f192")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisherStatusChangedEventArgs")
interface IWiFiDirectAdvertisementPublisherStatusChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisherStatus* return_value);
	HRESULT get_Error(Windows.Devices.WiFiDirect.WiFiDirectError* return_value);
}

@uuid("699c1b0d-8d13-4ee9-b9ec-9c72f8251f7d")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectConnectionListener")
interface IWiFiDirectConnectionListener : IInspectable
{
extern(Windows):
	HRESULT add_ConnectionRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.WiFiDirectConnectionListener, Windows.Devices.WiFiDirect.WiFiDirectConnectionRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ConnectionRequested(EventRegistrationToken token);
}

@uuid("b2e55405-5702-4b16-a02c-bbcd21ef6098")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectConnectionParameters")
interface IWiFiDirectConnectionParameters : IInspectable
{
extern(Windows):
	HRESULT get_GroupOwnerIntent(INT16* return_value);
	HRESULT set_GroupOwnerIntent(INT16 value);
}

@uuid("ab3b0fbe-aa82-44b4-88c8-e3056b89801d")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectConnectionParameters")
interface IWiFiDirectConnectionParameters2 : IInspectable
{
extern(Windows):
	HRESULT get_PreferenceOrderedConfigurationMethods(Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectConfigurationMethod)* return_value);
	HRESULT get_PreferredPairingProcedure(Windows.Devices.WiFiDirect.WiFiDirectPairingProcedure* return_value);
	HRESULT set_PreferredPairingProcedure(Windows.Devices.WiFiDirect.WiFiDirectPairingProcedure value);
}

@uuid("598af493-7642-456f-b9d8-e8a9eb1f401a")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectConnectionParameters")
interface IWiFiDirectConnectionParametersStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDevicePairingKinds(Windows.Devices.WiFiDirect.WiFiDirectConfigurationMethod configurationMethod, Windows.Devices.Enumeration.DevicePairingKinds* return_result);
}

@uuid("8eb99605-914f-49c3-a614-d18dc5b19b43")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectConnectionRequest")
interface IWiFiDirectConnectionRequest_Base : IInspectable
{
extern(Windows):
	HRESULT get_DeviceInformation(Windows.Devices.Enumeration.DeviceInformation* return_value);
}
@uuid("8eb99605-914f-49c3-a614-d18dc5b19b43")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectConnectionRequest")
interface IWiFiDirectConnectionRequest : IWiFiDirectConnectionRequest_Base, Windows.Foundation.IClosable {}

@uuid("f99d20be-d38d-484f-8215-e7b65abf244c")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectConnectionRequestedEventArgs")
interface IWiFiDirectConnectionRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_GetConnectionRequest(Windows.Devices.WiFiDirect.WiFiDirectConnectionRequest* return_result);
}

@uuid("72deaaa8-72eb-4dae-8a28-8513355d2777")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectDevice")
interface IWiFiDirectDevice_Base : IInspectable
{
extern(Windows):
	HRESULT get_ConnectionStatus(Windows.Devices.WiFiDirect.WiFiDirectConnectionStatus* return_value);
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT add_ConnectionStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.WiFiDirectDevice, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_ConnectionStatusChanged(EventRegistrationToken token);
	HRESULT abi_GetConnectionEndpointPairs(Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair)* return_value);
}
@uuid("72deaaa8-72eb-4dae-8a28-8513355d2777")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectDevice")
interface IWiFiDirectDevice : IWiFiDirectDevice_Base, Windows.Foundation.IClosable {}

@uuid("e86cb57c-3aac-4851-a792-482aaf931b04")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectDevice")
interface IWiFiDirectDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_deviceSelector);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.WiFiDirectDevice)* return_asyncOp);
}

@uuid("1a953e49-b103-437e-9226-ab67971342f9")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectDevice")
interface IWiFiDirectDeviceStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelector(Windows.Devices.WiFiDirect.WiFiDirectDeviceSelectorType type, HSTRING* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Devices.WiFiDirect.WiFiDirectConnectionParameters connectionParameters, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.WiFiDirectDevice)* return_result);
}

@uuid("affb72d6-76bb-497e-ac8b-dc72838bc309")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectInformationElement")
interface IWiFiDirectInformationElement : IInspectable
{
extern(Windows):
	HRESULT get_Oui(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_Oui(Windows.Storage.Streams.IBuffer value);
	HRESULT get_OuiType(ubyte* return_value);
	HRESULT set_OuiType(ubyte value);
	HRESULT get_Value(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_Value(Windows.Storage.Streams.IBuffer value);
}

@uuid("dbd02f16-11a5-4e60-8caa-34772148378a")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectInformationElement")
interface IWiFiDirectInformationElementStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromBuffer(Windows.Storage.Streams.IBuffer buffer, Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectInformationElement)* return_result);
	HRESULT abi_CreateFromDeviceInformation(Windows.Devices.Enumeration.DeviceInformation deviceInformation, Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectInformationElement)* return_result);
}

@uuid("a64fdbba-f2fd-4567-a91b-f5c2f5321057")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectLegacySettings")
interface IWiFiDirectLegacySettings : IInspectable
{
extern(Windows):
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT set_IsEnabled(bool value);
	HRESULT get_Ssid(HSTRING* return_value);
	HRESULT set_Ssid(HSTRING value);
	HRESULT get_Passphrase(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT set_Passphrase(Windows.Security.Credentials.PasswordCredential value);
}

interface WiFiDirectAdvertisement : Windows.Devices.WiFiDirect.IWiFiDirectAdvertisement, Windows.Devices.WiFiDirect.IWiFiDirectAdvertisement2
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectInformationElement) InformationElements()
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectInformationElement) _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectAdvertisement)this.asInterface(uuid("ab511a2d-2a06-49a1-a584-61435c7905a6"))).get_InformationElements(&_ret));
		return _ret;
	}
	final void InformationElements(Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectInformationElement) value)
	{
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectAdvertisement)this.asInterface(uuid("ab511a2d-2a06-49a1-a584-61435c7905a6"))).set_InformationElements(value));
	}
	final Windows.Devices.WiFiDirect.WiFiDirectAdvertisementListenStateDiscoverability ListenStateDiscoverability()
	{
		Windows.Devices.WiFiDirect.WiFiDirectAdvertisementListenStateDiscoverability _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectAdvertisement)this.asInterface(uuid("ab511a2d-2a06-49a1-a584-61435c7905a6"))).get_ListenStateDiscoverability(&_ret));
		return _ret;
	}
	final void ListenStateDiscoverability(Windows.Devices.WiFiDirect.WiFiDirectAdvertisementListenStateDiscoverability value)
	{
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectAdvertisement)this.asInterface(uuid("ab511a2d-2a06-49a1-a584-61435c7905a6"))).set_ListenStateDiscoverability(value));
	}
	final bool IsAutonomousGroupOwnerEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectAdvertisement)this.asInterface(uuid("ab511a2d-2a06-49a1-a584-61435c7905a6"))).get_IsAutonomousGroupOwnerEnabled(&_ret));
		return _ret;
	}
	final void IsAutonomousGroupOwnerEnabled(bool value)
	{
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectAdvertisement)this.asInterface(uuid("ab511a2d-2a06-49a1-a584-61435c7905a6"))).set_IsAutonomousGroupOwnerEnabled(value));
	}
	final Windows.Devices.WiFiDirect.WiFiDirectLegacySettings LegacySettings()
	{
		Windows.Devices.WiFiDirect.WiFiDirectLegacySettings _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectAdvertisement)this.asInterface(uuid("ab511a2d-2a06-49a1-a584-61435c7905a6"))).get_LegacySettings(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectConfigurationMethod) SupportedConfigurationMethods()
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectConfigurationMethod) _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectAdvertisement2)this.asInterface(uuid("b759aa46-d816-491b-917a-b40d7dc403a2"))).get_SupportedConfigurationMethods(&_ret));
		return _ret;
	}
}

interface WiFiDirectAdvertisementPublisher : Windows.Devices.WiFiDirect.IWiFiDirectAdvertisementPublisher
{
extern(Windows):
	final Windows.Devices.WiFiDirect.WiFiDirectAdvertisement Advertisement()
	{
		Windows.Devices.WiFiDirect.WiFiDirectAdvertisement _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectAdvertisementPublisher)this.asInterface(uuid("b35a2d1a-9b1f-45d9-925a-694d66df68ef"))).get_Advertisement(&_ret));
		return _ret;
	}
	final Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisherStatus Status()
	{
		Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisherStatus _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectAdvertisementPublisher)this.asInterface(uuid("b35a2d1a-9b1f-45d9-925a-694d66df68ef"))).get_Status(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnStatusChanged(void delegate(Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisher, Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisherStatusChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectAdvertisementPublisher)this.asInterface(uuid("b35a2d1a-9b1f-45d9-925a-694d66df68ef"))).add_StatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisher, Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisherStatusChangedEventArgs), Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisher, Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisherStatusChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStatusChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectAdvertisementPublisher)this.asInterface(uuid("b35a2d1a-9b1f-45d9-925a-694d66df68ef"))).remove_StatusChanged(token));
	}
	final void Start()
	{
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectAdvertisementPublisher)this.asInterface(uuid("b35a2d1a-9b1f-45d9-925a-694d66df68ef"))).abi_Start());
	}
	final void Stop()
	{
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectAdvertisementPublisher)this.asInterface(uuid("b35a2d1a-9b1f-45d9-925a-694d66df68ef"))).abi_Stop());
	}
	static WiFiDirectAdvertisementPublisher New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(WiFiDirectAdvertisementPublisher).abi_ActivateInstance(&ret));
		return cast(WiFiDirectAdvertisementPublisher) ret;
	}
}

interface WiFiDirectAdvertisementPublisherStatusChangedEventArgs : Windows.Devices.WiFiDirect.IWiFiDirectAdvertisementPublisherStatusChangedEventArgs
{
extern(Windows):
	final Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisherStatus Status()
	{
		Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisherStatus _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectAdvertisementPublisherStatusChangedEventArgs)this.asInterface(uuid("aafde53c-5481-46e6-90dd-32116518f192"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Devices.WiFiDirect.WiFiDirectError Error()
	{
		Windows.Devices.WiFiDirect.WiFiDirectError _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectAdvertisementPublisherStatusChangedEventArgs)this.asInterface(uuid("aafde53c-5481-46e6-90dd-32116518f192"))).get_Error(&_ret));
		return _ret;
	}
}

interface WiFiDirectConnectionListener : Windows.Devices.WiFiDirect.IWiFiDirectConnectionListener
{
extern(Windows):
	final EventRegistrationToken OnConnectionRequested(void delegate(Windows.Devices.WiFiDirect.WiFiDirectConnectionListener, Windows.Devices.WiFiDirect.WiFiDirectConnectionRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectConnectionListener)this.asInterface(uuid("699c1b0d-8d13-4ee9-b9ec-9c72f8251f7d"))).add_ConnectionRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.WiFiDirectConnectionListener, Windows.Devices.WiFiDirect.WiFiDirectConnectionRequestedEventArgs), Windows.Devices.WiFiDirect.WiFiDirectConnectionListener, Windows.Devices.WiFiDirect.WiFiDirectConnectionRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeConnectionRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectConnectionListener)this.asInterface(uuid("699c1b0d-8d13-4ee9-b9ec-9c72f8251f7d"))).remove_ConnectionRequested(token));
	}
	static WiFiDirectConnectionListener New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(WiFiDirectConnectionListener).abi_ActivateInstance(&ret));
		return cast(WiFiDirectConnectionListener) ret;
	}
}

interface WiFiDirectConnectionParameters : Windows.Devices.WiFiDirect.IWiFiDirectConnectionParameters, Windows.Devices.WiFiDirect.IWiFiDirectConnectionParameters2, Windows.Devices.Enumeration.IDevicePairingSettings
{
extern(Windows):
	final INT16 GroupOwnerIntent()
	{
		INT16 _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectConnectionParameters)this.asInterface(uuid("b2e55405-5702-4b16-a02c-bbcd21ef6098"))).get_GroupOwnerIntent(&_ret));
		return _ret;
	}
	final void GroupOwnerIntent(INT16 value)
	{
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectConnectionParameters)this.asInterface(uuid("b2e55405-5702-4b16-a02c-bbcd21ef6098"))).set_GroupOwnerIntent(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectConfigurationMethod) PreferenceOrderedConfigurationMethods()
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectConfigurationMethod) _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectConnectionParameters2)this.asInterface(uuid("ab3b0fbe-aa82-44b4-88c8-e3056b89801d"))).get_PreferenceOrderedConfigurationMethods(&_ret));
		return _ret;
	}
	final Windows.Devices.WiFiDirect.WiFiDirectPairingProcedure PreferredPairingProcedure()
	{
		Windows.Devices.WiFiDirect.WiFiDirectPairingProcedure _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectConnectionParameters2)this.asInterface(uuid("ab3b0fbe-aa82-44b4-88c8-e3056b89801d"))).get_PreferredPairingProcedure(&_ret));
		return _ret;
	}
	final void PreferredPairingProcedure(Windows.Devices.WiFiDirect.WiFiDirectPairingProcedure value)
	{
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectConnectionParameters2)this.asInterface(uuid("ab3b0fbe-aa82-44b4-88c8-e3056b89801d"))).set_PreferredPairingProcedure(value));
	}

	private static Windows.Devices.WiFiDirect.IWiFiDirectConnectionParametersStatics _staticInstance;
	public static Windows.Devices.WiFiDirect.IWiFiDirectConnectionParametersStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.WiFiDirect.IWiFiDirectConnectionParametersStatics);
		return _staticInstance;
	}
	static Windows.Devices.Enumeration.DevicePairingKinds GetDevicePairingKinds(Windows.Devices.WiFiDirect.WiFiDirectConfigurationMethod configurationMethod)
	{
		Windows.Devices.Enumeration.DevicePairingKinds _ret;
		Debug.OK(staticInstance.abi_GetDevicePairingKinds(configurationMethod, &_ret));
		return _ret;
	}
	static WiFiDirectConnectionParameters New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(WiFiDirectConnectionParameters).abi_ActivateInstance(&ret));
		return cast(WiFiDirectConnectionParameters) ret;
	}
}

interface WiFiDirectConnectionRequest : Windows.Devices.WiFiDirect.IWiFiDirectConnectionRequest, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Devices.Enumeration.DeviceInformation DeviceInformation()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectConnectionRequest)this.asInterface(uuid("8eb99605-914f-49c3-a614-d18dc5b19b43"))).get_DeviceInformation(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
}

interface WiFiDirectConnectionRequestedEventArgs : Windows.Devices.WiFiDirect.IWiFiDirectConnectionRequestedEventArgs
{
extern(Windows):
	final Windows.Devices.WiFiDirect.WiFiDirectConnectionRequest GetConnectionRequest()
	{
		Windows.Devices.WiFiDirect.WiFiDirectConnectionRequest _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectConnectionRequestedEventArgs)this.asInterface(uuid("f99d20be-d38d-484f-8215-e7b65abf244c"))).abi_GetConnectionRequest(&_ret));
		return _ret;
	}
}

interface WiFiDirectDevice : Windows.Devices.WiFiDirect.IWiFiDirectDevice, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Devices.WiFiDirect.WiFiDirectConnectionStatus ConnectionStatus()
	{
		Windows.Devices.WiFiDirect.WiFiDirectConnectionStatus _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectDevice)this.asInterface(uuid("72deaaa8-72eb-4dae-8a28-8513355d2777"))).get_ConnectionStatus(&_ret));
		return _ret;
	}
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectDevice)this.asInterface(uuid("72deaaa8-72eb-4dae-8a28-8513355d2777"))).get_DeviceId(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnConnectionStatusChanged(void delegate(Windows.Devices.WiFiDirect.WiFiDirectDevice, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectDevice)this.asInterface(uuid("72deaaa8-72eb-4dae-8a28-8513355d2777"))).add_ConnectionStatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.WiFiDirectDevice, IInspectable), Windows.Devices.WiFiDirect.WiFiDirectDevice, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeConnectionStatusChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectDevice)this.asInterface(uuid("72deaaa8-72eb-4dae-8a28-8513355d2777"))).remove_ConnectionStatusChanged(token));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair) GetConnectionEndpointPairs()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair) _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectDevice)this.asInterface(uuid("72deaaa8-72eb-4dae-8a28-8513355d2777"))).abi_GetConnectionEndpointPairs(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}

	private static Windows.Devices.WiFiDirect.IWiFiDirectDeviceStatics _staticInstance;
	public static Windows.Devices.WiFiDirect.IWiFiDirectDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.WiFiDirect.IWiFiDirectDeviceStatics);
		return _staticInstance;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.WiFiDirectDevice) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.WiFiDirectDevice) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
}

interface WiFiDirectInformationElement : Windows.Devices.WiFiDirect.IWiFiDirectInformationElement
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer Oui()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectInformationElement)this.asInterface(uuid("affb72d6-76bb-497e-ac8b-dc72838bc309"))).get_Oui(&_ret));
		return _ret;
	}
	final void Oui(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectInformationElement)this.asInterface(uuid("affb72d6-76bb-497e-ac8b-dc72838bc309"))).set_Oui(value));
	}
	final ubyte OuiType()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectInformationElement)this.asInterface(uuid("affb72d6-76bb-497e-ac8b-dc72838bc309"))).get_OuiType(&_ret));
		return _ret;
	}
	final void OuiType(ubyte value)
	{
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectInformationElement)this.asInterface(uuid("affb72d6-76bb-497e-ac8b-dc72838bc309"))).set_OuiType(value));
	}
	final Windows.Storage.Streams.IBuffer Value()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectInformationElement)this.asInterface(uuid("affb72d6-76bb-497e-ac8b-dc72838bc309"))).get_Value(&_ret));
		return _ret;
	}
	final void Value(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectInformationElement)this.asInterface(uuid("affb72d6-76bb-497e-ac8b-dc72838bc309"))).set_Value(value));
	}

	private static Windows.Devices.WiFiDirect.IWiFiDirectInformationElementStatics _staticInstance;
	public static Windows.Devices.WiFiDirect.IWiFiDirectInformationElementStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.WiFiDirect.IWiFiDirectInformationElementStatics);
		return _staticInstance;
	}
	static Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectInformationElement) CreateFromBuffer(Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectInformationElement) _ret;
		Debug.OK(staticInstance.abi_CreateFromBuffer(buffer, &_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectInformationElement) CreateFromDeviceInformation(Windows.Devices.Enumeration.DeviceInformation deviceInformation)
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectInformationElement) _ret;
		Debug.OK(staticInstance.abi_CreateFromDeviceInformation(deviceInformation, &_ret));
		return _ret;
	}
	static WiFiDirectInformationElement New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(WiFiDirectInformationElement).abi_ActivateInstance(&ret));
		return cast(WiFiDirectInformationElement) ret;
	}
}

interface WiFiDirectLegacySettings : Windows.Devices.WiFiDirect.IWiFiDirectLegacySettings
{
extern(Windows):
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectLegacySettings)this.asInterface(uuid("a64fdbba-f2fd-4567-a91b-f5c2f5321057"))).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsEnabled(bool value)
	{
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectLegacySettings)this.asInterface(uuid("a64fdbba-f2fd-4567-a91b-f5c2f5321057"))).set_IsEnabled(value));
	}
	final HSTRING Ssid()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectLegacySettings)this.asInterface(uuid("a64fdbba-f2fd-4567-a91b-f5c2f5321057"))).get_Ssid(&_ret));
		return _ret;
	}
	final void Ssid(HSTRING value)
	{
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectLegacySettings)this.asInterface(uuid("a64fdbba-f2fd-4567-a91b-f5c2f5321057"))).set_Ssid(value));
	}
	final Windows.Security.Credentials.PasswordCredential Passphrase()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectLegacySettings)this.asInterface(uuid("a64fdbba-f2fd-4567-a91b-f5c2f5321057"))).get_Passphrase(&_ret));
		return _ret;
	}
	final void Passphrase(Windows.Security.Credentials.PasswordCredential value)
	{
		Debug.OK((cast(Windows.Devices.WiFiDirect.IWiFiDirectLegacySettings)this.asInterface(uuid("a64fdbba-f2fd-4567-a91b-f5c2f5321057"))).set_Passphrase(value));
	}
}

enum WiFiDirectAdvertisementListenStateDiscoverability
{
	None = 0,
	Normal = 1,
	Intensive = 2
}

enum WiFiDirectAdvertisementPublisherStatus
{
	Created = 0,
	Started = 1,
	Stopped = 2,
	Aborted = 3
}

enum WiFiDirectConfigurationMethod
{
	ProvidePin = 0,
	DisplayPin = 1,
	PushButton = 2
}

enum WiFiDirectConnectionStatus
{
	Disconnected = 0,
	Connected = 1
}

enum WiFiDirectDeviceSelectorType
{
	DeviceInterface = 0,
	AssociationEndpoint = 1
}

enum WiFiDirectError
{
	Success = 0,
	RadioNotAvailable = 1,
	ResourceInUse = 2
}

enum WiFiDirectPairingProcedure
{
	GroupOwnerNegotiation = 0,
	Invitation = 1
}