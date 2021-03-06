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
extern(Windows):
	final Windows.Devices.Adc.Provider.IAdcControllerProvider AdcControllerProvider()
	{
		Windows.Devices.Adc.Provider.IAdcControllerProvider _ret;
		Debug.OK((cast(Windows.Devices.ILowLevelDevicesAggregateProvider)this.asInterface(uuid("a73e561c-aac1-4ec7-a852-479f7060d01f"))).get_AdcControllerProvider(&_ret));
		return _ret;
	}
	final Windows.Devices.Pwm.Provider.IPwmControllerProvider PwmControllerProvider()
	{
		Windows.Devices.Pwm.Provider.IPwmControllerProvider _ret;
		Debug.OK((cast(Windows.Devices.ILowLevelDevicesAggregateProvider)this.asInterface(uuid("a73e561c-aac1-4ec7-a852-479f7060d01f"))).get_PwmControllerProvider(&_ret));
		return _ret;
	}
	final Windows.Devices.Gpio.Provider.IGpioControllerProvider GpioControllerProvider()
	{
		Windows.Devices.Gpio.Provider.IGpioControllerProvider _ret;
		Debug.OK((cast(Windows.Devices.ILowLevelDevicesAggregateProvider)this.asInterface(uuid("a73e561c-aac1-4ec7-a852-479f7060d01f"))).get_GpioControllerProvider(&_ret));
		return _ret;
	}
	final Windows.Devices.I2c.Provider.II2cControllerProvider I2cControllerProvider()
	{
		Windows.Devices.I2c.Provider.II2cControllerProvider _ret;
		Debug.OK((cast(Windows.Devices.ILowLevelDevicesAggregateProvider)this.asInterface(uuid("a73e561c-aac1-4ec7-a852-479f7060d01f"))).get_I2cControllerProvider(&_ret));
		return _ret;
	}
	final Windows.Devices.Spi.Provider.ISpiControllerProvider SpiControllerProvider()
	{
		Windows.Devices.Spi.Provider.ISpiControllerProvider _ret;
		Debug.OK((cast(Windows.Devices.ILowLevelDevicesAggregateProvider)this.asInterface(uuid("a73e561c-aac1-4ec7-a852-479f7060d01f"))).get_SpiControllerProvider(&_ret));
		return _ret;
	}
	static Windows.Devices.LowLevelDevicesAggregateProvider New(Windows.Devices.Adc.Provider.IAdcControllerProvider adc, Windows.Devices.Pwm.Provider.IPwmControllerProvider pwm, Windows.Devices.Gpio.Provider.IGpioControllerProvider gpio, Windows.Devices.I2c.Provider.II2cControllerProvider i2c, Windows.Devices.Spi.Provider.ISpiControllerProvider spi)
	{
		auto factory = factory!(Windows.Devices.ILowLevelDevicesAggregateProviderFactory);
		Windows.Devices.LowLevelDevicesAggregateProvider _ret;
		Debug.OK((cast(Windows.Devices.ILowLevelDevicesAggregateProviderFactory)factory.asInterface(uuid("9ac4aaf6-3473-465e-96d5-36281a2c57af"))).abi_Create(adc, pwm, gpio, i2c, spi, &_ret));
		return _ret;
	}
}

interface LowLevelDevicesController : Windows.Devices.ILowLevelDevicesController
{
	private static Windows.Devices.ILowLevelDevicesControllerStatics _staticInstance;
	public static Windows.Devices.ILowLevelDevicesControllerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.ILowLevelDevicesControllerStatics);
		return _staticInstance;
	}
	static Windows.Devices.ILowLevelDevicesAggregateProvider DefaultProvider()
	{
		Windows.Devices.ILowLevelDevicesAggregateProvider _ret;
		Debug.OK(staticInstance.get_DefaultProvider(&_ret));
		return _ret;
	}
	static void DefaultProvider(Windows.Devices.ILowLevelDevicesAggregateProvider value)
	{
		Debug.OK(staticInstance.set_DefaultProvider(value));
	}
}