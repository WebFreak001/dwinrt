module Windows.Devices.I2c;

import dwinrt;

struct I2cTransferResult
{
	Windows.Devices.I2c.I2cTransferStatus Status;
	UINT32 BytesTransferred;
}

@uuid("f2db1307-ab6f-4639-a767-54536dc3460f")
@WinrtFactory("Windows.Devices.I2c.I2cConnectionSettings")
interface II2cConnectionSettings : IInspectable
{
extern(Windows):
	HRESULT get_SlaveAddress(INT32* return_value);
	HRESULT set_SlaveAddress(INT32 value);
	HRESULT get_BusSpeed(Windows.Devices.I2c.I2cBusSpeed* return_value);
	HRESULT set_BusSpeed(Windows.Devices.I2c.I2cBusSpeed value);
	HRESULT get_SharingMode(Windows.Devices.I2c.I2cSharingMode* return_value);
	HRESULT set_SharingMode(Windows.Devices.I2c.I2cSharingMode value);
}

@uuid("81b586b3-9693-41b1-a243-ded4f6e66926")
@WinrtFactory("Windows.Devices.I2c.I2cConnectionSettings")
interface II2cConnectionSettingsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(INT32 slaveAddress, Windows.Devices.I2c.I2cConnectionSettings* return_value);
}

@uuid("c48ab1b2-87a0-4166-8e3e-b4b8f97cd729")
@WinrtFactory("Windows.Devices.I2c.I2cController")
interface II2cController : IInspectable
{
extern(Windows):
	HRESULT abi_GetDevice(Windows.Devices.I2c.I2cConnectionSettings settings, Windows.Devices.I2c.I2cDevice* return_device);
}

@uuid("40fc0365-5f05-4e7e-84bd-100db8e0aec5")
@WinrtFactory("Windows.Devices.I2c.I2cController")
interface II2cControllerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetControllersAsync(Windows.Devices.I2c.Provider.II2cProvider provider, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.I2c.I2cController))* return_operation);
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.I2c.I2cController)* return_operation);
}

@uuid("8636c136-b9c5-4f70-9449-cc46dc6f57eb")
@WinrtFactory("Windows.Devices.I2c.I2cDevice")
interface II2cDevice_Base : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_ConnectionSettings(Windows.Devices.I2c.I2cConnectionSettings* return_value);
	HRESULT abi_Write(UINT32 __bufferSize, ubyte* buffer);
	HRESULT abi_WritePartial(UINT32 __bufferSize, ubyte* buffer, Windows.Devices.I2c.I2cTransferResult* return_result);
	HRESULT abi_Read(UINT32 __bufferSize, ubyte* out_buffer);
	HRESULT abi_ReadPartial(UINT32 __bufferSize, ubyte* out_buffer, Windows.Devices.I2c.I2cTransferResult* return_result);
	HRESULT abi_WriteRead(UINT32 __writeBufferSize, ubyte* writeBuffer, UINT32 __readBufferSize, ubyte* out_readBuffer);
	HRESULT abi_WriteReadPartial(UINT32 __writeBufferSize, ubyte* writeBuffer, UINT32 __readBufferSize, ubyte* out_readBuffer, Windows.Devices.I2c.I2cTransferResult* return_result);
}
@uuid("8636c136-b9c5-4f70-9449-cc46dc6f57eb")
@WinrtFactory("Windows.Devices.I2c.I2cDevice")
interface II2cDevice : II2cDevice_Base, Windows.Foundation.IClosable {}

@uuid("91a33be3-7334-4512-96bc-fbae9459f5f6")
interface II2cDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
	HRESULT abi_GetDeviceSelectorFromFriendlyName(HSTRING friendlyName, HSTRING* return_value);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Devices.I2c.I2cConnectionSettings settings, Windows.Foundation.IAsyncOperation!(Windows.Devices.I2c.I2cDevice)* return_operation);
}

interface I2cConnectionSettings : Windows.Devices.I2c.II2cConnectionSettings
{
extern(Windows):
	final INT32 SlaveAddress()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.I2c.II2cConnectionSettings)this.asInterface(uuid("f2db1307-ab6f-4639-a767-54536dc3460f"))).get_SlaveAddress(&_ret));
		return _ret;
	}
	final void SlaveAddress(INT32 value)
	{
		Debug.OK((cast(Windows.Devices.I2c.II2cConnectionSettings)this.asInterface(uuid("f2db1307-ab6f-4639-a767-54536dc3460f"))).set_SlaveAddress(value));
	}
	final Windows.Devices.I2c.I2cBusSpeed BusSpeed()
	{
		Windows.Devices.I2c.I2cBusSpeed _ret;
		Debug.OK((cast(Windows.Devices.I2c.II2cConnectionSettings)this.asInterface(uuid("f2db1307-ab6f-4639-a767-54536dc3460f"))).get_BusSpeed(&_ret));
		return _ret;
	}
	final void BusSpeed(Windows.Devices.I2c.I2cBusSpeed value)
	{
		Debug.OK((cast(Windows.Devices.I2c.II2cConnectionSettings)this.asInterface(uuid("f2db1307-ab6f-4639-a767-54536dc3460f"))).set_BusSpeed(value));
	}
	final Windows.Devices.I2c.I2cSharingMode SharingMode()
	{
		Windows.Devices.I2c.I2cSharingMode _ret;
		Debug.OK((cast(Windows.Devices.I2c.II2cConnectionSettings)this.asInterface(uuid("f2db1307-ab6f-4639-a767-54536dc3460f"))).get_SharingMode(&_ret));
		return _ret;
	}
	final void SharingMode(Windows.Devices.I2c.I2cSharingMode value)
	{
		Debug.OK((cast(Windows.Devices.I2c.II2cConnectionSettings)this.asInterface(uuid("f2db1307-ab6f-4639-a767-54536dc3460f"))).set_SharingMode(value));
	}
	static Windows.Devices.I2c.I2cConnectionSettings New(INT32 slaveAddress)
	{
		auto factory = factory!(Windows.Devices.I2c.II2cConnectionSettingsFactory);
		Windows.Devices.I2c.I2cConnectionSettings _ret;
		Debug.OK((cast(Windows.Devices.I2c.II2cConnectionSettingsFactory)factory.asInterface(uuid("81b586b3-9693-41b1-a243-ded4f6e66926"))).abi_Create(slaveAddress, &_ret));
		return _ret;
	}
}

interface I2cController : Windows.Devices.I2c.II2cController
{
extern(Windows):
	final Windows.Devices.I2c.I2cDevice GetDevice(Windows.Devices.I2c.I2cConnectionSettings settings)
	{
		Windows.Devices.I2c.I2cDevice _ret;
		Debug.OK((cast(Windows.Devices.I2c.II2cController)this.asInterface(uuid("c48ab1b2-87a0-4166-8e3e-b4b8f97cd729"))).abi_GetDevice(settings, &_ret));
		return _ret;
	}

	private static Windows.Devices.I2c.II2cControllerStatics _staticInstance;
	public static Windows.Devices.I2c.II2cControllerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.I2c.II2cControllerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.I2c.I2cController)) GetControllersAsync(Windows.Devices.I2c.Provider.II2cProvider provider)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.I2c.I2cController)) _ret;
		Debug.OK(staticInstance.abi_GetControllersAsync(provider, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.I2c.I2cController) GetDefaultAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.I2c.I2cController) _ret;
		Debug.OK(staticInstance.abi_GetDefaultAsync(&_ret));
		return _ret;
	}
}

interface I2cDevice : Windows.Devices.I2c.II2cDevice, Windows.Foundation.IClosable
{
extern(Windows):
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.I2c.II2cDevice)this.asInterface(uuid("8636c136-b9c5-4f70-9449-cc46dc6f57eb"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Devices.I2c.I2cConnectionSettings ConnectionSettings()
	{
		Windows.Devices.I2c.I2cConnectionSettings _ret;
		Debug.OK((cast(Windows.Devices.I2c.II2cDevice)this.asInterface(uuid("8636c136-b9c5-4f70-9449-cc46dc6f57eb"))).get_ConnectionSettings(&_ret));
		return _ret;
	}
	final void Write(UINT32 __bufferSize, ubyte* buffer)
	{
		Debug.OK((cast(Windows.Devices.I2c.II2cDevice)this.asInterface(uuid("8636c136-b9c5-4f70-9449-cc46dc6f57eb"))).abi_Write(__bufferSize, buffer));
	}
	final Windows.Devices.I2c.I2cTransferResult WritePartial(UINT32 __bufferSize, ubyte* buffer)
	{
		Windows.Devices.I2c.I2cTransferResult _ret;
		Debug.OK((cast(Windows.Devices.I2c.II2cDevice)this.asInterface(uuid("8636c136-b9c5-4f70-9449-cc46dc6f57eb"))).abi_WritePartial(__bufferSize, buffer, &_ret));
		return _ret;
	}
	final void Read(UINT32 __bufferSize, ubyte* out_buffer)
	{
		Debug.OK((cast(Windows.Devices.I2c.II2cDevice)this.asInterface(uuid("8636c136-b9c5-4f70-9449-cc46dc6f57eb"))).abi_Read(__bufferSize, out_buffer));
	}
	final Windows.Devices.I2c.I2cTransferResult ReadPartial(UINT32 __bufferSize, ubyte* out_buffer)
	{
		Windows.Devices.I2c.I2cTransferResult _ret;
		Debug.OK((cast(Windows.Devices.I2c.II2cDevice)this.asInterface(uuid("8636c136-b9c5-4f70-9449-cc46dc6f57eb"))).abi_ReadPartial(__bufferSize, out_buffer, &_ret));
		return _ret;
	}
	final void WriteRead(UINT32 __writeBufferSize, ubyte* writeBuffer, UINT32 __readBufferSize, ubyte* out_readBuffer)
	{
		Debug.OK((cast(Windows.Devices.I2c.II2cDevice)this.asInterface(uuid("8636c136-b9c5-4f70-9449-cc46dc6f57eb"))).abi_WriteRead(__writeBufferSize, writeBuffer, __readBufferSize, out_readBuffer));
	}
	final Windows.Devices.I2c.I2cTransferResult WriteReadPartial(UINT32 __writeBufferSize, ubyte* writeBuffer, UINT32 __readBufferSize, ubyte* out_readBuffer)
	{
		Windows.Devices.I2c.I2cTransferResult _ret;
		Debug.OK((cast(Windows.Devices.I2c.II2cDevice)this.asInterface(uuid("8636c136-b9c5-4f70-9449-cc46dc6f57eb"))).abi_WriteReadPartial(__writeBufferSize, writeBuffer, __readBufferSize, out_readBuffer, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}

	private static Windows.Devices.I2c.II2cDeviceStatics _staticInstance;
	public static Windows.Devices.I2c.II2cDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.I2c.II2cDeviceStatics);
		return _staticInstance;
	}
	static wstring GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring GetDeviceSelectorFromFriendlyName(wstring friendlyName)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelectorFromFriendlyName(hstring(friendlyName).handle, &_ret));
		return hstring(_ret).d_str;
	}
	alias GetDeviceSelector = GetDeviceSelectorFromFriendlyName;
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.I2c.I2cDevice) FromIdAsync(wstring deviceId, Windows.Devices.I2c.I2cConnectionSettings settings)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.I2c.I2cDevice) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(hstring(deviceId).handle, settings, &_ret));
		return _ret;
	}
}

enum I2cBusSpeed
{
	StandardMode = 0,
	FastMode = 1
}

enum I2cSharingMode
{
	Exclusive = 0,
	Shared = 1
}

enum I2cTransferStatus
{
	FullTransfer = 0,
	PartialTransfer = 1,
	SlaveAddressNotAcknowledged = 2,
	ClockStretchTimeout = 3,
	UnknownError = 4
}