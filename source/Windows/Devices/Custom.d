module Windows.Devices.Custom;

import dwinrt;

@uuid("dd30251f-c48b-43bd-bcb1-dec88f15143e")
@WinrtFactory("Windows.Devices.Custom.CustomDevice")
interface ICustomDevice : IInspectable
{
extern(Windows):
	HRESULT get_InputStream(Windows.Storage.Streams.IInputStream* return_value);
	HRESULT get_OutputStream(Windows.Storage.Streams.IOutputStream* return_value);
	HRESULT abi_SendIOControlAsync(Windows.Devices.Custom.IIOControlCode ioControlCode, Windows.Storage.Streams.IBuffer inputBuffer, Windows.Storage.Streams.IBuffer outputBuffer, Windows.Foundation.IAsyncOperation!(UINT32)* return_operation);
	HRESULT abi_TrySendIOControlAsync(Windows.Devices.Custom.IIOControlCode ioControlCode, Windows.Storage.Streams.IBuffer inputBuffer, Windows.Storage.Streams.IBuffer outputBuffer, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("c8220312-ef4c-46b1-a58e-eeb308dc8917")
@WinrtFactory("Windows.Devices.Custom.CustomDevice")
interface ICustomDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelector(GUID classGuid, HSTRING* return_value);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Devices.Custom.DeviceAccessMode desiredAccess, Windows.Devices.Custom.DeviceSharingMode sharingMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.Custom.CustomDevice)* return_operation);
}

@uuid("0e9559e7-60c8-4375-a761-7f8808066c60")
interface IIOControlCode : IInspectable
{
extern(Windows):
	HRESULT get_AccessMode(Windows.Devices.Custom.IOControlAccessMode* return_value);
	HRESULT get_BufferingMethod(Windows.Devices.Custom.IOControlBufferingMethod* return_value);
	HRESULT get_Function(UINT16* return_value);
	HRESULT get_DeviceType(UINT16* return_value);
	HRESULT get_ControlCode(UINT32* return_value);
}

@uuid("856a7cf0-4c11-44ae-afc6-b8d4a212788f")
@WinrtFactory("Windows.Devices.Custom.IOControlCode")
interface IIOControlCodeFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateIOControlCode(UINT16 deviceType, UINT16 function_, Windows.Devices.Custom.IOControlAccessMode accessMode, Windows.Devices.Custom.IOControlBufferingMethod bufferingMethod, Windows.Devices.Custom.IOControlCode* return_instance);
}

@uuid("ee5479c2-5448-45da-ad1b-24948c239094")
@WinrtFactory("Windows.Devices.Custom.KnownDeviceTypes")
interface IKnownDeviceTypesStatics : IInspectable
{
extern(Windows):
	HRESULT get_Unknown(UINT16* return_value);
}

interface CustomDevice : Windows.Devices.Custom.ICustomDevice
{
extern(Windows):
	final Windows.Storage.Streams.IInputStream InputStream()
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK((cast(Windows.Devices.Custom.ICustomDevice)this.asInterface(uuid("dd30251f-c48b-43bd-bcb1-dec88f15143e"))).get_InputStream(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream OutputStream()
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK((cast(Windows.Devices.Custom.ICustomDevice)this.asInterface(uuid("dd30251f-c48b-43bd-bcb1-dec88f15143e"))).get_OutputStream(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) SendIOControlAsync(Windows.Devices.Custom.IIOControlCode ioControlCode, Windows.Storage.Streams.IBuffer inputBuffer, Windows.Storage.Streams.IBuffer outputBuffer)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK((cast(Windows.Devices.Custom.ICustomDevice)this.asInterface(uuid("dd30251f-c48b-43bd-bcb1-dec88f15143e"))).abi_SendIOControlAsync(ioControlCode, inputBuffer, outputBuffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TrySendIOControlAsync(Windows.Devices.Custom.IIOControlCode ioControlCode, Windows.Storage.Streams.IBuffer inputBuffer, Windows.Storage.Streams.IBuffer outputBuffer)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.Custom.ICustomDevice)this.asInterface(uuid("dd30251f-c48b-43bd-bcb1-dec88f15143e"))).abi_TrySendIOControlAsync(ioControlCode, inputBuffer, outputBuffer, &_ret));
		return _ret;
	}

	private static Windows.Devices.Custom.ICustomDeviceStatics _staticInstance;
	public static Windows.Devices.Custom.ICustomDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Custom.ICustomDeviceStatics);
		return _staticInstance;
	}
	static wstring GetDeviceSelector(GUID classGuid)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(classGuid, &_ret));
		return hstring(_ret).d_str;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Custom.CustomDevice) FromIdAsync(wstring deviceId, Windows.Devices.Custom.DeviceAccessMode desiredAccess, Windows.Devices.Custom.DeviceSharingMode sharingMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Custom.CustomDevice) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(hstring(deviceId).handle, desiredAccess, sharingMode, &_ret));
		return _ret;
	}
}

interface IOControlCode : Windows.Devices.Custom.IIOControlCode
{
extern(Windows):
	final Windows.Devices.Custom.IOControlAccessMode AccessMode()
	{
		Windows.Devices.Custom.IOControlAccessMode _ret;
		Debug.OK((cast(Windows.Devices.Custom.IIOControlCode)this.asInterface(uuid("0e9559e7-60c8-4375-a761-7f8808066c60"))).get_AccessMode(&_ret));
		return _ret;
	}
	final Windows.Devices.Custom.IOControlBufferingMethod BufferingMethod()
	{
		Windows.Devices.Custom.IOControlBufferingMethod _ret;
		Debug.OK((cast(Windows.Devices.Custom.IIOControlCode)this.asInterface(uuid("0e9559e7-60c8-4375-a761-7f8808066c60"))).get_BufferingMethod(&_ret));
		return _ret;
	}
	final UINT16 Function()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.Custom.IIOControlCode)this.asInterface(uuid("0e9559e7-60c8-4375-a761-7f8808066c60"))).get_Function(&_ret));
		return _ret;
	}
	final UINT16 DeviceType()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.Custom.IIOControlCode)this.asInterface(uuid("0e9559e7-60c8-4375-a761-7f8808066c60"))).get_DeviceType(&_ret));
		return _ret;
	}
	final UINT32 ControlCode()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Custom.IIOControlCode)this.asInterface(uuid("0e9559e7-60c8-4375-a761-7f8808066c60"))).get_ControlCode(&_ret));
		return _ret;
	}
	static Windows.Devices.Custom.IOControlCode New(UINT16 deviceType, UINT16 function_, Windows.Devices.Custom.IOControlAccessMode accessMode, Windows.Devices.Custom.IOControlBufferingMethod bufferingMethod)
	{
		auto factory = factory!(Windows.Devices.Custom.IIOControlCodeFactory);
		Windows.Devices.Custom.IOControlCode _ret;
		Debug.OK((cast(Windows.Devices.Custom.IIOControlCodeFactory)factory.asInterface(uuid("856a7cf0-4c11-44ae-afc6-b8d4a212788f"))).abi_CreateIOControlCode(deviceType, function_, accessMode, bufferingMethod, &_ret));
		return _ret;
	}
}

interface KnownDeviceTypes
{
	private static Windows.Devices.Custom.IKnownDeviceTypesStatics _staticInstance;
	public static Windows.Devices.Custom.IKnownDeviceTypesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Custom.IKnownDeviceTypesStatics);
		return _staticInstance;
	}
	static UINT16 Unknown()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.get_Unknown(&_ret));
		return _ret;
	}
}

enum DeviceAccessMode
{
	Read = 0,
	Write = 1,
	ReadWrite = 2
}

enum DeviceSharingMode
{
	Shared = 0,
	Exclusive = 1
}

enum IOControlAccessMode
{
	Any = 0,
	Read = 1,
	Write = 2,
	ReadWrite = 3
}

enum IOControlBufferingMethod
{
	Buffered = 0,
	DirectInput = 1,
	DirectOutput = 2,
	Neither = 3
}