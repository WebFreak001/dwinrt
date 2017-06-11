module Windows.Networking.ServiceDiscovery.Dnssd;

import dwinrt;

@uuid("3d786ad2-e606-5350-73ea-7e97f066162f")
@WinrtFactory("Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult")
interface IDnssdRegistrationResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationStatus* return_value);
	HRESULT get_IPAddress(Windows.Networking.HostName* return_value);
	HRESULT get_HasInstanceNameChanged(bool* return_value);
}

@uuid("e246db7e-98a5-4ca1-b9e4-c253d33c35ff")
@WinrtFactory("Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance")
interface IDnssdServiceInstance : IInspectable
{
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
extern(Windows):
	HRESULT abi_Create(HSTRING dnssdServiceInstanceName, Windows.Networking.HostName hostName, UINT16 port, Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance* return_result);
}

@uuid("cc34d9c1-db7d-4b69-983d-c6f83f205682")
@WinrtFactory("Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceWatcher")
interface IDnssdServiceWatcher : IInspectable
{
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

interface DnssdRegistrationResult : Windows.Networking.ServiceDiscovery.Dnssd.IDnssdRegistrationResult, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationStatus Status()
	{
		Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationStatus _ret;
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdRegistrationResult).get_Status(&_ret));
		return _ret;
	}
	final Windows.Networking.HostName IPAddress()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdRegistrationResult).get_IPAddress(&_ret));
		return _ret;
	}
	final bool HasInstanceNameChanged()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdRegistrationResult).get_HasInstanceNameChanged(&_ret));
		return _ret;
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IStringable).abi_ToString(&_ret));
		return _ret;
	}
}

interface DnssdServiceInstance : Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance, Windows.Foundation.IStringable
{
extern(Windows):
	final HSTRING DnssdServiceInstanceName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance).get_DnssdServiceInstanceName(&_ret));
		return _ret;
	}
	final void DnssdServiceInstanceName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance).set_DnssdServiceInstanceName(value));
	}
	final Windows.Networking.HostName HostName()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance).get_HostName(&_ret));
		return _ret;
	}
	final void HostName(Windows.Networking.HostName value)
	{
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance).set_HostName(value));
	}
	final UINT16 Port()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance).get_Port(&_ret));
		return _ret;
	}
	final void Port(UINT16 value)
	{
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance).set_Port(value));
	}
	final UINT16 Priority()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance).get_Priority(&_ret));
		return _ret;
	}
	final void Priority(UINT16 value)
	{
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance).set_Priority(value));
	}
	final UINT16 Weight()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance).get_Weight(&_ret));
		return _ret;
	}
	final void Weight(UINT16 value)
	{
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance).set_Weight(value));
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) TextAttributes()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance).get_TextAttributes(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult) RegisterStreamSocketListenerAsync1(Windows.Networking.Sockets.StreamSocketListener socket)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult) _ret;
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance).abi_RegisterStreamSocketListenerAsync1(socket, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult) RegisterStreamSocketListenerAsync2(Windows.Networking.Sockets.StreamSocketListener socket, Windows.Networking.Connectivity.NetworkAdapter adapter)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult) _ret;
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance).abi_RegisterStreamSocketListenerAsync2(socket, adapter, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult) RegisterDatagramSocketAsync1(Windows.Networking.Sockets.DatagramSocket socket)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult) _ret;
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance).abi_RegisterDatagramSocketAsync1(socket, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult) RegisterDatagramSocketAsync2(Windows.Networking.Sockets.DatagramSocket socket, Windows.Networking.Connectivity.NetworkAdapter adapter)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdRegistrationResult) _ret;
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceInstance).abi_RegisterDatagramSocketAsync2(socket, adapter, &_ret));
		return _ret;
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IStringable).abi_ToString(&_ret));
		return _ret;
	}
}

interface DnssdServiceInstanceCollection : Windows.Foundation.Collections.IVectorView!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance), Windows.Foundation.Collections.IIterable!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance)
{
extern(Windows):
	final void GetAt(uint index, Windows.Foundation.IWwwFormUrlDecoderEntry* out_item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance)).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance)).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Foundation.IWwwFormUrlDecoderEntry value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Foundation.IWwwFormUrlDecoderEntry* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceInstance)).abi_First(out_first));
	}
}

interface DnssdServiceWatcher : Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceWatcher
{
extern(Windows):
	final void removeAdded(EventRegistrationToken token)
	{
		Debug.OK(remove_Added(token));
	}
	final void removeEnumerationCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_EnumerationCompleted(token));
	}
	final void removeStopped(EventRegistrationToken token)
	{
		Debug.OK(remove_Stopped(token));
	}
	final Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceWatcherStatus Status()
	{
		Windows.Networking.ServiceDiscovery.Dnssd.DnssdServiceWatcherStatus _ret;
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceWatcher).get_Status(&_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceWatcher).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Networking.ServiceDiscovery.Dnssd.IDnssdServiceWatcher).abi_Stop());
	}
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