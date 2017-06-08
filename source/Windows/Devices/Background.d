module Windows.Devices.Background;

import dwinrt;

@uuid("4aabee29-2344-4ac4-8527-4a8ef6905645")
@WinrtFactory("Windows.Devices.Background.DeviceServicingDetails")
interface IDeviceServicingDetails : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Arguments(HSTRING* return_value);
	HRESULT get_ExpectedDuration(Windows.Foundation.TimeSpan* return_value);
}

@uuid("7d565141-557e-4154-b994-e4f7a11fb323")
@WinrtFactory("Windows.Devices.Background.DeviceUseDetails")
interface IDeviceUseDetails : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Arguments(HSTRING* return_value);
}

interface DeviceServicingDetails : Windows.Devices.Background.IDeviceServicingDetails
{
}

interface DeviceUseDetails : Windows.Devices.Background.IDeviceUseDetails
{
}