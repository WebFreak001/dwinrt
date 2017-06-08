module Windows.Devices.Power;

import dwinrt;

@uuid("bc894fc6-0072-47c8-8b5d-614aaa7a437e")
@WinrtFactory("Windows.Devices.Power.Battery")
interface IBattery : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT abi_GetReport(Windows.Devices.Power.BatteryReport* return_result);
	HRESULT add_ReportUpdated(Windows.Foundation.TypedEventHandler!(Windows.Devices.Power.Battery, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReportUpdated(EventRegistrationToken token);
}

@uuid("c9858c3a-4e13-420a-a8d0-24f18f395401")
@WinrtFactory("Windows.Devices.Power.BatteryReport")
interface IBatteryReport : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ChargeRateInMilliwatts(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT get_DesignCapacityInMilliwattHours(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT get_FullChargeCapacityInMilliwattHours(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT get_RemainingCapacityInMilliwattHours(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT get_Status(Windows.System.Power.BatteryStatus* return_value);
}

@uuid("79cd72b6-9e5e-4452-bea6-dfcd541e597f")
@WinrtFactory("Windows.Devices.Power.Battery")
interface IBatteryStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AggregateBattery(Windows.Devices.Power.Battery* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Power.Battery)* return_result);
	HRESULT abi_GetDeviceSelector(HSTRING* return_result);
}

interface Battery
{
}

interface BatteryReport
{
}