module Windows.Services.Maps.Guidance;

import dwinrt;

@uuid("ca2aa24a-c7c2-4d4c-9d7c-499576bceddb")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceAudioNotificationRequestedEventArgs")
interface IGuidanceAudioNotificationRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AudioNotification(Windows.Services.Maps.Guidance.GuidanceAudioNotificationKind* return_value);
	HRESULT get_AudioFilePaths(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_AudioText(HSTRING* return_value);
}

@uuid("8404d114-6581-43b7-ac15-c9079bf90df1")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceLaneInfo")
interface IGuidanceLaneInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LaneMarkers(Windows.Services.Maps.Guidance.GuidanceLaneMarkers* return_value);
	HRESULT get_IsOnRoute(bool* return_value);
}

@uuid("fc09326c-ecc9-4928-a2a1-7232b99b94a1")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceManeuver")
interface IGuidanceManeuver : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	HRESULT add_GuidanceUpdated(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator*,Windows.Services.Maps.Guidance.GuidanceUpdatedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_GuidanceUpdated(EventRegistrationToken token);
	HRESULT add_DestinationReached(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_DestinationReached(EventRegistrationToken token);
	HRESULT add_Rerouting(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_Rerouting(EventRegistrationToken token);
	HRESULT add_Rerouted(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator*,Windows.Services.Maps.Guidance.GuidanceReroutedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_Rerouted(EventRegistrationToken token);
	HRESULT add_RerouteFailed(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_RerouteFailed(EventRegistrationToken token);
	HRESULT add_UserLocationLost(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_UserLocationLost(EventRegistrationToken token);
	HRESULT add_UserLocationRestored(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_UserLocationRestored(EventRegistrationToken token);
	HRESULT abi_SetGuidanceVoice(INT32 voiceId, HSTRING voiceFolder);
	HRESULT abi_UpdateUserLocation(Windows.Devices.Geolocation.Geocoordinate userLocation);
	HRESULT abi_UpdateUserLocationWithPositionOverride(Windows.Devices.Geolocation.Geocoordinate userLocation, Windows.Devices.Geolocation.BasicGeoposition positionOverride);
}

@uuid("6cdc50d1-041c-4bf3-b633-a101fc2f6b57")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceNavigator")
interface IGuidanceNavigator2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_AudioNotificationRequested(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.Guidance.GuidanceNavigator*,Windows.Services.Maps.Guidance.GuidanceAudioNotificationRequestedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_AudioNotificationRequested(EventRegistrationToken token);
	HRESULT get_IsGuidanceAudioMuted(bool* return_value);
	HRESULT set_IsGuidanceAudioMuted(bool value);
}

@uuid("00fd9513-4456-4e66-a143-3add6be08426")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceNavigator")
interface IGuidanceNavigatorStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetCurrent(Windows.Services.Maps.Guidance.GuidanceNavigator* return_result);
}

@uuid("54c5c3e2-7784-4c85-8c95-d0c6efb43965")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceNavigator")
interface IGuidanceNavigatorStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UseAppProvidedVoice(bool* return_value);
}

@uuid("115d4008-d528-454e-bb94-a50341d2c9f1")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceReroutedEventArgs")
interface IGuidanceReroutedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Route(Windows.Services.Maps.Guidance.GuidanceRoute* return_result);
}

@uuid("b32758a6-be78-4c63-afe7-6c2957479b3e")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceRoadSegment")
interface IGuidanceRoadSegment : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CanCreateFromMapRoute(Windows.Services.Maps.MapRoute mapRoute, bool* return_result);
	HRESULT abi_TryCreateFromMapRoute(Windows.Services.Maps.MapRoute mapRoute, Windows.Services.Maps.Guidance.GuidanceRoute* return_result);
}

@uuid("db1f8da5-b878-4d92-98dd-347d23d38262")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceTelemetryCollector")
interface IGuidanceTelemetryCollector : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetCurrent(Windows.Services.Maps.Guidance.GuidanceTelemetryCollector* return_result);
}

@uuid("fdac160b-9e8d-4de3-a9fa-b06321d18db9")
@WinrtFactory("Windows.Services.Maps.Guidance.GuidanceUpdatedEventArgs")
interface IGuidanceUpdatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

interface GuidanceAudioNotificationRequestedEventArgs
{
}

interface GuidanceLaneInfo
{
}

interface GuidanceManeuver
{
}

interface GuidanceMapMatchedCoordinate
{
}

interface GuidanceNavigator
{
}

interface GuidanceReroutedEventArgs
{
}

interface GuidanceRoadSegment
{
}

interface GuidanceRoadSignpost
{
}

interface GuidanceRoute
{
}

interface GuidanceTelemetryCollector
{
}

interface GuidanceUpdatedEventArgs
{
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