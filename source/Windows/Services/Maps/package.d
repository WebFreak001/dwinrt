module Windows.Services.Maps;

import dwinrt;

@uuid("ed268c74-5913-11e6-8b77-86f30ca893d3")
@WinrtFactory("Windows.Services.Maps.EnhancedWaypoint")
interface IEnhancedWaypoint : IInspectable
{
extern(Windows):
	HRESULT get_Point(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_Kind(Windows.Services.Maps.WaypointKind* return_value);
}

@uuid("af868477-a2aa-46dd-b645-23b31b8aa6c7")
@WinrtFactory("Windows.Services.Maps.EnhancedWaypoint")
interface IEnhancedWaypointFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Devices.Geolocation.Geopoint point, Windows.Services.Maps.WaypointKind kind, Windows.Services.Maps.EnhancedWaypoint* return_value);
}

@uuid("c1a36d8a-2630-4378-9e4a-6e44253dceba")
@WinrtFactory("Windows.Services.Maps.ManeuverWarning")
interface IManeuverWarning : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.Services.Maps.ManeuverWarningKind* return_value);
	HRESULT get_Severity(Windows.Services.Maps.ManeuverWarningSeverity* return_value);
}

@uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699")
@WinrtFactory("Windows.Services.Maps.MapAddress")
interface IMapAddress : IInspectable
{
extern(Windows):
	HRESULT get_BuildingName(HSTRING* return_value);
	HRESULT get_BuildingFloor(HSTRING* return_value);
	HRESULT get_BuildingRoom(HSTRING* return_value);
	HRESULT get_BuildingWing(HSTRING* return_value);
	HRESULT get_StreetNumber(HSTRING* return_value);
	HRESULT get_Street(HSTRING* return_value);
	HRESULT get_Neighborhood(HSTRING* return_value);
	HRESULT get_District(HSTRING* return_value);
	HRESULT get_Town(HSTRING* return_value);
	HRESULT get_Region(HSTRING* return_value);
	HRESULT get_RegionCode(HSTRING* return_value);
	HRESULT get_Country(HSTRING* return_value);
	HRESULT get_CountryCode(HSTRING* return_value);
	HRESULT get_PostCode(HSTRING* return_value);
	HRESULT get_Continent(HSTRING* return_value);
}

@uuid("75cd6df1-e5ad-45a9-bf40-6cf256c1dd13")
@WinrtFactory("Windows.Services.Maps.MapAddress")
interface IMapAddress2 : IInspectable
{
extern(Windows):
	HRESULT get_FormattedAddress(HSTRING* return_value);
}

@uuid("3c073f57-0da4-42e8-9ee2-a96fcf2371dc")
@WinrtFactory("Windows.Services.Maps.MapLocation")
interface IMapLocation : IInspectable
{
extern(Windows):
	HRESULT get_Point(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_Address(Windows.Services.Maps.MapAddress* return_value);
}

@uuid("43f1f179-e8cc-45f6-bed2-54ccbf965d9a")
@WinrtFactory("Windows.Services.Maps.MapLocationFinderResult")
interface IMapLocationFinderResult : IInspectable
{
extern(Windows):
	HRESULT get_Locations(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.MapLocation)* return_value);
	HRESULT get_Status(Windows.Services.Maps.MapLocationFinderStatus* return_value);
}

@uuid("318adb5d-1c5d-4f35-a2df-aaca94959517")
@WinrtFactory("Windows.Services.Maps.MapLocationFinder")
interface IMapLocationFinderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FindLocationsAtAsync(Windows.Devices.Geolocation.Geopoint queryPoint, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapLocationFinderResult)* return_result);
	HRESULT abi_FindLocationsAsync(HSTRING searchText, Windows.Devices.Geolocation.Geopoint referencePoint, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapLocationFinderResult)* return_result);
	HRESULT abi_FindLocationsWithMaxCountAsync(HSTRING searchText, Windows.Devices.Geolocation.Geopoint referencePoint, UINT32 maxCount, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapLocationFinderResult)* return_result);
}

@uuid("959a8b96-6485-4dfd-851a-33ac317e3af6")
@WinrtFactory("Windows.Services.Maps.MapLocationFinder")
interface IMapLocationFinderStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_FindLocationsAtWithAccuracyAsync(Windows.Devices.Geolocation.Geopoint queryPoint, Windows.Services.Maps.MapLocationDesiredAccuracy accuracy, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapLocationFinderResult)* return_result);
}

@uuid("37e3e515-82b4-4d54-8fd9-af2624b3011c")
@WinrtFactory("Windows.Services.Maps.MapManager")
interface IMapManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_ShowDownloadedMapsUI();
	HRESULT abi_ShowMapsUpdateUI();
}

@uuid("fb07b732-584d-4583-9c60-641fea274349")
@WinrtFactory("Windows.Services.Maps.MapRoute")
interface IMapRoute : IInspectable
{
extern(Windows):
	HRESULT get_BoundingBox(Windows.Devices.Geolocation.GeoboundingBox* return_value);
	HRESULT get_LengthInMeters(double* return_value);
	HRESULT get_EstimatedDuration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Path(Windows.Devices.Geolocation.Geopath* return_value);
	HRESULT get_Legs(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.MapRouteLeg)* return_value);
	HRESULT get_IsTrafficBased(bool* return_value);
}

@uuid("d1c5d40c-2213-4ab0-a260-46b38169beac")
@WinrtFactory("Windows.Services.Maps.MapRoute")
interface IMapRoute2 : IInspectable
{
extern(Windows):
	HRESULT get_ViolatedRestrictions(Windows.Services.Maps.MapRouteRestrictions* return_value);
	HRESULT get_HasBlockedRoads(bool* return_value);
}

@uuid("858d1eae-f2ad-429f-bb37-cd21094ffc92")
@WinrtFactory("Windows.Services.Maps.MapRoute")
interface IMapRoute3 : IInspectable
{
extern(Windows):
	HRESULT get_DurationWithoutTraffic(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_TrafficCongestion(Windows.Services.Maps.TrafficCongestion* return_value);
}

@uuid("6815364d-c6dc-4697-a452-b18f8f0b67a1")
@WinrtFactory("Windows.Services.Maps.MapRouteDrivingOptions")
interface IMapRouteDrivingOptions : IInspectable
{
extern(Windows):
	HRESULT get_MaxAlternateRouteCount(UINT32* return_value);
	HRESULT set_MaxAlternateRouteCount(UINT32 value);
	HRESULT get_InitialHeading(Windows.Foundation.IReference!(double)* return_value);
	HRESULT set_InitialHeading(Windows.Foundation.IReference!(double) value);
	HRESULT get_RouteOptimization(Windows.Services.Maps.MapRouteOptimization* return_value);
	HRESULT set_RouteOptimization(Windows.Services.Maps.MapRouteOptimization value);
	HRESULT get_RouteRestrictions(Windows.Services.Maps.MapRouteRestrictions* return_value);
	HRESULT set_RouteRestrictions(Windows.Services.Maps.MapRouteRestrictions value);
}

@uuid("a868a31a-9422-46ac-8ca1-b1614d4bfbe2")
@WinrtFactory("Windows.Services.Maps.MapRouteFinderResult")
interface IMapRouteFinderResult : IInspectable
{
extern(Windows):
	HRESULT get_Route(Windows.Services.Maps.MapRoute* return_value);
	HRESULT get_Status(Windows.Services.Maps.MapRouteFinderStatus* return_value);
}

@uuid("20709c6d-d90c-46c8-91c6-7d4be4efb215")
@WinrtFactory("Windows.Services.Maps.MapRouteFinderResult")
interface IMapRouteFinderResult2 : IInspectable
{
extern(Windows):
	HRESULT get_AlternateRoutes(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.MapRoute)* return_value);
}

@uuid("b8a5c50f-1c64-4c3a-81eb-1f7c152afbbb")
@WinrtFactory("Windows.Services.Maps.MapRouteFinder")
interface IMapRouteFinderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDrivingRouteAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetDrivingRouteWithOptimizationAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint, Windows.Services.Maps.MapRouteOptimization optimization, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetDrivingRouteWithOptimizationAndRestrictionsAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint, Windows.Services.Maps.MapRouteOptimization optimization, Windows.Services.Maps.MapRouteRestrictions restrictions, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetDrivingRouteWithOptimizationRestrictionsAndHeadingAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint, Windows.Services.Maps.MapRouteOptimization optimization, Windows.Services.Maps.MapRouteRestrictions restrictions, double headingInDegrees, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetDrivingRouteFromWaypointsAsync(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) wayPoints, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetDrivingRouteFromWaypointsAndOptimizationAsync(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) wayPoints, Windows.Services.Maps.MapRouteOptimization optimization, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetDrivingRouteFromWaypointsOptimizationAndRestrictionsAsync(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) wayPoints, Windows.Services.Maps.MapRouteOptimization optimization, Windows.Services.Maps.MapRouteRestrictions restrictions, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetDrivingRouteFromWaypointsOptimizationRestrictionsAndHeadingAsync(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) wayPoints, Windows.Services.Maps.MapRouteOptimization optimization, Windows.Services.Maps.MapRouteRestrictions restrictions, double headingInDegrees, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetWalkingRouteAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetWalkingRouteFromWaypointsAsync(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) wayPoints, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
}

@uuid("afcc2c73-7760-49af-b3bd-baf135b703e1")
@WinrtFactory("Windows.Services.Maps.MapRouteFinder")
interface IMapRouteFinderStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDrivingRouteWithOptionsAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint, Windows.Services.Maps.MapRouteDrivingOptions options, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
}

@uuid("f6098134-5913-11e6-8b77-86f30ca893d3")
@WinrtFactory("Windows.Services.Maps.MapRouteFinder")
interface IMapRouteFinderStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDrivingRouteFromEnhancedWaypointsAsync(Windows.Foundation.Collections.IIterable!(Windows.Services.Maps.EnhancedWaypoint) waypoints, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
	HRESULT abi_GetDrivingRouteFromEnhancedWaypointsWithOptionsAsync(Windows.Foundation.Collections.IIterable!(Windows.Services.Maps.EnhancedWaypoint) waypoints, Windows.Services.Maps.MapRouteDrivingOptions options, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult)* return_result);
}

@uuid("96f8b2f6-5bba-4d17-9db6-1a263fec7471")
@WinrtFactory("Windows.Services.Maps.MapRouteLeg")
interface IMapRouteLeg : IInspectable
{
extern(Windows):
	HRESULT get_BoundingBox(Windows.Devices.Geolocation.GeoboundingBox* return_value);
	HRESULT get_Path(Windows.Devices.Geolocation.Geopath* return_value);
	HRESULT get_LengthInMeters(double* return_value);
	HRESULT get_EstimatedDuration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Maneuvers(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.MapRouteManeuver)* return_value);
}

@uuid("02e2062d-c9c6-45b8-8e54-1a10b57a17e8")
@WinrtFactory("Windows.Services.Maps.MapRouteLeg")
interface IMapRouteLeg2 : IInspectable
{
extern(Windows):
	HRESULT get_DurationWithoutTraffic(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_TrafficCongestion(Windows.Services.Maps.TrafficCongestion* return_value);
}

@uuid("ed5c17f0-a6ab-4d65-a086-fa8a7e340df2")
@WinrtFactory("Windows.Services.Maps.MapRouteManeuver")
interface IMapRouteManeuver : IInspectable
{
extern(Windows):
	HRESULT get_StartingPoint(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_LengthInMeters(double* return_value);
	HRESULT get_InstructionText(HSTRING* return_value);
	HRESULT get_Kind(Windows.Services.Maps.MapRouteManeuverKind* return_value);
	HRESULT get_ExitNumber(HSTRING* return_value);
	HRESULT get_ManeuverNotices(Windows.Services.Maps.MapManeuverNotices* return_value);
}

@uuid("5d7bcd9c-7c9b-41df-838b-eae21e4b05a9")
@WinrtFactory("Windows.Services.Maps.MapRouteManeuver")
interface IMapRouteManeuver2 : IInspectable
{
extern(Windows):
	HRESULT get_StartHeading(double* return_value);
	HRESULT get_EndHeading(double* return_value);
	HRESULT get_StreetName(HSTRING* return_value);
}

@uuid("a6a138df-0483-4166-85be-b99336c11875")
@WinrtFactory("Windows.Services.Maps.MapRouteManeuver")
interface IMapRouteManeuver3 : IInspectable
{
extern(Windows):
	HRESULT get_Warnings(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.ManeuverWarning)* return_value);
}

@uuid("0144ad85-c04c-4cdd-871a-a0726d097cd4")
@WinrtFactory("Windows.Services.Maps.MapService")
interface IMapServiceStatics : IInspectable
{
extern(Windows):
	HRESULT set_ServiceToken(HSTRING value);
	HRESULT get_ServiceToken(HSTRING* return_value);
}

@uuid("f8193eed-9c85-40a9-8896-0fc3fd2b7c2a")
@WinrtFactory("Windows.Services.Maps.MapService")
interface IMapServiceStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_WorldViewRegionCode(HSTRING* return_value);
}

@uuid("0a11ce20-63a7-4854-b355-d6dcda223d1b")
@WinrtFactory("Windows.Services.Maps.MapService")
interface IMapServiceStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_DataAttributions(HSTRING* return_value);
}

@uuid("088a2862-6abc-420e-945f-4cfd89c67356")
@WinrtFactory("Windows.Services.Maps.MapService")
interface IMapServiceStatics4 : IInspectable
{
extern(Windows):
	HRESULT set_DataUsagePreference(Windows.Services.Maps.MapServiceDataUsagePreference value);
	HRESULT get_DataUsagePreference(Windows.Services.Maps.MapServiceDataUsagePreference* return_value);
}

interface EnhancedWaypoint : Windows.Services.Maps.IEnhancedWaypoint
{
extern(Windows):
	final Windows.Devices.Geolocation.Geopoint Point()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK((cast(Windows.Services.Maps.IEnhancedWaypoint)this.asInterface(uuid("ed268c74-5913-11e6-8b77-86f30ca893d3"))).get_Point(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.WaypointKind Kind()
	{
		Windows.Services.Maps.WaypointKind _ret;
		Debug.OK((cast(Windows.Services.Maps.IEnhancedWaypoint)this.asInterface(uuid("ed268c74-5913-11e6-8b77-86f30ca893d3"))).get_Kind(&_ret));
		return _ret;
	}
	static Windows.Services.Maps.EnhancedWaypoint New(Windows.Devices.Geolocation.Geopoint point, Windows.Services.Maps.WaypointKind kind)
	{
		auto factory = factory!(Windows.Services.Maps.IEnhancedWaypointFactory);
		Windows.Services.Maps.EnhancedWaypoint _ret;
		Debug.OK((cast(Windows.Services.Maps.IEnhancedWaypointFactory)factory.asInterface(uuid("af868477-a2aa-46dd-b645-23b31b8aa6c7"))).abi_Create(point, kind, &_ret));
		return _ret;
	}
}

interface ManeuverWarning : Windows.Services.Maps.IManeuverWarning
{
extern(Windows):
	final Windows.Services.Maps.ManeuverWarningKind Kind()
	{
		Windows.Services.Maps.ManeuverWarningKind _ret;
		Debug.OK((cast(Windows.Services.Maps.IManeuverWarning)this.asInterface(uuid("c1a36d8a-2630-4378-9e4a-6e44253dceba"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.ManeuverWarningSeverity Severity()
	{
		Windows.Services.Maps.ManeuverWarningSeverity _ret;
		Debug.OK((cast(Windows.Services.Maps.IManeuverWarning)this.asInterface(uuid("c1a36d8a-2630-4378-9e4a-6e44253dceba"))).get_Severity(&_ret));
		return _ret;
	}
}

interface MapAddress : Windows.Services.Maps.IMapAddress, Windows.Services.Maps.IMapAddress2
{
extern(Windows):
	final HSTRING BuildingName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapAddress)this.asInterface(uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699"))).get_BuildingName(&_ret));
		return _ret;
	}
	final HSTRING BuildingFloor()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapAddress)this.asInterface(uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699"))).get_BuildingFloor(&_ret));
		return _ret;
	}
	final HSTRING BuildingRoom()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapAddress)this.asInterface(uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699"))).get_BuildingRoom(&_ret));
		return _ret;
	}
	final HSTRING BuildingWing()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapAddress)this.asInterface(uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699"))).get_BuildingWing(&_ret));
		return _ret;
	}
	final HSTRING StreetNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapAddress)this.asInterface(uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699"))).get_StreetNumber(&_ret));
		return _ret;
	}
	final HSTRING Street()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapAddress)this.asInterface(uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699"))).get_Street(&_ret));
		return _ret;
	}
	final HSTRING Neighborhood()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapAddress)this.asInterface(uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699"))).get_Neighborhood(&_ret));
		return _ret;
	}
	final HSTRING District()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapAddress)this.asInterface(uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699"))).get_District(&_ret));
		return _ret;
	}
	final HSTRING Town()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapAddress)this.asInterface(uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699"))).get_Town(&_ret));
		return _ret;
	}
	final HSTRING Region()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapAddress)this.asInterface(uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699"))).get_Region(&_ret));
		return _ret;
	}
	final HSTRING RegionCode()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapAddress)this.asInterface(uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699"))).get_RegionCode(&_ret));
		return _ret;
	}
	final HSTRING Country()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapAddress)this.asInterface(uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699"))).get_Country(&_ret));
		return _ret;
	}
	final HSTRING CountryCode()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapAddress)this.asInterface(uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699"))).get_CountryCode(&_ret));
		return _ret;
	}
	final HSTRING PostCode()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapAddress)this.asInterface(uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699"))).get_PostCode(&_ret));
		return _ret;
	}
	final HSTRING Continent()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapAddress)this.asInterface(uuid("cfa7a973-a3b4-4494-b3ff-cba94db69699"))).get_Continent(&_ret));
		return _ret;
	}
	final HSTRING FormattedAddress()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapAddress2)this.asInterface(uuid("75cd6df1-e5ad-45a9-bf40-6cf256c1dd13"))).get_FormattedAddress(&_ret));
		return _ret;
	}
}

interface MapLocation : Windows.Services.Maps.IMapLocation
{
extern(Windows):
	final Windows.Devices.Geolocation.Geopoint Point()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapLocation)this.asInterface(uuid("3c073f57-0da4-42e8-9ee2-a96fcf2371dc"))).get_Point(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapLocation)this.asInterface(uuid("3c073f57-0da4-42e8-9ee2-a96fcf2371dc"))).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapLocation)this.asInterface(uuid("3c073f57-0da4-42e8-9ee2-a96fcf2371dc"))).get_Description(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.MapAddress Address()
	{
		Windows.Services.Maps.MapAddress _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapLocation)this.asInterface(uuid("3c073f57-0da4-42e8-9ee2-a96fcf2371dc"))).get_Address(&_ret));
		return _ret;
	}
}

interface MapLocationFinder
{
	private static Windows.Services.Maps.IMapLocationFinderStatics _staticInstance;
	public static Windows.Services.Maps.IMapLocationFinderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Services.Maps.IMapLocationFinderStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapLocationFinderResult) FindLocationsAtAsync(Windows.Devices.Geolocation.Geopoint queryPoint)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapLocationFinderResult) _ret;
		Debug.OK(staticInstance.abi_FindLocationsAtAsync(queryPoint, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapLocationFinderResult) FindLocationsAsync(HSTRING searchText, Windows.Devices.Geolocation.Geopoint referencePoint)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapLocationFinderResult) _ret;
		Debug.OK(staticInstance.abi_FindLocationsAsync(searchText, referencePoint, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapLocationFinderResult) FindLocationsWithMaxCountAsync(HSTRING searchText, Windows.Devices.Geolocation.Geopoint referencePoint, UINT32 maxCount)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapLocationFinderResult) _ret;
		Debug.OK(staticInstance.abi_FindLocationsWithMaxCountAsync(searchText, referencePoint, maxCount, &_ret));
		return _ret;
	}
}

interface MapLocationFinderResult : Windows.Services.Maps.IMapLocationFinderResult
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.MapLocation) Locations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.MapLocation) _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapLocationFinderResult)this.asInterface(uuid("43f1f179-e8cc-45f6-bed2-54ccbf965d9a"))).get_Locations(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.MapLocationFinderStatus Status()
	{
		Windows.Services.Maps.MapLocationFinderStatus _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapLocationFinderResult)this.asInterface(uuid("43f1f179-e8cc-45f6-bed2-54ccbf965d9a"))).get_Status(&_ret));
		return _ret;
	}
}

interface MapManager
{
	private static Windows.Services.Maps.IMapManagerStatics _staticInstance;
	public static Windows.Services.Maps.IMapManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Services.Maps.IMapManagerStatics);
		return _staticInstance;
	}
	static void ShowDownloadedMapsUI()
	{
		Debug.OK(staticInstance.abi_ShowDownloadedMapsUI());
	}
	static void ShowMapsUpdateUI()
	{
		Debug.OK(staticInstance.abi_ShowMapsUpdateUI());
	}
}

interface MapRoute : Windows.Services.Maps.IMapRoute, Windows.Services.Maps.IMapRoute2, Windows.Services.Maps.IMapRoute3
{
extern(Windows):
	final Windows.Devices.Geolocation.GeoboundingBox BoundingBox()
	{
		Windows.Devices.Geolocation.GeoboundingBox _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRoute)this.asInterface(uuid("fb07b732-584d-4583-9c60-641fea274349"))).get_BoundingBox(&_ret));
		return _ret;
	}
	final double LengthInMeters()
	{
		double _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRoute)this.asInterface(uuid("fb07b732-584d-4583-9c60-641fea274349"))).get_LengthInMeters(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan EstimatedDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRoute)this.asInterface(uuid("fb07b732-584d-4583-9c60-641fea274349"))).get_EstimatedDuration(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geopath Path()
	{
		Windows.Devices.Geolocation.Geopath _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRoute)this.asInterface(uuid("fb07b732-584d-4583-9c60-641fea274349"))).get_Path(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.MapRouteLeg) Legs()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.MapRouteLeg) _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRoute)this.asInterface(uuid("fb07b732-584d-4583-9c60-641fea274349"))).get_Legs(&_ret));
		return _ret;
	}
	final bool IsTrafficBased()
	{
		bool _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRoute)this.asInterface(uuid("fb07b732-584d-4583-9c60-641fea274349"))).get_IsTrafficBased(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.MapRouteRestrictions ViolatedRestrictions()
	{
		Windows.Services.Maps.MapRouteRestrictions _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRoute2)this.asInterface(uuid("d1c5d40c-2213-4ab0-a260-46b38169beac"))).get_ViolatedRestrictions(&_ret));
		return _ret;
	}
	final bool HasBlockedRoads()
	{
		bool _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRoute2)this.asInterface(uuid("d1c5d40c-2213-4ab0-a260-46b38169beac"))).get_HasBlockedRoads(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan DurationWithoutTraffic()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRoute3)this.asInterface(uuid("858d1eae-f2ad-429f-bb37-cd21094ffc92"))).get_DurationWithoutTraffic(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.TrafficCongestion TrafficCongestion()
	{
		Windows.Services.Maps.TrafficCongestion _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRoute3)this.asInterface(uuid("858d1eae-f2ad-429f-bb37-cd21094ffc92"))).get_TrafficCongestion(&_ret));
		return _ret;
	}
}

interface MapRouteDrivingOptions : Windows.Services.Maps.IMapRouteDrivingOptions
{
extern(Windows):
	final UINT32 MaxAlternateRouteCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteDrivingOptions)this.asInterface(uuid("6815364d-c6dc-4697-a452-b18f8f0b67a1"))).get_MaxAlternateRouteCount(&_ret));
		return _ret;
	}
	final void MaxAlternateRouteCount(UINT32 value)
	{
		Debug.OK((cast(Windows.Services.Maps.IMapRouteDrivingOptions)this.asInterface(uuid("6815364d-c6dc-4697-a452-b18f8f0b67a1"))).set_MaxAlternateRouteCount(value));
	}
	final Windows.Foundation.IReference!(double) InitialHeading()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteDrivingOptions)this.asInterface(uuid("6815364d-c6dc-4697-a452-b18f8f0b67a1"))).get_InitialHeading(&_ret));
		return _ret;
	}
	final void InitialHeading(Windows.Foundation.IReference!(double) value)
	{
		Debug.OK((cast(Windows.Services.Maps.IMapRouteDrivingOptions)this.asInterface(uuid("6815364d-c6dc-4697-a452-b18f8f0b67a1"))).set_InitialHeading(value));
	}
	final Windows.Services.Maps.MapRouteOptimization RouteOptimization()
	{
		Windows.Services.Maps.MapRouteOptimization _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteDrivingOptions)this.asInterface(uuid("6815364d-c6dc-4697-a452-b18f8f0b67a1"))).get_RouteOptimization(&_ret));
		return _ret;
	}
	final void RouteOptimization(Windows.Services.Maps.MapRouteOptimization value)
	{
		Debug.OK((cast(Windows.Services.Maps.IMapRouteDrivingOptions)this.asInterface(uuid("6815364d-c6dc-4697-a452-b18f8f0b67a1"))).set_RouteOptimization(value));
	}
	final Windows.Services.Maps.MapRouteRestrictions RouteRestrictions()
	{
		Windows.Services.Maps.MapRouteRestrictions _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteDrivingOptions)this.asInterface(uuid("6815364d-c6dc-4697-a452-b18f8f0b67a1"))).get_RouteRestrictions(&_ret));
		return _ret;
	}
	final void RouteRestrictions(Windows.Services.Maps.MapRouteRestrictions value)
	{
		Debug.OK((cast(Windows.Services.Maps.IMapRouteDrivingOptions)this.asInterface(uuid("6815364d-c6dc-4697-a452-b18f8f0b67a1"))).set_RouteRestrictions(value));
	}
	static MapRouteDrivingOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MapRouteDrivingOptions).abi_ActivateInstance(&ret));
		return cast(MapRouteDrivingOptions) ret;
	}
}

interface MapRouteFinder
{
	private static Windows.Services.Maps.IMapRouteFinderStatics _staticInstance;
	public static Windows.Services.Maps.IMapRouteFinderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Services.Maps.IMapRouteFinderStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) GetDrivingRouteAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) _ret;
		Debug.OK(staticInstance.abi_GetDrivingRouteAsync(startPoint, endPoint, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) GetDrivingRouteWithOptimizationAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint, Windows.Services.Maps.MapRouteOptimization optimization)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) _ret;
		Debug.OK(staticInstance.abi_GetDrivingRouteWithOptimizationAsync(startPoint, endPoint, optimization, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) GetDrivingRouteWithOptimizationAndRestrictionsAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint, Windows.Services.Maps.MapRouteOptimization optimization, Windows.Services.Maps.MapRouteRestrictions restrictions)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) _ret;
		Debug.OK(staticInstance.abi_GetDrivingRouteWithOptimizationAndRestrictionsAsync(startPoint, endPoint, optimization, restrictions, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) GetDrivingRouteWithOptimizationRestrictionsAndHeadingAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint, Windows.Services.Maps.MapRouteOptimization optimization, Windows.Services.Maps.MapRouteRestrictions restrictions, double headingInDegrees)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) _ret;
		Debug.OK(staticInstance.abi_GetDrivingRouteWithOptimizationRestrictionsAndHeadingAsync(startPoint, endPoint, optimization, restrictions, headingInDegrees, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) GetDrivingRouteFromWaypointsAsync(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) wayPoints)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) _ret;
		Debug.OK(staticInstance.abi_GetDrivingRouteFromWaypointsAsync(wayPoints, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) GetDrivingRouteFromWaypointsAndOptimizationAsync(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) wayPoints, Windows.Services.Maps.MapRouteOptimization optimization)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) _ret;
		Debug.OK(staticInstance.abi_GetDrivingRouteFromWaypointsAndOptimizationAsync(wayPoints, optimization, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) GetDrivingRouteFromWaypointsOptimizationAndRestrictionsAsync(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) wayPoints, Windows.Services.Maps.MapRouteOptimization optimization, Windows.Services.Maps.MapRouteRestrictions restrictions)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) _ret;
		Debug.OK(staticInstance.abi_GetDrivingRouteFromWaypointsOptimizationAndRestrictionsAsync(wayPoints, optimization, restrictions, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) GetDrivingRouteFromWaypointsOptimizationRestrictionsAndHeadingAsync(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) wayPoints, Windows.Services.Maps.MapRouteOptimization optimization, Windows.Services.Maps.MapRouteRestrictions restrictions, double headingInDegrees)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) _ret;
		Debug.OK(staticInstance.abi_GetDrivingRouteFromWaypointsOptimizationRestrictionsAndHeadingAsync(wayPoints, optimization, restrictions, headingInDegrees, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) GetWalkingRouteAsync(Windows.Devices.Geolocation.Geopoint startPoint, Windows.Devices.Geolocation.Geopoint endPoint)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) _ret;
		Debug.OK(staticInstance.abi_GetWalkingRouteAsync(startPoint, endPoint, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) GetWalkingRouteFromWaypointsAsync(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) wayPoints)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.MapRouteFinderResult) _ret;
		Debug.OK(staticInstance.abi_GetWalkingRouteFromWaypointsAsync(wayPoints, &_ret));
		return _ret;
	}
}

interface MapRouteFinderResult : Windows.Services.Maps.IMapRouteFinderResult, Windows.Services.Maps.IMapRouteFinderResult2
{
extern(Windows):
	final Windows.Services.Maps.MapRoute Route()
	{
		Windows.Services.Maps.MapRoute _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteFinderResult)this.asInterface(uuid("a868a31a-9422-46ac-8ca1-b1614d4bfbe2"))).get_Route(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.MapRouteFinderStatus Status()
	{
		Windows.Services.Maps.MapRouteFinderStatus _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteFinderResult)this.asInterface(uuid("a868a31a-9422-46ac-8ca1-b1614d4bfbe2"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.MapRoute) AlternateRoutes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.MapRoute) _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteFinderResult2)this.asInterface(uuid("20709c6d-d90c-46c8-91c6-7d4be4efb215"))).get_AlternateRoutes(&_ret));
		return _ret;
	}
}

interface MapRouteLeg : Windows.Services.Maps.IMapRouteLeg, Windows.Services.Maps.IMapRouteLeg2
{
extern(Windows):
	final Windows.Devices.Geolocation.GeoboundingBox BoundingBox()
	{
		Windows.Devices.Geolocation.GeoboundingBox _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteLeg)this.asInterface(uuid("96f8b2f6-5bba-4d17-9db6-1a263fec7471"))).get_BoundingBox(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geopath Path()
	{
		Windows.Devices.Geolocation.Geopath _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteLeg)this.asInterface(uuid("96f8b2f6-5bba-4d17-9db6-1a263fec7471"))).get_Path(&_ret));
		return _ret;
	}
	final double LengthInMeters()
	{
		double _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteLeg)this.asInterface(uuid("96f8b2f6-5bba-4d17-9db6-1a263fec7471"))).get_LengthInMeters(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan EstimatedDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteLeg)this.asInterface(uuid("96f8b2f6-5bba-4d17-9db6-1a263fec7471"))).get_EstimatedDuration(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.MapRouteManeuver) Maneuvers()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.MapRouteManeuver) _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteLeg)this.asInterface(uuid("96f8b2f6-5bba-4d17-9db6-1a263fec7471"))).get_Maneuvers(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan DurationWithoutTraffic()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteLeg2)this.asInterface(uuid("02e2062d-c9c6-45b8-8e54-1a10b57a17e8"))).get_DurationWithoutTraffic(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.TrafficCongestion TrafficCongestion()
	{
		Windows.Services.Maps.TrafficCongestion _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteLeg2)this.asInterface(uuid("02e2062d-c9c6-45b8-8e54-1a10b57a17e8"))).get_TrafficCongestion(&_ret));
		return _ret;
	}
}

interface MapRouteManeuver : Windows.Services.Maps.IMapRouteManeuver, Windows.Services.Maps.IMapRouteManeuver2, Windows.Services.Maps.IMapRouteManeuver3
{
extern(Windows):
	final Windows.Devices.Geolocation.Geopoint StartingPoint()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteManeuver)this.asInterface(uuid("ed5c17f0-a6ab-4d65-a086-fa8a7e340df2"))).get_StartingPoint(&_ret));
		return _ret;
	}
	final double LengthInMeters()
	{
		double _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteManeuver)this.asInterface(uuid("ed5c17f0-a6ab-4d65-a086-fa8a7e340df2"))).get_LengthInMeters(&_ret));
		return _ret;
	}
	final HSTRING InstructionText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteManeuver)this.asInterface(uuid("ed5c17f0-a6ab-4d65-a086-fa8a7e340df2"))).get_InstructionText(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.MapRouteManeuverKind Kind()
	{
		Windows.Services.Maps.MapRouteManeuverKind _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteManeuver)this.asInterface(uuid("ed5c17f0-a6ab-4d65-a086-fa8a7e340df2"))).get_Kind(&_ret));
		return _ret;
	}
	final HSTRING ExitNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteManeuver)this.asInterface(uuid("ed5c17f0-a6ab-4d65-a086-fa8a7e340df2"))).get_ExitNumber(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.MapManeuverNotices ManeuverNotices()
	{
		Windows.Services.Maps.MapManeuverNotices _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteManeuver)this.asInterface(uuid("ed5c17f0-a6ab-4d65-a086-fa8a7e340df2"))).get_ManeuverNotices(&_ret));
		return _ret;
	}
	final double StartHeading()
	{
		double _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteManeuver2)this.asInterface(uuid("5d7bcd9c-7c9b-41df-838b-eae21e4b05a9"))).get_StartHeading(&_ret));
		return _ret;
	}
	final double EndHeading()
	{
		double _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteManeuver2)this.asInterface(uuid("5d7bcd9c-7c9b-41df-838b-eae21e4b05a9"))).get_EndHeading(&_ret));
		return _ret;
	}
	final HSTRING StreetName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteManeuver2)this.asInterface(uuid("5d7bcd9c-7c9b-41df-838b-eae21e4b05a9"))).get_StreetName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.ManeuverWarning) Warnings()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.ManeuverWarning) _ret;
		Debug.OK((cast(Windows.Services.Maps.IMapRouteManeuver3)this.asInterface(uuid("a6a138df-0483-4166-85be-b99336c11875"))).get_Warnings(&_ret));
		return _ret;
	}
}

interface MapService
{
	private static Windows.Services.Maps.IMapServiceStatics _staticInstance;
	public static Windows.Services.Maps.IMapServiceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Services.Maps.IMapServiceStatics);
		return _staticInstance;
	}
	static void ServiceToken(HSTRING value)
	{
		Debug.OK(staticInstance.set_ServiceToken(value));
	}
	static HSTRING ServiceToken()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ServiceToken(&_ret));
		return _ret;
	}
}

enum ManeuverWarningKind
{
	None = 0,
	Accident = 1,
	AdministrativeDivisionChange = 2,
	Alert = 3,
	BlockedRoad = 4,
	CheckTimetable = 5,
	Congestion = 6,
	Construction = 7,
	CountryChange = 8,
	DisabledVehicle = 9,
	GateAccess = 10,
	GetOffTransit = 11,
	GetOnTransit = 12,
	IllegalUTurn = 13,
	MassTransit = 14,
	Miscellaneous = 15,
	NoIncident = 16,
	Other = 17,
	OtherNews = 18,
	OtherTrafficIncidents = 19,
	PlannedEvent = 20,
	PrivateRoad = 21,
	RestrictedTurn = 22,
	RoadClosures = 23,
	RoadHazard = 24,
	ScheduledConstruction = 25,
	SeasonalClosures = 26,
	Tollbooth = 27,
	TollRoad = 28,
	TollZoneEnter = 29,
	TollZoneExit = 30,
	TrafficFlow = 31,
	TransitLineChange = 32,
	UnpavedRoad = 33,
	UnscheduledConstruction = 34,
	Weather = 35
}

enum ManeuverWarningSeverity
{
	None = 0,
	LowImpact = 1,
	Minor = 2,
	Moderate = 3,
	Serious = 4
}

enum MapLocationDesiredAccuracy
{
	High = 0,
	Low = 1
}

enum MapLocationFinderStatus
{
	Success = 0,
	UnknownError = 1,
	InvalidCredentials = 2,
	BadLocation = 3,
	IndexFailure = 4,
	NetworkFailure = 5,
	NotSupported = 6
}

@bitflags
enum MapManeuverNotices
{
	None = 0x0,
	Toll = 0x1,
	Unpaved = 0x2
}

enum MapRouteFinderStatus
{
	Success = 0,
	UnknownError = 1,
	InvalidCredentials = 2,
	NoRouteFound = 3,
	NoRouteFoundWithGivenOptions = 4,
	StartPointNotFound = 5,
	EndPointNotFound = 6,
	NoPedestrianRouteFound = 7,
	NetworkFailure = 8,
	NotSupported = 9
}

enum MapRouteManeuverKind
{
	None = 0,
	Start = 1,
	Stopover = 2,
	StopoverResume = 3,
	End = 4,
	GoStraight = 5,
	UTurnLeft = 6,
	UTurnRight = 7,
	TurnKeepLeft = 8,
	TurnKeepRight = 9,
	TurnLightLeft = 10,
	TurnLightRight = 11,
	TurnLeft = 12,
	TurnRight = 13,
	TurnHardLeft = 14,
	TurnHardRight = 15,
	FreewayEnterLeft = 16,
	FreewayEnterRight = 17,
	FreewayLeaveLeft = 18,
	FreewayLeaveRight = 19,
	FreewayContinueLeft = 20,
	FreewayContinueRight = 21,
	TrafficCircleLeft = 22,
	TrafficCircleRight = 23,
	TakeFerry = 24
}

enum MapRouteOptimization
{
	Time = 0,
	Distance = 1,
	TimeWithTraffic = 2
}

@bitflags
enum MapRouteRestrictions
{
	None = 0x0,
	Highways = 0x1,
	TollRoads = 0x2,
	Ferries = 0x4,
	Tunnels = 0x8,
	DirtRoads = 0x10,
	Motorail = 0x20
}

enum MapServiceDataUsagePreference
{
	Default = 0,
	OfflineMapDataOnly = 1
}

enum TrafficCongestion
{
	Unknown = 0,
	Light = 1,
	Mild = 2,
	Medium = 3,
	Heavy = 4
}

enum WaypointKind
{
	Stop = 0,
	Via = 1
}