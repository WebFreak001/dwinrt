module Windows.Devices.Sensors.Custom;

import dwinrt;

@uuid("a136f9ad-4034-4b4d-99dd-531aac649c09")
@WinrtFactory("Windows.Devices.Sensors.Custom.CustomSensor")
interface ICustomSensor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
}

@uuid("6b202023-cffd-4cc1-8ff0-e21823d76fcc")
@WinrtFactory("Windows.Devices.Sensors.Custom.CustomSensorReadingChangedEventArgs")
interface ICustomSensorReadingChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Reading(Windows.Devices.Sensors.Custom.CustomSensorReading* return_value);
}

@uuid("992052cf-f422-4c7d-836b-e7dc74a7124b")
@WinrtFactory("Windows.Devices.Sensors.Custom.CustomSensor")
interface ICustomSensorStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelector(GUID interfaceId, HSTRING* return_result);
	HRESULT abi_FromIdAsync(HSTRING sensorId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Sensors.Custom.CustomSensor)* return_result);
}

interface CustomSensor
{
}

interface CustomSensorReading
{
}

interface CustomSensorReadingChangedEventArgs
{
}