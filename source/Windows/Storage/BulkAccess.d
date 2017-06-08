module Windows.Storage.BulkAccess;

import dwinrt;

@uuid("401d88be-960f-4d6d-a7d0-1a3861e76c83")
@WinrtFactory("Windows.Storage.BulkAccess.FileInformationFactory")
interface IFileInformationFactory : IInspectable
{
extern(Windows):
	HRESULT abi_GetItemsAsync(UINT32 startIndex, UINT32 maxItemsToRetrieve, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.IStorageItemInformation))* return_operation);
	HRESULT abi_GetItemsAsyncDefaultStartAndCount(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.IStorageItemInformation))* return_operation);
	HRESULT abi_GetFilesAsync(UINT32 startIndex, UINT32 maxItemsToRetrieve, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.FileInformation))* return_operation);
	HRESULT abi_GetFilesAsyncDefaultStartAndCount(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.FileInformation))* return_operation);
	HRESULT abi_GetFoldersAsync(UINT32 startIndex, UINT32 maxItemsToRetrieve, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.FolderInformation))* return_operation);
	HRESULT abi_GetFoldersAsyncDefaultStartAndCount(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.FolderInformation))* return_operation);
	HRESULT abi_GetVirtualizedItemsVector(IInspectable* return_vector);
	HRESULT abi_GetVirtualizedFilesVector(IInspectable* return_vector);
	HRESULT abi_GetVirtualizedFoldersVector(IInspectable* return_vector);
}

@uuid("84ea0e7d-e4a2-4f00-8afa-af5e0f826bd5")
@WinrtFactory("Windows.Storage.BulkAccess.FileInformationFactory")
interface IFileInformationFactoryFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithMode(Windows.Storage.Search.IStorageQueryResultBase queryResult, Windows.Storage.FileProperties.ThumbnailMode mode, Windows.Storage.BulkAccess.FileInformationFactory* return_value);
	HRESULT abi_CreateWithModeAndSize(Windows.Storage.Search.IStorageQueryResultBase queryResult, Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedThumbnailSize, Windows.Storage.BulkAccess.FileInformationFactory* return_value);
	HRESULT abi_CreateWithModeAndSizeAndOptions(Windows.Storage.Search.IStorageQueryResultBase queryResult, Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedThumbnailSize, Windows.Storage.FileProperties.ThumbnailOptions thumbnailOptions, Windows.Storage.BulkAccess.FileInformationFactory* return_value);
	HRESULT abi_CreateWithModeAndSizeAndOptionsAndFlags(Windows.Storage.Search.IStorageQueryResultBase queryResult, Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedThumbnailSize, Windows.Storage.FileProperties.ThumbnailOptions thumbnailOptions, bool delayLoad, Windows.Storage.BulkAccess.FileInformationFactory* return_value);
}

@uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa")
interface IStorageItemInformation : IInspectable
{
extern(Windows):
	HRESULT get_MusicProperties(Windows.Storage.FileProperties.MusicProperties* return_value);
	HRESULT get_VideoProperties(Windows.Storage.FileProperties.VideoProperties* return_value);
	HRESULT get_ImageProperties(Windows.Storage.FileProperties.ImageProperties* return_value);
	HRESULT get_DocumentProperties(Windows.Storage.FileProperties.DocumentProperties* return_value);
	HRESULT get_BasicProperties(Windows.Storage.FileProperties.BasicProperties* return_value);
	HRESULT get_Thumbnail(Windows.Storage.FileProperties.StorageItemThumbnail* return_value);
	HRESULT add_ThumbnailUpdated(Windows.Foundation.TypedEventHandler!(Windows.Storage.BulkAccess.IStorageItemInformation, IInspectable) changedHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_ThumbnailUpdated(EventRegistrationToken eventCookie);
	HRESULT add_PropertiesUpdated(Windows.Foundation.TypedEventHandler!(Windows.Storage.BulkAccess.IStorageItemInformation, IInspectable) changedHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_PropertiesUpdated(EventRegistrationToken eventCookie);
}

interface FileInformation : Windows.Storage.BulkAccess.IStorageItemInformation, Windows.Storage.IStorageFile, Windows.Storage.Streams.IInputStreamReference, Windows.Storage.Streams.IRandomAccessStreamReference, Windows.Storage.IStorageItem, Windows.Storage.IStorageItemProperties, Windows.Storage.IStorageItem2, Windows.Storage.IStorageItemPropertiesWithProvider, Windows.Storage.IStorageFilePropertiesWithAvailability, Windows.Storage.IStorageFile2
{
}

interface FileInformationFactory : Windows.Storage.BulkAccess.IFileInformationFactory
{
}

interface FolderInformation : Windows.Storage.BulkAccess.IStorageItemInformation, Windows.Storage.IStorageFolder, Windows.Storage.IStorageItem, Windows.Storage.IStorageItemProperties, Windows.Storage.Search.IStorageFolderQueryOperations, Windows.Storage.IStorageItem2, Windows.Storage.IStorageFolder2, Windows.Storage.IStorageItemPropertiesWithProvider
{
}