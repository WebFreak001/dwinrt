module Windows.Devices;

import dwinrt;

@uuid("a73e561c-aac1-4ec7-a852-479f7060d01f")
interface ILowLevelDevicesAggregateProvider : IInspectable
{
extern(Windows):
	HRESULT get_AdcControllerProvider(Windows.Devices.Adc.Provider.IAdcControllerProvider* return_value);
	HRESULT get_PwmControllerProvider(Windows.Devices.Pwm.Provider.IPwmControllerProvider* return_value);
	HRESULT get_GpioControllerProvider(Windows.Devices.Gpio.Provider.IGpioControllerProvider* return_value);
	HRESULT get_I2cControllerProvider(Windows.Devices.I2c.Provider.II2cControllerProvider* return_value);
	HRESULT get_SpiControllerProvider(Windows.Devices.Spi.Provider.ISpiControllerProvider* return_value);
}

@uuid("9ac4aaf6-3473-465e-96d5-36281a2c57af")
@WinrtFactory("Windows.Devices.LowLevelDevicesAggregateProvider")
interface ILowLevelDevicesAggregateProviderFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Devices.Adc.Provider.IAdcControllerProvider adc, Windows.Devices.Pwm.Provider.IPwmControllerProvider pwm, Windows.Devices.Gpio.Provider.IGpioControllerProvider gpio, Windows.Devices.I2c.Provider.II2cControllerProvider i2c, Windows.Devices.Spi.Provider.ISpiControllerProvider spi, Windows.Devices.LowLevelDevicesAggregateProvider* return_value);
}

@uuid("2ec23dd4-179b-45de-9b39-3ae02527de52")
@WinrtFactory("Windows.Devices.LowLevelDevicesController")
interface ILowLevelDevicesController : IInspectable
{
}

@uuid("093e926a-fccb-4394-a697-19de637c2db3")
@WinrtFactory("Windows.Devices.LowLevelDevicesController")
interface ILowLevelDevicesControllerStatics : IInspectable
{
extern(Windows):
	HRESULT get_DefaultProvider(Windows.Devices.ILowLevelDevicesAggregateProvider* return_value);
	HRESULT set_DefaultProvider(Windows.Devices.ILowLevelDevicesAggregateProvider value);
}

interface LowLevelDevicesAggregateProvider : Windows.Devices.ILowLevelDevicesAggregateProvider
{
}

interface LowLevelDevicesController : Windows.Devices.ILowLevelDevicesController
{
}