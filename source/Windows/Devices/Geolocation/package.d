module Windows.Devices.Geolocation;

import dwinrt;

struct BasicGeoposition
{
	double Latitude;
	double Longitude;
	double Altitude;
}

@uuid("a8567a1a-64f4-4d48-bcea-f6b008eca34c")
@WinrtFactory("Windows.Devices.Geolocation.CivicAddress")
interface ICivicAddress : IInspectable
{
extern(Windows):
	HRESULT get_Country(HSTRING* return_value);
	HRESULT get_State(HSTRING* return_value);
	HRESULT get_City(HSTRING* return_value);
	HRESULT get_PostalCode(HSTRING* return_value);
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
}

@uuid("0896c80b-274f-43da-9a06-cbfcdaeb4ec2")
@WinrtFactory("Windows.Devices.Geolocation.GeoboundingBox")
interface IGeoboundingBox_Base : IInspectable
{
extern(Windows):
	HRESULT get_NorthwestCorner(Windows.Devices.Geolocation.BasicGeoposition* return_value);
	HRESULT get_SoutheastCorner(Windows.Devices.Geolocation.BasicGeoposition* return_value);
	HRESULT get_Center(Windows.Devices.Geolocation.BasicGeoposition* return_value);
	HRESULT get_MinAltitude(double* return_value);
	HRESULT get_MaxAltitude(double* return_value);
}
@uuid("0896c80b-274f-43da-9a06-cbfcdaeb4ec2")
@WinrtFactory("Windows.Devices.Geolocation.GeoboundingBox")
interface IGeoboundingBox : IGeoboundingBox_Base, Windows.Devices.Geolocation.IGeoshape {}

@uuid("4dfba589-0411-4abc-b3b5-5bbccb57d98c")
@WinrtFactory("Windows.Devices.Geolocation.GeoboundingBox")
interface IGeoboundingBoxFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Devices.Geolocation.BasicGeoposition northwestCorner, Windows.Devices.Geolocation.BasicGeoposition southeastCorner, Windows.Devices.Geolocation.GeoboundingBox* return_value);
	HRESULT abi_CreateWithAltitudeReference(Windows.Devices.Geolocation.BasicGeoposition northwestCorner, Windows.Devices.Geolocation.BasicGeoposition southeastCorner, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, Windows.Devices.Geolocation.GeoboundingBox* return_value);
	HRESULT abi_CreateWithAltitudeReferenceAndSpatialReference(Windows.Devices.Geolocation.BasicGeoposition northwestCorner, Windows.Devices.Geolocation.BasicGeoposition southeastCorner, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, UINT32 spatialReferenceId, Windows.Devices.Geolocation.GeoboundingBox* return_value);
}

@uuid("67b80708-e61a-4cd0-841b-93233792b5ca")
@WinrtFactory("Windows.Devices.Geolocation.GeoboundingBox")
interface IGeoboundingBoxStatics : IInspectable
{
extern(Windows):
	HRESULT abi_TryCompute(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions, Windows.Devices.Geolocation.GeoboundingBox* return_value);
	HRESULT abi_TryComputeWithAltitudeReference(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeRefSystem, Windows.Devices.Geolocation.GeoboundingBox* return_value);
	HRESULT abi_TryComputeWithAltitudeReferenceAndSpatialReference(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeRefSystem, UINT32 spatialReferenceId, Windows.Devices.Geolocation.GeoboundingBox* return_value);
}

@uuid("39e45843-a7f9-4e63-92a7-ba0c28d124b1")
@WinrtFactory("Windows.Devices.Geolocation.Geocircle")
interface IGeocircle_Base : IInspectable
{
extern(Windows):
	HRESULT get_Center(Windows.Devices.Geolocation.BasicGeoposition* return_value);
	HRESULT get_Radius(double* return_value);
}
@uuid("39e45843-a7f9-4e63-92a7-ba0c28d124b1")
@WinrtFactory("Windows.Devices.Geolocation.Geocircle")
interface IGeocircle : IGeocircle_Base, Windows.Devices.Geolocation.IGeoshape {}

@uuid("afd6531f-72b1-4f7d-87cc-4ed4c9849c05")
@WinrtFactory("Windows.Devices.Geolocation.Geocircle")
interface IGeocircleFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Devices.Geolocation.BasicGeoposition position, double radius, Windows.Devices.Geolocation.Geocircle* return_value);
	HRESULT abi_CreateWithAltitudeReferenceSystem(Windows.Devices.Geolocation.BasicGeoposition position, double radius, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, Windows.Devices.Geolocation.Geocircle* return_value);
	HRESULT abi_CreateWithAltitudeReferenceSystemAndSpatialReferenceId(Windows.Devices.Geolocation.BasicGeoposition position, double radius, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, UINT32 spatialReferenceId, Windows.Devices.Geolocation.Geocircle* return_value);
}

@uuid("ee21a3aa-976a-4c70-803d-083ea55bcbc4")
@WinrtFactory("Windows.Devices.Geolocation.Geocoordinate")
interface IGeocoordinate : IInspectable
{
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
extern(Windows):
	HRESULT get_PositionDilutionOfPrecision(Windows.Foundation.IReference!(double)* return_ppValue);
	HRESULT get_HorizontalDilutionOfPrecision(Windows.Foundation.IReference!(double)* return_ppValue);
	HRESULT get_VerticalDilutionOfPrecision(Windows.Foundation.IReference!(double)* return_ppValue);
}

@uuid("feea0525-d22c-4d46-b527-0b96066fc7db")
@WinrtFactory("Windows.Devices.Geolocation.Geocoordinate")
interface IGeocoordinateWithPoint : IInspectable
{
extern(Windows):
	HRESULT get_Point(Windows.Devices.Geolocation.Geopoint* return_value);
}

@uuid("95e634be-dbd6-40ac-b8f2-a65c0340d9a6")
@WinrtFactory("Windows.Devices.Geolocation.Geocoordinate")
interface IGeocoordinateWithPositionData_Base : IInspectable
{
extern(Windows):
	HRESULT get_PositionSource(Windows.Devices.Geolocation.PositionSource* return_pValue);
	HRESULT get_SatelliteData(Windows.Devices.Geolocation.GeocoordinateSatelliteData* return_ppValue);
}
@uuid("95e634be-dbd6-40ac-b8f2-a65c0340d9a6")
@WinrtFactory("Windows.Devices.Geolocation.Geocoordinate")
interface IGeocoordinateWithPositionData : IGeocoordinateWithPositionData_Base, Windows.Devices.Geolocation.IGeocoordinate {}

@uuid("8543fc02-c9f1-4610-afe0-8bc3a6a87036")
@WinrtFactory("Windows.Devices.Geolocation.Geocoordinate")
interface IGeocoordinateWithPositionSourceTimestamp : IInspectable
{
extern(Windows):
	HRESULT get_PositionSourceTimestamp(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
}

@uuid("a9c3bf62-4524-4989-8aa9-de019d2e551f")
@WinrtFactory("Windows.Devices.Geolocation.Geolocator")
interface IGeolocator : IInspectable
{
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
	HRESULT add_PositionChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Geolocation.Geolocator, Windows.Devices.Geolocation.PositionChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PositionChanged(EventRegistrationToken token);
	HRESULT add_StatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Geolocation.Geolocator, Windows.Devices.Geolocation.StatusChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_StatusChanged(EventRegistrationToken token);
}

@uuid("d1b42e6d-8891-43b4-ad36-27c6fe9a97b1")
@WinrtFactory("Windows.Devices.Geolocation.Geolocator")
interface IGeolocator2 : IInspectable
{
extern(Windows):
	HRESULT abi_AllowFallbackToConsentlessPositions();
}

@uuid("9a8e7571-2df5-4591-9f87-eb5fd894e9b7")
@WinrtFactory("Windows.Devices.Geolocation.Geolocator")
interface IGeolocatorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Geolocation.GeolocationAccessStatus)* return_result);
	HRESULT abi_GetGeopositionHistoryAsync(Windows.Foundation.DateTime startTime, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Geolocation.Geoposition))* return_result);
	HRESULT abi_GetGeopositionHistoryWithDurationAsync(Windows.Foundation.DateTime startTime, Windows.Foundation.TimeSpan duration, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Geolocation.Geoposition))* return_result);
}

@uuid("993011a2-fa1c-4631-a71d-0dbeb1250d9c")
@WinrtFactory("Windows.Devices.Geolocation.Geolocator")
interface IGeolocatorStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_IsDefaultGeopositionRecommended(bool* return_value);
	HRESULT set_DefaultGeoposition(Windows.Foundation.IReference!(Windows.Devices.Geolocation.BasicGeoposition) value);
	HRESULT get_DefaultGeoposition(Windows.Foundation.IReference!(Windows.Devices.Geolocation.BasicGeoposition)* return_value);
}

@uuid("96f5d3c1-b80f-460a-994d-a96c47a51aa4")
@WinrtFactory("Windows.Devices.Geolocation.Geolocator")
interface IGeolocatorWithScalarAccuracy_Base : IInspectable
{
extern(Windows):
	HRESULT get_DesiredAccuracyInMeters(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_DesiredAccuracyInMeters(Windows.Foundation.IReference!(UINT32) value);
}
@uuid("96f5d3c1-b80f-460a-994d-a96c47a51aa4")
@WinrtFactory("Windows.Devices.Geolocation.Geolocator")
interface IGeolocatorWithScalarAccuracy : IGeolocatorWithScalarAccuracy_Base, Windows.Devices.Geolocation.IGeolocator {}

@uuid("e53fd7b9-2da4-4714-a652-de8593289898")
@WinrtFactory("Windows.Devices.Geolocation.Geopath")
interface IGeopath_Base : IInspectable
{
extern(Windows):
	HRESULT get_Positions(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Geolocation.BasicGeoposition)* return_value);
}
@uuid("e53fd7b9-2da4-4714-a652-de8593289898")
@WinrtFactory("Windows.Devices.Geolocation.Geopath")
interface IGeopath : IGeopath_Base, Windows.Devices.Geolocation.IGeoshape {}

@uuid("27bea9c8-c7e7-4359-9b9b-fca3e05ef593")
@WinrtFactory("Windows.Devices.Geolocation.Geopath")
interface IGeopathFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions, Windows.Devices.Geolocation.Geopath* return_value);
	HRESULT abi_CreateWithAltitudeReference(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, Windows.Devices.Geolocation.Geopath* return_value);
	HRESULT abi_CreateWithAltitudeReferenceAndSpatialReference(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, UINT32 spatialReferenceId, Windows.Devices.Geolocation.Geopath* return_value);
}

@uuid("6bfa00eb-e56e-49bb-9caf-cbaa78a8bcef")
@WinrtFactory("Windows.Devices.Geolocation.Geopoint")
interface IGeopoint_Base : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Devices.Geolocation.BasicGeoposition* return_value);
}
@uuid("6bfa00eb-e56e-49bb-9caf-cbaa78a8bcef")
@WinrtFactory("Windows.Devices.Geolocation.Geopoint")
interface IGeopoint : IGeopoint_Base, Windows.Devices.Geolocation.IGeoshape {}

@uuid("db6b8d33-76bd-4e30-8af7-a844dc37b7a0")
@WinrtFactory("Windows.Devices.Geolocation.Geopoint")
interface IGeopointFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Devices.Geolocation.BasicGeoposition position, Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT abi_CreateWithAltitudeReferenceSystem(Windows.Devices.Geolocation.BasicGeoposition position, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT abi_CreateWithAltitudeReferenceSystemAndSpatialReferenceId(Windows.Devices.Geolocation.BasicGeoposition position, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, UINT32 spatialReferenceId, Windows.Devices.Geolocation.Geopoint* return_value);
}

@uuid("c18d0454-7d41-4ff7-a957-9dffb4ef7f5b")
@WinrtFactory("Windows.Devices.Geolocation.Geoposition")
interface IGeoposition : IInspectable
{
extern(Windows):
	HRESULT get_Coordinate(Windows.Devices.Geolocation.Geocoordinate* return_value);
	HRESULT get_CivicAddress(Windows.Devices.Geolocation.CivicAddress* return_value);
}

@uuid("7f62f697-8671-4b0d-86f8-474a8496187c")
@WinrtFactory("Windows.Devices.Geolocation.Geoposition")
interface IGeoposition2_Base : IInspectable
{
extern(Windows):
	HRESULT get_VenueData(Windows.Devices.Geolocation.VenueData* return_value);
}
@uuid("7f62f697-8671-4b0d-86f8-474a8496187c")
@WinrtFactory("Windows.Devices.Geolocation.Geoposition")
interface IGeoposition2 : IGeoposition2_Base, Windows.Devices.Geolocation.IGeoposition {}

@uuid("c99ca2af-c729-43c1-8fab-d6dec914df7e")
interface IGeoshape : IInspectable
{
extern(Windows):
	HRESULT get_GeoshapeType(Windows.Devices.Geolocation.GeoshapeType* return_value);
	HRESULT get_SpatialReferenceId(UINT32* return_value);
	HRESULT get_AltitudeReferenceSystem(Windows.Devices.Geolocation.AltitudeReferenceSystem* return_value);
}

@uuid("37859ce5-9d1e-46c5-bf3b-6ad8cac1a093")
@WinrtFactory("Windows.Devices.Geolocation.PositionChangedEventArgs")
interface IPositionChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Devices.Geolocation.Geoposition* return_value);
}

@uuid("3453d2da-8c93-4111-a205-9aecfc9be5c0")
@WinrtFactory("Windows.Devices.Geolocation.StatusChangedEventArgs")
interface IStatusChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.Geolocation.PositionStatus* return_value);
}

@uuid("66f39187-60e3-4b2f-b527-4f53f1c3c677")
@WinrtFactory("Windows.Devices.Geolocation.VenueData")
interface IVenueData : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Level(HSTRING* return_value);
}

interface CivicAddress : Windows.Devices.Geolocation.ICivicAddress
{
extern(Windows):
	final HSTRING Country()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.ICivicAddress).get_Country(&_ret));
		return _ret;
	}
	final HSTRING State()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.ICivicAddress).get_State(&_ret));
		return _ret;
	}
	final HSTRING City()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.ICivicAddress).get_City(&_ret));
		return _ret;
	}
	final HSTRING PostalCode()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.ICivicAddress).get_PostalCode(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.ICivicAddress).get_Timestamp(&_ret));
		return _ret;
	}
}

interface GeoboundingBox : Windows.Devices.Geolocation.IGeoboundingBox, Windows.Devices.Geolocation.IGeoshape
{
extern(Windows):
	final Windows.Devices.Geolocation.BasicGeoposition NorthwestCorner()
	{
		Windows.Devices.Geolocation.BasicGeoposition _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoboundingBox).get_NorthwestCorner(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.BasicGeoposition SoutheastCorner()
	{
		Windows.Devices.Geolocation.BasicGeoposition _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoboundingBox).get_SoutheastCorner(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.BasicGeoposition Center()
	{
		Windows.Devices.Geolocation.BasicGeoposition _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoboundingBox).get_Center(&_ret));
		return _ret;
	}
	final double MinAltitude()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoboundingBox).get_MinAltitude(&_ret));
		return _ret;
	}
	final double MaxAltitude()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoboundingBox).get_MaxAltitude(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.GeoshapeType GeoshapeType()
	{
		Windows.Devices.Geolocation.GeoshapeType _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoshape).get_GeoshapeType(&_ret));
		return _ret;
	}
	final UINT32 SpatialReferenceId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoshape).get_SpatialReferenceId(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.AltitudeReferenceSystem AltitudeReferenceSystem()
	{
		Windows.Devices.Geolocation.AltitudeReferenceSystem _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoshape).get_AltitudeReferenceSystem(&_ret));
		return _ret;
	}

	private static Windows.Devices.Geolocation.IGeoboundingBoxStatics _staticInstance;
	public static Windows.Devices.Geolocation.IGeoboundingBoxStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Geolocation.IGeoboundingBoxStatics);
		return _staticInstance;
	}
	static Windows.Devices.Geolocation.GeoboundingBox TryCompute(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions)
	{
		Windows.Devices.Geolocation.GeoboundingBox _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Geolocation.IGeoboundingBoxStatics).abi_TryCompute(positions, &_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.GeoboundingBox TryComputeWithAltitudeReference(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeRefSystem)
	{
		Windows.Devices.Geolocation.GeoboundingBox _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Geolocation.IGeoboundingBoxStatics).abi_TryComputeWithAltitudeReference(positions, altitudeRefSystem, &_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.GeoboundingBox TryComputeWithAltitudeReferenceAndSpatialReference(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeRefSystem, UINT32 spatialReferenceId)
	{
		Windows.Devices.Geolocation.GeoboundingBox _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Geolocation.IGeoboundingBoxStatics).abi_TryComputeWithAltitudeReferenceAndSpatialReference(positions, altitudeRefSystem, spatialReferenceId, &_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.GeoboundingBox New(Windows.Devices.Geolocation.BasicGeoposition northwestCorner, Windows.Devices.Geolocation.BasicGeoposition southeastCorner)
	{
		auto factory = factory!(Windows.Devices.Geolocation.IGeoboundingBoxFactory);
		Windows.Devices.Geolocation.GeoboundingBox _ret;
		Debug.OK(factory.as!(Windows.Devices.Geolocation.IGeoboundingBoxFactory).abi_Create(northwestCorner, southeastCorner, &_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.GeoboundingBox New(Windows.Devices.Geolocation.BasicGeoposition northwestCorner, Windows.Devices.Geolocation.BasicGeoposition southeastCorner, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem)
	{
		auto factory = factory!(Windows.Devices.Geolocation.IGeoboundingBoxFactory);
		Windows.Devices.Geolocation.GeoboundingBox _ret;
		Debug.OK(factory.as!(Windows.Devices.Geolocation.IGeoboundingBoxFactory).abi_CreateWithAltitudeReference(northwestCorner, southeastCorner, altitudeReferenceSystem, &_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.GeoboundingBox New(Windows.Devices.Geolocation.BasicGeoposition northwestCorner, Windows.Devices.Geolocation.BasicGeoposition southeastCorner, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, UINT32 spatialReferenceId)
	{
		auto factory = factory!(Windows.Devices.Geolocation.IGeoboundingBoxFactory);
		Windows.Devices.Geolocation.GeoboundingBox _ret;
		Debug.OK(factory.as!(Windows.Devices.Geolocation.IGeoboundingBoxFactory).abi_CreateWithAltitudeReferenceAndSpatialReference(northwestCorner, southeastCorner, altitudeReferenceSystem, spatialReferenceId, &_ret));
		return _ret;
	}
}

interface Geocircle : Windows.Devices.Geolocation.IGeocircle, Windows.Devices.Geolocation.IGeoshape
{
extern(Windows):
	final Windows.Devices.Geolocation.BasicGeoposition Center()
	{
		Windows.Devices.Geolocation.BasicGeoposition _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocircle).get_Center(&_ret));
		return _ret;
	}
	final double Radius()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocircle).get_Radius(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.GeoshapeType GeoshapeType()
	{
		Windows.Devices.Geolocation.GeoshapeType _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoshape).get_GeoshapeType(&_ret));
		return _ret;
	}
	final UINT32 SpatialReferenceId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoshape).get_SpatialReferenceId(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.AltitudeReferenceSystem AltitudeReferenceSystem()
	{
		Windows.Devices.Geolocation.AltitudeReferenceSystem _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoshape).get_AltitudeReferenceSystem(&_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.Geocircle New(Windows.Devices.Geolocation.BasicGeoposition position, double radius)
	{
		auto factory = factory!(Windows.Devices.Geolocation.IGeocircleFactory);
		Windows.Devices.Geolocation.Geocircle _ret;
		Debug.OK(factory.as!(Windows.Devices.Geolocation.IGeocircleFactory).abi_Create(position, radius, &_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.Geocircle New(Windows.Devices.Geolocation.BasicGeoposition position, double radius, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem)
	{
		auto factory = factory!(Windows.Devices.Geolocation.IGeocircleFactory);
		Windows.Devices.Geolocation.Geocircle _ret;
		Debug.OK(factory.as!(Windows.Devices.Geolocation.IGeocircleFactory).abi_CreateWithAltitudeReferenceSystem(position, radius, altitudeReferenceSystem, &_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.Geocircle New(Windows.Devices.Geolocation.BasicGeoposition position, double radius, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, UINT32 spatialReferenceId)
	{
		auto factory = factory!(Windows.Devices.Geolocation.IGeocircleFactory);
		Windows.Devices.Geolocation.Geocircle _ret;
		Debug.OK(factory.as!(Windows.Devices.Geolocation.IGeocircleFactory).abi_CreateWithAltitudeReferenceSystemAndSpatialReferenceId(position, radius, altitudeReferenceSystem, spatialReferenceId, &_ret));
		return _ret;
	}
}

interface Geocoordinate : Windows.Devices.Geolocation.IGeocoordinate, Windows.Devices.Geolocation.IGeocoordinateWithPositionData, Windows.Devices.Geolocation.IGeocoordinateWithPoint, Windows.Devices.Geolocation.IGeocoordinateWithPositionSourceTimestamp
{
extern(Windows):
	deprecated("Latitude may be altered or unavailable after Windows 8.1. Instead, use Point.Position.Latitude")
	final double Latitude()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocoordinate).get_Latitude(&_ret));
		return _ret;
	}
	deprecated("Longitude may be altered or unavailable after Windows 8.1. Instead, use Point.Position.Longitude")
	final double Longitude()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocoordinate).get_Longitude(&_ret));
		return _ret;
	}
	deprecated("Altitude may be altered or unavailable after Windows 8.1. Instead, use Point.Position.Altitude")
	final Windows.Foundation.IReference!(double) Altitude()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocoordinate).get_Altitude(&_ret));
		return _ret;
	}
	final double Accuracy()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocoordinate).get_Accuracy(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) AltitudeAccuracy()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocoordinate).get_AltitudeAccuracy(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) Heading()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocoordinate).get_Heading(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) Speed()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocoordinate).get_Speed(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocoordinate).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.PositionSource PositionSource()
	{
		Windows.Devices.Geolocation.PositionSource _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocoordinateWithPositionData).get_PositionSource(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.GeocoordinateSatelliteData SatelliteData()
	{
		Windows.Devices.Geolocation.GeocoordinateSatelliteData _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocoordinateWithPositionData).get_SatelliteData(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geopoint Point()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocoordinateWithPoint).get_Point(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) PositionSourceTimestamp()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocoordinateWithPositionSourceTimestamp).get_PositionSourceTimestamp(&_ret));
		return _ret;
	}
}

interface GeocoordinateSatelliteData : Windows.Devices.Geolocation.IGeocoordinateSatelliteData
{
extern(Windows):
	final Windows.Foundation.IReference!(double) PositionDilutionOfPrecision()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocoordinateSatelliteData).get_PositionDilutionOfPrecision(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) HorizontalDilutionOfPrecision()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocoordinateSatelliteData).get_HorizontalDilutionOfPrecision(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) VerticalDilutionOfPrecision()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeocoordinateSatelliteData).get_VerticalDilutionOfPrecision(&_ret));
		return _ret;
	}
}

interface Geolocator : Windows.Devices.Geolocation.IGeolocator, Windows.Devices.Geolocation.IGeolocatorWithScalarAccuracy, Windows.Devices.Geolocation.IGeolocator2
{
extern(Windows):
	final Windows.Devices.Geolocation.PositionAccuracy DesiredAccuracy()
	{
		Windows.Devices.Geolocation.PositionAccuracy _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeolocator).get_DesiredAccuracy(&_ret));
		return _ret;
	}
	final void DesiredAccuracy(Windows.Devices.Geolocation.PositionAccuracy value)
	{
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeolocator).set_DesiredAccuracy(value));
	}
	final double MovementThreshold()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeolocator).get_MovementThreshold(&_ret));
		return _ret;
	}
	final void MovementThreshold(double value)
	{
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeolocator).set_MovementThreshold(value));
	}
	final UINT32 ReportInterval()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeolocator).get_ReportInterval(&_ret));
		return _ret;
	}
	final void ReportInterval(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeolocator).set_ReportInterval(value));
	}
	final Windows.Devices.Geolocation.PositionStatus LocationStatus()
	{
		Windows.Devices.Geolocation.PositionStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeolocator).get_LocationStatus(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Geolocation.Geoposition) GetGeopositionAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Geolocation.Geoposition) _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeolocator).abi_GetGeopositionAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Geolocation.Geoposition) GetGeopositionAsyncWithAgeAndTimeout(Windows.Foundation.TimeSpan maximumAge, Windows.Foundation.TimeSpan timeout)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Geolocation.Geoposition) _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeolocator).abi_GetGeopositionAsyncWithAgeAndTimeout(maximumAge, timeout, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnPositionChanged(void delegate(Windows.Devices.Geolocation.Geolocator, Windows.Devices.Geolocation.PositionChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeolocator).add_PositionChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Geolocation.Geolocator, Windows.Devices.Geolocation.PositionChangedEventArgs), Windows.Devices.Geolocation.Geolocator, Windows.Devices.Geolocation.PositionChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePositionChanged(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeolocator).remove_PositionChanged(token));
	}
	final EventRegistrationToken OnStatusChanged(void delegate(Windows.Devices.Geolocation.Geolocator, Windows.Devices.Geolocation.StatusChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeolocator).add_StatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Geolocation.Geolocator, Windows.Devices.Geolocation.StatusChangedEventArgs), Windows.Devices.Geolocation.Geolocator, Windows.Devices.Geolocation.StatusChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStatusChanged(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeolocator).remove_StatusChanged(token));
	}
	final Windows.Foundation.IReference!(UINT32) DesiredAccuracyInMeters()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeolocatorWithScalarAccuracy).get_DesiredAccuracyInMeters(&_ret));
		return _ret;
	}
	final void DesiredAccuracyInMeters(Windows.Foundation.IReference!(UINT32) value)
	{
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeolocatorWithScalarAccuracy).set_DesiredAccuracyInMeters(value));
	}
	final void AllowFallbackToConsentlessPositions()
	{
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeolocator2).abi_AllowFallbackToConsentlessPositions());
	}

	private static Windows.Devices.Geolocation.IGeolocatorStatics _staticInstance;
	public static Windows.Devices.Geolocation.IGeolocatorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Geolocation.IGeolocatorStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Geolocation.GeolocationAccessStatus) RequestAccessAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Geolocation.GeolocationAccessStatus) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Geolocation.IGeolocatorStatics).abi_RequestAccessAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Geolocation.Geoposition)) GetGeopositionHistoryAsync(Windows.Foundation.DateTime startTime)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Geolocation.Geoposition)) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Geolocation.IGeolocatorStatics).abi_GetGeopositionHistoryAsync(startTime, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Geolocation.Geoposition)) GetGeopositionHistoryWithDurationAsync(Windows.Foundation.DateTime startTime, Windows.Foundation.TimeSpan duration)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Geolocation.Geoposition)) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Geolocation.IGeolocatorStatics).abi_GetGeopositionHistoryWithDurationAsync(startTime, duration, &_ret));
		return _ret;
	}
	static Geolocator New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(Geolocator).abi_ActivateInstance(&ret));
		return ret.as!(Geolocator);
	}
}

interface Geopath : Windows.Devices.Geolocation.IGeopath, Windows.Devices.Geolocation.IGeoshape
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Geolocation.BasicGeoposition) Positions()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Geolocation.BasicGeoposition) _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeopath).get_Positions(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.GeoshapeType GeoshapeType()
	{
		Windows.Devices.Geolocation.GeoshapeType _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoshape).get_GeoshapeType(&_ret));
		return _ret;
	}
	final UINT32 SpatialReferenceId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoshape).get_SpatialReferenceId(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.AltitudeReferenceSystem AltitudeReferenceSystem()
	{
		Windows.Devices.Geolocation.AltitudeReferenceSystem _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoshape).get_AltitudeReferenceSystem(&_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.Geopath New(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions)
	{
		auto factory = factory!(Windows.Devices.Geolocation.IGeopathFactory);
		Windows.Devices.Geolocation.Geopath _ret;
		Debug.OK(factory.as!(Windows.Devices.Geolocation.IGeopathFactory).abi_Create(positions, &_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.Geopath New(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem)
	{
		auto factory = factory!(Windows.Devices.Geolocation.IGeopathFactory);
		Windows.Devices.Geolocation.Geopath _ret;
		Debug.OK(factory.as!(Windows.Devices.Geolocation.IGeopathFactory).abi_CreateWithAltitudeReference(positions, altitudeReferenceSystem, &_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.Geopath New(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.BasicGeoposition) positions, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, UINT32 spatialReferenceId)
	{
		auto factory = factory!(Windows.Devices.Geolocation.IGeopathFactory);
		Windows.Devices.Geolocation.Geopath _ret;
		Debug.OK(factory.as!(Windows.Devices.Geolocation.IGeopathFactory).abi_CreateWithAltitudeReferenceAndSpatialReference(positions, altitudeReferenceSystem, spatialReferenceId, &_ret));
		return _ret;
	}
}

interface Geopoint : Windows.Devices.Geolocation.IGeopoint, Windows.Devices.Geolocation.IGeoshape
{
extern(Windows):
	final Windows.Devices.Geolocation.BasicGeoposition Position()
	{
		Windows.Devices.Geolocation.BasicGeoposition _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeopoint).get_Position(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.GeoshapeType GeoshapeType()
	{
		Windows.Devices.Geolocation.GeoshapeType _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoshape).get_GeoshapeType(&_ret));
		return _ret;
	}
	final UINT32 SpatialReferenceId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoshape).get_SpatialReferenceId(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.AltitudeReferenceSystem AltitudeReferenceSystem()
	{
		Windows.Devices.Geolocation.AltitudeReferenceSystem _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoshape).get_AltitudeReferenceSystem(&_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.Geopoint New(Windows.Devices.Geolocation.BasicGeoposition position)
	{
		auto factory = factory!(Windows.Devices.Geolocation.IGeopointFactory);
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(factory.as!(Windows.Devices.Geolocation.IGeopointFactory).abi_Create(position, &_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.Geopoint New(Windows.Devices.Geolocation.BasicGeoposition position, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem)
	{
		auto factory = factory!(Windows.Devices.Geolocation.IGeopointFactory);
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(factory.as!(Windows.Devices.Geolocation.IGeopointFactory).abi_CreateWithAltitudeReferenceSystem(position, altitudeReferenceSystem, &_ret));
		return _ret;
	}
	static Windows.Devices.Geolocation.Geopoint New(Windows.Devices.Geolocation.BasicGeoposition position, Windows.Devices.Geolocation.AltitudeReferenceSystem altitudeReferenceSystem, UINT32 spatialReferenceId)
	{
		auto factory = factory!(Windows.Devices.Geolocation.IGeopointFactory);
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(factory.as!(Windows.Devices.Geolocation.IGeopointFactory).abi_CreateWithAltitudeReferenceSystemAndSpatialReferenceId(position, altitudeReferenceSystem, spatialReferenceId, &_ret));
		return _ret;
	}
}

interface Geoposition : Windows.Devices.Geolocation.IGeoposition, Windows.Devices.Geolocation.IGeoposition2
{
extern(Windows):
	final Windows.Devices.Geolocation.Geocoordinate Coordinate()
	{
		Windows.Devices.Geolocation.Geocoordinate _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoposition).get_Coordinate(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.CivicAddress CivicAddress()
	{
		Windows.Devices.Geolocation.CivicAddress _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoposition).get_CivicAddress(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.VenueData VenueData()
	{
		Windows.Devices.Geolocation.VenueData _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IGeoposition2).get_VenueData(&_ret));
		return _ret;
	}
}

interface PositionChangedEventArgs : Windows.Devices.Geolocation.IPositionChangedEventArgs
{
extern(Windows):
	final Windows.Devices.Geolocation.Geoposition Position()
	{
		Windows.Devices.Geolocation.Geoposition _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IPositionChangedEventArgs).get_Position(&_ret));
		return _ret;
	}
}

interface StatusChangedEventArgs : Windows.Devices.Geolocation.IStatusChangedEventArgs
{
extern(Windows):
	final Windows.Devices.Geolocation.PositionStatus Status()
	{
		Windows.Devices.Geolocation.PositionStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IStatusChangedEventArgs).get_Status(&_ret));
		return _ret;
	}
}

interface VenueData : Windows.Devices.Geolocation.IVenueData
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IVenueData).get_Id(&_ret));
		return _ret;
	}
	final HSTRING Level()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Geolocation.IVenueData).get_Level(&_ret));
		return _ret;
	}
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