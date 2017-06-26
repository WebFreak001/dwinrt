module Windows.UI.Input.Preview.Injection;

import dwinrt;

struct InjectedInputPoint
{
	INT32 PositionX;
	INT32 PositionY;
}

struct InjectedInputPointerInfo
{
	UINT32 PointerId;
	Windows.UI.Input.Preview.Injection.InjectedInputPointerOptions PointerOptions;
	Windows.UI.Input.Preview.Injection.InjectedInputPoint PixelLocation;
	UINT32 TimeOffsetInMilliseconds;
	ulong PerformanceCount;
}

struct InjectedInputRectangle
{
	INT32 Left;
	INT32 Top;
	INT32 Bottom;
	INT32 Right;
}

@uuid("4b46d140-2b6a-5ffa-7eae-bd077b052acd")
@WinrtFactory("Windows.UI.Input.Preview.Injection.InjectedInputKeyboardInfo")
interface IInjectedInputKeyboardInfo : IInspectable
{
extern(Windows):
	HRESULT get_KeyOptions(Windows.UI.Input.Preview.Injection.InjectedInputKeyOptions* return_value);
	HRESULT set_KeyOptions(Windows.UI.Input.Preview.Injection.InjectedInputKeyOptions value);
	HRESULT get_ScanCode(UINT16* return_value);
	HRESULT set_ScanCode(UINT16 value);
	HRESULT get_VirtualKey(UINT16* return_value);
	HRESULT set_VirtualKey(UINT16 value);
}

@uuid("96f56e6b-e47a-5cf4-418d-8a5fb9670c7d")
@WinrtFactory("Windows.UI.Input.Preview.Injection.InjectedInputMouseInfo")
interface IInjectedInputMouseInfo : IInspectable
{
extern(Windows):
	HRESULT get_MouseOptions(Windows.UI.Input.Preview.Injection.InjectedInputMouseOptions* return_value);
	HRESULT set_MouseOptions(Windows.UI.Input.Preview.Injection.InjectedInputMouseOptions value);
	HRESULT get_MouseData(UINT32* return_value);
	HRESULT set_MouseData(UINT32 value);
	HRESULT get_DeltaY(INT32* return_value);
	HRESULT set_DeltaY(INT32 value);
	HRESULT get_DeltaX(INT32* return_value);
	HRESULT set_DeltaX(INT32 value);
	HRESULT get_TimeOffsetInMilliseconds(UINT32* return_value);
	HRESULT set_TimeOffsetInMilliseconds(UINT32 value);
}

@uuid("6b40ad03-ca1e-5527-7e02-2828540bb1d4")
@WinrtFactory("Windows.UI.Input.Preview.Injection.InjectedInputPenInfo")
interface IInjectedInputPenInfo : IInspectable
{
extern(Windows):
	HRESULT get_PointerInfo(Windows.UI.Input.Preview.Injection.InjectedInputPointerInfo* return_value);
	HRESULT set_PointerInfo(Windows.UI.Input.Preview.Injection.InjectedInputPointerInfo value);
	HRESULT get_PenButtons(Windows.UI.Input.Preview.Injection.InjectedInputPenButtons* return_value);
	HRESULT set_PenButtons(Windows.UI.Input.Preview.Injection.InjectedInputPenButtons value);
	HRESULT get_PenParameters(Windows.UI.Input.Preview.Injection.InjectedInputPenParameters* return_value);
	HRESULT set_PenParameters(Windows.UI.Input.Preview.Injection.InjectedInputPenParameters value);
	HRESULT get_Pressure(double* return_value);
	HRESULT set_Pressure(double value);
	HRESULT get_Rotation(double* return_value);
	HRESULT set_Rotation(double value);
	HRESULT get_TiltX(INT32* return_value);
	HRESULT set_TiltX(INT32 value);
	HRESULT get_TiltY(INT32* return_value);
	HRESULT set_TiltY(INT32 value);
}

@uuid("224fd1df-43e8-5ef5-510a-69ca8c9b4c28")
@WinrtFactory("Windows.UI.Input.Preview.Injection.InjectedInputTouchInfo")
interface IInjectedInputTouchInfo : IInspectable
{
extern(Windows):
	HRESULT get_Contact(Windows.UI.Input.Preview.Injection.InjectedInputRectangle* return_value);
	HRESULT set_Contact(Windows.UI.Input.Preview.Injection.InjectedInputRectangle value);
	HRESULT get_Orientation(INT32* return_value);
	HRESULT set_Orientation(INT32 value);
	HRESULT get_PointerInfo(Windows.UI.Input.Preview.Injection.InjectedInputPointerInfo* return_value);
	HRESULT set_PointerInfo(Windows.UI.Input.Preview.Injection.InjectedInputPointerInfo value);
	HRESULT get_Pressure(double* return_value);
	HRESULT set_Pressure(double value);
	HRESULT get_TouchParameters(Windows.UI.Input.Preview.Injection.InjectedInputTouchParameters* return_value);
	HRESULT set_TouchParameters(Windows.UI.Input.Preview.Injection.InjectedInputTouchParameters value);
}

@uuid("8ec26f84-0b02-4bd2-ad7a-3d4658be3e18")
@WinrtFactory("Windows.UI.Input.Preview.Injection.InputInjector")
interface IInputInjector : IInspectable
{
extern(Windows):
	HRESULT abi_InjectKeyboardInput(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Preview.Injection.InjectedInputKeyboardInfo) input);
	HRESULT abi_InjectMouseInput(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Preview.Injection.InjectedInputMouseInfo) input);
	HRESULT abi_InitializeTouchInjection(Windows.UI.Input.Preview.Injection.InjectedInputVisualizationMode visualMode);
	HRESULT abi_InjectTouchInput(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Preview.Injection.InjectedInputTouchInfo) input);
	HRESULT abi_UninitializeTouchInjection();
	HRESULT abi_InitializePenInjection(Windows.UI.Input.Preview.Injection.InjectedInputVisualizationMode visualMode);
	HRESULT abi_InjectPenInput(Windows.UI.Input.Preview.Injection.InjectedInputPenInfo input);
	HRESULT abi_UninitializePenInjection();
	HRESULT abi_InjectShortcut(Windows.UI.Input.Preview.Injection.InjectedInputShortcut shortcut);
}

@uuid("deae6943-7402-4141-a5c6-0c01aa57b16a")
@WinrtFactory("Windows.UI.Input.Preview.Injection.InputInjector")
interface IInputInjectorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_TryCreate(Windows.UI.Input.Preview.Injection.InputInjector* return_instance);
}

interface InjectedInputKeyboardInfo : Windows.UI.Input.Preview.Injection.IInjectedInputKeyboardInfo
{
extern(Windows):
	final Windows.UI.Input.Preview.Injection.InjectedInputKeyOptions KeyOptions()
	{
		Windows.UI.Input.Preview.Injection.InjectedInputKeyOptions _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputKeyboardInfo).get_KeyOptions(&_ret));
		return _ret;
	}
	final void KeyOptions(Windows.UI.Input.Preview.Injection.InjectedInputKeyOptions value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputKeyboardInfo).set_KeyOptions(value));
	}
	final UINT16 ScanCode()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputKeyboardInfo).get_ScanCode(&_ret));
		return _ret;
	}
	final void ScanCode(UINT16 value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputKeyboardInfo).set_ScanCode(value));
	}
	final UINT16 VirtualKey()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputKeyboardInfo).get_VirtualKey(&_ret));
		return _ret;
	}
	final void VirtualKey(UINT16 value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputKeyboardInfo).set_VirtualKey(value));
	}
	static InjectedInputKeyboardInfo New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(InjectedInputKeyboardInfo).abi_ActivateInstance(&ret));
		return ret.as!(InjectedInputKeyboardInfo);
	}
}

interface InjectedInputMouseInfo : Windows.UI.Input.Preview.Injection.IInjectedInputMouseInfo
{
extern(Windows):
	final Windows.UI.Input.Preview.Injection.InjectedInputMouseOptions MouseOptions()
	{
		Windows.UI.Input.Preview.Injection.InjectedInputMouseOptions _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputMouseInfo).get_MouseOptions(&_ret));
		return _ret;
	}
	final void MouseOptions(Windows.UI.Input.Preview.Injection.InjectedInputMouseOptions value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputMouseInfo).set_MouseOptions(value));
	}
	final UINT32 MouseData()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputMouseInfo).get_MouseData(&_ret));
		return _ret;
	}
	final void MouseData(UINT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputMouseInfo).set_MouseData(value));
	}
	final INT32 DeltaY()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputMouseInfo).get_DeltaY(&_ret));
		return _ret;
	}
	final void DeltaY(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputMouseInfo).set_DeltaY(value));
	}
	final INT32 DeltaX()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputMouseInfo).get_DeltaX(&_ret));
		return _ret;
	}
	final void DeltaX(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputMouseInfo).set_DeltaX(value));
	}
	final UINT32 TimeOffsetInMilliseconds()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputMouseInfo).get_TimeOffsetInMilliseconds(&_ret));
		return _ret;
	}
	final void TimeOffsetInMilliseconds(UINT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputMouseInfo).set_TimeOffsetInMilliseconds(value));
	}
	static InjectedInputMouseInfo New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(InjectedInputMouseInfo).abi_ActivateInstance(&ret));
		return ret.as!(InjectedInputMouseInfo);
	}
}

interface InjectedInputPenInfo : Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo
{
extern(Windows):
	final Windows.UI.Input.Preview.Injection.InjectedInputPointerInfo PointerInfo()
	{
		Windows.UI.Input.Preview.Injection.InjectedInputPointerInfo _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo).get_PointerInfo(&_ret));
		return _ret;
	}
	final void PointerInfo(Windows.UI.Input.Preview.Injection.InjectedInputPointerInfo value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo).set_PointerInfo(value));
	}
	final Windows.UI.Input.Preview.Injection.InjectedInputPenButtons PenButtons()
	{
		Windows.UI.Input.Preview.Injection.InjectedInputPenButtons _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo).get_PenButtons(&_ret));
		return _ret;
	}
	final void PenButtons(Windows.UI.Input.Preview.Injection.InjectedInputPenButtons value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo).set_PenButtons(value));
	}
	final Windows.UI.Input.Preview.Injection.InjectedInputPenParameters PenParameters()
	{
		Windows.UI.Input.Preview.Injection.InjectedInputPenParameters _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo).get_PenParameters(&_ret));
		return _ret;
	}
	final void PenParameters(Windows.UI.Input.Preview.Injection.InjectedInputPenParameters value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo).set_PenParameters(value));
	}
	final double Pressure()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo).get_Pressure(&_ret));
		return _ret;
	}
	final void Pressure(double value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo).set_Pressure(value));
	}
	final double Rotation()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo).get_Rotation(&_ret));
		return _ret;
	}
	final void Rotation(double value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo).set_Rotation(value));
	}
	final INT32 TiltX()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo).get_TiltX(&_ret));
		return _ret;
	}
	final void TiltX(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo).set_TiltX(value));
	}
	final INT32 TiltY()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo).get_TiltY(&_ret));
		return _ret;
	}
	final void TiltY(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo).set_TiltY(value));
	}
	static InjectedInputPenInfo New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(InjectedInputPenInfo).abi_ActivateInstance(&ret));
		return ret.as!(InjectedInputPenInfo);
	}
}

interface InjectedInputTouchInfo : Windows.UI.Input.Preview.Injection.IInjectedInputTouchInfo
{
extern(Windows):
	final Windows.UI.Input.Preview.Injection.InjectedInputRectangle Contact()
	{
		Windows.UI.Input.Preview.Injection.InjectedInputRectangle _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputTouchInfo).get_Contact(&_ret));
		return _ret;
	}
	final void Contact(Windows.UI.Input.Preview.Injection.InjectedInputRectangle value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputTouchInfo).set_Contact(value));
	}
	final INT32 Orientation()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputTouchInfo).get_Orientation(&_ret));
		return _ret;
	}
	final void Orientation(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputTouchInfo).set_Orientation(value));
	}
	final Windows.UI.Input.Preview.Injection.InjectedInputPointerInfo PointerInfo()
	{
		Windows.UI.Input.Preview.Injection.InjectedInputPointerInfo _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputTouchInfo).get_PointerInfo(&_ret));
		return _ret;
	}
	final void PointerInfo(Windows.UI.Input.Preview.Injection.InjectedInputPointerInfo value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputTouchInfo).set_PointerInfo(value));
	}
	final double Pressure()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputTouchInfo).get_Pressure(&_ret));
		return _ret;
	}
	final void Pressure(double value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputTouchInfo).set_Pressure(value));
	}
	final Windows.UI.Input.Preview.Injection.InjectedInputTouchParameters TouchParameters()
	{
		Windows.UI.Input.Preview.Injection.InjectedInputTouchParameters _ret;
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputTouchInfo).get_TouchParameters(&_ret));
		return _ret;
	}
	final void TouchParameters(Windows.UI.Input.Preview.Injection.InjectedInputTouchParameters value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInjectedInputTouchInfo).set_TouchParameters(value));
	}
	static InjectedInputTouchInfo New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(InjectedInputTouchInfo).abi_ActivateInstance(&ret));
		return ret.as!(InjectedInputTouchInfo);
	}
}

interface InputInjector : Windows.UI.Input.Preview.Injection.IInputInjector
{
extern(Windows):
	final void InjectKeyboardInput(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Preview.Injection.InjectedInputKeyboardInfo) input)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInputInjector).abi_InjectKeyboardInput(input));
	}
	final void InjectMouseInput(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Preview.Injection.InjectedInputMouseInfo) input)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInputInjector).abi_InjectMouseInput(input));
	}
	final void InitializeTouchInjection(Windows.UI.Input.Preview.Injection.InjectedInputVisualizationMode visualMode)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInputInjector).abi_InitializeTouchInjection(visualMode));
	}
	final void InjectTouchInput(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Preview.Injection.InjectedInputTouchInfo) input)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInputInjector).abi_InjectTouchInput(input));
	}
	final void UninitializeTouchInjection()
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInputInjector).abi_UninitializeTouchInjection());
	}
	final void InitializePenInjection(Windows.UI.Input.Preview.Injection.InjectedInputVisualizationMode visualMode)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInputInjector).abi_InitializePenInjection(visualMode));
	}
	final void InjectPenInput(Windows.UI.Input.Preview.Injection.InjectedInputPenInfo input)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInputInjector).abi_InjectPenInput(input));
	}
	final void UninitializePenInjection()
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInputInjector).abi_UninitializePenInjection());
	}
	final void InjectShortcut(Windows.UI.Input.Preview.Injection.InjectedInputShortcut shortcut)
	{
		Debug.OK(this.as!(Windows.UI.Input.Preview.Injection.IInputInjector).abi_InjectShortcut(shortcut));
	}

	private static Windows.UI.Input.Preview.Injection.IInputInjectorStatics _staticInstance;
	public static Windows.UI.Input.Preview.Injection.IInputInjectorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Input.Preview.Injection.IInputInjectorStatics);
		return _staticInstance;
	}
	static Windows.UI.Input.Preview.Injection.InputInjector TryCreate()
	{
		Windows.UI.Input.Preview.Injection.InputInjector _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Input.Preview.Injection.IInputInjectorStatics).abi_TryCreate(&_ret));
		return _ret;
	}
}

enum InjectedInputButtonChangeKind
{
	None = 0,
	FirstButtonDown = 1,
	FirstButtonUp = 2,
	SecondButtonDown = 3,
	SecondButtonUp = 4,
	ThirdButtonDown = 5,
	ThirdButtonUp = 6,
	FourthButtonDown = 7,
	FourthButtonUp = 8,
	FifthButtonDown = 9,
	FifthButtonUp = 10
}

@bitflags
enum InjectedInputKeyOptions
{
	None = 0x0,
	ExtendedKey = 0x1,
	KeyUp = 0x2,
	ScanCode = 0x8,
	Unicode = 0x4
}

@bitflags
enum InjectedInputMouseOptions
{
	None = 0x0,
	Move = 0x1,
	LeftDown = 0x2,
	LeftUp = 0x4,
	RightDown = 0x8,
	RightUp = 0x10,
	MiddleDown = 0x20,
	MiddleUp = 0x40,
	XDown = 0x80,
	XUp = 0x100,
	Wheel = 0x800,
	HWheel = 0x1000,
	MoveNoCoalesce = 0x2000,
	VirtualDesk = 0x4000,
	Absolute = 0x8000
}

@bitflags
enum InjectedInputPenButtons
{
	None = 0x0,
	Barrel = 0x1,
	Inverted = 0x2,
	Eraser = 0x4
}

@bitflags
enum InjectedInputPenParameters
{
	None = 0x0,
	Pressure = 0x1,
	Rotation = 0x2,
	TiltX = 0x4,
	TiltY = 0x8
}

@bitflags
enum InjectedInputPointerOptions
{
	None = 0x0,
	New = 0x1,
	InRange = 0x2,
	InContact = 0x4,
	FirstButton = 0x10,
	SecondButton = 0x20,
	Primary = 0x2000,
	Confidence = 0x4000,
	Canceled = 0x8000,
	PointerDown = 0x10000,
	Update = 0x20000,
	PointerUp = 0x40000,
	CaptureChanged = 0x200000
}

enum InjectedInputShortcut
{
	Back = 0,
	Start = 1,
	Search = 2
}

@bitflags
enum InjectedInputTouchParameters
{
	None = 0x0,
	Contact = 0x1,
	Orientation = 0x2,
	Pressure = 0x4
}

enum InjectedInputVisualizationMode
{
	None = 0,
	Default = 1,
	Indirect = 2
}