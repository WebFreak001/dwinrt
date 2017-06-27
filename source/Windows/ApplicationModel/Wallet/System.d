module Windows.ApplicationModel.Wallet.System;

import dwinrt;

@uuid("522e2bff-96a2-4a17-8d19-fe1d9f837561")
@WinrtFactory("Windows.ApplicationModel.Wallet.System.WalletItemSystemStore")
interface IWalletItemSystemStore : IInspectable
{
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
extern(Windows):
	HRESULT add_ItemsChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Wallet.System.WalletItemSystemStore, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_ItemsChanged(EventRegistrationToken cookie);
}

@uuid("bee8eb89-2634-4b9a-8b23-ee8903c91fe0")
@WinrtFactory("Windows.ApplicationModel.Wallet.System.WalletManagerSystem")
interface IWalletManagerSystemStatics : IInspectable
{
extern(Windows):
	HRESULT abi_RequestStoreAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.System.WalletItemSystemStore)* return_operation);
}

interface WalletItemSystemStore : Windows.ApplicationModel.Wallet.System.IWalletItemSystemStore, Windows.ApplicationModel.Wallet.System.IWalletItemSystemStore2
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Wallet.WalletItem)) GetItemsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Wallet.WalletItem)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.System.IWalletItemSystemStore)this.asInterface(uuid("522e2bff-96a2-4a17-8d19-fe1d9f837561"))).abi_GetItemsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAsync(Windows.ApplicationModel.Wallet.WalletItem item)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.System.IWalletItemSystemStore)this.asInterface(uuid("522e2bff-96a2-4a17-8d19-fe1d9f837561"))).abi_DeleteAsync(item, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItem) ImportItemAsync(Windows.Storage.Streams.IRandomAccessStreamReference stream)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.WalletItem) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.System.IWalletItemSystemStore)this.asInterface(uuid("522e2bff-96a2-4a17-8d19-fe1d9f837561"))).abi_ImportItemAsync(stream, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Wallet.System.WalletItemAppAssociation GetAppStatusForItem(Windows.ApplicationModel.Wallet.WalletItem item)
	{
		Windows.ApplicationModel.Wallet.System.WalletItemAppAssociation _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.System.IWalletItemSystemStore)this.asInterface(uuid("522e2bff-96a2-4a17-8d19-fe1d9f837561"))).abi_GetAppStatusForItem(item, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) LaunchAppForItemAsync(Windows.ApplicationModel.Wallet.WalletItem item)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.System.IWalletItemSystemStore)this.asInterface(uuid("522e2bff-96a2-4a17-8d19-fe1d9f837561"))).abi_LaunchAppForItemAsync(item, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnItemsChanged(void delegate(Windows.ApplicationModel.Wallet.System.WalletItemSystemStore, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Wallet.System.IWalletItemSystemStore2)this.asInterface(uuid("f98d3a4e-be00-4fdd-9734-6c113c1ac1cb"))).add_ItemsChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Wallet.System.WalletItemSystemStore, IInspectable), Windows.ApplicationModel.Wallet.System.WalletItemSystemStore, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeItemsChanged(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.ApplicationModel.Wallet.System.IWalletItemSystemStore2)this.asInterface(uuid("f98d3a4e-be00-4fdd-9734-6c113c1ac1cb"))).remove_ItemsChanged(cookie));
	}
}

interface WalletManagerSystem
{
	private static Windows.ApplicationModel.Wallet.System.IWalletManagerSystemStatics _staticInstance;
	public static Windows.ApplicationModel.Wallet.System.IWalletManagerSystemStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Wallet.System.IWalletManagerSystemStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.System.WalletItemSystemStore) RequestStoreAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Wallet.System.WalletItemSystemStore) _ret;
		Debug.OK(staticInstance.abi_RequestStoreAsync(&_ret));
		return _ret;
	}
}

enum WalletItemAppAssociation
{
	None = 0,
	AppInstalled = 1,
	AppNotInstalled = 2
}