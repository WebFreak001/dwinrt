module Windows.Devices.Pwm.Provider;

import dwinrt;

@uuid("1300593b-e2e3-40a4-b7d9-48dff0377a52")
interface IPwmControllerProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PinCount(INT32* return_value);
	HRESULT get_ActualFrequency(double* return_value);
	HRESULT abi_SetDesiredFrequency(double frequency, double* return_result);
	HRESULT get_MaxFrequency(double* return_value);
	HRESULT get_MinFrequency(double* return_value);
	HRESULT abi_AcquirePin(INT32 pin);
	HRESULT abi_ReleasePin(INT32 pin);
	HRESULT abi_EnablePin(INT32 pin);
	HRESULT abi_DisablePin(INT32 pin);
	HRESULT abi_SetPulseParameters(INT32 pin, double dutyCycle, bool invertPolarity);
}

@uuid("a3301228-52f1-47b0-9349-66ba43d25902")
interface IPwmProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetControllers(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Pwm.Provider.IPwmControllerProvider)* return_result);
}