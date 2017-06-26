module Windows.Devices.Portable;

import dwinrt;

@uuid("a88214e1-59c7-4a20-aba6-9f6707937230")
@WinrtFactory("Windows.Devices.Portable.ServiceDevice")
interface IServiceDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelector(Windows.Devices.Portable.ServiceDeviceType serviceType, HSTRING* return_selector);
	HRESULT abi_GetDeviceSelectorFromServiceId(GUID serviceId, HSTRING* return_selector);
}

@uuid("5ece44ee-1b23-4dd2-8652-bc164f003128")
@WinrtFactory("Windows.Devices.Portable.StorageDevice")
interface IStorageDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromId(HSTRING deviceId, Windows.Storage.StorageFolder* return_deviceRoot);
	HRESULT abi_GetDeviceSelector(HSTRING* return_selector);
}

interface ServiceDevice
{
	private static Windows.Devices.Portable.IServiceDeviceStatics _staticInstance;
	public static Windows.Devices.Portable.IServiceDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Portable.IServiceDeviceStatics);
		return _staticInstance;
	}
	static HSTRING GetDeviceSelector(Windows.Devices.Portable.ServiceDeviceType serviceType)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Portable.IServiceDeviceStatics).abi_GetDeviceSelector(serviceType, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelectorFromServiceId(GUID serviceId)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Portable.IServiceDeviceStatics).abi_GetDeviceSelectorFromServiceId(serviceId, &_ret));
		return _ret;
	}
}

interface StorageDevice
{
	private static Windows.Devices.Portable.IStorageDeviceStatics _staticInstance;
	public static Windows.Devices.Portable.IStorageDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Portable.IStorageDeviceStatics);
		return _staticInstance;
	}
	static Windows.Storage.StorageFolder FromId(HSTRING deviceId)
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Portable.IStorageDeviceStatics).abi_FromId(deviceId, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Portable.IStorageDeviceStatics).abi_GetDeviceSelector(&_ret));
		return _ret;
	}
}

enum ServiceDeviceType
{
	CalendarService = 0,
	ContactsService = 1,
	DeviceStatusService = 2,
	NotesService = 3,
	RingtonesService = 4,
	SmsService = 5,
	TasksService = 6
}