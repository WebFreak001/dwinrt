module Windows.Devices.I2c.Provider;

import dwinrt;

struct ProviderI2cTransferResult
{
	Windows.Devices.I2c.Provider.ProviderI2cTransferStatus Status;
	UINT32 BytesTransferred;
}

@uuid("61c2bb82-4510-4163-a87c-4e15a9558980")
interface II2cControllerProvider : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceProvider(Windows.Devices.I2c.Provider.ProviderI2cConnectionSettings settings, Windows.Devices.I2c.Provider.II2cDeviceProvider* return_device);
}

@uuid("ad342654-57e8-453e-8329-d1e447d103a9")
interface II2cDeviceProvider : IInspectable, Windows.Foundation.IClosable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT abi_Write(UINT32 __bufferSize, BYTE* buffer);
	HRESULT abi_WritePartial(UINT32 __bufferSize, BYTE* buffer, Windows.Devices.I2c.Provider.ProviderI2cTransferResult* return_result);
	HRESULT abi_Read(UINT32 __bufferSize, BYTE* out_buffer);
	HRESULT abi_ReadPartial(UINT32 __bufferSize, BYTE* out_buffer, Windows.Devices.I2c.Provider.ProviderI2cTransferResult* return_result);
	HRESULT abi_WriteRead(UINT32 __writeBufferSize, BYTE* writeBuffer, UINT32 __readBufferSize, BYTE* out_readBuffer);
	HRESULT abi_WriteReadPartial(UINT32 __writeBufferSize, BYTE* writeBuffer, UINT32 __readBufferSize, BYTE* out_readBuffer, Windows.Devices.I2c.Provider.ProviderI2cTransferResult* return_result);
}

@uuid("6f13083e-bf62-4fe2-a95a-f08999669818")
interface II2cProvider : IInspectable
{
extern(Windows):
	HRESULT abi_GetControllersAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.I2c.Provider.II2cControllerProvider))* return_operation);
}

@uuid("e9db4e34-e510-44b7-809d-f2f85b555339")
@WinrtFactory("Windows.Devices.I2c.Provider.ProviderI2cConnectionSettings")
interface IProviderI2cConnectionSettings : IInspectable
{
extern(Windows):
	HRESULT get_SlaveAddress(INT32* return_value);
	HRESULT set_SlaveAddress(INT32 value);
	HRESULT get_BusSpeed(Windows.Devices.I2c.Provider.ProviderI2cBusSpeed* return_value);
	HRESULT set_BusSpeed(Windows.Devices.I2c.Provider.ProviderI2cBusSpeed value);
	HRESULT get_SharingMode(Windows.Devices.I2c.Provider.ProviderI2cSharingMode* return_value);
	HRESULT set_SharingMode(Windows.Devices.I2c.Provider.ProviderI2cSharingMode value);
}

interface ProviderI2cConnectionSettings : Windows.Devices.I2c.Provider.IProviderI2cConnectionSettings
{
extern(Windows):
	final INT32 SlaveAddress()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.I2c.Provider.IProviderI2cConnectionSettings).get_SlaveAddress(&_ret));
		return _ret;
	}
	final void SlaveAddress(INT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.I2c.Provider.IProviderI2cConnectionSettings).set_SlaveAddress(value));
	}
	final Windows.Devices.I2c.Provider.ProviderI2cBusSpeed BusSpeed()
	{
		Windows.Devices.I2c.Provider.ProviderI2cBusSpeed _ret;
		Debug.OK(this.as!(Windows.Devices.I2c.Provider.IProviderI2cConnectionSettings).get_BusSpeed(&_ret));
		return _ret;
	}
	final void BusSpeed(Windows.Devices.I2c.Provider.ProviderI2cBusSpeed value)
	{
		Debug.OK(this.as!(Windows.Devices.I2c.Provider.IProviderI2cConnectionSettings).set_BusSpeed(value));
	}
	final Windows.Devices.I2c.Provider.ProviderI2cSharingMode SharingMode()
	{
		Windows.Devices.I2c.Provider.ProviderI2cSharingMode _ret;
		Debug.OK(this.as!(Windows.Devices.I2c.Provider.IProviderI2cConnectionSettings).get_SharingMode(&_ret));
		return _ret;
	}
	final void SharingMode(Windows.Devices.I2c.Provider.ProviderI2cSharingMode value)
	{
		Debug.OK(this.as!(Windows.Devices.I2c.Provider.IProviderI2cConnectionSettings).set_SharingMode(value));
	}
}

enum ProviderI2cBusSpeed
{
	StandardMode = 0,
	FastMode = 1
}

enum ProviderI2cSharingMode
{
	Exclusive = 0,
	Shared = 1
}

enum ProviderI2cTransferStatus
{
	FullTransfer = 0,
	PartialTransfer = 1,
	SlaveAddressNotAcknowledged = 2
}