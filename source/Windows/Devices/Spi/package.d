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
interface ISpiDevice : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_ConnectionSettings(Windows.Devices.Spi.SpiConnectionSettings* return_value);
	HRESULT abi_Write(UINT32 __bufferSize, BYTE* buffer);
	HRESULT abi_Read(UINT32 __bufferSize, BYTE* out_buffer);
	HRESULT abi_TransferSequential(UINT32 __writeBufferSize, BYTE* writeBuffer, UINT32 __readBufferSize, BYTE* out_readBuffer);
	HRESULT abi_TransferFullDuplex(UINT32 __writeBufferSize, BYTE* writeBuffer, UINT32 __readBufferSize, BYTE* out_readBuffer);
}

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
}

interface SpiConnectionSettings : Windows.Devices.Spi.ISpiConnectionSettings
{
}

interface SpiController : Windows.Devices.Spi.ISpiController
{
}

interface SpiDevice : Windows.Devices.Spi.ISpiDevice, Windows.Foundation.IClosable
{
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