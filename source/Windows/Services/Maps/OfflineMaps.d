module Windows.Services.Maps.OfflineMaps;

import dwinrt;

@uuid("a797673b-a5b5-4144-b525-e68c8862664b")
@WinrtFactory("Windows.Services.Maps.OfflineMaps.OfflineMapPackage")
interface IOfflineMapPackage : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Services.Maps.OfflineMaps.OfflineMapPackageStatus* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_EnclosingRegionName(HSTRING* return_value);
	HRESULT get_EstimatedSizeInBytes(ulong* return_value);
	HRESULT remove_StatusChanged(EventRegistrationToken token);
	HRESULT add_StatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.OfflineMaps.OfflineMapPackage, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT abi_RequestStartDownloadAsync(Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.OfflineMaps.OfflineMapPackageStartDownloadResult)* return_value);
}

@uuid("55585411-39e1-4e41-a4e1-5f4872bee199")
@WinrtFactory("Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult")
interface IOfflineMapPackageQueryResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryStatus* return_value);
	HRESULT get_Packages(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.OfflineMaps.OfflineMapPackage)* return_value);
}

@uuid("d965b918-d4d6-4afe-9378-3ec71ef11c3d")
@WinrtFactory("Windows.Services.Maps.OfflineMaps.OfflineMapPackageStartDownloadResult")
interface IOfflineMapPackageStartDownloadResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Services.Maps.OfflineMaps.OfflineMapPackageStartDownloadStatus* return_value);
}

@uuid("185e7922-a831-4ab0-941f-6998fa929285")
@WinrtFactory("Windows.Services.Maps.OfflineMaps.OfflineMapPackage")
interface IOfflineMapPackageStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FindPackagesAsync(Windows.Devices.Geolocation.Geopoint queryPoint, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult)* return_result);
	HRESULT abi_FindPackagesInBoundingBoxAsync(Windows.Devices.Geolocation.GeoboundingBox queryBoundingBox, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult)* return_result);
	HRESULT abi_FindPackagesInGeocircleAsync(Windows.Devices.Geolocation.Geocircle queryCircle, Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult)* return_result);
}

interface OfflineMapPackage : Windows.Services.Maps.OfflineMaps.IOfflineMapPackage
{
extern(Windows):
	final Windows.Services.Maps.OfflineMaps.OfflineMapPackageStatus Status()
	{
		Windows.Services.Maps.OfflineMaps.OfflineMapPackageStatus _ret;
		Debug.OK((cast(Windows.Services.Maps.OfflineMaps.IOfflineMapPackage)this.asInterface(uuid("a797673b-a5b5-4144-b525-e68c8862664b"))).get_Status(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.OfflineMaps.IOfflineMapPackage)this.asInterface(uuid("a797673b-a5b5-4144-b525-e68c8862664b"))).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING EnclosingRegionName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.Maps.OfflineMaps.IOfflineMapPackage)this.asInterface(uuid("a797673b-a5b5-4144-b525-e68c8862664b"))).get_EnclosingRegionName(&_ret));
		return _ret;
	}
	final ulong EstimatedSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Services.Maps.OfflineMaps.IOfflineMapPackage)this.asInterface(uuid("a797673b-a5b5-4144-b525-e68c8862664b"))).get_EstimatedSizeInBytes(&_ret));
		return _ret;
	}
	final void removeStatusChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Services.Maps.OfflineMaps.IOfflineMapPackage)this.asInterface(uuid("a797673b-a5b5-4144-b525-e68c8862664b"))).remove_StatusChanged(token));
	}
	final EventRegistrationToken OnStatusChanged(void delegate(Windows.Services.Maps.OfflineMaps.OfflineMapPackage, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Services.Maps.OfflineMaps.IOfflineMapPackage)this.asInterface(uuid("a797673b-a5b5-4144-b525-e68c8862664b"))).add_StatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Services.Maps.OfflineMaps.OfflineMapPackage, IInspectable), Windows.Services.Maps.OfflineMaps.OfflineMapPackage, IInspectable)(fn), &tok));
		return tok;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.OfflineMaps.OfflineMapPackageStartDownloadResult) RequestStartDownloadAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.OfflineMaps.OfflineMapPackageStartDownloadResult) _ret;
		Debug.OK((cast(Windows.Services.Maps.OfflineMaps.IOfflineMapPackage)this.asInterface(uuid("a797673b-a5b5-4144-b525-e68c8862664b"))).abi_RequestStartDownloadAsync(&_ret));
		return _ret;
	}

	private static Windows.Services.Maps.OfflineMaps.IOfflineMapPackageStatics _staticInstance;
	public static Windows.Services.Maps.OfflineMaps.IOfflineMapPackageStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Services.Maps.OfflineMaps.IOfflineMapPackageStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult) FindPackagesAsync(Windows.Devices.Geolocation.Geopoint queryPoint)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult) _ret;
		Debug.OK(staticInstance.abi_FindPackagesAsync(queryPoint, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult) FindPackagesInBoundingBoxAsync(Windows.Devices.Geolocation.GeoboundingBox queryBoundingBox)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult) _ret;
		Debug.OK(staticInstance.abi_FindPackagesInBoundingBoxAsync(queryBoundingBox, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult) FindPackagesInGeocircleAsync(Windows.Devices.Geolocation.Geocircle queryCircle)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryResult) _ret;
		Debug.OK(staticInstance.abi_FindPackagesInGeocircleAsync(queryCircle, &_ret));
		return _ret;
	}
}

interface OfflineMapPackageQueryResult : Windows.Services.Maps.OfflineMaps.IOfflineMapPackageQueryResult
{
extern(Windows):
	final Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryStatus Status()
	{
		Windows.Services.Maps.OfflineMaps.OfflineMapPackageQueryStatus _ret;
		Debug.OK((cast(Windows.Services.Maps.OfflineMaps.IOfflineMapPackageQueryResult)this.asInterface(uuid("55585411-39e1-4e41-a4e1-5f4872bee199"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.OfflineMaps.OfflineMapPackage) Packages()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.OfflineMaps.OfflineMapPackage) _ret;
		Debug.OK((cast(Windows.Services.Maps.OfflineMaps.IOfflineMapPackageQueryResult)this.asInterface(uuid("55585411-39e1-4e41-a4e1-5f4872bee199"))).get_Packages(&_ret));
		return _ret;
	}
}

interface OfflineMapPackageStartDownloadResult : Windows.Services.Maps.OfflineMaps.IOfflineMapPackageStartDownloadResult
{
extern(Windows):
	final Windows.Services.Maps.OfflineMaps.OfflineMapPackageStartDownloadStatus Status()
	{
		Windows.Services.Maps.OfflineMaps.OfflineMapPackageStartDownloadStatus _ret;
		Debug.OK((cast(Windows.Services.Maps.OfflineMaps.IOfflineMapPackageStartDownloadResult)this.asInterface(uuid("d965b918-d4d6-4afe-9378-3ec71ef11c3d"))).get_Status(&_ret));
		return _ret;
	}
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