module Windows.Services.Store;

import dwinrt;

struct StorePackageUpdateStatus
{
	HSTRING PackageFamilyName;
	UINT64 PackageDownloadSizeInBytes;
	UINT64 PackageBytesDownloaded;
	double PackageDownloadProgress;
	double TotalDownloadProgress;
	Windows.Services.Store.StorePackageUpdateState PackageUpdateState;
}

@uuid("fbd7946d-f040-4cb3-9a39-29bcecdbe22d")
@WinrtFactory("Windows.Services.Store.StoreAcquireLicenseResult")
interface IStoreAcquireLicenseResult : IInspectable
{
extern(Windows):
	HRESULT get_StorePackageLicense(Windows.Services.Store.StorePackageLicense* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("f389f9de-73c0-45ce-9bab-b2fe3e5eafd3")
@WinrtFactory("Windows.Services.Store.StoreAppLicense")
interface IStoreAppLicense : IInspectable
{
extern(Windows):
	HRESULT get_SkuStoreId(HSTRING* return_value);
	HRESULT get_IsActive(bool* return_value);
	HRESULT get_IsTrial(bool* return_value);
	HRESULT get_ExpirationDate(Windows.Foundation.DateTime* return_value);
	HRESULT get_ExtendedJsonData(HSTRING* return_value);
	HRESULT get_AddOnLicenses(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Services.Store.StoreLicense)* return_value);
	HRESULT get_TrialTimeRemaining(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_IsTrialOwnedByThisUser(bool* return_value);
	HRESULT get_TrialUniqueId(HSTRING* return_value);
}

@uuid("fa060325-0ffd-4493-ad43-f1f9918f69fa")
@WinrtFactory("Windows.Services.Store.StoreAvailability")
interface IStoreAvailability : IInspectable
{
extern(Windows):
	HRESULT get_StoreId(HSTRING* return_value);
	HRESULT get_EndDate(Windows.Foundation.DateTime* return_value);
	HRESULT get_Price(Windows.Services.Store.StorePrice* return_value);
	HRESULT get_ExtendedJsonData(HSTRING* return_value);
	HRESULT abi_RequestPurchaseAsync(Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult)* return_operation);
	HRESULT abi_RequestPurchaseWithPurchasePropertiesAsync(Windows.Services.Store.StorePurchaseProperties storePurchaseProperties, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult)* return_operation);
}

@uuid("8aa4c3b3-5bb3-441a-2ab4-4dab73d5ce67")
@WinrtFactory("Windows.Services.Store.StoreCollectionData")
interface IStoreCollectionData : IInspectable
{
extern(Windows):
	HRESULT get_IsTrial(bool* return_value);
	HRESULT get_CampaignId(HSTRING* return_value);
	HRESULT get_DeveloperOfferId(HSTRING* return_value);
	HRESULT get_AcquiredDate(Windows.Foundation.DateTime* return_value);
	HRESULT get_StartDate(Windows.Foundation.DateTime* return_value);
	HRESULT get_EndDate(Windows.Foundation.DateTime* return_value);
	HRESULT get_TrialTimeRemaining(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_ExtendedJsonData(HSTRING* return_value);
}

@uuid("ea5dab72-6a00-4052-be5b-bfdab4433352")
@WinrtFactory("Windows.Services.Store.StoreConsumableResult")
interface IStoreConsumableResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Services.Store.StoreConsumableStatus* return_value);
	HRESULT get_TrackingId(GUID* return_value);
	HRESULT get_BalanceRemaining(UINT32* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("ac98b6be-f4fd-4912-babd-5035e5e8bcab")
@WinrtFactory("Windows.Services.Store.StoreContext")
interface IStoreContext : IInspectable
{
extern(Windows):
	HRESULT get_User(Windows.System.User* return_value);
	HRESULT add_OfflineLicensesChanged(Windows.Foundation.TypedEventHandler!(Windows.Services.Store.StoreContext, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_OfflineLicensesChanged(EventRegistrationToken token);
	HRESULT abi_GetCustomerPurchaseIdAsync(HSTRING serviceTicket, HSTRING publisherUserId, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_GetCustomerCollectionsIdAsync(HSTRING serviceTicket, HSTRING publisherUserId, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_GetAppLicenseAsync(Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreAppLicense)* return_operation);
	HRESULT abi_GetStoreProductForCurrentAppAsync(Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductResult)* return_operation);
	HRESULT abi_GetStoreProductsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) productKinds, Windows.Foundation.Collections.IIterable!(HSTRING) storeIds, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductQueryResult)* return_operation);
	HRESULT abi_GetAssociatedStoreProductsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) productKinds, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductQueryResult)* return_operation);
	HRESULT abi_GetAssociatedStoreProductsWithPagingAsync(Windows.Foundation.Collections.IIterable!(HSTRING) productKinds, UINT32 maxItemsToRetrievePerPage, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductPagedQueryResult)* return_operation);
	HRESULT abi_GetUserCollectionAsync(Windows.Foundation.Collections.IIterable!(HSTRING) productKinds, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductQueryResult)* return_operation);
	HRESULT abi_GetUserCollectionWithPagingAsync(Windows.Foundation.Collections.IIterable!(HSTRING) productKinds, UINT32 maxItemsToRetrievePerPage, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductPagedQueryResult)* return_operation);
	HRESULT abi_ReportConsumableFulfillmentAsync(HSTRING productStoreId, UINT32 quantity, GUID trackingId, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreConsumableResult)* return_operation);
	HRESULT abi_GetConsumableBalanceRemainingAsync(HSTRING productStoreId, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreConsumableResult)* return_operation);
	HRESULT abi_AcquireStoreLicenseForOptionalPackageAsync(Windows.ApplicationModel.Package optionalPackage, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreAcquireLicenseResult)* return_operation);
	HRESULT abi_RequestPurchaseAsync(HSTRING storeId, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult)* return_operation);
	HRESULT abi_RequestPurchaseWithPurchasePropertiesAsync(HSTRING storeId, Windows.Services.Store.StorePurchaseProperties storePurchaseProperties, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult)* return_operation);
	HRESULT abi_GetAppAndOptionalStorePackageUpdatesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StorePackageUpdate))* return_operation);
	HRESULT abi_RequestDownloadStorePackageUpdatesAsync(Windows.Foundation.Collections.IIterable!(Windows.Services.Store.StorePackageUpdate) storePackageUpdates, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Services.Store.StorePackageUpdateResult, Windows.Services.Store.StorePackageUpdateStatus)* return_operation);
	HRESULT abi_RequestDownloadAndInstallStorePackageUpdatesAsync(Windows.Foundation.Collections.IIterable!(Windows.Services.Store.StorePackageUpdate) storePackageUpdates, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Services.Store.StorePackageUpdateResult, Windows.Services.Store.StorePackageUpdateStatus)* return_operation);
	HRESULT abi_RequestDownloadAndInstallStorePackagesAsync(Windows.Foundation.Collections.IIterable!(HSTRING) storeIds, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Services.Store.StorePackageUpdateResult, Windows.Services.Store.StorePackageUpdateStatus)* return_operation);
}

@uuid("18bc54da-7bd9-452c-9116-3bbd06ffc63a")
@WinrtFactory("Windows.Services.Store.StoreContext")
interface IStoreContext2 : IInspectable
{
extern(Windows):
	HRESULT abi_FindStoreProductForPackageAsync(Windows.Foundation.Collections.IIterable!(HSTRING) productKinds, Windows.ApplicationModel.Package package_, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductResult)* return_operation);
}

@uuid("9c06ee5f-15c0-4e72-9330-d6191cebd19c")
@WinrtFactory("Windows.Services.Store.StoreContext")
interface IStoreContextStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Services.Store.StoreContext* return_value);
	HRESULT abi_GetForUser(Windows.System.User user, Windows.Services.Store.StoreContext* return_value);
}

@uuid("081fd248-adb4-4b64-a993-784789926ed5")
@WinrtFactory("Windows.Services.Store.StoreImage")
interface IStoreImage : IInspectable
{
extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_ImagePurposeTag(HSTRING* return_value);
	HRESULT get_Width(UINT32* return_value);
	HRESULT get_Height(UINT32* return_value);
	HRESULT get_Caption(HSTRING* return_value);
}

@uuid("26dc9579-4c4f-4f30-bc89-649f60e36055")
@WinrtFactory("Windows.Services.Store.StoreLicense")
interface IStoreLicense : IInspectable
{
extern(Windows):
	HRESULT get_SkuStoreId(HSTRING* return_value);
	HRESULT get_IsActive(bool* return_value);
	HRESULT get_ExpirationDate(Windows.Foundation.DateTime* return_value);
	HRESULT get_ExtendedJsonData(HSTRING* return_value);
	HRESULT get_InAppOfferToken(HSTRING* return_value);
}

@uuid("0c465714-14e1-4973-bd14-f77724271e99")
@WinrtFactory("Windows.Services.Store.StorePackageLicense")
interface IStorePackageLicense_Base : IInspectable
{
extern(Windows):
	HRESULT add_LicenseLost(Windows.Foundation.TypedEventHandler!(Windows.Services.Store.StorePackageLicense, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_LicenseLost(EventRegistrationToken token);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
	HRESULT get_IsValid(bool* return_value);
	HRESULT abi_ReleaseLicense();
}
@uuid("0c465714-14e1-4973-bd14-f77724271e99")
@WinrtFactory("Windows.Services.Store.StorePackageLicense")
interface IStorePackageLicense : IStorePackageLicense_Base, Windows.Foundation.IClosable {}

@uuid("140fa150-3cbf-4a35-b91f-48271c31b072")
@WinrtFactory("Windows.Services.Store.StorePackageUpdate")
interface IStorePackageUpdate : IInspectable
{
extern(Windows):
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
	HRESULT get_Mandatory(bool* return_value);
}

@uuid("e79142ed-61f9-4893-b4fe-cf191603af7b")
@WinrtFactory("Windows.Services.Store.StorePackageUpdateResult")
interface IStorePackageUpdateResult : IInspectable
{
extern(Windows):
	HRESULT get_OverallState(Windows.Services.Store.StorePackageUpdateState* return_value);
	HRESULT get_StorePackageUpdateStatuses(Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StorePackageUpdateStatus)* return_value);
}

@uuid("55ba94c4-15f1-407c-8f06-006380f4df0b")
@WinrtFactory("Windows.Services.Store.StorePrice")
interface IStorePrice : IInspectable
{
extern(Windows):
	HRESULT get_FormattedBasePrice(HSTRING* return_value);
	HRESULT get_FormattedPrice(HSTRING* return_value);
	HRESULT get_IsOnSale(bool* return_value);
	HRESULT get_SaleEndDate(Windows.Foundation.DateTime* return_value);
	HRESULT get_CurrencyCode(HSTRING* return_value);
	HRESULT get_FormattedRecurrencePrice(HSTRING* return_value);
}

@uuid("320e2c52-d760-450a-a42b-67d1e901ac90")
@WinrtFactory("Windows.Services.Store.StoreProduct")
interface IStoreProduct : IInspectable
{
extern(Windows):
	HRESULT get_StoreId(HSTRING* return_value);
	HRESULT get_Language(HSTRING* return_value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_ProductKind(HSTRING* return_value);
	HRESULT get_HasDigitalDownload(bool* return_value);
	HRESULT get_Keywords(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_Images(Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreImage)* return_value);
	HRESULT get_Videos(Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreVideo)* return_value);
	HRESULT get_Skus(Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreSku)* return_value);
	HRESULT get_IsInUserCollection(bool* return_value);
	HRESULT get_Price(Windows.Services.Store.StorePrice* return_value);
	HRESULT get_ExtendedJsonData(HSTRING* return_value);
	HRESULT get_LinkUri(Windows.Foundation.Uri* return_value);
	HRESULT abi_GetIsAnySkuInstalledAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestPurchaseAsync(Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult)* return_operation);
	HRESULT abi_RequestPurchaseWithPurchasePropertiesAsync(Windows.Services.Store.StorePurchaseProperties storePurchaseProperties, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult)* return_operation);
	HRESULT get_InAppOfferToken(HSTRING* return_value);
}

@uuid("c92718c5-4dd5-4869-a462-ecc6872e43c5")
@WinrtFactory("Windows.Services.Store.StoreProductPagedQueryResult")
interface IStoreProductPagedQueryResult : IInspectable
{
extern(Windows):
	HRESULT get_Products(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Services.Store.StoreProduct)* return_value);
	HRESULT get_HasMoreResults(bool* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
	HRESULT abi_GetNextAsync(Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductPagedQueryResult)* return_operation);
}

@uuid("d805e6c5-d456-4ff6-8049-9076d5165f73")
@WinrtFactory("Windows.Services.Store.StoreProductQueryResult")
interface IStoreProductQueryResult : IInspectable
{
extern(Windows):
	HRESULT get_Products(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Services.Store.StoreProduct)* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("b7674f73-3c87-4ee1-8201-f428359bd3af")
@WinrtFactory("Windows.Services.Store.StoreProductResult")
interface IStoreProductResult : IInspectable
{
extern(Windows):
	HRESULT get_Product(Windows.Services.Store.StoreProduct* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("836278f3-ff87-4364-a5b4-fd2153ebe43b")
@WinrtFactory("Windows.Services.Store.StorePurchaseProperties")
interface IStorePurchaseProperties : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_ExtendedJsonData(HSTRING* return_value);
	HRESULT set_ExtendedJsonData(HSTRING value);
}

@uuid("a768f59e-fefd-489f-9a17-22a593e68b9d")
@WinrtFactory("Windows.Services.Store.StorePurchaseProperties")
interface IStorePurchasePropertiesFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING name, Windows.Services.Store.StorePurchaseProperties* return_storePurchaseProperties);
}

@uuid("add28552-f96a-463d-a7bb-c20b4fca6952")
@WinrtFactory("Windows.Services.Store.StorePurchaseResult")
interface IStorePurchaseResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Services.Store.StorePurchaseStatus* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("6ce5e5f9-a0c9-4b2c-96a6-a171c630038d")
@WinrtFactory("Windows.Services.Store.StoreRequestHelper")
interface IStoreRequestHelperStatics : IInspectable
{
extern(Windows):
	HRESULT abi_SendRequestAsync(Windows.Services.Store.StoreContext context, UINT32 requestKind, HSTRING parametersAsJson, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreSendRequestResult)* return_operation);
}

@uuid("c73abe60-8272-4502-8a69-6e75153a4299")
@WinrtFactory("Windows.Services.Store.StoreSendRequestResult")
interface IStoreSendRequestResult : IInspectable
{
extern(Windows):
	HRESULT get_Response(HSTRING* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("2901296f-c0b0-49d0-8e8d-aa940af9c10b")
@WinrtFactory("Windows.Services.Store.StoreSendRequestResult")
interface IStoreSendRequestResult2 : IInspectable
{
extern(Windows):
	HRESULT get_HttpStatusCode(Windows.Web.Http.HttpStatusCode* return_value);
}

@uuid("397e6f55-4440-4f03-863c-91f3fec83d79")
@WinrtFactory("Windows.Services.Store.StoreSku")
interface IStoreSku : IInspectable
{
extern(Windows):
	HRESULT get_StoreId(HSTRING* return_value);
	HRESULT get_Language(HSTRING* return_value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_IsTrial(bool* return_value);
	HRESULT get_CustomDeveloperData(HSTRING* return_value);
	HRESULT get_Images(Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreImage)* return_value);
	HRESULT get_Videos(Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreVideo)* return_value);
	HRESULT get_Availabilities(Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreAvailability)* return_value);
	HRESULT get_Price(Windows.Services.Store.StorePrice* return_value);
	HRESULT get_ExtendedJsonData(HSTRING* return_value);
	HRESULT get_IsInUserCollection(bool* return_value);
	HRESULT get_BundledSkus(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_CollectionData(Windows.Services.Store.StoreCollectionData* return_value);
	HRESULT abi_GetIsInstalledAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestPurchaseAsync(Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult)* return_operation);
	HRESULT abi_RequestPurchaseWithPurchasePropertiesAsync(Windows.Services.Store.StorePurchaseProperties storePurchaseProperties, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult)* return_operation);
	HRESULT get_IsSubscription(bool* return_value);
	HRESULT get_SubscriptionInfo(Windows.Services.Store.StoreSubscriptionInfo* return_value);
}

@uuid("4189776a-0559-43ac-a9c6-3ab0011fb8eb")
@WinrtFactory("Windows.Services.Store.StoreSubscriptionInfo")
interface IStoreSubscriptionInfo : IInspectable
{
extern(Windows):
	HRESULT get_BillingPeriod(UINT32* return_value);
	HRESULT get_BillingPeriodUnit(Windows.Services.Store.StoreDurationUnit* return_value);
	HRESULT get_HasTrialPeriod(bool* return_value);
	HRESULT get_TrialPeriod(UINT32* return_value);
	HRESULT get_TrialPeriodUnit(Windows.Services.Store.StoreDurationUnit* return_value);
}

@uuid("f26cb184-6f5e-4dc2-886c-3c63083c2f94")
@WinrtFactory("Windows.Services.Store.StoreVideo")
interface IStoreVideo : IInspectable
{
extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_VideoPurposeTag(HSTRING* return_value);
	HRESULT get_Width(UINT32* return_value);
	HRESULT get_Height(UINT32* return_value);
	HRESULT get_Caption(HSTRING* return_value);
	HRESULT get_PreviewImage(Windows.Services.Store.StoreImage* return_value);
}

interface StoreAcquireLicenseResult : Windows.Services.Store.IStoreAcquireLicenseResult
{
extern(Windows):
	final Windows.Services.Store.StorePackageLicense StorePackageLicense()
	{
		Windows.Services.Store.StorePackageLicense _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAcquireLicenseResult).get_StorePackageLicense(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAcquireLicenseResult).get_ExtendedError(&_ret));
		return _ret;
	}
}

interface StoreAppLicense : Windows.Services.Store.IStoreAppLicense
{
extern(Windows):
	final HSTRING SkuStoreId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAppLicense).get_SkuStoreId(&_ret));
		return _ret;
	}
	final bool IsActive()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAppLicense).get_IsActive(&_ret));
		return _ret;
	}
	final bool IsTrial()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAppLicense).get_IsTrial(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime ExpirationDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAppLicense).get_ExpirationDate(&_ret));
		return _ret;
	}
	final HSTRING ExtendedJsonData()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAppLicense).get_ExtendedJsonData(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Services.Store.StoreLicense) AddOnLicenses()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Services.Store.StoreLicense) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAppLicense).get_AddOnLicenses(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan TrialTimeRemaining()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAppLicense).get_TrialTimeRemaining(&_ret));
		return _ret;
	}
	final bool IsTrialOwnedByThisUser()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAppLicense).get_IsTrialOwnedByThisUser(&_ret));
		return _ret;
	}
	final HSTRING TrialUniqueId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAppLicense).get_TrialUniqueId(&_ret));
		return _ret;
	}
}

interface StoreAvailability : Windows.Services.Store.IStoreAvailability
{
extern(Windows):
	final HSTRING StoreId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAvailability).get_StoreId(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime EndDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAvailability).get_EndDate(&_ret));
		return _ret;
	}
	final Windows.Services.Store.StorePrice Price()
	{
		Windows.Services.Store.StorePrice _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAvailability).get_Price(&_ret));
		return _ret;
	}
	final HSTRING ExtendedJsonData()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAvailability).get_ExtendedJsonData(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult) RequestPurchaseAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAvailability).abi_RequestPurchaseAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult) RequestPurchaseWithPurchasePropertiesAsync(Windows.Services.Store.StorePurchaseProperties storePurchaseProperties)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreAvailability).abi_RequestPurchaseWithPurchasePropertiesAsync(storePurchaseProperties, &_ret));
		return _ret;
	}
}

interface StoreCollectionData : Windows.Services.Store.IStoreCollectionData
{
extern(Windows):
	final bool IsTrial()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreCollectionData).get_IsTrial(&_ret));
		return _ret;
	}
	final HSTRING CampaignId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreCollectionData).get_CampaignId(&_ret));
		return _ret;
	}
	final HSTRING DeveloperOfferId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreCollectionData).get_DeveloperOfferId(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime AcquiredDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreCollectionData).get_AcquiredDate(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime StartDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreCollectionData).get_StartDate(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime EndDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreCollectionData).get_EndDate(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan TrialTimeRemaining()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreCollectionData).get_TrialTimeRemaining(&_ret));
		return _ret;
	}
	final HSTRING ExtendedJsonData()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreCollectionData).get_ExtendedJsonData(&_ret));
		return _ret;
	}
}

interface StoreConsumableResult : Windows.Services.Store.IStoreConsumableResult
{
extern(Windows):
	final Windows.Services.Store.StoreConsumableStatus Status()
	{
		Windows.Services.Store.StoreConsumableStatus _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreConsumableResult).get_Status(&_ret));
		return _ret;
	}
	final GUID TrackingId()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreConsumableResult).get_TrackingId(&_ret));
		return _ret;
	}
	final UINT32 BalanceRemaining()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreConsumableResult).get_BalanceRemaining(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreConsumableResult).get_ExtendedError(&_ret));
		return _ret;
	}
}

interface StoreContext : Windows.Services.Store.IStoreContext, Windows.Services.Store.IStoreContext2
{
extern(Windows):
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).get_User(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnOfflineLicensesChanged(void delegate(Windows.Services.Store.StoreContext, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_OfflineLicensesChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Services.Store.StoreContext, IInspectable), Windows.Services.Store.StoreContext, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeOfflineLicensesChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_OfflineLicensesChanged(token));
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) GetCustomerPurchaseIdAsync(HSTRING serviceTicket, HSTRING publisherUserId)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_GetCustomerPurchaseIdAsync(serviceTicket, publisherUserId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) GetCustomerCollectionsIdAsync(HSTRING serviceTicket, HSTRING publisherUserId)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_GetCustomerCollectionsIdAsync(serviceTicket, publisherUserId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreAppLicense) GetAppLicenseAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreAppLicense) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_GetAppLicenseAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductResult) GetStoreProductForCurrentAppAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_GetStoreProductForCurrentAppAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductQueryResult) GetStoreProductsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) productKinds, Windows.Foundation.Collections.IIterable!(HSTRING) storeIds)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductQueryResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_GetStoreProductsAsync(productKinds, storeIds, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductQueryResult) GetAssociatedStoreProductsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) productKinds)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductQueryResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_GetAssociatedStoreProductsAsync(productKinds, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductPagedQueryResult) GetAssociatedStoreProductsWithPagingAsync(Windows.Foundation.Collections.IIterable!(HSTRING) productKinds, UINT32 maxItemsToRetrievePerPage)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductPagedQueryResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_GetAssociatedStoreProductsWithPagingAsync(productKinds, maxItemsToRetrievePerPage, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductQueryResult) GetUserCollectionAsync(Windows.Foundation.Collections.IIterable!(HSTRING) productKinds)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductQueryResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_GetUserCollectionAsync(productKinds, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductPagedQueryResult) GetUserCollectionWithPagingAsync(Windows.Foundation.Collections.IIterable!(HSTRING) productKinds, UINT32 maxItemsToRetrievePerPage)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductPagedQueryResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_GetUserCollectionWithPagingAsync(productKinds, maxItemsToRetrievePerPage, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreConsumableResult) ReportConsumableFulfillmentAsync(HSTRING productStoreId, UINT32 quantity, GUID trackingId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreConsumableResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_ReportConsumableFulfillmentAsync(productStoreId, quantity, trackingId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreConsumableResult) GetConsumableBalanceRemainingAsync(HSTRING productStoreId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreConsumableResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_GetConsumableBalanceRemainingAsync(productStoreId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreAcquireLicenseResult) AcquireStoreLicenseForOptionalPackageAsync(Windows.ApplicationModel.Package optionalPackage)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreAcquireLicenseResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_AcquireStoreLicenseForOptionalPackageAsync(optionalPackage, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult) RequestPurchaseAsync(HSTRING storeId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_RequestPurchaseAsync(storeId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult) RequestPurchaseWithPurchasePropertiesAsync(HSTRING storeId, Windows.Services.Store.StorePurchaseProperties storePurchaseProperties)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_RequestPurchaseWithPurchasePropertiesAsync(storeId, storePurchaseProperties, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StorePackageUpdate)) GetAppAndOptionalStorePackageUpdatesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StorePackageUpdate)) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_GetAppAndOptionalStorePackageUpdatesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Services.Store.StorePackageUpdateResult, Windows.Services.Store.StorePackageUpdateStatus) RequestDownloadStorePackageUpdatesAsync(Windows.Foundation.Collections.IIterable!(Windows.Services.Store.StorePackageUpdate) storePackageUpdates)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Services.Store.StorePackageUpdateResult, Windows.Services.Store.StorePackageUpdateStatus) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_RequestDownloadStorePackageUpdatesAsync(storePackageUpdates, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Services.Store.StorePackageUpdateResult, Windows.Services.Store.StorePackageUpdateStatus) RequestDownloadAndInstallStorePackageUpdatesAsync(Windows.Foundation.Collections.IIterable!(Windows.Services.Store.StorePackageUpdate) storePackageUpdates)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Services.Store.StorePackageUpdateResult, Windows.Services.Store.StorePackageUpdateStatus) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_RequestDownloadAndInstallStorePackageUpdatesAsync(storePackageUpdates, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Services.Store.StorePackageUpdateResult, Windows.Services.Store.StorePackageUpdateStatus) RequestDownloadAndInstallStorePackagesAsync(Windows.Foundation.Collections.IIterable!(HSTRING) storeIds)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Services.Store.StorePackageUpdateResult, Windows.Services.Store.StorePackageUpdateStatus) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext).abi_RequestDownloadAndInstallStorePackagesAsync(storeIds, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductResult) FindStoreProductForPackageAsync(Windows.Foundation.Collections.IIterable!(HSTRING) productKinds, Windows.ApplicationModel.Package package_)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreContext2).abi_FindStoreProductForPackageAsync(productKinds, package_, &_ret));
		return _ret;
	}
}

interface StoreImage : Windows.Services.Store.IStoreImage
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreImage).get_Uri(&_ret));
		return _ret;
	}
	final HSTRING ImagePurposeTag()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreImage).get_ImagePurposeTag(&_ret));
		return _ret;
	}
	final UINT32 Width()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreImage).get_Width(&_ret));
		return _ret;
	}
	final UINT32 Height()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreImage).get_Height(&_ret));
		return _ret;
	}
	final HSTRING Caption()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreImage).get_Caption(&_ret));
		return _ret;
	}
}

interface StoreLicense : Windows.Services.Store.IStoreLicense
{
extern(Windows):
	final HSTRING SkuStoreId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreLicense).get_SkuStoreId(&_ret));
		return _ret;
	}
	final bool IsActive()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreLicense).get_IsActive(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime ExpirationDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreLicense).get_ExpirationDate(&_ret));
		return _ret;
	}
	final HSTRING ExtendedJsonData()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreLicense).get_ExtendedJsonData(&_ret));
		return _ret;
	}
	final HSTRING InAppOfferToken()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreLicense).get_InAppOfferToken(&_ret));
		return _ret;
	}
}

interface StorePackageLicense : Windows.Services.Store.IStorePackageLicense, Windows.Foundation.IClosable
{
extern(Windows):
	final EventRegistrationToken OnLicenseLost(void delegate(Windows.Services.Store.StorePackageLicense, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_LicenseLost(event!(Windows.Foundation.TypedEventHandler!(Windows.Services.Store.StorePackageLicense, IInspectable), Windows.Services.Store.StorePackageLicense, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeLicenseLost(EventRegistrationToken token)
	{
		Debug.OK(remove_LicenseLost(token));
	}
	final Windows.ApplicationModel.Package Package()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStorePackageLicense).get_Package(&_ret));
		return _ret;
	}
	final bool IsValid()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStorePackageLicense).get_IsValid(&_ret));
		return _ret;
	}
	final void ReleaseLicense()
	{
		Debug.OK(this.as!(Windows.Services.Store.IStorePackageLicense).abi_ReleaseLicense());
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface StorePackageUpdate : Windows.Services.Store.IStorePackageUpdate
{
extern(Windows):
	final Windows.ApplicationModel.Package Package()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStorePackageUpdate).get_Package(&_ret));
		return _ret;
	}
	final bool Mandatory()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStorePackageUpdate).get_Mandatory(&_ret));
		return _ret;
	}
}

interface StorePackageUpdateResult : Windows.Services.Store.IStorePackageUpdateResult
{
extern(Windows):
	final Windows.Services.Store.StorePackageUpdateState OverallState()
	{
		Windows.Services.Store.StorePackageUpdateState _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStorePackageUpdateResult).get_OverallState(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StorePackageUpdateStatus) StorePackageUpdateStatuses()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StorePackageUpdateStatus) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStorePackageUpdateResult).get_StorePackageUpdateStatuses(&_ret));
		return _ret;
	}
}

interface StorePrice : Windows.Services.Store.IStorePrice
{
extern(Windows):
	final HSTRING FormattedBasePrice()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStorePrice).get_FormattedBasePrice(&_ret));
		return _ret;
	}
	final HSTRING FormattedPrice()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStorePrice).get_FormattedPrice(&_ret));
		return _ret;
	}
	final bool IsOnSale()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStorePrice).get_IsOnSale(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime SaleEndDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStorePrice).get_SaleEndDate(&_ret));
		return _ret;
	}
	final HSTRING CurrencyCode()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStorePrice).get_CurrencyCode(&_ret));
		return _ret;
	}
	final HSTRING FormattedRecurrencePrice()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStorePrice).get_FormattedRecurrencePrice(&_ret));
		return _ret;
	}
}

interface StoreProduct : Windows.Services.Store.IStoreProduct
{
extern(Windows):
	final HSTRING StoreId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).get_StoreId(&_ret));
		return _ret;
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).get_Language(&_ret));
		return _ret;
	}
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).get_Title(&_ret));
		return _ret;
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).get_Description(&_ret));
		return _ret;
	}
	final HSTRING ProductKind()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).get_ProductKind(&_ret));
		return _ret;
	}
	final bool HasDigitalDownload()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).get_HasDigitalDownload(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Keywords()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).get_Keywords(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreImage) Images()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreImage) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).get_Images(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreVideo) Videos()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreVideo) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).get_Videos(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreSku) Skus()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreSku) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).get_Skus(&_ret));
		return _ret;
	}
	final bool IsInUserCollection()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).get_IsInUserCollection(&_ret));
		return _ret;
	}
	final Windows.Services.Store.StorePrice Price()
	{
		Windows.Services.Store.StorePrice _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).get_Price(&_ret));
		return _ret;
	}
	final HSTRING ExtendedJsonData()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).get_ExtendedJsonData(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri LinkUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).get_LinkUri(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) GetIsAnySkuInstalledAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).abi_GetIsAnySkuInstalledAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult) RequestPurchaseAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).abi_RequestPurchaseAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult) RequestPurchaseWithPurchasePropertiesAsync(Windows.Services.Store.StorePurchaseProperties storePurchaseProperties)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).abi_RequestPurchaseWithPurchasePropertiesAsync(storePurchaseProperties, &_ret));
		return _ret;
	}
	final HSTRING InAppOfferToken()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProduct).get_InAppOfferToken(&_ret));
		return _ret;
	}
}

interface StoreProductPagedQueryResult : Windows.Services.Store.IStoreProductPagedQueryResult
{
extern(Windows):
	final Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Services.Store.StoreProduct) Products()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Services.Store.StoreProduct) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProductPagedQueryResult).get_Products(&_ret));
		return _ret;
	}
	final bool HasMoreResults()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProductPagedQueryResult).get_HasMoreResults(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProductPagedQueryResult).get_ExtendedError(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductPagedQueryResult) GetNextAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductPagedQueryResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProductPagedQueryResult).abi_GetNextAsync(&_ret));
		return _ret;
	}
}

interface StoreProductQueryResult : Windows.Services.Store.IStoreProductQueryResult
{
extern(Windows):
	final Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Services.Store.StoreProduct) Products()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Services.Store.StoreProduct) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProductQueryResult).get_Products(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProductQueryResult).get_ExtendedError(&_ret));
		return _ret;
	}
}

interface StoreProductResult : Windows.Services.Store.IStoreProductResult
{
extern(Windows):
	final Windows.Services.Store.StoreProduct Product()
	{
		Windows.Services.Store.StoreProduct _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProductResult).get_Product(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreProductResult).get_ExtendedError(&_ret));
		return _ret;
	}
}

interface StorePurchaseProperties : Windows.Services.Store.IStorePurchaseProperties
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStorePurchaseProperties).get_Name(&_ret));
		return _ret;
	}
	final void Name(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Services.Store.IStorePurchaseProperties).set_Name(value));
	}
	final HSTRING ExtendedJsonData()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStorePurchaseProperties).get_ExtendedJsonData(&_ret));
		return _ret;
	}
	final void ExtendedJsonData(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Services.Store.IStorePurchaseProperties).set_ExtendedJsonData(value));
	}
}

interface StorePurchaseResult : Windows.Services.Store.IStorePurchaseResult
{
extern(Windows):
	final Windows.Services.Store.StorePurchaseStatus Status()
	{
		Windows.Services.Store.StorePurchaseStatus _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStorePurchaseResult).get_Status(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStorePurchaseResult).get_ExtendedError(&_ret));
		return _ret;
	}
}

interface StoreRequestHelper
{
}

interface StoreSendRequestResult : Windows.Services.Store.IStoreSendRequestResult, Windows.Services.Store.IStoreSendRequestResult2
{
extern(Windows):
	final HSTRING Response()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSendRequestResult).get_Response(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSendRequestResult).get_ExtendedError(&_ret));
		return _ret;
	}
	final Windows.Web.Http.HttpStatusCode HttpStatusCode()
	{
		Windows.Web.Http.HttpStatusCode _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSendRequestResult2).get_HttpStatusCode(&_ret));
		return _ret;
	}
}

interface StoreSku : Windows.Services.Store.IStoreSku
{
extern(Windows):
	final HSTRING StoreId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).get_StoreId(&_ret));
		return _ret;
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).get_Language(&_ret));
		return _ret;
	}
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).get_Title(&_ret));
		return _ret;
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).get_Description(&_ret));
		return _ret;
	}
	final bool IsTrial()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).get_IsTrial(&_ret));
		return _ret;
	}
	final HSTRING CustomDeveloperData()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).get_CustomDeveloperData(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreImage) Images()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreImage) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).get_Images(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreVideo) Videos()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreVideo) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).get_Videos(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreAvailability) Availabilities()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StoreAvailability) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).get_Availabilities(&_ret));
		return _ret;
	}
	final Windows.Services.Store.StorePrice Price()
	{
		Windows.Services.Store.StorePrice _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).get_Price(&_ret));
		return _ret;
	}
	final HSTRING ExtendedJsonData()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).get_ExtendedJsonData(&_ret));
		return _ret;
	}
	final bool IsInUserCollection()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).get_IsInUserCollection(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) BundledSkus()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).get_BundledSkus(&_ret));
		return _ret;
	}
	final Windows.Services.Store.StoreCollectionData CollectionData()
	{
		Windows.Services.Store.StoreCollectionData _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).get_CollectionData(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) GetIsInstalledAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).abi_GetIsInstalledAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult) RequestPurchaseAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).abi_RequestPurchaseAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult) RequestPurchaseWithPurchasePropertiesAsync(Windows.Services.Store.StorePurchaseProperties storePurchaseProperties)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StorePurchaseResult) _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).abi_RequestPurchaseWithPurchasePropertiesAsync(storePurchaseProperties, &_ret));
		return _ret;
	}
	final bool IsSubscription()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).get_IsSubscription(&_ret));
		return _ret;
	}
	final Windows.Services.Store.StoreSubscriptionInfo SubscriptionInfo()
	{
		Windows.Services.Store.StoreSubscriptionInfo _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSku).get_SubscriptionInfo(&_ret));
		return _ret;
	}
}

interface StoreSubscriptionInfo : Windows.Services.Store.IStoreSubscriptionInfo
{
extern(Windows):
	final UINT32 BillingPeriod()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSubscriptionInfo).get_BillingPeriod(&_ret));
		return _ret;
	}
	final Windows.Services.Store.StoreDurationUnit BillingPeriodUnit()
	{
		Windows.Services.Store.StoreDurationUnit _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSubscriptionInfo).get_BillingPeriodUnit(&_ret));
		return _ret;
	}
	final bool HasTrialPeriod()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSubscriptionInfo).get_HasTrialPeriod(&_ret));
		return _ret;
	}
	final UINT32 TrialPeriod()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSubscriptionInfo).get_TrialPeriod(&_ret));
		return _ret;
	}
	final Windows.Services.Store.StoreDurationUnit TrialPeriodUnit()
	{
		Windows.Services.Store.StoreDurationUnit _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreSubscriptionInfo).get_TrialPeriodUnit(&_ret));
		return _ret;
	}
}

interface StoreVideo : Windows.Services.Store.IStoreVideo
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreVideo).get_Uri(&_ret));
		return _ret;
	}
	final HSTRING VideoPurposeTag()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreVideo).get_VideoPurposeTag(&_ret));
		return _ret;
	}
	final UINT32 Width()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreVideo).get_Width(&_ret));
		return _ret;
	}
	final UINT32 Height()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreVideo).get_Height(&_ret));
		return _ret;
	}
	final HSTRING Caption()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreVideo).get_Caption(&_ret));
		return _ret;
	}
	final Windows.Services.Store.StoreImage PreviewImage()
	{
		Windows.Services.Store.StoreImage _ret;
		Debug.OK(this.as!(Windows.Services.Store.IStoreVideo).get_PreviewImage(&_ret));
		return _ret;
	}
}

enum StoreConsumableStatus
{
	Succeeded = 0,
	InsufficentQuantity = 1,
	NetworkError = 2,
	ServerError = 3
}

enum StoreDurationUnit
{
	Minute = 0,
	Hour = 1,
	Day = 2,
	Week = 3,
	Month = 4,
	Year = 5
}

enum StorePackageUpdateState
{
	Pending = 0,
	Downloading = 1,
	Deploying = 2,
	Completed = 3,
	Canceled = 4,
	OtherError = 5,
	ErrorLowBattery = 6,
	ErrorWiFiRecommended = 7,
	ErrorWiFiRequired = 8
}

enum StorePurchaseStatus
{
	Succeeded = 0,
	AlreadyPurchased = 1,
	NotPurchased = 2,
	NetworkError = 3,
	ServerError = 4
}