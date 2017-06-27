module Windows.Devices.WiFi;

import dwinrt;

@uuid("a6c4e423-3d75-43a4-b9de-11e26b72d9b0")
@WinrtFactory("Windows.Devices.WiFi.WiFiAdapter")
interface IWiFiAdapter : IInspectable
{
extern(Windows):
	HRESULT get_NetworkAdapter(Windows.Networking.Connectivity.NetworkAdapter* return_value);
	HRESULT abi_ScanAsync(Windows.Foundation.IAsyncAction* return_value);
	HRESULT get_NetworkReport(Windows.Devices.WiFi.WiFiNetworkReport* return_value);
	HRESULT add_AvailableNetworksChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFi.WiFiAdapter, IInspectable) args, EventRegistrationToken* return_eventCookie);
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
extern(Windows):
	HRESULT get_Uptime(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Ssid(HSTRING* return_value);
	HRESULT get_Bssid(HSTRING* return_value);
	HRESULT get_ChannelCenterFrequencyInKilohertz(INT32* return_value);
	HRESULT get_NetworkRssiInDecibelMilliwatts(double* return_value);
	HRESULT get_SignalBars(ubyte* return_value);
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
extern(Windows):
	HRESULT get_ConnectionStatus(Windows.Devices.WiFi.WiFiConnectionStatus* return_value);
}

@uuid("9524ded2-5911-445e-8194-be4f1a704895")
@WinrtFactory("Windows.Devices.WiFi.WiFiNetworkReport")
interface IWiFiNetworkReport : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_AvailableNetworks(Windows.Foundation.Collections.IVectorView!(Windows.Devices.WiFi.WiFiAvailableNetwork)* return_value);
}

interface WiFiAdapter : Windows.Devices.WiFi.IWiFiAdapter
{
extern(Windows):
	final Windows.Networking.Connectivity.NetworkAdapter NetworkAdapter()
	{
		Windows.Networking.Connectivity.NetworkAdapter _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAdapter)this.asInterface(uuid("a6c4e423-3d75-43a4-b9de-11e26b72d9b0"))).get_NetworkAdapter(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ScanAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAdapter)this.asInterface(uuid("a6c4e423-3d75-43a4-b9de-11e26b72d9b0"))).abi_ScanAsync(&_ret));
		return _ret;
	}
	final Windows.Devices.WiFi.WiFiNetworkReport NetworkReport()
	{
		Windows.Devices.WiFi.WiFiNetworkReport _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAdapter)this.asInterface(uuid("a6c4e423-3d75-43a4-b9de-11e26b72d9b0"))).get_NetworkReport(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnAvailableNetworksChanged(void delegate(Windows.Devices.WiFi.WiFiAdapter, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAdapter)this.asInterface(uuid("a6c4e423-3d75-43a4-b9de-11e26b72d9b0"))).add_AvailableNetworksChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.WiFi.WiFiAdapter, IInspectable), Windows.Devices.WiFi.WiFiAdapter, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeAvailableNetworksChanged(EventRegistrationToken eventCookie)
	{
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAdapter)this.asInterface(uuid("a6c4e423-3d75-43a4-b9de-11e26b72d9b0"))).remove_AvailableNetworksChanged(eventCookie));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFi.WiFiConnectionResult) ConnectAsync(Windows.Devices.WiFi.WiFiAvailableNetwork availableNetwork, Windows.Devices.WiFi.WiFiReconnectionKind reconnectionKind)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFi.WiFiConnectionResult) _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAdapter)this.asInterface(uuid("a6c4e423-3d75-43a4-b9de-11e26b72d9b0"))).abi_ConnectAsync(availableNetwork, reconnectionKind, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFi.WiFiConnectionResult) ConnectWithPasswordCredentialAsync(Windows.Devices.WiFi.WiFiAvailableNetwork availableNetwork, Windows.Devices.WiFi.WiFiReconnectionKind reconnectionKind, Windows.Security.Credentials.PasswordCredential passwordCredential)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFi.WiFiConnectionResult) _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAdapter)this.asInterface(uuid("a6c4e423-3d75-43a4-b9de-11e26b72d9b0"))).abi_ConnectWithPasswordCredentialAsync(availableNetwork, reconnectionKind, passwordCredential, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFi.WiFiConnectionResult) ConnectWithPasswordCredentialAndSsidAsync(Windows.Devices.WiFi.WiFiAvailableNetwork availableNetwork, Windows.Devices.WiFi.WiFiReconnectionKind reconnectionKind, Windows.Security.Credentials.PasswordCredential passwordCredential, HSTRING ssid)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFi.WiFiConnectionResult) _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAdapter)this.asInterface(uuid("a6c4e423-3d75-43a4-b9de-11e26b72d9b0"))).abi_ConnectWithPasswordCredentialAndSsidAsync(availableNetwork, reconnectionKind, passwordCredential, ssid, &_ret));
		return _ret;
	}
	final void Disconnect()
	{
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAdapter)this.asInterface(uuid("a6c4e423-3d75-43a4-b9de-11e26b72d9b0"))).abi_Disconnect());
	}

	private static Windows.Devices.WiFi.IWiFiAdapterStatics _staticInstance;
	public static Windows.Devices.WiFi.IWiFiAdapterStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.WiFi.IWiFiAdapterStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.WiFi.WiFiAdapter)) FindAllAdaptersAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.WiFi.WiFiAdapter)) _ret;
		Debug.OK(staticInstance.abi_FindAllAdaptersAsync(&_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFi.WiFiAdapter) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFi.WiFiAdapter) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFi.WiFiAccessStatus) RequestAccessAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.WiFi.WiFiAccessStatus) _ret;
		Debug.OK(staticInstance.abi_RequestAccessAsync(&_ret));
		return _ret;
	}
}

interface WiFiAvailableNetwork : Windows.Devices.WiFi.IWiFiAvailableNetwork
{
extern(Windows):
	final Windows.Foundation.TimeSpan Uptime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAvailableNetwork)this.asInterface(uuid("26e96246-183e-4704-9826-71b4a2f0f668"))).get_Uptime(&_ret));
		return _ret;
	}
	final HSTRING Ssid()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAvailableNetwork)this.asInterface(uuid("26e96246-183e-4704-9826-71b4a2f0f668"))).get_Ssid(&_ret));
		return _ret;
	}
	final HSTRING Bssid()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAvailableNetwork)this.asInterface(uuid("26e96246-183e-4704-9826-71b4a2f0f668"))).get_Bssid(&_ret));
		return _ret;
	}
	final INT32 ChannelCenterFrequencyInKilohertz()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAvailableNetwork)this.asInterface(uuid("26e96246-183e-4704-9826-71b4a2f0f668"))).get_ChannelCenterFrequencyInKilohertz(&_ret));
		return _ret;
	}
	final double NetworkRssiInDecibelMilliwatts()
	{
		double _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAvailableNetwork)this.asInterface(uuid("26e96246-183e-4704-9826-71b4a2f0f668"))).get_NetworkRssiInDecibelMilliwatts(&_ret));
		return _ret;
	}
	final ubyte SignalBars()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAvailableNetwork)this.asInterface(uuid("26e96246-183e-4704-9826-71b4a2f0f668"))).get_SignalBars(&_ret));
		return _ret;
	}
	final Windows.Devices.WiFi.WiFiNetworkKind NetworkKind()
	{
		Windows.Devices.WiFi.WiFiNetworkKind _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAvailableNetwork)this.asInterface(uuid("26e96246-183e-4704-9826-71b4a2f0f668"))).get_NetworkKind(&_ret));
		return _ret;
	}
	final Windows.Devices.WiFi.WiFiPhyKind PhyKind()
	{
		Windows.Devices.WiFi.WiFiPhyKind _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAvailableNetwork)this.asInterface(uuid("26e96246-183e-4704-9826-71b4a2f0f668"))).get_PhyKind(&_ret));
		return _ret;
	}
	final Windows.Networking.Connectivity.NetworkSecuritySettings SecuritySettings()
	{
		Windows.Networking.Connectivity.NetworkSecuritySettings _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAvailableNetwork)this.asInterface(uuid("26e96246-183e-4704-9826-71b4a2f0f668"))).get_SecuritySettings(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan BeaconInterval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAvailableNetwork)this.asInterface(uuid("26e96246-183e-4704-9826-71b4a2f0f668"))).get_BeaconInterval(&_ret));
		return _ret;
	}
	final bool IsWiFiDirect()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiAvailableNetwork)this.asInterface(uuid("26e96246-183e-4704-9826-71b4a2f0f668"))).get_IsWiFiDirect(&_ret));
		return _ret;
	}
}

interface WiFiConnectionResult : Windows.Devices.WiFi.IWiFiConnectionResult
{
extern(Windows):
	final Windows.Devices.WiFi.WiFiConnectionStatus ConnectionStatus()
	{
		Windows.Devices.WiFi.WiFiConnectionStatus _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiConnectionResult)this.asInterface(uuid("143bdfd9-c37d-40be-a5c8-857bce85a931"))).get_ConnectionStatus(&_ret));
		return _ret;
	}
}

interface WiFiNetworkReport : Windows.Devices.WiFi.IWiFiNetworkReport
{
extern(Windows):
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiNetworkReport)this.asInterface(uuid("9524ded2-5911-445e-8194-be4f1a704895"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.WiFi.WiFiAvailableNetwork) AvailableNetworks()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.WiFi.WiFiAvailableNetwork) _ret;
		Debug.OK((cast(Windows.Devices.WiFi.IWiFiNetworkReport)this.asInterface(uuid("9524ded2-5911-445e-8194-be4f1a704895"))).get_AvailableNetworks(&_ret));
		return _ret;
	}
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