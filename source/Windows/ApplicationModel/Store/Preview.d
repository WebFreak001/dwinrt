module Windows.ApplicationModel.Store.Preview;

import dwinrt;

@uuid("728f7fc0-8628-42ec-84a2-07780eb44d8b")
@WinrtFactory("Windows.ApplicationModel.Store.Preview.StoreConfiguration")
interface IStoreConfigurationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetSystemConfiguration(HSTRING catalogHardwareManufacturerId, HSTRING catalogStoreContentModifierId, Windows.Foundation.DateTime systemConfigurationExpiration, HSTRING catalogHardwareDescriptor);
	HRESULT abi_SetMobileOperatorConfiguration(HSTRING mobileOperatorId, UINT32 appDownloadLimitInMegabytes, UINT32 updateDownloadLimitInMegabytes);
	HRESULT abi_SetStoreWebAccountId(HSTRING webAccountId);
	HRESULT abi_IsStoreWebAccountId(HSTRING webAccountId, bool* return_value);
	HRESULT get_HardwareManufacturerInfo(Windows.ApplicationModel.Store.Preview.StoreHardwareManufacturerInfo* return_value);
	HRESULT abi_FilterUnsupportedSystemFeaturesAsync(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Store.Preview.StoreSystemFeature) systemFeatures, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Store.Preview.StoreSystemFeature))* return_operation);
}

@uuid("657c4595-c8b7-4fe9-9f4c-4d71027d347e")
@WinrtFactory("Windows.ApplicationModel.Store.Preview.StoreConfiguration")
interface IStoreConfigurationStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PurchasePromptingPolicy(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_PurchasePromptingPolicy(Windows.Foundation.IReference!(UINT32) value);
}

@uuid("6d45f57c-f144-4cb5-9d3f-4eb05e30b6d3")
@WinrtFactory("Windows.ApplicationModel.Store.Preview.StoreConfiguration")
interface IStoreConfigurationStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_HasStoreWebAccount(bool* return_value);
	HRESULT abi_HasStoreWebAccountForUser(Windows.System.User user, bool* return_value);
	HRESULT abi_GetStoreLogDataAsync(Windows.ApplicationModel.Store.Preview.StoreLogOptions options, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamReference)* return_operation);
	HRESULT abi_SetStoreWebAccountIdForUser(Windows.System.User user, HSTRING webAccountId);
	HRESULT abi_IsStoreWebAccountIdForUser(Windows.System.User user, HSTRING webAccountId, bool* return_value);
	HRESULT abi_GetPurchasePromptingPolicyForUser(Windows.System.User user, Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT abi_SetPurchasePromptingPolicyForUser(Windows.System.User user, Windows.Foundation.IReference!(UINT32) value);
}

@uuid("20ff56d2-4ee3-4cf0-9b12-552c03310f75")
@WinrtFactory("Windows.ApplicationModel.Store.Preview.StoreConfiguration")
interface IStoreConfigurationStatics4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetStoreWebAccountId(HSTRING* return_result);
	HRESULT abi_GetStoreWebAccountIdForUser(Windows.System.User user, HSTRING* return_result);
	HRESULT abi_SetEnterpriseStoreWebAccountId(HSTRING webAccountId);
	HRESULT abi_SetEnterpriseStoreWebAccountIdForUser(Windows.System.User user, HSTRING webAccountId);
	HRESULT abi_GetEnterpriseStoreWebAccountId(HSTRING* return_result);
	HRESULT abi_GetEnterpriseStoreWebAccountIdForUser(Windows.System.User user, HSTRING* return_result);
	HRESULT abi_ShouldRestrictToEnterpriseStoreOnly(bool* return_result);
	HRESULT abi_ShouldRestrictToEnterpriseStoreOnlyForUser(Windows.System.User user, bool* return_result);
}

@uuid("f292dc08-c654-43ac-a21f-34801c9d3388")
@WinrtFactory("Windows.ApplicationModel.Store.Preview.StoreHardwareManufacturerInfo")
interface IStoreHardwareManufacturerInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HardwareManufacturerId(HSTRING* return_value);
	HRESULT get_StoreContentModifierId(HSTRING* return_value);
	HRESULT get_ModelName(HSTRING* return_value);
	HRESULT get_ManufacturerName(HSTRING* return_value);
}

@uuid("8a157241-840e-49a9-bc01-5d5b01fbc8e9")
@WinrtFactory("Windows.ApplicationModel.Store.Preview.StorePreview")
interface IStorePreview : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestProductPurchaseByProductIdAndSkuIdAsync(HSTRING productId, HSTRING skuId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.Preview.StorePreviewPurchaseResults)* return_requestPurchaseBySkuIdOperation);
	HRESULT abi_LoadAddOnProductInfosAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Store.Preview.StorePreviewProductInfo))* return_loadAddOnProductInfosOperation);
}

@uuid("1937dbb3-6c01-4c9d-85cd-5babaac2b351")
@WinrtFactory("Windows.ApplicationModel.Store.Preview.StorePreviewProductInfo")
interface IStorePreviewProductInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ProductId(HSTRING* return_value);
	HRESULT get_ProductType(HSTRING* return_value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_SkuInfoList(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Store.Preview.StorePreviewSkuInfo)* return_value);
}

@uuid("b0daaed1-d6c5-4e53-a043-fba0d8e61231")
@WinrtFactory("Windows.ApplicationModel.Store.Preview.StorePreviewPurchaseResults")
interface IStorePreviewPurchaseResults : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ProductPurchaseStatus(Windows.ApplicationModel.Store.Preview.StorePreviewProductPurchaseStatus* return_value);
}

@uuid("81fd76e2-0b26-48d9-98ce-27461c669d6c")
@WinrtFactory("Windows.ApplicationModel.Store.Preview.StorePreviewSkuInfo")
interface IStorePreviewSkuInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ProductId(HSTRING* return_value);
	HRESULT get_SkuId(HSTRING* return_value);
	HRESULT get_SkuType(HSTRING* return_value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_CustomDeveloperData(HSTRING* return_value);
	HRESULT get_CurrencyCode(HSTRING* return_value);
	HRESULT get_FormattedListPrice(HSTRING* return_value);
	HRESULT get_ExtendedData(HSTRING* return_value);
}

@uuid("06a50525-e715-4123-9276-9d6f865ba55f")
@WinrtFactory("Windows.ApplicationModel.Store.Preview.WebAuthenticationCoreManagerHelper")
interface IWebAuthenticationCoreManagerHelper : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestTokenWithUIElementHostingAsync(Windows.Security.Authentication.Web.Core.WebTokenRequest request, Windows.UI.Xaml.UIElement uiElement, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Web.Core.WebTokenRequestResult)* return_asyncInfo);
	HRESULT abi_RequestTokenWithUIElementHostingAndWebAccountAsync(Windows.Security.Authentication.Web.Core.WebTokenRequest request, Windows.Security.Credentials.WebAccount webAccount, Windows.UI.Xaml.UIElement uiElement, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Web.Core.WebTokenRequestResult)* return_asyncInfo);
}

interface StoreConfiguration
{
}

interface StoreHardwareManufacturerInfo : Windows.ApplicationModel.Store.Preview.IStoreHardwareManufacturerInfo
{
}

interface StorePreview
{
}

interface StorePreviewProductInfo : Windows.ApplicationModel.Store.Preview.IStorePreviewProductInfo
{
}

interface StorePreviewPurchaseResults : Windows.ApplicationModel.Store.Preview.IStorePreviewPurchaseResults
{
}

interface StorePreviewSkuInfo : Windows.ApplicationModel.Store.Preview.IStorePreviewSkuInfo
{
}

interface WebAuthenticationCoreManagerHelper
{
}

@bitflags
enum StoreLogOptions
{
	None = 0x0,
	TryElevate = 0x1
}

enum StorePreviewProductPurchaseStatus
{
	Succeeded = 0,
	AlreadyPurchased = 1,
	NotFulfilled = 2,
	NotPurchased = 3
}

enum StoreSystemFeature
{
	ArchitectureX86 = 0,
	ArchitectureX64 = 1,
	ArchitectureArm = 2,
	DirectX9 = 3,
	DirectX10 = 4,
	DirectX11 = 5,
	D3D12HardwareFL11 = 6,
	D3D12HardwareFL12 = 7,
	Memory300MB = 8,
	Memory750MB = 9,
	Memory1GB = 10,
	Memory2GB = 11,
	CameraFront = 12,
	CameraRear = 13,
	Gyroscope = 14,
	Hover = 15,
	Magnetometer = 16,
	Nfc = 17,
	Resolution720P = 18,
	ResolutionWvga = 19,
	ResolutionWvgaOr720P = 20,
	ResolutionWxga = 21,
	ResolutionWvgaOrWxga = 22,
	ResolutionWxgaOr720P = 23,
	Memory4GB = 24,
	Memory6GB = 25,
	Memory8GB = 26,
	Memory12GB = 27,
	Memory16GB = 28,
	Memory20GB = 29,
	VideoMemory2GB = 30,
	VideoMemory4GB = 31,
	VideoMemory6GB = 32,
	VideoMemory1GB = 33
}