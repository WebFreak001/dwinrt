module Windows.Devices.Geolocation.Geofencing;

import dwinrt;

@uuid("9c090823-edb8-47e0-8245-5bf61d321f2d")
@WinrtFactory("Windows.Devices.Geolocation.Geofencing.Geofence")
interface IGeofence : IInspectable
{
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
extern(Windows):
	HRESULT get_Status(Windows.Devices.Geolocation.Geofencing.GeofenceMonitorStatus* return_value);
	HRESULT get_Geofences(Windows.Foundation.Collections.IVector!(Windows.Devices.Geolocation.Geofencing.Geofence)* return_value);
	HRESULT get_LastKnownGeoposition(Windows.Devices.Geolocation.Geoposition* return_value);
	HRESULT add_GeofenceStateChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Geolocation.Geofencing.GeofenceMonitor, IInspectable) eventHandler, EventRegistrationToken* return_token);
	HRESULT remove_GeofenceStateChanged(EventRegistrationToken token);
	HRESULT abi_ReadReports(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Geolocation.Geofencing.GeofenceStateChangeReport)* return_value);
	HRESULT add_StatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Geolocation.Geofencing.GeofenceMonitor, IInspectable) eventHandler, EventRegistrationToken* return_token);
	HRESULT remove_StatusChanged(EventRegistrationToken token);
}

@uuid("2dd32fcf-7e75-4899-ace3-2bd0a65cce06")
@WinrtFactory("Windows.Devices.Geolocation.Geofencing.GeofenceMonitor")
interface IGeofenceMonitorStatics : IInspectable
{
extern(Windows):
	HRESULT get_Current(Windows.Devices.Geolocation.Geofencing.GeofenceMonitor* return_value);
}

@uuid("9a243c18-2464-4c89-be05-b3ffff5babc5")
@WinrtFactory("Windows.Devices.Geolocation.Geofencing.GeofenceStateChangeReport")
interface IGeofenceStateChangeReport : IInspectable
{
extern(Windows):
	HRESULT get_NewState(Windows.Devices.Geolocation.Geofencing.GeofenceState* return_value);
	HRESULT get_Geofence(Windows.Devices.Geolocation.Geofencing.Geofence* return_value);
	HRESULT get_Geoposition(Windows.Devices.Geolocation.Geoposition* return_value);
	HRESULT get_RemovalReason(Windows.Devices.Geolocation.Geofencing.GeofenceRemovalReason* return_value);
}

interface Geofence : Windows.Devices.Geolocation.Geofencing.IGeofence
{
extern(Windows):
	final Windows.Foundation.DateTime StartTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofence).get_StartTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofence).get_Duration(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan DwellTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofence).get_DwellTime(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofence).get_Id(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geofencing.MonitoredGeofenceStates MonitoredStates()
	{
		Windows.Devices.Geolocation.Geofencing.MonitoredGeofenceStates _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofence).get_MonitoredStates(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.IGeoshape Geoshape()
	{
		Windows.Devices.Geolocation.IGeoshape _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofence).get_Geoshape(&_ret));
		return _ret;
	}
	final bool SingleUse()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofence).get_SingleUse(&_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.Geofencing.Geofence New(HSTRING id, Windows.Devices.Geolocation.IGeoshape geoshape)
	{
		auto factory = factory!(Windows.Devices.Geolocation.Geofencing.IGeofenceFactory);
		Windows.Devices.Geolocation.Geofencing.Geofence _ret;
		Debug.OK(factory.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceFactory).abi_Create(id, geoshape, &_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.Geofencing.Geofence New(HSTRING id, Windows.Devices.Geolocation.IGeoshape geoshape, Windows.Devices.Geolocation.Geofencing.MonitoredGeofenceStates monitoredStates, bool singleUse)
	{
		auto factory = factory!(Windows.Devices.Geolocation.Geofencing.IGeofenceFactory);
		Windows.Devices.Geolocation.Geofencing.Geofence _ret;
		Debug.OK(factory.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceFactory).abi_CreateWithMonitorStates(id, geoshape, monitoredStates, singleUse, &_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.Geofencing.Geofence New(HSTRING id, Windows.Devices.Geolocation.IGeoshape geoshape, Windows.Devices.Geolocation.Geofencing.MonitoredGeofenceStates monitoredStates, bool singleUse, Windows.Foundation.TimeSpan dwellTime)
	{
		auto factory = factory!(Windows.Devices.Geolocation.Geofencing.IGeofenceFactory);
		Windows.Devices.Geolocation.Geofencing.Geofence _ret;
		Debug.OK(factory.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceFactory).abi_CreateWithMonitorStatesAndDwellTime(id, geoshape, monitoredStates, singleUse, dwellTime, &_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.Geofencing.Geofence New(HSTRING id, Windows.Devices.Geolocation.IGeoshape geoshape, Windows.Devices.Geolocation.Geofencing.MonitoredGeofenceStates monitoredStates, bool singleUse, Windows.Foundation.TimeSpan dwellTime, Windows.Foundation.DateTime startTime, Windows.Foundation.TimeSpan duration)
	{
		auto factory = factory!(Windows.Devices.Geolocation.Geofencing.IGeofenceFactory);
		Windows.Devices.Geolocation.Geofencing.Geofence _ret;
		Debug.OK(factory.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceFactory).abi_CreateWithMonitorStatesDwellTimeStartTimeAndDuration(id, geoshape, monitoredStates, singleUse, dwellTime, startTime, duration, &_ret));
		return _ret;
	}
}

interface GeofenceMonitor : Windows.Devices.Geolocation.Geofencing.IGeofenceMonitor
{
extern(Windows):
	final Windows.Devices.Geolocation.Geofencing.GeofenceMonitorStatus Status()
	{
		Windows.Devices.Geolocation.Geofencing.GeofenceMonitorStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceMonitor).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Devices.Geolocation.Geofencing.Geofence) Geofences()
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.Geolocation.Geofencing.Geofence) _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceMonitor).get_Geofences(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geoposition LastKnownGeoposition()
	{
		Windows.Devices.Geolocation.Geoposition _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceMonitor).get_LastKnownGeoposition(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnGeofenceStateChanged(void delegate(Windows.Devices.Geolocation.Geofencing.GeofenceMonitor, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceMonitor).add_GeofenceStateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Geolocation.Geofencing.GeofenceMonitor, IInspectable), Windows.Devices.Geolocation.Geofencing.GeofenceMonitor, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeGeofenceStateChanged(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceMonitor).remove_GeofenceStateChanged(token));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Geolocation.Geofencing.GeofenceStateChangeReport) ReadReports()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Geolocation.Geofencing.GeofenceStateChangeReport) _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceMonitor).abi_ReadReports(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnStatusChanged(void delegate(Windows.Devices.Geolocation.Geofencing.GeofenceMonitor, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceMonitor).add_StatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Geolocation.Geofencing.GeofenceMonitor, IInspectable), Windows.Devices.Geolocation.Geofencing.GeofenceMonitor, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeStatusChanged(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceMonitor).remove_StatusChanged(token));
	}

	private static Windows.Devices.Geolocation.Geofencing.IGeofenceMonitorStatics _staticInstance;
	public static Windows.Devices.Geolocation.Geofencing.IGeofenceMonitorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Geolocation.Geofencing.IGeofenceMonitorStatics);
		return _staticInstance;
	}
	static Windows.Devices.Geolocation.Geofencing.GeofenceMonitor Current()
	{
		Windows.Devices.Geolocation.Geofencing.GeofenceMonitor _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceMonitorStatics).get_Current(&_ret));
		return _ret;
	}
}

interface GeofenceStateChangeReport : Windows.Devices.Geolocation.Geofencing.IGeofenceStateChangeReport
{
extern(Windows):
	final Windows.Devices.Geolocation.Geofencing.GeofenceState NewState()
	{
		Windows.Devices.Geolocation.Geofencing.GeofenceState _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceStateChangeReport).get_NewState(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geofencing.Geofence Geofence()
	{
		Windows.Devices.Geolocation.Geofencing.Geofence _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceStateChangeReport).get_Geofence(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geoposition Geoposition()
	{
		Windows.Devices.Geolocation.Geoposition _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceStateChangeReport).get_Geoposition(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geofencing.GeofenceRemovalReason RemovalReason()
	{
		Windows.Devices.Geolocation.Geofencing.GeofenceRemovalReason _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.Geofencing.IGeofenceStateChangeReport).get_RemovalReason(&_ret));
		return _ret;
	}
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