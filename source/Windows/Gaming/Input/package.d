module Windows.Gaming.Input;

import dwinrt;

struct ArcadeStickReading
{
	ulong Timestamp;
	Windows.Gaming.Input.ArcadeStickButtons Buttons;
}

struct FlightStickReading
{
	ulong Timestamp;
	Windows.Gaming.Input.FlightStickButtons Buttons;
	Windows.Gaming.Input.GameControllerSwitchPosition HatSwitch;
	double Roll;
	double Pitch;
	double Yaw;
	double Throttle;
}

struct GamepadReading
{
	ulong Timestamp;
	Windows.Gaming.Input.GamepadButtons Buttons;
	double LeftTrigger;
	double RightTrigger;
	double LeftThumbstickX;
	double LeftThumbstickY;
	double RightThumbstickX;
	double RightThumbstickY;
}

struct GamepadVibration
{
	double LeftMotor;
	double RightMotor;
	double LeftTrigger;
	double RightTrigger;
}

struct RacingWheelReading
{
	ulong Timestamp;
	Windows.Gaming.Input.RacingWheelButtons Buttons;
	INT32 PatternShifterGear;
	double Wheel;
	double Throttle;
	double Brake;
	double Clutch;
	double Handbrake;
}

struct UINavigationReading
{
	ulong Timestamp;
	Windows.Gaming.Input.RequiredUINavigationButtons RequiredButtons;
	Windows.Gaming.Input.OptionalUINavigationButtons OptionalButtons;
}

@uuid("b14a539d-befb-4c81-8051-15ecf3b13036")
@WinrtFactory("Windows.Gaming.Input.ArcadeStick")
interface IArcadeStick_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetButtonLabel(Windows.Gaming.Input.ArcadeStickButtons button, Windows.Gaming.Input.GameControllerButtonLabel* return_value);
	HRESULT abi_GetCurrentReading(Windows.Gaming.Input.ArcadeStickReading* return_value);
}
@uuid("b14a539d-befb-4c81-8051-15ecf3b13036")
@WinrtFactory("Windows.Gaming.Input.ArcadeStick")
interface IArcadeStick : IArcadeStick_Base, Windows.Gaming.Input.IGameController {}

@uuid("5c37b8c8-37b1-4ad8-9458-200f1a30018e")
@WinrtFactory("Windows.Gaming.Input.ArcadeStick")
interface IArcadeStickStatics : IInspectable
{
extern(Windows):
	HRESULT add_ArcadeStickAdded(Windows.Foundation.EventHandler!(Windows.Gaming.Input.ArcadeStick) value, EventRegistrationToken* return_token);
	HRESULT remove_ArcadeStickAdded(EventRegistrationToken token);
	HRESULT add_ArcadeStickRemoved(Windows.Foundation.EventHandler!(Windows.Gaming.Input.ArcadeStick) value, EventRegistrationToken* return_token);
	HRESULT remove_ArcadeStickRemoved(EventRegistrationToken token);
	HRESULT get_ArcadeSticks(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Input.ArcadeStick)* return_value);
}

@uuid("52b5d744-bb86-445a-b59c-596f0e2a49df")
@WinrtFactory("Windows.Gaming.Input.ArcadeStick")
interface IArcadeStickStatics2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_FromGameController(Windows.Gaming.Input.IGameController gameController, Windows.Gaming.Input.ArcadeStick* return_value);
}
@uuid("52b5d744-bb86-445a-b59c-596f0e2a49df")
@WinrtFactory("Windows.Gaming.Input.ArcadeStick")
interface IArcadeStickStatics2 : IArcadeStickStatics2_Base, Windows.Gaming.Input.IArcadeStickStatics {}

@uuid("b4a2c01c-b83b-4459-a1a9-97b03c33da7c")
@WinrtFactory("Windows.Gaming.Input.FlightStick")
interface IFlightStick_Base : IInspectable
{
extern(Windows):
	HRESULT get_HatSwitchKind(Windows.Gaming.Input.GameControllerSwitchKind* return_value);
	HRESULT abi_GetButtonLabel(Windows.Gaming.Input.FlightStickButtons button, Windows.Gaming.Input.GameControllerButtonLabel* return_value);
	HRESULT abi_GetCurrentReading(Windows.Gaming.Input.FlightStickReading* return_value);
}
@uuid("b4a2c01c-b83b-4459-a1a9-97b03c33da7c")
@WinrtFactory("Windows.Gaming.Input.FlightStick")
interface IFlightStick : IFlightStick_Base, Windows.Gaming.Input.IGameController {}

@uuid("5514924a-fecc-435e-83dc-5cec8a18a520")
@WinrtFactory("Windows.Gaming.Input.FlightStick")
interface IFlightStickStatics : IInspectable
{
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
extern(Windows):
	HRESULT add_HeadsetConnected(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset) value, EventRegistrationToken* return_token);
	HRESULT remove_HeadsetConnected(EventRegistrationToken token);
	HRESULT add_HeadsetDisconnected(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset) value, EventRegistrationToken* return_token);
	HRESULT remove_HeadsetDisconnected(EventRegistrationToken token);
	HRESULT add_UserChanged(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_UserChanged(EventRegistrationToken token);
	HRESULT get_Headset(Windows.Gaming.Input.Headset* return_value);
	HRESULT get_IsWireless(bool* return_value);
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("dcecc681-3963-4da6-955d-553f3b6f6161")
interface IGameControllerBatteryInfo : IInspectable
{
extern(Windows):
	HRESULT abi_TryGetBatteryReport(Windows.Devices.Power.BatteryReport* return_value);
}

@uuid("bc7bb43c-0a69-3903-9e9d-a50f86a45de5")
@WinrtFactory("Windows.Gaming.Input.Gamepad")
interface IGamepad_Base : IInspectable
{
extern(Windows):
	HRESULT get_Vibration(Windows.Gaming.Input.GamepadVibration* return_value);
	HRESULT set_Vibration(Windows.Gaming.Input.GamepadVibration value);
	HRESULT abi_GetCurrentReading(Windows.Gaming.Input.GamepadReading* return_value);
}
@uuid("bc7bb43c-0a69-3903-9e9d-a50f86a45de5")
@WinrtFactory("Windows.Gaming.Input.Gamepad")
interface IGamepad : IGamepad_Base, Windows.Gaming.Input.IGameController {}

@uuid("3c1689bd-5915-4245-b0c0-c89fae0308ff")
@WinrtFactory("Windows.Gaming.Input.Gamepad")
interface IGamepad2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetButtonLabel(Windows.Gaming.Input.GamepadButtons button, Windows.Gaming.Input.GameControllerButtonLabel* return_value);
}
@uuid("3c1689bd-5915-4245-b0c0-c89fae0308ff")
@WinrtFactory("Windows.Gaming.Input.Gamepad")
interface IGamepad2 : IGamepad2_Base, Windows.Gaming.Input.IGamepad, Windows.Gaming.Input.IGameController {}

@uuid("8bbce529-d49c-39e9-9560-e47dde96b7c8")
@WinrtFactory("Windows.Gaming.Input.Gamepad")
interface IGamepadStatics : IInspectable
{
extern(Windows):
	HRESULT add_GamepadAdded(Windows.Foundation.EventHandler!(Windows.Gaming.Input.Gamepad) value, EventRegistrationToken* return_token);
	HRESULT remove_GamepadAdded(EventRegistrationToken token);
	HRESULT add_GamepadRemoved(Windows.Foundation.EventHandler!(Windows.Gaming.Input.Gamepad) value, EventRegistrationToken* return_token);
	HRESULT remove_GamepadRemoved(EventRegistrationToken token);
	HRESULT get_Gamepads(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Input.Gamepad)* return_value);
}

@uuid("42676dc5-0856-47c4-9213-b395504c3a3c")
@WinrtFactory("Windows.Gaming.Input.Gamepad")
interface IGamepadStatics2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_FromGameController(Windows.Gaming.Input.IGameController gameController, Windows.Gaming.Input.Gamepad* return_value);
}
@uuid("42676dc5-0856-47c4-9213-b395504c3a3c")
@WinrtFactory("Windows.Gaming.Input.Gamepad")
interface IGamepadStatics2 : IGamepadStatics2_Base, Windows.Gaming.Input.IGamepadStatics {}

@uuid("3fd156ef-6925-3fa8-9181-029c5223ae3b")
@WinrtFactory("Windows.Gaming.Input.Headset")
interface IHeadset : IInspectable
{
extern(Windows):
	HRESULT get_CaptureDeviceId(HSTRING* return_value);
	HRESULT get_RenderDeviceId(HSTRING* return_value);
}

@uuid("f546656f-e106-4c82-a90f-554012904b85")
@WinrtFactory("Windows.Gaming.Input.RacingWheel")
interface IRacingWheel_Base : IInspectable
{
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
@uuid("f546656f-e106-4c82-a90f-554012904b85")
@WinrtFactory("Windows.Gaming.Input.RacingWheel")
interface IRacingWheel : IRacingWheel_Base, Windows.Gaming.Input.IGameController {}

@uuid("3ac12cd5-581b-4936-9f94-69f1e6514c7d")
@WinrtFactory("Windows.Gaming.Input.RacingWheel")
interface IRacingWheelStatics : IInspectable
{
extern(Windows):
	HRESULT add_RacingWheelAdded(Windows.Foundation.EventHandler!(Windows.Gaming.Input.RacingWheel) value, EventRegistrationToken* return_token);
	HRESULT remove_RacingWheelAdded(EventRegistrationToken token);
	HRESULT add_RacingWheelRemoved(Windows.Foundation.EventHandler!(Windows.Gaming.Input.RacingWheel) value, EventRegistrationToken* return_token);
	HRESULT remove_RacingWheelRemoved(EventRegistrationToken token);
	HRESULT get_RacingWheels(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Input.RacingWheel)* return_value);
}

@uuid("e666bcaa-edfd-4323-a9f6-3c384048d1ed")
@WinrtFactory("Windows.Gaming.Input.RacingWheel")
interface IRacingWheelStatics2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_FromGameController(Windows.Gaming.Input.IGameController gameController, Windows.Gaming.Input.RacingWheel* return_value);
}
@uuid("e666bcaa-edfd-4323-a9f6-3c384048d1ed")
@WinrtFactory("Windows.Gaming.Input.RacingWheel")
interface IRacingWheelStatics2 : IRacingWheelStatics2_Base, Windows.Gaming.Input.IRacingWheelStatics {}

@uuid("7cad6d91-a7e1-4f71-9a78-33e9c5dfea62")
@WinrtFactory("Windows.Gaming.Input.RawGameController")
interface IRawGameController_Base : IInspectable
{
extern(Windows):
	HRESULT get_AxisCount(INT32* return_value);
	HRESULT get_ButtonCount(INT32* return_value);
	HRESULT get_ForceFeedbackMotors(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Input.ForceFeedback.ForceFeedbackMotor)* return_value);
	HRESULT get_HardwareProductId(UINT16* return_value);
	HRESULT get_HardwareVendorId(UINT16* return_value);
	HRESULT get_SwitchCount(INT32* return_value);
	HRESULT abi_GetButtonLabel(INT32 buttonIndex, Windows.Gaming.Input.GameControllerButtonLabel* return_value);
	HRESULT abi_GetCurrentReading(UINT32 __buttonArraySize, bool* out_buttonArray, UINT32 __switchArraySize, Windows.Gaming.Input.GameControllerSwitchPosition* out_switchArray, UINT32 __axisArraySize, double* out_axisArray, ulong* return_timestamp);
	HRESULT abi_GetSwitchKind(INT32 switchIndex, Windows.Gaming.Input.GameControllerSwitchKind* return_value);
}
@uuid("7cad6d91-a7e1-4f71-9a78-33e9c5dfea62")
@WinrtFactory("Windows.Gaming.Input.RawGameController")
interface IRawGameController : IRawGameController_Base, Windows.Gaming.Input.IGameController {}

@uuid("eb8d0792-e95a-4b19-afc7-0a59f8bf759e")
@WinrtFactory("Windows.Gaming.Input.RawGameController")
interface IRawGameControllerStatics : IInspectable
{
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
interface IUINavigationController_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentReading(Windows.Gaming.Input.UINavigationReading* return_value);
	HRESULT abi_GetOptionalButtonLabel(Windows.Gaming.Input.OptionalUINavigationButtons button, Windows.Gaming.Input.GameControllerButtonLabel* return_value);
	HRESULT abi_GetRequiredButtonLabel(Windows.Gaming.Input.RequiredUINavigationButtons button, Windows.Gaming.Input.GameControllerButtonLabel* return_value);
}
@uuid("e5aeefdd-f50e-4a55-8cdc-d33229548175")
@WinrtFactory("Windows.Gaming.Input.UINavigationController")
interface IUINavigationController : IUINavigationController_Base, Windows.Gaming.Input.IGameController {}

@uuid("2f14930a-f6f8-4a48-8d89-94786cca0c2e")
@WinrtFactory("Windows.Gaming.Input.UINavigationController")
interface IUINavigationControllerStatics : IInspectable
{
extern(Windows):
	HRESULT add_UINavigationControllerAdded(Windows.Foundation.EventHandler!(Windows.Gaming.Input.UINavigationController) value, EventRegistrationToken* return_token);
	HRESULT remove_UINavigationControllerAdded(EventRegistrationToken token);
	HRESULT add_UINavigationControllerRemoved(Windows.Foundation.EventHandler!(Windows.Gaming.Input.UINavigationController) value, EventRegistrationToken* return_token);
	HRESULT remove_UINavigationControllerRemoved(EventRegistrationToken token);
	HRESULT get_UINavigationControllers(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Input.UINavigationController)* return_value);
}

@uuid("e0cb28e3-b20b-4b0b-9ed4-f3d53cec0de4")
@WinrtFactory("Windows.Gaming.Input.UINavigationController")
interface IUINavigationControllerStatics2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_FromGameController(Windows.Gaming.Input.IGameController gameController, Windows.Gaming.Input.UINavigationController* return_value);
}
@uuid("e0cb28e3-b20b-4b0b-9ed4-f3d53cec0de4")
@WinrtFactory("Windows.Gaming.Input.UINavigationController")
interface IUINavigationControllerStatics2 : IUINavigationControllerStatics2_Base, Windows.Gaming.Input.IUINavigationControllerStatics {}

interface ArcadeStick : Windows.Gaming.Input.IArcadeStick, Windows.Gaming.Input.IGameController, Windows.Gaming.Input.IGameControllerBatteryInfo
{
extern(Windows):
	final Windows.Gaming.Input.GameControllerButtonLabel GetButtonLabel(Windows.Gaming.Input.ArcadeStickButtons button)
	{
		Windows.Gaming.Input.GameControllerButtonLabel _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IArcadeStick).abi_GetButtonLabel(button, &_ret));
		return _ret;
	}
	final Windows.Gaming.Input.ArcadeStickReading GetCurrentReading()
	{
		Windows.Gaming.Input.ArcadeStickReading _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IArcadeStick).abi_GetCurrentReading(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnHeadsetConnected(void delegate(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HeadsetConnected(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset), Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset)(fn), &tok));
		return tok;
	}
	final void removeHeadsetConnected(EventRegistrationToken token)
	{
		Debug.OK(remove_HeadsetConnected(token));
	}
	final EventRegistrationToken OnHeadsetDisconnected(void delegate(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HeadsetDisconnected(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset), Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset)(fn), &tok));
		return tok;
	}
	final void removeHeadsetDisconnected(EventRegistrationToken token)
	{
		Debug.OK(remove_HeadsetDisconnected(token));
	}
	final EventRegistrationToken OnUserChanged(void delegate(Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_UserChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs), Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUserChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_UserChanged(token));
	}
	final Windows.Gaming.Input.Headset Headset()
	{
		Windows.Gaming.Input.Headset _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_Headset(&_ret));
		return _ret;
	}
	final bool IsWireless()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_IsWireless(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_User(&_ret));
		return _ret;
	}
	final Windows.Devices.Power.BatteryReport TryGetBatteryReport()
	{
		Windows.Devices.Power.BatteryReport _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameControllerBatteryInfo).abi_TryGetBatteryReport(&_ret));
		return _ret;
	}
}

interface FlightStick : Windows.Gaming.Input.IFlightStick, Windows.Gaming.Input.IGameController, Windows.Gaming.Input.IGameControllerBatteryInfo
{
extern(Windows):
	final Windows.Gaming.Input.GameControllerSwitchKind HatSwitchKind()
	{
		Windows.Gaming.Input.GameControllerSwitchKind _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IFlightStick).get_HatSwitchKind(&_ret));
		return _ret;
	}
	final Windows.Gaming.Input.GameControllerButtonLabel GetButtonLabel(Windows.Gaming.Input.FlightStickButtons button)
	{
		Windows.Gaming.Input.GameControllerButtonLabel _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IFlightStick).abi_GetButtonLabel(button, &_ret));
		return _ret;
	}
	final Windows.Gaming.Input.FlightStickReading GetCurrentReading()
	{
		Windows.Gaming.Input.FlightStickReading _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IFlightStick).abi_GetCurrentReading(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnHeadsetConnected(void delegate(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HeadsetConnected(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset), Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset)(fn), &tok));
		return tok;
	}
	final void removeHeadsetConnected(EventRegistrationToken token)
	{
		Debug.OK(remove_HeadsetConnected(token));
	}
	final EventRegistrationToken OnHeadsetDisconnected(void delegate(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HeadsetDisconnected(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset), Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset)(fn), &tok));
		return tok;
	}
	final void removeHeadsetDisconnected(EventRegistrationToken token)
	{
		Debug.OK(remove_HeadsetDisconnected(token));
	}
	final EventRegistrationToken OnUserChanged(void delegate(Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_UserChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs), Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUserChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_UserChanged(token));
	}
	final Windows.Gaming.Input.Headset Headset()
	{
		Windows.Gaming.Input.Headset _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_Headset(&_ret));
		return _ret;
	}
	final bool IsWireless()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_IsWireless(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_User(&_ret));
		return _ret;
	}
	final Windows.Devices.Power.BatteryReport TryGetBatteryReport()
	{
		Windows.Devices.Power.BatteryReport _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameControllerBatteryInfo).abi_TryGetBatteryReport(&_ret));
		return _ret;
	}
}

interface Gamepad : Windows.Gaming.Input.IGamepad, Windows.Gaming.Input.IGameController, Windows.Gaming.Input.IGamepad2, Windows.Gaming.Input.IGameControllerBatteryInfo
{
extern(Windows):
	final Windows.Gaming.Input.GamepadVibration Vibration()
	{
		Windows.Gaming.Input.GamepadVibration _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGamepad).get_Vibration(&_ret));
		return _ret;
	}
	final void Vibration(Windows.Gaming.Input.GamepadVibration value)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.IGamepad).set_Vibration(value));
	}
	final Windows.Gaming.Input.GamepadReading GetCurrentReading()
	{
		Windows.Gaming.Input.GamepadReading _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGamepad).abi_GetCurrentReading(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnHeadsetConnected(void delegate(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HeadsetConnected(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset), Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset)(fn), &tok));
		return tok;
	}
	final void removeHeadsetConnected(EventRegistrationToken token)
	{
		Debug.OK(remove_HeadsetConnected(token));
	}
	final EventRegistrationToken OnHeadsetDisconnected(void delegate(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HeadsetDisconnected(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset), Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset)(fn), &tok));
		return tok;
	}
	final void removeHeadsetDisconnected(EventRegistrationToken token)
	{
		Debug.OK(remove_HeadsetDisconnected(token));
	}
	final EventRegistrationToken OnUserChanged(void delegate(Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_UserChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs), Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUserChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_UserChanged(token));
	}
	final Windows.Gaming.Input.Headset Headset()
	{
		Windows.Gaming.Input.Headset _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_Headset(&_ret));
		return _ret;
	}
	final bool IsWireless()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_IsWireless(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_User(&_ret));
		return _ret;
	}
	final Windows.Gaming.Input.GameControllerButtonLabel GetButtonLabel(Windows.Gaming.Input.GamepadButtons button)
	{
		Windows.Gaming.Input.GameControllerButtonLabel _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGamepad2).abi_GetButtonLabel(button, &_ret));
		return _ret;
	}
	final Windows.Devices.Power.BatteryReport TryGetBatteryReport()
	{
		Windows.Devices.Power.BatteryReport _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameControllerBatteryInfo).abi_TryGetBatteryReport(&_ret));
		return _ret;
	}
}

interface Headset : Windows.Gaming.Input.IHeadset, Windows.Gaming.Input.IGameControllerBatteryInfo
{
extern(Windows):
	final HSTRING CaptureDeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IHeadset).get_CaptureDeviceId(&_ret));
		return _ret;
	}
	final HSTRING RenderDeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IHeadset).get_RenderDeviceId(&_ret));
		return _ret;
	}
	final Windows.Devices.Power.BatteryReport TryGetBatteryReport()
	{
		Windows.Devices.Power.BatteryReport _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameControllerBatteryInfo).abi_TryGetBatteryReport(&_ret));
		return _ret;
	}
}

interface RacingWheel : Windows.Gaming.Input.IRacingWheel, Windows.Gaming.Input.IGameController, Windows.Gaming.Input.IGameControllerBatteryInfo
{
extern(Windows):
	final bool HasClutch()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRacingWheel).get_HasClutch(&_ret));
		return _ret;
	}
	final bool HasHandbrake()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRacingWheel).get_HasHandbrake(&_ret));
		return _ret;
	}
	final bool HasPatternShifter()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRacingWheel).get_HasPatternShifter(&_ret));
		return _ret;
	}
	final INT32 MaxPatternShifterGear()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRacingWheel).get_MaxPatternShifterGear(&_ret));
		return _ret;
	}
	final double MaxWheelAngle()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRacingWheel).get_MaxWheelAngle(&_ret));
		return _ret;
	}
	final Windows.Gaming.Input.ForceFeedback.ForceFeedbackMotor WheelMotor()
	{
		Windows.Gaming.Input.ForceFeedback.ForceFeedbackMotor _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRacingWheel).get_WheelMotor(&_ret));
		return _ret;
	}
	final Windows.Gaming.Input.GameControllerButtonLabel GetButtonLabel(Windows.Gaming.Input.RacingWheelButtons button)
	{
		Windows.Gaming.Input.GameControllerButtonLabel _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRacingWheel).abi_GetButtonLabel(button, &_ret));
		return _ret;
	}
	final Windows.Gaming.Input.RacingWheelReading GetCurrentReading()
	{
		Windows.Gaming.Input.RacingWheelReading _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRacingWheel).abi_GetCurrentReading(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnHeadsetConnected(void delegate(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HeadsetConnected(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset), Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset)(fn), &tok));
		return tok;
	}
	final void removeHeadsetConnected(EventRegistrationToken token)
	{
		Debug.OK(remove_HeadsetConnected(token));
	}
	final EventRegistrationToken OnHeadsetDisconnected(void delegate(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HeadsetDisconnected(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset), Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset)(fn), &tok));
		return tok;
	}
	final void removeHeadsetDisconnected(EventRegistrationToken token)
	{
		Debug.OK(remove_HeadsetDisconnected(token));
	}
	final EventRegistrationToken OnUserChanged(void delegate(Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_UserChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs), Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUserChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_UserChanged(token));
	}
	final Windows.Gaming.Input.Headset Headset()
	{
		Windows.Gaming.Input.Headset _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_Headset(&_ret));
		return _ret;
	}
	final bool IsWireless()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_IsWireless(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_User(&_ret));
		return _ret;
	}
	final Windows.Devices.Power.BatteryReport TryGetBatteryReport()
	{
		Windows.Devices.Power.BatteryReport _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameControllerBatteryInfo).abi_TryGetBatteryReport(&_ret));
		return _ret;
	}
}

interface RawGameController : Windows.Gaming.Input.IRawGameController, Windows.Gaming.Input.IGameController, Windows.Gaming.Input.IGameControllerBatteryInfo
{
extern(Windows):
	final INT32 AxisCount()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRawGameController).get_AxisCount(&_ret));
		return _ret;
	}
	final INT32 ButtonCount()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRawGameController).get_ButtonCount(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Input.ForceFeedback.ForceFeedbackMotor) ForceFeedbackMotors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Input.ForceFeedback.ForceFeedbackMotor) _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRawGameController).get_ForceFeedbackMotors(&_ret));
		return _ret;
	}
	final UINT16 HardwareProductId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRawGameController).get_HardwareProductId(&_ret));
		return _ret;
	}
	final UINT16 HardwareVendorId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRawGameController).get_HardwareVendorId(&_ret));
		return _ret;
	}
	final INT32 SwitchCount()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRawGameController).get_SwitchCount(&_ret));
		return _ret;
	}
	final Windows.Gaming.Input.GameControllerButtonLabel GetButtonLabel(INT32 buttonIndex)
	{
		Windows.Gaming.Input.GameControllerButtonLabel _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRawGameController).abi_GetButtonLabel(buttonIndex, &_ret));
		return _ret;
	}
	final ulong GetCurrentReading(UINT32 __buttonArraySize, bool* out_buttonArray, UINT32 __switchArraySize, Windows.Gaming.Input.GameControllerSwitchPosition* out_switchArray, UINT32 __axisArraySize, double* out_axisArray)
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRawGameController).abi_GetCurrentReading(__buttonArraySize, out_buttonArray, __switchArraySize, out_switchArray, __axisArraySize, out_axisArray, &_ret));
		return _ret;
	}
	final Windows.Gaming.Input.GameControllerSwitchKind GetSwitchKind(INT32 switchIndex)
	{
		Windows.Gaming.Input.GameControllerSwitchKind _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IRawGameController).abi_GetSwitchKind(switchIndex, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnHeadsetConnected(void delegate(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HeadsetConnected(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset), Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset)(fn), &tok));
		return tok;
	}
	final void removeHeadsetConnected(EventRegistrationToken token)
	{
		Debug.OK(remove_HeadsetConnected(token));
	}
	final EventRegistrationToken OnHeadsetDisconnected(void delegate(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HeadsetDisconnected(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset), Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset)(fn), &tok));
		return tok;
	}
	final void removeHeadsetDisconnected(EventRegistrationToken token)
	{
		Debug.OK(remove_HeadsetDisconnected(token));
	}
	final EventRegistrationToken OnUserChanged(void delegate(Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_UserChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs), Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUserChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_UserChanged(token));
	}
	final Windows.Gaming.Input.Headset Headset()
	{
		Windows.Gaming.Input.Headset _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_Headset(&_ret));
		return _ret;
	}
	final bool IsWireless()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_IsWireless(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_User(&_ret));
		return _ret;
	}
	final Windows.Devices.Power.BatteryReport TryGetBatteryReport()
	{
		Windows.Devices.Power.BatteryReport _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameControllerBatteryInfo).abi_TryGetBatteryReport(&_ret));
		return _ret;
	}
}

interface UINavigationController : Windows.Gaming.Input.IUINavigationController, Windows.Gaming.Input.IGameController, Windows.Gaming.Input.IGameControllerBatteryInfo
{
extern(Windows):
	final Windows.Gaming.Input.UINavigationReading GetCurrentReading()
	{
		Windows.Gaming.Input.UINavigationReading _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IUINavigationController).abi_GetCurrentReading(&_ret));
		return _ret;
	}
	final Windows.Gaming.Input.GameControllerButtonLabel GetOptionalButtonLabel(Windows.Gaming.Input.OptionalUINavigationButtons button)
	{
		Windows.Gaming.Input.GameControllerButtonLabel _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IUINavigationController).abi_GetOptionalButtonLabel(button, &_ret));
		return _ret;
	}
	final Windows.Gaming.Input.GameControllerButtonLabel GetRequiredButtonLabel(Windows.Gaming.Input.RequiredUINavigationButtons button)
	{
		Windows.Gaming.Input.GameControllerButtonLabel _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IUINavigationController).abi_GetRequiredButtonLabel(button, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnHeadsetConnected(void delegate(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HeadsetConnected(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset), Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset)(fn), &tok));
		return tok;
	}
	final void removeHeadsetConnected(EventRegistrationToken token)
	{
		Debug.OK(remove_HeadsetConnected(token));
	}
	final EventRegistrationToken OnHeadsetDisconnected(void delegate(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HeadsetDisconnected(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset), Windows.Gaming.Input.IGameController, Windows.Gaming.Input.Headset)(fn), &tok));
		return tok;
	}
	final void removeHeadsetDisconnected(EventRegistrationToken token)
	{
		Debug.OK(remove_HeadsetDisconnected(token));
	}
	final EventRegistrationToken OnUserChanged(void delegate(Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_UserChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs), Windows.Gaming.Input.IGameController, Windows.System.UserChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUserChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_UserChanged(token));
	}
	final Windows.Gaming.Input.Headset Headset()
	{
		Windows.Gaming.Input.Headset _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_Headset(&_ret));
		return _ret;
	}
	final bool IsWireless()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_IsWireless(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameController).get_User(&_ret));
		return _ret;
	}
	final Windows.Devices.Power.BatteryReport TryGetBatteryReport()
	{
		Windows.Devices.Power.BatteryReport _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.IGameControllerBatteryInfo).abi_TryGetBatteryReport(&_ret));
		return _ret;
	}
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