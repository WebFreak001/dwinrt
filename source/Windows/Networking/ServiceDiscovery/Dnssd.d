module Windows.Networking.ServiceDiscovery.Dnssd;

import dwinrt;

@uuid("3d786ad2-e606-5350-73ea-7e97f066162f")
@WinrtFactory("Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult")
interface IDnssdRegistrationResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationStatus* return_value);
	HRESULT get_IPAddress(Windows.Networking.HostName* return_value);
	HRESULT get_HasInstanceNameChanged(bool* return_value);
}

@uuid("e246db7e-98a5-4ca1-b9e4-c253d33c35ff")
@WinrtFactory("Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance")
interface IDnssdServiceInstance : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DnssdServiceInstanceName(HSTRING* return_value);
	HRESULT set_DnssdServiceInstanceName(HSTRING value);
	HRESULT get_HostName(Windows.Networking.HostName* return_value);
	HRESULT set_HostName(Windows.Networking.HostName value);
	HRESULT get_Port(UINT16* return_value);
	HRESULT set_Port(UINT16 value);
	HRESULT get_Priority(UINT16* return_value);
	HRESULT set_Priority(UINT16 value);
	HRESULT get_Weight(UINT16* return_value);
	HRESULT set_Weight(UINT16 value);
	HRESULT get_TextAttributes(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
	HRESULT abi_RegisterStreamSocketListenerAsync1(Windows.Networking.Sockets.StreamSocketListener socket, Windows.Foundation.IAsyncOperation!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult)* return_result);
	HRESULT abi_RegisterStreamSocketListenerAsync2(Windows.Networking.Sockets.StreamSocketListener socket, Windows.Networking.Connectivity.NetworkAdapter adapter, Windows.Foundation.IAsyncOperation!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult)* return_result);
	HRESULT abi_RegisterDatagramSocketAsync1(Windows.Networking.Sockets.DatagramSocket socket, Windows.Foundation.IAsyncOperation!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult)* return_result);
	HRESULT abi_RegisterDatagramSocketAsync2(Windows.Networking.Sockets.DatagramSocket socket, Windows.Networking.Connectivity.NetworkAdapter adapter, Windows.Foundation.IAsyncOperation!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult)* return_result);
}

@uuid("6cb061a1-c478-4331-9684-4af2186c0a2b")
@WinrtFactory("Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance")
interface IDnssdServiceInstanceFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING dnssdServiceInstanceName, Windows.Networking.HostName hostName, UINT16 port, Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance* return_result);
}

@uuid("cc34d9c1-db7d-4b69-983d-c6f83f205682")
@WinrtFactory("Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceWatcher")
interface IDnssdServiceWatcher : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_Added(Windows.Foundation.TypedEventHandler!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceWatcher, Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance) handler, EventRegistrationToken* return_token);
	HRESULT remove_Added(EventRegistrationToken token);
	HRESULT add_EnumerationCompleted(Windows.Foundation.TypedEventHandler!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_EnumerationCompleted(EventRegistrationToken token);
	HRESULT add_Stopped(Windows.Foundation.TypedEventHandler!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Stopped(EventRegistrationToken token);
	HRESULT get_Status(Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceWatcherStatus* return_status);
	HRESULT abi_Start();
	HRESULT abi_Stop();
}

interface DnssdRegistrationResult
{
}

interface DnssdServiceInstance
{
}

interface DnssdServiceInstanceCollection
{
}

interface DnssdServiceWatcher
{
}

enum DnssdRegistrationStatus
{
	Success = 0,
	InvalidServiceName = 1,
	ServerError = 2,
	SecurityError = 3
}

enum DnssdServiceWatcherStatus
{
	Created = 0,
	Started = 1,
	EnumerationCompleted = 2,
	Stopping = 3,
	Stopped = 4,
	Aborted = 5
}