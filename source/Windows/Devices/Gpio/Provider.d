module Windows.Devices.Gpio.Provider;

import dwinrt;

@uuid("ad11cec7-19ea-4b21-874f-b91aed4a25db")
interface IGpioControllerProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PinCount(INT32* return_value);
	HRESULT abi_OpenPinProvider(INT32 pin, Windows.Devices.Gpio.Provider.ProviderGpioSharingMode sharingMode, Windows.Devices.Gpio.Provider.IGpioPinProvider* return_gpioPinProvider);
}

@uuid("42344cb7-6abc-40ff-9ce7-73b85301b900")
interface IGpioPinProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ValueChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Gpio.Provider.IGpioPinProvider, Windows.Devices.Gpio.Provider.GpioPinProviderValueChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ValueChanged(EventRegistrationToken token);
	HRESULT get_DebounceTimeout(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_DebounceTimeout(Windows.Foundation.TimeSpan value);
	HRESULT get_PinNumber(INT32* return_value);
	HRESULT get_SharingMode(Windows.Devices.Gpio.Provider.ProviderGpioSharingMode* return_value);
	HRESULT abi_IsDriveModeSupported(Windows.Devices.Gpio.Provider.ProviderGpioPinDriveMode driveMode, bool* return_supported);
	HRESULT abi_GetDriveMode(Windows.Devices.Gpio.Provider.ProviderGpioPinDriveMode* return_value);
	HRESULT abi_SetDriveMode(Windows.Devices.Gpio.Provider.ProviderGpioPinDriveMode value);
	HRESULT abi_Write(Windows.Devices.Gpio.Provider.ProviderGpioPinValue value);
	HRESULT abi_Read(Windows.Devices.Gpio.Provider.ProviderGpioPinValue* return_value);
}

@uuid("32a6d6f2-3d5b-44cd-8fbe-13a69f2edb24")
@WinrtFactory("Windows.Devices.Gpio.Provider.GpioPinProviderValueChangedEventArgs")
interface IGpioPinProviderValueChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Edge(Windows.Devices.Gpio.Provider.ProviderGpioPinEdge* return_value);
}

@uuid("3ecb0b59-568c-4392-b24a-8a59a902b1f1")
@WinrtFactory("Windows.Devices.Gpio.Provider.GpioPinProviderValueChangedEventArgs")
interface IGpioPinProviderValueChangedEventArgsFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Devices.Gpio.Provider.ProviderGpioPinEdge edge, Windows.Devices.Gpio.Provider.GpioPinProviderValueChangedEventArgs* return_value);
}

@uuid("44e82707-08ca-434a-afe0-d61580446f7e")
interface IGpioProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetControllers(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Gpio.Provider.IGpioControllerProvider)* return_result);
}

interface GpioPinProviderValueChangedEventArgs
{
}

enum ProviderGpioPinDriveMode
{
	Input = 0,
	Output = 1,
	InputPullUp = 2,
	InputPullDown = 3,
	OutputOpenDrain = 4,
	OutputOpenDrainPullUp = 5,
	OutputOpenSource = 6,
	OutputOpenSourcePullDown = 7
}

enum ProviderGpioPinEdge
{
	FallingEdge = 0,
	RisingEdge = 1
}

enum ProviderGpioPinValue
{
	Low = 0,
	High = 1
}

enum ProviderGpioSharingMode
{
	Exclusive = 0,
	SharedReadOnly = 1
}