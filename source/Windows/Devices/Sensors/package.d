module Windows.Devices.Sensors;

import dwinrt;

@uuid("df184548-2711-4da7-8098-4b82205d3c7d")
@WinrtFactory("Windows.Devices.Sensors.Accelerometer")
interface IAccelerometer : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentReading(Windows.Devices.Sensors.AccelerometerReading* return_value);
	HRESULT get_MinimumReportInterval(UINT32* return_value);
	HRESULT set_ReportInterval(UINT32 value);
	HRESULT get_ReportInterval(UINT32* return_value);
	HRESULT add_ReadingChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sensors.Accelerometer, Windows.Devices.Sensors.AccelerometerReadingChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadingChanged(EventRegistrationToken token);
	HRESULT add_Shaken(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sensors.Accelerometer, Windows.Devices.Sensors.AccelerometerShakenEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Shaken(EventRegistrationToken token);
}

@uuid("e8f092ee-4964-401a-b602-220d7153c60a")
@WinrtFactory("Windows.Devices.Sensors.Accelerometer")
interface IAccelerometer2 : IInspectable
{
extern(Windows):
	HRESULT set_ReadingTransform(Windows.Graphics.Display.DisplayOrientations value);
	HRESULT get_ReadingTransform(Windows.Graphics.Display.DisplayOrientations* return_value);
}

@uuid("87e0022a-ed80-49eb-bf8a-a4ea31e5cd84")
@WinrtFactory("Windows.Devices.Sensors.Accelerometer")
interface IAccelerometer3 : IInspectable
{
extern(Windows):
	HRESULT set_ReportLatency(UINT32 value);
	HRESULT get_ReportLatency(UINT32* return_value);
	HRESULT get_MaxBatchSize(UINT32* return_value);
}

@uuid("1d373c4f-42d3-45b2-8144-ab7fb665eb59")
@WinrtFactory("Windows.Devices.Sensors.Accelerometer")
interface IAccelerometer4 : IInspectable
{
extern(Windows):
	HRESULT get_ReadingType(Windows.Devices.Sensors.AccelerometerReadingType* return_type);
}

@uuid("7eac64a9-97d5-446d-ab5a-917df9b96a2c")
@WinrtFactory("Windows.Devices.Sensors.Accelerometer")
interface IAccelerometerDeviceId : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("b9fe7acb-d351-40af-8bb6-7aa9ae641fb7")
@WinrtFactory("Windows.Devices.Sensors.AccelerometerReading")
interface IAccelerometerReading : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_AccelerationX(double* return_value);
	HRESULT get_AccelerationY(double* return_value);
	HRESULT get_AccelerationZ(double* return_value);
}

@uuid("0095c65b-b6ac-475a-9f44-8b32d35a3f25")
@WinrtFactory("Windows.Devices.Sensors.AccelerometerReadingChangedEventArgs")
interface IAccelerometerReadingChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reading(Windows.Devices.Sensors.AccelerometerReading* return_value);
}

@uuid("95ff01d1-4a28-4f35-98e8-8178aae4084a")
@WinrtFactory("Windows.Devices.Sensors.AccelerometerShakenEventArgs")
interface IAccelerometerShakenEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
}

@uuid("a5e28b74-5a87-4a2d-becc-0f906ea061dd")
@WinrtFactory("Windows.Devices.Sensors.Accelerometer")
interface IAccelerometerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Devices.Sensors.Accelerometer* return_result);
}

@uuid("c4c4842f-d86b-4685-b2d7-3396f798d57b")
@WinrtFactory("Windows.Devices.Sensors.Accelerometer")
interface IAccelerometerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefaultWithAccelerometerReadingType(Windows.Devices.Sensors.AccelerometerReadingType readingType, Windows.Devices.Sensors.Accelerometer* return_result);
}

@uuid("cd7a630c-fb5f-48eb-b09b-a2708d1c61ef")
@WinrtFactory("Windows.Devices.Sensors.ActivitySensor")
interface IActivitySensor : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentReadingAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Sensors.ActivitySensorReading)* return_result);
	HRESULT get_SubscribedActivities(Windows.Foundation.Collections.IVector!(Windows.Devices.Sensors.ActivityType)* return_value);
	HRESULT get_PowerInMilliwatts(double* return_value);
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_SupportedActivities(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sensors.ActivityType)* return_value);
	HRESULT get_MinimumReportInterval(UINT32* return_value);
	HRESULT add_ReadingChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sensors.ActivitySensor, Windows.Devices.Sensors.ActivitySensorReadingChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadingChanged(EventRegistrationToken token);
}

@uuid("85125a96-1472-40a2-b2ae-e1ef29226c78")
@WinrtFactory("Windows.Devices.Sensors.ActivitySensorReading")
interface IActivitySensorReading : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_Activity(Windows.Devices.Sensors.ActivityType* return_value);
	HRESULT get_Confidence(Windows.Devices.Sensors.ActivitySensorReadingConfidence* return_value);
}

@uuid("4f3c2915-d93b-47bd-960a-f20fb2f322b9")
@WinrtFactory("Windows.Devices.Sensors.ActivitySensorReadingChangeReport")
interface IActivitySensorReadingChangeReport : IInspectable
{
extern(Windows):
	HRESULT get_Reading(Windows.Devices.Sensors.ActivitySensorReading* return_value);
}

@uuid("de386717-aeb6-4ec7-946a-d9cc19b951ec")
@WinrtFactory("Windows.Devices.Sensors.ActivitySensorReadingChangedEventArgs")
interface IActivitySensorReadingChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reading(Windows.Devices.Sensors.ActivitySensorReading* return_value);
}

@uuid("a71e0e9d-ee8b-45d1-b25b-08cc0df92ab6")
@WinrtFactory("Windows.Devices.Sensors.ActivitySensor")
interface IActivitySensorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Sensors.ActivitySensor)* return_result);
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Sensors.ActivitySensor)* return_result);
	HRESULT abi_GetSystemHistoryAsync(Windows.Foundation.DateTime fromTime, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sensors.ActivitySensorReading))* return_result);
	HRESULT abi_GetSystemHistoryWithDurationAsync(Windows.Foundation.DateTime fromTime, Windows.Foundation.TimeSpan duration, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sensors.ActivitySensorReading))* return_result);
}

@uuid("2c9e6612-b9ca-4677-b263-243297f79d3a")
@WinrtFactory("Windows.Devices.Sensors.ActivitySensorTriggerDetails")
interface IActivitySensorTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT abi_ReadReports(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sensors.ActivitySensorReadingChangeReport)* return_value);
}

@uuid("72f057fd-8f04-49f1-b4a7-f4e363b701a2")
@WinrtFactory("Windows.Devices.Sensors.Altimeter")
interface IAltimeter : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentReading(Windows.Devices.Sensors.AltimeterReading* return_value);
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_MinimumReportInterval(UINT32* return_value);
	HRESULT set_ReportInterval(UINT32 value);
	HRESULT get_ReportInterval(UINT32* return_value);
	HRESULT add_ReadingChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sensors.Altimeter, Windows.Devices.Sensors.AltimeterReadingChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadingChanged(EventRegistrationToken token);
}

@uuid("fbe8ef73-7f5e-48c8-aa1a-f1f3befc1144")
@WinrtFactory("Windows.Devices.Sensors.AltimeterReading")
interface IAltimeterReading : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_AltitudeChangeInMeters(double* return_value);
}

@uuid("7069d077-446d-47f7-998c-ebc23b45e4a2")
@WinrtFactory("Windows.Devices.Sensors.AltimeterReadingChangedEventArgs")
interface IAltimeterReadingChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reading(Windows.Devices.Sensors.AltimeterReading* return_value);
}

@uuid("9eb4d7c3-e5ac-47ce-8eef-d3718168c01f")
@WinrtFactory("Windows.Devices.Sensors.Altimeter")
interface IAltimeterStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Devices.Sensors.Altimeter* return_result);
}

@uuid("934475a8-78bf-452f-b017-f0209ce6dab4")
@WinrtFactory("Windows.Devices.Sensors.Barometer")
interface IBarometer : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentReading(Windows.Devices.Sensors.BarometerReading* return_value);
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_MinimumReportInterval(UINT32* return_value);
	HRESULT set_ReportInterval(UINT32 value);
	HRESULT get_ReportInterval(UINT32* return_value);
	HRESULT add_ReadingChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sensors.Barometer, Windows.Devices.Sensors.BarometerReadingChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadingChanged(EventRegistrationToken token);
}

@uuid("f5b9d2e6-1df6-4a1a-a7ad-321d4f5db247")
@WinrtFactory("Windows.Devices.Sensors.BarometerReading")
interface IBarometerReading : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_StationPressureInHectopascals(double* return_value);
}

@uuid("3d84945f-037b-404f-9bbb-6232d69543c3")
@WinrtFactory("Windows.Devices.Sensors.BarometerReadingChangedEventArgs")
interface IBarometerReadingChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reading(Windows.Devices.Sensors.BarometerReading* return_value);
}

@uuid("286b270a-02e3-4f86-84fc-fdd892b5940f")
@WinrtFactory("Windows.Devices.Sensors.Barometer")
interface IBarometerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Devices.Sensors.Barometer* return_result);
}

@uuid("292ffa94-1b45-403c-ba06-b106dba69a64")
@WinrtFactory("Windows.Devices.Sensors.Compass")
interface ICompass : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentReading(Windows.Devices.Sensors.CompassReading* return_value);
	HRESULT get_MinimumReportInterval(UINT32* return_value);
	HRESULT set_ReportInterval(UINT32 value);
	HRESULT get_ReportInterval(UINT32* return_value);
	HRESULT add_ReadingChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sensors.Compass, Windows.Devices.Sensors.CompassReadingChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadingChanged(EventRegistrationToken token);
}

@uuid("36f26d09-c7d7-434f-b461-979ddfc2322f")
@WinrtFactory("Windows.Devices.Sensors.Compass")
interface ICompass2 : IInspectable
{
extern(Windows):
	HRESULT set_ReadingTransform(Windows.Graphics.Display.DisplayOrientations value);
	HRESULT get_ReadingTransform(Windows.Graphics.Display.DisplayOrientations* return_value);
}

@uuid("d181ca29-b085-4b1d-870a-4ff57ba74fd4")
@WinrtFactory("Windows.Devices.Sensors.Compass")
interface ICompassDeviceId : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("82911128-513d-4dc9-b781-5eedfbf02d0c")
@WinrtFactory("Windows.Devices.Sensors.CompassReading")
interface ICompassReading : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_HeadingMagneticNorth(double* return_value);
	HRESULT get_HeadingTrueNorth(Windows.Foundation.IReference!(double)* return_value);
}

@uuid("8f1549b0-e8bc-4c7e-b009-4e41df137072")
@WinrtFactory("Windows.Devices.Sensors.CompassReadingChangedEventArgs")
interface ICompassReadingChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reading(Windows.Devices.Sensors.CompassReading* return_value);
}

@uuid("e761354e-8911-40f7-9e16-6ecc7daec5de")
@WinrtFactory("Windows.Devices.Sensors.CompassReading")
interface ICompassReadingHeadingAccuracy : IInspectable
{
extern(Windows):
	HRESULT get_HeadingAccuracy(Windows.Devices.Sensors.MagnetometerAccuracy* return_value);
}

@uuid("9abc97df-56ec-4c25-b54d-40a68bb5b269")
@WinrtFactory("Windows.Devices.Sensors.Compass")
interface ICompassStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Devices.Sensors.Compass* return_result);
}

@uuid("fdb9a9c4-84b1-4ca2-9763-9b589506c70c")
@WinrtFactory("Windows.Devices.Sensors.Gyrometer")
interface IGyrometer : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentReading(Windows.Devices.Sensors.GyrometerReading* return_value);
	HRESULT get_MinimumReportInterval(UINT32* return_value);
	HRESULT set_ReportInterval(UINT32 value);
	HRESULT get_ReportInterval(UINT32* return_value);
	HRESULT add_ReadingChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sensors.Gyrometer, Windows.Devices.Sensors.GyrometerReadingChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadingChanged(EventRegistrationToken token);
}

@uuid("63df2443-8ce8-41c3-ac44-8698810b557f")
@WinrtFactory("Windows.Devices.Sensors.Gyrometer")
interface IGyrometer2 : IInspectable
{
extern(Windows):
	HRESULT set_ReadingTransform(Windows.Graphics.Display.DisplayOrientations value);
	HRESULT get_ReadingTransform(Windows.Graphics.Display.DisplayOrientations* return_value);
}

@uuid("1ee5e978-89a2-4275-9e95-7126f4708760")
@WinrtFactory("Windows.Devices.Sensors.Gyrometer")
interface IGyrometerDeviceId : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("b3d6de5c-1ee4-456f-9de7-e2493b5c8e03")
@WinrtFactory("Windows.Devices.Sensors.GyrometerReading")
interface IGyrometerReading : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_AngularVelocityX(double* return_value);
	HRESULT get_AngularVelocityY(double* return_value);
	HRESULT get_AngularVelocityZ(double* return_value);
}

@uuid("0fdf1895-6f9e-42ce-8d58-388c0ab8356d")
@WinrtFactory("Windows.Devices.Sensors.GyrometerReadingChangedEventArgs")
interface IGyrometerReadingChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reading(Windows.Devices.Sensors.GyrometerReading* return_value);
}

@uuid("83b6e7c9-e49d-4b39-86e6-cd554be4c5c1")
@WinrtFactory("Windows.Devices.Sensors.Gyrometer")
interface IGyrometerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Devices.Sensors.Gyrometer* return_result);
}

@uuid("2648ca6f-2286-406f-9161-f0c4bd806ebf")
@WinrtFactory("Windows.Devices.Sensors.Inclinometer")
interface IInclinometer : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentReading(Windows.Devices.Sensors.InclinometerReading* return_value);
	HRESULT get_MinimumReportInterval(UINT32* return_value);
	HRESULT set_ReportInterval(UINT32 value);
	HRESULT get_ReportInterval(UINT32* return_value);
	HRESULT add_ReadingChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sensors.Inclinometer, Windows.Devices.Sensors.InclinometerReadingChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadingChanged(EventRegistrationToken token);
}

@uuid("029f3393-28b2-45f8-bb16-61e86a7fae6e")
@WinrtFactory("Windows.Devices.Sensors.Inclinometer")
interface IInclinometer2 : IInspectable
{
extern(Windows):
	HRESULT set_ReadingTransform(Windows.Graphics.Display.DisplayOrientations value);
	HRESULT get_ReadingTransform(Windows.Graphics.Display.DisplayOrientations* return_value);
	HRESULT get_ReadingType(Windows.Devices.Sensors.SensorReadingType* return_type);
}

@uuid("01e91982-41ff-4406-ae83-62210ff16fe3")
@WinrtFactory("Windows.Devices.Sensors.Inclinometer")
interface IInclinometerDeviceId : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("9f44f055-b6f6-497f-b127-1a775e501458")
@WinrtFactory("Windows.Devices.Sensors.InclinometerReading")
interface IInclinometerReading : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_PitchDegrees(FLOAT* return_value);
	HRESULT get_RollDegrees(FLOAT* return_value);
	HRESULT get_YawDegrees(FLOAT* return_value);
}

@uuid("4ae91dc1-e7eb-4938-8511-ae0d6b440438")
@WinrtFactory("Windows.Devices.Sensors.InclinometerReadingChangedEventArgs")
interface IInclinometerReadingChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reading(Windows.Devices.Sensors.InclinometerReading* return_value);
}

@uuid("b453e880-1fe3-4986-a257-e6ece2723949")
@WinrtFactory("Windows.Devices.Sensors.InclinometerReading")
interface IInclinometerReadingYawAccuracy : IInspectable
{
extern(Windows):
	HRESULT get_YawAccuracy(Windows.Devices.Sensors.MagnetometerAccuracy* return_value);
}

@uuid("f22ec551-9c30-453a-8b49-3c3eeb33cb61")
@WinrtFactory("Windows.Devices.Sensors.Inclinometer")
interface IInclinometerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Devices.Sensors.Inclinometer* return_result);
}

@uuid("043f9775-6a1e-499c-86e0-638c1a864b00")
@WinrtFactory("Windows.Devices.Sensors.Inclinometer")
interface IInclinometerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefaultForRelativeReadings(Windows.Devices.Sensors.Inclinometer* return_result);
}

@uuid("bd9a4280-b91a-4829-9392-abc0b6bdf2b4")
@WinrtFactory("Windows.Devices.Sensors.Inclinometer")
interface IInclinometerStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefaultWithSensorReadingType(Windows.Devices.Sensors.SensorReadingType sensorReadingtype, Windows.Devices.Sensors.Inclinometer* return_result);
}

@uuid("f84c0718-0c54-47ae-922e-789f57fb03a0")
@WinrtFactory("Windows.Devices.Sensors.LightSensor")
interface ILightSensor : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentReading(Windows.Devices.Sensors.LightSensorReading* return_value);
	HRESULT get_MinimumReportInterval(UINT32* return_value);
	HRESULT set_ReportInterval(UINT32 value);
	HRESULT get_ReportInterval(UINT32* return_value);
	HRESULT add_ReadingChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sensors.LightSensor, Windows.Devices.Sensors.LightSensorReadingChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadingChanged(EventRegistrationToken token);
}

@uuid("7fee49f8-0afb-4f51-87f0-6c26375ce94f")
@WinrtFactory("Windows.Devices.Sensors.LightSensor")
interface ILightSensorDeviceId : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("ffdf6300-227c-4d2b-b302-fc0142485c68")
@WinrtFactory("Windows.Devices.Sensors.LightSensorReading")
interface ILightSensorReading : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_IlluminanceInLux(FLOAT* return_value);
}

@uuid("a3a2f4cf-258b-420c-b8ab-8edd601ecf50")
@WinrtFactory("Windows.Devices.Sensors.LightSensorReadingChangedEventArgs")
interface ILightSensorReadingChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reading(Windows.Devices.Sensors.LightSensorReading* return_value);
}

@uuid("45db8c84-c3a8-471e-9a53-6457fad87c0e")
@WinrtFactory("Windows.Devices.Sensors.LightSensor")
interface ILightSensorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Devices.Sensors.LightSensor* return_result);
}

@uuid("484f626e-d3c9-4111-b3f6-2cf1faa418d5")
@WinrtFactory("Windows.Devices.Sensors.Magnetometer")
interface IMagnetometer : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentReading(Windows.Devices.Sensors.MagnetometerReading* return_value);
	HRESULT get_MinimumReportInterval(UINT32* return_value);
	HRESULT set_ReportInterval(UINT32 value);
	HRESULT get_ReportInterval(UINT32* return_value);
	HRESULT add_ReadingChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sensors.Magnetometer, Windows.Devices.Sensors.MagnetometerReadingChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadingChanged(EventRegistrationToken token);
}

@uuid("b4656c85-26f6-444b-a9e2-a23f966cd368")
@WinrtFactory("Windows.Devices.Sensors.Magnetometer")
interface IMagnetometer2 : IInspectable
{
extern(Windows):
	HRESULT set_ReadingTransform(Windows.Graphics.Display.DisplayOrientations value);
	HRESULT get_ReadingTransform(Windows.Graphics.Display.DisplayOrientations* return_value);
}

@uuid("58b498c2-7e4b-404c-9fc5-5de8b40ebae3")
@WinrtFactory("Windows.Devices.Sensors.Magnetometer")
interface IMagnetometerDeviceId : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("0c2cc40d-ebfd-4e5c-bb11-afc29b3cae61")
@WinrtFactory("Windows.Devices.Sensors.MagnetometerReading")
interface IMagnetometerReading : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_MagneticFieldX(FLOAT* return_value);
	HRESULT get_MagneticFieldY(FLOAT* return_value);
	HRESULT get_MagneticFieldZ(FLOAT* return_value);
	HRESULT get_DirectionalAccuracy(Windows.Devices.Sensors.MagnetometerAccuracy* return_value);
}

@uuid("17eae872-2eb9-4ee7-8ad0-3127537d949b")
@WinrtFactory("Windows.Devices.Sensors.MagnetometerReadingChangedEventArgs")
interface IMagnetometerReadingChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reading(Windows.Devices.Sensors.MagnetometerReading* return_value);
}

@uuid("853c64cc-0698-4dda-a6df-9cb9cc4ab40a")
@WinrtFactory("Windows.Devices.Sensors.Magnetometer")
interface IMagnetometerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Devices.Sensors.Magnetometer* return_result);
}

@uuid("5e354635-cf6b-4c63-abd8-10252b0bf6ec")
@WinrtFactory("Windows.Devices.Sensors.OrientationSensor")
interface IOrientationSensor : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentReading(Windows.Devices.Sensors.OrientationSensorReading* return_value);
	HRESULT get_MinimumReportInterval(UINT32* return_value);
	HRESULT set_ReportInterval(UINT32 value);
	HRESULT get_ReportInterval(UINT32* return_value);
	HRESULT add_ReadingChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sensors.OrientationSensor, Windows.Devices.Sensors.OrientationSensorReadingChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadingChanged(EventRegistrationToken token);
}

@uuid("0d924cf9-2f1f-49c9-8042-4a1813d67760")
@WinrtFactory("Windows.Devices.Sensors.OrientationSensor")
interface IOrientationSensor2 : IInspectable
{
extern(Windows):
	HRESULT set_ReadingTransform(Windows.Graphics.Display.DisplayOrientations value);
	HRESULT get_ReadingTransform(Windows.Graphics.Display.DisplayOrientations* return_value);
	HRESULT get_ReadingType(Windows.Devices.Sensors.SensorReadingType* return_type);
}

@uuid("5a69b648-4c29-49ec-b28f-ea1d117b66f0")
@WinrtFactory("Windows.Devices.Sensors.OrientationSensor")
interface IOrientationSensorDeviceId : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("4756c993-6595-4897-bcc6-d537ee757564")
@WinrtFactory("Windows.Devices.Sensors.OrientationSensorReading")
interface IOrientationSensorReading : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_RotationMatrix(Windows.Devices.Sensors.SensorRotationMatrix* return_value);
	HRESULT get_Quaternion(Windows.Devices.Sensors.SensorQuaternion* return_value);
}

@uuid("012c1186-c3ba-46bc-ae65-7a98996cbfb8")
@WinrtFactory("Windows.Devices.Sensors.OrientationSensorReadingChangedEventArgs")
interface IOrientationSensorReadingChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reading(Windows.Devices.Sensors.OrientationSensorReading* return_value);
}

@uuid("d1ac9824-3f5a-49a2-bc7b-1180bc38cd2b")
@WinrtFactory("Windows.Devices.Sensors.OrientationSensorReading")
interface IOrientationSensorReadingYawAccuracy : IInspectable
{
extern(Windows):
	HRESULT get_YawAccuracy(Windows.Devices.Sensors.MagnetometerAccuracy* return_value);
}

@uuid("10ef8712-fb4c-428a-898b-2765e409e669")
@WinrtFactory("Windows.Devices.Sensors.OrientationSensor")
interface IOrientationSensorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Devices.Sensors.OrientationSensor* return_result);
}

@uuid("59da0d0b-d40a-4c71-9276-8a272a0a6619")
@WinrtFactory("Windows.Devices.Sensors.OrientationSensor")
interface IOrientationSensorStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefaultForRelativeReadings(Windows.Devices.Sensors.OrientationSensor* return_result);
}

@uuid("d82ce920-2777-40ff-9f59-d654b085f12f")
@WinrtFactory("Windows.Devices.Sensors.OrientationSensor")
interface IOrientationSensorStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefaultWithSensorReadingType(Windows.Devices.Sensors.SensorReadingType sensorReadingtype, Windows.Devices.Sensors.OrientationSensor* return_result);
	HRESULT abi_GetDefaultWithSensorReadingTypeAndSensorOptimizationGoal(Windows.Devices.Sensors.SensorReadingType sensorReadingType, Windows.Devices.Sensors.SensorOptimizationGoal optimizationGoal, Windows.Devices.Sensors.OrientationSensor* return_result);
}

@uuid("9a1e013d-3d98-45f8-8920-8e4ecaca5f97")
@WinrtFactory("Windows.Devices.Sensors.Pedometer")
interface IPedometer : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_PowerInMilliwatts(double* return_value);
	HRESULT get_MinimumReportInterval(UINT32* return_value);
	HRESULT set_ReportInterval(UINT32 value);
	HRESULT get_ReportInterval(UINT32* return_value);
	HRESULT add_ReadingChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sensors.Pedometer, Windows.Devices.Sensors.PedometerReadingChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadingChanged(EventRegistrationToken token);
}

@uuid("e5a406df-2b81-4add-b2ff-77ab6c98ba19")
@WinrtFactory("Windows.Devices.Sensors.Pedometer")
interface IPedometer2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentReadings(Windows.Foundation.Collections.IMapView!(Windows.Devices.Sensors.PedometerStepKind, Windows.Devices.Sensors.PedometerReading)* return_value);
}

@uuid("cbad8f50-7a54-466b-9010-77a162fca5d7")
@WinrtFactory("Windows.Devices.Sensors.PedometerDataThreshold")
interface IPedometerDataThresholdFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Devices.Sensors.Pedometer sensor, INT32 stepGoal, Windows.Devices.Sensors.PedometerDataThreshold* return_threshold);
}

@uuid("2245dcf4-a8e1-432f-896a-be0dd9b02d24")
@WinrtFactory("Windows.Devices.Sensors.PedometerReading")
interface IPedometerReading : IInspectable
{
extern(Windows):
	HRESULT get_StepKind(Windows.Devices.Sensors.PedometerStepKind* return_value);
	HRESULT get_CumulativeSteps(INT32* return_value);
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_CumulativeStepsDuration(Windows.Foundation.TimeSpan* return_value);
}

@uuid("f855e47e-abbc-4456-86a8-25cf2b333742")
@WinrtFactory("Windows.Devices.Sensors.PedometerReadingChangedEventArgs")
interface IPedometerReadingChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reading(Windows.Devices.Sensors.PedometerReading* return_value);
}

@uuid("82980a2f-4083-4dfb-b411-938ea0f4b946")
@WinrtFactory("Windows.Devices.Sensors.Pedometer")
interface IPedometerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Sensors.Pedometer)* return_operation);
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Sensors.Pedometer)* return_operation);
	HRESULT abi_GetDeviceSelector(HSTRING* return_result);
	HRESULT abi_GetSystemHistoryAsync(Windows.Foundation.DateTime fromTime, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sensors.PedometerReading))* return_operation);
	HRESULT abi_GetSystemHistoryWithDurationAsync(Windows.Foundation.DateTime fromTime, Windows.Foundation.TimeSpan duration, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sensors.PedometerReading))* return_operation);
}

@uuid("79f5c6bb-ce0e-4133-b47e-8627ea72f677")
@WinrtFactory("Windows.Devices.Sensors.Pedometer")
interface IPedometerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetReadingsFromTriggerDetails(Windows.Devices.Sensors.SensorDataThresholdTriggerDetails triggerDetails, Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sensors.PedometerReading)* return_result);
}

@uuid("54c076b8-ecfb-4944-b928-74fc504d47ee")
@WinrtFactory("Windows.Devices.Sensors.ProximitySensor")
interface IProximitySensor : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_MaxDistanceInMillimeters(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_MinDistanceInMillimeters(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT abi_GetCurrentReading(Windows.Devices.Sensors.ProximitySensorReading* return_value);
	HRESULT add_ReadingChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sensors.ProximitySensor, Windows.Devices.Sensors.ProximitySensorReadingChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadingChanged(EventRegistrationToken token);
	HRESULT abi_CreateDisplayOnOffController(Windows.Devices.Sensors.ProximitySensorDisplayOnOffController* return_controller);
}

@uuid("905ac121-6d27-4ad3-9db5-6467f2a5ad9d")
@WinrtFactory("Windows.Devices.Sensors.ProximitySensorDataThreshold")
interface IProximitySensorDataThresholdFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Devices.Sensors.ProximitySensor sensor, Windows.Devices.Sensors.ProximitySensorDataThreshold* return_threshold);
}

@uuid("71228d59-132d-4d5f-8ff9-2f0db8751ced")
@WinrtFactory("Windows.Devices.Sensors.ProximitySensorReading")
interface IProximitySensorReading : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_IsDetected(bool* return_value);
	HRESULT get_DistanceInMillimeters(Windows.Foundation.IReference!(UINT32)* return_value);
}

@uuid("cfc2f366-c3e8-40fd-8cc3-67e289004938")
@WinrtFactory("Windows.Devices.Sensors.ProximitySensorReadingChangedEventArgs")
interface IProximitySensorReadingChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reading(Windows.Devices.Sensors.ProximitySensorReading* return_value);
}

@uuid("29186649-6269-4e57-a5ad-82be80813392")
@WinrtFactory("Windows.Devices.Sensors.ProximitySensor")
interface IProximitySensorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
	HRESULT abi_FromId(HSTRING sensorId, Windows.Devices.Sensors.ProximitySensor* return_result);
}

@uuid("cbf473ae-e9ca-422f-ad67-4c3d25df350c")
@WinrtFactory("Windows.Devices.Sensors.ProximitySensor")
interface IProximitySensorStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetReadingsFromTriggerDetails(Windows.Devices.Sensors.SensorDataThresholdTriggerDetails triggerDetails, Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sensors.ProximitySensorReading)* return_result);
}

@uuid("54daec61-fe4b-4e07-b260-3a4cdfbe396e")
interface ISensorDataThreshold : IInspectable
{
}

@uuid("9106f1b7-e88d-48b1-bc90-619c7b349391")
@WinrtFactory("Windows.Devices.Sensors.SensorDataThresholdTriggerDetails")
interface ISensorDataThresholdTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_SensorType(Windows.Devices.Sensors.SensorType* return_value);
}

@uuid("c9c5c827-c71c-46e7-9da3-36a193b232bc")
@WinrtFactory("Windows.Devices.Sensors.SensorQuaternion")
interface ISensorQuaternion : IInspectable
{
extern(Windows):
	HRESULT get_W(FLOAT* return_value);
	HRESULT get_X(FLOAT* return_value);
	HRESULT get_Y(FLOAT* return_value);
	HRESULT get_Z(FLOAT* return_value);
}

@uuid("0a3d5a67-22f4-4392-9538-65d0bd064aa6")
@WinrtFactory("Windows.Devices.Sensors.SensorRotationMatrix")
interface ISensorRotationMatrix : IInspectable
{
extern(Windows):
	HRESULT get_M11(FLOAT* return_value);
	HRESULT get_M12(FLOAT* return_value);
	HRESULT get_M13(FLOAT* return_value);
	HRESULT get_M21(FLOAT* return_value);
	HRESULT get_M22(FLOAT* return_value);
	HRESULT get_M23(FLOAT* return_value);
	HRESULT get_M31(FLOAT* return_value);
	HRESULT get_M32(FLOAT* return_value);
	HRESULT get_M33(FLOAT* return_value);
}

@uuid("5ff53856-214a-4dee-a3f9-616f1ab06ffd")
@WinrtFactory("Windows.Devices.Sensors.SimpleOrientationSensor")
interface ISimpleOrientationSensor : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentOrientation(Windows.Devices.Sensors.SimpleOrientation* return_value);
	HRESULT add_OrientationChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sensors.SimpleOrientationSensor, Windows.Devices.Sensors.SimpleOrientationSensorOrientationChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_OrientationChanged(EventRegistrationToken token);
}

@uuid("a277a798-8870-453e-8bd6-b8f5d8d7941b")
@WinrtFactory("Windows.Devices.Sensors.SimpleOrientationSensor")
interface ISimpleOrientationSensor2 : IInspectable
{
extern(Windows):
	HRESULT set_ReadingTransform(Windows.Graphics.Display.DisplayOrientations value);
	HRESULT get_ReadingTransform(Windows.Graphics.Display.DisplayOrientations* return_value);
}

@uuid("fbc00acb-3b76-41f6-8091-30efe646d3cf")
@WinrtFactory("Windows.Devices.Sensors.SimpleOrientationSensor")
interface ISimpleOrientationSensorDeviceId : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("bcd5c660-23d4-4b4c-a22e-ba81ade0c601")
@WinrtFactory("Windows.Devices.Sensors.SimpleOrientationSensorOrientationChangedEventArgs")
interface ISimpleOrientationSensorOrientationChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_Orientation(Windows.Devices.Sensors.SimpleOrientation* return_value);
}

@uuid("72ed066f-70aa-40c6-9b1b-3433f7459b4e")
@WinrtFactory("Windows.Devices.Sensors.SimpleOrientationSensor")
interface ISimpleOrientationSensorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Devices.Sensors.SimpleOrientationSensor* return_result);
}

interface Accelerometer : Windows.Devices.Sensors.IAccelerometer, Windows.Devices.Sensors.IAccelerometerDeviceId, Windows.Devices.Sensors.IAccelerometer2, Windows.Devices.Sensors.IAccelerometer3, Windows.Devices.Sensors.IAccelerometer4
{
}

interface AccelerometerReading : Windows.Devices.Sensors.IAccelerometerReading
{
}

interface AccelerometerReadingChangedEventArgs : Windows.Devices.Sensors.IAccelerometerReadingChangedEventArgs
{
}

interface AccelerometerShakenEventArgs : Windows.Devices.Sensors.IAccelerometerShakenEventArgs
{
}

interface ActivitySensor : Windows.Devices.Sensors.IActivitySensor
{
}

interface ActivitySensorReading : Windows.Devices.Sensors.IActivitySensorReading
{
}

interface ActivitySensorReadingChangeReport : Windows.Devices.Sensors.IActivitySensorReadingChangeReport
{
}

interface ActivitySensorReadingChangedEventArgs : Windows.Devices.Sensors.IActivitySensorReadingChangedEventArgs
{
}

interface ActivitySensorTriggerDetails : Windows.Devices.Sensors.IActivitySensorTriggerDetails
{
}

interface Altimeter : Windows.Devices.Sensors.IAltimeter
{
}

interface AltimeterReading : Windows.Devices.Sensors.IAltimeterReading
{
}

interface AltimeterReadingChangedEventArgs : Windows.Devices.Sensors.IAltimeterReadingChangedEventArgs
{
}

interface Barometer : Windows.Devices.Sensors.IBarometer
{
}

interface BarometerReading : Windows.Devices.Sensors.IBarometerReading
{
}

interface BarometerReadingChangedEventArgs : Windows.Devices.Sensors.IBarometerReadingChangedEventArgs
{
}

interface Compass : Windows.Devices.Sensors.ICompass, Windows.Devices.Sensors.ICompassDeviceId, Windows.Devices.Sensors.ICompass2
{
}

interface CompassReading : Windows.Devices.Sensors.ICompassReading, Windows.Devices.Sensors.ICompassReadingHeadingAccuracy
{
}

interface CompassReadingChangedEventArgs : Windows.Devices.Sensors.ICompassReadingChangedEventArgs
{
}

interface Gyrometer : Windows.Devices.Sensors.IGyrometer, Windows.Devices.Sensors.IGyrometerDeviceId, Windows.Devices.Sensors.IGyrometer2
{
}

interface GyrometerReading : Windows.Devices.Sensors.IGyrometerReading
{
}

interface GyrometerReadingChangedEventArgs : Windows.Devices.Sensors.IGyrometerReadingChangedEventArgs
{
}

interface Inclinometer : Windows.Devices.Sensors.IInclinometer, Windows.Devices.Sensors.IInclinometerDeviceId, Windows.Devices.Sensors.IInclinometer2
{
}

interface InclinometerReading : Windows.Devices.Sensors.IInclinometerReading, Windows.Devices.Sensors.IInclinometerReadingYawAccuracy
{
}

interface InclinometerReadingChangedEventArgs : Windows.Devices.Sensors.IInclinometerReadingChangedEventArgs
{
}

interface LightSensor : Windows.Devices.Sensors.ILightSensor, Windows.Devices.Sensors.ILightSensorDeviceId
{
}

interface LightSensorReading : Windows.Devices.Sensors.ILightSensorReading
{
}

interface LightSensorReadingChangedEventArgs : Windows.Devices.Sensors.ILightSensorReadingChangedEventArgs
{
}

interface Magnetometer : Windows.Devices.Sensors.IMagnetometer, Windows.Devices.Sensors.IMagnetometerDeviceId, Windows.Devices.Sensors.IMagnetometer2
{
}

interface MagnetometerReading : Windows.Devices.Sensors.IMagnetometerReading
{
}

interface MagnetometerReadingChangedEventArgs : Windows.Devices.Sensors.IMagnetometerReadingChangedEventArgs
{
}

interface OrientationSensor : Windows.Devices.Sensors.IOrientationSensor, Windows.Devices.Sensors.IOrientationSensorDeviceId, Windows.Devices.Sensors.IOrientationSensor2
{
}

interface OrientationSensorReading : Windows.Devices.Sensors.IOrientationSensorReading, Windows.Devices.Sensors.IOrientationSensorReadingYawAccuracy
{
}

interface OrientationSensorReadingChangedEventArgs : Windows.Devices.Sensors.IOrientationSensorReadingChangedEventArgs
{
}

interface Pedometer : Windows.Devices.Sensors.IPedometer, Windows.Devices.Sensors.IPedometer2
{
}

interface PedometerDataThreshold : Windows.Devices.Sensors.ISensorDataThreshold
{
}

interface PedometerReading : Windows.Devices.Sensors.IPedometerReading
{
}

interface PedometerReadingChangedEventArgs : Windows.Devices.Sensors.IPedometerReadingChangedEventArgs
{
}

interface ProximitySensor : Windows.Devices.Sensors.IProximitySensor
{
}

interface ProximitySensorDataThreshold : Windows.Devices.Sensors.ISensorDataThreshold
{
}

interface ProximitySensorDisplayOnOffController : Windows.Foundation.IClosable
{
}

interface ProximitySensorReading : Windows.Devices.Sensors.IProximitySensorReading
{
}

interface ProximitySensorReadingChangedEventArgs : Windows.Devices.Sensors.IProximitySensorReadingChangedEventArgs
{
}

interface SensorDataThresholdTriggerDetails : Windows.Devices.Sensors.ISensorDataThresholdTriggerDetails
{
}

interface SensorQuaternion : Windows.Devices.Sensors.ISensorQuaternion
{
}

interface SensorRotationMatrix : Windows.Devices.Sensors.ISensorRotationMatrix
{
}

interface SimpleOrientationSensor : Windows.Devices.Sensors.ISimpleOrientationSensor, Windows.Devices.Sensors.ISimpleOrientationSensorDeviceId, Windows.Devices.Sensors.ISimpleOrientationSensor2
{
}

interface SimpleOrientationSensorOrientationChangedEventArgs : Windows.Devices.Sensors.ISimpleOrientationSensorOrientationChangedEventArgs
{
}

enum AccelerometerReadingType
{
	Standard = 0,
	Linear = 1,
	Gravity = 2
}

enum ActivitySensorReadingConfidence
{
	High = 0,
	Low = 1
}

enum ActivityType
{
	Unknown = 0,
	Idle = 1,
	Stationary = 2,
	Fidgeting = 3,
	Walking = 4,
	Running = 5,
	InVehicle = 6,
	Biking = 7
}

enum MagnetometerAccuracy
{
	Unknown = 0,
	Unreliable = 1,
	Approximate = 2,
	High = 3
}

enum PedometerStepKind
{
	Unknown = 0,
	Walking = 1,
	Running = 2
}

enum SensorOptimizationGoal
{
	Precision = 0,
	PowerEfficiency = 1
}

enum SensorReadingType
{
	Absolute = 0,
	Relative = 1
}

enum SensorType
{
	Accelerometer = 0,
	ActivitySensor = 1,
	Barometer = 2,
	Compass = 3,
	CustomSensor = 4,
	Gyroscope = 5,
	ProximitySensor = 6,
	Inclinometer = 7,
	LightSensor = 8,
	OrientationSensor = 9,
	Pedometer = 10,
	RelativeInclinometer = 11,
	RelativeOrientationSensor = 12,
	SimpleOrientationSensor = 13
}

enum SimpleOrientation
{
	NotRotated = 0,
	Rotated90DegreesCounterclockwise = 1,
	Rotated180DegreesCounterclockwise = 2,
	Rotated270DegreesCounterclockwise = 3,
	Faceup = 4,
	Facedown = 5
}