module Windows.Devices.WiFi;

import dwinrt;

@uuid("a6c4e423-3d75-43a4-b9de-11e26b72d9b0")
@WinrtFactory("Windows.Devices.WiFi.WiFiAdapter")
interface IWiFiAdapter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NetworkAdapter(Windows.Networking.Connectivity.NetworkAdapter* return_value);
	HRESULT abi_ScanAsync(Windows.Foundation.IAsyncAction* return_value);
	HRESULT get_NetworkReport(Windows.Devices.WiFi.WiFiNetworkReport* return_value);
	HRESULT add_AvailableNetworksChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFi.WiFiAdapter*,IInspectable*) args, EventRegistrationToken* return_eventCookie);
	HRESULT remove_AvailableNetworksChanged(EventRegistrationToken eventCookie);
	HRESULT abi_ConnectAsync(Windows.Devices.WiFi.WiFiAvailableNetwork availableNetwork, Windows.Devices.WiFi.WiFiReconnectionKind reconnectionKind, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFi.WiFiConnectionResult)* return_value);
	HRESULT abi_ConnectWithPasswordCredentialAsync(Windows.Devices.WiFi.WiFiAvailableNetwork availableNetwork, Windows.Devices.WiFi.WiFiReconnectionKind reconnectionKind, Windows.Security.Credentials.PasswordCredential passwordCredential, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFi.WiFiConnectionResult)* return_value);
	HRESULT abi_ConnectWithPasswordCredentialAndSsidAsync(Windows.Devices.WiFi.WiFiAvailableNetwork availableNetwork, Windows.Devices.WiFi.WiFiReconnectionKind reconnectionKind, Windows.Security.Credentials.PasswordCredential passwordCredential, HSTRING ssid, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFi.WiFiConnectionResult)* return_value);
	HRESULT abi_Disconnect();
}

@uuid("da25fddd-d24c-43e3-aabd-c4659f730f99")
@WinrtFactory("Windows.Devices.WiFi.WiFiAdapter")
interface IWiFiAdapterStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FindAllAdaptersAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.WiFi.WiFiAdapter))* return_value);
	HRESULT abi_GetDeviceSelector(HSTRING* return_deviceSelector);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFi.WiFiAdapter)* return_asyncOp);
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFi.WiFiAccessStatus)* return_value);
}

@uuid("26e96246-183e-4704-9826-71b4a2f0f668")
@WinrtFactory("Windows.Devices.WiFi.WiFiAvailableNetwork")
interface IWiFiAvailableNetwork : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uptime(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Ssid(HSTRING* return_value);
	HRESULT get_Bssid(HSTRING* return_value);
	HRESULT get_ChannelCenterFrequencyInKilohertz(INT32* return_value);
	HRESULT get_NetworkRssiInDecibelMilliwatts(double* return_value);
	HRESULT get_SignalBars(BYTE* return_value);
	HRESULT get_NetworkKind(Windows.Devices.WiFi.WiFiNetworkKind* return_value);
	HRESULT get_PhyKind(Windows.Devices.WiFi.WiFiPhyKind* return_value);
	HRESULT get_SecuritySettings(Windows.Networking.Connectivity.NetworkSecuritySettings* return_value);
	HRESULT get_BeaconInterval(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_IsWiFiDirect(bool* return_value);
}

@uuid("143bdfd9-c37d-40be-a5c8-857bce85a931")
@WinrtFactory("Windows.Devices.WiFi.WiFiConnectionResult")
interface IWiFiConnectionResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ConnectionStatus(Windows.Devices.WiFi.WiFiConnectionStatus* return_value);
}

@uuid("9524ded2-5911-445e-8194-be4f1a704895")
@WinrtFactory("Windows.Devices.WiFi.WiFiNetworkReport")
interface IWiFiNetworkReport : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_AvailableNetworks(Windows.Foundation.Collections.IVectorView!(Windows.Devices.WiFi.WiFiAvailableNetwork)* return_value);
}

interface WiFiAdapter
{
}

interface WiFiAvailableNetwork
{
}

interface WiFiConnectionResult
{
}

interface WiFiNetworkReport
{
}

enum WiFiAccessStatus
{
	Unspecified = 0,
	Allowed = 1,
	DeniedByUser = 2,
	DeniedBySystem = 3
}

enum WiFiConnectionStatus
{
	UnspecifiedFailure = 0,
	Success = 1,
	AccessRevoked = 2,
	InvalidCredential = 3,
	NetworkNotAvailable = 4,
	Timeout = 5,
	UnsupportedAuthenticationProtocol = 6
}

enum WiFiNetworkKind
{
	Any = 0,
	Infrastructure = 1,
	Adhoc = 2
}

enum WiFiPhyKind
{
	Unknown = 0,
	Fhss = 1,
	Dsss = 2,
	IRBaseband = 3,
	Ofdm = 4,
	Hrdsss = 5,
	Erp = 6,
	HT = 7,
	Vht = 8,
	Dmg = 9
}

enum WiFiReconnectionKind
{
	Automatic = 0,
	Manual = 1
}