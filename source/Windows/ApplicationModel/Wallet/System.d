module Windows.ApplicationModel.Wallet.System;

import dwinrt;

@uuid("522e2bff-96a2-4a17-8d19-fe1d9f837561")
@WinrtFactory("Windows.ApplicationModel.Wallet.System.WalletItemSystemStore")
interface IWalletItemSystemStore : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetItemsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Wallet.WalletItem))* return_operation);
	HRESULT abi_DeleteAsync(Windows.ApplicationModel.Wallet.WalletItem item, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_ImportItemAsync(Windows.Storage.Streams.IRandomAccessStreamReference stream, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItem)* return_operation);
	HRESULT abi_GetAppStatusForItem(Windows.ApplicationModel.Wallet.WalletItem item, Windows.ApplicationModel.Wallet.System.WalletItemAppAssociation* return_result);
	HRESULT abi_LaunchAppForItemAsync(Windows.ApplicationModel.Wallet.WalletItem item, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("f98d3a4e-be00-4fdd-9734-6c113c1ac1cb")
@WinrtFactory("Windows.ApplicationModel.Wallet.System.WalletItemSystemStore")
interface IWalletItemSystemStore2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ItemsChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Wallet.System.WalletItemSystemStore*,IInspectable*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_ItemsChanged(EventRegistrationToken cookie);
}

@uuid("bee8eb89-2634-4b9a-8b23-ee8903c91fe0")
@WinrtFactory("Windows.ApplicationModel.Wallet.System.WalletManagerSystem")
interface IWalletManagerSystemStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestStoreAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.System.WalletItemSystemStore)* return_operation);
}

interface WalletItemSystemStore
{
}

enum WalletItemAppAssociation
{
	None = 0,
	AppInstalled = 1,
	AppNotInstalled = 2
}