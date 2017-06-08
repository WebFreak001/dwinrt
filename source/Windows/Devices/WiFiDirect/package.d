module Windows.Devices.WiFiDirect;

import dwinrt;

@uuid("ab511a2d-2a06-49a1-a584-61435c7905a6")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectAdvertisement")
interface IWiFiDirectAdvertisement : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SupportedConfigurationMethods(Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectConfigurationMethod)* return_value);
}

@uuid("b35a2d1a-9b1f-45d9-925a-694d66df68ef")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisher")
interface IWiFiDirectAdvertisementPublisher : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Devices.WiFiDirect.WiFiDirectAdvertisementPublisherStatus* return_value);
	HRESULT get_Error(Windows.Devices.WiFiDirect.WiFiDirectError* return_value);
}

@uuid("699c1b0d-8d13-4ee9-b9ec-9c72f8251f7d")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectConnectionListener")
interface IWiFiDirectConnectionListener : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ConnectionRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.WiFiDirectConnectionListener, Windows.Devices.WiFiDirect.WiFiDirectConnectionRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ConnectionRequested(EventRegistrationToken token);
}

@uuid("b2e55405-5702-4b16-a02c-bbcd21ef6098")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectConnectionParameters")
interface IWiFiDirectConnectionParameters : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_GroupOwnerIntent(INT16* return_value);
	HRESULT set_GroupOwnerIntent(INT16 value);
}

@uuid("ab3b0fbe-aa82-44b4-88c8-e3056b89801d")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectConnectionParameters")
interface IWiFiDirectConnectionParameters2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PreferenceOrderedConfigurationMethods(Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectConfigurationMethod)* return_value);
	HRESULT get_PreferredPairingProcedure(Windows.Devices.WiFiDirect.WiFiDirectPairingProcedure* return_value);
	HRESULT set_PreferredPairingProcedure(Windows.Devices.WiFiDirect.WiFiDirectPairingProcedure value);
}

@uuid("598af493-7642-456f-b9d8-e8a9eb1f401a")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectConnectionParameters")
interface IWiFiDirectConnectionParametersStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDevicePairingKinds(Windows.Devices.WiFiDirect.WiFiDirectConfigurationMethod configurationMethod, Windows.Devices.Enumeration.DevicePairingKinds* return_result);
}

@uuid("8eb99605-914f-49c3-a614-d18dc5b19b43")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectConnectionRequest")
interface IWiFiDirectConnectionRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceInformation(Windows.Devices.Enumeration.DeviceInformation* return_value);
}

@uuid("f99d20be-d38d-484f-8215-e7b65abf244c")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectConnectionRequestedEventArgs")
interface IWiFiDirectConnectionRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetConnectionRequest(Windows.Devices.WiFiDirect.WiFiDirectConnectionRequest* return_result);
}

@uuid("72deaaa8-72eb-4dae-8a28-8513355d2777")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectDevice")
interface IWiFiDirectDevice : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ConnectionStatus(Windows.Devices.WiFiDirect.WiFiDirectConnectionStatus* return_value);
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT add_ConnectionStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFiDirect.WiFiDirectDevice, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_ConnectionStatusChanged(EventRegistrationToken token);
	HRESULT abi_GetConnectionEndpointPairs(Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair)* return_value);
}

@uuid("e86cb57c-3aac-4851-a792-482aaf931b04")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectDevice")
interface IWiFiDirectDeviceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_deviceSelector);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.WiFiDirectDevice)* return_asyncOp);
}

@uuid("1a953e49-b103-437e-9226-ab67971342f9")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectDevice")
interface IWiFiDirectDeviceStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelector(Windows.Devices.WiFiDirect.WiFiDirectDeviceSelectorType type, HSTRING* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Devices.WiFiDirect.WiFiDirectConnectionParameters connectionParameters, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFiDirect.WiFiDirectDevice)* return_result);
}

@uuid("affb72d6-76bb-497e-ac8b-dc72838bc309")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectInformationElement")
interface IWiFiDirectInformationElement : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Oui(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_Oui(Windows.Storage.Streams.IBuffer value);
	HRESULT get_OuiType(BYTE* return_value);
	HRESULT set_OuiType(BYTE value);
	HRESULT get_Value(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_Value(Windows.Storage.Streams.IBuffer value);
}

@uuid("dbd02f16-11a5-4e60-8caa-34772148378a")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectInformationElement")
interface IWiFiDirectInformationElementStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFromBuffer(Windows.Storage.Streams.IBuffer buffer, Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectInformationElement)* return_result);
	HRESULT abi_CreateFromDeviceInformation(Windows.Devices.Enumeration.DeviceInformation deviceInformation, Windows.Foundation.Collections.IVector!(Windows.Devices.WiFiDirect.WiFiDirectInformationElement)* return_result);
}

@uuid("a64fdbba-f2fd-4567-a91b-f5c2f5321057")
@WinrtFactory("Windows.Devices.WiFiDirect.WiFiDirectLegacySettings")
interface IWiFiDirectLegacySettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT set_IsEnabled(bool value);
	HRESULT get_Ssid(HSTRING* return_value);
	HRESULT set_Ssid(HSTRING value);
	HRESULT get_Passphrase(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT set_Passphrase(Windows.Security.Credentials.PasswordCredential value);
}

interface WiFiDirectAdvertisement
{
}

interface WiFiDirectAdvertisementPublisher
{
}

interface WiFiDirectAdvertisementPublisherStatusChangedEventArgs
{
}

interface WiFiDirectConnectionListener
{
}

interface WiFiDirectConnectionParameters
{
}

interface WiFiDirectConnectionRequest
{
}

interface WiFiDirectConnectionRequestedEventArgs
{
}

interface WiFiDirectDevice
{
}

interface WiFiDirectInformationElement
{
}

interface WiFiDirectLegacySettings
{
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