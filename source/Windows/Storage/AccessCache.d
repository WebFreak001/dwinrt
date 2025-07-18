module Windows.Storage.AccessCache;

import dwinrt;

struct AccessListEntry
{
	HSTRING Token;
	HSTRING Metadata;
}

@uuid("59677e5c-55be-4c66-ba66-5eaea79d2631")
@WinrtFactory("Windows.Storage.AccessCache.ItemRemovedEventArgs")
interface IItemRemovedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_RemovedEntry(Windows.Storage.AccessCache.AccessListEntry* return_value);
}

@uuid("4391dfaa-d033-48f9-8060-3ec847d2e3f1")
@WinrtFactory("Windows.Storage.AccessCache.StorageApplicationPermissions")
interface IStorageApplicationPermissionsStatics : IInspectable
{
extern(Windows):
	HRESULT get_FutureAccessList(Windows.Storage.AccessCache.StorageItemAccessList* return_value);
	HRESULT get_MostRecentlyUsedList(Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList* return_value);
}

@uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453")
interface IStorageItemAccessList : IInspectable
{
extern(Windows):
	HRESULT abi_Add(Windows.Storage.IStorageItem file, HSTRING* return_token);
	HRESULT abi_Add(Windows.Storage.IStorageItem file, HSTRING metadata, HSTRING* return_token);
	HRESULT abi_AddOrReplace(HSTRING token, Windows.Storage.IStorageItem file);
	HRESULT abi_AddOrReplace(HSTRING token, Windows.Storage.IStorageItem file, HSTRING metadata);
	HRESULT abi_GetItemAsync(HSTRING token, Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem)* return_operation);
	HRESULT abi_GetFileAsync(HSTRING token, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_GetFolderAsync(HSTRING token, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
	HRESULT abi_GetItemAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options, Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem)* return_operation);
	HRESULT abi_GetFileAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_GetFolderAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
	HRESULT abi_Remove(HSTRING token);
	HRESULT abi_ContainsItem(HSTRING token, bool* return_value);
	HRESULT abi_Clear();
	HRESULT abi_CheckAccess(Windows.Storage.IStorageItem file, bool* return_value);
	HRESULT get_Entries(Windows.Storage.AccessCache.AccessListEntryView* return_entries);
	HRESULT get_MaximumItemsAllowed(UINT32* return_value);
}

@uuid("016239d5-510d-411e-8cf1-c3d1effa4c33")
@WinrtFactory("Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList")
interface IStorageItemMostRecentlyUsedList_Base : IInspectable
{
extern(Windows):
	HRESULT add_ItemRemoved(Windows.Foundation.TypedEventHandler!(Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList, Windows.Storage.AccessCache.ItemRemovedEventArgs) handler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_ItemRemoved(EventRegistrationToken eventCookie);
}
@uuid("016239d5-510d-411e-8cf1-c3d1effa4c33")
@WinrtFactory("Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList")
interface IStorageItemMostRecentlyUsedList : IStorageItemMostRecentlyUsedList_Base, Windows.Storage.AccessCache.IStorageItemAccessList {}

@uuid("da481ea0-ed8d-4731-a1db-e44ee2204093")
@WinrtFactory("Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList")
interface IStorageItemMostRecentlyUsedList2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_Add(Windows.Storage.IStorageItem file, HSTRING metadata, Windows.Storage.AccessCache.RecentStorageItemVisibility visibility, HSTRING* return_token);
	HRESULT abi_AddOrReplace(HSTRING token, Windows.Storage.IStorageItem file, HSTRING metadata, Windows.Storage.AccessCache.RecentStorageItemVisibility visibility);
}
@uuid("da481ea0-ed8d-4731-a1db-e44ee2204093")
@WinrtFactory("Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList")
interface IStorageItemMostRecentlyUsedList2 : IStorageItemMostRecentlyUsedList2_Base, Windows.Storage.AccessCache.IStorageItemMostRecentlyUsedList, Windows.Storage.AccessCache.IStorageItemAccessList {}

interface AccessListEntryView : Windows.Foundation.Collections.IVectorView!(Windows.Storage.AccessCache.AccessListEntry), Windows.Foundation.Collections.IIterable!(Windows.Storage.AccessCache.AccessListEntry)
{
extern(Windows):
	final void GetAt(uint index, Windows.Storage.AccessCache.AccessListEntry* out_item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Storage.AccessCache.AccessListEntry))this).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Storage.AccessCache.AccessListEntry))this).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Storage.AccessCache.AccessListEntry value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Storage.AccessCache.AccessListEntry))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Storage.AccessCache.AccessListEntry* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Storage.AccessCache.AccessListEntry))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Storage.AccessCache.AccessListEntry)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Storage.AccessCache.AccessListEntry))this).abi_First(out_first));
	}
}

interface ItemRemovedEventArgs : Windows.Storage.AccessCache.IItemRemovedEventArgs
{
extern(Windows):
	final Windows.Storage.AccessCache.AccessListEntry RemovedEntry()
	{
		Windows.Storage.AccessCache.AccessListEntry _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IItemRemovedEventArgs)this.asInterface(uuid("59677e5c-55be-4c66-ba66-5eaea79d2631"))).get_RemovedEntry(&_ret));
		return _ret;
	}
}

interface StorageApplicationPermissions
{
	private static Windows.Storage.AccessCache.IStorageApplicationPermissionsStatics _staticInstance;
	public static Windows.Storage.AccessCache.IStorageApplicationPermissionsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Storage.AccessCache.IStorageApplicationPermissionsStatics);
		return _staticInstance;
	}
	static Windows.Storage.AccessCache.StorageItemAccessList FutureAccessList()
	{
		Windows.Storage.AccessCache.StorageItemAccessList _ret;
		Debug.OK(staticInstance.get_FutureAccessList(&_ret));
		return _ret;
	}
	static Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList MostRecentlyUsedList()
	{
		Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList _ret;
		Debug.OK(staticInstance.get_MostRecentlyUsedList(&_ret));
		return _ret;
	}
}

interface StorageItemAccessList : Windows.Storage.AccessCache.IStorageItemAccessList
{
extern(Windows):
	final HSTRING Add(Windows.Storage.IStorageItem file)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_Add(file, &_ret));
		return _ret;
	}
	final HSTRING Add(Windows.Storage.IStorageItem file, HSTRING metadata)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_Add(file, metadata, &_ret));
		return _ret;
	}
	final void AddOrReplace(HSTRING token, Windows.Storage.IStorageItem file)
	{
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_AddOrReplace(token, file));
	}
	final void AddOrReplace(HSTRING token, Windows.Storage.IStorageItem file, HSTRING metadata)
	{
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_AddOrReplace(token, file, metadata));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) GetItemAsync(HSTRING token)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_GetItemAsync(token, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) GetFileAsync(HSTRING token)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_GetFileAsync(token, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) GetFolderAsync(HSTRING token)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_GetFolderAsync(token, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) GetItemAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_GetItemAsync(token, options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) GetFileAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_GetFileAsync(token, options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) GetFolderAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_GetFolderAsync(token, options, &_ret));
		return _ret;
	}
	final void Remove(HSTRING token)
	{
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_Remove(token));
	}
	final bool ContainsItem(HSTRING token)
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_ContainsItem(token, &_ret));
		return _ret;
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_Clear());
	}
	final bool CheckAccess(Windows.Storage.IStorageItem file)
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_CheckAccess(file, &_ret));
		return _ret;
	}
	final Windows.Storage.AccessCache.AccessListEntryView Entries()
	{
		Windows.Storage.AccessCache.AccessListEntryView _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).get_Entries(&_ret));
		return _ret;
	}
	final UINT32 MaximumItemsAllowed()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).get_MaximumItemsAllowed(&_ret));
		return _ret;
	}
}

interface StorageItemMostRecentlyUsedList : Windows.Storage.AccessCache.IStorageItemMostRecentlyUsedList, Windows.Storage.AccessCache.IStorageItemAccessList, Windows.Storage.AccessCache.IStorageItemMostRecentlyUsedList2
{
extern(Windows):
	final EventRegistrationToken OnItemRemoved(void delegate(Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList, Windows.Storage.AccessCache.ItemRemovedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemMostRecentlyUsedList)this.asInterface(uuid("016239d5-510d-411e-8cf1-c3d1effa4c33"))).add_ItemRemoved(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList, Windows.Storage.AccessCache.ItemRemovedEventArgs), Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList, Windows.Storage.AccessCache.ItemRemovedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeItemRemoved(EventRegistrationToken eventCookie)
	{
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemMostRecentlyUsedList)this.asInterface(uuid("016239d5-510d-411e-8cf1-c3d1effa4c33"))).remove_ItemRemoved(eventCookie));
	}
	final HSTRING Add(Windows.Storage.IStorageItem file)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_Add(file, &_ret));
		return _ret;
	}
	final HSTRING Add(Windows.Storage.IStorageItem file, HSTRING metadata)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_Add(file, metadata, &_ret));
		return _ret;
	}
	final void AddOrReplace(HSTRING token, Windows.Storage.IStorageItem file)
	{
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_AddOrReplace(token, file));
	}
	final void AddOrReplace(HSTRING token, Windows.Storage.IStorageItem file, HSTRING metadata)
	{
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_AddOrReplace(token, file, metadata));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) GetItemAsync(HSTRING token)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_GetItemAsync(token, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) GetFileAsync(HSTRING token)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_GetFileAsync(token, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) GetFolderAsync(HSTRING token)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_GetFolderAsync(token, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) GetItemAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_GetItemAsync(token, options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) GetFileAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_GetFileAsync(token, options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) GetFolderAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_GetFolderAsync(token, options, &_ret));
		return _ret;
	}
	final void Remove(HSTRING token)
	{
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_Remove(token));
	}
	final bool ContainsItem(HSTRING token)
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_ContainsItem(token, &_ret));
		return _ret;
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_Clear());
	}
	final bool CheckAccess(Windows.Storage.IStorageItem file)
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).abi_CheckAccess(file, &_ret));
		return _ret;
	}
	final Windows.Storage.AccessCache.AccessListEntryView Entries()
	{
		Windows.Storage.AccessCache.AccessListEntryView _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).get_Entries(&_ret));
		return _ret;
	}
	final UINT32 MaximumItemsAllowed()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemAccessList)this.asInterface(uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453"))).get_MaximumItemsAllowed(&_ret));
		return _ret;
	}
	final HSTRING Add(Windows.Storage.IStorageItem file, HSTRING metadata, Windows.Storage.AccessCache.RecentStorageItemVisibility visibility)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemMostRecentlyUsedList2)this.asInterface(uuid("da481ea0-ed8d-4731-a1db-e44ee2204093"))).abi_Add(file, metadata, visibility, &_ret));
		return _ret;
	}
	final void AddOrReplace(HSTRING token, Windows.Storage.IStorageItem file, HSTRING metadata, Windows.Storage.AccessCache.RecentStorageItemVisibility visibility)
	{
		Debug.OK((cast(Windows.Storage.AccessCache.IStorageItemMostRecentlyUsedList2)this.asInterface(uuid("da481ea0-ed8d-4731-a1db-e44ee2204093"))).abi_AddOrReplace(token, file, metadata, visibility));
	}
}

@bitflags
enum AccessCacheOptions
{
	None = 0x0,
	DisallowUserInput = 0x1,
	FastLocationsOnly = 0x2,
	UseReadOnlyCachedCopy = 0x4,
	SuppressAccessTimeUpdate = 0x8
}

enum RecentStorageItemVisibility
{
	AppOnly = 0,
	AppAndSystem = 1
}