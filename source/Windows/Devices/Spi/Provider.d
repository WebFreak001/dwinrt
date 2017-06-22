module Windows.Devices.Spi.Provider;

import dwinrt;

@uuid("f6034550-a542-4ec0-9601-a4dd68f8697b")
@WinrtFactory("Windows.Devices.Spi.Provider.ProviderSpiConnectionSettings")
interface IProviderSpiConnectionSettings : IInspectable
{
extern(Windows):
	HRESULT get_ChipSelectLine(INT32* return_value);
	HRESULT set_ChipSelectLine(INT32 value);
	HRESULT get_Mode(Windows.Devices.Spi.Provider.ProviderSpiMode* return_value);
	HRESULT set_Mode(Windows.Devices.Spi.Provider.ProviderSpiMode value);
	HRESULT get_DataBitLength(INT32* return_value);
	HRESULT set_DataBitLength(INT32 value);
	HRESULT get_ClockFrequency(INT32* return_value);
	HRESULT set_ClockFrequency(INT32 value);
	HRESULT get_SharingMode(Windows.Devices.Spi.Provider.ProviderSpiSharingMode* return_value);
	HRESULT set_SharingMode(Windows.Devices.Spi.Provider.ProviderSpiSharingMode value);
}

@uuid("66456b5a-0c79-43e3-9f3c-e59780ac18fa")
@WinrtFactory("Windows.Devices.Spi.Provider.ProviderSpiConnectionSettings")
interface IProviderSpiConnectionSettingsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(INT32 chipSelectLine, Windows.Devices.Spi.Provider.ProviderSpiConnectionSettings* return_value);
}

@uuid("c1686504-02ce-4226-a385-4f11fb04b41b")
interface ISpiControllerProvider : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceProvider(Windows.Devices.Spi.Provider.ProviderSpiConnectionSettings settings, Windows.Devices.Spi.Provider.ISpiDeviceProvider* return_result);
}

@uuid("0d1c3443-304b-405c-b4f7-f5ab1074461e")
interface ISpiDeviceProvider_Base : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_ConnectionSettings(Windows.Devices.Spi.Provider.ProviderSpiConnectionSettings* return_value);
	HRESULT abi_Write(UINT32 __bufferSize, ubyte* buffer);
	HRESULT abi_Read(UINT32 __bufferSize, ubyte* out_buffer);
	HRESULT abi_TransferSequential(UINT32 __writeBufferSize, ubyte* writeBuffer, UINT32 __readBufferSize, ubyte* out_readBuffer);
	HRESULT abi_TransferFullDuplex(UINT32 __writeBufferSize, ubyte* writeBuffer, UINT32 __readBufferSize, ubyte* out_readBuffer);
}
@uuid("0d1c3443-304b-405c-b4f7-f5ab1074461e")
interface ISpiDeviceProvider : ISpiDeviceProvider_Base, Windows.Foundation.IClosable {}

@uuid("96b461e2-77d4-48ce-aaa0-75715a8362cf")
interface ISpiProvider : IInspectable
{
extern(Windows):
	HRESULT abi_GetControllersAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Spi.Provider.ISpiControllerProvider))* return_result);
}

interface ProviderSpiConnectionSettings : Windows.Devices.Spi.Provider.IProviderSpiConnectionSettings
{
extern(Windows):
	final INT32 ChipSelectLine()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.Provider.IProviderSpiConnectionSettings).get_ChipSelectLine(&_ret));
		return _ret;
	}
	final void ChipSelectLine(INT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.Spi.Provider.IProviderSpiConnectionSettings).set_ChipSelectLine(value));
	}
	final Windows.Devices.Spi.Provider.ProviderSpiMode Mode()
	{
		Windows.Devices.Spi.Provider.ProviderSpiMode _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.Provider.IProviderSpiConnectionSettings).get_Mode(&_ret));
		return _ret;
	}
	final void Mode(Windows.Devices.Spi.Provider.ProviderSpiMode value)
	{
		Debug.OK(this.as!(Windows.Devices.Spi.Provider.IProviderSpiConnectionSettings).set_Mode(value));
	}
	final INT32 DataBitLength()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.Provider.IProviderSpiConnectionSettings).get_DataBitLength(&_ret));
		return _ret;
	}
	final void DataBitLength(INT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.Spi.Provider.IProviderSpiConnectionSettings).set_DataBitLength(value));
	}
	final INT32 ClockFrequency()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.Provider.IProviderSpiConnectionSettings).get_ClockFrequency(&_ret));
		return _ret;
	}
	final void ClockFrequency(INT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.Spi.Provider.IProviderSpiConnectionSettings).set_ClockFrequency(value));
	}
	final Windows.Devices.Spi.Provider.ProviderSpiSharingMode SharingMode()
	{
		Windows.Devices.Spi.Provider.ProviderSpiSharingMode _ret;
		Debug.OK(this.as!(Windows.Devices.Spi.Provider.IProviderSpiConnectionSettings).get_SharingMode(&_ret));
		return _ret;
	}
	final void SharingMode(Windows.Devices.Spi.Provider.ProviderSpiSharingMode value)
	{
		Debug.OK(this.as!(Windows.Devices.Spi.Provider.IProviderSpiConnectionSettings).set_SharingMode(value));
	}
}

enum ProviderSpiMode
{
	Mode0 = 0,
	Mode1 = 1,
	Mode2 = 2,
	Mode3 = 3
}

enum ProviderSpiSharingMode
{
	Exclusive = 0,
	Shared = 1
}