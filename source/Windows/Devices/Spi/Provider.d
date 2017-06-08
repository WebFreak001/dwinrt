module Windows.Devices.Spi.Provider;

import dwinrt;

@uuid("f6034550-a542-4ec0-9601-a4dd68f8697b")
@WinrtFactory("Windows.Devices.Spi.Provider.ProviderSpiConnectionSettings")
interface IProviderSpiConnectionSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(INT32 chipSelectLine, Windows.Devices.Spi.Provider.ProviderSpiConnectionSettings* return_value);
}

@uuid("c1686504-02ce-4226-a385-4f11fb04b41b")
interface ISpiControllerProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceProvider(Windows.Devices.Spi.Provider.ProviderSpiConnectionSettings settings, Windows.Devices.Spi.Provider.ISpiDeviceProvider* return_result);
}

@uuid("0d1c3443-304b-405c-b4f7-f5ab1074461e")
interface ISpiDeviceProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_ConnectionSettings(Windows.Devices.Spi.Provider.ProviderSpiConnectionSettings* return_value);
	HRESULT abi_Write(UINT32 __bufferSize, BYTE* buffer);
	HRESULT abi_Read(UINT32 __bufferSize, BYTE* out_buffer);
	HRESULT abi_TransferSequential(UINT32 __writeBufferSize, BYTE* writeBuffer, UINT32 __readBufferSize, BYTE* out_readBuffer);
	HRESULT abi_TransferFullDuplex(UINT32 __writeBufferSize, BYTE* writeBuffer, UINT32 __readBufferSize, BYTE* out_readBuffer);
}

@uuid("96b461e2-77d4-48ce-aaa0-75715a8362cf")
interface ISpiProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetControllersAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Spi.Provider.ISpiControllerProvider))* return_result);
}

interface ProviderSpiConnectionSettings : Windows.Devices.Spi.Provider.IProviderSpiConnectionSettings
{
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