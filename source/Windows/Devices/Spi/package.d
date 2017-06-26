module Windows.Devices.Spi;

import dwinrt;

@uuid("9929444a-54f2-48c6-b952-9c32fc02c669")
@WinrtFactory("Windows.Devices.Spi.SpiBusInfo")
interface ISpiBusInfo : IInspectable
{
extern(Windows):
	HRESULT get_ChipSelectLineCount(INT32* return_value);
	HRESULT get_MinClockFrequency(INT32* return_value);
	HRESULT get_MaxClockFrequency(INT32* return_value);
	HRESULT get_SupportedDataBitLengths(Windows.Foundation.Collections.IVectorView!(INT32)* return_value);
}

@uuid("5283a37f-f935-4b9f-a7a7-3a7890afa5ce")
@WinrtFactory("Windows.Devices.Spi.SpiConnectionSettings")
interface ISpiConnectionSettings : IInspectable
{
extern(Windows):
	HRESULT get_ChipSelectLine(INT32* return_value);
	HRESULT set_ChipSelectLine(INT32 value);
	HRESULT get_Mode(Windows.Devices.Spi.SpiMode* return_value);
	HRESULT set_Mode(Windows.Devices.Spi.SpiMode value);
	HRESULT get_DataBitLength(INT32* return_value);
	HRESULT set_DataBitLength(INT32 value);
	HRESULT get_ClockFrequency(INT32* return_value);
	HRESULT set_ClockFrequency(INT32 value);
	HRESULT get_SharingMode(Windows.Devices.Spi.SpiSharingMode* return_value);
	HRESULT set_SharingMode(Windows.Devices.Spi.SpiSharingMode value);
}

@uuid("ff99081e-10c4-44b7-9fea-a748b5a46f31")
@WinrtFactory("Windows.Devices.Spi.SpiConnectionSettings")
interface ISpiConnectionSettingsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(INT32 chipSelectLine, Windows.Devices.Spi.SpiConnectionSettings* return_value);
}

@uuid("a8d3c829-9895-4159-a934-8741f1ee6d27")
@WinrtFactory("Windows.Devices.Spi.SpiController")
interface ISpiController : IInspectable
{
extern(Windows):
	HRESULT abi_GetDevice(Windows.Devices.Spi.SpiConnectionSettings settings, Windows.Devices.Spi.SpiDevice* return_device);
}

@uuid("0d5229e2-138b-4e48-b964-4f2f79b9c5a2")
@WinrtFactory("Windows.Devices.Spi.SpiController")
interface ISpiControllerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Spi.SpiController)* return_operation);
	HRESULT abi_GetControllersAsync(Windows.Devices.Spi.Provider.ISpiProvider provider, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Spi.SpiController))* return_operation);
}

@uuid("05d5356d-11b6-4d39-84d5-95dfb4c9f2ce")
@WinrtFactory("Windows.Devices.Spi.SpiDevice")
interface ISpiDevice_Base : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_ConnectionSettings(Windows.Devices.Spi.SpiConnectionSettings* return_value);
	HRESULT abi_Write(UINT32 __bufferSize, ubyte* buffer);
	HRESULT abi_Read(UINT32 __bufferSize, ubyte* out_buffer);
	HRESULT abi_TransferSequential(UINT32 __writeBufferSize, ubyte* writeBuffer, UINT32 __readBufferSize, ubyte* out_readBuffer);
	HRESULT abi_TransferFullDuplex(UINT32 __writeBufferSize, ubyte* writeBuffer, UINT32 __readBufferSize, ubyte* out_readBuffer);
}
@uuid("05d5356d-11b6-4d39-84d5-95dfb4c9f2ce")
@WinrtFactory("Windows.Devices.Spi.SpiDevice")
interface ISpiDevice : ISpiDevice_Base, Windows.Foundation.IClosable {}

@uuid("a278e559-5720-4d3f-bd93-56f5ff5a5879")
interface ISpiDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
	HRESULT abi_GetDeviceSelectorFromFriendlyName(HSTRING friendlyName, HSTRING* return_value);
	HRESULT abi_GetBusInfo(HSTRING busId, Windows.Devices.Spi.SpiBusInfo* return_busInfo);
	HRESULT abi_FromIdAsync(HSTRING busId, Windows.Devices.Spi.SpiConnectionSettings settings, Windows.Foundation.IAsyncOperation!(Windows.Devices.Spi.SpiDevice)* return_operation);
}

interface SpiBusInfo : Windows.Devices.Spi.ISpiBusInfo
{
extern(Windows):
	final INT32 ChipSelectLineCount()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiBusInfo).get_ChipSelectLineCount(&_ret));
		return _ret;
	}
	final INT32 MinClockFrequency()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiBusInfo).get_MinClockFrequency(&_ret));
		return _ret;
	}
	final INT32 MaxClockFrequency()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiBusInfo).get_MaxClockFrequency(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(INT32) SupportedDataBitLengths()
	{
		Windows.Foundation.Collections.IVectorView!(INT32) _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiBusInfo).get_SupportedDataBitLengths(&_ret));
		return _ret;
	}
}

interface SpiConnectionSettings : Windows.Devices.Spi.ISpiConnectionSettings
{
extern(Windows):
	final INT32 ChipSelectLine()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiConnectionSettings).get_ChipSelectLine(&_ret));
		return _ret;
	}
	final void ChipSelectLine(INT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiConnectionSettings).set_ChipSelectLine(value));
	}
	final Windows.Devices.Spi.SpiMode Mode()
	{
		Windows.Devices.Spi.SpiMode _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiConnectionSettings).get_Mode(&_ret));
		return _ret;
	}
	final void Mode(Windows.Devices.Spi.SpiMode value)
	{
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiConnectionSettings).set_Mode(value));
	}
	final INT32 DataBitLength()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiConnectionSettings).get_DataBitLength(&_ret));
		return _ret;
	}
	final void DataBitLength(INT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiConnectionSettings).set_DataBitLength(value));
	}
	final INT32 ClockFrequency()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiConnectionSettings).get_ClockFrequency(&_ret));
		return _ret;
	}
	final void ClockFrequency(INT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiConnectionSettings).set_ClockFrequency(value));
	}
	final Windows.Devices.Spi.SpiSharingMode SharingMode()
	{
		Windows.Devices.Spi.SpiSharingMode _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiConnectionSettings).get_SharingMode(&_ret));
		return _ret;
	}
	final void SharingMode(Windows.Devices.Spi.SpiSharingMode value)
	{
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiConnectionSettings).set_SharingMode(value));
	}
}

interface SpiController : Windows.Devices.Spi.ISpiController
{
extern(Windows):
	final Windows.Devices.Spi.SpiDevice GetDevice(Windows.Devices.Spi.SpiConnectionSettings settings)
	{
		Windows.Devices.Spi.SpiDevice _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiController).abi_GetDevice(settings, &_ret));
		return _ret;
	}

	private static Windows.Devices.Spi.ISpiControllerStatics _staticInstance;
	public static Windows.Devices.Spi.ISpiControllerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Spi.ISpiControllerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Spi.SpiController) GetDefaultAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Spi.SpiController) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Spi.ISpiControllerStatics).abi_GetDefaultAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Spi.SpiController)) GetControllersAsync(Windows.Devices.Spi.Provider.ISpiProvider provider)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Spi.SpiController)) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Spi.ISpiControllerStatics).abi_GetControllersAsync(provider, &_ret));
		return _ret;
	}
}

interface SpiDevice : Windows.Devices.Spi.ISpiDevice, Windows.Foundation.IClosable
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiDevice).get_DeviceId(&_ret));
		return _ret;
	}
	final Windows.Devices.Spi.SpiConnectionSettings ConnectionSettings()
	{
		Windows.Devices.Spi.SpiConnectionSettings _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiDevice).get_ConnectionSettings(&_ret));
		return _ret;
	}
	final void Write(UINT32 __bufferSize, ubyte* buffer)
	{
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiDevice).abi_Write(__bufferSize, buffer));
	}
	final void Read(UINT32 __bufferSize, ubyte* out_buffer)
	{
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiDevice).abi_Read(__bufferSize, out_buffer));
	}
	final void TransferSequential(UINT32 __writeBufferSize, ubyte* writeBuffer, UINT32 __readBufferSize, ubyte* out_readBuffer)
	{
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiDevice).abi_TransferSequential(__writeBufferSize, writeBuffer, __readBufferSize, out_readBuffer));
	}
	final void TransferFullDuplex(UINT32 __writeBufferSize, ubyte* writeBuffer, UINT32 __readBufferSize, ubyte* out_readBuffer)
	{
		Debug.OK(this.as!(Windows.Devices.Spi.ISpiDevice).abi_TransferFullDuplex(__writeBufferSize, writeBuffer, __readBufferSize, out_readBuffer));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}

	private static Windows.Devices.Spi.ISpiDeviceStatics _staticInstance;
	public static Windows.Devices.Spi.ISpiDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Spi.ISpiDeviceStatics);
		return _staticInstance;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Spi.ISpiDeviceStatics).abi_GetDeviceSelector(&_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelectorFromFriendlyName(HSTRING friendlyName)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Spi.ISpiDeviceStatics).abi_GetDeviceSelectorFromFriendlyName(friendlyName, &_ret));
		return _ret;
	}
	static Windows.Devices.Spi.SpiBusInfo GetBusInfo(HSTRING busId)
	{
		Windows.Devices.Spi.SpiBusInfo _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Spi.ISpiDeviceStatics).abi_GetBusInfo(busId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Spi.SpiDevice) FromIdAsync(HSTRING busId, Windows.Devices.Spi.SpiConnectionSettings settings)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Spi.SpiDevice) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Spi.ISpiDeviceStatics).abi_FromIdAsync(busId, settings, &_ret));
		return _ret;
	}
}

enum SpiMode
{
	Mode0 = 0,
	Mode1 = 1,
	Mode2 = 2,
	Mode3 = 3
}

enum SpiSharingMode
{
	Exclusive = 0,
	Shared = 1
}