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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StorePackageLicense(Windows.Services.Store.StorePackageLicense* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("f389f9de-73c0-45ce-9bab-b2fe3e5eafd3")
@WinrtFactory("Windows.Services.Store.StoreAppLicense")
interface IStoreAppLicense : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FindStoreProductForPackageAsync(Windows.Foundation.Collections.IIterable!(HSTRING) productKinds, Windows.ApplicationModel.Package package_, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreProductResult)* return_operation);
}

@uuid("9c06ee5f-15c0-4e72-9330-d6191cebd19c")
@WinrtFactory("Windows.Services.Store.StoreContext")
interface IStoreContextStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefault(Windows.Services.Store.StoreContext* return_value);
	HRESULT abi_GetForUser(Windows.System.User user, Windows.Services.Store.StoreContext* return_value);
}

@uuid("081fd248-adb4-4b64-a993-784789926ed5")
@WinrtFactory("Windows.Services.Store.StoreImage")
interface IStoreImage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SkuStoreId(HSTRING* return_value);
	HRESULT get_IsActive(bool* return_value);
	HRESULT get_ExpirationDate(Windows.Foundation.DateTime* return_value);
	HRESULT get_ExtendedJsonData(HSTRING* return_value);
	HRESULT get_InAppOfferToken(HSTRING* return_value);
}

@uuid("0c465714-14e1-4973-bd14-f77724271e99")
@WinrtFactory("Windows.Services.Store.StorePackageLicense")
interface IStorePackageLicense : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_LicenseLost(Windows.Foundation.TypedEventHandler!(Windows.Services.Store.StorePackageLicense, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_LicenseLost(EventRegistrationToken token);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
	HRESULT get_IsValid(bool* return_value);
	HRESULT abi_ReleaseLicense();
}

@uuid("140fa150-3cbf-4a35-b91f-48271c31b072")
@WinrtFactory("Windows.Services.Store.StorePackageUpdate")
interface IStorePackageUpdate : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
	HRESULT get_Mandatory(bool* return_value);
}

@uuid("e79142ed-61f9-4893-b4fe-cf191603af7b")
@WinrtFactory("Windows.Services.Store.StorePackageUpdateResult")
interface IStorePackageUpdateResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OverallState(Windows.Services.Store.StorePackageUpdateState* return_value);
	HRESULT get_StorePackageUpdateStatuses(Windows.Foundation.Collections.IVectorView!(Windows.Services.Store.StorePackageUpdateStatus)* return_value);
}

@uuid("55ba94c4-15f1-407c-8f06-006380f4df0b")
@WinrtFactory("Windows.Services.Store.StorePrice")
interface IStorePrice : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Products(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Services.Store.StoreProduct)* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("b7674f73-3c87-4ee1-8201-f428359bd3af")
@WinrtFactory("Windows.Services.Store.StoreProductResult")
interface IStoreProductResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Product(Windows.Services.Store.StoreProduct* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("836278f3-ff87-4364-a5b4-fd2153ebe43b")
@WinrtFactory("Windows.Services.Store.StorePurchaseProperties")
interface IStorePurchaseProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING name, Windows.Services.Store.StorePurchaseProperties* return_storePurchaseProperties);
}

@uuid("add28552-f96a-463d-a7bb-c20b4fca6952")
@WinrtFactory("Windows.Services.Store.StorePurchaseResult")
interface IStorePurchaseResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Services.Store.StorePurchaseStatus* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("6ce5e5f9-a0c9-4b2c-96a6-a171c630038d")
@WinrtFactory("Windows.Services.Store.StoreRequestHelper")
interface IStoreRequestHelperStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SendRequestAsync(Windows.Services.Store.StoreContext context, UINT32 requestKind, HSTRING parametersAsJson, Windows.Foundation.IAsyncOperation!(Windows.Services.Store.StoreSendRequestResult)* return_operation);
}

@uuid("c73abe60-8272-4502-8a69-6e75153a4299")
@WinrtFactory("Windows.Services.Store.StoreSendRequestResult")
interface IStoreSendRequestResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Response(HSTRING* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("2901296f-c0b0-49d0-8e8d-aa940af9c10b")
@WinrtFactory("Windows.Services.Store.StoreSendRequestResult")
interface IStoreSendRequestResult2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HttpStatusCode(Windows.Web.Http.HttpStatusCode* return_value);
}

@uuid("397e6f55-4440-4f03-863c-91f3fec83d79")
@WinrtFactory("Windows.Services.Store.StoreSku")
interface IStoreSku : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_VideoPurposeTag(HSTRING* return_value);
	HRESULT get_Width(UINT32* return_value);
	HRESULT get_Height(UINT32* return_value);
	HRESULT get_Caption(HSTRING* return_value);
	HRESULT get_PreviewImage(Windows.Services.Store.StoreImage* return_value);
}

interface StoreAcquireLicenseResult
{
}

interface StoreAppLicense
{
}

interface StoreAvailability
{
}

interface StoreCollectionData
{
}

interface StoreConsumableResult
{
}

interface StoreContext
{
}

interface StoreImage
{
}

interface StoreLicense
{
}

interface StorePackageLicense
{
}

interface StorePackageUpdate
{
}

interface StorePackageUpdateResult
{
}

interface StorePrice
{
}

interface StoreProduct
{
}

interface StoreProductPagedQueryResult
{
}

interface StoreProductQueryResult
{
}

interface StoreProductResult
{
}

interface StorePurchaseProperties
{
}

interface StorePurchaseResult
{
}

interface StoreSendRequestResult
{
}

interface StoreSku
{
}

interface StoreSubscriptionInfo
{
}

interface StoreVideo
{
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