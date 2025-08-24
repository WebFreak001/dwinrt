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
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletBarcode)this.asInterface(uuid("4f857b29-de80-4ea4-a1cd-81cd084dac27"))).get_Symbology(&_ret));
		return _ret;
	}
	final wstring Value()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletBarcode)this.asInterface(uuid("4f857b29-de80-4ea4-a1cd-81cd084dac27"))).get_Value(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamReference) GetImageAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamReference) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletBarcode)this.asInterface(uuid("4f857b29-de80-4ea4-a1cd-81cd084dac27"))).abi_GetImageAsync(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Wallet.WalletBarcode New(Windows.ApplicationModel.Wallet.WalletBarcodeSymbology symbology, wstring value)
	{
		auto factory = factory!(Windows.ApplicationModel.Wallet.IWalletBarcodeFactory);
		Windows.ApplicationModel.Wallet.WalletBarcode _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletBarcodeFactory)factory.asInterface(uuid("30117161-ed9c-469e-bbfd-306c95ea7108"))).abi_CreateWalletBarcode(symbology, hstring(value).handle, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Wallet.WalletBarcode New(Windows.Storage.Streams.IRandomAccessStreamReference streamToBarcodeImage)
	{
		auto factory = factory!(Windows.ApplicationModel.Wallet.IWalletBarcodeFactory);
		Windows.ApplicationModel.Wallet.WalletBarcode _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletBarcodeFactory)factory.asInterface(uuid("30117161-ed9c-469e-bbfd-306c95ea7108"))).abi_CreateCustomWalletBarcode(streamToBarcodeImage, &_ret));
		return _ret;
	}
}

interface WalletItem : Windows.ApplicationModel.Wallet.IWalletItem
{
extern(Windows):
	final wstring DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_DisplayName(&_ret));
		return hstring(_ret).d_str;
	}
	final void DisplayName(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_DisplayName(hstring(value).handle));
	}
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final bool IsAcknowledged()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_IsAcknowledged(&_ret));
		return _ret;
	}
	final void IsAcknowledged(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_IsAcknowledged(value));
	}
	final wstring IssuerDisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_IssuerDisplayName(&_ret));
		return hstring(_ret).d_str;
	}
	final void IssuerDisplayName(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_IssuerDisplayName(hstring(value).handle));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) LastUpdated()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_LastUpdated(&_ret));
		return _ret;
	}
	final void LastUpdated(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_LastUpdated(value));
	}
	final Windows.ApplicationModel.Wallet.WalletItemKind Kind()
	{
		Windows.ApplicationModel.Wallet.WalletItemKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Wallet.WalletBarcode Barcode()
	{
		Windows.ApplicationModel.Wallet.WalletBarcode _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_Barcode(&_ret));
		return _ret;
	}
	final void Barcode(Windows.ApplicationModel.Wallet.WalletBarcode value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_Barcode(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ExpirationDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_ExpirationDate(&_ret));
		return _ret;
	}
	final void ExpirationDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_ExpirationDate(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Logo159x159()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_Logo159x159(&_ret));
		return _ret;
	}
	final void Logo159x159(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_Logo159x159(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Logo336x336()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_Logo336x336(&_ret));
		return _ret;
	}
	final void Logo336x336(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_Logo336x336(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Logo99x99()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_Logo99x99(&_ret));
		return _ret;
	}
	final void Logo99x99(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_Logo99x99(value));
	}
	final wstring DisplayMessage()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_DisplayMessage(&_ret));
		return hstring(_ret).d_str;
	}
	final void DisplayMessage(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_DisplayMessage(hstring(value).handle));
	}
	final bool IsDisplayMessageLaunchable()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_IsDisplayMessageLaunchable(&_ret));
		return _ret;
	}
	final void IsDisplayMessageLaunchable(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_IsDisplayMessageLaunchable(value));
	}
	final wstring LogoText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_LogoText(&_ret));
		return hstring(_ret).d_str;
	}
	final void LogoText(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_LogoText(hstring(value).handle));
	}
	final Windows.UI.Color HeaderColor()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_HeaderColor(&_ret));
		return _ret;
	}
	final void HeaderColor(Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_HeaderColor(value));
	}
	final Windows.UI.Color BodyColor()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_BodyColor(&_ret));
		return _ret;
	}
	final void BodyColor(Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_BodyColor(value));
	}
	final Windows.UI.Color HeaderFontColor()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_HeaderFontColor(&_ret));
		return _ret;
	}
	final void HeaderFontColor(Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_HeaderFontColor(value));
	}
	final Windows.UI.Color BodyFontColor()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_BodyFontColor(&_ret));
		return _ret;
	}
	final void BodyFontColor(Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_BodyFontColor(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference HeaderBackgroundImage()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_HeaderBackgroundImage(&_ret));
		return _ret;
	}
	final void HeaderBackgroundImage(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_HeaderBackgroundImage(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference BodyBackgroundImage()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_BodyBackgroundImage(&_ret));
		return _ret;
	}
	final void BodyBackgroundImage(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_BodyBackgroundImage(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference LogoImage()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_LogoImage(&_ret));
		return _ret;
	}
	final void LogoImage(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_LogoImage(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference PromotionalImage()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_PromotionalImage(&_ret));
		return _ret;
	}
	final void PromotionalImage(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_PromotionalImage(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) RelevantDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_RelevantDate(&_ret));
		return _ret;
	}
	final void RelevantDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_RelevantDate(value));
	}
	final wstring RelevantDateDisplayMessage()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_RelevantDateDisplayMessage(&_ret));
		return hstring(_ret).d_str;
	}
	final void RelevantDateDisplayMessage(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_RelevantDateDisplayMessage(hstring(value).handle));
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletTransaction) TransactionHistory()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletTransaction) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_TransactionHistory(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletRelevantLocation) RelevantLocations()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletRelevantLocation) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_RelevantLocations(&_ret));
		return _ret;
	}
	final bool IsMoreTransactionHistoryLaunchable()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_IsMoreTransactionHistoryLaunchable(&_ret));
		return _ret;
	}
	final void IsMoreTransactionHistoryLaunchable(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).set_IsMoreTransactionHistoryLaunchable(value));
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletItemCustomProperty) DisplayProperties()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletItemCustomProperty) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_DisplayProperties(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletVerb) Verbs()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, Windows.ApplicationModel.Wallet.WalletVerb) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItem)this.asInterface(uuid("20b54be8-118d-4ec4-996c-b963e7bd3e74"))).get_Verbs(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Wallet.WalletItem New(Windows.ApplicationModel.Wallet.WalletItemKind kind, wstring displayName)
	{
		auto factory = factory!(Windows.ApplicationModel.Wallet.IWalletItemFactory);
		Windows.ApplicationModel.Wallet.WalletItem _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemFactory)factory.asInterface(uuid("53e27470-4f0b-4a3e-99e5-0bbb1eab38d4"))).abi_CreateWalletItem(kind, hstring(displayName).handle, &_ret));
		return _ret;
	}
}

interface WalletItemCustomProperty : Windows.ApplicationModel.Wallet.IWalletItemCustomProperty
{
extern(Windows):
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty)this.asInterface(uuid("b94b40f3-fa00-40fd-98dc-9de46697f1e7"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final void Name(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty)this.asInterface(uuid("b94b40f3-fa00-40fd-98dc-9de46697f1e7"))).set_Name(hstring(value).handle));
	}
	final wstring Value()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty)this.asInterface(uuid("b94b40f3-fa00-40fd-98dc-9de46697f1e7"))).get_Value(&_ret));
		return hstring(_ret).d_str;
	}
	final void Value(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty)this.asInterface(uuid("b94b40f3-fa00-40fd-98dc-9de46697f1e7"))).set_Value(hstring(value).handle));
	}
	final bool AutoDetectLinks()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty)this.asInterface(uuid("b94b40f3-fa00-40fd-98dc-9de46697f1e7"))).get_AutoDetectLinks(&_ret));
		return _ret;
	}
	final void AutoDetectLinks(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty)this.asInterface(uuid("b94b40f3-fa00-40fd-98dc-9de46697f1e7"))).set_AutoDetectLinks(value));
	}
	final Windows.ApplicationModel.Wallet.WalletDetailViewPosition DetailViewPosition()
	{
		Windows.ApplicationModel.Wallet.WalletDetailViewPosition _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty)this.asInterface(uuid("b94b40f3-fa00-40fd-98dc-9de46697f1e7"))).get_DetailViewPosition(&_ret));
		return _ret;
	}
	final void DetailViewPosition(Windows.ApplicationModel.Wallet.WalletDetailViewPosition value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty)this.asInterface(uuid("b94b40f3-fa00-40fd-98dc-9de46697f1e7"))).set_DetailViewPosition(value));
	}
	final Windows.ApplicationModel.Wallet.WalletSummaryViewPosition SummaryViewPosition()
	{
		Windows.ApplicationModel.Wallet.WalletSummaryViewPosition _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty)this.asInterface(uuid("b94b40f3-fa00-40fd-98dc-9de46697f1e7"))).get_SummaryViewPosition(&_ret));
		return _ret;
	}
	final void SummaryViewPosition(Windows.ApplicationModel.Wallet.WalletSummaryViewPosition value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemCustomProperty)this.asInterface(uuid("b94b40f3-fa00-40fd-98dc-9de46697f1e7"))).set_SummaryViewPosition(value));
	}
	static Windows.ApplicationModel.Wallet.WalletItemCustomProperty New(wstring name, wstring value)
	{
		auto factory = factory!(Windows.ApplicationModel.Wallet.IWalletItemCustomPropertyFactory);
		Windows.ApplicationModel.Wallet.WalletItemCustomProperty _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemCustomPropertyFactory)factory.asInterface(uuid("d0046a44-61a1-41aa-b259-a5610ab5d575"))).abi_CreateWalletItemCustomProperty(hstring(name).handle, hstring(value).handle, &_ret));
		return _ret;
	}
}

interface WalletItemStore : Windows.ApplicationModel.Wallet.IWalletItemStore
{
extern(Windows):
	final Windows.Foundation.IAsyncAction AddAsync(wstring id, Windows.ApplicationModel.Wallet.WalletItem item)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemStore)this.asInterface(uuid("7160484b-6d49-48f8-91a9-40a1d0f13ef4"))).abi_AddAsync(hstring(id).handle, item, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ClearAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemStore)this.asInterface(uuid("7160484b-6d49-48f8-91a9-40a1d0f13ef4"))).abi_ClearAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItem) GetWalletItemAsync(wstring id)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItem) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemStore)this.asInterface(uuid("7160484b-6d49-48f8-91a9-40a1d0f13ef4"))).abi_GetWalletItemAsync(hstring(id).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Wallet.WalletItem)) GetItemsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Wallet.WalletItem)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemStore)this.asInterface(uuid("7160484b-6d49-48f8-91a9-40a1d0f13ef4"))).abi_GetItemsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Wallet.WalletItem)) GetItemsWithKindAsync(Windows.ApplicationModel.Wallet.WalletItemKind kind)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Wallet.WalletItem)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemStore)this.asInterface(uuid("7160484b-6d49-48f8-91a9-40a1d0f13ef4"))).abi_GetItemsWithKindAsync(kind, &_ret));
		return _ret;
	}
	alias GetItemsAsync = GetItemsWithKindAsync;
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItem) ImportItemAsync(Windows.Storage.Streams.IRandomAccessStreamReference stream)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItem) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemStore)this.asInterface(uuid("7160484b-6d49-48f8-91a9-40a1d0f13ef4"))).abi_ImportItemAsync(stream, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAsync(wstring id)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemStore)this.asInterface(uuid("7160484b-6d49-48f8-91a9-40a1d0f13ef4"))).abi_DeleteAsync(hstring(id).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ShowAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemStore)this.asInterface(uuid("7160484b-6d49-48f8-91a9-40a1d0f13ef4"))).abi_ShowAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ShowItemAsync(wstring id)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemStore)this.asInterface(uuid("7160484b-6d49-48f8-91a9-40a1d0f13ef4"))).abi_ShowItemAsync(hstring(id).handle, &_ret));
		return _ret;
	}
	alias ShowAsync = ShowItemAsync;
	final Windows.Foundation.IAsyncAction UpdateAsync(Windows.ApplicationModel.Wallet.WalletItem item)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletItemStore)this.asInterface(uuid("7160484b-6d49-48f8-91a9-40a1d0f13ef4"))).abi_UpdateAsync(item, &_ret));
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
		Debug.OK(staticInstance.abi_RequestStoreAsync(&_ret));
		return _ret;
	}
}

interface WalletRelevantLocation : Windows.ApplicationModel.Wallet.IWalletRelevantLocation
{
extern(Windows):
	final Windows.Devices.Geolocation.BasicGeoposition Position()
	{
		Windows.Devices.Geolocation.BasicGeoposition _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletRelevantLocation)this.asInterface(uuid("9fd8782a-e3f9-4de1-bab3-bb192e46b3f3"))).get_Position(&_ret));
		return _ret;
	}
	final void Position(Windows.Devices.Geolocation.BasicGeoposition value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletRelevantLocation)this.asInterface(uuid("9fd8782a-e3f9-4de1-bab3-bb192e46b3f3"))).set_Position(value));
	}
	final wstring DisplayMessage()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletRelevantLocation)this.asInterface(uuid("9fd8782a-e3f9-4de1-bab3-bb192e46b3f3"))).get_DisplayMessage(&_ret));
		return hstring(_ret).d_str;
	}
	final void DisplayMessage(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletRelevantLocation)this.asInterface(uuid("9fd8782a-e3f9-4de1-bab3-bb192e46b3f3"))).set_DisplayMessage(hstring(value).handle));
	}
	static WalletRelevantLocation New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(WalletRelevantLocation).abi_ActivateInstance(&ret));
		return cast(WalletRelevantLocation) ret;
	}
}

interface WalletTransaction : Windows.ApplicationModel.Wallet.IWalletTransaction
{
extern(Windows):
	final wstring Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletTransaction)this.asInterface(uuid("40e1e940-2606-4519-81cb-bff1c60d1f79"))).get_Description(&_ret));
		return hstring(_ret).d_str;
	}
	final void Description(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletTransaction)this.asInterface(uuid("40e1e940-2606-4519-81cb-bff1c60d1f79"))).set_Description(hstring(value).handle));
	}
	final wstring DisplayAmount()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletTransaction)this.asInterface(uuid("40e1e940-2606-4519-81cb-bff1c60d1f79"))).get_DisplayAmount(&_ret));
		return hstring(_ret).d_str;
	}
	final void DisplayAmount(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletTransaction)this.asInterface(uuid("40e1e940-2606-4519-81cb-bff1c60d1f79"))).set_DisplayAmount(hstring(value).handle));
	}
	final bool IgnoreTimeOfDay()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletTransaction)this.asInterface(uuid("40e1e940-2606-4519-81cb-bff1c60d1f79"))).get_IgnoreTimeOfDay(&_ret));
		return _ret;
	}
	final void IgnoreTimeOfDay(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletTransaction)this.asInterface(uuid("40e1e940-2606-4519-81cb-bff1c60d1f79"))).set_IgnoreTimeOfDay(value));
	}
	final wstring DisplayLocation()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletTransaction)this.asInterface(uuid("40e1e940-2606-4519-81cb-bff1c60d1f79"))).get_DisplayLocation(&_ret));
		return hstring(_ret).d_str;
	}
	final void DisplayLocation(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletTransaction)this.asInterface(uuid("40e1e940-2606-4519-81cb-bff1c60d1f79"))).set_DisplayLocation(hstring(value).handle));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) TransactionDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletTransaction)this.asInterface(uuid("40e1e940-2606-4519-81cb-bff1c60d1f79"))).get_TransactionDate(&_ret));
		return _ret;
	}
	final void TransactionDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletTransaction)this.asInterface(uuid("40e1e940-2606-4519-81cb-bff1c60d1f79"))).set_TransactionDate(value));
	}
	final bool IsLaunchable()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletTransaction)this.asInterface(uuid("40e1e940-2606-4519-81cb-bff1c60d1f79"))).get_IsLaunchable(&_ret));
		return _ret;
	}
	final void IsLaunchable(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletTransaction)this.asInterface(uuid("40e1e940-2606-4519-81cb-bff1c60d1f79"))).set_IsLaunchable(value));
	}
	static WalletTransaction New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(WalletTransaction).abi_ActivateInstance(&ret));
		return cast(WalletTransaction) ret;
	}
}

interface WalletVerb : Windows.ApplicationModel.Wallet.IWalletVerb
{
extern(Windows):
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletVerb)this.asInterface(uuid("17b826d6-e3c1-4c74-8a94-217aadbc4884"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final void Name(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletVerb)this.asInterface(uuid("17b826d6-e3c1-4c74-8a94-217aadbc4884"))).set_Name(hstring(value).handle));
	}
	static Windows.ApplicationModel.Wallet.WalletVerb New(wstring name)
	{
		auto factory = factory!(Windows.ApplicationModel.Wallet.IWalletVerbFactory);
		Windows.ApplicationModel.Wallet.WalletVerb _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.IWalletVerbFactory)factory.asInterface(uuid("76012771-be58-4d5e-83ed-58b1669c7ad9"))).abi_CreateWalletVerb(hstring(name).handle, &_ret));
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