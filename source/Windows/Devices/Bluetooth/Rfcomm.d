module Windows.Devices.Bluetooth.Rfcomm;

import dwinrt;

@uuid("ae81ff1f-c5a1-4c40-8c28-f3efd69062f3")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService")
interface IRfcommDeviceService : IInspectable
{
extern(Windows):
	HRESULT get_ConnectionHostName(Windows.Networking.HostName* return_value);
	HRESULT get_ConnectionServiceName(HSTRING* return_value);
	HRESULT get_ServiceId(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId* return_value);
	HRESULT get_ProtectionLevel(Windows.Networking.Sockets.SocketProtectionLevel* return_value);
	HRESULT get_MaxProtectionLevel(Windows.Networking.Sockets.SocketProtectionLevel* return_value);
	HRESULT abi_GetSdpRawAttributesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMapView!(UINT32, Windows.Storage.Streams.IBuffer))* return_asyncOp);
	HRESULT abi_GetSdpRawAttributesWithCacheModeAsync(Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMapView!(UINT32, Windows.Storage.Streams.IBuffer))* return_asyncOp);
}

@uuid("536ced14-ebcd-49fe-bf9f-40efc689b20d")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService")
interface IRfcommDeviceService2_Base : IInspectable
{
extern(Windows):
	HRESULT get_Device(Windows.Devices.Bluetooth.BluetoothDevice* return_value);
}
@uuid("536ced14-ebcd-49fe-bf9f-40efc689b20d")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService")
interface IRfcommDeviceService2 : IRfcommDeviceService2_Base, Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService {}

@uuid("1c22ace6-dd44-4d23-866d-8f3486ee6490")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService")
interface IRfcommDeviceService3_Base : IInspectable
{
extern(Windows):
	HRESULT get_DeviceAccessInformation(Windows.Devices.Enumeration.DeviceAccessInformation* return_value);
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus)* return_value);
}
@uuid("1c22ace6-dd44-4d23-866d-8f3486ee6490")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService")
interface IRfcommDeviceService3 : IRfcommDeviceService3_Base, Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService2, Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService {}

@uuid("a4a149ef-626d-41ac-b253-87ac5c27e28a")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService")
interface IRfcommDeviceServiceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService)* return_asyncOp);
	HRESULT abi_GetDeviceSelector(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId serviceId, HSTRING* return_selector);
}

@uuid("aa8cb1c9-e78d-4be4-8076-0a3d87a0a05f")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService")
interface IRfcommDeviceServiceStatics2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelectorForBluetoothDevice(Windows.Devices.Bluetooth.BluetoothDevice bluetoothDevice, HSTRING* return_selector);
	HRESULT abi_GetDeviceSelectorForBluetoothDeviceWithCacheMode(Windows.Devices.Bluetooth.BluetoothDevice bluetoothDevice, Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, HSTRING* return_selector);
	HRESULT abi_GetDeviceSelectorForBluetoothDeviceAndServiceId(Windows.Devices.Bluetooth.BluetoothDevice bluetoothDevice, Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId serviceId, HSTRING* return_selector);
	HRESULT abi_GetDeviceSelectorForBluetoothDeviceAndServiceIdWithCacheMode(Windows.Devices.Bluetooth.BluetoothDevice bluetoothDevice, Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId serviceId, Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, HSTRING* return_selector);
}
@uuid("aa8cb1c9-e78d-4be4-8076-0a3d87a0a05f")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService")
interface IRfcommDeviceServiceStatics2 : IRfcommDeviceServiceStatics2_Base, Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceServiceStatics {}

@uuid("3b48388c-7ccf-488e-9625-d259a5732d55")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceServicesResult")
interface IRfcommDeviceServicesResult : IInspectable
{
extern(Windows):
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
	HRESULT get_Services(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService)* return_services);
}

@uuid("22629204-7e02-4017-8136-da1b6a1b9bbf")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId")
interface IRfcommServiceId : IInspectable
{
extern(Windows):
	HRESULT get_Uuid(GUID* return_value);
	HRESULT abi_AsShortId(UINT32* return_shortId);
	HRESULT abi_AsString(HSTRING* return_id);
}

@uuid("2a179eba-a975-46e3-b56b-08ffd783a5fe")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId")
interface IRfcommServiceIdStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromUuid(GUID uuid, Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId* return_serviceId);
	HRESULT abi_FromShortId(UINT32 shortId, Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId* return_serviceId);
	HRESULT get_SerialPort(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId* return_serviceId);
	HRESULT get_ObexObjectPush(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId* return_serviceId);
	HRESULT get_ObexFileTransfer(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId* return_serviceId);
	HRESULT get_PhoneBookAccessPce(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId* return_serviceId);
	HRESULT get_PhoneBookAccessPse(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId* return_serviceId);
	HRESULT get_GenericFileTransfer(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId* return_serviceId);
}

@uuid("eadbfdc4-b1f6-44ff-9f7c-e7a82ab86821")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommServiceProvider")
interface IRfcommServiceProvider : IInspectable
{
extern(Windows):
	HRESULT get_ServiceId(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId* return_value);
	HRESULT get_SdpRawAttributes(Windows.Foundation.Collections.IMap!(UINT32, Windows.Storage.Streams.IBuffer)* return_value);
	HRESULT abi_StartAdvertising(Windows.Networking.Sockets.StreamSocketListener listener);
	HRESULT abi_StopAdvertising();
}

@uuid("736bdfc6-3c81-4d1e-baf2-ddbb81284512")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommServiceProvider")
interface IRfcommServiceProvider2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_StartAdvertisingWithRadioDiscoverability(Windows.Networking.Sockets.StreamSocketListener listener, bool radioDiscoverable);
}
@uuid("736bdfc6-3c81-4d1e-baf2-ddbb81284512")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommServiceProvider")
interface IRfcommServiceProvider2 : IRfcommServiceProvider2_Base, Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProvider {}

@uuid("98888303-69ca-413a-84f7-4344c7292997")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommServiceProvider")
interface IRfcommServiceProviderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAsync(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId serviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceProvider)* return_asyncOp);
}

interface RfcommDeviceService : Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService, Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService2, Windows.Foundation.IClosable, Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService3
{
extern(Windows):
	final Windows.Networking.HostName ConnectionHostName()
	{
		Windows.Networking.HostName _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService)this.asInterface(uuid("ae81ff1f-c5a1-4c40-8c28-f3efd69062f3"))).get_ConnectionHostName(&_ret));
		return _ret;
	}
	final HSTRING ConnectionServiceName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService)this.asInterface(uuid("ae81ff1f-c5a1-4c40-8c28-f3efd69062f3"))).get_ConnectionServiceName(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId ServiceId()
	{
		Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService)this.asInterface(uuid("ae81ff1f-c5a1-4c40-8c28-f3efd69062f3"))).get_ServiceId(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.SocketProtectionLevel ProtectionLevel()
	{
		Windows.Networking.Sockets.SocketProtectionLevel _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService)this.asInterface(uuid("ae81ff1f-c5a1-4c40-8c28-f3efd69062f3"))).get_ProtectionLevel(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.SocketProtectionLevel MaxProtectionLevel()
	{
		Windows.Networking.Sockets.SocketProtectionLevel _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService)this.asInterface(uuid("ae81ff1f-c5a1-4c40-8c28-f3efd69062f3"))).get_MaxProtectionLevel(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMapView!(UINT32, Windows.Storage.Streams.IBuffer)) GetSdpRawAttributesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMapView!(UINT32, Windows.Storage.Streams.IBuffer)) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService)this.asInterface(uuid("ae81ff1f-c5a1-4c40-8c28-f3efd69062f3"))).abi_GetSdpRawAttributesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMapView!(UINT32, Windows.Storage.Streams.IBuffer)) GetSdpRawAttributesWithCacheModeAsync(Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMapView!(UINT32, Windows.Storage.Streams.IBuffer)) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService)this.asInterface(uuid("ae81ff1f-c5a1-4c40-8c28-f3efd69062f3"))).abi_GetSdpRawAttributesWithCacheModeAsync(cacheMode, &_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothDevice Device()
	{
		Windows.Devices.Bluetooth.BluetoothDevice _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService2)this.asInterface(uuid("536ced14-ebcd-49fe-bf9f-40efc689b20d"))).get_Device(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final Windows.Devices.Enumeration.DeviceAccessInformation DeviceAccessInformation()
	{
		Windows.Devices.Enumeration.DeviceAccessInformation _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService3)this.asInterface(uuid("1c22ace6-dd44-4d23-866d-8f3486ee6490"))).get_DeviceAccessInformation(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus) RequestAccessAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService3)this.asInterface(uuid("1c22ace6-dd44-4d23-866d-8f3486ee6490"))).abi_RequestAccessAsync(&_ret));
		return _ret;
	}

	private static Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceServiceStatics _staticInstance;
	public static Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceServiceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceServiceStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId serviceId)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(serviceId, &_ret));
		return _ret;
	}
}

interface RfcommDeviceServicesResult : Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceServicesResult
{
extern(Windows):
	final Windows.Devices.Bluetooth.BluetoothError Error()
	{
		Windows.Devices.Bluetooth.BluetoothError _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceServicesResult)this.asInterface(uuid("3b48388c-7ccf-488e-9625-d259a5732d55"))).get_Error(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService) Services()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceServicesResult)this.asInterface(uuid("3b48388c-7ccf-488e-9625-d259a5732d55"))).get_Services(&_ret));
		return _ret;
	}
}

interface RfcommServiceId : Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceId
{
extern(Windows):
	final GUID Uuid()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceId)this.asInterface(uuid("22629204-7e02-4017-8136-da1b6a1b9bbf"))).get_Uuid(&_ret));
		return _ret;
	}
	final UINT32 AsShortId()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceId)this.asInterface(uuid("22629204-7e02-4017-8136-da1b6a1b9bbf"))).abi_AsShortId(&_ret));
		return _ret;
	}
	final HSTRING AsString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceId)this.asInterface(uuid("22629204-7e02-4017-8136-da1b6a1b9bbf"))).abi_AsString(&_ret));
		return _ret;
	}

	private static Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceIdStatics _staticInstance;
	public static Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceIdStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceIdStatics);
		return _staticInstance;
	}
	static Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId FromUuid(GUID uuid)
	{
		Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId _ret;
		Debug.OK(staticInstance.abi_FromUuid(uuid, &_ret));
		return _ret;
	}
	static Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId FromShortId(UINT32 shortId)
	{
		Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId _ret;
		Debug.OK(staticInstance.abi_FromShortId(shortId, &_ret));
		return _ret;
	}
	static Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId SerialPort()
	{
		Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId _ret;
		Debug.OK(staticInstance.get_SerialPort(&_ret));
		return _ret;
	}
	static Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId ObexObjectPush()
	{
		Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId _ret;
		Debug.OK(staticInstance.get_ObexObjectPush(&_ret));
		return _ret;
	}
	static Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId ObexFileTransfer()
	{
		Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId _ret;
		Debug.OK(staticInstance.get_ObexFileTransfer(&_ret));
		return _ret;
	}
	static Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId PhoneBookAccessPce()
	{
		Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId _ret;
		Debug.OK(staticInstance.get_PhoneBookAccessPce(&_ret));
		return _ret;
	}
	static Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId PhoneBookAccessPse()
	{
		Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId _ret;
		Debug.OK(staticInstance.get_PhoneBookAccessPse(&_ret));
		return _ret;
	}
	static Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId GenericFileTransfer()
	{
		Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId _ret;
		Debug.OK(staticInstance.get_GenericFileTransfer(&_ret));
		return _ret;
	}
}

interface RfcommServiceProvider : Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProvider, Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProvider2
{
extern(Windows):
	final Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId ServiceId()
	{
		Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProvider)this.asInterface(uuid("eadbfdc4-b1f6-44ff-9f7c-e7a82ab86821"))).get_ServiceId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMap!(UINT32, Windows.Storage.Streams.IBuffer) SdpRawAttributes()
	{
		Windows.Foundation.Collections.IMap!(UINT32, Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProvider)this.asInterface(uuid("eadbfdc4-b1f6-44ff-9f7c-e7a82ab86821"))).get_SdpRawAttributes(&_ret));
		return _ret;
	}
	final void StartAdvertising(Windows.Networking.Sockets.StreamSocketListener listener)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProvider)this.asInterface(uuid("eadbfdc4-b1f6-44ff-9f7c-e7a82ab86821"))).abi_StartAdvertising(listener));
	}
	final void StopAdvertising()
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProvider)this.asInterface(uuid("eadbfdc4-b1f6-44ff-9f7c-e7a82ab86821"))).abi_StopAdvertising());
	}
	final void StartAdvertisingWithRadioDiscoverability(Windows.Networking.Sockets.StreamSocketListener listener, bool radioDiscoverable)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProvider2)this.asInterface(uuid("736bdfc6-3c81-4d1e-baf2-ddbb81284512"))).abi_StartAdvertisingWithRadioDiscoverability(listener, radioDiscoverable));
	}

	private static Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProviderStatics _staticInstance;
	public static Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProviderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProviderStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceProvider) CreateAsync(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId serviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceProvider) _ret;
		Debug.OK(staticInstance.abi_CreateAsync(serviceId, &_ret));
		return _ret;
	}
}