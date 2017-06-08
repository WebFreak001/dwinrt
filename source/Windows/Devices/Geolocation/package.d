module Windows.Devices.Geolocation;

import dwinrt;

@uuid("a8567a1a-64f4-4d48-bcea-f6b008eca34c")
@WinrtFactory("Windows.Devices.Geolocation.CivicAddress")
interface ICivicAddress : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Country(HSTRING* return_value);
	HRESULT get_State(HSTRING* return_value);
	HRESULT get_City(HSTRING* return_value);
	HRESULT get_PostalCode(HSTRING* return_value);
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
}

@uuid("0896c80b-274f-43da-9a06-cbfcdaeb4ec2")
@WinrtFactory("Windows.Devices.Geolocation.GeoboundingBox")
interface IGeoboundingBox : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NorthwestCorner(Windows.Devices.Geolocation.BasicGeoposition* return_value);
	HRESULT get_SoutheastCorner(Windows.Devices.Geolocation.BasicGeoposition* return_value);
	HRESULT get_Center(Windows.Devices.Geolocation.BasicGeoposition* return_value);
	HRESULT get_MinAltitude(double* return_value);
	HRESULT get_MaxAltitude(double* return_value);
}

@uuid("4dfba589-0411-4abc-b3b5-5bbccb57d98c")
@WinrtFactory("Windows.Devices.Geolocation.GeoboundingBox")
interface IGeoboundingBoxFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Devices.Geolocation.BasicGeoposition northwestCorner, Windows.Devices.Geolocation.BasicGeoposition southeastCorner, Windows.Devices.Geolocation.GeoboundingBox* return_value);
	HRESULT abi_CreateWithAltitudeReference(Windows.Devices.Geolocation.BasicGeoposition northwestCorner, Windows.Devices.Geolocation.BasicGeoposition southeastCorner, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, Windows.Devices.Geolocation.GeoboundingBox* return_value);
	HRESULT abi_CreateWithAltitudeReferenceAndSpatialReference(Windows.Devices.Geolocation.BasicGeoposition northwestCorner, Windows.Devices.Geolocation.BasicGeoposition southeastCorner, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, UINT32 spatialReferenceId, Windows.Devices.Geolocation.GeoboundingBox* return_value);
}

@uuid("67b80708-e61a-4cd0-841b-93233792b5ca")
@WinrtFactory("Windows.Devices.Geolocation.GeoboundingBox")
interface IGeoboundingBoxStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TryCompute(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions, Windows.Devices.Geolocation.GeoboundingBox* return_value);
	HRESULT abi_TryComputeWithAltitudeReference(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeRefSystem, Windows.Devices.Geolocation.GeoboundingBox* return_value);
	HRESULT abi_TryComputeWithAltitudeReferenceAndSpatialReference(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeRefSystem, UINT32 spatialReferenceId, Windows.Devices.Geolocation.GeoboundingBox* return_value);
}

@uuid("39e45843-a7f9-4e63-92a7-ba0c28d124b1")
@WinrtFactory("Windows.Devices.Geolocation.Geocircle")
interface IGeocircle : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Center(Windows.Devices.Geolocation.BasicGeoposition* return_value);
	HRESULT get_Radius(double* return_value);
}

@uuid("afd6531f-72b1-4f7d-87cc-4ed4c9849c05")
@WinrtFactory("Windows.Devices.Geolocation.Geocircle")
interface IGeocircleFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Devices.Geolocation.BasicGeoposition position, double radius, Windows.Devices.Geolocation.Geocircle* return_value);
	HRESULT abi_CreateWithAltitudeReferenceSystem(Windows.Devices.Geolocation.BasicGeoposition position, double radius, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, Windows.Devices.Geolocation.Geocircle* return_value);
	HRESULT abi_CreateWithAltitudeReferenceSystemAndSpatialReferenceId(Windows.Devices.Geolocation.BasicGeoposition position, double radius, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, UINT32 spatialReferenceId, Windows.Devices.Geolocation.Geocircle* return_value);
}

@uuid("ee21a3aa-976a-4c70-803d-083ea55bcbc4")
@WinrtFactory("Windows.Devices.Geolocation.Geocoordinate")
interface IGeocoordinate : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("Latitude may be altered or unavailable after Windows 8.1. Instead, use Point.Position.Latitude")
	HRESULT get_Latitude(double* return_value);
	deprecated("Longitude may be altered or unavailable after Windows 8.1. Instead, use Point.Position.Longitude")
	HRESULT get_Longitude(double* return_value);
	deprecated("Altitude may be altered or unavailable after Windows 8.1. Instead, use Point.Position.Altitude")
	HRESULT get_Altitude(Windows.Foundation.IReference!(double)* return_value);
	HRESULT get_Accuracy(double* return_value);
	HRESULT get_AltitudeAccuracy(Windows.Foundation.IReference!(double)* return_value);
	HRESULT get_Heading(Windows.Foundation.IReference!(double)* return_value);
	HRESULT get_Speed(Windows.Foundation.IReference!(double)* return_value);
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
}

@uuid("c32a74d9-2608-474c-912c-06dd490f4af7")
@WinrtFactory("Windows.Devices.Geolocation.GeocoordinateSatelliteData")
interface IGeocoordinateSatelliteData : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PositionDilutionOfPrecision(Windows.Foundation.IReference!(double)* return_ppValue);
	HRESULT get_HorizontalDilutionOfPrecision(Windows.Foundation.IReference!(double)* return_ppValue);
	HRESULT get_VerticalDilutionOfPrecision(Windows.Foundation.IReference!(double)* return_ppValue);
}

@uuid("feea0525-d22c-4d46-b527-0b96066fc7db")
@WinrtFactory("Windows.Devices.Geolocation.Geocoordinate")
interface IGeocoordinateWithPoint : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Point(Windows.Devices.Geolocation.Geopoint* return_value);
}

@uuid("95e634be-dbd6-40ac-b8f2-a65c0340d9a6")
@WinrtFactory("Windows.Devices.Geolocation.Geocoordinate")
interface IGeocoordinateWithPositionData : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PositionSource(Windows.Devices.Geolocation.PositionSource* return_pValue);
	HRESULT get_SatelliteData(Windows.Devices.Geolocation.GeocoordinateSatelliteData* return_ppValue);
}

@uuid("8543fc02-c9f1-4610-afe0-8bc3a6a87036")
@WinrtFactory("Windows.Devices.Geolocation.Geocoordinate")
interface IGeocoordinateWithPositionSourceTimestamp : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PositionSourceTimestamp(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
}

@uuid("a9c3bf62-4524-4989-8aa9-de019d2e551f")
@WinrtFactory("Windows.Devices.Geolocation.Geolocator")
interface IGeolocator : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DesiredAccuracy(Windows.Devices.Geolocation.PositionAccuracy* return_value);
	HRESULT set_DesiredAccuracy(Windows.Devices.Geolocation.PositionAccuracy value);
	HRESULT get_MovementThreshold(double* return_value);
	HRESULT set_MovementThreshold(double value);
	HRESULT get_ReportInterval(UINT32* return_value);
	HRESULT set_ReportInterval(UINT32 value);
	HRESULT get_LocationStatus(Windows.Devices.Geolocation.PositionStatus* return_value);
	HRESULT abi_GetGeopositionAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Geolocation.Geoposition)* return_value);
	HRESULT abi_GetGeopositionAsyncWithAgeAndTimeout(Windows.Foundation.TimeSpan maximumAge, Windows.Foundation.TimeSpan timeout, Windows.Foundation.IAsyncOperation!(Windows.Devices.Geolocation.Geoposition)* return_value);
	HRESULT add_PositionChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Geolocation.Geolocator*,Windows.Devices.Geolocation.PositionChangedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_PositionChanged(EventRegistrationToken token);
	HRESULT add_StatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Geolocation.Geolocator*,Windows.Devices.Geolocation.StatusChangedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_StatusChanged(EventRegistrationToken token);
}

@uuid("d1b42e6d-8891-43b4-ad36-27c6fe9a97b1")
@WinrtFactory("Windows.Devices.Geolocation.Geolocator")
interface IGeolocator2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AllowFallbackToConsentlessPositions();
}

@uuid("9a8e7571-2df5-4591-9f87-eb5fd894e9b7")
@WinrtFactory("Windows.Devices.Geolocation.Geolocator")
interface IGeolocatorStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Geolocation.GeolocationAccessStatus)* return_result);
	HRESULT abi_GetGeopositionHistoryAsync(Windows.Foundation.DateTime startTime, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Geolocation.Geoposition))* return_result);
	HRESULT abi_GetGeopositionHistoryWithDurationAsync(Windows.Foundation.DateTime startTime, Windows.Foundation.TimeSpan duration, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Geolocation.Geoposition))* return_result);
}

@uuid("993011a2-fa1c-4631-a71d-0dbeb1250d9c")
@WinrtFactory("Windows.Devices.Geolocation.Geolocator")
interface IGeolocatorStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsDefaultGeopositionRecommended(bool* return_value);
	HRESULT set_DefaultGeoposition(Windows.Foundation.IReference!(Windows.Devices.Geolocation.BasicGeoposition) value);
	HRESULT get_DefaultGeoposition(Windows.Foundation.IReference!(Windows.Devices.Geolocation.BasicGeoposition)* return_value);
}

@uuid("96f5d3c1-b80f-460a-994d-a96c47a51aa4")
@WinrtFactory("Windows.Devices.Geolocation.Geolocator")
interface IGeolocatorWithScalarAccuracy : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DesiredAccuracyInMeters(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_DesiredAccuracyInMeters(Windows.Foundation.IReference!(UINT32) value);
}

@uuid("e53fd7b9-2da4-4714-a652-de8593289898")
@WinrtFactory("Windows.Devices.Geolocation.Geopath")
interface IGeopath : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Positions(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Geolocation.BasicGeoposition)* return_value);
}

@uuid("27bea9c8-c7e7-4359-9b9b-fca3e05ef593")
@WinrtFactory("Windows.Devices.Geolocation.Geopath")
interface IGeopathFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions, Windows.Devices.Geolocation.Geopath* return_value);
	HRESULT abi_CreateWithAltitudeReference(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, Windows.Devices.Geolocation.Geopath* return_value);
	HRESULT abi_CreateWithAltitudeReferenceAndSpatialReference(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, UINT32 spatialReferenceId, Windows.Devices.Geolocation.Geopath* return_value);
}

@uuid("6bfa00eb-e56e-49bb-9caf-cbaa78a8bcef")
@WinrtFactory("Windows.Devices.Geolocation.Geopoint")
interface IGeopoint : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Position(Windows.Devices.Geolocation.BasicGeoposition* return_value);
}

@uuid("db6b8d33-76bd-4e30-8af7-a844dc37b7a0")
@WinrtFactory("Windows.Devices.Geolocation.Geopoint")
interface IGeopointFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Devices.Geolocation.BasicGeoposition position, Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT abi_CreateWithAltitudeReferenceSystem(Windows.Devices.Geolocation.BasicGeoposition position, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT abi_CreateWithAltitudeReferenceSystemAndSpatialReferenceId(Windows.Devices.Geolocation.BasicGeoposition position, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, UINT32 spatialReferenceId, Windows.Devices.Geolocation.Geopoint* return_value);
}

@uuid("c18d0454-7d41-4ff7-a957-9dffb4ef7f5b")
@WinrtFactory("Windows.Devices.Geolocation.Geoposition")
interface IGeoposition : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Coordinate(Windows.Devices.Geolocation.Geocoordinate* return_value);
	HRESULT get_CivicAddress(Windows.Devices.Geolocation.CivicAddress* return_value);
}

@uuid("7f62f697-8671-4b0d-86f8-474a8496187c")
@WinrtFactory("Windows.Devices.Geolocation.Geoposition")
interface IGeoposition2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_VenueData(Windows.Devices.Geolocation.VenueData* return_value);
}

@uuid("c99ca2af-c729-43c1-8fab-d6dec914df7e")
interface IGeoshape : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_GeoshapeType(Windows.Devices.Geolocation.GeoshapeType* return_value);
	HRESULT get_SpatialReferenceId(UINT32* return_value);
	HRESULT get_AltitudeReferenceSystem(Windows.Devices.Geolocation.AltitudeReferenceSystem* return_value);
}

@uuid("37859ce5-9d1e-46c5-bf3b-6ad8cac1a093")
@WinrtFactory("Windows.Devices.Geolocation.PositionChangedEventArgs")
interface IPositionChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Position(Windows.Devices.Geolocation.Geoposition* return_value);
}

@uuid("3453d2da-8c93-4111-a205-9aecfc9be5c0")
@WinrtFactory("Windows.Devices.Geolocation.StatusChangedEventArgs")
interface IStatusChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Devices.Geolocation.PositionStatus* return_value);
}

@uuid("66f39187-60e3-4b2f-b527-4f53f1c3c677")
@WinrtFactory("Windows.Devices.Geolocation.VenueData")
interface IVenueData : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Level(HSTRING* return_value);
}

interface CivicAddress
{
}

interface GeoboundingBox
{
}

interface Geocircle
{
}

interface Geocoordinate
{
}

interface GeocoordinateSatelliteData
{
}

interface Geolocator
{
}

interface Geopath
{
}

interface Geopoint
{
}

interface Geoposition
{
}

interface PositionChangedEventArgs
{
}

interface StatusChangedEventArgs
{
}

interface VenueData
{
}

enum AltitudeReferenceSystem
{
	Unspecified = 0,
	Terrain = 1,
	Ellipsoid = 2,
	Geoid = 3,
	Surface = 4
}

enum GeolocationAccessStatus
{
	Unspecified = 0,
	Allowed = 1,
	Denied = 2
}

enum GeoshapeType
{
	Geopoint = 0,
	Geocircle = 1,
	Geopath = 2,
	GeoboundingBox = 3
}

enum PositionAccuracy
{
	Default = 0,
	High = 1
}

enum PositionSource
{
	Cellular = 0,
	Satellite = 1,
	WiFi = 2,
	IPAddress = 3,
	Unknown = 4,
	Default = 5,
	Obfuscated = 6
}

enum PositionStatus
{
	Ready = 0,
	Initializing = 1,
	NoData = 2,
	Disabled = 3,
	NotInitialized = 4,
	NotAvailable = 5
}