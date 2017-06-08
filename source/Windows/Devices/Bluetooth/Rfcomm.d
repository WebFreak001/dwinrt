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
interface IRfcommDeviceService2 : IInspectable
{
extern(Windows):
	HRESULT get_Device(Windows.Devices.Bluetooth.BluetoothDevice* return_value);
}

@uuid("1c22ace6-dd44-4d23-866d-8f3486ee6490")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService")
interface IRfcommDeviceService3 : IInspectable
{
extern(Windows):
	HRESULT get_DeviceAccessInformation(Windows.Devices.Enumeration.DeviceAccessInformation* return_value);
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus)* return_value);
}

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
interface IRfcommDeviceServiceStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelectorForBluetoothDevice(Windows.Devices.Bluetooth.BluetoothDevice bluetoothDevice, HSTRING* return_selector);
	HRESULT abi_GetDeviceSelectorForBluetoothDeviceWithCacheMode(Windows.Devices.Bluetooth.BluetoothDevice bluetoothDevice, Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, HSTRING* return_selector);
	HRESULT abi_GetDeviceSelectorForBluetoothDeviceAndServiceId(Windows.Devices.Bluetooth.BluetoothDevice bluetoothDevice, Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId serviceId, HSTRING* return_selector);
	HRESULT abi_GetDeviceSelectorForBluetoothDeviceAndServiceIdWithCacheMode(Windows.Devices.Bluetooth.BluetoothDevice bluetoothDevice, Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId serviceId, Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, HSTRING* return_selector);
}

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
interface IRfcommServiceProvider2 : IInspectable
{
extern(Windows):
	HRESULT abi_StartAdvertisingWithRadioDiscoverability(Windows.Networking.Sockets.StreamSocketListener listener, bool radioDiscoverable);
}

@uuid("98888303-69ca-413a-84f7-4344c7292997")
@WinrtFactory("Windows.Devices.Bluetooth.Rfcomm.RfcommServiceProvider")
interface IRfcommServiceProviderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAsync(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId serviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceProvider)* return_asyncOp);
}

interface RfcommDeviceService : Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService, Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService2, Windows.Foundation.IClosable, Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceService3
{
}

interface RfcommDeviceServicesResult : Windows.Devices.Bluetooth.Rfcomm.IRfcommDeviceServicesResult
{
}

interface RfcommServiceId : Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceId
{
}

interface RfcommServiceProvider : Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProvider, Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProvider2
{
}