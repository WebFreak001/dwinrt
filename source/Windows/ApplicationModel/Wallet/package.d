module Windows.ApplicationModel.Wallet;

import dwinrt;

@uuid("4f857b29-de80-4ea4-a1cd-81cd084dac27")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletBarcode")
interface IWalletBarcode : IInspectable
{
extern(Windows):
	HRESULT get_Symbology(Windows.ApplicationModel.Wallet.WalletBarcodeSymbology* return_value);
	HRESULT get_Value(HSTRING* return_value);
	HRESULT abi_GetImageAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamReference)* return_operation);
}

@uuid("30117161-ed9c-469e-bbfd-306c95ea7108")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletBarcode")
interface IWalletBarcodeFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWalletBarcode(Windows.ApplicationModel.Wallet.WalletBarcodeSymbology symbology, HSTRING value, Windows.ApplicationModel.Wallet.WalletBarcode* return_barcode);
	HRESULT abi_CreateCustomWalletBarcode(Windows.Storage.Streams.IRandomAccessStreamReference streamToBarcodeImage, Windows.ApplicationModel.Wallet.WalletBarcode* return_barcode);
}

@uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletItem")
interface IWalletItem : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateWalletItemCustomProperty(HSTRING name, HSTRING value, Windows.ApplicationModel.Wallet.WalletItemCustomProperty* return_walletItemCustomProperty);
}

@uuid("53e27470-4f0b-4a3e-99e5-0bbb1eab38d4")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletItem")
interface IWalletItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWalletItem(Windows.ApplicationModel.Wallet.WalletItemKind kind, HSTRING displayName, Windows.ApplicationModel.Wallet.WalletItem* return_walletItem);
}

@uuid("7160484b-6d49-48f8-91a9-40a1d0f13ef4")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletItemStore")
interface IWalletItemStore : IInspectable
{
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
extern(Windows):
	HRESULT add_ItemsChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Wallet.WalletItemStore, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_ItemsChanged(EventRegistrationToken cookie);
}

@uuid("5111d6b8-c9a4-4c64-b4dd-e1e548001c0d")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletManager")
interface IWalletManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_RequestStoreAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItemStore)* return_operation);
}

@uuid("9fd8782a-e3f9-4de1-bab3-bb192e46b3f3")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletRelevantLocation")
interface IWalletRelevantLocation : IInspectable
{
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
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
}

@uuid("76012771-be58-4d5e-83ed-58b1669c7ad9")
@WinrtFactory("Windows.ApplicationModel.Wallet.WalletVerb")
interface IWalletVerbFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWalletVerb(HSTRING name, Windows.ApplicationModel.Wallet.WalletVerb* return_WalletVerb);
}

interface WalletBarcode : Windows.ApplicationModel.Wallet.IWalletBarcode
{
extern(Windows):
	final Windows.ApplicationModel.Wallet.WalletBarcodeSymbology Symbology()
	{
		Windows.ApplicationModel.Wallet.WalletBarcodeSymbology _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletBarcode).get_Symbology(&_ret));
		return _ret;
	}
	final HSTRING Value()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletBarcode).get_Value(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamReference) GetImageAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamReference) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletBarcode).abi_GetImageAsync(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Wallet.WalletBarcode New(Windows.ApplicationModel.Wallet.WalletBarcodeSymbology symbology, HSTRING value)
	{
		auto factory = factory!(Windows.ApplicationModel.Wallet.IWalletBarcodeFactory);
		Windows.ApplicationModel.Wallet.WalletBarcode _ret;
		Debug.OK(factory.as!(Windows.ApplicationModel.Wallet.IWalletBarcodeFactory).abi_CreateWalletBarcode(symbology, value, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Wallet.WalletBarcode New(Windows.Storage.Streams.IRandomAccessStreamReference streamToBarcodeImage)
	{
		auto factory = factory!(Windows.ApplicationModel.Wallet.IWalletBarcodeFactory);
		Windows.ApplicationModel.Wallet.WalletBarcode _ret;
		Debug.OK(factory.as!(Windows.ApplicationModel.Wallet.IWalletBarcodeFactory).abi_CreateCustomWalletBarcode(streamToBarcodeImage, &_ret));
		return _ret;
	}
}

interface WalletItem : Windows.ApplicationModel.Wallet.IWalletItem
{
extern(Windows):
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_DisplayName(&_ret));
		return _ret;
	}
	final void DisplayName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_DisplayName(value));
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_Id(&_ret));
		return _ret;
	}
	final bool IsAcknowledged()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_IsAcknowledged(&_ret));
		return _ret;
	}
	final void IsAcknowledged(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_IsAcknowledged(value));
	}
	final HSTRING IssuerDisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_IssuerDisplayName(&_ret));
		return _ret;
	}
	final void IssuerDisplayName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_IssuerDisplayName(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) LastUpdated()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_LastUpdated(&_ret));
		return _ret;
	}
	final void LastUpdated(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_LastUpdated(value));
	}
	final Windows.ApplicationModel.Wallet.WalletItemKind Kind()
	{
		Windows.ApplicationModel.Wallet.WalletItemKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Wallet.WalletBarcode Barcode()
	{
		Windows.ApplicationModel.Wallet.WalletBarcode _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_Barcode(&_ret));
		return _ret;
	}
	final void Barcode(Windows.ApplicationModel.Wallet.WalletBarcode value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_Barcode(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ExpirationDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_ExpirationDate(&_ret));
		return _ret;
	}
	final void ExpirationDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_ExpirationDate(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Logo159x159()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_Logo159x159(&_ret));
		return _ret;
	}
	final void Logo159x159(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_Logo159x159(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Logo336x336()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_Logo336x336(&_ret));
		return _ret;
	}
	final void Logo336x336(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_Logo336x336(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Logo99x99()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_Logo99x99(&_ret));
		return _ret;
	}
	final void Logo99x99(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_Logo99x99(value));
	}
	final HSTRING DisplayMessage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_DisplayMessage(&_ret));
		return _ret;
	}
	final void DisplayMessage(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_DisplayMessage(value));
	}
	final bool IsDisplayMessageLaunchable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_IsDisplayMessageLaunchable(&_ret));
		return _ret;
	}
	final void IsDisplayMessageLaunchable(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_IsDisplayMessageLaunchable(value));
	}
	final HSTRING LogoText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_LogoText(&_ret));
		return _ret;
	}
	final void LogoText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_LogoText(value));
	}
	final Windows.UI.Color HeaderColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_HeaderColor(&_ret));
		return _ret;
	}
	final void HeaderColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_HeaderColor(value));
	}
	final Windows.UI.Color BodyColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_BodyColor(&_ret));
		return _ret;
	}
	final void BodyColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_BodyColor(value));
	}
	final Windows.UI.Color HeaderFontColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_HeaderFontColor(&_ret));
		return _ret;
	}
	final void HeaderFontColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_HeaderFontColor(value));
	}
	final Windows.UI.Color BodyFontColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_BodyFontColor(&_ret));
		return _ret;
	}
	final void BodyFontColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_BodyFontColor(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference HeaderBackgroundImage()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_HeaderBackgroundImage(&_ret));
		return _ret;
	}
	final void HeaderBackgroundImage(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_HeaderBackgroundImage(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference BodyBackgroundImage()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_BodyBackgroundImage(&_ret));
		return _ret;
	}
	final void BodyBackgroundImage(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_BodyBackgroundImage(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference LogoImage()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_LogoImage(&_ret));
		return _ret;
	}
	final void LogoImage(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_LogoImage(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference PromotionalImage()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_PromotionalImage(&_ret));
		return _ret;
	}
	final void PromotionalImage(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_PromotionalImage(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) RelevantDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_RelevantDate(&_ret));
		return _ret;
	}
	final void RelevantDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_RelevantDate(value));
	}
	final HSTRING RelevantDateDisplayMessage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_RelevantDateDisplayMessage(&_ret));
		return _ret;
	}
	final void RelevantDateDisplayMessage(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_RelevantDateDisplayMessage(value));
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletTransaction) TransactionHistory()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletTransaction) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_TransactionHistory(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletRelevantLocation) RelevantLocations()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletRelevantLocation) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_RelevantLocations(&_ret));
		return _ret;
	}
	final bool IsMoreTransactionHistoryLaunchable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_IsMoreTransactionHistoryLaunchable(&_ret));
		return _ret;
	}
	final void IsMoreTransactionHistoryLaunchable(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).set_IsMoreTransactionHistoryLaunchable(value));
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletItemCustomProperty) DisplayProperties()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletItemCustomProperty) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_DisplayProperties(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletVerb) Verbs()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletVerb) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItem).get_Verbs(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Wallet.WalletItem New(Windows.ApplicationModel.Wallet.WalletItemKind kind, HSTRING displayName)
	{
		auto factory = factory!(Windows.ApplicationModel.Wallet.IWalletItemFactory);
		Windows.ApplicationModel.Wallet.WalletItem _ret;
		Debug.OK(factory.as!(Windows.ApplicationModel.Wallet.IWalletItemFactory).abi_CreateWalletItem(kind, displayName, &_ret));
		return _ret;
	}
}

interface WalletItemCustomProperty : Windows.ApplicationModel.Wallet.IWalletItemCustomProperty
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty).get_Name(&_ret));
		return _ret;
	}
	final void Name(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty).set_Name(value));
	}
	final HSTRING Value()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty).get_Value(&_ret));
		return _ret;
	}
	final void Value(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty).set_Value(value));
	}
	final bool AutoDetectLinks()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty).get_AutoDetectLinks(&_ret));
		return _ret;
	}
	final void AutoDetectLinks(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty).set_AutoDetectLinks(value));
	}
	final Windows.ApplicationModel.Wallet.WalletDetailViewPosition DetailViewPosition()
	{
		Windows.ApplicationModel.Wallet.WalletDetailViewPosition _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty).get_DetailViewPosition(&_ret));
		return _ret;
	}
	final void DetailViewPosition(Windows.ApplicationModel.Wallet.WalletDetailViewPosition value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty).set_DetailViewPosition(value));
	}
	final Windows.ApplicationModel.Wallet.WalletSummaryViewPosition SummaryViewPosition()
	{
		Windows.ApplicationModel.Wallet.WalletSummaryViewPosition _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty).get_SummaryViewPosition(&_ret));
		return _ret;
	}
	final void SummaryViewPosition(Windows.ApplicationModel.Wallet.WalletSummaryViewPosition value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty).set_SummaryViewPosition(value));
	}
	static Windows.ApplicationModel.Wallet.WalletItemCustomProperty New(HSTRING name, HSTRING value)
	{
		auto factory = factory!(Windows.ApplicationModel.Wallet.IWalletItemCustomPropertyFactory);
		Windows.ApplicationModel.Wallet.WalletItemCustomProperty _ret;
		Debug.OK(factory.as!(Windows.ApplicationModel.Wallet.IWalletItemCustomPropertyFactory).abi_CreateWalletItemCustomProperty(name, value, &_ret));
		return _ret;
	}
}

interface WalletItemStore : Windows.ApplicationModel.Wallet.IWalletItemStore
{
extern(Windows):
	final Windows.Foundation.IAsyncAction AddAsync(HSTRING id, Windows.ApplicationModel.Wallet.WalletItem item)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemStore).abi_AddAsync(id, item, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ClearAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemStore).abi_ClearAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItem) GetWalletItemAsync(HSTRING id)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItem) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemStore).abi_GetWalletItemAsync(id, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Wallet.WalletItem)) GetItemsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Wallet.WalletItem)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemStore).abi_GetItemsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Wallet.WalletItem)) GetItemsWithKindAsync(Windows.ApplicationModel.Wallet.WalletItemKind kind)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Wallet.WalletItem)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemStore).abi_GetItemsWithKindAsync(kind, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItem) ImportItemAsync(Windows.Storage.Streams.IRandomAccessStreamReference stream)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItem) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemStore).abi_ImportItemAsync(stream, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAsync(HSTRING id)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemStore).abi_DeleteAsync(id, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ShowAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemStore).abi_ShowAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ShowItemAsync(HSTRING id)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemStore).abi_ShowItemAsync(id, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction UpdateAsync(Windows.ApplicationModel.Wallet.WalletItem item)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletItemStore).abi_UpdateAsync(item, &_ret));
		return _ret;
	}
}

interface WalletManager
{
	private static Windows.ApplicationModel.Wallet.IWalletManagerStatics _staticInstance;
	public static Windows.ApplicationModel.Wallet.IWalletManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Wallet.IWalletManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItemStore) RequestStoreAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItemStore) _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Wallet.IWalletManagerStatics).abi_RequestStoreAsync(&_ret));
		return _ret;
	}
}

interface WalletRelevantLocation : Windows.ApplicationModel.Wallet.IWalletRelevantLocation
{
extern(Windows):
	final Windows.Devices.Geolocation.BasicGeoposition Position()
	{
		Windows.Devices.Geolocation.BasicGeoposition _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletRelevantLocation).get_Position(&_ret));
		return _ret;
	}
	final void Position(Windows.Devices.Geolocation.BasicGeoposition value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletRelevantLocation).set_Position(value));
	}
	final HSTRING DisplayMessage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletRelevantLocation).get_DisplayMessage(&_ret));
		return _ret;
	}
	final void DisplayMessage(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletRelevantLocation).set_DisplayMessage(value));
	}
}

interface WalletTransaction : Windows.ApplicationModel.Wallet.IWalletTransaction
{
extern(Windows):
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletTransaction).get_Description(&_ret));
		return _ret;
	}
	final void Description(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletTransaction).set_Description(value));
	}
	final HSTRING DisplayAmount()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletTransaction).get_DisplayAmount(&_ret));
		return _ret;
	}
	final void DisplayAmount(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletTransaction).set_DisplayAmount(value));
	}
	final bool IgnoreTimeOfDay()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletTransaction).get_IgnoreTimeOfDay(&_ret));
		return _ret;
	}
	final void IgnoreTimeOfDay(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletTransaction).set_IgnoreTimeOfDay(value));
	}
	final HSTRING DisplayLocation()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletTransaction).get_DisplayLocation(&_ret));
		return _ret;
	}
	final void DisplayLocation(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletTransaction).set_DisplayLocation(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) TransactionDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletTransaction).get_TransactionDate(&_ret));
		return _ret;
	}
	final void TransactionDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletTransaction).set_TransactionDate(value));
	}
	final bool IsLaunchable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletTransaction).get_IsLaunchable(&_ret));
		return _ret;
	}
	final void IsLaunchable(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletTransaction).set_IsLaunchable(value));
	}
}

interface WalletVerb : Windows.ApplicationModel.Wallet.IWalletVerb
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletVerb).get_Name(&_ret));
		return _ret;
	}
	final void Name(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Wallet.IWalletVerb).set_Name(value));
	}
	static Windows.ApplicationModel.Wallet.WalletVerb New(HSTRING name)
	{
		auto factory = factory!(Windows.ApplicationModel.Wallet.IWalletVerbFactory);
		Windows.ApplicationModel.Wallet.WalletVerb _ret;
		Debug.OK(factory.as!(Windows.ApplicationModel.Wallet.IWalletVerbFactory).abi_CreateWalletVerb(name, &_ret));
		return _ret;
	}
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