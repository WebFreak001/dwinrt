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
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Power.IBattery)this.asInterface(uuid("bc894fc6-0072-47c8-8b5d-614aaa7a437e"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Devices.Power.BatteryReport GetReport()
	{
		Windows.Devices.Power.BatteryReport _ret;
		Debug.OK((cast(Windows.Devices.Power.IBattery)this.asInterface(uuid("bc894fc6-0072-47c8-8b5d-614aaa7a437e"))).abi_GetReport(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnReportUpdated(void delegate(Windows.Devices.Power.Battery, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Power.IBattery)this.asInterface(uuid("bc894fc6-0072-47c8-8b5d-614aaa7a437e"))).add_ReportUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Power.Battery, IInspectable), Windows.Devices.Power.Battery, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeReportUpdated(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Power.IBattery)this.asInterface(uuid("bc894fc6-0072-47c8-8b5d-614aaa7a437e"))).remove_ReportUpdated(token));
	}

	private static Windows.Devices.Power.IBatteryStatics _staticInstance;
	public static Windows.Devices.Power.IBatteryStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Power.IBatteryStatics);
		return _staticInstance;
	}
	static Windows.Devices.Power.Battery AggregateBattery()
	{
		Windows.Devices.Power.Battery _ret;
		Debug.OK(staticInstance.get_AggregateBattery(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Power.Battery) FromIdAsync(wstring deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Power.Battery) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(hstring(deviceId).handle, &_ret));
		return _ret;
	}
	static wstring GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return hstring(_ret).d_str;
	}
}

interface BatteryReport : Windows.Devices.Power.IBatteryReport
{
extern(Windows):
	final Windows.Foundation.IReference!(INT32) ChargeRateInMilliwatts()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK((cast(Windows.Devices.Power.IBatteryReport)this.asInterface(uuid("c9858c3a-4e13-420a-a8d0-24f18f395401"))).get_ChargeRateInMilliwatts(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(INT32) DesignCapacityInMilliwattHours()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK((cast(Windows.Devices.Power.IBatteryReport)this.asInterface(uuid("c9858c3a-4e13-420a-a8d0-24f18f395401"))).get_DesignCapacityInMilliwattHours(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(INT32) FullChargeCapacityInMilliwattHours()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK((cast(Windows.Devices.Power.IBatteryReport)this.asInterface(uuid("c9858c3a-4e13-420a-a8d0-24f18f395401"))).get_FullChargeCapacityInMilliwattHours(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(INT32) RemainingCapacityInMilliwattHours()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK((cast(Windows.Devices.Power.IBatteryReport)this.asInterface(uuid("c9858c3a-4e13-420a-a8d0-24f18f395401"))).get_RemainingCapacityInMilliwattHours(&_ret));
		return _ret;
	}
	final Windows.System.Power.BatteryStatus Status()
	{
		Windows.System.Power.BatteryStatus _ret;
		Debug.OK((cast(Windows.Devices.Power.IBatteryReport)this.asInterface(uuid("c9858c3a-4e13-420a-a8d0-24f18f395401"))).get_Status(&_ret));
		return _ret;
	}
}