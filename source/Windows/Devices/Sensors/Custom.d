module Windows.Devices.Sensors.Custom;

import dwinrt;

@uuid("a136f9ad-4034-4b4d-99dd-531aac649c09")
@WinrtFactory("Windows.Devices.Sensors.Custom.CustomSensor")
interface ICustomSensor : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentReading(Windows.Devices.Sensors.Custom.CustomSensorReading* return_value);
	HRESULT get_MinimumReportInterval(UINT32* return_value);
	HRESULT set_ReportInterval(UINT32 value);
	HRESULT get_ReportInterval(UINT32* return_value);
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT add_ReadingChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sensors.Custom.CustomSensor, Windows.Devices.Sensors.Custom.CustomSensorReadingChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadingChanged(EventRegistrationToken token);
}

@uuid("64004f4d-446a-4366-a87a-5f963268ec53")
@WinrtFactory("Windows.Devices.Sensors.Custom.CustomSensorReading")
interface ICustomSensorReading : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
}

@uuid("6b202023-cffd-4cc1-8ff0-e21823d76fcc")
@WinrtFactory("Windows.Devices.Sensors.Custom.CustomSensorReadingChangedEventArgs")
interface ICustomSensorReadingChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reading(Windows.Devices.Sensors.Custom.CustomSensorReading* return_value);
}

@uuid("992052cf-f422-4c7d-836b-e7dc74a7124b")
@WinrtFactory("Windows.Devices.Sensors.Custom.CustomSensor")
interface ICustomSensorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelector(GUID interfaceId, HSTRING* return_result);
	HRESULT abi_FromIdAsync(HSTRING sensorId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Sensors.Custom.CustomSensor)* return_result);
}

interface CustomSensor : Windows.Devices.Sensors.Custom.ICustomSensor
{
extern(Windows):
	final Windows.Devices.Sensors.Custom.CustomSensorReading GetCurrentReading()
	{
		Windows.Devices.Sensors.Custom.CustomSensorReading _ret;
		Debug.OK((cast(Windows.Devices.Sensors.Custom.ICustomSensor)this.asInterface(uuid("a136f9ad-4034-4b4d-99dd-531aac649c09"))).abi_GetCurrentReading(&_ret));
		return _ret;
	}
	final UINT32 MinimumReportInterval()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Sensors.Custom.ICustomSensor)this.asInterface(uuid("a136f9ad-4034-4b4d-99dd-531aac649c09"))).get_MinimumReportInterval(&_ret));
		return _ret;
	}
	final void ReportInterval(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.Sensors.Custom.ICustomSensor)this.asInterface(uuid("a136f9ad-4034-4b4d-99dd-531aac649c09"))).set_ReportInterval(value));
	}
	final UINT32 ReportInterval()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Sensors.Custom.ICustomSensor)this.asInterface(uuid("a136f9ad-4034-4b4d-99dd-531aac649c09"))).get_ReportInterval(&_ret));
		return _ret;
	}
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sensors.Custom.ICustomSensor)this.asInterface(uuid("a136f9ad-4034-4b4d-99dd-531aac649c09"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final EventRegistrationToken OnReadingChanged(void delegate(Windows.Devices.Sensors.Custom.CustomSensor, Windows.Devices.Sensors.Custom.CustomSensorReadingChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Sensors.Custom.ICustomSensor)this.asInterface(uuid("a136f9ad-4034-4b4d-99dd-531aac649c09"))).add_ReadingChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sensors.Custom.CustomSensor, Windows.Devices.Sensors.Custom.CustomSensorReadingChangedEventArgs), Windows.Devices.Sensors.Custom.CustomSensor, Windows.Devices.Sensors.Custom.CustomSensorReadingChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeReadingChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Sensors.Custom.ICustomSensor)this.asInterface(uuid("a136f9ad-4034-4b4d-99dd-531aac649c09"))).remove_ReadingChanged(token));
	}

	private static Windows.Devices.Sensors.Custom.ICustomSensorStatics _staticInstance;
	public static Windows.Devices.Sensors.Custom.ICustomSensorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Sensors.Custom.ICustomSensorStatics);
		return _staticInstance;
	}
	static wstring GetDeviceSelector(GUID interfaceId)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(interfaceId, &_ret));
		return hstring(_ret).d_str;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Sensors.Custom.CustomSensor) FromIdAsync(wstring sensorId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Sensors.Custom.CustomSensor) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(hstring(sensorId).handle, &_ret));
		return _ret;
	}
}

interface CustomSensorReading : Windows.Devices.Sensors.Custom.ICustomSensorReading
{
extern(Windows):
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Devices.Sensors.Custom.ICustomSensorReading)this.asInterface(uuid("64004f4d-446a-4366-a87a-5f963268ec53"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK((cast(Windows.Devices.Sensors.Custom.ICustomSensorReading)this.asInterface(uuid("64004f4d-446a-4366-a87a-5f963268ec53"))).get_Properties(&_ret));
		return _ret;
	}
}

interface CustomSensorReadingChangedEventArgs : Windows.Devices.Sensors.Custom.ICustomSensorReadingChangedEventArgs
{
extern(Windows):
	final Windows.Devices.Sensors.Custom.CustomSensorReading Reading()
	{
		Windows.Devices.Sensors.Custom.CustomSensorReading _ret;
		Debug.OK((cast(Windows.Devices.Sensors.Custom.ICustomSensorReadingChangedEventArgs)this.asInterface(uuid("6b202023-cffd-4cc1-8ff0-e21823d76fcc"))).get_Reading(&_ret));
		return _ret;
	}
}