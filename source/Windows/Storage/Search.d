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
	HRESULT get_Revision(UINT64* return_value);
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
interface IStorageFileQueryResult : IInspectable
{
extern(Windows):
	HRESULT abi_GetFilesAsync(UINT32 startIndex, UINT32 maxNumberOfItems, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile))* return_operation);
	HRESULT abi_GetFilesAsyncDefaultStartAndCount(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile))* return_operation);
}

@uuid("4e5db9dd-7141-46c4-8be3-e9dc9e27275c")
@WinrtFactory("Windows.Storage.Search.StorageFileQueryResult")
interface IStorageFileQueryResult2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetMatchingPropertiesWithRanges(Windows.Storage.StorageFile file, Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextSegment))* return_result);
}

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
interface IStorageFolderQueryResult : IInspectable
{
extern(Windows):
	HRESULT abi_GetFoldersAsync(UINT32 startIndex, UINT32 maxNumberOfItems, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder))* return_operation);
	HRESULT abi_GetFoldersAsyncDefaultStartAndCount(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder))* return_operation);
}

@uuid("e8948079-9d58-47b8-b2b2-41b07f4795f9")
@WinrtFactory("Windows.Storage.Search.StorageItemQueryResult")
interface IStorageItemQueryResult : IInspectable
{
extern(Windows):
	HRESULT abi_GetItemsAsync(UINT32 startIndex, UINT32 maxNumberOfItems, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem))* return_operation);
	HRESULT abi_GetItemsAsyncDefaultStartAndCount(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem))* return_operation);
}

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
}

interface ContentIndexerQuery : Windows.Storage.Search.IContentIndexerQuery
{
}

interface IndexableContent : Windows.Storage.Search.IIndexableContent
{
}

interface QueryOptions : Windows.Storage.Search.IQueryOptions, Windows.Storage.Search.IQueryOptionsWithProviderFilter
{
}

interface SortEntryVector : Windows.Foundation.Collections.IVector!(Windows.Storage.Search.SortEntry), Windows.Foundation.Collections.IIterable!(Windows.Storage.Search.SortEntry)
{
}

interface StorageFileQueryResult : Windows.Storage.Search.IStorageFileQueryResult, Windows.Storage.Search.IStorageQueryResultBase, Windows.Storage.Search.IStorageFileQueryResult2
{
}

interface StorageFolderQueryResult : Windows.Storage.Search.IStorageFolderQueryResult, Windows.Storage.Search.IStorageQueryResultBase
{
}

interface StorageItemQueryResult : Windows.Storage.Search.IStorageItemQueryResult, Windows.Storage.Search.IStorageQueryResultBase
{
}

interface StorageLibraryContentChangedTriggerDetails : Windows.Storage.Search.IStorageLibraryContentChangedTriggerDetails
{
}

interface ValueAndLanguage : Windows.Storage.Search.IValueAndLanguage
{
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