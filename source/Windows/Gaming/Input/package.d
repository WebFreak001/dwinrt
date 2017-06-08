module Windows.Gaming.Input;

import dwinrt;

@uuid("b14a539d-befb-4c81-8051-15ecf3b13036")
@WinrtFactory("Windows.Gaming.Input.ArcadeStick")
interface IArcadeStick : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetButtonLabel(Windows.Gaming.Input.ArcadeStickButtons button, Windows.Gaming.Input.GameControllerButtonLabel* return_value);
	HRESULT abi_GetCurrentReading(Windows.Gaming.Input.ArcadeStickReading* return_value);
}

@uuid("5c37b8c8-37b1-4ad8-9458-200f1a30018e")
@WinrtFactory("Windows.Gaming.Input.ArcadeStick")
interface IArcadeStickStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ArcadeStickAdded(Windows.Foundation.EventHandler!(Windows.Gaming.Input.ArcadeStick) value, EventRegistrationToken* return_token);
	HRESULT remove_ArcadeStickAdded(EventRegistrationToken token);
	HRESULT add_ArcadeStickRemoved(Windows.Foundation.EventHandler!(Windows.Gaming.Input.ArcadeStick) value, EventRegistrationToken* return_token);
	HRESULT remove_ArcadeStickRemoved(EventRegistrationToken token);
	HRESULT get_ArcadeSticks(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Input.ArcadeStick)* return_value);
}

@uuid("52b5d744-bb86-445a-b59c-596f0e2a49df")
@WinrtFactory("Windows.Gaming.Input.ArcadeStick")
interface IArcadeStickStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromGameController(Windows.Gaming.Input.IGameController gameController, Windows.Gaming.Input.ArcadeStick* return_value);
}

@uuid("b4a2c01c-b83b-4459-a1a9-97b03c33da7c")
@WinrtFactory("Windows.Gaming.Input.FlightStick")
interface IFlightStick : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HatSwitchKind(Windows.Gaming.Input.GameControllerSwitchKind* return_value);
	HRESULT abi_GetButtonLabel(Windows.Gaming.Input.FlightStickButtons button, Windows.Gaming.Input.GameControllerButtonLabel* return_value);
	HRESULT abi_GetCurrentReading(Windows.Gaming.Input.FlightStickReading* return_value);
}

@uuid("5514924a-fecc-435e-83dc-5cec8a18a520")
@WinrtFactory("Windows.Gaming.Input.FlightStick")
interface IFlightStickStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_FlightStickAdded(Windows.Foundation.EventHandler!(Windows.Gaming.Input.FlightStick) value, EventRegistrationToken* return_token);
	HRESULT remove_FlightStickAdded(EventRegistrationToken token);
	HRESULT add_FlightStickRemoved(Windows.Foundation.EventHandler!(Windows.Gaming.Input.FlightStick) value, EventRegistrationToken* return_token);
	HRESULT remove_FlightStickRemoved(EventRegistrationToken token);
	HRESULT get_FlightSticks(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Input.FlightStick)* return_value);
	HRESULT abi_FromGameController(Windows.Gaming.Input.IGameController gameController, Windows.Gaming.Input.FlightStick* return_value);
}

@uuid("1baf6522-5f64-42c5-8267-b9fe2215bfbd")
interface IGameController : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_HeadsetConnected(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController*,Windows.Gaming.Input.Headset*) value, EventRegistrationToken* return_token);
	HRESULT remove_HeadsetConnected(EventRegistrationToken token);
	HRESULT add_HeadsetDisconnected(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController*,Windows.Gaming.Input.Headset*) value, EventRegistrationToken* return_token);
	HRESULT remove_HeadsetDisconnected(EventRegistrationToken token);
	HRESULT add_UserChanged(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController*,Windows.System.UserChangedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_UserChanged(EventRegistrationToken token);
	HRESULT get_Headset(Windows.Gaming.Input.Headset* return_value);
	HRESULT get_IsWireless(bool* return_value);
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("dcecc681-3963-4da6-955d-553f3b6f6161")
interface IGameControllerBatteryInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TryGetBatteryReport(Windows.Devices.Power.BatteryReport* return_value);
}

@uuid("bc7bb43c-0a69-3903-9e9d-a50f86a45de5")
@WinrtFactory("Windows.Gaming.Input.Gamepad")
interface IGamepad : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Vibration(Windows.Gaming.Input.GamepadVibration* return_value);
	HRESULT set_Vibration(Windows.Gaming.Input.GamepadVibration value);
	HRESULT abi_GetCurrentReading(Windows.Gaming.Input.GamepadReading* return_value);
}

@uuid("3c1689bd-5915-4245-b0c0-c89fae0308ff")
@WinrtFactory("Windows.Gaming.Input.Gamepad")
interface IGamepad2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetButtonLabel(Windows.Gaming.Input.GamepadButtons button, Windows.Gaming.Input.GameControllerButtonLabel* return_value);
}

@uuid("8bbce529-d49c-39e9-9560-e47dde96b7c8")
@WinrtFactory("Windows.Gaming.Input.Gamepad")
interface IGamepadStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_GamepadAdded(Windows.Foundation.EventHandler!(Windows.Gaming.Input.Gamepad) value, EventRegistrationToken* return_token);
	HRESULT remove_GamepadAdded(EventRegistrationToken token);
	HRESULT add_GamepadRemoved(Windows.Foundation.EventHandler!(Windows.Gaming.Input.Gamepad) value, EventRegistrationToken* return_token);
	HRESULT remove_GamepadRemoved(EventRegistrationToken token);
	HRESULT get_Gamepads(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Input.Gamepad)* return_value);
}

@uuid("42676dc5-0856-47c4-9213-b395504c3a3c")
@WinrtFactory("Windows.Gaming.Input.Gamepad")
interface IGamepadStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromGameController(Windows.Gaming.Input.IGameController gameController, Windows.Gaming.Input.Gamepad* return_value);
}

@uuid("3fd156ef-6925-3fa8-9181-029c5223ae3b")
@WinrtFactory("Windows.Gaming.Input.Headset")
interface IHeadset : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CaptureDeviceId(HSTRING* return_value);
	HRESULT get_RenderDeviceId(HSTRING* return_value);
}

@uuid("f546656f-e106-4c82-a90f-554012904b85")
@WinrtFactory("Windows.Gaming.Input.RacingWheel")
interface IRacingWheel : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HasClutch(bool* return_value);
	HRESULT get_HasHandbrake(bool* return_value);
	HRESULT get_HasPatternShifter(bool* return_value);
	HRESULT get_MaxPatternShifterGear(INT32* return_value);
	HRESULT get_MaxWheelAngle(double* return_value);
	HRESULT get_WheelMotor(Windows.Gaming.Input.ForceFeedback.ForceFeedbackMotor* return_value);
	HRESULT abi_GetButtonLabel(Windows.Gaming.Input.RacingWheelButtons button, Windows.Gaming.Input.GameControllerButtonLabel* return_value);
	HRESULT abi_GetCurrentReading(Windows.Gaming.Input.RacingWheelReading* return_value);
}

@uuid("3ac12cd5-581b-4936-9f94-69f1e6514c7d")
@WinrtFactory("Windows.Gaming.Input.RacingWheel")
interface IRacingWheelStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_RacingWheelAdded(Windows.Foundation.EventHandler!(Windows.Gaming.Input.RacingWheel) value, EventRegistrationToken* return_token);
	HRESULT remove_RacingWheelAdded(EventRegistrationToken token);
	HRESULT add_RacingWheelRemoved(Windows.Foundation.EventHandler!(Windows.Gaming.Input.RacingWheel) value, EventRegistrationToken* return_token);
	HRESULT remove_RacingWheelRemoved(EventRegistrationToken token);
	HRESULT get_RacingWheels(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Input.RacingWheel)* return_value);
}

@uuid("e666bcaa-edfd-4323-a9f6-3c384048d1ed")
@WinrtFactory("Windows.Gaming.Input.RacingWheel")
interface IRacingWheelStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromGameController(Windows.Gaming.Input.IGameController gameController, Windows.Gaming.Input.RacingWheel* return_value);
}

@uuid("7cad6d91-a7e1-4f71-9a78-33e9c5dfea62")
@WinrtFactory("Windows.Gaming.Input.RawGameController")
interface IRawGameController : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AxisCount(INT32* return_value);
	HRESULT get_ButtonCount(INT32* return_value);
	HRESULT get_ForceFeedbackMotors(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Input.ForceFeedback.ForceFeedbackMotor)* return_value);
	HRESULT get_HardwareProductId(UINT16* return_value);
	HRESULT get_HardwareVendorId(UINT16* return_value);
	HRESULT get_SwitchCount(INT32* return_value);
	HRESULT abi_GetButtonLabel(INT32 buttonIndex, Windows.Gaming.Input.GameControllerButtonLabel* return_value);
	HRESULT abi_GetCurrentReading(UINT32 __buttonArraySize, bool* out_buttonArray, UINT32 __switchArraySize, Windows.Gaming.Input.GameControllerSwitchPosition* out_switchArray, UINT32 __axisArraySize, double* out_axisArray, UINT64* return_timestamp);
	HRESULT abi_GetSwitchKind(INT32 switchIndex, Windows.Gaming.Input.GameControllerSwitchKind* return_value);
}

@uuid("eb8d0792-e95a-4b19-afc7-0a59f8bf759e")
@WinrtFactory("Windows.Gaming.Input.RawGameController")
interface IRawGameControllerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_RawGameControllerAdded(Windows.Foundation.EventHandler!(Windows.Gaming.Input.RawGameController) value, EventRegistrationToken* return_token);
	HRESULT remove_RawGameControllerAdded(EventRegistrationToken token);
	HRESULT add_RawGameControllerRemoved(Windows.Foundation.EventHandler!(Windows.Gaming.Input.RawGameController) value, EventRegistrationToken* return_token);
	HRESULT remove_RawGameControllerRemoved(EventRegistrationToken token);
	HRESULT get_RawGameControllers(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Input.RawGameController)* return_value);
	HRESULT abi_FromGameController(Windows.Gaming.Input.IGameController gameController, Windows.Gaming.Input.RawGameController* return_value);
}

@uuid("e5aeefdd-f50e-4a55-8cdc-d33229548175")
@WinrtFactory("Windows.Gaming.Input.UINavigationController")
interface IUINavigationController : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetCurrentReading(Windows.Gaming.Input.UINavigationReading* return_value);
	HRESULT abi_GetOptionalButtonLabel(Windows.Gaming.Input.OptionalUINavigationButtons button, Windows.Gaming.Input.GameControllerButtonLabel* return_value);
	HRESULT abi_GetRequiredButtonLabel(Windows.Gaming.Input.RequiredUINavigationButtons button, Windows.Gaming.Input.GameControllerButtonLabel* return_value);
}

@uuid("2f14930a-f6f8-4a48-8d89-94786cca0c2e")
@WinrtFactory("Windows.Gaming.Input.UINavigationController")
interface IUINavigationControllerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_UINavigationControllerAdded(Windows.Foundation.EventHandler!(Windows.Gaming.Input.UINavigationController) value, EventRegistrationToken* return_token);
	HRESULT remove_UINavigationControllerAdded(EventRegistrationToken token);
	HRESULT add_UINavigationControllerRemoved(Windows.Foundation.EventHandler!(Windows.Gaming.Input.UINavigationController) value, EventRegistrationToken* return_token);
	HRESULT remove_UINavigationControllerRemoved(EventRegistrationToken token);
	HRESULT get_UINavigationControllers(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Input.UINavigationController)* return_value);
}

@uuid("e0cb28e3-b20b-4b0b-9ed4-f3d53cec0de4")
@WinrtFactory("Windows.Gaming.Input.UINavigationController")
interface IUINavigationControllerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromGameController(Windows.Gaming.Input.IGameController gameController, Windows.Gaming.Input.UINavigationController* return_value);
}

interface ArcadeStick
{
}

interface FlightStick
{
}

interface Gamepad
{
}

interface Headset
{
}

interface RacingWheel
{
}

interface RawGameController
{
}

interface UINavigationController
{
}

@bitflags
enum ArcadeStickButtons
{
	None = 0x0,
	StickUp = 0x1,
	StickDown = 0x2,
	StickLeft = 0x4,
	StickRight = 0x8,
	Action1 = 0x10,
	Action2 = 0x20,
	Action3 = 0x40,
	Action4 = 0x80,
	Action5 = 0x100,
	Action6 = 0x200,
	Special1 = 0x400,
	Special2 = 0x800
}

@bitflags
enum FlightStickButtons
{
	None = 0x0,
	FirePrimary = 0x1,
	FireSecondary = 0x2
}

enum GameControllerButtonLabel
{
	None = 0,
	XboxBack = 1,
	XboxStart = 2,
	XboxMenu = 3,
	XboxView = 4,
	XboxUp = 5,
	XboxDown = 6,
	XboxLeft = 7,
	XboxRight = 8,
	XboxA = 9,
	XboxB = 10,
	XboxX = 11,
	XboxY = 12,
	XboxLeftBumper = 13,
	XboxLeftTrigger = 14,
	XboxLeftStickButton = 15,
	XboxRightBumper = 16,
	XboxRightTrigger = 17,
	XboxRightStickButton = 18,
	XboxPaddle1 = 19,
	XboxPaddle2 = 20,
	XboxPaddle3 = 21,
	XboxPaddle4 = 22,
	Mode = 23,
	Select = 24,
	Menu = 25,
	View = 26,
	Back = 27,
	Start = 28,
	Options = 29,
	Share = 30,
	Up = 31,
	Down = 32,
	Left = 33,
	Right = 34,
	LetterA = 35,
	LetterB = 36,
	LetterC = 37,
	LetterL = 38,
	LetterR = 39,
	LetterX = 40,
	LetterY = 41,
	LetterZ = 42,
	Cross = 43,
	Circle = 44,
	Square = 45,
	Triangle = 46,
	LeftBumper = 47,
	LeftTrigger = 48,
	LeftStickButton = 49,
	Left1 = 50,
	Left2 = 51,
	Left3 = 52,
	RightBumper = 53,
	RightTrigger = 54,
	RightStickButton = 55,
	Right1 = 56,
	Right2 = 57,
	Right3 = 58,
	Paddle1 = 59,
	Paddle2 = 60,
	Paddle3 = 61,
	Paddle4 = 62,
	Plus = 63,
	Minus = 64,
	DownLeftArrow = 65,
	DialLeft = 66,
	DialRight = 67,
	Suspension = 68
}

enum GameControllerSwitchKind
{
	TwoWay = 0,
	FourWay = 1,
	EightWay = 2
}

enum GameControllerSwitchPosition
{
	Center = 0,
	Up = 1,
	UpRight = 2,
	Right = 3,
	DownRight = 4,
	Down = 5,
	DownLeft = 6,
	Left = 7,
	UpLeft = 8
}

@bitflags
enum GamepadButtons
{
	None = 0x0,
	Menu = 0x1,
	View = 0x2,
	A = 0x4,
	B = 0x8,
	X = 0x10,
	Y = 0x20,
	DPadUp = 0x40,
	DPadDown = 0x80,
	DPadLeft = 0x100,
	DPadRight = 0x200,
	LeftShoulder = 0x400,
	RightShoulder = 0x800,
	LeftThumbstick = 0x1000,
	RightThumbstick = 0x2000,
	Paddle1 = 0x4000,
	Paddle2 = 0x8000,
	Paddle3 = 0x10000,
	Paddle4 = 0x20000
}

@bitflags
enum OptionalUINavigationButtons
{
	None = 0x0,
	Context1 = 0x1,
	Context2 = 0x2,
	Context3 = 0x4,
	Context4 = 0x8,
	PageUp = 0x10,
	PageDown = 0x20,
	PageLeft = 0x40,
	PageRight = 0x80,
	ScrollUp = 0x100,
	ScrollDown = 0x200,
	ScrollLeft = 0x400,
	ScrollRight = 0x800
}

@bitflags
enum RacingWheelButtons
{
	None = 0x0,
	PreviousGear = 0x1,
	NextGear = 0x2,
	DPadUp = 0x4,
	DPadDown = 0x8,
	DPadLeft = 0x10,
	DPadRight = 0x20,
	Button1 = 0x40,
	Button2 = 0x80,
	Button3 = 0x100,
	Button4 = 0x200,
	Button5 = 0x400,
	Button6 = 0x800,
	Button7 = 0x1000,
	Button8 = 0x2000,
	Button9 = 0x4000,
	Button10 = 0x8000,
	Button11 = 0x10000,
	Button12 = 0x20000,
	Button13 = 0x40000,
	Button14 = 0x80000,
	Button15 = 0x100000,
	Button16 = 0x200000
}

@bitflags
enum RequiredUINavigationButtons
{
	None = 0x0,
	Menu = 0x1,
	View = 0x2,
	Accept = 0x4,
	Cancel = 0x8,
	Up = 0x10,
	Down = 0x20,
	Left = 0x40,
	Right = 0x80
}