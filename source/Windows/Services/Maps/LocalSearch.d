module Windows.Services.Maps.LocalSearch;

import dwinrt;

@uuid("f49399f5-8261-4321-9974-ef92d49a8dca")
@WinrtFactory("Windows.Services.Maps.LocalSearch.LocalCategories")
interface ILocalCategoriesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Category(HSTRING* return_value);
	HRESULT get_RatingInfo(Windows.Services.Maps.LocalSearch.LocalLocationRatingInfo* return_value);
	HRESULT get_HoursOfOperation(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocationHoursOfOperationItem)* return_value);
}

@uuid("d09b6cc6-f338-4191-9fd8-5440b9a68f52")
@WinrtFactory("Windows.Services.Maps.LocalSearch.LocalLocationFinderResult")
interface ILocalLocationFinderResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LocalLocations(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocation)* return_value);
	HRESULT get_Status(Windows.Services.Maps.LocalSearch.LocalLocationFinderStatus* return_value);
}

@uuid("d2ef7344-a0de-48ca-81a8-07c7dcfd37ab")
@WinrtFactory("Windows.Services.Maps.LocalSearch.LocalLocationFinder")
interface ILocalLocationFinderStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FindLocalLocationsAsync(HSTRING searchTerm, Windows.Devices.Geolocation.Geocircle searchArea, HSTRING localCategory, UINT32 maxResults, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.LocalSearch.LocalLocationFinderResult)* return_result);
}

@uuid("23548c72-a1c7-43f1-a4f0-1091c39ec640")
@WinrtFactory("Windows.Services.Maps.LocalSearch.LocalLocationHoursOfOperationItem")
interface ILocalLocationHoursOfOperationItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Day(Windows.Globalization.DayOfWeek* return_value);
	HRESULT get_Start(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Span(Windows.Foundation.TimeSpan* return_value);
}

@uuid("cb1dab56-3354-4311-8bc0-a2d4d5eb806e")
@WinrtFactory("Windows.Services.Maps.LocalSearch.LocalLocationRatingInfo")
interface ILocalLocationRatingInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AggregateRating(Windows.Foundation.IReference!(double)* return_value);
	HRESULT get_RatingCount(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT get_ProviderIdentifier(HSTRING* return_value);
}

interface LocalCategories
{
}

interface LocalLocation : Windows.Services.Maps.LocalSearch.ILocalLocation, Windows.Services.Maps.LocalSearch.ILocalLocation2
{
}

interface LocalLocationFinder
{
}

interface LocalLocationFinderResult : Windows.Services.Maps.LocalSearch.ILocalLocationFinderResult
{
}

interface LocalLocationHoursOfOperationItem : Windows.Services.Maps.LocalSearch.ILocalLocationHoursOfOperationItem
{
}

interface LocalLocationRatingInfo : Windows.Services.Maps.LocalSearch.ILocalLocationRatingInfo
{
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