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
	HRESULT abi_AddOverloadDefaultMetadata(Windows.Storage.IStorageItem file, HSTRING* return_token);
	HRESULT abi_Add(Windows.Storage.IStorageItem file, HSTRING metadata, HSTRING* return_token);
	HRESULT abi_AddOrReplaceOverloadDefaultMetadata(HSTRING token, Windows.Storage.IStorageItem file);
	HRESULT abi_AddOrReplace(HSTRING token, Windows.Storage.IStorageItem file, HSTRING metadata);
	HRESULT abi_GetItemAsync(HSTRING token, Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem)* return_operation);
	HRESULT abi_GetFileAsync(HSTRING token, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_GetFolderAsync(HSTRING token, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
	HRESULT abi_GetItemWithOptionsAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options, Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem)* return_operation);
	HRESULT abi_GetFileWithOptionsAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_GetFolderWithOptionsAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
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
interface IStorageItemMostRecentlyUsedList : IStorageItemMostRecentlyUsedList_Base, Windows.Storage.AccessCache.IStorageItemAccessList {}

@uuid("da481ea0-ed8d-4731-a1db-e44ee2204093")
@WinrtFactory("Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList")
interface IStorageItemMostRecentlyUsedList2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_AddWithMetadataAndVisibility(Windows.Storage.IStorageItem file, HSTRING metadata, Windows.Storage.AccessCache.RecentStorageItemVisibility visibility, HSTRING* return_token);
	HRESULT abi_AddOrReplaceWithMetadataAndVisibility(HSTRING token, Windows.Storage.IStorageItem file, HSTRING metadata, Windows.Storage.AccessCache.RecentStorageItemVisibility visibility);
}
interface IStorageItemMostRecentlyUsedList2 : IStorageItemMostRecentlyUsedList2_Base, Windows.Storage.AccessCache.IStorageItemMostRecentlyUsedList, Windows.Storage.AccessCache.IStorageItemAccessList {}

interface AccessListEntryView : Windows.Foundation.Collections.IVectorView!(Windows.Storage.AccessCache.AccessListEntry), Windows.Foundation.Collections.IIterable!(Windows.Storage.AccessCache.AccessListEntry)
{
extern(Windows):
	final void GetAt(uint index, Windows.Storage.AccessCache.AccessListEntry* out_item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.AccessCache.AccessListEntry)).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.AccessCache.AccessListEntry)).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Storage.AccessCache.AccessListEntry value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.AccessCache.AccessListEntry)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Storage.AccessCache.AccessListEntry* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.AccessCache.AccessListEntry)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Storage.AccessCache.AccessListEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Storage.AccessCache.AccessListEntry)).abi_First(out_first));
	}
}

interface ItemRemovedEventArgs : Windows.Storage.AccessCache.IItemRemovedEventArgs
{
extern(Windows):
	final Windows.Storage.AccessCache.AccessListEntry RemovedEntry()
	{
		Windows.Storage.AccessCache.AccessListEntry _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IItemRemovedEventArgs).get_RemovedEntry(&_ret));
		return _ret;
	}
}

interface StorageApplicationPermissions
{
}

interface StorageItemAccessList : Windows.Storage.AccessCache.IStorageItemAccessList
{
extern(Windows):
	final HSTRING AddOverloadDefaultMetadata(Windows.Storage.IStorageItem file)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_AddOverloadDefaultMetadata(file, &_ret));
		return _ret;
	}
	final HSTRING Add(Windows.Storage.IStorageItem file, HSTRING metadata)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_Add(file, metadata, &_ret));
		return _ret;
	}
	final void AddOrReplaceOverloadDefaultMetadata(HSTRING token, Windows.Storage.IStorageItem file)
	{
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_AddOrReplaceOverloadDefaultMetadata(token, file));
	}
	final void AddOrReplace(HSTRING token, Windows.Storage.IStorageItem file, HSTRING metadata)
	{
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_AddOrReplace(token, file, metadata));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) GetItemAsync(HSTRING token)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_GetItemAsync(token, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) GetFileAsync(HSTRING token)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_GetFileAsync(token, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) GetFolderAsync(HSTRING token)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_GetFolderAsync(token, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) GetItemWithOptionsAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_GetItemWithOptionsAsync(token, options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) GetFileWithOptionsAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_GetFileWithOptionsAsync(token, options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) GetFolderWithOptionsAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_GetFolderWithOptionsAsync(token, options, &_ret));
		return _ret;
	}
	final void Remove(HSTRING token)
	{
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_Remove(token));
	}
	final bool ContainsItem(HSTRING token)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_ContainsItem(token, &_ret));
		return _ret;
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_Clear());
	}
	final bool CheckAccess(Windows.Storage.IStorageItem file)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_CheckAccess(file, &_ret));
		return _ret;
	}
	final Windows.Storage.AccessCache.AccessListEntryView Entries()
	{
		Windows.Storage.AccessCache.AccessListEntryView _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).get_Entries(&_ret));
		return _ret;
	}
	final UINT32 MaximumItemsAllowed()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).get_MaximumItemsAllowed(&_ret));
		return _ret;
	}
}

interface StorageItemMostRecentlyUsedList : Windows.Storage.AccessCache.IStorageItemMostRecentlyUsedList, Windows.Storage.AccessCache.IStorageItemAccessList, Windows.Storage.AccessCache.IStorageItemMostRecentlyUsedList2
{
extern(Windows):
	final EventRegistrationToken OnItemRemoved(void delegate(Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList, Windows.Storage.AccessCache.ItemRemovedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ItemRemoved(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList, Windows.Storage.AccessCache.ItemRemovedEventArgs), Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList, Windows.Storage.AccessCache.ItemRemovedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeItemRemoved(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_ItemRemoved(eventCookie));
	}
	final HSTRING AddOverloadDefaultMetadata(Windows.Storage.IStorageItem file)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_AddOverloadDefaultMetadata(file, &_ret));
		return _ret;
	}
	final HSTRING Add(Windows.Storage.IStorageItem file, HSTRING metadata)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_Add(file, metadata, &_ret));
		return _ret;
	}
	final void AddOrReplaceOverloadDefaultMetadata(HSTRING token, Windows.Storage.IStorageItem file)
	{
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_AddOrReplaceOverloadDefaultMetadata(token, file));
	}
	final void AddOrReplace(HSTRING token, Windows.Storage.IStorageItem file, HSTRING metadata)
	{
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_AddOrReplace(token, file, metadata));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) GetItemAsync(HSTRING token)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_GetItemAsync(token, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) GetFileAsync(HSTRING token)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_GetFileAsync(token, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) GetFolderAsync(HSTRING token)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_GetFolderAsync(token, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) GetItemWithOptionsAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_GetItemWithOptionsAsync(token, options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) GetFileWithOptionsAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_GetFileWithOptionsAsync(token, options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) GetFolderWithOptionsAsync(HSTRING token, Windows.Storage.AccessCache.AccessCacheOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_GetFolderWithOptionsAsync(token, options, &_ret));
		return _ret;
	}
	final void Remove(HSTRING token)
	{
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_Remove(token));
	}
	final bool ContainsItem(HSTRING token)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_ContainsItem(token, &_ret));
		return _ret;
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_Clear());
	}
	final bool CheckAccess(Windows.Storage.IStorageItem file)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).abi_CheckAccess(file, &_ret));
		return _ret;
	}
	final Windows.Storage.AccessCache.AccessListEntryView Entries()
	{
		Windows.Storage.AccessCache.AccessListEntryView _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).get_Entries(&_ret));
		return _ret;
	}
	final UINT32 MaximumItemsAllowed()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemAccessList).get_MaximumItemsAllowed(&_ret));
		return _ret;
	}
	final HSTRING AddWithMetadataAndVisibility(Windows.Storage.IStorageItem file, HSTRING metadata, Windows.Storage.AccessCache.RecentStorageItemVisibility visibility)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemMostRecentlyUsedList2).abi_AddWithMetadataAndVisibility(file, metadata, visibility, &_ret));
		return _ret;
	}
	final void AddOrReplaceWithMetadataAndVisibility(HSTRING token, Windows.Storage.IStorageItem file, HSTRING metadata, Windows.Storage.AccessCache.RecentStorageItemVisibility visibility)
	{
		Debug.OK(this.as!(Windows.Storage.AccessCache.IStorageItemMostRecentlyUsedList2).abi_AddOrReplaceWithMetadataAndVisibility(token, file, metadata, visibility));
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