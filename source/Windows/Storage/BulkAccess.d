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
extern(Windows):
	final Windows.Storage.FileProperties.MusicProperties MusicProperties()
	{
		Windows.Storage.FileProperties.MusicProperties _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).get_MusicProperties(&_ret));
		return _ret;
	}
	final Windows.Storage.FileProperties.VideoProperties VideoProperties()
	{
		Windows.Storage.FileProperties.VideoProperties _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).get_VideoProperties(&_ret));
		return _ret;
	}
	final Windows.Storage.FileProperties.ImageProperties ImageProperties()
	{
		Windows.Storage.FileProperties.ImageProperties _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).get_ImageProperties(&_ret));
		return _ret;
	}
	final Windows.Storage.FileProperties.DocumentProperties DocumentProperties()
	{
		Windows.Storage.FileProperties.DocumentProperties _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).get_DocumentProperties(&_ret));
		return _ret;
	}
	final Windows.Storage.FileProperties.BasicProperties BasicProperties()
	{
		Windows.Storage.FileProperties.BasicProperties _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).get_BasicProperties(&_ret));
		return _ret;
	}
	final Windows.Storage.FileProperties.StorageItemThumbnail Thumbnail()
	{
		Windows.Storage.FileProperties.StorageItemThumbnail _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).get_Thumbnail(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnThumbnailUpdated(void delegate(Windows.Storage.BulkAccess.IStorageItemInformation, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).add_ThumbnailUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.BulkAccess.IStorageItemInformation, IInspectable), Windows.Storage.BulkAccess.IStorageItemInformation, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeThumbnailUpdated(EventRegistrationToken eventCookie)
	{
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).remove_ThumbnailUpdated(eventCookie));
	}
	final EventRegistrationToken OnPropertiesUpdated(void delegate(Windows.Storage.BulkAccess.IStorageItemInformation, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).add_PropertiesUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.BulkAccess.IStorageItemInformation, IInspectable), Windows.Storage.BulkAccess.IStorageItemInformation, IInspectable)(fn), &tok));
		return tok;
	}
	final void removePropertiesUpdated(EventRegistrationToken eventCookie)
	{
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).remove_PropertiesUpdated(eventCookie));
	}
	final HSTRING FileType()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile)this.asInterface(uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea"))).get_FileType(&_ret));
		return _ret;
	}
	final HSTRING ContentType()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile)this.asInterface(uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea"))).get_ContentType(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream) OpenAsync(Windows.Storage.FileAccessMode accessMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile)this.asInterface(uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea"))).abi_OpenAsync(accessMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageStreamTransaction) OpenTransactedWriteAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageStreamTransaction) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile)this.asInterface(uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea"))).abi_OpenTransactedWriteAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) CopyOverloadDefaultNameAndOptions(Windows.Storage.IStorageFolder destinationFolder)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile)this.asInterface(uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea"))).abi_CopyOverloadDefaultNameAndOptions(destinationFolder, &_ret));
		return _ret;
	}
	alias CopyAsync = CopyOverloadDefaultNameAndOptions;
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) CopyOverloadDefaultOptions(Windows.Storage.IStorageFolder destinationFolder, HSTRING desiredNewName)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile)this.asInterface(uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea"))).abi_CopyOverloadDefaultOptions(destinationFolder, desiredNewName, &_ret));
		return _ret;
	}
	alias CopyAsync = CopyOverloadDefaultOptions;
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) CopyOverload(Windows.Storage.IStorageFolder destinationFolder, HSTRING desiredNewName, Windows.Storage.NameCollisionOption option)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile)this.asInterface(uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea"))).abi_CopyOverload(destinationFolder, desiredNewName, option, &_ret));
		return _ret;
	}
	alias CopyAsync = CopyOverload;
	final Windows.Foundation.IAsyncAction CopyAndReplaceAsync(Windows.Storage.IStorageFile fileToReplace)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile)this.asInterface(uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea"))).abi_CopyAndReplaceAsync(fileToReplace, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction MoveOverloadDefaultNameAndOptions(Windows.Storage.IStorageFolder destinationFolder)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile)this.asInterface(uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea"))).abi_MoveOverloadDefaultNameAndOptions(destinationFolder, &_ret));
		return _ret;
	}
	alias MoveAsync = MoveOverloadDefaultNameAndOptions;
	final Windows.Foundation.IAsyncAction MoveOverloadDefaultOptions(Windows.Storage.IStorageFolder destinationFolder, HSTRING desiredNewName)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile)this.asInterface(uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea"))).abi_MoveOverloadDefaultOptions(destinationFolder, desiredNewName, &_ret));
		return _ret;
	}
	alias MoveAsync = MoveOverloadDefaultOptions;
	final Windows.Foundation.IAsyncAction MoveOverload(Windows.Storage.IStorageFolder destinationFolder, HSTRING desiredNewName, Windows.Storage.NameCollisionOption option)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile)this.asInterface(uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea"))).abi_MoveOverload(destinationFolder, desiredNewName, option, &_ret));
		return _ret;
	}
	alias MoveAsync = MoveOverload;
	final Windows.Foundation.IAsyncAction MoveAndReplaceAsync(Windows.Storage.IStorageFile fileToReplace)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile)this.asInterface(uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea"))).abi_MoveAndReplaceAsync(fileToReplace, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IInputStream) OpenSequentialReadAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IInputStream) _ret;
		Debug.OK((cast(Windows.Storage.Streams.IInputStreamReference)this.asInterface(uuid("43929d18-5ec9-4b5a-919c-4205b0c804b6"))).abi_OpenSequentialReadAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) OpenReadAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStreamReference)this.asInterface(uuid("33ee3134-1dd6-4e3a-8067-d1c162e8642b"))).abi_OpenReadAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction RenameAsyncOverloadDefaultOptions(HSTRING desiredName)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).abi_RenameAsyncOverloadDefaultOptions(desiredName, &_ret));
		return _ret;
	}
	alias RenameAsync = RenameAsyncOverloadDefaultOptions;
	final Windows.Foundation.IAsyncAction RenameAsync(HSTRING desiredName, Windows.Storage.NameCollisionOption option)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).abi_RenameAsync(desiredName, option, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAsyncOverloadDefaultOptions()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).abi_DeleteAsyncOverloadDefaultOptions(&_ret));
		return _ret;
	}
	alias DeleteAsync = DeleteAsyncOverloadDefaultOptions;
	final Windows.Foundation.IAsyncAction DeleteAsync(Windows.Storage.StorageDeleteOption option)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).abi_DeleteAsync(option, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.BasicProperties) GetBasicPropertiesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.BasicProperties) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).abi_GetBasicPropertiesAsync(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).get_Name(&_ret));
		return _ret;
	}
	final HSTRING Path()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).get_Path(&_ret));
		return _ret;
	}
	final Windows.Storage.FileAttributes Attributes()
	{
		Windows.Storage.FileAttributes _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).get_Attributes(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime DateCreated()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).get_DateCreated(&_ret));
		return _ret;
	}
	final bool IsOfType(Windows.Storage.StorageItemTypes type)
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).abi_IsOfType(type, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) GetThumbnailAsyncOverloadDefaultSizeDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).abi_GetThumbnailAsyncOverloadDefaultSizeDefaultOptions(mode, &_ret));
		return _ret;
	}
	alias GetThumbnailAsync = GetThumbnailAsyncOverloadDefaultSizeDefaultOptions;
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) GetThumbnailAsyncOverloadDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).abi_GetThumbnailAsyncOverloadDefaultOptions(mode, requestedSize, &_ret));
		return _ret;
	}
	alias GetThumbnailAsync = GetThumbnailAsyncOverloadDefaultOptions;
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) GetThumbnailAsync(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize, Windows.Storage.FileProperties.ThumbnailOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).abi_GetThumbnailAsync(mode, requestedSize, options, &_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING DisplayType()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).get_DisplayType(&_ret));
		return _ret;
	}
	final HSTRING FolderRelativeId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).get_FolderRelativeId(&_ret));
		return _ret;
	}
	final Windows.Storage.FileProperties.StorageItemContentProperties Properties()
	{
		Windows.Storage.FileProperties.StorageItemContentProperties _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) GetParentAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem2)this.asInterface(uuid("53f926d2-083c-4283-b45b-81c007237e44"))).abi_GetParentAsync(&_ret));
		return _ret;
	}
	final bool IsEqual(Windows.Storage.IStorageItem item)
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem2)this.asInterface(uuid("53f926d2-083c-4283-b45b-81c007237e44"))).abi_IsEqual(item, &_ret));
		return _ret;
	}
	final Windows.Storage.StorageProvider Provider()
	{
		Windows.Storage.StorageProvider _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemPropertiesWithProvider)this.asInterface(uuid("861bf39b-6368-4dee-b40e-74684a5ce714"))).get_Provider(&_ret));
		return _ret;
	}
	final bool IsAvailable()
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.IStorageFilePropertiesWithAvailability)this.asInterface(uuid("afcbbe9b-582b-4133-9648-e44ca46ee491"))).get_IsAvailable(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream) OpenWithOptionsAsync(Windows.Storage.FileAccessMode accessMode, Windows.Storage.StorageOpenOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile2)this.asInterface(uuid("954e4bcf-0a77-42fb-b777-c2ed58a52e44"))).abi_OpenWithOptionsAsync(accessMode, options, &_ret));
		return _ret;
	}
	alias OpenAsync = OpenWithOptionsAsync;
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageStreamTransaction) OpenTransactedWriteWithOptionsAsync(Windows.Storage.StorageOpenOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageStreamTransaction) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile2)this.asInterface(uuid("954e4bcf-0a77-42fb-b777-c2ed58a52e44"))).abi_OpenTransactedWriteWithOptionsAsync(options, &_ret));
		return _ret;
	}
	alias OpenTransactedWriteAsync = OpenTransactedWriteWithOptionsAsync;
}

interface FileInformationFactory : Windows.Storage.BulkAccess.IFileInformationFactory
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.IStorageItemInformation)) GetItemsAsync(UINT32 startIndex, UINT32 maxItemsToRetrieve)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.IStorageItemInformation)) _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IFileInformationFactory)this.asInterface(uuid("401d88be-960f-4d6d-a7d0-1a3861e76c83"))).abi_GetItemsAsync(startIndex, maxItemsToRetrieve, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.IStorageItemInformation)) GetItemsAsyncDefaultStartAndCount()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.IStorageItemInformation)) _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IFileInformationFactory)this.asInterface(uuid("401d88be-960f-4d6d-a7d0-1a3861e76c83"))).abi_GetItemsAsyncDefaultStartAndCount(&_ret));
		return _ret;
	}
	alias GetItemsAsync = GetItemsAsyncDefaultStartAndCount;
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.FileInformation)) GetFilesAsync(UINT32 startIndex, UINT32 maxItemsToRetrieve)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.FileInformation)) _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IFileInformationFactory)this.asInterface(uuid("401d88be-960f-4d6d-a7d0-1a3861e76c83"))).abi_GetFilesAsync(startIndex, maxItemsToRetrieve, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.FileInformation)) GetFilesAsyncDefaultStartAndCount()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.FileInformation)) _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IFileInformationFactory)this.asInterface(uuid("401d88be-960f-4d6d-a7d0-1a3861e76c83"))).abi_GetFilesAsyncDefaultStartAndCount(&_ret));
		return _ret;
	}
	alias GetFilesAsync = GetFilesAsyncDefaultStartAndCount;
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.FolderInformation)) GetFoldersAsync(UINT32 startIndex, UINT32 maxItemsToRetrieve)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.FolderInformation)) _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IFileInformationFactory)this.asInterface(uuid("401d88be-960f-4d6d-a7d0-1a3861e76c83"))).abi_GetFoldersAsync(startIndex, maxItemsToRetrieve, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.FolderInformation)) GetFoldersAsyncDefaultStartAndCount()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.BulkAccess.FolderInformation)) _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IFileInformationFactory)this.asInterface(uuid("401d88be-960f-4d6d-a7d0-1a3861e76c83"))).abi_GetFoldersAsyncDefaultStartAndCount(&_ret));
		return _ret;
	}
	alias GetFoldersAsync = GetFoldersAsyncDefaultStartAndCount;
	final IInspectable GetVirtualizedItemsVector()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IFileInformationFactory)this.asInterface(uuid("401d88be-960f-4d6d-a7d0-1a3861e76c83"))).abi_GetVirtualizedItemsVector(&_ret));
		return _ret;
	}
	final IInspectable GetVirtualizedFilesVector()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IFileInformationFactory)this.asInterface(uuid("401d88be-960f-4d6d-a7d0-1a3861e76c83"))).abi_GetVirtualizedFilesVector(&_ret));
		return _ret;
	}
	final IInspectable GetVirtualizedFoldersVector()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IFileInformationFactory)this.asInterface(uuid("401d88be-960f-4d6d-a7d0-1a3861e76c83"))).abi_GetVirtualizedFoldersVector(&_ret));
		return _ret;
	}
	static Windows.Storage.BulkAccess.FileInformationFactory New(Windows.Storage.Search.IStorageQueryResultBase queryResult, Windows.Storage.FileProperties.ThumbnailMode mode)
	{
		auto factory = factory!(Windows.Storage.BulkAccess.IFileInformationFactoryFactory);
		Windows.Storage.BulkAccess.FileInformationFactory _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IFileInformationFactoryFactory)factory.asInterface(uuid("84ea0e7d-e4a2-4f00-8afa-af5e0f826bd5"))).abi_CreateWithMode(queryResult, mode, &_ret));
		return _ret;
	}
	static Windows.Storage.BulkAccess.FileInformationFactory New(Windows.Storage.Search.IStorageQueryResultBase queryResult, Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedThumbnailSize)
	{
		auto factory = factory!(Windows.Storage.BulkAccess.IFileInformationFactoryFactory);
		Windows.Storage.BulkAccess.FileInformationFactory _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IFileInformationFactoryFactory)factory.asInterface(uuid("84ea0e7d-e4a2-4f00-8afa-af5e0f826bd5"))).abi_CreateWithModeAndSize(queryResult, mode, requestedThumbnailSize, &_ret));
		return _ret;
	}
	static Windows.Storage.BulkAccess.FileInformationFactory New(Windows.Storage.Search.IStorageQueryResultBase queryResult, Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedThumbnailSize, Windows.Storage.FileProperties.ThumbnailOptions thumbnailOptions)
	{
		auto factory = factory!(Windows.Storage.BulkAccess.IFileInformationFactoryFactory);
		Windows.Storage.BulkAccess.FileInformationFactory _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IFileInformationFactoryFactory)factory.asInterface(uuid("84ea0e7d-e4a2-4f00-8afa-af5e0f826bd5"))).abi_CreateWithModeAndSizeAndOptions(queryResult, mode, requestedThumbnailSize, thumbnailOptions, &_ret));
		return _ret;
	}
	static Windows.Storage.BulkAccess.FileInformationFactory New(Windows.Storage.Search.IStorageQueryResultBase queryResult, Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedThumbnailSize, Windows.Storage.FileProperties.ThumbnailOptions thumbnailOptions, bool delayLoad)
	{
		auto factory = factory!(Windows.Storage.BulkAccess.IFileInformationFactoryFactory);
		Windows.Storage.BulkAccess.FileInformationFactory _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IFileInformationFactoryFactory)factory.asInterface(uuid("84ea0e7d-e4a2-4f00-8afa-af5e0f826bd5"))).abi_CreateWithModeAndSizeAndOptionsAndFlags(queryResult, mode, requestedThumbnailSize, thumbnailOptions, delayLoad, &_ret));
		return _ret;
	}
}

interface FolderInformation : Windows.Storage.BulkAccess.IStorageItemInformation, Windows.Storage.IStorageFolder, Windows.Storage.IStorageItem, Windows.Storage.IStorageItemProperties, Windows.Storage.Search.IStorageFolderQueryOperations, Windows.Storage.IStorageItem2, Windows.Storage.IStorageFolder2, Windows.Storage.IStorageItemPropertiesWithProvider
{
extern(Windows):
	final Windows.Storage.FileProperties.MusicProperties MusicProperties()
	{
		Windows.Storage.FileProperties.MusicProperties _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).get_MusicProperties(&_ret));
		return _ret;
	}
	final Windows.Storage.FileProperties.VideoProperties VideoProperties()
	{
		Windows.Storage.FileProperties.VideoProperties _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).get_VideoProperties(&_ret));
		return _ret;
	}
	final Windows.Storage.FileProperties.ImageProperties ImageProperties()
	{
		Windows.Storage.FileProperties.ImageProperties _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).get_ImageProperties(&_ret));
		return _ret;
	}
	final Windows.Storage.FileProperties.DocumentProperties DocumentProperties()
	{
		Windows.Storage.FileProperties.DocumentProperties _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).get_DocumentProperties(&_ret));
		return _ret;
	}
	final Windows.Storage.FileProperties.BasicProperties BasicProperties()
	{
		Windows.Storage.FileProperties.BasicProperties _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).get_BasicProperties(&_ret));
		return _ret;
	}
	final Windows.Storage.FileProperties.StorageItemThumbnail Thumbnail()
	{
		Windows.Storage.FileProperties.StorageItemThumbnail _ret;
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).get_Thumbnail(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnThumbnailUpdated(void delegate(Windows.Storage.BulkAccess.IStorageItemInformation, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).add_ThumbnailUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.BulkAccess.IStorageItemInformation, IInspectable), Windows.Storage.BulkAccess.IStorageItemInformation, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeThumbnailUpdated(EventRegistrationToken eventCookie)
	{
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).remove_ThumbnailUpdated(eventCookie));
	}
	final EventRegistrationToken OnPropertiesUpdated(void delegate(Windows.Storage.BulkAccess.IStorageItemInformation, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).add_PropertiesUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.BulkAccess.IStorageItemInformation, IInspectable), Windows.Storage.BulkAccess.IStorageItemInformation, IInspectable)(fn), &tok));
		return tok;
	}
	final void removePropertiesUpdated(EventRegistrationToken eventCookie)
	{
		Debug.OK((cast(Windows.Storage.BulkAccess.IStorageItemInformation)this.asInterface(uuid("87a5cb8b-8972-4f40-8de0-d86fb179d8fa"))).remove_PropertiesUpdated(eventCookie));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) CreateFileAsyncOverloadDefaultOptions(HSTRING desiredName)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFolder)this.asInterface(uuid("72d1cb78-b3ef-4f75-a80b-6fd9dae2944b"))).abi_CreateFileAsyncOverloadDefaultOptions(desiredName, &_ret));
		return _ret;
	}
	alias CreateFileAsync = CreateFileAsyncOverloadDefaultOptions;
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) CreateFileAsync(HSTRING desiredName, Windows.Storage.CreationCollisionOption options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFolder)this.asInterface(uuid("72d1cb78-b3ef-4f75-a80b-6fd9dae2944b"))).abi_CreateFileAsync(desiredName, options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) CreateFolderAsyncOverloadDefaultOptions(HSTRING desiredName)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFolder)this.asInterface(uuid("72d1cb78-b3ef-4f75-a80b-6fd9dae2944b"))).abi_CreateFolderAsyncOverloadDefaultOptions(desiredName, &_ret));
		return _ret;
	}
	alias CreateFolderAsync = CreateFolderAsyncOverloadDefaultOptions;
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) CreateFolderAsync(HSTRING desiredName, Windows.Storage.CreationCollisionOption options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFolder)this.asInterface(uuid("72d1cb78-b3ef-4f75-a80b-6fd9dae2944b"))).abi_CreateFolderAsync(desiredName, options, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) GetFileAsync(HSTRING name)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFolder)this.asInterface(uuid("72d1cb78-b3ef-4f75-a80b-6fd9dae2944b"))).abi_GetFileAsync(name, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) GetFolderAsync(HSTRING name)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFolder)this.asInterface(uuid("72d1cb78-b3ef-4f75-a80b-6fd9dae2944b"))).abi_GetFolderAsync(name, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) GetItemAsync(HSTRING name)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFolder)this.asInterface(uuid("72d1cb78-b3ef-4f75-a80b-6fd9dae2944b"))).abi_GetItemAsync(name, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)) GetFilesAsyncOverloadDefaultOptionsStartAndCount()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFolder)this.asInterface(uuid("72d1cb78-b3ef-4f75-a80b-6fd9dae2944b"))).abi_GetFilesAsyncOverloadDefaultOptionsStartAndCount(&_ret));
		return _ret;
	}
	alias GetFilesAsync = GetFilesAsyncOverloadDefaultOptionsStartAndCount;
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder)) GetFoldersAsyncOverloadDefaultOptionsStartAndCount()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder)) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFolder)this.asInterface(uuid("72d1cb78-b3ef-4f75-a80b-6fd9dae2944b"))).abi_GetFoldersAsyncOverloadDefaultOptionsStartAndCount(&_ret));
		return _ret;
	}
	alias GetFoldersAsync = GetFoldersAsyncOverloadDefaultOptionsStartAndCount;
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem)) GetItemsAsyncOverloadDefaultStartAndCount()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem)) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFolder)this.asInterface(uuid("72d1cb78-b3ef-4f75-a80b-6fd9dae2944b"))).abi_GetItemsAsyncOverloadDefaultStartAndCount(&_ret));
		return _ret;
	}
	alias GetItemsAsync = GetItemsAsyncOverloadDefaultStartAndCount;
	final Windows.Foundation.IAsyncAction RenameAsyncOverloadDefaultOptions(HSTRING desiredName)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).abi_RenameAsyncOverloadDefaultOptions(desiredName, &_ret));
		return _ret;
	}
	alias RenameAsync = RenameAsyncOverloadDefaultOptions;
	final Windows.Foundation.IAsyncAction RenameAsync(HSTRING desiredName, Windows.Storage.NameCollisionOption option)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).abi_RenameAsync(desiredName, option, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAsyncOverloadDefaultOptions()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).abi_DeleteAsyncOverloadDefaultOptions(&_ret));
		return _ret;
	}
	alias DeleteAsync = DeleteAsyncOverloadDefaultOptions;
	final Windows.Foundation.IAsyncAction DeleteAsync(Windows.Storage.StorageDeleteOption option)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).abi_DeleteAsync(option, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.BasicProperties) GetBasicPropertiesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.BasicProperties) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).abi_GetBasicPropertiesAsync(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).get_Name(&_ret));
		return _ret;
	}
	final HSTRING Path()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).get_Path(&_ret));
		return _ret;
	}
	final Windows.Storage.FileAttributes Attributes()
	{
		Windows.Storage.FileAttributes _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).get_Attributes(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime DateCreated()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).get_DateCreated(&_ret));
		return _ret;
	}
	final bool IsOfType(Windows.Storage.StorageItemTypes type)
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).abi_IsOfType(type, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) GetThumbnailAsyncOverloadDefaultSizeDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).abi_GetThumbnailAsyncOverloadDefaultSizeDefaultOptions(mode, &_ret));
		return _ret;
	}
	alias GetThumbnailAsync = GetThumbnailAsyncOverloadDefaultSizeDefaultOptions;
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) GetThumbnailAsyncOverloadDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).abi_GetThumbnailAsyncOverloadDefaultOptions(mode, requestedSize, &_ret));
		return _ret;
	}
	alias GetThumbnailAsync = GetThumbnailAsyncOverloadDefaultOptions;
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) GetThumbnailAsync(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize, Windows.Storage.FileProperties.ThumbnailOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).abi_GetThumbnailAsync(mode, requestedSize, options, &_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING DisplayType()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).get_DisplayType(&_ret));
		return _ret;
	}
	final HSTRING FolderRelativeId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).get_FolderRelativeId(&_ret));
		return _ret;
	}
	final Windows.Storage.FileProperties.StorageItemContentProperties Properties()
	{
		Windows.Storage.FileProperties.StorageItemContentProperties _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Search.IndexedState) GetIndexedStateAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Search.IndexedState) _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_GetIndexedStateAsync(&_ret));
		return _ret;
	}
	final Windows.Storage.Search.StorageFileQueryResult CreateFileQueryOverloadDefault()
	{
		Windows.Storage.Search.StorageFileQueryResult _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_CreateFileQueryOverloadDefault(&_ret));
		return _ret;
	}
	alias CreateFileQuery = CreateFileQueryOverloadDefault;
	final Windows.Storage.Search.StorageFileQueryResult CreateFileQuery(Windows.Storage.Search.CommonFileQuery query)
	{
		Windows.Storage.Search.StorageFileQueryResult _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_CreateFileQuery(query, &_ret));
		return _ret;
	}
	final Windows.Storage.Search.StorageFileQueryResult CreateFileQueryWithOptions(Windows.Storage.Search.QueryOptions queryOptions)
	{
		Windows.Storage.Search.StorageFileQueryResult _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_CreateFileQueryWithOptions(queryOptions, &_ret));
		return _ret;
	}
	final Windows.Storage.Search.StorageFolderQueryResult CreateFolderQueryOverloadDefault()
	{
		Windows.Storage.Search.StorageFolderQueryResult _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_CreateFolderQueryOverloadDefault(&_ret));
		return _ret;
	}
	alias CreateFolderQuery = CreateFolderQueryOverloadDefault;
	final Windows.Storage.Search.StorageFolderQueryResult CreateFolderQuery(Windows.Storage.Search.CommonFolderQuery query)
	{
		Windows.Storage.Search.StorageFolderQueryResult _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_CreateFolderQuery(query, &_ret));
		return _ret;
	}
	final Windows.Storage.Search.StorageFolderQueryResult CreateFolderQueryWithOptions(Windows.Storage.Search.QueryOptions queryOptions)
	{
		Windows.Storage.Search.StorageFolderQueryResult _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_CreateFolderQueryWithOptions(queryOptions, &_ret));
		return _ret;
	}
	final Windows.Storage.Search.StorageItemQueryResult CreateItemQuery()
	{
		Windows.Storage.Search.StorageItemQueryResult _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_CreateItemQuery(&_ret));
		return _ret;
	}
	final Windows.Storage.Search.StorageItemQueryResult CreateItemQueryWithOptions(Windows.Storage.Search.QueryOptions queryOptions)
	{
		Windows.Storage.Search.StorageItemQueryResult _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_CreateItemQueryWithOptions(queryOptions, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)) GetFilesAsync(Windows.Storage.Search.CommonFileQuery query, UINT32 startIndex, UINT32 maxItemsToRetrieve)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)) _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_GetFilesAsync(query, startIndex, maxItemsToRetrieve, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)) GetFilesAsyncOverloadDefaultStartAndCount(Windows.Storage.Search.CommonFileQuery query)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)) _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_GetFilesAsyncOverloadDefaultStartAndCount(query, &_ret));
		return _ret;
	}
	alias GetFilesAsync = GetFilesAsyncOverloadDefaultStartAndCount;
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder)) GetFoldersAsync(Windows.Storage.Search.CommonFolderQuery query, UINT32 startIndex, UINT32 maxItemsToRetrieve)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder)) _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_GetFoldersAsync(query, startIndex, maxItemsToRetrieve, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder)) GetFoldersAsyncOverloadDefaultStartAndCount(Windows.Storage.Search.CommonFolderQuery query)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder)) _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_GetFoldersAsyncOverloadDefaultStartAndCount(query, &_ret));
		return _ret;
	}
	alias GetFoldersAsync = GetFoldersAsyncOverloadDefaultStartAndCount;
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem)) GetItemsAsync(UINT32 startIndex, UINT32 maxItemsToRetrieve)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem)) _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_GetItemsAsync(startIndex, maxItemsToRetrieve, &_ret));
		return _ret;
	}
	final bool AreQueryOptionsSupported(Windows.Storage.Search.QueryOptions queryOptions)
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_AreQueryOptionsSupported(queryOptions, &_ret));
		return _ret;
	}
	final bool IsCommonFolderQuerySupported(Windows.Storage.Search.CommonFolderQuery query)
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_IsCommonFolderQuerySupported(query, &_ret));
		return _ret;
	}
	final bool IsCommonFileQuerySupported(Windows.Storage.Search.CommonFileQuery query)
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.Search.IStorageFolderQueryOperations)this.asInterface(uuid("cb43ccc9-446b-4a4f-be97-757771be5203"))).abi_IsCommonFileQuerySupported(query, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) GetParentAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem2)this.asInterface(uuid("53f926d2-083c-4283-b45b-81c007237e44"))).abi_GetParentAsync(&_ret));
		return _ret;
	}
	final bool IsEqual(Windows.Storage.IStorageItem item)
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem2)this.asInterface(uuid("53f926d2-083c-4283-b45b-81c007237e44"))).abi_IsEqual(item, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) TryGetItemAsync(HSTRING name)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFolder2)this.asInterface(uuid("e827e8b9-08d9-4a8e-a0ac-fe5ed3cbbbd3"))).abi_TryGetItemAsync(name, &_ret));
		return _ret;
	}
	final Windows.Storage.StorageProvider Provider()
	{
		Windows.Storage.StorageProvider _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemPropertiesWithProvider)this.asInterface(uuid("861bf39b-6368-4dee-b40e-74684a5ce714"))).get_Provider(&_ret));
		return _ret;
	}
}