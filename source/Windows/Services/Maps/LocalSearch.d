module Windows.Services.Maps.LocalSearch;

import dwinrt;

@uuid("f49399f5-8261-4321-9974-ef92d49a8dca")
@WinrtFactory("Windows.Services.Maps.LocalSearch.LocalCategories")
interface ILocalCategoriesStatics : IInspectable
{
extern(Windows):
	HRESULT get_BankAndCreditUnions(HSTRING* return_value);
	HRESULT get_EatDrink(HSTRING* return_value);
	HRESULT get_Hospitals(HSTRING* return_value);
	HRESULT get_HotelsAndMotels(HSTRING* return_value);
	HRESULT get_All(HSTRING* return_value);
	HRESULT get_Parking(HSTRING* return_value);
	HRESULT get_SeeDo(HSTRING* return_value);
	HRESULT get_Shop(HSTRING* return_value);
}

@uuid("bb0fe9ab-4502-4f2c-94a9-0d60de0e2163")
@WinrtFactory("Windows.Services.Maps.LocalSearch.LocalLocation")
interface ILocalLocation : IInspectable
{
extern(Windows):
	HRESULT get_Address(Windows.Services.Maps.MapAddress* return_value);
	HRESULT get_Identifier(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_Point(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_PhoneNumber(HSTRING* return_value);
	HRESULT get_DataAttribution(HSTRING* return_value);
}

@uuid("6e9e307c-ecb5-4ffc-bb8c-ba50ba8c2dc6")
@WinrtFactory("Windows.Services.Maps.LocalSearch.LocalLocation")
interface ILocalLocation2 : IInspectable
{
extern(Windows):
	HRESULT get_Category(HSTRING* return_value);
	HRESULT get_RatingInfo(Windows.Services.Maps.LocalSearch.LocalLocationRatingInfo* return_value);
	HRESULT get_HoursOfOperation(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocationHoursOfOperationItem)* return_value);
}

@uuid("d09b6cc6-f338-4191-9fd8-5440b9a68f52")
@WinrtFactory("Windows.Services.Maps.LocalSearch.LocalLocationFinderResult")
interface ILocalLocationFinderResult : IInspectable
{
extern(Windows):
	HRESULT get_LocalLocations(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocation)* return_value);
	HRESULT get_Status(Windows.Services.Maps.LocalSearch.LocalLocationFinderStatus* return_value);
}

@uuid("d2ef7344-a0de-48ca-81a8-07c7dcfd37ab")
@WinrtFactory("Windows.Services.Maps.LocalSearch.LocalLocationFinder")
interface ILocalLocationFinderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FindLocalLocationsAsync(HSTRING searchTerm, Windows.Devices.Geolocation.Geocircle searchArea, HSTRING localCategory, UINT32 maxResults, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.LocalSearch.LocalLocationFinderResult)* return_result);
}

@uuid("23548c72-a1c7-43f1-a4f0-1091c39ec640")
@WinrtFactory("Windows.Services.Maps.LocalSearch.LocalLocationHoursOfOperationItem")
interface ILocalLocationHoursOfOperationItem : IInspectable
{
extern(Windows):
	HRESULT get_Day(Windows.Globalization.DayOfWeek* return_value);
	HRESULT get_Start(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Span(Windows.Foundation.TimeSpan* return_value);
}

@uuid("cb1dab56-3354-4311-8bc0-a2d4d5eb806e")
@WinrtFactory("Windows.Services.Maps.LocalSearch.LocalLocationRatingInfo")
interface ILocalLocationRatingInfo : IInspectable
{
extern(Windows):
	HRESULT get_AggregateRating(Windows.Foundation.IReference!(double)* return_value);
	HRESULT get_RatingCount(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT get_ProviderIdentifier(HSTRING* return_value);
}

interface LocalCategories
{
	private static Windows.Services.Maps.LocalSearch.ILocalCategoriesStatics _staticInstance;
	public static Windows.Services.Maps.LocalSearch.ILocalCategoriesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Services.Maps.LocalSearch.ILocalCategoriesStatics);
		return _staticInstance;
	}
	static wstring BankAndCreditUnions()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BankAndCreditUnions(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring EatDrink()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_EatDrink(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Hospitals()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Hospitals(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring HotelsAndMotels()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HotelsAndMotels(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring All()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_All(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Parking()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Parking(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SeeDo()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SeeDo(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Shop()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Shop(&_ret));
		return hstring(_ret).d_str;
	}
}

interface LocalLocation : Windows.Services.Maps.LocalSearch.ILocalLocation, Windows.Services.Maps.LocalSearch.ILocalLocation2
{
extern(Windows):
	final Windows.Services.Maps.MapAddress Address()
	{
		Windows.Services.Maps.MapAddress _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocation)this.asInterface(uuid("bb0fe9ab-4502-4f2c-94a9-0d60de0e2163"))).get_Address(&_ret));
		return _ret;
	}
	final wstring Identifier()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocation)this.asInterface(uuid("bb0fe9ab-4502-4f2c-94a9-0d60de0e2163"))).get_Identifier(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocation)this.asInterface(uuid("bb0fe9ab-4502-4f2c-94a9-0d60de0e2163"))).get_Description(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocation)this.asInterface(uuid("bb0fe9ab-4502-4f2c-94a9-0d60de0e2163"))).get_DisplayName(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Devices.Geolocation.Geopoint Point()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocation)this.asInterface(uuid("bb0fe9ab-4502-4f2c-94a9-0d60de0e2163"))).get_Point(&_ret));
		return _ret;
	}
	final wstring PhoneNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocation)this.asInterface(uuid("bb0fe9ab-4502-4f2c-94a9-0d60de0e2163"))).get_PhoneNumber(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring DataAttribution()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocation)this.asInterface(uuid("bb0fe9ab-4502-4f2c-94a9-0d60de0e2163"))).get_DataAttribution(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Category()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocation2)this.asInterface(uuid("6e9e307c-ecb5-4ffc-bb8c-ba50ba8c2dc6"))).get_Category(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Services.Maps.LocalSearch.LocalLocationRatingInfo RatingInfo()
	{
		Windows.Services.Maps.LocalSearch.LocalLocationRatingInfo _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocation2)this.asInterface(uuid("6e9e307c-ecb5-4ffc-bb8c-ba50ba8c2dc6"))).get_RatingInfo(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocationHoursOfOperationItem) HoursOfOperation()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocationHoursOfOperationItem) _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocation2)this.asInterface(uuid("6e9e307c-ecb5-4ffc-bb8c-ba50ba8c2dc6"))).get_HoursOfOperation(&_ret));
		return _ret;
	}
}

interface LocalLocationFinder
{
	private static Windows.Services.Maps.LocalSearch.ILocalLocationFinderStatics _staticInstance;
	public static Windows.Services.Maps.LocalSearch.ILocalLocationFinderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Services.Maps.LocalSearch.ILocalLocationFinderStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.LocalSearch.LocalLocationFinderResult) FindLocalLocationsAsync(wstring searchTerm, Windows.Devices.Geolocation.Geocircle searchArea, wstring localCategory, UINT32 maxResults)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.LocalSearch.LocalLocationFinderResult) _ret;
		Debug.OK(staticInstance.abi_FindLocalLocationsAsync(hstring(searchTerm).handle, searchArea, hstring(localCategory).handle, maxResults, &_ret));
		return _ret;
	}
}

interface LocalLocationFinderResult : Windows.Services.Maps.LocalSearch.ILocalLocationFinderResult
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocation) LocalLocations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocation) _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocationFinderResult)this.asInterface(uuid("d09b6cc6-f338-4191-9fd8-5440b9a68f52"))).get_LocalLocations(&_ret));
		return _ret;
	}
	final Windows.Services.Maps.LocalSearch.LocalLocationFinderStatus Status()
	{
		Windows.Services.Maps.LocalSearch.LocalLocationFinderStatus _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocationFinderResult)this.asInterface(uuid("d09b6cc6-f338-4191-9fd8-5440b9a68f52"))).get_Status(&_ret));
		return _ret;
	}
}

interface LocalLocationHoursOfOperationItem : Windows.Services.Maps.LocalSearch.ILocalLocationHoursOfOperationItem
{
extern(Windows):
	final Windows.Globalization.DayOfWeek Day()
	{
		Windows.Globalization.DayOfWeek _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocationHoursOfOperationItem)this.asInterface(uuid("23548c72-a1c7-43f1-a4f0-1091c39ec640"))).get_Day(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Start()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocationHoursOfOperationItem)this.asInterface(uuid("23548c72-a1c7-43f1-a4f0-1091c39ec640"))).get_Start(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Span()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocationHoursOfOperationItem)this.asInterface(uuid("23548c72-a1c7-43f1-a4f0-1091c39ec640"))).get_Span(&_ret));
		return _ret;
	}
}

interface LocalLocationRatingInfo : Windows.Services.Maps.LocalSearch.ILocalLocationRatingInfo
{
extern(Windows):
	final Windows.Foundation.IReference!(double) AggregateRating()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocationRatingInfo)this.asInterface(uuid("cb1dab56-3354-4311-8bc0-a2d4d5eb806e"))).get_AggregateRating(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(INT32) RatingCount()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocationRatingInfo)this.asInterface(uuid("cb1dab56-3354-4311-8bc0-a2d4d5eb806e"))).get_RatingCount(&_ret));
		return _ret;
	}
	final wstring ProviderIdentifier()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.LocalSearch.ILocalLocationRatingInfo)this.asInterface(uuid("cb1dab56-3354-4311-8bc0-a2d4d5eb806e"))).get_ProviderIdentifier(&_ret));
		return hstring(_ret).d_str;
	}
}

enum LocalLocationFinderStatus
{
	Success = 0,
	UnknownError = 1,
	InvalidCredentials = 2,
	InvalidCategory = 3,
	InvalidSearchTerm = 4,
	InvalidSearchArea = 5,
	NetworkFailure = 6,
	NotSupported = 7
}