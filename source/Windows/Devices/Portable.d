module Windows.Devices.Portable;

import dwinrt;

@uuid("a88214e1-59c7-4a20-aba6-9f6707937230")
@WinrtFactory("Windows.Devices.Portable.ServiceDevice")
interface IServiceDeviceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelector(Windows.Devices.Portable.ServiceDeviceType serviceType, HSTRING* return_selector);
	HRESULT abi_GetDeviceSelectorFromServiceId(GUID serviceId, HSTRING* return_selector);
}

@uuid("5ece44ee-1b23-4dd2-8652-bc164f003128")
@WinrtFactory("Windows.Devices.Portable.StorageDevice")
interface IStorageDeviceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromId(HSTRING deviceId, Windows.Storage.StorageFolder* return_deviceRoot);
	HRESULT abi_GetDeviceSelector(HSTRING* return_selector);
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