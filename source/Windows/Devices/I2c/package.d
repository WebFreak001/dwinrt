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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(INT32 slaveAddress, Windows.Devices.I2c.I2cConnectionSettings* return_value);
}

@uuid("c48ab1b2-87a0-4166-8e3e-b4b8f97cd729")
@WinrtFactory("Windows.Devices.I2c.I2cController")
interface II2cController : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDevice(Windows.Devices.I2c.I2cConnectionSettings settings, Windows.Devices.I2c.I2cDevice* return_device);
}

@uuid("40fc0365-5f05-4e7e-84bd-100db8e0aec5")
@WinrtFactory("Windows.Devices.I2c.I2cController")
interface II2cControllerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetControllersAsync(Windows.Devices.I2c.Provider.II2cProvider provider, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.I2c.I2cController))* return_operation);
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.I2c.I2cController)* return_operation);
}

@uuid("8636c136-b9c5-4f70-9449-cc46dc6f57eb")
@WinrtFactory("Windows.Devices.I2c.I2cDevice")
interface II2cDevice : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_ConnectionSettings(Windows.Devices.I2c.I2cConnectionSettings* return_value);
	HRESULT abi_Write(UINT32 __bufferSize, BYTE* buffer);
	HRESULT abi_WritePartial(UINT32 __bufferSize, BYTE* buffer, Windows.Devices.I2c.I2cTransferResult* return_result);
	HRESULT abi_Read(UINT32 __bufferSize, BYTE* out_buffer);
	HRESULT abi_ReadPartial(UINT32 __bufferSize, BYTE* out_buffer, Windows.Devices.I2c.I2cTransferResult* return_result);
	HRESULT abi_WriteRead(UINT32 __writeBufferSize, BYTE* writeBuffer, UINT32 __readBufferSize, BYTE* out_readBuffer);
	HRESULT abi_WriteReadPartial(UINT32 __writeBufferSize, BYTE* writeBuffer, UINT32 __readBufferSize, BYTE* out_readBuffer, Windows.Devices.I2c.I2cTransferResult* return_result);
}

@uuid("91a33be3-7334-4512-96bc-fbae9459f5f6")
interface II2cDeviceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
	HRESULT abi_GetDeviceSelectorFromFriendlyName(HSTRING friendlyName, HSTRING* return_value);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Devices.I2c.I2cConnectionSettings settings, Windows.Foundation.IAsyncOperation!(Windows.Devices.I2c.I2cDevice)* return_operation);
}

interface I2cConnectionSettings : Windows.Devices.I2c.II2cConnectionSettings
{
}

interface I2cController : Windows.Devices.I2c.II2cController
{
}

interface I2cDevice : Windows.Devices.I2c.II2cDevice, Windows.Foundation.IClosable
{
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