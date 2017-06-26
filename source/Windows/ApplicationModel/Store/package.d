module Windows.ApplicationModel.Store;

import dwinrt;

@uuid("d4a50255-1369-4c36-832f-6f2d88e3659b")
interface LicenseChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke();
}

@uuid("d52dc065-da3f-4685-995e-9b482eb5e603")
@WinrtFactory("Windows.ApplicationModel.Store.CurrentApp")
interface ICurrentApp : IInspectable
{
extern(Windows):
	HRESULT get_LicenseInformation(Windows.ApplicationModel.Store.LicenseInformation* return_value);
	HRESULT get_LinkUri(Windows.Foundation.Uri* return_value);
	HRESULT get_AppId(GUID* return_value);
	HRESULT abi_RequestAppPurchaseAsync(bool includeReceipt, Windows.Foundation.IAsyncOperation!(HSTRING)* return_requestAppPurchaseOperation);
	deprecated("RequestProductPurchaseAsync(productId, includeReceipt) may be altered or unavailable for releases after Windows 8.1. Instead, use RequestProductPurchaseAsync(productId).")
	HRESULT abi_RequestProductPurchaseAsync(HSTRING productId, bool includeReceipt, Windows.Foundation.IAsyncOperation!(HSTRING)* return_requestProductPurchaseOperation);
	HRESULT abi_LoadListingInformationAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.ListingInformation)* return_loadListingOperation);
	HRESULT abi_GetAppReceiptAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_appReceiptOperation);
	HRESULT abi_GetProductReceiptAsync(HSTRING productId, Windows.Foundation.IAsyncOperation!(HSTRING)* return_getProductReceiptOperation);
}

@uuid("df4e6e2d-3171-4ad3-8614-2c61244373cb")
@WinrtFactory("Windows.ApplicationModel.Store.CurrentApp")
interface ICurrentApp2Statics : IInspectable
{
extern(Windows):
	HRESULT abi_GetCustomerPurchaseIdAsync(HSTRING serviceTicket, HSTRING publisherUserId, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_GetCustomerCollectionsIdAsync(HSTRING serviceTicket, HSTRING publisherUserId, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
}

@uuid("f17f9db1-74cd-4787-9787-19866e9a5559")
@WinrtFactory("Windows.ApplicationModel.Store.CurrentAppSimulator")
interface ICurrentAppSimulator : IInspectable
{
extern(Windows):
	HRESULT get_LicenseInformation(Windows.ApplicationModel.Store.LicenseInformation* return_value);
	HRESULT get_LinkUri(Windows.Foundation.Uri* return_value);
	HRESULT get_AppId(GUID* return_value);
	HRESULT abi_RequestAppPurchaseAsync(bool includeReceipt, Windows.Foundation.IAsyncOperation!(HSTRING)* return_requestAppPurchaseOperation);
	deprecated("RequestProductPurchaseAsync(productId, includeReceipt) may be altered or unavailable for releases after Windows 8.1. Instead, use RequestProductPurchaseAsync(productId).")
	HRESULT abi_RequestProductPurchaseAsync(HSTRING productId, bool includeReceipt, Windows.Foundation.IAsyncOperation!(HSTRING)* return_requestProductPurchaseOperation);
	HRESULT abi_LoadListingInformationAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.ListingInformation)* return_loadListingOperation);
	HRESULT abi_GetAppReceiptAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_appReceiptOperation);
	HRESULT abi_GetProductReceiptAsync(HSTRING productId, Windows.Foundation.IAsyncOperation!(HSTRING)* return_getProductReceiptOperation);
	HRESULT abi_ReloadSimulatorAsync(Windows.Storage.StorageFile simulatorSettingsFile, Windows.Foundation.IAsyncAction* return_reloadSimulatorOperation);
}

@uuid("617e70e2-f86f-4b54-9666-dde285092c68")
@WinrtFactory("Windows.ApplicationModel.Store.CurrentAppSimulator")
interface ICurrentAppSimulatorStaticsWithFiltering : IInspectable
{
extern(Windows):
	HRESULT abi_LoadListingInformationByProductIdsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) productIds, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.ListingInformation)* return_loadListingOperation);
	HRESULT abi_LoadListingInformationByKeywordsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) keywords, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.ListingInformation)* return_loadListingOperation);
}

@uuid("84678a43-df00-4672-a43f-b25b1441cfcf")
@WinrtFactory("Windows.ApplicationModel.Store.CurrentAppSimulator")
interface ICurrentAppSimulatorWithCampaignId : IInspectable
{
extern(Windows):
	HRESULT abi_GetAppPurchaseCampaignIdAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
}

@uuid("4e51f0ab-20e7-4412-9b85-59bb78388667")
@WinrtFactory("Windows.ApplicationModel.Store.CurrentAppSimulator")
interface ICurrentAppSimulatorWithConsumables : IInspectable
{
extern(Windows):
	HRESULT abi_ReportConsumableFulfillmentAsync(HSTRING productId, GUID transactionId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.FulfillmentResult)* return_reportConsumableFulfillmentOperation);
	HRESULT abi_RequestProductPurchaseWithResultsAsync(HSTRING productId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.PurchaseResults)* return_requestProductPurchaseWithResultsOperation);
	HRESULT abi_RequestProductPurchaseWithDisplayPropertiesAsync(HSTRING productId, HSTRING offerId, Windows.ApplicationModel.Store.ProductPurchaseDisplayProperties displayProperties, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.PurchaseResults)* return_requestProductPurchaseWithDisplayPropertiesOperation);
	HRESULT abi_GetUnfulfilledConsumablesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Store.UnfulfilledConsumable))* return_getUnfulfilledConsumablesOperation);
}

@uuid("d36d6542-9085-438e-97ba-a25c976be2fd")
@WinrtFactory("Windows.ApplicationModel.Store.CurrentApp")
interface ICurrentAppStaticsWithFiltering : IInspectable
{
extern(Windows):
	HRESULT abi_LoadListingInformationByProductIdsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) productIds, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.ListingInformation)* return_loadListingOperation);
	HRESULT abi_LoadListingInformationByKeywordsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) keywords, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.ListingInformation)* return_loadListingOperation);
	HRESULT abi_ReportProductFulfillment(HSTRING productId);
}

@uuid("312f4cd0-36c1-44a6-b32b-432d608e4dd6")
@WinrtFactory("Windows.ApplicationModel.Store.CurrentApp")
interface ICurrentAppWithCampaignId : IInspectable
{
extern(Windows):
	HRESULT abi_GetAppPurchaseCampaignIdAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
}

@uuid("844e0071-9e4f-4f79-995a-5f91172e6cef")
@WinrtFactory("Windows.ApplicationModel.Store.CurrentApp")
interface ICurrentAppWithConsumables : IInspectable
{
extern(Windows):
	HRESULT abi_ReportConsumableFulfillmentAsync(HSTRING productId, GUID transactionId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.FulfillmentResult)* return_reportConsumableFulfillmentOperation);
	HRESULT abi_RequestProductPurchaseWithResultsAsync(HSTRING productId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.PurchaseResults)* return_requestProductPurchaseWithResultsOperation);
	HRESULT abi_RequestProductPurchaseWithDisplayPropertiesAsync(HSTRING productId, HSTRING offerId, Windows.ApplicationModel.Store.ProductPurchaseDisplayProperties displayProperties, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.PurchaseResults)* return_requestProductPurchaseWithDisplayPropertiesOperation);
	HRESULT abi_GetUnfulfilledConsumablesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Store.UnfulfilledConsumable))* return_getUnfulfilledConsumablesOperation);
}

@uuid("8eb7dc30-f170-4ed5-8e21-1516da3fd367")
@WinrtFactory("Windows.ApplicationModel.Store.LicenseInformation")
interface ILicenseInformation : IInspectable
{
extern(Windows):
	HRESULT get_ProductLicenses(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Store.ProductLicense)* return_value);
	HRESULT get_IsActive(bool* return_value);
	HRESULT get_IsTrial(bool* return_value);
	HRESULT get_ExpirationDate(Windows.Foundation.DateTime* return_value);
	HRESULT add_LicenseChanged(Windows.ApplicationModel.Store.LicenseChangedEventHandler handler, EventRegistrationToken* return_cookie);
	HRESULT remove_LicenseChanged(EventRegistrationToken cookie);
}

@uuid("588b4abf-bc74-4383-b78c-99606323dece")
@WinrtFactory("Windows.ApplicationModel.Store.ListingInformation")
interface IListingInformation : IInspectable
{
extern(Windows):
	HRESULT get_CurrentMarket(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_ProductListings(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Store.ProductListing)* return_value);
	HRESULT get_FormattedPrice(HSTRING* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_AgeRating(UINT32* return_value);
}

@uuid("c0fd2c1d-b30e-4384-84ea-72fefa82223e")
@WinrtFactory("Windows.ApplicationModel.Store.ListingInformation")
interface IListingInformation2 : IInspectable
{
extern(Windows):
	HRESULT get_FormattedBasePrice(HSTRING* return_value);
	HRESULT get_SaleEndDate(Windows.Foundation.DateTime* return_value);
	HRESULT get_IsOnSale(bool* return_value);
	HRESULT get_CurrencyCode(HSTRING* return_value);
}

@uuid("363308c7-2bcf-4c0e-8f2f-e808aaa8f99d")
@WinrtFactory("Windows.ApplicationModel.Store.ProductLicense")
interface IProductLicense : IInspectable
{
extern(Windows):
	HRESULT get_ProductId(HSTRING* return_value);
	HRESULT get_IsActive(bool* return_value);
	HRESULT get_ExpirationDate(Windows.Foundation.DateTime* return_value);
}

@uuid("fc535c8a-f667-40f3-ba3c-045a63abb3ac")
@WinrtFactory("Windows.ApplicationModel.Store.ProductLicense")
interface IProductLicenseWithFulfillment_Base : IInspectable
{
extern(Windows):
	HRESULT get_IsConsumable(bool* return_value);
}
@uuid("fc535c8a-f667-40f3-ba3c-045a63abb3ac")
@WinrtFactory("Windows.ApplicationModel.Store.ProductLicense")
interface IProductLicenseWithFulfillment : IProductLicenseWithFulfillment_Base, Windows.ApplicationModel.Store.IProductLicense {}

@uuid("45a7d6ad-c750-4d9c-947c-b00dcbf9e9c2")
@WinrtFactory("Windows.ApplicationModel.Store.ProductListing")
interface IProductListing : IInspectable
{
extern(Windows):
	HRESULT get_ProductId(HSTRING* return_value);
	HRESULT get_FormattedPrice(HSTRING* return_value);
	HRESULT get_Name(HSTRING* return_value);
}

@uuid("f89e290f-73fe-494d-a939-08a9b2495abe")
@WinrtFactory("Windows.ApplicationModel.Store.ProductListing")
interface IProductListing2 : IInspectable
{
extern(Windows):
	HRESULT get_FormattedBasePrice(HSTRING* return_value);
	HRESULT get_SaleEndDate(Windows.Foundation.DateTime* return_value);
	HRESULT get_IsOnSale(bool* return_value);
	HRESULT get_CurrencyCode(HSTRING* return_value);
}

@uuid("eb9e9790-8f6b-481f-93a7-5c3a63068149")
@WinrtFactory("Windows.ApplicationModel.Store.ProductListing")
interface IProductListingWithConsumables : IInspectable
{
extern(Windows):
	HRESULT get_ProductType(Windows.ApplicationModel.Store.ProductType* return_value);
}

@uuid("124da567-23f8-423e-9532-189943c40ace")
@WinrtFactory("Windows.ApplicationModel.Store.ProductListing")
interface IProductListingWithMetadata_Base : IInspectable
{
extern(Windows):
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_Keywords(Windows.Foundation.Collections.IIterable!(HSTRING)* return_value);
	HRESULT get_ProductType(Windows.ApplicationModel.Store.ProductType* return_value);
	HRESULT get_Tag(HSTRING* return_value);
	HRESULT get_ImageUri(Windows.Foundation.Uri* return_value);
}
@uuid("124da567-23f8-423e-9532-189943c40ace")
@WinrtFactory("Windows.ApplicationModel.Store.ProductListing")
interface IProductListingWithMetadata : IProductListingWithMetadata_Base, Windows.ApplicationModel.Store.IProductListing {}

@uuid("d70b7420-bc92-401b-a809-c9b2e5dbbdaf")
@WinrtFactory("Windows.ApplicationModel.Store.ProductPurchaseDisplayProperties")
interface IProductPurchaseDisplayProperties : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
	HRESULT get_Image(Windows.Foundation.Uri* return_value);
	HRESULT set_Image(Windows.Foundation.Uri value);
}

@uuid("6f491df4-32d6-4b40-b474-b83038a4d9cf")
@WinrtFactory("Windows.ApplicationModel.Store.ProductPurchaseDisplayProperties")
interface IProductPurchaseDisplayPropertiesFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateProductPurchaseDisplayProperties(HSTRING name, Windows.ApplicationModel.Store.ProductPurchaseDisplayProperties* return_displayProperties);
}

@uuid("ed50b37e-8656-4f65-b8c8-ac7e0cb1a1c2")
@WinrtFactory("Windows.ApplicationModel.Store.PurchaseResults")
interface IPurchaseResults : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.ApplicationModel.Store.ProductPurchaseStatus* return_value);
	HRESULT get_TransactionId(GUID* return_value);
	HRESULT get_ReceiptXml(HSTRING* return_value);
	HRESULT get_OfferId(HSTRING* return_value);
}

@uuid("2df7fbbb-1cdd-4cb8-a014-7b9cf8986927")
@WinrtFactory("Windows.ApplicationModel.Store.UnfulfilledConsumable")
interface IUnfulfilledConsumable : IInspectable
{
extern(Windows):
	HRESULT get_ProductId(HSTRING* return_value);
	HRESULT get_TransactionId(GUID* return_value);
	HRESULT get_OfferId(HSTRING* return_value);
}

interface CurrentApp
{
	private static Windows.ApplicationModel.Store.ICurrentApp _staticInstance;
	public static Windows.ApplicationModel.Store.ICurrentApp staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Store.ICurrentApp);
		return _staticInstance;
	}
	static Windows.ApplicationModel.Store.LicenseInformation LicenseInformation()
	{
		Windows.ApplicationModel.Store.LicenseInformation _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentApp).get_LicenseInformation(&_ret));
		return _ret;
	}
	static Windows.Foundation.Uri LinkUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentApp).get_LinkUri(&_ret));
		return _ret;
	}
	static GUID AppId()
	{
		GUID _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentApp).get_AppId(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(HSTRING) RequestAppPurchaseAsync(bool includeReceipt)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentApp).abi_RequestAppPurchaseAsync(includeReceipt, &_ret));
		return _ret;
	}
	deprecated("RequestProductPurchaseAsync(productId, includeReceipt) may be altered or unavailable for releases after Windows 8.1. Instead, use RequestProductPurchaseAsync(productId).")
	static Windows.Foundation.IAsyncOperation!(HSTRING) RequestProductPurchaseAsync(HSTRING productId, bool includeReceipt)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentApp).abi_RequestProductPurchaseAsync(productId, includeReceipt, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.ListingInformation) LoadListingInformationAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.ListingInformation) _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentApp).abi_LoadListingInformationAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(HSTRING) GetAppReceiptAsync()
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentApp).abi_GetAppReceiptAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(HSTRING) GetProductReceiptAsync(HSTRING productId)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentApp).abi_GetProductReceiptAsync(productId, &_ret));
		return _ret;
	}
}

interface CurrentAppSimulator
{
	private static Windows.ApplicationModel.Store.ICurrentAppSimulator _staticInstance;
	public static Windows.ApplicationModel.Store.ICurrentAppSimulator staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Store.ICurrentAppSimulator);
		return _staticInstance;
	}
	static Windows.ApplicationModel.Store.LicenseInformation LicenseInformation()
	{
		Windows.ApplicationModel.Store.LicenseInformation _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentAppSimulator).get_LicenseInformation(&_ret));
		return _ret;
	}
	static Windows.Foundation.Uri LinkUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentAppSimulator).get_LinkUri(&_ret));
		return _ret;
	}
	static GUID AppId()
	{
		GUID _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentAppSimulator).get_AppId(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(HSTRING) RequestAppPurchaseAsync(bool includeReceipt)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentAppSimulator).abi_RequestAppPurchaseAsync(includeReceipt, &_ret));
		return _ret;
	}
	deprecated("RequestProductPurchaseAsync(productId, includeReceipt) may be altered or unavailable for releases after Windows 8.1. Instead, use RequestProductPurchaseAsync(productId).")
	static Windows.Foundation.IAsyncOperation!(HSTRING) RequestProductPurchaseAsync(HSTRING productId, bool includeReceipt)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentAppSimulator).abi_RequestProductPurchaseAsync(productId, includeReceipt, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.ListingInformation) LoadListingInformationAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.ListingInformation) _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentAppSimulator).abi_LoadListingInformationAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(HSTRING) GetAppReceiptAsync()
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentAppSimulator).abi_GetAppReceiptAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(HSTRING) GetProductReceiptAsync(HSTRING productId)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentAppSimulator).abi_GetProductReceiptAsync(productId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction ReloadSimulatorAsync(Windows.Storage.StorageFile simulatorSettingsFile)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Store.ICurrentAppSimulator).abi_ReloadSimulatorAsync(simulatorSettingsFile, &_ret));
		return _ret;
	}
}

interface LicenseInformation : Windows.ApplicationModel.Store.ILicenseInformation
{
extern(Windows):
	final Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Store.ProductLicense) ProductLicenses()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Store.ProductLicense) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.ILicenseInformation).get_ProductLicenses(&_ret));
		return _ret;
	}
	final bool IsActive()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.ILicenseInformation).get_IsActive(&_ret));
		return _ret;
	}
	final bool IsTrial()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.ILicenseInformation).get_IsTrial(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime ExpirationDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.ILicenseInformation).get_ExpirationDate(&_ret));
		return _ret;
	}
	final void removeLicenseChanged(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Store.ILicenseInformation).remove_LicenseChanged(cookie));
	}
}

interface ListingInformation : Windows.ApplicationModel.Store.IListingInformation, Windows.ApplicationModel.Store.IListingInformation2
{
extern(Windows):
	final HSTRING CurrentMarket()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IListingInformation).get_CurrentMarket(&_ret));
		return _ret;
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IListingInformation).get_Description(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Store.ProductListing) ProductListings()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Store.ProductListing) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IListingInformation).get_ProductListings(&_ret));
		return _ret;
	}
	final HSTRING FormattedPrice()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IListingInformation).get_FormattedPrice(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IListingInformation).get_Name(&_ret));
		return _ret;
	}
	final UINT32 AgeRating()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IListingInformation).get_AgeRating(&_ret));
		return _ret;
	}
	final HSTRING FormattedBasePrice()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IListingInformation2).get_FormattedBasePrice(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime SaleEndDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IListingInformation2).get_SaleEndDate(&_ret));
		return _ret;
	}
	final bool IsOnSale()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IListingInformation2).get_IsOnSale(&_ret));
		return _ret;
	}
	final HSTRING CurrencyCode()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IListingInformation2).get_CurrencyCode(&_ret));
		return _ret;
	}
}

interface ProductLicense : Windows.ApplicationModel.Store.IProductLicense, Windows.ApplicationModel.Store.IProductLicenseWithFulfillment
{
extern(Windows):
	final HSTRING ProductId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductLicense).get_ProductId(&_ret));
		return _ret;
	}
	final bool IsActive()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductLicense).get_IsActive(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime ExpirationDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductLicense).get_ExpirationDate(&_ret));
		return _ret;
	}
	final bool IsConsumable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductLicenseWithFulfillment).get_IsConsumable(&_ret));
		return _ret;
	}
}

interface ProductListing : Windows.ApplicationModel.Store.IProductListing, Windows.ApplicationModel.Store.IProductListingWithMetadata, Windows.ApplicationModel.Store.IProductListing2
{
extern(Windows):
	final HSTRING ProductId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductListing).get_ProductId(&_ret));
		return _ret;
	}
	final HSTRING FormattedPrice()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductListing).get_FormattedPrice(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductListing).get_Name(&_ret));
		return _ret;
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductListingWithMetadata).get_Description(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IIterable!(HSTRING) Keywords()
	{
		Windows.Foundation.Collections.IIterable!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductListingWithMetadata).get_Keywords(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Store.ProductType ProductType()
	{
		Windows.ApplicationModel.Store.ProductType _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductListingWithMetadata).get_ProductType(&_ret));
		return _ret;
	}
	final HSTRING Tag()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductListingWithMetadata).get_Tag(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri ImageUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductListingWithMetadata).get_ImageUri(&_ret));
		return _ret;
	}
	final HSTRING FormattedBasePrice()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductListing2).get_FormattedBasePrice(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime SaleEndDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductListing2).get_SaleEndDate(&_ret));
		return _ret;
	}
	final bool IsOnSale()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductListing2).get_IsOnSale(&_ret));
		return _ret;
	}
	final HSTRING CurrencyCode()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductListing2).get_CurrencyCode(&_ret));
		return _ret;
	}
}

interface ProductPurchaseDisplayProperties : Windows.ApplicationModel.Store.IProductPurchaseDisplayProperties
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductPurchaseDisplayProperties).get_Name(&_ret));
		return _ret;
	}
	final void Name(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductPurchaseDisplayProperties).set_Name(value));
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductPurchaseDisplayProperties).get_Description(&_ret));
		return _ret;
	}
	final void Description(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductPurchaseDisplayProperties).set_Description(value));
	}
	final Windows.Foundation.Uri Image()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductPurchaseDisplayProperties).get_Image(&_ret));
		return _ret;
	}
	final void Image(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IProductPurchaseDisplayProperties).set_Image(value));
	}
	static Windows.ApplicationModel.Store.ProductPurchaseDisplayProperties New(HSTRING name)
	{
		auto factory = factory!(Windows.ApplicationModel.Store.IProductPurchaseDisplayPropertiesFactory);
		Windows.ApplicationModel.Store.ProductPurchaseDisplayProperties _ret;
		Debug.OK(factory.as!(Windows.ApplicationModel.Store.IProductPurchaseDisplayPropertiesFactory).abi_CreateProductPurchaseDisplayProperties(name, &_ret));
		return _ret;
	}
}

interface PurchaseResults : Windows.ApplicationModel.Store.IPurchaseResults
{
extern(Windows):
	final Windows.ApplicationModel.Store.ProductPurchaseStatus Status()
	{
		Windows.ApplicationModel.Store.ProductPurchaseStatus _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IPurchaseResults).get_Status(&_ret));
		return _ret;
	}
	final GUID TransactionId()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IPurchaseResults).get_TransactionId(&_ret));
		return _ret;
	}
	final HSTRING ReceiptXml()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IPurchaseResults).get_ReceiptXml(&_ret));
		return _ret;
	}
	final HSTRING OfferId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IPurchaseResults).get_OfferId(&_ret));
		return _ret;
	}
}

interface UnfulfilledConsumable : Windows.ApplicationModel.Store.IUnfulfilledConsumable
{
extern(Windows):
	final HSTRING ProductId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IUnfulfilledConsumable).get_ProductId(&_ret));
		return _ret;
	}
	final GUID TransactionId()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IUnfulfilledConsumable).get_TransactionId(&_ret));
		return _ret;
	}
	final HSTRING OfferId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Store.IUnfulfilledConsumable).get_OfferId(&_ret));
		return _ret;
	}
}

enum FulfillmentResult
{
	Succeeded = 0,
	NothingToFulfill = 1,
	PurchasePending = 2,
	PurchaseReverted = 3,
	ServerError = 4
}

enum ProductPurchaseStatus
{
	Succeeded = 0,
	AlreadyPurchased = 1,
	NotFulfilled = 2,
	NotPurchased = 3
}

enum ProductType
{
	Unknown = 0,
	Durable = 1,
	Consumable = 2
}