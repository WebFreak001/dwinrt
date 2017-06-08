module Windows.Storage.AccessCache;

import dwinrt;

@uuid("59677e5c-55be-4c66-ba66-5eaea79d2631")
@WinrtFactory("Windows.Storage.AccessCache.ItemRemovedEventArgs")
interface IItemRemovedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RemovedEntry(Windows.Storage.AccessCache.AccessListEntry* return_value);
}

@uuid("4391dfaa-d033-48f9-8060-3ec847d2e3f1")
@WinrtFactory("Windows.Storage.AccessCache.StorageApplicationPermissions")
interface IStorageApplicationPermissionsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FutureAccessList(Windows.Storage.AccessCache.StorageItemAccessList* return_value);
	HRESULT get_MostRecentlyUsedList(Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList* return_value);
}

@uuid("2caff6ad-de90-47f5-b2c3-dd36c9fdd453")
interface IStorageItemAccessList : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
interface IStorageItemMostRecentlyUsedList : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ItemRemoved(Windows.Foundation.TypedEventHandler!(Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList*,Windows.Storage.AccessCache.ItemRemovedEventArgs*) handler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_ItemRemoved(EventRegistrationToken eventCookie);
}

@uuid("da481ea0-ed8d-4731-a1db-e44ee2204093")
@WinrtFactory("Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList")
interface IStorageItemMostRecentlyUsedList2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddWithMetadataAndVisibility(Windows.Storage.IStorageItem file, HSTRING metadata, Windows.Storage.AccessCache.RecentStorageItemVisibility visibility, HSTRING* return_token);
	HRESULT abi_AddOrReplaceWithMetadataAndVisibility(HSTRING token, Windows.Storage.IStorageItem file, HSTRING metadata, Windows.Storage.AccessCache.RecentStorageItemVisibility visibility);
}

interface AccessListEntryView
{
}

interface ItemRemovedEventArgs
{
}

interface StorageItemAccessList
{
}

interface StorageItemMostRecentlyUsedList
{
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