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
	UINT64 PerformanceCount;
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
}

interface InjectedInputMouseInfo : Windows.UI.Input.Preview.Injection.IInjectedInputMouseInfo
{
}

interface InjectedInputPenInfo : Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo
{
}

interface InjectedInputTouchInfo : Windows.UI.Input.Preview.Injection.IInjectedInputTouchInfo
{
}

interface InputInjector : Windows.UI.Input.Preview.Injection.IInputInjector
{
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