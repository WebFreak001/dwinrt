module Windows.Services.Maps.Guidance;

import dwinrt;

@uuid("ca2aa24a-c7c2-4d4c-9d7c-499576bceddb")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceAudioNotificationRequestedEventArgs")
interface IGuidanceAudioNotificationRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_AudioNotification(Windows.Services.Maps.Guidance.GuidanceAudioNotificationKind* return_value);
	HRESULT get_AudioFilePaths(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_AudioText(HSTRING* return_value);
}

@uuid("8404d114-6581-43b7-ac15-c9079bf90df1")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceLaneInfo")
interface IGuidanceLaneInfo : IInspectable
{
extern(Windows):
	HRESULT get_LaneMarkers(Windows.Services.Maps.Guidance.GuidanceLaneMarkers* return_value);
	HRESULT get_IsOnRoute(bool* return_value);
}

@uuid("fc09326c-ecc9-4928-a2a1-7232b99b94a1")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceManeuver")
interface IGuidanceManeuver : IInspectable
{
extern(Windows):
	HRESULT get_StartLocation(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_DistanceFromRouteStart(INT32* return_value);
	HRESULT get_DistanceFromPreviousManeuver(INT32* return_value);
	HRESULT get_DepartureRoadName(HSTRING* return_value);
	HRESULT get_NextRoadName(HSTRING* return_value);
	HRESULT get_DepartureShortRoadName(HSTRING* return_value);
	HRESULT get_NextShortRoadName(HSTRING* return_value);
	HRESULT get_Kind(Windows.Services.Maps.Guidance.GuidanceManeuverKind* return_value);
	HRESULT get_StartAngle(INT32* return_value);
	HRESULT get_EndAngle(INT32* return_value);
	HRESULT get_RoadSignpost(Windows.Services.Maps.Guidance.GuidanceRoadSignpost* return_value);
	HRESULT get_InstructionText(HSTRING* return_value);
}

@uuid("b7acb168-2912-4a99-aff1-798609b981fe")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceMapMatchedCoordinate")
interface IGuidanceMapMatchedCoordinate : IInspectable
{
extern(Windows):
	HRESULT get_Location(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_CurrentHeading(double* return_value);
	HRESULT get_CurrentSpeed(double* return_value);
	HRESULT get_IsOnStreet(bool* return_value);
	HRESULT get_Road(Windows.Services.Maps.Guidance.GuidanceRoadSegment* return_value);
}

@uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceNavigator")
interface IGuidanceNavigator : IInspectable
{
extern(Windows):
	HRESULT abi_StartNavigating(Windows.Services.Maps.Guidance.GuidanceRoute route);
	HRESULT abi_StartSimulating(Windows.Services.Maps.Guidance.GuidanceRoute route, INT32 speedInMetersPerSecond);
	HRESULT abi_StartTracking();
	HRESULT abi_Pause();
	HRESULT abi_Resume();
	HRESULT abi_Stop();
	HRESULT abi_RepeatLastAudioNotification();
	HRESULT get_AudioMeasurementSystem(Windows.Services.Maps.Guidance.GuidanceAudioMeasurementSystem* return_value);
	HRESULT set_AudioMeasurementSystem(Windows.Services.Maps.Guidance.GuidanceAudioMeasurementSystem value);
	HRESULT get_AudioNotifications(Windows.Services.Maps.Guidance.GuidanceAudioNotifications* return_value);
	HRESULT set_AudioNotifications(Windows.Services.Maps.Guidance.GuidanceAudioNotifications value);
	HRESULT add_GuidanceUpdated(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator, Windows.Services.Maps.Guidance.GuidanceUpdatedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_GuidanceUpdated(EventRegistrationToken token);
	HRESULT add_DestinationReached(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_DestinationReached(EventRegistrationToken token);
	HRESULT add_Rerouting(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Rerouting(EventRegistrationToken token);
	HRESULT add_Rerouted(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator, Windows.Services.Maps.Guidance.GuidanceReroutedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Rerouted(EventRegistrationToken token);
	HRESULT add_RerouteFailed(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_RerouteFailed(EventRegistrationToken token);
	HRESULT add_UserLocationLost(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_UserLocationLost(EventRegistrationToken token);
	HRESULT add_UserLocationRestored(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_UserLocationRestored(EventRegistrationToken token);
	HRESULT abi_SetGuidanceVoice(INT32 voiceId, HSTRING voiceFolder);
	HRESULT abi_UpdateUserLocation(Windows.Devices.Geolocation.Geocoordinate userLocation);
	HRESULT abi_UpdateUserLocationWithPositionOverride(Windows.Devices.Geolocation.Geocoordinate userLocation, Windows.Devices.Geolocation.BasicGeoposition positionOverride);
}

@uuid("6cdc50d1-041c-4bf3-b633-a101fc2f6b57")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceNavigator")
interface IGuidanceNavigator2 : IInspectable
{
extern(Windows):
	HRESULT add_AudioNotificationRequested(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator, Windows.Services.Maps.Guidance.GuidanceAudioNotificationRequestedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_AudioNotificationRequested(EventRegistrationToken token);
	HRESULT get_IsGuidanceAudioMuted(bool* return_value);
	HRESULT set_IsGuidanceAudioMuted(bool value);
}

@uuid("00fd9513-4456-4e66-a143-3add6be08426")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceNavigator")
interface IGuidanceNavigatorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrent(Windows.Services.Maps.Guidance.GuidanceNavigator* return_result);
}

@uuid("54c5c3e2-7784-4c85-8c95-d0c6efb43965")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceNavigator")
interface IGuidanceNavigatorStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_UseAppProvidedVoice(bool* return_value);
}

@uuid("115d4008-d528-454e-bb94-a50341d2c9f1")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceReroutedEventArgs")
interface IGuidanceReroutedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Route(Windows.Services.Maps.Guidance.GuidanceRoute* return_result);
}

@uuid("b32758a6-be78-4c63-afe7-6c2957479b3e")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceRoadSegment")
interface IGuidanceRoadSegment : IInspectable
{
extern(Windows):
	HRESULT get_RoadName(HSTRING* return_value);
	HRESULT get_ShortRoadName(HSTRING* return_value);
	HRESULT get_SpeedLimit(double* return_value);
	HRESULT get_TravelTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Path(Windows.Devices.Geolocation.Geopath* return_value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_IsHighway(bool* return_value);
	HRESULT get_IsTunnel(bool* return_value);
	HRESULT get_IsTollRoad(bool* return_value);
}

@uuid("f1a728b6-f77a-4742-8312-53300f9845f0")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceRoadSignpost")
interface IGuidanceRoadSignpost : IInspectable
{
extern(Windows):
	HRESULT get_ExitNumber(HSTRING* return_value);
	HRESULT get_Exit(HSTRING* return_value);
	HRESULT get_BackgroundColor(Windows.UI.Color* return_value);
	HRESULT get_ForegroundColor(Windows.UI.Color* return_value);
	HRESULT get_ExitDirections(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}

@uuid("3a14545d-801a-40bd-a286-afb2010cce6c")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceRoute")
interface IGuidanceRoute : IInspectable
{
extern(Windows):
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Distance(INT32* return_value);
	HRESULT get_Maneuvers(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.Guidance.GuidanceManeuver)* return_value);
	HRESULT get_BoundingBox(Windows.Devices.Geolocation.GeoboundingBox* return_value);
	HRESULT get_Path(Windows.Devices.Geolocation.Geopath* return_value);
	HRESULT get_RoadSegments(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.Guidance.GuidanceRoadSegment)* return_value);
	HRESULT abi_ConvertToMapRoute(Windows.Services.Maps.MapRoute* return_result);
}

@uuid("f56d926a-55ed-49c1-b09c-4b8223b50db3")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceRoute")
interface IGuidanceRouteStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CanCreateFromMapRoute(Windows.Services.Maps.MapRoute mapRoute, bool* return_result);
	HRESULT abi_TryCreateFromMapRoute(Windows.Services.Maps.MapRoute mapRoute, Windows.Services.Maps.Guidance.GuidanceRoute* return_result);
}

@uuid("db1f8da5-b878-4d92-98dd-347d23d38262")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceTelemetryCollector")
interface IGuidanceTelemetryCollector : IInspectable
{
extern(Windows):
	HRESULT get_Enabled(bool* return_value);
	HRESULT set_Enabled(bool value);
	HRESULT abi_ClearLocalData();
	HRESULT get_SpeedTrigger(double* return_value);
	HRESULT set_SpeedTrigger(double value);
	HRESULT get_UploadFrequency(INT32* return_value);
	HRESULT set_UploadFrequency(INT32 value);
}

@uuid("36532047-f160-44fb-b578-94577ca05990")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceTelemetryCollector")
interface IGuidanceTelemetryCollectorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrent(Windows.Services.Maps.Guidance.GuidanceTelemetryCollector* return_result);
}

@uuid("fdac160b-9e8d-4de3-a9fa-b06321d18db9")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceUpdatedEventArgs")
interface IGuidanceUpdatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Mode(Windows.Services.Maps.Guidance.GuidanceMode* return_value);
	HRESULT get_NextManeuver(Windows.Services.Maps.Guidance.GuidanceManeuver* return_value);
	HRESULT get_NextManeuverDistance(INT32* return_value);
	HRESULT get_AfterNextManeuver(Windows.Services.Maps.Guidance.GuidanceManeuver* return_value);
	HRESULT get_AfterNextManeuverDistance(INT32* return_value);
	HRESULT get_DistanceToDestination(INT32* return_value);
	HRESULT get_ElapsedDistance(INT32* return_value);
	HRESULT get_ElapsedTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_TimeToDestination(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_RoadName(HSTRING* return_value);
	HRESULT get_Route(Windows.Services.Maps.Guidance.GuidanceRoute* return_result);
	HRESULT get_CurrentLocation(Windows.Services.Maps.Guidance.GuidanceMapMatchedCoordinate* return_result);
	HRESULT get_IsNewManeuver(bool* return_value);
	HRESULT get_LaneInfo(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.Guidance.GuidanceLaneInfo)* return_value);
}

interface GuidanceAudioNotificationRequestedEventArgs : Windows.Services.Maps.Guidance.IGuidanceAudioNotificationRequestedEventArgs
{
extern(Windows):
	final Windows.Services.Maps.Guidance.GuidanceAudioNotificationKind AudioNotification()
	{
		Windows.Services.Maps.Guidance.GuidanceAudioNotificationKind _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceAudioNotificationRequestedEventArgs)this.asInterface(uuid("ca2aa24a-c7c2-4d4c-9d7c-499576bceddb"))).get_AudioNotification(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) AudioFilePaths()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceAudioNotificationRequestedEventArgs)this.asInterface(uuid("ca2aa24a-c7c2-4d4c-9d7c-499576bceddb"))).get_AudioFilePaths(&_ret));
		return _ret;
	}
	final HSTRING AudioText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceAudioNotificationRequestedEventArgs)this.asInterface(uuid("ca2aa24a-c7c2-4d4c-9d7c-499576bceddb"))).get_AudioText(&_ret));
		return _ret;
	}
}

interface GuidanceLaneInfo : Windows.Services.Maps.Guidance.IGuidanceLaneInfo
{
extern(Windows):
	final Windows.Services.Maps.Guidance.GuidanceLaneMarkers LaneMarkers()
	{
		Windows.Services.Maps.Guidance.GuidanceLaneMarkers _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceLaneInfo)this.asInterface(uuid("8404d114-6581-43b7-ac15-c9079bf90df1"))).get_LaneMarkers(&_ret));
		return _ret;
	}
	final bool IsOnRoute()
	{
		bool _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceLaneInfo)this.asInterface(uuid("8404d114-6581-43b7-ac15-c9079bf90df1"))).get_IsOnRoute(&_ret));
		return _ret;
	}
}

interface GuidanceManeuver : Windows.Services.Maps.Guidance.IGuidanceManeuver
{
extern(Windows):
	final Windows.Devices.Geolocation.Geopoint StartLocation()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceManeuver)this.asInterface(uuid("fc09326c-ecc9-4928-a2a1-7232b99b94a1"))).get_StartLocation(&_ret));
		return _ret;
	}
	final INT32 DistanceFromRouteStart()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceManeuver)this.asInterface(uuid("fc09326c-ecc9-4928-a2a1-7232b99b94a1"))).get_DistanceFromRouteStart(&_ret));
		return _ret;
	}
	final INT32 DistanceFromPreviousManeuver()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceManeuver)this.asInterface(uuid("fc09326c-ecc9-4928-a2a1-7232b99b94a1"))).get_DistanceFromPreviousManeuver(&_ret));
		return _ret;
	}
	final HSTRING DepartureRoadName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceManeuver)this.asInterface(uuid("fc09326c-ecc9-4928-a2a1-7232b99b94a1"))).get_DepartureRoadName(&_ret));
		return _ret;
	}
	final HSTRING NextRoadName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceManeuver)this.asInterface(uuid("fc09326c-ecc9-4928-a2a1-7232b99b94a1"))).get_NextRoadName(&_ret));
		return _ret;
	}
	final HSTRING DepartureShortRoadName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceManeuver)this.asInterface(uuid("fc09326c-ecc9-4928-a2a1-7232b99b94a1"))).get_DepartureShortRoadName(&_ret));
		return _ret;
	}
	final HSTRING NextShortRoadName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceManeuver)this.asInterface(uuid("fc09326c-ecc9-4928-a2a1-7232b99b94a1"))).get_NextShortRoadName(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.Guidance.GuidanceManeuverKind Kind()
	{
		Windows.Services.Maps.Guidance.GuidanceManeuverKind _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceManeuver)this.asInterface(uuid("fc09326c-ecc9-4928-a2a1-7232b99b94a1"))).get_Kind(&_ret));
		return _ret;
	}
	final INT32 StartAngle()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceManeuver)this.asInterface(uuid("fc09326c-ecc9-4928-a2a1-7232b99b94a1"))).get_StartAngle(&_ret));
		return _ret;
	}
	final INT32 EndAngle()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceManeuver)this.asInterface(uuid("fc09326c-ecc9-4928-a2a1-7232b99b94a1"))).get_EndAngle(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.Guidance.GuidanceRoadSignpost RoadSignpost()
	{
		Windows.Services.Maps.Guidance.GuidanceRoadSignpost _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceManeuver)this.asInterface(uuid("fc09326c-ecc9-4928-a2a1-7232b99b94a1"))).get_RoadSignpost(&_ret));
		return _ret;
	}
	final HSTRING InstructionText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceManeuver)this.asInterface(uuid("fc09326c-ecc9-4928-a2a1-7232b99b94a1"))).get_InstructionText(&_ret));
		return _ret;
	}
}

interface GuidanceMapMatchedCoordinate : Windows.Services.Maps.Guidance.IGuidanceMapMatchedCoordinate
{
extern(Windows):
	final Windows.Devices.Geolocation.Geopoint Location()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceMapMatchedCoordinate)this.asInterface(uuid("b7acb168-2912-4a99-aff1-798609b981fe"))).get_Location(&_ret));
		return _ret;
	}
	final double CurrentHeading()
	{
		double _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceMapMatchedCoordinate)this.asInterface(uuid("b7acb168-2912-4a99-aff1-798609b981fe"))).get_CurrentHeading(&_ret));
		return _ret;
	}
	final double CurrentSpeed()
	{
		double _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceMapMatchedCoordinate)this.asInterface(uuid("b7acb168-2912-4a99-aff1-798609b981fe"))).get_CurrentSpeed(&_ret));
		return _ret;
	}
	final bool IsOnStreet()
	{
		bool _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceMapMatchedCoordinate)this.asInterface(uuid("b7acb168-2912-4a99-aff1-798609b981fe"))).get_IsOnStreet(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.Guidance.GuidanceRoadSegment Road()
	{
		Windows.Services.Maps.Guidance.GuidanceRoadSegment _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceMapMatchedCoordinate)this.asInterface(uuid("b7acb168-2912-4a99-aff1-798609b981fe"))).get_Road(&_ret));
		return _ret;
	}
}

interface GuidanceNavigator : Windows.Services.Maps.Guidance.IGuidanceNavigator, Windows.Services.Maps.Guidance.IGuidanceNavigator2
{
extern(Windows):
	final void StartNavigating(Windows.Services.Maps.Guidance.GuidanceRoute route)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).abi_StartNavigating(route));
	}
	final void StartSimulating(Windows.Services.Maps.Guidance.GuidanceRoute route, INT32 speedInMetersPerSecond)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).abi_StartSimulating(route, speedInMetersPerSecond));
	}
	final void StartTracking()
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).abi_StartTracking());
	}
	final void Pause()
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).abi_Pause());
	}
	final void Resume()
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).abi_Resume());
	}
	final void Stop()
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).abi_Stop());
	}
	final void RepeatLastAudioNotification()
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).abi_RepeatLastAudioNotification());
	}
	final Windows.Services.Maps.Guidance.GuidanceAudioMeasurementSystem AudioMeasurementSystem()
	{
		Windows.Services.Maps.Guidance.GuidanceAudioMeasurementSystem _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).get_AudioMeasurementSystem(&_ret));
		return _ret;
	}
	final void AudioMeasurementSystem(Windows.Services.Maps.Guidance.GuidanceAudioMeasurementSystem value)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).set_AudioMeasurementSystem(value));
	}
	final Windows.Services.Maps.Guidance.GuidanceAudioNotifications AudioNotifications()
	{
		Windows.Services.Maps.Guidance.GuidanceAudioNotifications _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).get_AudioNotifications(&_ret));
		return _ret;
	}
	final void AudioNotifications(Windows.Services.Maps.Guidance.GuidanceAudioNotifications value)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).set_AudioNotifications(value));
	}
	final EventRegistrationToken OnGuidanceUpdated(void delegate(Windows.Services.Maps.Guidance.GuidanceNavigator, Windows.Services.Maps.Guidance.GuidanceUpdatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).add_GuidanceUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator, Windows.Services.Maps.Guidance.GuidanceUpdatedEventArgs), Windows.Services.Maps.Guidance.GuidanceNavigator, Windows.Services.Maps.Guidance.GuidanceUpdatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeGuidanceUpdated(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).remove_GuidanceUpdated(token));
	}
	final EventRegistrationToken OnDestinationReached(void delegate(Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).add_DestinationReached(event!(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable), Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeDestinationReached(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).remove_DestinationReached(token));
	}
	final EventRegistrationToken OnRerouting(void delegate(Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).add_Rerouting(event!(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable), Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeRerouting(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).remove_Rerouting(token));
	}
	final EventRegistrationToken OnRerouted(void delegate(Windows.Services.Maps.Guidance.GuidanceNavigator, Windows.Services.Maps.Guidance.GuidanceReroutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).add_Rerouted(event!(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator, Windows.Services.Maps.Guidance.GuidanceReroutedEventArgs), Windows.Services.Maps.Guidance.GuidanceNavigator, Windows.Services.Maps.Guidance.GuidanceReroutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRerouted(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).remove_Rerouted(token));
	}
	final EventRegistrationToken OnRerouteFailed(void delegate(Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).add_RerouteFailed(event!(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable), Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeRerouteFailed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).remove_RerouteFailed(token));
	}
	final EventRegistrationToken OnUserLocationLost(void delegate(Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).add_UserLocationLost(event!(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable), Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeUserLocationLost(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).remove_UserLocationLost(token));
	}
	final EventRegistrationToken OnUserLocationRestored(void delegate(Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).add_UserLocationRestored(event!(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable), Windows.Services.Maps.Guidance.GuidanceNavigator, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeUserLocationRestored(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).remove_UserLocationRestored(token));
	}
	final void SetGuidanceVoice(INT32 voiceId, HSTRING voiceFolder)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).abi_SetGuidanceVoice(voiceId, voiceFolder));
	}
	final void UpdateUserLocation(Windows.Devices.Geolocation.Geocoordinate userLocation)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).abi_UpdateUserLocation(userLocation));
	}
	final void UpdateUserLocationWithPositionOverride(Windows.Devices.Geolocation.Geocoordinate userLocation, Windows.Devices.Geolocation.BasicGeoposition positionOverride)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator)this.asInterface(uuid("08f17ef7-8e3f-4d9a-be8a-108f9a012c67"))).abi_UpdateUserLocationWithPositionOverride(userLocation, positionOverride));
	}
	alias UpdateUserLocation = UpdateUserLocationWithPositionOverride;
	final EventRegistrationToken OnAudioNotificationRequested(void delegate(Windows.Services.Maps.Guidance.GuidanceNavigator, Windows.Services.Maps.Guidance.GuidanceAudioNotificationRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator2)this.asInterface(uuid("6cdc50d1-041c-4bf3-b633-a101fc2f6b57"))).add_AudioNotificationRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator, Windows.Services.Maps.Guidance.GuidanceAudioNotificationRequestedEventArgs), Windows.Services.Maps.Guidance.GuidanceNavigator, Windows.Services.Maps.Guidance.GuidanceAudioNotificationRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAudioNotificationRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator2)this.asInterface(uuid("6cdc50d1-041c-4bf3-b633-a101fc2f6b57"))).remove_AudioNotificationRequested(token));
	}
	final bool IsGuidanceAudioMuted()
	{
		bool _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator2)this.asInterface(uuid("6cdc50d1-041c-4bf3-b633-a101fc2f6b57"))).get_IsGuidanceAudioMuted(&_ret));
		return _ret;
	}
	final void IsGuidanceAudioMuted(bool value)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceNavigator2)this.asInterface(uuid("6cdc50d1-041c-4bf3-b633-a101fc2f6b57"))).set_IsGuidanceAudioMuted(value));
	}

	private static Windows.Services.Maps.Guidance.IGuidanceNavigatorStatics _staticInstance;
	public static Windows.Services.Maps.Guidance.IGuidanceNavigatorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Services.Maps.Guidance.IGuidanceNavigatorStatics);
		return _staticInstance;
	}
	static Windows.Services.Maps.Guidance.GuidanceNavigator GetCurrent()
	{
		Windows.Services.Maps.Guidance.GuidanceNavigator _ret;
		Debug.OK(staticInstance.abi_GetCurrent(&_ret));
		return _ret;
	}
}

interface GuidanceReroutedEventArgs : Windows.Services.Maps.Guidance.IGuidanceReroutedEventArgs
{
extern(Windows):
	final Windows.Services.Maps.Guidance.GuidanceRoute Route()
	{
		Windows.Services.Maps.Guidance.GuidanceRoute _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceReroutedEventArgs)this.asInterface(uuid("115d4008-d528-454e-bb94-a50341d2c9f1"))).get_Route(&_ret));
		return _ret;
	}
}

interface GuidanceRoadSegment : Windows.Services.Maps.Guidance.IGuidanceRoadSegment
{
extern(Windows):
	final HSTRING RoadName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoadSegment)this.asInterface(uuid("b32758a6-be78-4c63-afe7-6c2957479b3e"))).get_RoadName(&_ret));
		return _ret;
	}
	final HSTRING ShortRoadName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoadSegment)this.asInterface(uuid("b32758a6-be78-4c63-afe7-6c2957479b3e"))).get_ShortRoadName(&_ret));
		return _ret;
	}
	final double SpeedLimit()
	{
		double _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoadSegment)this.asInterface(uuid("b32758a6-be78-4c63-afe7-6c2957479b3e"))).get_SpeedLimit(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan TravelTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoadSegment)this.asInterface(uuid("b32758a6-be78-4c63-afe7-6c2957479b3e"))).get_TravelTime(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geopath Path()
	{
		Windows.Devices.Geolocation.Geopath _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoadSegment)this.asInterface(uuid("b32758a6-be78-4c63-afe7-6c2957479b3e"))).get_Path(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoadSegment)this.asInterface(uuid("b32758a6-be78-4c63-afe7-6c2957479b3e"))).get_Id(&_ret));
		return _ret;
	}
	final bool IsHighway()
	{
		bool _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoadSegment)this.asInterface(uuid("b32758a6-be78-4c63-afe7-6c2957479b3e"))).get_IsHighway(&_ret));
		return _ret;
	}
	final bool IsTunnel()
	{
		bool _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoadSegment)this.asInterface(uuid("b32758a6-be78-4c63-afe7-6c2957479b3e"))).get_IsTunnel(&_ret));
		return _ret;
	}
	final bool IsTollRoad()
	{
		bool _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoadSegment)this.asInterface(uuid("b32758a6-be78-4c63-afe7-6c2957479b3e"))).get_IsTollRoad(&_ret));
		return _ret;
	}
}

interface GuidanceRoadSignpost : Windows.Services.Maps.Guidance.IGuidanceRoadSignpost
{
extern(Windows):
	final HSTRING ExitNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoadSignpost)this.asInterface(uuid("f1a728b6-f77a-4742-8312-53300f9845f0"))).get_ExitNumber(&_ret));
		return _ret;
	}
	final HSTRING Exit()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoadSignpost)this.asInterface(uuid("f1a728b6-f77a-4742-8312-53300f9845f0"))).get_Exit(&_ret));
		return _ret;
	}
	final Windows.UI.Color BackgroundColor()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoadSignpost)this.asInterface(uuid("f1a728b6-f77a-4742-8312-53300f9845f0"))).get_BackgroundColor(&_ret));
		return _ret;
	}
	final Windows.UI.Color ForegroundColor()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoadSignpost)this.asInterface(uuid("f1a728b6-f77a-4742-8312-53300f9845f0"))).get_ForegroundColor(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) ExitDirections()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoadSignpost)this.asInterface(uuid("f1a728b6-f77a-4742-8312-53300f9845f0"))).get_ExitDirections(&_ret));
		return _ret;
	}
}

interface GuidanceRoute : Windows.Services.Maps.Guidance.IGuidanceRoute
{
extern(Windows):
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoute)this.asInterface(uuid("3a14545d-801a-40bd-a286-afb2010cce6c"))).get_Duration(&_ret));
		return _ret;
	}
	final INT32 Distance()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoute)this.asInterface(uuid("3a14545d-801a-40bd-a286-afb2010cce6c"))).get_Distance(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.Guidance.GuidanceManeuver) Maneuvers()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.Guidance.GuidanceManeuver) _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoute)this.asInterface(uuid("3a14545d-801a-40bd-a286-afb2010cce6c"))).get_Maneuvers(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.GeoboundingBox BoundingBox()
	{
		Windows.Devices.Geolocation.GeoboundingBox _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoute)this.asInterface(uuid("3a14545d-801a-40bd-a286-afb2010cce6c"))).get_BoundingBox(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geopath Path()
	{
		Windows.Devices.Geolocation.Geopath _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoute)this.asInterface(uuid("3a14545d-801a-40bd-a286-afb2010cce6c"))).get_Path(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.Guidance.GuidanceRoadSegment) RoadSegments()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.Guidance.GuidanceRoadSegment) _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoute)this.asInterface(uuid("3a14545d-801a-40bd-a286-afb2010cce6c"))).get_RoadSegments(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.MapRoute ConvertToMapRoute()
	{
		Windows.Services.Maps.MapRoute _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceRoute)this.asInterface(uuid("3a14545d-801a-40bd-a286-afb2010cce6c"))).abi_ConvertToMapRoute(&_ret));
		return _ret;
	}

	private static Windows.Services.Maps.Guidance.IGuidanceRouteStatics _staticInstance;
	public static Windows.Services.Maps.Guidance.IGuidanceRouteStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Services.Maps.Guidance.IGuidanceRouteStatics);
		return _staticInstance;
	}
	static bool CanCreateFromMapRoute(Windows.Services.Maps.MapRoute mapRoute)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_CanCreateFromMapRoute(mapRoute, &_ret));
		return _ret;
	}
	static Windows.Services.Maps.Guidance.GuidanceRoute TryCreateFromMapRoute(Windows.Services.Maps.MapRoute mapRoute)
	{
		Windows.Services.Maps.Guidance.GuidanceRoute _ret;
		Debug.OK(staticInstance.abi_TryCreateFromMapRoute(mapRoute, &_ret));
		return _ret;
	}
}

interface GuidanceTelemetryCollector : Windows.Services.Maps.Guidance.IGuidanceTelemetryCollector
{
extern(Windows):
	final bool Enabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceTelemetryCollector)this.asInterface(uuid("db1f8da5-b878-4d92-98dd-347d23d38262"))).get_Enabled(&_ret));
		return _ret;
	}
	final void Enabled(bool value)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceTelemetryCollector)this.asInterface(uuid("db1f8da5-b878-4d92-98dd-347d23d38262"))).set_Enabled(value));
	}
	final void ClearLocalData()
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceTelemetryCollector)this.asInterface(uuid("db1f8da5-b878-4d92-98dd-347d23d38262"))).abi_ClearLocalData());
	}
	final double SpeedTrigger()
	{
		double _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceTelemetryCollector)this.asInterface(uuid("db1f8da5-b878-4d92-98dd-347d23d38262"))).get_SpeedTrigger(&_ret));
		return _ret;
	}
	final void SpeedTrigger(double value)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceTelemetryCollector)this.asInterface(uuid("db1f8da5-b878-4d92-98dd-347d23d38262"))).set_SpeedTrigger(value));
	}
	final INT32 UploadFrequency()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceTelemetryCollector)this.asInterface(uuid("db1f8da5-b878-4d92-98dd-347d23d38262"))).get_UploadFrequency(&_ret));
		return _ret;
	}
	final void UploadFrequency(INT32 value)
	{
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceTelemetryCollector)this.asInterface(uuid("db1f8da5-b878-4d92-98dd-347d23d38262"))).set_UploadFrequency(value));
	}

	private static Windows.Services.Maps.Guidance.IGuidanceTelemetryCollectorStatics _staticInstance;
	public static Windows.Services.Maps.Guidance.IGuidanceTelemetryCollectorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Services.Maps.Guidance.IGuidanceTelemetryCollectorStatics);
		return _staticInstance;
	}
	static Windows.Services.Maps.Guidance.GuidanceTelemetryCollector GetCurrent()
	{
		Windows.Services.Maps.Guidance.GuidanceTelemetryCollector _ret;
		Debug.OK(staticInstance.abi_GetCurrent(&_ret));
		return _ret;
	}
}

interface GuidanceUpdatedEventArgs : Windows.Services.Maps.Guidance.IGuidanceUpdatedEventArgs
{
extern(Windows):
	final Windows.Services.Maps.Guidance.GuidanceMode Mode()
	{
		Windows.Services.Maps.Guidance.GuidanceMode _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceUpdatedEventArgs)this.asInterface(uuid("fdac160b-9e8d-4de3-a9fa-b06321d18db9"))).get_Mode(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.Guidance.GuidanceManeuver NextManeuver()
	{
		Windows.Services.Maps.Guidance.GuidanceManeuver _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceUpdatedEventArgs)this.asInterface(uuid("fdac160b-9e8d-4de3-a9fa-b06321d18db9"))).get_NextManeuver(&_ret));
		return _ret;
	}
	final INT32 NextManeuverDistance()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceUpdatedEventArgs)this.asInterface(uuid("fdac160b-9e8d-4de3-a9fa-b06321d18db9"))).get_NextManeuverDistance(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.Guidance.GuidanceManeuver AfterNextManeuver()
	{
		Windows.Services.Maps.Guidance.GuidanceManeuver _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceUpdatedEventArgs)this.asInterface(uuid("fdac160b-9e8d-4de3-a9fa-b06321d18db9"))).get_AfterNextManeuver(&_ret));
		return _ret;
	}
	final INT32 AfterNextManeuverDistance()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceUpdatedEventArgs)this.asInterface(uuid("fdac160b-9e8d-4de3-a9fa-b06321d18db9"))).get_AfterNextManeuverDistance(&_ret));
		return _ret;
	}
	final INT32 DistanceToDestination()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceUpdatedEventArgs)this.asInterface(uuid("fdac160b-9e8d-4de3-a9fa-b06321d18db9"))).get_DistanceToDestination(&_ret));
		return _ret;
	}
	final INT32 ElapsedDistance()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceUpdatedEventArgs)this.asInterface(uuid("fdac160b-9e8d-4de3-a9fa-b06321d18db9"))).get_ElapsedDistance(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan ElapsedTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceUpdatedEventArgs)this.asInterface(uuid("fdac160b-9e8d-4de3-a9fa-b06321d18db9"))).get_ElapsedTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan TimeToDestination()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceUpdatedEventArgs)this.asInterface(uuid("fdac160b-9e8d-4de3-a9fa-b06321d18db9"))).get_TimeToDestination(&_ret));
		return _ret;
	}
	final HSTRING RoadName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceUpdatedEventArgs)this.asInterface(uuid("fdac160b-9e8d-4de3-a9fa-b06321d18db9"))).get_RoadName(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.Guidance.GuidanceRoute Route()
	{
		Windows.Services.Maps.Guidance.GuidanceRoute _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceUpdatedEventArgs)this.asInterface(uuid("fdac160b-9e8d-4de3-a9fa-b06321d18db9"))).get_Route(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.Guidance.GuidanceMapMatchedCoordinate CurrentLocation()
	{
		Windows.Services.Maps.Guidance.GuidanceMapMatchedCoordinate _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceUpdatedEventArgs)this.asInterface(uuid("fdac160b-9e8d-4de3-a9fa-b06321d18db9"))).get_CurrentLocation(&_ret));
		return _ret;
	}
	final bool IsNewManeuver()
	{
		bool _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceUpdatedEventArgs)this.asInterface(uuid("fdac160b-9e8d-4de3-a9fa-b06321d18db9"))).get_IsNewManeuver(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.Guidance.GuidanceLaneInfo) LaneInfo()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.Guidance.GuidanceLaneInfo) _ret;
		Debug.OK((cast(Windows.Services.Maps.Guidance.IGuidanceUpdatedEventArgs)this.asInterface(uuid("fdac160b-9e8d-4de3-a9fa-b06321d18db9"))).get_LaneInfo(&_ret));
		return _ret;
	}
}

enum GuidanceAudioMeasurementSystem
{
	Meters = 0,
	MilesAndYards = 1,
	MilesAndFeet = 2
}

enum GuidanceAudioNotificationKind
{
	Maneuver = 0,
	Route = 1,
	Gps = 2,
	SpeedLimit = 3,
	Traffic = 4,
	TrafficCamera = 5
}

@bitflags
enum GuidanceAudioNotifications
{
	None = 0x0,
	Maneuver = 0x1,
	Route = 0x2,
	Gps = 0x4,
	SpeedLimit = 0x8,
	Traffic = 0x10,
	TrafficCamera = 0x20
}

@bitflags
enum GuidanceLaneMarkers
{
	None = 0x0,
	LightRight = 0x1,
	Right = 0x2,
	HardRight = 0x4,
	Straight = 0x8,
	UTurnLeft = 0x10,
	HardLeft = 0x20,
	Left = 0x40,
	LightLeft = 0x80,
	UTurnRight = 0x100,
	Unknown = 0xFFFFFFFF
}

enum GuidanceManeuverKind
{
	None = 0,
	GoStraight = 1,
	UTurnRight = 2,
	UTurnLeft = 3,
	TurnKeepRight = 4,
	TurnLightRight = 5,
	TurnRight = 6,
	TurnHardRight = 7,
	KeepMiddle = 8,
	TurnKeepLeft = 9,
	TurnLightLeft = 10,
	TurnLeft = 11,
	TurnHardLeft = 12,
	FreewayEnterRight = 13,
	FreewayEnterLeft = 14,
	FreewayLeaveRight = 15,
	FreewayLeaveLeft = 16,
	FreewayKeepRight = 17,
	FreewayKeepLeft = 18,
	TrafficCircleRight1 = 19,
	TrafficCircleRight2 = 20,
	TrafficCircleRight3 = 21,
	TrafficCircleRight4 = 22,
	TrafficCircleRight5 = 23,
	TrafficCircleRight6 = 24,
	TrafficCircleRight7 = 25,
	TrafficCircleRight8 = 26,
	TrafficCircleRight9 = 27,
	TrafficCircleRight10 = 28,
	TrafficCircleRight11 = 29,
	TrafficCircleRight12 = 30,
	TrafficCircleLeft1 = 31,
	TrafficCircleLeft2 = 32,
	TrafficCircleLeft3 = 33,
	TrafficCircleLeft4 = 34,
	TrafficCircleLeft5 = 35,
	TrafficCircleLeft6 = 36,
	TrafficCircleLeft7 = 37,
	TrafficCircleLeft8 = 38,
	TrafficCircleLeft9 = 39,
	TrafficCircleLeft10 = 40,
	TrafficCircleLeft11 = 41,
	TrafficCircleLeft12 = 42,
	Start = 43,
	End = 44,
	TakeFerry = 45,
	PassTransitStation = 46,
	LeaveTransitStation = 47
}

enum GuidanceMode
{
	None = 0,
	Simulation = 1,
	Navigation = 2,
	Tracking = 3
}