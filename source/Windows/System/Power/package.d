module Windows.System.Power;

import dwinrt;

@uuid("b3161d95-1180-4376-96e1-4095568147ce")
@WinrtFactory("Windows.System.Power.BackgroundEnergyManager")
interface IBackgroundEnergyManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
}

interface ForegroundEnergyManager
{
}

interface PowerManager
{
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