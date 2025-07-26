module Windows.Devices.Gpio;

import dwinrt;

struct GpioChangeCount
{
	ulong Count;
	Windows.Foundation.TimeSpan RelativeTime;
}

struct GpioChangeRecord
{
	Windows.Foundation.TimeSpan RelativeTime;
	Windows.Devices.Gpio.GpioPinEdge Edge;
}

@uuid("cb5ec0de-6801-43ff-803d-4576628a8b26")
@WinrtFactory("Windows.Devices.Gpio.GpioChangeCounter")
interface IGpioChangeCounter_Base : IInspectable
{
extern(Windows):
	HRESULT set_Polarity(Windows.Devices.Gpio.GpioChangePolarity value);
	HRESULT get_Polarity(Windows.Devices.Gpio.GpioChangePolarity* return_value);
	HRESULT get_IsStarted(bool* return_value);
	HRESULT abi_Start();
	HRESULT abi_Stop();
	HRESULT abi_Read(Windows.Devices.Gpio.GpioChangeCount* return_value);
	HRESULT abi_Reset(Windows.Devices.Gpio.GpioChangeCount* return_value);
}
@uuid("cb5ec0de-6801-43ff-803d-4576628a8b26")
@WinrtFactory("Windows.Devices.Gpio.GpioChangeCounter")
interface IGpioChangeCounter : IGpioChangeCounter_Base, Windows.Foundation.IClosable {}

@uuid("147d94b6-0a9e-410c-b4fa-f89f4052084d")
@WinrtFactory("Windows.Devices.Gpio.GpioChangeCounter")
interface IGpioChangeCounterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Devices.Gpio.GpioPin pin, Windows.Devices.Gpio.GpioChangeCounter* return_value);
}

@uuid("0abc885f-e031-48e8-8590-70de78363c6d")
@WinrtFactory("Windows.Devices.Gpio.GpioChangeReader")
interface IGpioChangeReader_Base : IInspectable
{
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
@uuid("0abc885f-e031-48e8-8590-70de78363c6d")
@WinrtFactory("Windows.Devices.Gpio.GpioChangeReader")
interface IGpioChangeReader : IGpioChangeReader_Base, Windows.Foundation.IClosable {}

@uuid("a9598ef3-390e-441a-9d1c-e8de0b2df0df")
@WinrtFactory("Windows.Devices.Gpio.GpioChangeReader")
interface IGpioChangeReaderFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Devices.Gpio.GpioPin pin, Windows.Devices.Gpio.GpioChangeReader* return_value);
	HRESULT abi_CreateWithCapacity(Windows.Devices.Gpio.GpioPin pin, INT32 minCapacity, Windows.Devices.Gpio.GpioChangeReader* return_value);
}

@uuid("284012e3-7461-469c-a8bc-61d69d08a53c")
@WinrtFactory("Windows.Devices.Gpio.GpioController")
interface IGpioController : IInspectable
{
extern(Windows):
	HRESULT get_PinCount(INT32* return_value);
	HRESULT abi_OpenPin(INT32 pinNumber, Windows.Devices.Gpio.GpioPin* return_pin);
	HRESULT abi_OpenPin(INT32 pinNumber, Windows.Devices.Gpio.GpioSharingMode sharingMode, Windows.Devices.Gpio.GpioPin* return_pin);
	HRESULT abi_TryOpenPin(INT32 pinNumber, Windows.Devices.Gpio.GpioSharingMode sharingMode, Windows.Devices.Gpio.GpioPin* out_pin, Windows.Devices.Gpio.GpioOpenStatus* out_openStatus, bool* return_succeeded);
}

@uuid("2ed6f42e-7af7-4116-9533-c43d99a1fb64")
@WinrtFactory("Windows.Devices.Gpio.GpioController")
interface IGpioControllerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Devices.Gpio.GpioController* return_value);
}

@uuid("912b7d20-6ca4-4106-a373-fffd346b0e5b")
@WinrtFactory("Windows.Devices.Gpio.GpioController")
interface IGpioControllerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetControllersAsync(Windows.Devices.Gpio.Provider.IGpioProvider provider, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Gpio.GpioController))* return_operation);
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Gpio.GpioController)* return_operation);
}

@uuid("11d9b087-afae-4790-9ee9-e0eac942d201")
@WinrtFactory("Windows.Devices.Gpio.GpioPin")
interface IGpioPin_Base : IInspectable
{
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
@uuid("11d9b087-afae-4790-9ee9-e0eac942d201")
@WinrtFactory("Windows.Devices.Gpio.GpioPin")
interface IGpioPin : IGpioPin_Base, Windows.Foundation.IClosable {}

@uuid("3137aae1-703d-4059-bd24-b5b25dffb84e")
@WinrtFactory("Windows.Devices.Gpio.GpioPinValueChangedEventArgs")
interface IGpioPinValueChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Edge(Windows.Devices.Gpio.GpioPinEdge* return_value);
}

interface GpioChangeCounter : Windows.Devices.Gpio.IGpioChangeCounter, Windows.Foundation.IClosable
{
extern(Windows):
	final void Polarity(Windows.Devices.Gpio.GpioChangePolarity value)
	{
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeCounter)this.asInterface(uuid("cb5ec0de-6801-43ff-803d-4576628a8b26"))).set_Polarity(value));
	}
	final Windows.Devices.Gpio.GpioChangePolarity Polarity()
	{
		Windows.Devices.Gpio.GpioChangePolarity _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeCounter)this.asInterface(uuid("cb5ec0de-6801-43ff-803d-4576628a8b26"))).get_Polarity(&_ret));
		return _ret;
	}
	final bool IsStarted()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeCounter)this.asInterface(uuid("cb5ec0de-6801-43ff-803d-4576628a8b26"))).get_IsStarted(&_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeCounter)this.asInterface(uuid("cb5ec0de-6801-43ff-803d-4576628a8b26"))).abi_Start());
	}
	final void Stop()
	{
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeCounter)this.asInterface(uuid("cb5ec0de-6801-43ff-803d-4576628a8b26"))).abi_Stop());
	}
	final Windows.Devices.Gpio.GpioChangeCount Read()
	{
		Windows.Devices.Gpio.GpioChangeCount _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeCounter)this.asInterface(uuid("cb5ec0de-6801-43ff-803d-4576628a8b26"))).abi_Read(&_ret));
		return _ret;
	}
	final Windows.Devices.Gpio.GpioChangeCount Reset()
	{
		Windows.Devices.Gpio.GpioChangeCount _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeCounter)this.asInterface(uuid("cb5ec0de-6801-43ff-803d-4576628a8b26"))).abi_Reset(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	static Windows.Devices.Gpio.GpioChangeCounter New(Windows.Devices.Gpio.GpioPin pin)
	{
		auto factory = factory!(Windows.Devices.Gpio.IGpioChangeCounterFactory);
		Windows.Devices.Gpio.GpioChangeCounter _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeCounterFactory)factory.asInterface(uuid("147d94b6-0a9e-410c-b4fa-f89f4052084d"))).abi_Create(pin, &_ret));
		return _ret;
	}
}

interface GpioChangeReader : Windows.Devices.Gpio.IGpioChangeReader, Windows.Foundation.IClosable
{
extern(Windows):
	final INT32 Capacity()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeReader)this.asInterface(uuid("0abc885f-e031-48e8-8590-70de78363c6d"))).get_Capacity(&_ret));
		return _ret;
	}
	final INT32 Length()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeReader)this.asInterface(uuid("0abc885f-e031-48e8-8590-70de78363c6d"))).get_Length(&_ret));
		return _ret;
	}
	final bool IsEmpty()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeReader)this.asInterface(uuid("0abc885f-e031-48e8-8590-70de78363c6d"))).get_IsEmpty(&_ret));
		return _ret;
	}
	final bool IsOverflowed()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeReader)this.asInterface(uuid("0abc885f-e031-48e8-8590-70de78363c6d"))).get_IsOverflowed(&_ret));
		return _ret;
	}
	final void Polarity(Windows.Devices.Gpio.GpioChangePolarity value)
	{
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeReader)this.asInterface(uuid("0abc885f-e031-48e8-8590-70de78363c6d"))).set_Polarity(value));
	}
	final Windows.Devices.Gpio.GpioChangePolarity Polarity()
	{
		Windows.Devices.Gpio.GpioChangePolarity _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeReader)this.asInterface(uuid("0abc885f-e031-48e8-8590-70de78363c6d"))).get_Polarity(&_ret));
		return _ret;
	}
	final bool IsStarted()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeReader)this.asInterface(uuid("0abc885f-e031-48e8-8590-70de78363c6d"))).get_IsStarted(&_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeReader)this.asInterface(uuid("0abc885f-e031-48e8-8590-70de78363c6d"))).abi_Start());
	}
	final void Stop()
	{
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeReader)this.asInterface(uuid("0abc885f-e031-48e8-8590-70de78363c6d"))).abi_Stop());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeReader)this.asInterface(uuid("0abc885f-e031-48e8-8590-70de78363c6d"))).abi_Clear());
	}
	final Windows.Devices.Gpio.GpioChangeRecord GetNextItem()
	{
		Windows.Devices.Gpio.GpioChangeRecord _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeReader)this.asInterface(uuid("0abc885f-e031-48e8-8590-70de78363c6d"))).abi_GetNextItem(&_ret));
		return _ret;
	}
	final Windows.Devices.Gpio.GpioChangeRecord PeekNextItem()
	{
		Windows.Devices.Gpio.GpioChangeRecord _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeReader)this.asInterface(uuid("0abc885f-e031-48e8-8590-70de78363c6d"))).abi_PeekNextItem(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Devices.Gpio.GpioChangeRecord) GetAllItems()
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.Gpio.GpioChangeRecord) _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeReader)this.asInterface(uuid("0abc885f-e031-48e8-8590-70de78363c6d"))).abi_GetAllItems(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction WaitForItemsAsync(INT32 count)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeReader)this.asInterface(uuid("0abc885f-e031-48e8-8590-70de78363c6d"))).abi_WaitForItemsAsync(count, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	static Windows.Devices.Gpio.GpioChangeReader New(Windows.Devices.Gpio.GpioPin pin)
	{
		auto factory = factory!(Windows.Devices.Gpio.IGpioChangeReaderFactory);
		Windows.Devices.Gpio.GpioChangeReader _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeReaderFactory)factory.asInterface(uuid("a9598ef3-390e-441a-9d1c-e8de0b2df0df"))).abi_Create(pin, &_ret));
		return _ret;
	}
	static Windows.Devices.Gpio.GpioChangeReader New(Windows.Devices.Gpio.GpioPin pin, INT32 minCapacity)
	{
		auto factory = factory!(Windows.Devices.Gpio.IGpioChangeReaderFactory);
		Windows.Devices.Gpio.GpioChangeReader _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioChangeReaderFactory)factory.asInterface(uuid("a9598ef3-390e-441a-9d1c-e8de0b2df0df"))).abi_CreateWithCapacity(pin, minCapacity, &_ret));
		return _ret;
	}
}

interface GpioController : Windows.Devices.Gpio.IGpioController
{
extern(Windows):
	final INT32 PinCount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioController)this.asInterface(uuid("284012e3-7461-469c-a8bc-61d69d08a53c"))).get_PinCount(&_ret));
		return _ret;
	}
	final Windows.Devices.Gpio.GpioPin OpenPin(INT32 pinNumber)
	{
		Windows.Devices.Gpio.GpioPin _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioController)this.asInterface(uuid("284012e3-7461-469c-a8bc-61d69d08a53c"))).abi_OpenPin(pinNumber, &_ret));
		return _ret;
	}
	final Windows.Devices.Gpio.GpioPin OpenPin(INT32 pinNumber, Windows.Devices.Gpio.GpioSharingMode sharingMode)
	{
		Windows.Devices.Gpio.GpioPin _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioController)this.asInterface(uuid("284012e3-7461-469c-a8bc-61d69d08a53c"))).abi_OpenPin(pinNumber, sharingMode, &_ret));
		return _ret;
	}
	alias OpenPin = OpenPinWithSharingMode;
	final bool TryOpenPin(INT32 pinNumber, Windows.Devices.Gpio.GpioSharingMode sharingMode, Windows.Devices.Gpio.GpioPin* out_pin, Windows.Devices.Gpio.GpioOpenStatus* out_openStatus)
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioController)this.asInterface(uuid("284012e3-7461-469c-a8bc-61d69d08a53c"))).abi_TryOpenPin(pinNumber, sharingMode, out_pin, out_openStatus, &_ret));
		return _ret;
	}

	private static Windows.Devices.Gpio.IGpioControllerStatics _staticInstance;
	public static Windows.Devices.Gpio.IGpioControllerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Gpio.IGpioControllerStatics);
		return _staticInstance;
	}
	static Windows.Devices.Gpio.GpioController GetDefault()
	{
		Windows.Devices.Gpio.GpioController _ret;
		Debug.OK(staticInstance.abi_GetDefault(&_ret));
		return _ret;
	}
}

interface GpioPin : Windows.Devices.Gpio.IGpioPin, Windows.Foundation.IClosable
{
extern(Windows):
	final EventRegistrationToken OnValueChanged(void delegate(Windows.Devices.Gpio.GpioPin, Windows.Devices.Gpio.GpioPinValueChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioPin)this.asInterface(uuid("11d9b087-afae-4790-9ee9-e0eac942d201"))).add_ValueChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Gpio.GpioPin, Windows.Devices.Gpio.GpioPinValueChangedEventArgs), Windows.Devices.Gpio.GpioPin, Windows.Devices.Gpio.GpioPinValueChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeValueChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Gpio.IGpioPin)this.asInterface(uuid("11d9b087-afae-4790-9ee9-e0eac942d201"))).remove_ValueChanged(token));
	}
	final Windows.Foundation.TimeSpan DebounceTimeout()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioPin)this.asInterface(uuid("11d9b087-afae-4790-9ee9-e0eac942d201"))).get_DebounceTimeout(&_ret));
		return _ret;
	}
	final void DebounceTimeout(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.Devices.Gpio.IGpioPin)this.asInterface(uuid("11d9b087-afae-4790-9ee9-e0eac942d201"))).set_DebounceTimeout(value));
	}
	final INT32 PinNumber()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioPin)this.asInterface(uuid("11d9b087-afae-4790-9ee9-e0eac942d201"))).get_PinNumber(&_ret));
		return _ret;
	}
	final Windows.Devices.Gpio.GpioSharingMode SharingMode()
	{
		Windows.Devices.Gpio.GpioSharingMode _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioPin)this.asInterface(uuid("11d9b087-afae-4790-9ee9-e0eac942d201"))).get_SharingMode(&_ret));
		return _ret;
	}
	final bool IsDriveModeSupported(Windows.Devices.Gpio.GpioPinDriveMode driveMode)
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioPin)this.asInterface(uuid("11d9b087-afae-4790-9ee9-e0eac942d201"))).abi_IsDriveModeSupported(driveMode, &_ret));
		return _ret;
	}
	final Windows.Devices.Gpio.GpioPinDriveMode GetDriveMode()
	{
		Windows.Devices.Gpio.GpioPinDriveMode _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioPin)this.asInterface(uuid("11d9b087-afae-4790-9ee9-e0eac942d201"))).abi_GetDriveMode(&_ret));
		return _ret;
	}
	final void SetDriveMode(Windows.Devices.Gpio.GpioPinDriveMode value)
	{
		Debug.OK((cast(Windows.Devices.Gpio.IGpioPin)this.asInterface(uuid("11d9b087-afae-4790-9ee9-e0eac942d201"))).abi_SetDriveMode(value));
	}
	final void Write(Windows.Devices.Gpio.GpioPinValue value)
	{
		Debug.OK((cast(Windows.Devices.Gpio.IGpioPin)this.asInterface(uuid("11d9b087-afae-4790-9ee9-e0eac942d201"))).abi_Write(value));
	}
	final Windows.Devices.Gpio.GpioPinValue Read()
	{
		Windows.Devices.Gpio.GpioPinValue _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioPin)this.asInterface(uuid("11d9b087-afae-4790-9ee9-e0eac942d201"))).abi_Read(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
}

interface GpioPinValueChangedEventArgs : Windows.Devices.Gpio.IGpioPinValueChangedEventArgs
{
extern(Windows):
	final Windows.Devices.Gpio.GpioPinEdge Edge()
	{
		Windows.Devices.Gpio.GpioPinEdge _ret;
		Debug.OK((cast(Windows.Devices.Gpio.IGpioPinValueChangedEventArgs)this.asInterface(uuid("3137aae1-703d-4059-bd24-b5b25dffb84e"))).get_Edge(&_ret));
		return _ret;
	}
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