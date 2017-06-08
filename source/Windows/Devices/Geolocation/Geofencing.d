module Windows.Devices.Geolocation.Geofencing;

import dwinrt;

@uuid("9c090823-edb8-47e0-8245-5bf61d321f2d")
@WinrtFactory("Windows.Devices.Geolocation.Geofencing.Geofence")
interface IGeofence : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StartTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_DwellTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_MonitoredStates(Windows.Devices.Geolocation.Geofencing.MonitoredGeofenceStates* return_value);
	HRESULT get_Geoshape(Windows.Devices.Geolocation.IGeoshape* return_value);
	HRESULT get_SingleUse(bool* return_value);
}

@uuid("841f624b-325f-4b90-bca7-2b8022a93796")
@WinrtFactory("Windows.Devices.Geolocation.Geofencing.Geofence")
interface IGeofenceFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING id, Windows.Devices.Geolocation.IGeoshape geoshape, Windows.Devices.Geolocation.Geofencing.Geofence* return_geofence);
	HRESULT abi_CreateWithMonitorStates(HSTRING id, Windows.Devices.Geolocation.IGeoshape geoshape, Windows.Devices.Geolocation.Geofencing.MonitoredGeofenceStates monitoredStates, bool singleUse, Windows.Devices.Geolocation.Geofencing.Geofence* return_geofence);
	HRESULT abi_CreateWithMonitorStatesAndDwellTime(HSTRING id, Windows.Devices.Geolocation.IGeoshape geoshape, Windows.Devices.Geolocation.Geofencing.MonitoredGeofenceStates monitoredStates, bool singleUse, Windows.Foundation.TimeSpan dwellTime, Windows.Devices.Geolocation.Geofencing.Geofence* return_geofence);
	HRESULT abi_CreateWithMonitorStatesDwellTimeStartTimeAndDuration(HSTRING id, Windows.Devices.Geolocation.IGeoshape geoshape, Windows.Devices.Geolocation.Geofencing.MonitoredGeofenceStates monitoredStates, bool singleUse, Windows.Foundation.TimeSpan dwellTime, Windows.Foundation.DateTime startTime, Windows.Foundation.TimeSpan duration, Windows.Devices.Geolocation.Geofencing.Geofence* return_geofence);
}

@uuid("4c0f5f78-1c1f-4621-bbbd-833b92247226")
@WinrtFactory("Windows.Devices.Geolocation.Geofencing.GeofenceMonitor")
interface IGeofenceMonitor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Devices.Geolocation.Geofencing.GeofenceMonitorStatus* return_value);
	HRESULT get_Geofences(Windows.Foundation.Collections.IVector!(Windows.Devices.Geolocation.Geofencing.Geofence)* return_value);
	HRESULT get_LastKnownGeoposition(Windows.Devices.Geolocation.Geoposition* return_value);
	HRESULT add_GeofenceStateChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Geolocation.Geofencing.GeofenceMonitor*,IInspectable*) eventHandler, EventRegistrationToken* return_token);
	HRESULT remove_GeofenceStateChanged(EventRegistrationToken token);
	HRESULT abi_ReadReports(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Geolocation.Geofencing.GeofenceStateChangeReport)* return_value);
	HRESULT add_StatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Geolocation.Geofencing.GeofenceMonitor*,IInspectable*) eventHandler, EventRegistrationToken* return_token);
	HRESULT remove_StatusChanged(EventRegistrationToken token);
}

@uuid("2dd32fcf-7e75-4899-ace3-2bd0a65cce06")
@WinrtFactory("Windows.Devices.Geolocation.Geofencing.GeofenceMonitor")
interface IGeofenceMonitorStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Current(Windows.Devices.Geolocation.Geofencing.GeofenceMonitor* return_value);
}

@uuid("9a243c18-2464-4c89-be05-b3ffff5babc5")
@WinrtFactory("Windows.Devices.Geolocation.Geofencing.GeofenceStateChangeReport")
interface IGeofenceStateChangeReport : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NewState(Windows.Devices.Geolocation.Geofencing.GeofenceState* return_value);
	HRESULT get_Geofence(Windows.Devices.Geolocation.Geofencing.Geofence* return_value);
	HRESULT get_Geoposition(Windows.Devices.Geolocation.Geoposition* return_value);
	HRESULT get_RemovalReason(Windows.Devices.Geolocation.Geofencing.GeofenceRemovalReason* return_value);
}

interface Geofence
{
}

interface GeofenceMonitor
{
}

interface GeofenceStateChangeReport
{
}

enum GeofenceMonitorStatus
{
	Ready = 0,
	Initializing = 1,
	NoData = 2,
	Disabled = 3,
	NotInitialized = 4,
	NotAvailable = 5
}

enum GeofenceRemovalReason
{
	Used = 0,
	Expired = 1
}

@bitflags
enum GeofenceState
{
	None = 0x0,
	Entered = 0x1,
	Exited = 0x2,
	Removed = 0x4
}

@bitflags
enum MonitoredGeofenceStates
{
	None = 0x0,
	Entered = 0x1,
	Exited = 0x2,
	Removed = 0x4
}