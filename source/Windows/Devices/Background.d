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
extern(Windows):
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Background.IDeviceServicingDetails)this.asInterface(uuid("4aabee29-2344-4ac4-8527-4a8ef6905645"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Arguments()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Background.IDeviceServicingDetails)this.asInterface(uuid("4aabee29-2344-4ac4-8527-4a8ef6905645"))).get_Arguments(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.TimeSpan ExpectedDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Background.IDeviceServicingDetails)this.asInterface(uuid("4aabee29-2344-4ac4-8527-4a8ef6905645"))).get_ExpectedDuration(&_ret));
		return _ret;
	}
}

interface DeviceUseDetails : Windows.Devices.Background.IDeviceUseDetails
{
extern(Windows):
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Background.IDeviceUseDetails)this.asInterface(uuid("7d565141-557e-4154-b994-e4f7a11fb323"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Arguments()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Background.IDeviceUseDetails)this.asInterface(uuid("7d565141-557e-4154-b994-e4f7a11fb323"))).get_Arguments(&_ret));
		return hstring(_ret).d_str;
	}
}