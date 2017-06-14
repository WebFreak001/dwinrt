module Windows.Devices.Pwm;

import dwinrt;

@uuid("c45f5c85-d2e8-42cf-9bd6-cf5ed029e6a7")
@WinrtFactory("Windows.Devices.Pwm.PwmController")
interface IPwmController : IInspectable
{
extern(Windows):
	HRESULT get_PinCount(INT32* return_value);
	HRESULT get_ActualFrequency(double* return_value);
	HRESULT abi_SetDesiredFrequency(double desiredFrequency, double* return_result);
	HRESULT get_MinFrequency(double* return_value);
	HRESULT get_MaxFrequency(double* return_value);
	HRESULT abi_OpenPin(INT32 pinNumber, Windows.Devices.Pwm.PwmPin* return_pin);
}

@uuid("4263bda1-8946-4404-bd48-81dd124af4d9")
@WinrtFactory("Windows.Devices.Pwm.PwmController")
interface IPwmControllerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetControllersAsync(Windows.Devices.Pwm.Provider.IPwmProvider provider, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Pwm.PwmController))* return_operation);
}

@uuid("44fc5b1f-f119-4bdd-97ad-f76ef986736d")
@WinrtFactory("Windows.Devices.Pwm.PwmController")
interface IPwmControllerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Pwm.PwmController)* return_operation);
}

@uuid("b2581871-0229-4344-ae3f-9b7cd0e66b94")
@WinrtFactory("Windows.Devices.Pwm.PwmController")
interface IPwmControllerStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_result);
	HRESULT abi_GetDeviceSelectorFromFriendlyName(HSTRING friendlyName, HSTRING* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Pwm.PwmController)* return_operation);
}

@uuid("22972dc8-c6cf-4821-b7f9-c6454fb6af79")
@WinrtFactory("Windows.Devices.Pwm.PwmPin")
interface IPwmPin_Base : IInspectable
{
extern(Windows):
	HRESULT get_Controller(Windows.Devices.Pwm.PwmController* return_value);
	HRESULT abi_GetActiveDutyCyclePercentage(double* return_result);
	HRESULT abi_SetActiveDutyCyclePercentage(double dutyCyclePercentage);
	HRESULT get_Polarity(Windows.Devices.Pwm.PwmPulsePolarity* return_value);
	HRESULT set_Polarity(Windows.Devices.Pwm.PwmPulsePolarity value);
	HRESULT abi_Start();
	HRESULT abi_Stop();
	HRESULT get_IsStarted(bool* return_value);
}
interface IPwmPin : IPwmPin_Base, Windows.Foundation.IClosable {}

interface PwmController : Windows.Devices.Pwm.IPwmController
{
extern(Windows):
	final INT32 PinCount()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Pwm.IPwmController).get_PinCount(&_ret));
		return _ret;
	}
	final double ActualFrequency()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Devices.Pwm.IPwmController).get_ActualFrequency(&_ret));
		return _ret;
	}
	final double SetDesiredFrequency(double desiredFrequency)
	{
		double _ret;
		Debug.OK(this.as!(Windows.Devices.Pwm.IPwmController).abi_SetDesiredFrequency(desiredFrequency, &_ret));
		return _ret;
	}
	final double MinFrequency()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Devices.Pwm.IPwmController).get_MinFrequency(&_ret));
		return _ret;
	}
	final double MaxFrequency()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Devices.Pwm.IPwmController).get_MaxFrequency(&_ret));
		return _ret;
	}
	final Windows.Devices.Pwm.PwmPin OpenPin(INT32 pinNumber)
	{
		Windows.Devices.Pwm.PwmPin _ret;
		Debug.OK(this.as!(Windows.Devices.Pwm.IPwmController).abi_OpenPin(pinNumber, &_ret));
		return _ret;
	}
}

interface PwmPin : Windows.Devices.Pwm.IPwmPin, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Devices.Pwm.PwmController Controller()
	{
		Windows.Devices.Pwm.PwmController _ret;
		Debug.OK(this.as!(Windows.Devices.Pwm.IPwmPin).get_Controller(&_ret));
		return _ret;
	}
	final double GetActiveDutyCyclePercentage()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Devices.Pwm.IPwmPin).abi_GetActiveDutyCyclePercentage(&_ret));
		return _ret;
	}
	final void SetActiveDutyCyclePercentage(double dutyCyclePercentage)
	{
		Debug.OK(this.as!(Windows.Devices.Pwm.IPwmPin).abi_SetActiveDutyCyclePercentage(dutyCyclePercentage));
	}
	final Windows.Devices.Pwm.PwmPulsePolarity Polarity()
	{
		Windows.Devices.Pwm.PwmPulsePolarity _ret;
		Debug.OK(this.as!(Windows.Devices.Pwm.IPwmPin).get_Polarity(&_ret));
		return _ret;
	}
	final void Polarity(Windows.Devices.Pwm.PwmPulsePolarity value)
	{
		Debug.OK(this.as!(Windows.Devices.Pwm.IPwmPin).set_Polarity(value));
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Devices.Pwm.IPwmPin).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Devices.Pwm.IPwmPin).abi_Stop());
	}
	final bool IsStarted()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Pwm.IPwmPin).get_IsStarted(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

enum PwmPulsePolarity
{
	ActiveHigh = 0,
	ActiveLow = 1
}