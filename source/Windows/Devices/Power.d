module Windows.Devices.Power;

import dwinrt;

@uuid("bc894fc6-0072-47c8-8b5d-614aaa7a437e")
@WinrtFactory("Windows.Devices.Power.Battery")
interface IBattery : IInspectable
{
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
extern(Windows):
	HRESULT get_AggregateBattery(Windows.Devices.Power.Battery* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Power.Battery)* return_result);
	HRESULT abi_GetDeviceSelector(HSTRING* return_result);
}

interface Battery : Windows.Devices.Power.IBattery
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Power.IBattery).get_DeviceId(&_ret));
		return _ret;
	}
	final Windows.Devices.Power.BatteryReport GetReport()
	{
		Windows.Devices.Power.BatteryReport _ret;
		Debug.OK(this.as!(Windows.Devices.Power.IBattery).abi_GetReport(&_ret));
		return _ret;
	}
	final void removeReportUpdated(EventRegistrationToken token)
	{
		Debug.OK(remove_ReportUpdated(token));
	}
}

interface BatteryReport : Windows.Devices.Power.IBatteryReport
{
extern(Windows):
	final Windows.Foundation.IReference!(INT32) ChargeRateInMilliwatts()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.Devices.Power.IBatteryReport).get_ChargeRateInMilliwatts(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(INT32) DesignCapacityInMilliwattHours()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.Devices.Power.IBatteryReport).get_DesignCapacityInMilliwattHours(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(INT32) FullChargeCapacityInMilliwattHours()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.Devices.Power.IBatteryReport).get_FullChargeCapacityInMilliwattHours(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(INT32) RemainingCapacityInMilliwattHours()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.Devices.Power.IBatteryReport).get_RemainingCapacityInMilliwattHours(&_ret));
		return _ret;
	}
	final Windows.System.Power.BatteryStatus Status()
	{
		Windows.System.Power.BatteryStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Power.IBatteryReport).get_Status(&_ret));
		return _ret;
	}
}