module Windows.System.Power;

import dwinrt;

@uuid("b3161d95-1180-4376-96e1-4095568147ce")
@WinrtFactory("Windows.System.Power.BackgroundEnergyManager")
interface IBackgroundEnergyManagerStatics : IInspectable
{
extern(Windows):
	HRESULT get_LowUsageLevel(UINT32* return_value);
	HRESULT get_NearMaxAcceptableUsageLevel(UINT32* return_value);
	HRESULT get_MaxAcceptableUsageLevel(UINT32* return_value);
	HRESULT get_ExcessiveUsageLevel(UINT32* return_value);
	HRESULT get_NearTerminationUsageLevel(UINT32* return_value);
	HRESULT get_TerminationUsageLevel(UINT32* return_value);
	HRESULT get_RecentEnergyUsage(UINT32* return_value);
	HRESULT get_RecentEnergyUsageLevel(UINT32* return_value);
	HRESULT add_RecentEnergyUsageIncreased(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_RecentEnergyUsageIncreased(EventRegistrationToken token);
	HRESULT add_RecentEnergyUsageReturnedToLow(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_RecentEnergyUsageReturnedToLow(EventRegistrationToken token);
}

@uuid("9ff86872-e677-4814-9a20-5337ca732b98")
@WinrtFactory("Windows.System.Power.ForegroundEnergyManager")
interface IForegroundEnergyManagerStatics : IInspectable
{
extern(Windows):
	HRESULT get_LowUsageLevel(UINT32* return_value);
	HRESULT get_NearMaxAcceptableUsageLevel(UINT32* return_value);
	HRESULT get_MaxAcceptableUsageLevel(UINT32* return_value);
	HRESULT get_ExcessiveUsageLevel(UINT32* return_value);
	HRESULT get_RecentEnergyUsage(UINT32* return_value);
	HRESULT get_RecentEnergyUsageLevel(UINT32* return_value);
	HRESULT add_RecentEnergyUsageIncreased(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_RecentEnergyUsageIncreased(EventRegistrationToken token);
	HRESULT add_RecentEnergyUsageReturnedToLow(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_RecentEnergyUsageReturnedToLow(EventRegistrationToken token);
}

@uuid("1394825d-62ce-4364-98d5-aa28c7fbd15b")
@WinrtFactory("Windows.System.Power.PowerManager")
interface IPowerManagerStatics : IInspectable
{
extern(Windows):
	HRESULT get_EnergySaverStatus(Windows.System.Power.EnergySaverStatus* return_value);
	HRESULT add_EnergySaverStatusChanged(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_EnergySaverStatusChanged(EventRegistrationToken token);
	HRESULT get_BatteryStatus(Windows.System.Power.BatteryStatus* return_value);
	HRESULT add_BatteryStatusChanged(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_BatteryStatusChanged(EventRegistrationToken token);
	HRESULT get_PowerSupplyStatus(Windows.System.Power.PowerSupplyStatus* return_value);
	HRESULT add_PowerSupplyStatusChanged(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_PowerSupplyStatusChanged(EventRegistrationToken token);
	HRESULT get_RemainingChargePercent(INT32* return_value);
	HRESULT add_RemainingChargePercentChanged(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_RemainingChargePercentChanged(EventRegistrationToken token);
	HRESULT get_RemainingDischargeTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT add_RemainingDischargeTimeChanged(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_RemainingDischargeTimeChanged(EventRegistrationToken token);
}

interface BackgroundEnergyManager
{
	private static Windows.System.Power.IBackgroundEnergyManagerStatics _staticInstance;
	public static Windows.System.Power.IBackgroundEnergyManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Power.IBackgroundEnergyManagerStatics);
		return _staticInstance;
	}
	static UINT32 LowUsageLevel()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IBackgroundEnergyManagerStatics).get_LowUsageLevel(&_ret));
		return _ret;
	}
	static UINT32 NearMaxAcceptableUsageLevel()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IBackgroundEnergyManagerStatics).get_NearMaxAcceptableUsageLevel(&_ret));
		return _ret;
	}
	static UINT32 MaxAcceptableUsageLevel()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IBackgroundEnergyManagerStatics).get_MaxAcceptableUsageLevel(&_ret));
		return _ret;
	}
	static UINT32 ExcessiveUsageLevel()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IBackgroundEnergyManagerStatics).get_ExcessiveUsageLevel(&_ret));
		return _ret;
	}
	static UINT32 NearTerminationUsageLevel()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IBackgroundEnergyManagerStatics).get_NearTerminationUsageLevel(&_ret));
		return _ret;
	}
	static UINT32 TerminationUsageLevel()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IBackgroundEnergyManagerStatics).get_TerminationUsageLevel(&_ret));
		return _ret;
	}
	static UINT32 RecentEnergyUsage()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IBackgroundEnergyManagerStatics).get_RecentEnergyUsage(&_ret));
		return _ret;
	}
	static UINT32 RecentEnergyUsageLevel()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IBackgroundEnergyManagerStatics).get_RecentEnergyUsageLevel(&_ret));
		return _ret;
	}
	static EventRegistrationToken OnRecentEnergyUsageIncreased(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.as!(Windows.System.Power.IBackgroundEnergyManagerStatics).add_RecentEnergyUsageIncreased(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeRecentEnergyUsageIncreased(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.as!(Windows.System.Power.IBackgroundEnergyManagerStatics).remove_RecentEnergyUsageIncreased(token));
	}
	static EventRegistrationToken OnRecentEnergyUsageReturnedToLow(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.as!(Windows.System.Power.IBackgroundEnergyManagerStatics).add_RecentEnergyUsageReturnedToLow(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeRecentEnergyUsageReturnedToLow(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.as!(Windows.System.Power.IBackgroundEnergyManagerStatics).remove_RecentEnergyUsageReturnedToLow(token));
	}
}

interface ForegroundEnergyManager
{
	private static Windows.System.Power.IForegroundEnergyManagerStatics _staticInstance;
	public static Windows.System.Power.IForegroundEnergyManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Power.IForegroundEnergyManagerStatics);
		return _staticInstance;
	}
	static UINT32 LowUsageLevel()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IForegroundEnergyManagerStatics).get_LowUsageLevel(&_ret));
		return _ret;
	}
	static UINT32 NearMaxAcceptableUsageLevel()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IForegroundEnergyManagerStatics).get_NearMaxAcceptableUsageLevel(&_ret));
		return _ret;
	}
	static UINT32 MaxAcceptableUsageLevel()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IForegroundEnergyManagerStatics).get_MaxAcceptableUsageLevel(&_ret));
		return _ret;
	}
	static UINT32 ExcessiveUsageLevel()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IForegroundEnergyManagerStatics).get_ExcessiveUsageLevel(&_ret));
		return _ret;
	}
	static UINT32 RecentEnergyUsage()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IForegroundEnergyManagerStatics).get_RecentEnergyUsage(&_ret));
		return _ret;
	}
	static UINT32 RecentEnergyUsageLevel()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IForegroundEnergyManagerStatics).get_RecentEnergyUsageLevel(&_ret));
		return _ret;
	}
	static EventRegistrationToken OnRecentEnergyUsageIncreased(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.as!(Windows.System.Power.IForegroundEnergyManagerStatics).add_RecentEnergyUsageIncreased(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeRecentEnergyUsageIncreased(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.as!(Windows.System.Power.IForegroundEnergyManagerStatics).remove_RecentEnergyUsageIncreased(token));
	}
	static EventRegistrationToken OnRecentEnergyUsageReturnedToLow(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.as!(Windows.System.Power.IForegroundEnergyManagerStatics).add_RecentEnergyUsageReturnedToLow(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeRecentEnergyUsageReturnedToLow(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.as!(Windows.System.Power.IForegroundEnergyManagerStatics).remove_RecentEnergyUsageReturnedToLow(token));
	}
}

interface PowerManager
{
	private static Windows.System.Power.IPowerManagerStatics _staticInstance;
	public static Windows.System.Power.IPowerManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Power.IPowerManagerStatics);
		return _staticInstance;
	}
	static Windows.System.Power.EnergySaverStatus EnergySaverStatus()
	{
		Windows.System.Power.EnergySaverStatus _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IPowerManagerStatics).get_EnergySaverStatus(&_ret));
		return _ret;
	}
	static EventRegistrationToken OnEnergySaverStatusChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.as!(Windows.System.Power.IPowerManagerStatics).add_EnergySaverStatusChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeEnergySaverStatusChanged(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.as!(Windows.System.Power.IPowerManagerStatics).remove_EnergySaverStatusChanged(token));
	}
	static Windows.System.Power.BatteryStatus BatteryStatus()
	{
		Windows.System.Power.BatteryStatus _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IPowerManagerStatics).get_BatteryStatus(&_ret));
		return _ret;
	}
	static EventRegistrationToken OnBatteryStatusChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.as!(Windows.System.Power.IPowerManagerStatics).add_BatteryStatusChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeBatteryStatusChanged(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.as!(Windows.System.Power.IPowerManagerStatics).remove_BatteryStatusChanged(token));
	}
	static Windows.System.Power.PowerSupplyStatus PowerSupplyStatus()
	{
		Windows.System.Power.PowerSupplyStatus _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IPowerManagerStatics).get_PowerSupplyStatus(&_ret));
		return _ret;
	}
	static EventRegistrationToken OnPowerSupplyStatusChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.as!(Windows.System.Power.IPowerManagerStatics).add_PowerSupplyStatusChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removePowerSupplyStatusChanged(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.as!(Windows.System.Power.IPowerManagerStatics).remove_PowerSupplyStatusChanged(token));
	}
	static INT32 RemainingChargePercent()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IPowerManagerStatics).get_RemainingChargePercent(&_ret));
		return _ret;
	}
	static EventRegistrationToken OnRemainingChargePercentChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.as!(Windows.System.Power.IPowerManagerStatics).add_RemainingChargePercentChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeRemainingChargePercentChanged(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.as!(Windows.System.Power.IPowerManagerStatics).remove_RemainingChargePercentChanged(token));
	}
	static Windows.Foundation.TimeSpan RemainingDischargeTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.IPowerManagerStatics).get_RemainingDischargeTime(&_ret));
		return _ret;
	}
	static EventRegistrationToken OnRemainingDischargeTimeChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.as!(Windows.System.Power.IPowerManagerStatics).add_RemainingDischargeTimeChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeRemainingDischargeTimeChanged(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.as!(Windows.System.Power.IPowerManagerStatics).remove_RemainingDischargeTimeChanged(token));
	}
}

enum BatteryStatus
{
	NotPresent = 0,
	Discharging = 1,
	Idle = 2,
	Charging = 3
}

enum EnergySaverStatus
{
	Disabled = 0,
	Off = 1,
	On = 2
}

enum PowerSupplyStatus
{
	NotPresent = 0,
	Inadequate = 1,
	Adequate = 2
}