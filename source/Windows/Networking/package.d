module Windows.Networking;

import dwinrt;

@uuid("33a0aa36-f8fa-4b30-b856-76517c3bd06d")
@WinrtFactory("Windows.Networking.EndpointPair")
interface IEndpointPair : IInspectable
{
extern(Windows):
	HRESULT get_LocalHostName(Windows.Networking.HostName* return_value);
	HRESULT set_LocalHostName(Windows.Networking.HostName value);
	HRESULT get_LocalServiceName(HSTRING* return_value);
	HRESULT set_LocalServiceName(HSTRING value);
	HRESULT get_RemoteHostName(Windows.Networking.HostName* return_value);
	HRESULT set_RemoteHostName(Windows.Networking.HostName value);
	HRESULT get_RemoteServiceName(HSTRING* return_value);
	HRESULT set_RemoteServiceName(HSTRING value);
}

@uuid("b609d971-64e0-442b-aa6f-cc8c8f181f78")
@WinrtFactory("Windows.Networking.EndpointPair")
interface IEndpointPairFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateEndpointPair(Windows.Networking.HostName localHostName, HSTRING localServiceName, Windows.Networking.HostName remoteHostName, HSTRING remoteServiceName, Windows.Networking.EndpointPair* return_value);
}

@uuid("bf8ecaad-ed96-49a7-9084-d416cae88dcb")
@WinrtFactory("Windows.Networking.HostName")
interface IHostName : IInspectable
{
extern(Windows):
	HRESULT get_IPInformation(Windows.Networking.Connectivity.IPInformation* return_value);
	HRESULT get_RawName(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_CanonicalName(HSTRING* return_value);
	HRESULT get_Type(Windows.Networking.HostNameType* return_value);
	HRESULT abi_IsEqual(Windows.Networking.HostName hostName, bool* return_isEqual);
}

@uuid("458c23ed-712f-4576-adf1-c20b2c643558")
@WinrtFactory("Windows.Networking.HostName")
interface IHostNameFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateHostName(HSTRING hostName, Windows.Networking.HostName* return_value);
}

@uuid("f68cd4bf-a388-4e8b-91ea-54dd6dd901c0")
@WinrtFactory("Windows.Networking.HostName")
interface IHostNameStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Compare(HSTRING value1, HSTRING value2, INT32* return_result);
}

interface EndpointPair : Windows.Networking.IEndpointPair
{
extern(Windows):
	final Windows.Networking.HostName LocalHostName()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Networking.IEndpointPair).get_LocalHostName(&_ret));
		return _ret;
	}
	final void LocalHostName(Windows.Networking.HostName value)
	{
		Debug.OK(this.as!(Windows.Networking.IEndpointPair).set_LocalHostName(value));
	}
	final HSTRING LocalServiceName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.IEndpointPair).get_LocalServiceName(&_ret));
		return _ret;
	}
	final void LocalServiceName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Networking.IEndpointPair).set_LocalServiceName(value));
	}
	final Windows.Networking.HostName RemoteHostName()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Networking.IEndpointPair).get_RemoteHostName(&_ret));
		return _ret;
	}
	final void RemoteHostName(Windows.Networking.HostName value)
	{
		Debug.OK(this.as!(Windows.Networking.IEndpointPair).set_RemoteHostName(value));
	}
	final HSTRING RemoteServiceName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.IEndpointPair).get_RemoteServiceName(&_ret));
		return _ret;
	}
	final void RemoteServiceName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Networking.IEndpointPair).set_RemoteServiceName(value));
	}
}

interface HostName : Windows.Networking.IHostName, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Networking.Connectivity.IPInformation IPInformation()
	{
		Windows.Networking.Connectivity.IPInformation _ret;
		Debug.OK(this.as!(Windows.Networking.IHostName).get_IPInformation(&_ret));
		return _ret;
	}
	final HSTRING RawName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.IHostName).get_RawName(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.IHostName).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING CanonicalName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.IHostName).get_CanonicalName(&_ret));
		return _ret;
	}
	final Windows.Networking.HostNameType Type()
	{
		Windows.Networking.HostNameType _ret;
		Debug.OK(this.as!(Windows.Networking.IHostName).get_Type(&_ret));
		return _ret;
	}
	final bool IsEqual(Windows.Networking.HostName hostName)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.IHostName).abi_IsEqual(hostName, &_ret));
		return _ret;
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IStringable).abi_ToString(&_ret));
		return _ret;
	}

	private static Windows.Networking.IHostNameStatics _staticInstance;
	public static Windows.Networking.IHostNameStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Networking.IHostNameStatics);
		return _staticInstance;
	}
	static INT32 Compare(HSTRING value1, HSTRING value2)
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Networking.IHostNameStatics).abi_Compare(value1, value2, &_ret));
		return _ret;
	}
}

enum DomainNameType
{
	Suffix = 0,
	FullyQualified = 1
}

@bitflags
enum HostNameSortOptions
{
	None = 0x0,
	OptimizeForLongConnections = 0x2
}

enum HostNameType
{
	DomainName = 0,
	Ipv4 = 1,
	Ipv6 = 2,
	Bluetooth = 3
}