module Windows.Services.Maps.OfflineMaps;

import dwinrt;

@uuid("a797673b-a5b5-4144-b525-e68c8862664b")
@WinrtFactory("Windows.Services.Maps.OfflineMaps.OfflineMapPackage")
interface IOfflineMapPackage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Services.Maps.OfflineMaps.OfflineMapPackageStatus* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_EnclosingRegionName(HSTRING* return_value);
	HRESULT get_EstimatedSizeInBytes(UINT64* return_value);
	HRESULT remove_StatusChanged(EventRegistrationToken token);
	HRESULT add_StatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.OfflineMaps.OfflineMapPackage*,IInspectable*) value, EventRegistrationToken* return_token);
	HRESULT abi_RequestStartDownloadAsync(Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.OfflineMaps.OfflineMapPackageStartDownloadResult)* return_value);
}

@uuid("55585411-39e1-4e41-a4e1-5f4872bee199")
@WinrtFactory("Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult")
interface IOfflineMapPackageQueryResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryStatus* return_value);
	HRESULT get_Packages(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.OfflineMaps.OfflineMapPackage)* return_value);
}

@uuid("d965b918-d4d6-4afe-9378-3ec71ef11c3d")
@WinrtFactory("Windows.Services.Maps.OfflineMaps.OfflineMapPackageStartDownloadResult")
interface IOfflineMapPackageStartDownloadResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Services.Maps.OfflineMaps.OfflineMapPackageStartDownloadStatus* return_value);
}

@uuid("185e7922-a831-4ab0-941f-6998fa929285")
@WinrtFactory("Windows.Services.Maps.OfflineMaps.OfflineMapPackage")
interface IOfflineMapPackageStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FindPackagesAsync(Windows.Devices.Geolocation.Geopoint queryPoint, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult)* return_result);
	HRESULT abi_FindPackagesInBoundingBoxAsync(Windows.Devices.Geolocation.GeoboundingBox queryBoundingBox, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult)* return_result);
	HRESULT abi_FindPackagesInGeocircleAsync(Windows.Devices.Geolocation.Geocircle queryCircle, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult)* return_result);
}

interface OfflineMapPackage
{
}

interface OfflineMapPackageQueryResult
{
}

interface OfflineMapPackageStartDownloadResult
{
}

enum OfflineMapPackageQueryStatus
{
	Success = 0,
	UnknownError = 1,
	InvalidCredentials = 2,
	NetworkFailure = 3
}

enum OfflineMapPackageStartDownloadStatus
{
	Success = 0,
	UnknownError = 1,
	InvalidCredentials = 2,
	DeniedWithoutCapability = 3
}

enum OfflineMapPackageStatus
{
	NotDownloaded = 0,
	Downloading = 1,
	Downloaded = 2,
	Deleting = 3
}