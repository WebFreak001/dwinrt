module Windows.Storage.Search;

import dwinrt;

struct SortEntry
{
	HSTRING PropertyName;
	bool AscendingOrder;
}

@uuid("b1767f8d-f698-4982-b05f-3a6e8cab01a2")
@WinrtFactory("Windows.Storage.Search.ContentIndexer")
interface IContentIndexer : IInspectable
{
extern(Windows):
	HRESULT abi_AddAsync(Windows.Storage.Search.IIndexableContent indexableContent, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_UpdateAsync(Windows.Storage.Search.IIndexableContent indexableContent, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_DeleteAsync(HSTRING contentId, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_DeleteMultipleAsync(Windows.Foundation.Collections.IIterable!(HSTRING) contentIds, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_DeleteAllAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_RetrievePropertiesAsync(HSTRING contentId, Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable))* return_operation);
	HRESULT get_Revision(ulong* return_value);
}

@uuid("70e3b0f8-4bfc-428a-8889-cc51da9a7b9d")
@WinrtFactory("Windows.Storage.Search.ContentIndexerQuery")
interface IContentIndexerQuery : IInspectable
{
extern(Windows):
	HRESULT abi_GetCountAsync(Windows.Foundation.IAsyncOperation!(UINT32)* return_operation);
	HRESULT abi_GetPropertiesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)))* return_operation);
	HRESULT abi_GetPropertiesRangeAsync(UINT32 startIndex, UINT32 maxItems, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)))* return_operation);
	HRESULT abi_GetAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.Search.IIndexableContent))* return_operation);
	HRESULT abi_GetRangeAsync(UINT32 startIndex, UINT32 maxItems, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.Search.IIndexableContent))* return_operation);
	HRESULT get_QueryFolder(Windows.Storage.StorageFolder* return_value);
}

@uuid("28823e10-4786-42f1-9730-792b3566b150")
@WinrtFactory("Windows.Storage.Search.ContentIndexer")
interface IContentIndexerQueryOperations : IInspectable
{
extern(Windows):
	HRESULT abi_CreateQueryWithSortOrderAndLanguage(HSTRING searchFilter, Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve, Windows.Foundation.Collections.IIterable!(Windows.Storage.Search.SortEntry) sortOrder, HSTRING searchFilterLanguage, Windows.Storage.Search.ContentIndexerQuery* return_query);
	HRESULT abi_CreateQueryWithSortOrder(HSTRING searchFilter, Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve, Windows.Foundation.Collections.IIterable!(Windows.Storage.Search.SortEntry) sortOrder, Windows.Storage.Search.ContentIndexerQuery* return_query);
	HRESULT abi_CreateQuery(HSTRING searchFilter, Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve, Windows.Storage.Search.ContentIndexerQuery* return_query);
}

@uuid("8c488375-b37e-4c60-9ba8-b760fda3e59d")
@WinrtFactory("Windows.Storage.Search.ContentIndexer")
interface IContentIndexerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetIndexerWithName(HSTRING indexName, Windows.Storage.Search.ContentIndexer* return_index);
	HRESULT abi_GetIndexer(Windows.Storage.Search.ContentIndexer* return_index);
}

@uuid("ccf1a05f-d4b5-483a-b06e-e0db1ec420e4")
interface IIndexableContent : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT set_Id(HSTRING value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)* return_value);
	HRESULT get_Stream(Windows.Storage.Streams.IRandomAccessStream* return_value);
	HRESULT set_Stream(Windows.Storage.Streams.IRandomAccessStream value);
	HRESULT get_StreamContentType(HSTRING* return_value);
	HRESULT set_StreamContentType(HSTRING value);
}

@uuid("1e5e46ee-0f45-4838-a8e9-d0479d446c30")
@WinrtFactory("Windows.Storage.Search.QueryOptions")
interface IQueryOptions : IInspectable
{
extern(Windows):
	HRESULT get_FileTypeFilter(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_FolderDepth(Windows.Storage.Search.FolderDepth* return_value);
	HRESULT set_FolderDepth(Windows.Storage.Search.FolderDepth value);
	HRESULT get_ApplicationSearchFilter(HSTRING* return_value);
	HRESULT set_ApplicationSearchFilter(HSTRING value);
	HRESULT get_UserSearchFilter(HSTRING* return_value);
	HRESULT set_UserSearchFilter(HSTRING value);
	HRESULT get_Language(HSTRING* return_value);
	HRESULT set_Language(HSTRING value);
	HRESULT get_IndexerOption(Windows.Storage.Search.IndexerOption* return_value);
	HRESULT set_IndexerOption(Windows.Storage.Search.IndexerOption value);
	HRESULT get_SortOrder(Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry)* return_value);
	HRESULT get_GroupPropertyName(HSTRING* return_value);
	HRESULT get_DateStackOption(Windows.Storage.Search.DateStackOption* return_value);
	HRESULT abi_SaveToString(HSTRING* return_value);
	HRESULT abi_LoadFromString(HSTRING value);
	HRESULT abi_SetThumbnailPrefetch(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize, Windows.Storage.FileProperties.ThumbnailOptions options);
	HRESULT abi_SetPropertyPrefetch(Windows.Storage.FileProperties.PropertyPrefetchOptions options, Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve);
}

@uuid("032e1f8c-a9c1-4e71-8011-0dee9d4811a3")
@WinrtFactory("Windows.Storage.Search.QueryOptions")
interface IQueryOptionsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateCommonFileQuery(Windows.Storage.Search.CommonFileQuery query, Windows.Foundation.Collections.IIterable!(HSTRING) fileTypeFilter, Windows.Storage.Search.QueryOptions* return_queryOptions);
	HRESULT abi_CreateCommonFolderQuery(Windows.Storage.Search.CommonFolderQuery query, Windows.Storage.Search.QueryOptions* return_queryOptions);
}

@uuid("5b9d1026-15c4-44dd-b89a-47a59b7d7c4f")
@WinrtFactory("Windows.Storage.Search.QueryOptions")
interface IQueryOptionsWithProviderFilter : IInspectable
{
extern(Windows):
	HRESULT get_StorageProviderIdFilter(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("52fda447-2baa-412c-b29f-d4b1778efa1e")
@WinrtFactory("Windows.Storage.Search.StorageFileQueryResult")
interface IStorageFileQueryResult_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetFilesAsync(UINT32 startIndex, UINT32 maxNumberOfItems, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile))* return_operation);
	HRESULT abi_GetFilesAsyncDefaultStartAndCount(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile))* return_operation);
}
@uuid("52fda447-2baa-412c-b29f-d4b1778efa1e")
@WinrtFactory("Windows.Storage.Search.StorageFileQueryResult")
interface IStorageFileQueryResult : IStorageFileQueryResult_Base, Windows.Storage.Search.IStorageQueryResultBase {}

@uuid("4e5db9dd-7141-46c4-8be3-e9dc9e27275c")
@WinrtFactory("Windows.Storage.Search.StorageFileQueryResult")
interface IStorageFileQueryResult2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetMatchingPropertiesWithRanges(Windows.Storage.StorageFile file, Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextSegment))* return_result);
}
@uuid("4e5db9dd-7141-46c4-8be3-e9dc9e27275c")
@WinrtFactory("Windows.Storage.Search.StorageFileQueryResult")
interface IStorageFileQueryResult2 : IStorageFileQueryResult2_Base, Windows.Storage.Search.IStorageQueryResultBase {}

@uuid("cb43ccc9-446b-4a4f-be97-757771be5203")
interface IStorageFolderQueryOperations : IInspectable
{
extern(Windows):
	HRESULT abi_GetIndexedStateAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Search.IndexedState)* return_operation);
	HRESULT abi_CreateFileQueryOverloadDefault(Windows.Storage.Search.StorageFileQueryResult* return_value);
	HRESULT abi_CreateFileQuery(Windows.Storage.Search.CommonFileQuery query, Windows.Storage.Search.StorageFileQueryResult* return_value);
	HRESULT abi_CreateFileQueryWithOptions(Windows.Storage.Search.QueryOptions queryOptions, Windows.Storage.Search.StorageFileQueryResult* return_value);
	HRESULT abi_CreateFolderQueryOverloadDefault(Windows.Storage.Search.StorageFolderQueryResult* return_value);
	HRESULT abi_CreateFolderQuery(Windows.Storage.Search.CommonFolderQuery query, Windows.Storage.Search.StorageFolderQueryResult* return_value);
	HRESULT abi_CreateFolderQueryWithOptions(Windows.Storage.Search.QueryOptions queryOptions, Windows.Storage.Search.StorageFolderQueryResult* return_value);
	HRESULT abi_CreateItemQuery(Windows.Storage.Search.StorageItemQueryResult* return_value);
	HRESULT abi_CreateItemQueryWithOptions(Windows.Storage.Search.QueryOptions queryOptions, Windows.Storage.Search.StorageItemQueryResult* return_value);
	HRESULT abi_GetFilesAsync(Windows.Storage.Search.CommonFileQuery query, UINT32 startIndex, UINT32 maxItemsToRetrieve, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile))* return_operation);
	HRESULT abi_GetFilesAsyncOverloadDefaultStartAndCount(Windows.Storage.Search.CommonFileQuery query, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile))* return_operation);
	HRESULT abi_GetFoldersAsync(Windows.Storage.Search.CommonFolderQuery query, UINT32 startIndex, UINT32 maxItemsToRetrieve, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder))* return_operation);
	HRESULT abi_GetFoldersAsyncOverloadDefaultStartAndCount(Windows.Storage.Search.CommonFolderQuery query, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder))* return_operation);
	HRESULT abi_GetItemsAsync(UINT32 startIndex, UINT32 maxItemsToRetrieve, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem))* return_operation);
	HRESULT abi_AreQueryOptionsSupported(Windows.Storage.Search.QueryOptions queryOptions, bool* return_value);
	HRESULT abi_IsCommonFolderQuerySupported(Windows.Storage.Search.CommonFolderQuery query, bool* return_value);
	HRESULT abi_IsCommonFileQuerySupported(Windows.Storage.Search.CommonFileQuery query, bool* return_value);
}

@uuid("6654c911-7d66-46fa-aecf-e4a4baa93ab8")
@WinrtFactory("Windows.Storage.Search.StorageFolderQueryResult")
interface IStorageFolderQueryResult_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetFoldersAsync(UINT32 startIndex, UINT32 maxNumberOfItems, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder))* return_operation);
	HRESULT abi_GetFoldersAsyncDefaultStartAndCount(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder))* return_operation);
}
@uuid("6654c911-7d66-46fa-aecf-e4a4baa93ab8")
@WinrtFactory("Windows.Storage.Search.StorageFolderQueryResult")
interface IStorageFolderQueryResult : IStorageFolderQueryResult_Base, Windows.Storage.Search.IStorageQueryResultBase {}

@uuid("e8948079-9d58-47b8-b2b2-41b07f4795f9")
@WinrtFactory("Windows.Storage.Search.StorageItemQueryResult")
interface IStorageItemQueryResult_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetItemsAsync(UINT32 startIndex, UINT32 maxNumberOfItems, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem))* return_operation);
	HRESULT abi_GetItemsAsyncDefaultStartAndCount(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem))* return_operation);
}
@uuid("e8948079-9d58-47b8-b2b2-41b07f4795f9")
@WinrtFactory("Windows.Storage.Search.StorageItemQueryResult")
interface IStorageItemQueryResult : IStorageItemQueryResult_Base, Windows.Storage.Search.IStorageQueryResultBase {}

@uuid("2a371977-abbf-4e1d-8aa5-6385d8884799")
@WinrtFactory("Windows.Storage.Search.StorageLibraryContentChangedTriggerDetails")
interface IStorageLibraryContentChangedTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_Folder(Windows.Storage.StorageFolder* return_value);
	HRESULT abi_CreateModifiedSinceQuery(Windows.Foundation.DateTime lastQueryTime, Windows.Storage.Search.StorageItemQueryResult* return_result);
}

@uuid("c297d70d-7353-47ab-ba58-8c61425dc54b")
interface IStorageQueryResultBase : IInspectable
{
extern(Windows):
	HRESULT abi_GetItemCountAsync(Windows.Foundation.IAsyncOperation!(UINT32)* return_operation);
	HRESULT get_Folder(Windows.Storage.StorageFolder* return_container);
	HRESULT add_ContentsChanged(Windows.Foundation.TypedEventHandler!(Windows.Storage.Search.IStorageQueryResultBase, IInspectable) handler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_ContentsChanged(EventRegistrationToken eventCookie);
	HRESULT add_OptionsChanged(Windows.Foundation.TypedEventHandler!(Windows.Storage.Search.IStorageQueryResultBase, IInspectable) changedHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_OptionsChanged(EventRegistrationToken eventCookie);
	HRESULT abi_FindStartIndexAsync(IInspectable value, Windows.Foundation.IAsyncOperation!(UINT32)* return_operation);
	HRESULT abi_GetCurrentQueryOptions(Windows.Storage.Search.QueryOptions* return_value);
	HRESULT abi_ApplyNewQueryOptions(Windows.Storage.Search.QueryOptions newQueryOptions);
}

@uuid("b9914881-a1ee-4bc4-92a5-466968e30436")
@WinrtFactory("Windows.Storage.Search.ValueAndLanguage")
interface IValueAndLanguage : IInspectable
{
extern(Windows):
	HRESULT get_Language(HSTRING* return_value);
	HRESULT set_Language(HSTRING value);
	HRESULT get_Value(IInspectable* return_value);
	HRESULT set_Value(IInspectable value);
}

interface ContentIndexer : Windows.Storage.Search.IContentIndexer, Windows.Storage.Search.IContentIndexerQueryOperations
{
extern(Windows):
	final Windows.Foundation.IAsyncAction AddAsync(Windows.Storage.Search.IIndexableContent indexableContent)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IContentIndexer).abi_AddAsync(indexableContent, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction UpdateAsync(Windows.Storage.Search.IIndexableContent indexableContent)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IContentIndexer).abi_UpdateAsync(indexableContent, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAsync(HSTRING contentId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IContentIndexer).abi_DeleteAsync(contentId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteMultipleAsync(Windows.Foundation.Collections.IIterable!(HSTRING) contentIds)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IContentIndexer).abi_DeleteMultipleAsync(contentIds, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAllAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IContentIndexer).abi_DeleteAllAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)) RetrievePropertiesAsync(HSTRING contentId, Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IContentIndexer).abi_RetrievePropertiesAsync(contentId, propertiesToRetrieve, &_ret));
		return _ret;
	}
	final ulong Revision()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IContentIndexer).get_Revision(&_ret));
		return _ret;
	}
	final Windows.Storage.Search.ContentIndexerQuery CreateQueryWithSortOrderAndLanguage(HSTRING searchFilter, Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve, Windows.Foundation.Collections.IIterable!(Windows.Storage.Search.SortEntry) sortOrder, HSTRING searchFilterLanguage)
	{
		Windows.Storage.Search.ContentIndexerQuery _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IContentIndexerQueryOperations).abi_CreateQueryWithSortOrderAndLanguage(searchFilter, propertiesToRetrieve, sortOrder, searchFilterLanguage, &_ret));
		return _ret;
	}
	final Windows.Storage.Search.ContentIndexerQuery CreateQueryWithSortOrder(HSTRING searchFilter, Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve, Windows.Foundation.Collections.IIterable!(Windows.Storage.Search.SortEntry) sortOrder)
	{
		Windows.Storage.Search.ContentIndexerQuery _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IContentIndexerQueryOperations).abi_CreateQueryWithSortOrder(searchFilter, propertiesToRetrieve, sortOrder, &_ret));
		return _ret;
	}
	final Windows.Storage.Search.ContentIndexerQuery CreateQuery(HSTRING searchFilter, Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve)
	{
		Windows.Storage.Search.ContentIndexerQuery _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IContentIndexerQueryOperations).abi_CreateQuery(searchFilter, propertiesToRetrieve, &_ret));
		return _ret;
	}

	private static Windows.Storage.Search.IContentIndexerStatics _staticInstance;
	public static Windows.Storage.Search.IContentIndexerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Storage.Search.IContentIndexerStatics);
		return _staticInstance;
	}
	static Windows.Storage.Search.ContentIndexer GetIndexerWithName(HSTRING indexName)
	{
		Windows.Storage.Search.ContentIndexer _ret;
		Debug.OK(staticInstance.as!(Windows.Storage.Search.IContentIndexerStatics).abi_GetIndexerWithName(indexName, &_ret));
		return _ret;
	}
	static Windows.Storage.Search.ContentIndexer GetIndexer()
	{
		Windows.Storage.Search.ContentIndexer _ret;
		Debug.OK(staticInstance.as!(Windows.Storage.Search.IContentIndexerStatics).abi_GetIndexer(&_ret));
		return _ret;
	}
}

interface ContentIndexerQuery : Windows.Storage.Search.IContentIndexerQuery
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(UINT32) GetCountAsync()
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IContentIndexerQuery).abi_GetCountAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable))) GetPropertiesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable))) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IContentIndexerQuery).abi_GetPropertiesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable))) GetPropertiesRangeAsync(UINT32 startIndex, UINT32 maxItems)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable))) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IContentIndexerQuery).abi_GetPropertiesRangeAsync(startIndex, maxItems, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.Search.IIndexableContent)) GetAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.Search.IIndexableContent)) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IContentIndexerQuery).abi_GetAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.Search.IIndexableContent)) GetRangeAsync(UINT32 startIndex, UINT32 maxItems)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.Search.IIndexableContent)) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IContentIndexerQuery).abi_GetRangeAsync(startIndex, maxItems, &_ret));
		return _ret;
	}
	final Windows.Storage.StorageFolder QueryFolder()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IContentIndexerQuery).get_QueryFolder(&_ret));
		return _ret;
	}
}

interface IndexableContent : Windows.Storage.Search.IIndexableContent
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IIndexableContent).get_Id(&_ret));
		return _ret;
	}
	final void Id(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IIndexableContent).set_Id(value));
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, IInspectable) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IIndexableContent).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IRandomAccessStream Stream()
	{
		Windows.Storage.Streams.IRandomAccessStream _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IIndexableContent).get_Stream(&_ret));
		return _ret;
	}
	final void Stream(Windows.Storage.Streams.IRandomAccessStream value)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IIndexableContent).set_Stream(value));
	}
	final HSTRING StreamContentType()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IIndexableContent).get_StreamContentType(&_ret));
		return _ret;
	}
	final void StreamContentType(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IIndexableContent).set_StreamContentType(value));
	}
	static IndexableContent New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(IndexableContent).abi_ActivateInstance(&ret));
		return ret.as!(IndexableContent);
	}
}

interface QueryOptions : Windows.Storage.Search.IQueryOptions, Windows.Storage.Search.IQueryOptionsWithProviderFilter
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(HSTRING) FileTypeFilter()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).get_FileTypeFilter(&_ret));
		return _ret;
	}
	final Windows.Storage.Search.FolderDepth FolderDepth()
	{
		Windows.Storage.Search.FolderDepth _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).get_FolderDepth(&_ret));
		return _ret;
	}
	final void FolderDepth(Windows.Storage.Search.FolderDepth value)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).set_FolderDepth(value));
	}
	final HSTRING ApplicationSearchFilter()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).get_ApplicationSearchFilter(&_ret));
		return _ret;
	}
	final void ApplicationSearchFilter(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).set_ApplicationSearchFilter(value));
	}
	final HSTRING UserSearchFilter()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).get_UserSearchFilter(&_ret));
		return _ret;
	}
	final void UserSearchFilter(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).set_UserSearchFilter(value));
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).get_Language(&_ret));
		return _ret;
	}
	final void Language(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).set_Language(value));
	}
	final Windows.Storage.Search.IndexerOption IndexerOption()
	{
		Windows.Storage.Search.IndexerOption _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).get_IndexerOption(&_ret));
		return _ret;
	}
	final void IndexerOption(Windows.Storage.Search.IndexerOption value)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).set_IndexerOption(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry) SortOrder()
	{
		Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).get_SortOrder(&_ret));
		return _ret;
	}
	final HSTRING GroupPropertyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).get_GroupPropertyName(&_ret));
		return _ret;
	}
	final Windows.Storage.Search.DateStackOption DateStackOption()
	{
		Windows.Storage.Search.DateStackOption _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).get_DateStackOption(&_ret));
		return _ret;
	}
	final HSTRING SaveToString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).abi_SaveToString(&_ret));
		return _ret;
	}
	final void LoadFromString(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).abi_LoadFromString(value));
	}
	final void SetThumbnailPrefetch(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize, Windows.Storage.FileProperties.ThumbnailOptions options)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).abi_SetThumbnailPrefetch(mode, requestedSize, options));
	}
	final void SetPropertyPrefetch(Windows.Storage.FileProperties.PropertyPrefetchOptions options, Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptions).abi_SetPropertyPrefetch(options, propertiesToRetrieve));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) StorageProviderIdFilter()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IQueryOptionsWithProviderFilter).get_StorageProviderIdFilter(&_ret));
		return _ret;
	}
	static QueryOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(QueryOptions).abi_ActivateInstance(&ret));
		return ret.as!(QueryOptions);
	}
	static Windows.Storage.Search.QueryOptions New(Windows.Storage.Search.CommonFileQuery query, Windows.Foundation.Collections.IIterable!(HSTRING) fileTypeFilter)
	{
		auto factory = factory!(Windows.Storage.Search.IQueryOptionsFactory);
		Windows.Storage.Search.QueryOptions _ret;
		Debug.OK(factory.as!(Windows.Storage.Search.IQueryOptionsFactory).abi_CreateCommonFileQuery(query, fileTypeFilter, &_ret));
		return _ret;
	}
	static Windows.Storage.Search.QueryOptions New(Windows.Storage.Search.CommonFolderQuery query)
	{
		auto factory = factory!(Windows.Storage.Search.IQueryOptionsFactory);
		Windows.Storage.Search.QueryOptions _ret;
		Debug.OK(factory.as!(Windows.Storage.Search.IQueryOptionsFactory).abi_CreateCommonFolderQuery(query, &_ret));
		return _ret;
	}
}

interface SortEntryVector : Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry), Windows.Foundation.Collections.IIterable!(Windows.Storage.Search.SortEntry)
{
extern(Windows):
	final Windows.Storage.Search.SortEntry GetAt(uint index)
	{
		Windows.Storage.Search.SortEntry _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Storage.Search.SortEntry)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Storage.Search.SortEntry value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Storage.Search.SortEntry item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Storage.Search.SortEntry item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry)).abi_RemoveAt(index));
	}
	final void Append(Windows.Storage.Search.SortEntry item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Storage.Search.SortEntry* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Storage.Search.SortEntry* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Storage.Search.SortEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Storage.Search.SortEntry)).abi_First(out_first));
	}
}

interface StorageFileQueryResult : Windows.Storage.Search.IStorageFileQueryResult, Windows.Storage.Search.IStorageQueryResultBase, Windows.Storage.Search.IStorageFileQueryResult2
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)) GetFilesAsync(UINT32 startIndex, UINT32 maxNumberOfItems)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageFileQueryResult).abi_GetFilesAsync(startIndex, maxNumberOfItems, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)) GetFilesAsyncDefaultStartAndCount()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageFileQueryResult).abi_GetFilesAsyncDefaultStartAndCount(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) GetItemCountAsync()
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).abi_GetItemCountAsync(&_ret));
		return _ret;
	}
	final Windows.Storage.StorageFolder Folder()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).get_Folder(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnContentsChanged(void delegate(Windows.Storage.Search.IStorageQueryResultBase, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).add_ContentsChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.Search.IStorageQueryResultBase, IInspectable), Windows.Storage.Search.IStorageQueryResultBase, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeContentsChanged(EventRegistrationToken eventCookie)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).remove_ContentsChanged(eventCookie));
	}
	final EventRegistrationToken OnOptionsChanged(void delegate(Windows.Storage.Search.IStorageQueryResultBase, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).add_OptionsChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.Search.IStorageQueryResultBase, IInspectable), Windows.Storage.Search.IStorageQueryResultBase, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeOptionsChanged(EventRegistrationToken eventCookie)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).remove_OptionsChanged(eventCookie));
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) FindStartIndexAsync(IInspectable value)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).abi_FindStartIndexAsync(value, &_ret));
		return _ret;
	}
	final Windows.Storage.Search.QueryOptions GetCurrentQueryOptions()
	{
		Windows.Storage.Search.QueryOptions _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).abi_GetCurrentQueryOptions(&_ret));
		return _ret;
	}
	final void ApplyNewQueryOptions(Windows.Storage.Search.QueryOptions newQueryOptions)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).abi_ApplyNewQueryOptions(newQueryOptions));
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextSegment)) GetMatchingPropertiesWithRanges(Windows.Storage.StorageFile file)
	{
		Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextSegment)) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageFileQueryResult2).abi_GetMatchingPropertiesWithRanges(file, &_ret));
		return _ret;
	}
}

interface StorageFolderQueryResult : Windows.Storage.Search.IStorageFolderQueryResult, Windows.Storage.Search.IStorageQueryResultBase
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder)) GetFoldersAsync(UINT32 startIndex, UINT32 maxNumberOfItems)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder)) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageFolderQueryResult).abi_GetFoldersAsync(startIndex, maxNumberOfItems, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder)) GetFoldersAsyncDefaultStartAndCount()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder)) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageFolderQueryResult).abi_GetFoldersAsyncDefaultStartAndCount(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) GetItemCountAsync()
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).abi_GetItemCountAsync(&_ret));
		return _ret;
	}
	final Windows.Storage.StorageFolder Folder()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).get_Folder(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnContentsChanged(void delegate(Windows.Storage.Search.IStorageQueryResultBase, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).add_ContentsChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.Search.IStorageQueryResultBase, IInspectable), Windows.Storage.Search.IStorageQueryResultBase, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeContentsChanged(EventRegistrationToken eventCookie)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).remove_ContentsChanged(eventCookie));
	}
	final EventRegistrationToken OnOptionsChanged(void delegate(Windows.Storage.Search.IStorageQueryResultBase, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).add_OptionsChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.Search.IStorageQueryResultBase, IInspectable), Windows.Storage.Search.IStorageQueryResultBase, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeOptionsChanged(EventRegistrationToken eventCookie)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).remove_OptionsChanged(eventCookie));
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) FindStartIndexAsync(IInspectable value)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).abi_FindStartIndexAsync(value, &_ret));
		return _ret;
	}
	final Windows.Storage.Search.QueryOptions GetCurrentQueryOptions()
	{
		Windows.Storage.Search.QueryOptions _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).abi_GetCurrentQueryOptions(&_ret));
		return _ret;
	}
	final void ApplyNewQueryOptions(Windows.Storage.Search.QueryOptions newQueryOptions)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).abi_ApplyNewQueryOptions(newQueryOptions));
	}
}

interface StorageItemQueryResult : Windows.Storage.Search.IStorageItemQueryResult, Windows.Storage.Search.IStorageQueryResultBase
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem)) GetItemsAsync(UINT32 startIndex, UINT32 maxNumberOfItems)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem)) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageItemQueryResult).abi_GetItemsAsync(startIndex, maxNumberOfItems, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem)) GetItemsAsyncDefaultStartAndCount()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem)) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageItemQueryResult).abi_GetItemsAsyncDefaultStartAndCount(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) GetItemCountAsync()
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).abi_GetItemCountAsync(&_ret));
		return _ret;
	}
	final Windows.Storage.StorageFolder Folder()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).get_Folder(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnContentsChanged(void delegate(Windows.Storage.Search.IStorageQueryResultBase, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).add_ContentsChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.Search.IStorageQueryResultBase, IInspectable), Windows.Storage.Search.IStorageQueryResultBase, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeContentsChanged(EventRegistrationToken eventCookie)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).remove_ContentsChanged(eventCookie));
	}
	final EventRegistrationToken OnOptionsChanged(void delegate(Windows.Storage.Search.IStorageQueryResultBase, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).add_OptionsChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.Search.IStorageQueryResultBase, IInspectable), Windows.Storage.Search.IStorageQueryResultBase, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeOptionsChanged(EventRegistrationToken eventCookie)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).remove_OptionsChanged(eventCookie));
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) FindStartIndexAsync(IInspectable value)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).abi_FindStartIndexAsync(value, &_ret));
		return _ret;
	}
	final Windows.Storage.Search.QueryOptions GetCurrentQueryOptions()
	{
		Windows.Storage.Search.QueryOptions _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).abi_GetCurrentQueryOptions(&_ret));
		return _ret;
	}
	final void ApplyNewQueryOptions(Windows.Storage.Search.QueryOptions newQueryOptions)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IStorageQueryResultBase).abi_ApplyNewQueryOptions(newQueryOptions));
	}
}

interface StorageLibraryContentChangedTriggerDetails : Windows.Storage.Search.IStorageLibraryContentChangedTriggerDetails
{
extern(Windows):
	final Windows.Storage.StorageFolder Folder()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageLibraryContentChangedTriggerDetails).get_Folder(&_ret));
		return _ret;
	}
	final Windows.Storage.Search.StorageItemQueryResult CreateModifiedSinceQuery(Windows.Foundation.DateTime lastQueryTime)
	{
		Windows.Storage.Search.StorageItemQueryResult _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IStorageLibraryContentChangedTriggerDetails).abi_CreateModifiedSinceQuery(lastQueryTime, &_ret));
		return _ret;
	}
}

interface ValueAndLanguage : Windows.Storage.Search.IValueAndLanguage
{
extern(Windows):
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IValueAndLanguage).get_Language(&_ret));
		return _ret;
	}
	final void Language(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IValueAndLanguage).set_Language(value));
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.Storage.Search.IValueAndLanguage).get_Value(&_ret));
		return _ret;
	}
	final void Value(IInspectable value)
	{
		Debug.OK(this.as!(Windows.Storage.Search.IValueAndLanguage).set_Value(value));
	}
	static ValueAndLanguage New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ValueAndLanguage).abi_ActivateInstance(&ret));
		return ret.as!(ValueAndLanguage);
	}
}

enum CommonFileQuery
{
	DefaultQuery = 0,
	OrderByName = 1,
	OrderByTitle = 2,
	OrderByMusicProperties = 3,
	OrderBySearchRank = 4,
	OrderByDate = 5
}

enum CommonFolderQuery
{
	DefaultQuery = 0,
	GroupByYear = 100,
	GroupByMonth = 101,
	GroupByArtist = 102,
	GroupByAlbum = 103,
	GroupByAlbumArtist = 104,
	GroupByComposer = 105,
	GroupByGenre = 106,
	GroupByPublishedYear = 107,
	GroupByRating = 108,
	GroupByTag = 109,
	GroupByAuthor = 110,
	GroupByType = 111
}

enum DateStackOption
{
	None = 0,
	Year = 1,
	Month = 2
}

enum FolderDepth
{
	Shallow = 0,
	Deep = 1
}

enum IndexedState
{
	Unknown = 0,
	NotIndexed = 1,
	PartiallyIndexed = 2,
	FullyIndexed = 3
}

enum IndexerOption
{
	UseIndexerWhenAvailable = 0,
	OnlyUseIndexer = 1,
	DoNotUseIndexer = 2
}