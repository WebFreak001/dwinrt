module Windows.ApplicationModel.Wallet;

import dwinrt;

@uuid("4f857b29-de80-4ea4-a1cd-81cd084dac27")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletBarcode")
interface IWalletBarcode : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Symbology(Windows.ApplicationModel.Wallet.WalletBarcodeSymbology* return_value);
	HRESULT get_Value(HSTRING* return_value);
	HRESULT abi_GetImageAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamReference)* return_operation);
}

@uuid("30117161-ed9c-469e-bbfd-306c95ea7108")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletBarcode")
interface IWalletBarcodeFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWalletBarcode(Windows.ApplicationModel.Wallet.WalletBarcodeSymbology symbology, HSTRING value, Windows.ApplicationModel.Wallet.WalletBarcode* return_barcode);
	HRESULT abi_CreateCustomWalletBarcode(Windows.Storage.Streams.IRandomAccessStreamReference streamToBarcodeImage, Windows.ApplicationModel.Wallet.WalletBarcode* return_barcode);
}

@uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletItem")
interface IWalletItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT set_DisplayName(HSTRING value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_IsAcknowledged(bool* return_value);
	HRESULT set_IsAcknowledged(bool value);
	HRESULT get_IssuerDisplayName(HSTRING* return_value);
	HRESULT set_IssuerDisplayName(HSTRING value);
	HRESULT get_LastUpdated(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_LastUpdated(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_Kind(Windows.ApplicationModel.Wallet.WalletItemKind* return_value);
	HRESULT get_Barcode(Windows.ApplicationModel.Wallet.WalletBarcode* return_value);
	HRESULT set_Barcode(Windows.ApplicationModel.Wallet.WalletBarcode value);
	HRESULT get_ExpirationDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_ExpirationDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_Logo159x159(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_Logo159x159(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_Logo336x336(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_Logo336x336(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_Logo99x99(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_Logo99x99(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_DisplayMessage(HSTRING* return_value);
	HRESULT set_DisplayMessage(HSTRING value);
	HRESULT get_IsDisplayMessageLaunchable(bool* return_value);
	HRESULT set_IsDisplayMessageLaunchable(bool value);
	HRESULT get_LogoText(HSTRING* return_value);
	HRESULT set_LogoText(HSTRING value);
	HRESULT get_HeaderColor(Windows.UI.Color* return_value);
	HRESULT set_HeaderColor(Windows.UI.Color value);
	HRESULT get_BodyColor(Windows.UI.Color* return_value);
	HRESULT set_BodyColor(Windows.UI.Color value);
	HRESULT get_HeaderFontColor(Windows.UI.Color* return_value);
	HRESULT set_HeaderFontColor(Windows.UI.Color value);
	HRESULT get_BodyFontColor(Windows.UI.Color* return_value);
	HRESULT set_BodyFontColor(Windows.UI.Color value);
	HRESULT get_HeaderBackgroundImage(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_HeaderBackgroundImage(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_BodyBackgroundImage(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_BodyBackgroundImage(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_LogoImage(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_LogoImage(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_PromotionalImage(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_PromotionalImage(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_RelevantDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_RelevantDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_RelevantDateDisplayMessage(HSTRING* return_value);
	HRESULT set_RelevantDateDisplayMessage(HSTRING value);
	HRESULT get_TransactionHistory(Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletTransaction)* return_value);
	HRESULT get_RelevantLocations(Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletRelevantLocation)* return_value);
	HRESULT get_IsMoreTransactionHistoryLaunchable(bool* return_value);
	HRESULT set_IsMoreTransactionHistoryLaunchable(bool value);
	HRESULT get_DisplayProperties(Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletItemCustomProperty)* return_value);
	HRESULT get_Verbs(Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletVerb)* return_value);
}

@uuid("b94b40f3-fa00-40fd-98dc-9de46697f1e7")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletItemCustomProperty")
interface IWalletItemCustomProperty : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_Value(HSTRING* return_value);
	HRESULT set_Value(HSTRING value);
	HRESULT get_AutoDetectLinks(bool* return_value);
	HRESULT set_AutoDetectLinks(bool value);
	HRESULT get_DetailViewPosition(Windows.ApplicationModel.Wallet.WalletDetailViewPosition* return_value);
	HRESULT set_DetailViewPosition(Windows.ApplicationModel.Wallet.WalletDetailViewPosition value);
	HRESULT get_SummaryViewPosition(Windows.ApplicationModel.Wallet.WalletSummaryViewPosition* return_value);
	HRESULT set_SummaryViewPosition(Windows.ApplicationModel.Wallet.WalletSummaryViewPosition value);
}

@uuid("d0046a44-61a1-41aa-b259-a5610ab5d575")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletItemCustomProperty")
interface IWalletItemCustomPropertyFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWalletItemCustomProperty(HSTRING name, HSTRING value, Windows.ApplicationModel.Wallet.WalletItemCustomProperty* return_walletItemCustomProperty);
}

@uuid("53e27470-4f0b-4a3e-99e5-0bbb1eab38d4")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletItem")
interface IWalletItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWalletItem(Windows.ApplicationModel.Wallet.WalletItemKind kind, HSTRING displayName, Windows.ApplicationModel.Wallet.WalletItem* return_walletItem);
}

@uuid("7160484b-6d49-48f8-91a9-40a1d0f13ef4")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletItemStore")
interface IWalletItemStore : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddAsync(HSTRING id, Windows.ApplicationModel.Wallet.WalletItem item, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_ClearAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_GetWalletItemAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItem)* return_operation);
	HRESULT abi_GetItemsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Wallet.WalletItem))* return_operation);
	HRESULT abi_GetItemsWithKindAsync(Windows.ApplicationModel.Wallet.WalletItemKind kind, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Wallet.WalletItem))* return_operation);
	HRESULT abi_ImportItemAsync(Windows.Storage.Streams.IRandomAccessStreamReference stream, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItem)* return_operation);
	HRESULT abi_DeleteAsync(HSTRING id, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_ShowAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_ShowItemAsync(HSTRING id, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_UpdateAsync(Windows.ApplicationModel.Wallet.WalletItem item, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("65e682f0-7009-4a15-bd54-4fff379bffe2")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletItemStore")
interface IWalletItemStore2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ItemsChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Wallet.WalletItemStore, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_ItemsChanged(EventRegistrationToken cookie);
}

@uuid("5111d6b8-c9a4-4c64-b4dd-e1e548001c0d")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletManager")
interface IWalletManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestStoreAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItemStore)* return_operation);
}

@uuid("9fd8782a-e3f9-4de1-bab3-bb192e46b3f3")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletRelevantLocation")
interface IWalletRelevantLocation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Position(Windows.Devices.Geolocation.BasicGeoposition* return_value);
	HRESULT set_Position(Windows.Devices.Geolocation.BasicGeoposition value);
	HRESULT get_DisplayMessage(HSTRING* return_value);
	HRESULT set_DisplayMessage(HSTRING value);
}

@uuid("40e1e940-2606-4519-81cb-bff1c60d1f79")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletTransaction")
interface IWalletTransaction : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
	HRESULT get_DisplayAmount(HSTRING* return_value);
	HRESULT set_DisplayAmount(HSTRING value);
	HRESULT get_IgnoreTimeOfDay(bool* return_value);
	HRESULT set_IgnoreTimeOfDay(bool value);
	HRESULT get_DisplayLocation(HSTRING* return_value);
	HRESULT set_DisplayLocation(HSTRING value);
	HRESULT get_TransactionDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_TransactionDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_IsLaunchable(bool* return_value);
	HRESULT set_IsLaunchable(bool value);
}

@uuid("17b826d6-e3c1-4c74-8a94-217aadbc4884")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletVerb")
interface IWalletVerb : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
}

@uuid("76012771-be58-4d5e-83ed-58b1669c7ad9")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletVerb")
interface IWalletVerbFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWalletVerb(HSTRING name, Windows.ApplicationModel.Wallet.WalletVerb* return_WalletVerb);
}

interface WalletBarcode
{
}

interface WalletItem
{
}

interface WalletItemCustomProperty
{
}

interface WalletItemStore
{
}

interface WalletRelevantLocation
{
}

interface WalletTransaction
{
}

interface WalletVerb
{
}

enum WalletActionKind
{
	OpenItem = 0,
	Transaction = 1,
	MoreTransactions = 2,
	Message = 3,
	Verb = 4
}

enum WalletBarcodeSymbology
{
	Invalid = 0,
	Upca = 1,
	Upce = 2,
	Ean13 = 3,
	Ean8 = 4,
	Itf = 5,
	Code39 = 6,
	Code128 = 7,
	Qr = 8,
	Pdf417 = 9,
	Aztec = 10,
	Custom = 100000
}

enum WalletDetailViewPosition
{
	Hidden = 0,
	HeaderField1 = 1,
	HeaderField2 = 2,
	PrimaryField1 = 3,
	PrimaryField2 = 4,
	SecondaryField1 = 5,
	SecondaryField2 = 6,
	SecondaryField3 = 7,
	SecondaryField4 = 8,
	SecondaryField5 = 9,
	CenterField1 = 10,
	FooterField1 = 11,
	FooterField2 = 12,
	FooterField3 = 13,
	FooterField4 = 14
}

enum WalletItemKind
{
	Invalid = 0,
	Deal = 1,
	General = 2,
	PaymentInstrument = 3,
	Ticket = 4,
	BoardingPass = 5,
	MembershipCard = 6
}

enum WalletSummaryViewPosition
{
	Hidden = 0,
	Field1 = 1,
	Field2 = 2
}