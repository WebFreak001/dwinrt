module Windows.Devices.Gpio;

import dwinrt;

struct GpioChangeCount
{
	UINT64 Count;
	Windows.Foundation.TimeSpan RelativeTime;
}

struct GpioChangeRecord
{
	Windows.Foundation.TimeSpan RelativeTime;
	Windows.Devices.Gpio.GpioPinEdge Edge;
}

@uuid("cb5ec0de-6801-43ff-803d-4576628a8b26")
@WinrtFactory("Windows.Devices.Gpio.GpioChangeCounter")
interface IGpioChangeCounter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_Polarity(Windows.Devices.Gpio.GpioChangePolarity value);
	HRESULT get_Polarity(Windows.Devices.Gpio.GpioChangePolarity* return_value);
	HRESULT get_IsStarted(bool* return_value);
	HRESULT abi_Start();
	HRESULT abi_Stop();
	HRESULT abi_Read(Windows.Devices.Gpio.GpioChangeCount* return_value);
	HRESULT abi_Reset(Windows.Devices.Gpio.GpioChangeCount* return_value);
}

@uuid("147d94b6-0a9e-410c-b4fa-f89f4052084d")
@WinrtFactory("Windows.Devices.Gpio.GpioChangeCounter")
interface IGpioChangeCounterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Devices.Gpio.GpioPin pin, Windows.Devices.Gpio.GpioChangeCounter* return_value);
}

@uuid("0abc885f-e031-48e8-8590-70de78363c6d")
@WinrtFactory("Windows.Devices.Gpio.GpioChangeReader")
interface IGpioChangeReader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Capacity(INT32* return_value);
	HRESULT get_Length(INT32* return_value);
	HRESULT get_IsEmpty(bool* return_value);
	HRESULT get_IsOverflowed(bool* return_value);
	HRESULT set_Polarity(Windows.Devices.Gpio.GpioChangePolarity value);
	HRESULT get_Polarity(Windows.Devices.Gpio.GpioChangePolarity* return_value);
	HRESULT get_IsStarted(bool* return_value);
	HRESULT abi_Start();
	HRESULT abi_Stop();
	HRESULT abi_Clear();
	HRESULT abi_GetNextItem(Windows.Devices.Gpio.GpioChangeRecord* return_value);
	HRESULT abi_PeekNextItem(Windows.Devices.Gpio.GpioChangeRecord* return_value);
	HRESULT abi_GetAllItems(Windows.Foundation.Collections.IVector!(Windows.Devices.Gpio.GpioChangeRecord)* return_value);
	HRESULT abi_WaitForItemsAsync(INT32 count, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("a9598ef3-390e-441a-9d1c-e8de0b2df0df")
@WinrtFactory("Windows.Devices.Gpio.GpioChangeReader")
interface IGpioChangeReaderFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Devices.Gpio.GpioPin pin, Windows.Devices.Gpio.GpioChangeReader* return_value);
	HRESULT abi_CreateWithCapacity(Windows.Devices.Gpio.GpioPin pin, INT32 minCapacity, Windows.Devices.Gpio.GpioChangeReader* return_value);
}

@uuid("284012e3-7461-469c-a8bc-61d69d08a53c")
@WinrtFactory("Windows.Devices.Gpio.GpioController")
interface IGpioController : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PinCount(INT32* return_value);
	HRESULT abi_OpenPin(INT32 pinNumber, Windows.Devices.Gpio.GpioPin* return_pin);
	HRESULT abi_OpenPinWithSharingMode(INT32 pinNumber, Windows.Devices.Gpio.GpioSharingMode sharingMode, Windows.Devices.Gpio.GpioPin* return_pin);
	HRESULT abi_TryOpenPin(INT32 pinNumber, Windows.Devices.Gpio.GpioSharingMode sharingMode, Windows.Devices.Gpio.GpioPin* out_pin, Windows.Devices.Gpio.GpioOpenStatus* out_openStatus, bool* return_succeeded);
}

@uuid("2ed6f42e-7af7-4116-9533-c43d99a1fb64")
@WinrtFactory("Windows.Devices.Gpio.GpioController")
interface IGpioControllerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefault(Windows.Devices.Gpio.GpioController* return_value);
}

@uuid("912b7d20-6ca4-4106-a373-fffd346b0e5b")
@WinrtFactory("Windows.Devices.Gpio.GpioController")
interface IGpioControllerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetControllersAsync(Windows.Devices.Gpio.Provider.IGpioProvider provider, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Gpio.GpioController))* return_operation);
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Gpio.GpioController)* return_operation);
}

@uuid("11d9b087-afae-4790-9ee9-e0eac942d201")
@WinrtFactory("Windows.Devices.Gpio.GpioPin")
interface IGpioPin : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ValueChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Gpio.GpioPin, Windows.Devices.Gpio.GpioPinValueChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ValueChanged(EventRegistrationToken token);
	HRESULT get_DebounceTimeout(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_DebounceTimeout(Windows.Foundation.TimeSpan value);
	HRESULT get_PinNumber(INT32* return_value);
	HRESULT get_SharingMode(Windows.Devices.Gpio.GpioSharingMode* return_value);
	HRESULT abi_IsDriveModeSupported(Windows.Devices.Gpio.GpioPinDriveMode driveMode, bool* return_supported);
	HRESULT abi_GetDriveMode(Windows.Devices.Gpio.GpioPinDriveMode* return_value);
	HRESULT abi_SetDriveMode(Windows.Devices.Gpio.GpioPinDriveMode value);
	HRESULT abi_Write(Windows.Devices.Gpio.GpioPinValue value);
	HRESULT abi_Read(Windows.Devices.Gpio.GpioPinValue* return_value);
}

@uuid("3137aae1-703d-4059-bd24-b5b25dffb84e")
@WinrtFactory("Windows.Devices.Gpio.GpioPinValueChangedEventArgs")
interface IGpioPinValueChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Edge(Windows.Devices.Gpio.GpioPinEdge* return_value);
}

interface GpioChangeCounter
{
}

interface GpioChangeReader
{
}

interface GpioController
{
}

interface GpioPin
{
}

interface GpioPinValueChangedEventArgs
{
}

enum GpioChangePolarity
{
	Falling = 0,
	Rising = 1,
	Both = 2
}

enum GpioOpenStatus
{
	PinOpened = 0,
	PinUnavailable = 1,
	SharingViolation = 2,
	MuxingConflict = 3,
	UnknownError = 4
}

enum GpioPinDriveMode
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

enum GpioPinEdge
{
	FallingEdge = 0,
	RisingEdge = 1
}

enum GpioPinValue
{
	Low = 0,
	High = 1
}

enum GpioSharingMode
{
	Exclusive = 0,
	SharedReadOnly = 1
}