module Windows.Storage;

import dwinrt;

@uuid("a05791e6-cc9f-4687-acab-a364fd785463")
interface ApplicationDataSetVersionHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Storage.SetVersionRequest setVersionRequest);
}

@uuid("fef6a824-2fe1-4d07-a35b-b77c50b5f4cc")
interface StreamedFileDataRequestedHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Storage.StreamedFileDataRequest stream);
}

@uuid("c3da6fb7-b744-4b45-b0b8-223a0938d0dc")
@WinrtFactory("Windows.Storage.ApplicationData")
interface IApplicationData : IInspectable
{
extern(Windows):
	HRESULT get_Version(UINT32* return_value);
	HRESULT abi_SetVersionAsync(UINT32 desiredVersion, Windows.Storage.ApplicationDataSetVersionHandler handler, Windows.Foundation.IAsyncAction* return_setVersionOperation);
	HRESULT abi_ClearAllAsync(Windows.Foundation.IAsyncAction* return_clearOperation);
	HRESULT abi_ClearAsync(Windows.Storage.ApplicationDataLocality locality, Windows.Foundation.IAsyncAction* return_clearOperation);
	HRESULT get_LocalSettings(Windows.Storage.ApplicationDataContainer* return_value);
	HRESULT get_RoamingSettings(Windows.Storage.ApplicationDataContainer* return_value);
	HRESULT get_LocalFolder(Windows.Storage.StorageFolder* return_value);
	HRESULT get_RoamingFolder(Windows.Storage.StorageFolder* return_value);
	HRESULT get_TemporaryFolder(Windows.Storage.StorageFolder* return_value);
	HRESULT add_DataChanged(Windows.Foundation.TypedEventHandler!(Windows.Storage.ApplicationData, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_DataChanged(EventRegistrationToken token);
	HRESULT abi_SignalDataChanged();
	HRESULT get_RoamingStorageQuota(ulong* return_value);
}

@uuid("9e65cd69-0ba3-4e32-be29-b02de6607638")
@WinrtFactory("Windows.Storage.ApplicationData")
interface IApplicationData2 : IInspectable
{
extern(Windows):
	HRESULT get_LocalCacheFolder(Windows.Storage.StorageFolder* return_value);
}

@uuid("dc222cf4-2772-4c1d-aa2c-c9f743ade8d1")
@WinrtFactory("Windows.Storage.ApplicationData")
interface IApplicationData3 : IInspectable
{
extern(Windows):
	HRESULT abi_GetPublisherCacheFolder(HSTRING folderName, Windows.Storage.StorageFolder* return_value);
	HRESULT abi_ClearPublisherCacheFolderAsync(HSTRING folderName, Windows.Foundation.IAsyncAction* return_clearOperation);
	HRESULT get_SharedLocalFolder(Windows.Storage.StorageFolder* return_value);
}

@uuid("c5aefd1e-f467-40ba-8566-ab640a441e1d")
@WinrtFactory("Windows.Storage.ApplicationDataContainer")
interface IApplicationDataContainer : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Locality(Windows.Storage.ApplicationDataLocality* return_value);
	HRESULT get_Values(Windows.Foundation.Collections.IPropertySet* return_value);
	HRESULT get_Containers(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Storage.ApplicationDataContainer)* return_value);
	HRESULT abi_CreateContainer(HSTRING name, Windows.Storage.ApplicationDataCreateDisposition disposition, Windows.Storage.ApplicationDataContainer* return_container);
	HRESULT abi_DeleteContainer(HSTRING name);
}

@uuid("5612147b-e843-45e3-94d8-06169e3c8e17")
@WinrtFactory("Windows.Storage.ApplicationData")
interface IApplicationDataStatics : IInspectable
{
extern(Windows):
	HRESULT get_Current(Windows.Storage.ApplicationData* return_value);
}

@uuid("cd606211-cf49-40a4-a47c-c7f0dbba8107")
@WinrtFactory("Windows.Storage.ApplicationData")
interface IApplicationDataStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetForUserAsync(Windows.System.User user, Windows.Foundation.IAsyncOperation!(Windows.Storage.ApplicationData)* return_getForUserOperation);
}

@uuid("8ffc224a-e782-495d-b614-654c4f0b2370")
@WinrtFactory("Windows.Storage.CachedFileManager")
interface ICachedFileManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_DeferUpdates(Windows.Storage.IStorageFile file);
	HRESULT abi_CompleteUpdatesAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Storage.Provider.FileUpdateStatus)* return_operation);
}

@uuid("27862ed0-404e-47df-a1e2-e37308be7b37")
@WinrtFactory("Windows.Storage.DownloadsFolder")
interface IDownloadsFolderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFileAsync(HSTRING desiredName, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_CreateFolderAsync(HSTRING desiredName, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
	HRESULT abi_CreateFileWithCollisionOptionAsync(HSTRING desiredName, Windows.Storage.CreationCollisionOption option, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_CreateFolderWithCollisionOptionAsync(HSTRING desiredName, Windows.Storage.CreationCollisionOption option, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
}

@uuid("e93045bd-8ef8-4f8e-8d15-ac0e265f390d")
@WinrtFactory("Windows.Storage.DownloadsFolder")
interface IDownloadsFolderStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFileForUserAsync(Windows.System.User user, HSTRING desiredName, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_CreateFolderForUserAsync(Windows.System.User user, HSTRING desiredName, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
	HRESULT abi_CreateFileForUserWithCollisionOptionAsync(Windows.System.User user, HSTRING desiredName, Windows.Storage.CreationCollisionOption option, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_CreateFolderForUserWithCollisionOptionAsync(Windows.System.User user, HSTRING desiredName, Windows.Storage.CreationCollisionOption option, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
}

@uuid("887411eb-7f54-4732-a5f0-5e43e3b8c2f5")
@WinrtFactory("Windows.Storage.FileIO")
interface IFileIOStatics : IInspectable
{
extern(Windows):
	HRESULT abi_ReadTextAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(HSTRING)* return_textOperation);
	HRESULT abi_ReadTextWithEncodingAsync(Windows.Storage.IStorageFile file, Windows.Storage.Streams.UnicodeEncoding encoding, Windows.Foundation.IAsyncOperation!(HSTRING)* return_textOperation);
	HRESULT abi_WriteTextAsync(Windows.Storage.IStorageFile file, HSTRING contents, Windows.Foundation.IAsyncAction* return_textOperation);
	HRESULT abi_WriteTextWithEncodingAsync(Windows.Storage.IStorageFile file, HSTRING contents, Windows.Storage.Streams.UnicodeEncoding encoding, Windows.Foundation.IAsyncAction* return_textOperation);
	HRESULT abi_AppendTextAsync(Windows.Storage.IStorageFile file, HSTRING contents, Windows.Foundation.IAsyncAction* return_textOperation);
	HRESULT abi_AppendTextWithEncodingAsync(Windows.Storage.IStorageFile file, HSTRING contents, Windows.Storage.Streams.UnicodeEncoding encoding, Windows.Foundation.IAsyncAction* return_textOperation);
	HRESULT abi_ReadLinesAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(HSTRING))* return_linesOperation);
	HRESULT abi_ReadLinesWithEncodingAsync(Windows.Storage.IStorageFile file, Windows.Storage.Streams.UnicodeEncoding encoding, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(HSTRING))* return_linesOperation);
	HRESULT abi_WriteLinesAsync(Windows.Storage.IStorageFile file, Windows.Foundation.Collections.IIterable!(HSTRING) lines, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_WriteLinesWithEncodingAsync(Windows.Storage.IStorageFile file, Windows.Foundation.Collections.IIterable!(HSTRING) lines, Windows.Storage.Streams.UnicodeEncoding encoding, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_AppendLinesAsync(Windows.Storage.IStorageFile file, Windows.Foundation.Collections.IIterable!(HSTRING) lines, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_AppendLinesWithEncodingAsync(Windows.Storage.IStorageFile file, Windows.Foundation.Collections.IIterable!(HSTRING) lines, Windows.Storage.Streams.UnicodeEncoding encoding, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_ReadBufferAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_operation);
	HRESULT abi_WriteBufferAsync(Windows.Storage.IStorageFile file, Windows.Storage.Streams.IBuffer buffer, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_WriteBytesAsync(Windows.Storage.IStorageFile file, UINT32 __bufferSize, ubyte* buffer, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("5d115e66-27e8-492f-b8e5-2f90896cd4cd")
@WinrtFactory("Windows.Storage.KnownFolders")
interface IKnownFoldersCameraRollStatics : IInspectable
{
extern(Windows):
	HRESULT get_CameraRoll(Windows.Storage.StorageFolder* return_value);
}

@uuid("dad5ecd6-306f-4d6a-b496-46ba8eb106ce")
@WinrtFactory("Windows.Storage.KnownFolders")
interface IKnownFoldersPlaylistsStatics : IInspectable
{
extern(Windows):
	HRESULT get_Playlists(Windows.Storage.StorageFolder* return_value);
}

@uuid("055c93ea-253d-467c-b6ca-a97da1e9a18d")
@WinrtFactory("Windows.Storage.KnownFolders")
interface IKnownFoldersSavedPicturesStatics : IInspectable
{
extern(Windows):
	HRESULT get_SavedPictures(Windows.Storage.StorageFolder* return_value);
}

@uuid("5a2a7520-4802-452d-9ad9-4351ada7ec35")
@WinrtFactory("Windows.Storage.KnownFolders")
interface IKnownFoldersStatics : IInspectable
{
extern(Windows):
	HRESULT get_MusicLibrary(Windows.Storage.StorageFolder* return_value);
	HRESULT get_PicturesLibrary(Windows.Storage.StorageFolder* return_value);
	HRESULT get_VideosLibrary(Windows.Storage.StorageFolder* return_value);
	HRESULT get_DocumentsLibrary(Windows.Storage.StorageFolder* return_value);
	HRESULT get_HomeGroup(Windows.Storage.StorageFolder* return_value);
	HRESULT get_RemovableDevices(Windows.Storage.StorageFolder* return_value);
	HRESULT get_MediaServerDevices(Windows.Storage.StorageFolder* return_value);
}

@uuid("194bd0cd-cf6e-4d07-9d53-e9163a2536e9")
@WinrtFactory("Windows.Storage.KnownFolders")
interface IKnownFoldersStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_Objects3D(Windows.Storage.StorageFolder* return_value);
	HRESULT get_AppCaptures(Windows.Storage.StorageFolder* return_value);
	HRESULT get_RecordedCalls(Windows.Storage.StorageFolder* return_value);
}

@uuid("c5194341-9742-4ed5-823d-fc1401148764")
@WinrtFactory("Windows.Storage.KnownFolders")
interface IKnownFoldersStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_GetFolderForUserAsync(Windows.System.User user, Windows.Storage.KnownFolderId folderId, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
}

@uuid("0f2f3758-8ec7-4381-922b-8f6c07d288f3")
@WinrtFactory("Windows.Storage.PathIO")
interface IPathIOStatics : IInspectable
{
extern(Windows):
	HRESULT abi_ReadTextAsync(HSTRING absolutePath, Windows.Foundation.IAsyncOperation!(HSTRING)* return_textOperation);
	HRESULT abi_ReadTextWithEncodingAsync(HSTRING absolutePath, Windows.Storage.Streams.UnicodeEncoding encoding, Windows.Foundation.IAsyncOperation!(HSTRING)* return_textOperation);
	HRESULT abi_WriteTextAsync(HSTRING absolutePath, HSTRING contents, Windows.Foundation.IAsyncAction* return_textOperation);
	HRESULT abi_WriteTextWithEncodingAsync(HSTRING absolutePath, HSTRING contents, Windows.Storage.Streams.UnicodeEncoding encoding, Windows.Foundation.IAsyncAction* return_textOperation);
	HRESULT abi_AppendTextAsync(HSTRING absolutePath, HSTRING contents, Windows.Foundation.IAsyncAction* return_textOperation);
	HRESULT abi_AppendTextWithEncodingAsync(HSTRING absolutePath, HSTRING contents, Windows.Storage.Streams.UnicodeEncoding encoding, Windows.Foundation.IAsyncAction* return_textOperation);
	HRESULT abi_ReadLinesAsync(HSTRING absolutePath, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(HSTRING))* return_linesOperation);
	HRESULT abi_ReadLinesWithEncodingAsync(HSTRING absolutePath, Windows.Storage.Streams.UnicodeEncoding encoding, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(HSTRING))* return_linesOperation);
	HRESULT abi_WriteLinesAsync(HSTRING absolutePath, Windows.Foundation.Collections.IIterable!(HSTRING) lines, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_WriteLinesWithEncodingAsync(HSTRING absolutePath, Windows.Foundation.Collections.IIterable!(HSTRING) lines, Windows.Storage.Streams.UnicodeEncoding encoding, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_AppendLinesAsync(HSTRING absolutePath, Windows.Foundation.Collections.IIterable!(HSTRING) lines, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_AppendLinesWithEncodingAsync(HSTRING absolutePath, Windows.Foundation.Collections.IIterable!(HSTRING) lines, Windows.Storage.Streams.UnicodeEncoding encoding, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_ReadBufferAsync(HSTRING absolutePath, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_operation);
	HRESULT abi_WriteBufferAsync(HSTRING absolutePath, Windows.Storage.Streams.IBuffer buffer, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_WriteBytesAsync(HSTRING absolutePath, UINT32 __bufferSize, ubyte* buffer, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("033508a2-781a-437a-b078-3f32badcfe47")
@WinrtFactory("Windows.Storage.SetVersionDeferral")
interface ISetVersionDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("b9c76b9b-1056-4e69-8330-162619956f9b")
@WinrtFactory("Windows.Storage.SetVersionRequest")
interface ISetVersionRequest : IInspectable
{
extern(Windows):
	HRESULT get_CurrentVersion(UINT32* return_currentVersion);
	HRESULT get_DesiredVersion(UINT32* return_desiredVersion);
	HRESULT abi_GetDeferral(Windows.Storage.SetVersionDeferral* return_deferral);
}

@uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea")
interface IStorageFile_Base : IInspectable
{
extern(Windows):
	HRESULT get_FileType(HSTRING* return_value);
	HRESULT get_ContentType(HSTRING* return_value);
	HRESULT abi_OpenAsync(Windows.Storage.FileAccessMode accessMode, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream)* return_operation);
	HRESULT abi_OpenTransactedWriteAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageStreamTransaction)* return_operation);
	HRESULT abi_CopyOverloadDefaultNameAndOptions(Windows.Storage.IStorageFolder destinationFolder, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_CopyOverloadDefaultOptions(Windows.Storage.IStorageFolder destinationFolder, HSTRING desiredNewName, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_CopyOverload(Windows.Storage.IStorageFolder destinationFolder, HSTRING desiredNewName, Windows.Storage.NameCollisionOption option, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_CopyAndReplaceAsync(Windows.Storage.IStorageFile fileToReplace, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_MoveOverloadDefaultNameAndOptions(Windows.Storage.IStorageFolder destinationFolder, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_MoveOverloadDefaultOptions(Windows.Storage.IStorageFolder destinationFolder, HSTRING desiredNewName, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_MoveOverload(Windows.Storage.IStorageFolder destinationFolder, HSTRING desiredNewName, Windows.Storage.NameCollisionOption option, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_MoveAndReplaceAsync(Windows.Storage.IStorageFile fileToReplace, Windows.Foundation.IAsyncAction* return_operation);
}
@uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea")
interface IStorageFile : IStorageFile_Base, Windows.Storage.IStorageItem, Windows.Storage.Streams.IRandomAccessStreamReference, Windows.Storage.Streams.IInputStreamReference {}

@uuid("954e4bcf-0a77-42fb-b777-c2ed58a52e44")
interface IStorageFile2 : IInspectable
{
extern(Windows):
	HRESULT abi_OpenWithOptionsAsync(Windows.Storage.FileAccessMode accessMode, Windows.Storage.StorageOpenOptions options, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream)* return_operation);
	HRESULT abi_OpenTransactedWriteWithOptionsAsync(Windows.Storage.StorageOpenOptions options, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageStreamTransaction)* return_operation);
}

@uuid("afcbbe9b-582b-4133-9648-e44ca46ee491")
interface IStorageFilePropertiesWithAvailability : IInspectable
{
extern(Windows):
	HRESULT get_IsAvailable(bool* return_value);
}

@uuid("5984c710-daf2-43c8-8bb4-a4d3eacfd03f")
@WinrtFactory("Windows.Storage.StorageFile")
interface IStorageFileStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetFileFromPathAsync(HSTRING path, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_GetFileFromApplicationUriAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_CreateStreamedFileAsync(HSTRING displayNameWithExtension, Windows.Storage.StreamedFileDataRequestedHandler dataRequested, Windows.Storage.Streams.IRandomAccessStreamReference thumbnail, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_ReplaceWithStreamedFileAsync(Windows.Storage.IStorageFile fileToReplace, Windows.Storage.StreamedFileDataRequestedHandler dataRequested, Windows.Storage.Streams.IRandomAccessStreamReference thumbnail, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_CreateStreamedFileFromUriAsync(HSTRING displayNameWithExtension, Windows.Foundation.Uri uri, Windows.Storage.Streams.IRandomAccessStreamReference thumbnail, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_ReplaceWithStreamedFileFromUriAsync(Windows.Storage.IStorageFile fileToReplace, Windows.Foundation.Uri uri, Windows.Storage.Streams.IRandomAccessStreamReference thumbnail, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
}

@uuid("72d1cb78-b3ef-4f75-a80b-6fd9dae2944b")
interface IStorageFolder_Base : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFileAsyncOverloadDefaultOptions(HSTRING desiredName, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_CreateFileAsync(HSTRING desiredName, Windows.Storage.CreationCollisionOption options, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_CreateFolderAsyncOverloadDefaultOptions(HSTRING desiredName, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
	HRESULT abi_CreateFolderAsync(HSTRING desiredName, Windows.Storage.CreationCollisionOption options, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
	HRESULT abi_GetFileAsync(HSTRING name, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_GetFolderAsync(HSTRING name, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
	HRESULT abi_GetItemAsync(HSTRING name, Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem)* return_operation);
	HRESULT abi_GetFilesAsyncOverloadDefaultOptionsStartAndCount(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile))* return_operation);
	HRESULT abi_GetFoldersAsyncOverloadDefaultOptionsStartAndCount(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder))* return_operation);
	HRESULT abi_GetItemsAsyncOverloadDefaultStartAndCount(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem))* return_operation);
}
@uuid("72d1cb78-b3ef-4f75-a80b-6fd9dae2944b")
interface IStorageFolder : IStorageFolder_Base, Windows.Storage.IStorageItem {}

@uuid("e827e8b9-08d9-4a8e-a0ac-fe5ed3cbbbd3")
interface IStorageFolder2 : IInspectable
{
extern(Windows):
	HRESULT abi_TryGetItemAsync(HSTRING name, Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem)* return_operation);
}

@uuid("08f327ff-85d5-48b9-aee9-28511e339f9f")
@WinrtFactory("Windows.Storage.StorageFolder")
interface IStorageFolderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetFolderFromPathAsync(HSTRING path, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
}

@uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30")
interface IStorageItem : IInspectable
{
extern(Windows):
	HRESULT abi_RenameAsyncOverloadDefaultOptions(HSTRING desiredName, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_RenameAsync(HSTRING desiredName, Windows.Storage.NameCollisionOption option, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_DeleteAsyncOverloadDefaultOptions(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_DeleteAsync(Windows.Storage.StorageDeleteOption option, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_GetBasicPropertiesAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.BasicProperties)* return_operation);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Path(HSTRING* return_value);
	HRESULT get_Attributes(Windows.Storage.FileAttributes* return_value);
	HRESULT get_DateCreated(Windows.Foundation.DateTime* return_value);
	HRESULT abi_IsOfType(Windows.Storage.StorageItemTypes type, bool* return_value);
}

@uuid("53f926d2-083c-4283-b45b-81c007237e44")
interface IStorageItem2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetParentAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
	HRESULT abi_IsEqual(Windows.Storage.IStorageItem item, bool* return_value);
}
@uuid("53f926d2-083c-4283-b45b-81c007237e44")
interface IStorageItem2 : IStorageItem2_Base, Windows.Storage.IStorageItem {}

@uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c")
interface IStorageItemProperties : IInspectable
{
extern(Windows):
	HRESULT abi_GetThumbnailAsyncOverloadDefaultSizeDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode, Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail)* return_operation);
	HRESULT abi_GetThumbnailAsyncOverloadDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize, Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail)* return_operation);
	HRESULT abi_GetThumbnailAsync(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize, Windows.Storage.FileProperties.ThumbnailOptions options, Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail)* return_operation);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_DisplayType(HSTRING* return_value);
	HRESULT get_FolderRelativeId(HSTRING* return_value);
	HRESULT get_Properties(Windows.Storage.FileProperties.StorageItemContentProperties* return_value);
}

@uuid("8e86a951-04b9-4bd2-929d-fef3f71621d0")
interface IStorageItemProperties2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetScaledImageAsThumbnailAsyncOverloadDefaultSizeDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode, Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail)* return_operation);
	HRESULT abi_GetScaledImageAsThumbnailAsyncOverloadDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize, Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail)* return_operation);
	HRESULT abi_GetScaledImageAsThumbnailAsync(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize, Windows.Storage.FileProperties.ThumbnailOptions options, Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail)* return_operation);
}
@uuid("8e86a951-04b9-4bd2-929d-fef3f71621d0")
interface IStorageItemProperties2 : IStorageItemProperties2_Base, Windows.Storage.IStorageItemProperties {}

@uuid("861bf39b-6368-4dee-b40e-74684a5ce714")
interface IStorageItemPropertiesWithProvider_Base : IInspectable
{
extern(Windows):
	HRESULT get_Provider(Windows.Storage.StorageProvider* return_value);
}
@uuid("861bf39b-6368-4dee-b40e-74684a5ce714")
interface IStorageItemPropertiesWithProvider : IStorageItemPropertiesWithProvider_Base, Windows.Storage.IStorageItemProperties {}

@uuid("1edd7103-0e5e-4d6c-b5e8-9318983d6a03")
@WinrtFactory("Windows.Storage.StorageLibrary")
interface IStorageLibrary : IInspectable
{
extern(Windows):
	HRESULT abi_RequestAddFolderAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
	HRESULT abi_RequestRemoveFolderAsync(Windows.Storage.StorageFolder folder, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT get_Folders(Windows.Foundation.Collections.IObservableVector!(Windows.Storage.StorageFolder)* return_value);
	HRESULT get_SaveFolder(Windows.Storage.StorageFolder* return_value);
	HRESULT add_DefinitionChanged(Windows.Foundation.TypedEventHandler!(Windows.Storage.StorageLibrary, IInspectable) handler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_DefinitionChanged(EventRegistrationToken eventCookie);
}

@uuid("5b0ce348-fcb3-4031-afb0-a68d7bd44534")
@WinrtFactory("Windows.Storage.StorageLibrary")
interface IStorageLibrary2 : IInspectable
{
extern(Windows):
	HRESULT get_ChangeTracker(Windows.Storage.StorageLibraryChangeTracker* return_value);
}

@uuid("00980b23-2be2-4909-aa48-159f5203a51e")
@WinrtFactory("Windows.Storage.StorageLibraryChange")
interface IStorageLibraryChange : IInspectable
{
extern(Windows):
	HRESULT get_ChangeType(Windows.Storage.StorageLibraryChangeType* return_value);
	HRESULT get_Path(HSTRING* return_value);
	HRESULT get_PreviousPath(HSTRING* return_value);
	HRESULT abi_IsOfType(Windows.Storage.StorageItemTypes type, bool* return_value);
	HRESULT abi_GetStorageItemAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem)* return_operation);
}

@uuid("f205bc83-fca2-41f9-8954-ee2e991eb96f")
@WinrtFactory("Windows.Storage.StorageLibraryChangeReader")
interface IStorageLibraryChangeReader : IInspectable
{
extern(Windows):
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageLibraryChange))* return_operation);
	HRESULT abi_AcceptChangesAsync(Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("9e157316-6073-44f6-9681-7492d1286c90")
@WinrtFactory("Windows.Storage.StorageLibraryChangeTracker")
interface IStorageLibraryChangeTracker : IInspectable
{
extern(Windows):
	HRESULT abi_GetChangeReader(Windows.Storage.StorageLibraryChangeReader* return_value);
	HRESULT abi_Enable();
	HRESULT abi_Reset();
}

@uuid("4208a6db-684a-49c6-9e59-90121ee050d6")
@WinrtFactory("Windows.Storage.StorageLibrary")
interface IStorageLibraryStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetLibraryAsync(Windows.Storage.KnownLibraryId libraryId, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageLibrary)* return_operation);
}

@uuid("ffb08ddc-fa75-4695-b9d1-7f81f97832e3")
@WinrtFactory("Windows.Storage.StorageLibrary")
interface IStorageLibraryStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetLibraryForUserAsync(Windows.System.User user, Windows.Storage.KnownLibraryId libraryId, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageLibrary)* return_operation);
}

@uuid("e705eed4-d478-47d6-ba46-1a8ebe114a20")
@WinrtFactory("Windows.Storage.StorageProvider")
interface IStorageProvider : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
}

@uuid("f67cf363-a53d-4d94-ae2c-67232d93acdd")
@WinrtFactory("Windows.Storage.StorageStreamTransaction")
interface IStorageStreamTransaction_Base : IInspectable
{
extern(Windows):
	HRESULT get_Stream(Windows.Storage.Streams.IRandomAccessStream* return_value);
	HRESULT abi_CommitAsync(Windows.Foundation.IAsyncAction* return_operation);
}
@uuid("f67cf363-a53d-4d94-ae2c-67232d93acdd")
@WinrtFactory("Windows.Storage.StorageStreamTransaction")
interface IStorageStreamTransaction : IStorageStreamTransaction_Base, Windows.Foundation.IClosable {}

@uuid("1673fcce-dabd-4d50-beee-180b8a8191b6")
interface IStreamedFileDataRequest : IInspectable
{
extern(Windows):
	HRESULT abi_FailAndClose(Windows.Storage.StreamedFileFailureMode failureMode);
}

@uuid("3f8f38b7-308c-47e1-924d-8645348e5db7")
@WinrtFactory("Windows.Storage.SystemAudioProperties")
interface ISystemAudioProperties : IInspectable
{
extern(Windows):
	HRESULT get_EncodingBitrate(HSTRING* return_value);
}

@uuid("c0f46eb4-c174-481a-bc25-921986f6a6f3")
@WinrtFactory("Windows.Storage.SystemGPSProperties")
interface ISystemGPSProperties : IInspectable
{
extern(Windows):
	HRESULT get_LatitudeDecimal(HSTRING* return_value);
	HRESULT get_LongitudeDecimal(HSTRING* return_value);
}

@uuid("011b2e30-8b39-4308-bea1-e8aa61e47826")
@WinrtFactory("Windows.Storage.SystemImageProperties")
interface ISystemImageProperties : IInspectable
{
extern(Windows):
	HRESULT get_HorizontalSize(HSTRING* return_value);
	HRESULT get_VerticalSize(HSTRING* return_value);
}

@uuid("a42b3316-8415-40dc-8c44-98361d235430")
@WinrtFactory("Windows.Storage.SystemMediaProperties")
interface ISystemMediaProperties : IInspectable
{
extern(Windows):
	HRESULT get_Duration(HSTRING* return_value);
	HRESULT get_Producer(HSTRING* return_value);
	HRESULT get_Publisher(HSTRING* return_value);
	HRESULT get_SubTitle(HSTRING* return_value);
	HRESULT get_Writer(HSTRING* return_value);
	HRESULT get_Year(HSTRING* return_value);
}

@uuid("b47988d5-67af-4bc3-8d39-5b89022026a1")
@WinrtFactory("Windows.Storage.SystemMusicProperties")
interface ISystemMusicProperties : IInspectable
{
extern(Windows):
	HRESULT get_AlbumArtist(HSTRING* return_value);
	HRESULT get_AlbumTitle(HSTRING* return_value);
	HRESULT get_Artist(HSTRING* return_value);
	HRESULT get_Composer(HSTRING* return_value);
	HRESULT get_Conductor(HSTRING* return_value);
	HRESULT get_DisplayArtist(HSTRING* return_value);
	HRESULT get_Genre(HSTRING* return_value);
	HRESULT get_TrackNumber(HSTRING* return_value);
}

@uuid("4734fc3d-ab21-4424-b735-f4353a56c8fc")
@WinrtFactory("Windows.Storage.SystemPhotoProperties")
interface ISystemPhotoProperties : IInspectable
{
extern(Windows):
	HRESULT get_CameraManufacturer(HSTRING* return_value);
	HRESULT get_CameraModel(HSTRING* return_value);
	HRESULT get_DateTaken(HSTRING* return_value);
	HRESULT get_Orientation(HSTRING* return_value);
	HRESULT get_PeopleNames(HSTRING* return_value);
}

@uuid("917a71c1-85f3-4dd1-b001-a50bfd21c8d2")
@WinrtFactory("Windows.Storage.SystemProperties")
interface ISystemProperties : IInspectable
{
extern(Windows):
	HRESULT get_Author(HSTRING* return_value);
	HRESULT get_Comment(HSTRING* return_value);
	HRESULT get_ItemNameDisplay(HSTRING* return_value);
	HRESULT get_Keywords(HSTRING* return_value);
	HRESULT get_Rating(HSTRING* return_value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT get_Audio(Windows.Storage.SystemAudioProperties* return_value);
	HRESULT get_GPS(Windows.Storage.SystemGPSProperties* return_value);
	HRESULT get_Media(Windows.Storage.SystemMediaProperties* return_value);
	HRESULT get_Music(Windows.Storage.SystemMusicProperties* return_value);
	HRESULT get_Photo(Windows.Storage.SystemPhotoProperties* return_value);
	HRESULT get_Video(Windows.Storage.SystemVideoProperties* return_value);
	HRESULT get_Image(Windows.Storage.SystemImageProperties* return_value);
}

@uuid("2040f715-67f8-4322-9b80-4fa9fefb83e8")
@WinrtFactory("Windows.Storage.SystemVideoProperties")
interface ISystemVideoProperties : IInspectable
{
extern(Windows):
	HRESULT get_Director(HSTRING* return_value);
	HRESULT get_FrameHeight(HSTRING* return_value);
	HRESULT get_FrameWidth(HSTRING* return_value);
	HRESULT get_Orientation(HSTRING* return_value);
	HRESULT get_TotalBitrate(HSTRING* return_value);
}

interface ApplicationData : Windows.Storage.IApplicationData, Windows.Storage.IApplicationData2, Windows.Storage.IApplicationData3
{
extern(Windows):
	final UINT32 Version()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.IApplicationData)this.asInterface(uuid("c3da6fb7-b744-4b45-b0b8-223a0938d0dc"))).get_Version(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetVersionAsync(UINT32 desiredVersion, Windows.Storage.ApplicationDataSetVersionHandler handler)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IApplicationData)this.asInterface(uuid("c3da6fb7-b744-4b45-b0b8-223a0938d0dc"))).abi_SetVersionAsync(desiredVersion, handler, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ClearAllAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IApplicationData)this.asInterface(uuid("c3da6fb7-b744-4b45-b0b8-223a0938d0dc"))).abi_ClearAllAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ClearAsync(Windows.Storage.ApplicationDataLocality locality)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IApplicationData)this.asInterface(uuid("c3da6fb7-b744-4b45-b0b8-223a0938d0dc"))).abi_ClearAsync(locality, &_ret));
		return _ret;
	}
	final Windows.Storage.ApplicationDataContainer LocalSettings()
	{
		Windows.Storage.ApplicationDataContainer _ret;
		Debug.OK((cast(Windows.Storage.IApplicationData)this.asInterface(uuid("c3da6fb7-b744-4b45-b0b8-223a0938d0dc"))).get_LocalSettings(&_ret));
		return _ret;
	}
	final Windows.Storage.ApplicationDataContainer RoamingSettings()
	{
		Windows.Storage.ApplicationDataContainer _ret;
		Debug.OK((cast(Windows.Storage.IApplicationData)this.asInterface(uuid("c3da6fb7-b744-4b45-b0b8-223a0938d0dc"))).get_RoamingSettings(&_ret));
		return _ret;
	}
	final Windows.Storage.StorageFolder LocalFolder()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK((cast(Windows.Storage.IApplicationData)this.asInterface(uuid("c3da6fb7-b744-4b45-b0b8-223a0938d0dc"))).get_LocalFolder(&_ret));
		return _ret;
	}
	final Windows.Storage.StorageFolder RoamingFolder()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK((cast(Windows.Storage.IApplicationData)this.asInterface(uuid("c3da6fb7-b744-4b45-b0b8-223a0938d0dc"))).get_RoamingFolder(&_ret));
		return _ret;
	}
	final Windows.Storage.StorageFolder TemporaryFolder()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK((cast(Windows.Storage.IApplicationData)this.asInterface(uuid("c3da6fb7-b744-4b45-b0b8-223a0938d0dc"))).get_TemporaryFolder(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnDataChanged(void delegate(Windows.Storage.ApplicationData, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Storage.IApplicationData)this.asInterface(uuid("c3da6fb7-b744-4b45-b0b8-223a0938d0dc"))).add_DataChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.ApplicationData, IInspectable), Windows.Storage.ApplicationData, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeDataChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Storage.IApplicationData)this.asInterface(uuid("c3da6fb7-b744-4b45-b0b8-223a0938d0dc"))).remove_DataChanged(token));
	}
	final void SignalDataChanged()
	{
		Debug.OK((cast(Windows.Storage.IApplicationData)this.asInterface(uuid("c3da6fb7-b744-4b45-b0b8-223a0938d0dc"))).abi_SignalDataChanged());
	}
	final ulong RoamingStorageQuota()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Storage.IApplicationData)this.asInterface(uuid("c3da6fb7-b744-4b45-b0b8-223a0938d0dc"))).get_RoamingStorageQuota(&_ret));
		return _ret;
	}
	final Windows.Storage.StorageFolder LocalCacheFolder()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK((cast(Windows.Storage.IApplicationData2)this.asInterface(uuid("9e65cd69-0ba3-4e32-be29-b02de6607638"))).get_LocalCacheFolder(&_ret));
		return _ret;
	}
	final Windows.Storage.StorageFolder GetPublisherCacheFolder(HSTRING folderName)
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK((cast(Windows.Storage.IApplicationData3)this.asInterface(uuid("dc222cf4-2772-4c1d-aa2c-c9f743ade8d1"))).abi_GetPublisherCacheFolder(folderName, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ClearPublisherCacheFolderAsync(HSTRING folderName)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IApplicationData3)this.asInterface(uuid("dc222cf4-2772-4c1d-aa2c-c9f743ade8d1"))).abi_ClearPublisherCacheFolderAsync(folderName, &_ret));
		return _ret;
	}
	final Windows.Storage.StorageFolder SharedLocalFolder()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK((cast(Windows.Storage.IApplicationData3)this.asInterface(uuid("dc222cf4-2772-4c1d-aa2c-c9f743ade8d1"))).get_SharedLocalFolder(&_ret));
		return _ret;
	}

	private static Windows.Storage.IApplicationDataStatics _staticInstance;
	public static Windows.Storage.IApplicationDataStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Storage.IApplicationDataStatics);
		return _staticInstance;
	}
	static Windows.Storage.ApplicationData Current()
	{
		Windows.Storage.ApplicationData _ret;
		Debug.OK(staticInstance.get_Current(&_ret));
		return _ret;
	}
}

interface ApplicationDataCompositeValue : Windows.Foundation.Collections.IPropertySet, Windows.Foundation.Collections.IObservableMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))
{
extern(Windows):
	final void removeMapChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IObservableMap!(HSTRING, IInspectable))this).remove_MapChanged(token));
	}
	final  IInspectable Lookup(HSTRING key)
	{
		 IInspectable _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(HSTRING key)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_HasKey(key, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 IInspectable) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  IInspectable) _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(HSTRING key,	IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_Insert(key, value, &_ret));
		return _ret;
	}
	final void Remove(HSTRING key)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_Remove(key));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable)))this).abi_First(out_first));
	}
	static ApplicationDataCompositeValue New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ApplicationDataCompositeValue).abi_ActivateInstance(&ret));
		return cast(ApplicationDataCompositeValue) ret;
	}
}

interface ApplicationDataContainer : Windows.Storage.IApplicationDataContainer
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IApplicationDataContainer)this.asInterface(uuid("c5aefd1e-f467-40ba-8566-ab640a441e1d"))).get_Name(&_ret));
		return _ret;
	}
	final Windows.Storage.ApplicationDataLocality Locality()
	{
		Windows.Storage.ApplicationDataLocality _ret;
		Debug.OK((cast(Windows.Storage.IApplicationDataContainer)this.asInterface(uuid("c5aefd1e-f467-40ba-8566-ab640a441e1d"))).get_Locality(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IPropertySet Values()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK((cast(Windows.Storage.IApplicationDataContainer)this.asInterface(uuid("c5aefd1e-f467-40ba-8566-ab640a441e1d"))).get_Values(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Storage.ApplicationDataContainer) Containers()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Storage.ApplicationDataContainer) _ret;
		Debug.OK((cast(Windows.Storage.IApplicationDataContainer)this.asInterface(uuid("c5aefd1e-f467-40ba-8566-ab640a441e1d"))).get_Containers(&_ret));
		return _ret;
	}
	final Windows.Storage.ApplicationDataContainer CreateContainer(HSTRING name, Windows.Storage.ApplicationDataCreateDisposition disposition)
	{
		Windows.Storage.ApplicationDataContainer _ret;
		Debug.OK((cast(Windows.Storage.IApplicationDataContainer)this.asInterface(uuid("c5aefd1e-f467-40ba-8566-ab640a441e1d"))).abi_CreateContainer(name, disposition, &_ret));
		return _ret;
	}
	final void DeleteContainer(HSTRING name)
	{
		Debug.OK((cast(Windows.Storage.IApplicationDataContainer)this.asInterface(uuid("c5aefd1e-f467-40ba-8566-ab640a441e1d"))).abi_DeleteContainer(name));
	}
}

interface ApplicationDataContainerSettings : Windows.Foundation.Collections.IPropertySet, Windows.Foundation.Collections.IObservableMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))
{
extern(Windows):
	final void removeMapChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IObservableMap!(HSTRING, IInspectable))this).remove_MapChanged(token));
	}
	final  IInspectable Lookup(HSTRING key)
	{
		 IInspectable _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(HSTRING key)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_HasKey(key, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 IInspectable) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  IInspectable) _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(HSTRING key,	IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_Insert(key, value, &_ret));
		return _ret;
	}
	final void Remove(HSTRING key)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_Remove(key));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable)))this).abi_First(out_first));
	}
}

interface CachedFileManager
{
	private static Windows.Storage.ICachedFileManagerStatics _staticInstance;
	public static Windows.Storage.ICachedFileManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Storage.ICachedFileManagerStatics);
		return _staticInstance;
	}
	static void DeferUpdates(Windows.Storage.IStorageFile file)
	{
		Debug.OK(staticInstance.abi_DeferUpdates(file));
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.Provider.FileUpdateStatus) CompleteUpdatesAsync(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Provider.FileUpdateStatus) _ret;
		Debug.OK(staticInstance.abi_CompleteUpdatesAsync(file, &_ret));
		return _ret;
	}
}

interface DownloadsFolder
{
	private static Windows.Storage.IDownloadsFolderStatics _staticInstance;
	public static Windows.Storage.IDownloadsFolderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Storage.IDownloadsFolderStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) CreateFileAsync(HSTRING desiredName)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(staticInstance.abi_CreateFileAsync(desiredName, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) CreateFolderAsync(HSTRING desiredName)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK(staticInstance.abi_CreateFolderAsync(desiredName, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) CreateFileWithCollisionOptionAsync(HSTRING desiredName, Windows.Storage.CreationCollisionOption option)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(staticInstance.abi_CreateFileWithCollisionOptionAsync(desiredName, option, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) CreateFolderWithCollisionOptionAsync(HSTRING desiredName, Windows.Storage.CreationCollisionOption option)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK(staticInstance.abi_CreateFolderWithCollisionOptionAsync(desiredName, option, &_ret));
		return _ret;
	}
}

interface FileIO
{
	private static Windows.Storage.IFileIOStatics _staticInstance;
	public static Windows.Storage.IFileIOStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Storage.IFileIOStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(HSTRING) ReadTextAsync(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.abi_ReadTextAsync(file, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(HSTRING) ReadTextWithEncodingAsync(Windows.Storage.IStorageFile file, Windows.Storage.Streams.UnicodeEncoding encoding)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.abi_ReadTextWithEncodingAsync(file, encoding, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction WriteTextAsync(Windows.Storage.IStorageFile file, HSTRING contents)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_WriteTextAsync(file, contents, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction WriteTextWithEncodingAsync(Windows.Storage.IStorageFile file, HSTRING contents, Windows.Storage.Streams.UnicodeEncoding encoding)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_WriteTextWithEncodingAsync(file, contents, encoding, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction AppendTextAsync(Windows.Storage.IStorageFile file, HSTRING contents)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_AppendTextAsync(file, contents, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction AppendTextWithEncodingAsync(Windows.Storage.IStorageFile file, HSTRING contents, Windows.Storage.Streams.UnicodeEncoding encoding)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_AppendTextWithEncodingAsync(file, contents, encoding, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(HSTRING)) ReadLinesAsync(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(HSTRING)) _ret;
		Debug.OK(staticInstance.abi_ReadLinesAsync(file, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(HSTRING)) ReadLinesWithEncodingAsync(Windows.Storage.IStorageFile file, Windows.Storage.Streams.UnicodeEncoding encoding)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(HSTRING)) _ret;
		Debug.OK(staticInstance.abi_ReadLinesWithEncodingAsync(file, encoding, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction WriteLinesAsync(Windows.Storage.IStorageFile file, Windows.Foundation.Collections.IIterable!(HSTRING) lines)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_WriteLinesAsync(file, lines, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction WriteLinesWithEncodingAsync(Windows.Storage.IStorageFile file, Windows.Foundation.Collections.IIterable!(HSTRING) lines, Windows.Storage.Streams.UnicodeEncoding encoding)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_WriteLinesWithEncodingAsync(file, lines, encoding, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction AppendLinesAsync(Windows.Storage.IStorageFile file, Windows.Foundation.Collections.IIterable!(HSTRING) lines)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_AppendLinesAsync(file, lines, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction AppendLinesWithEncodingAsync(Windows.Storage.IStorageFile file, Windows.Foundation.Collections.IIterable!(HSTRING) lines, Windows.Storage.Streams.UnicodeEncoding encoding)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_AppendLinesWithEncodingAsync(file, lines, encoding, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) ReadBufferAsync(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK(staticInstance.abi_ReadBufferAsync(file, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction WriteBufferAsync(Windows.Storage.IStorageFile file, Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_WriteBufferAsync(file, buffer, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction WriteBytesAsync(Windows.Storage.IStorageFile file, UINT32 __bufferSize, ubyte* buffer)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_WriteBytesAsync(file, __bufferSize, buffer, &_ret));
		return _ret;
	}
}

interface KnownFolders
{
	private static Windows.Storage.IKnownFoldersCameraRollStatics _staticInstance;
	public static Windows.Storage.IKnownFoldersCameraRollStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Storage.IKnownFoldersCameraRollStatics);
		return _staticInstance;
	}
	static Windows.Storage.StorageFolder CameraRoll()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK(staticInstance.get_CameraRoll(&_ret));
		return _ret;
	}
}

interface PathIO
{
	private static Windows.Storage.IPathIOStatics _staticInstance;
	public static Windows.Storage.IPathIOStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Storage.IPathIOStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(HSTRING) ReadTextAsync(HSTRING absolutePath)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.abi_ReadTextAsync(absolutePath, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(HSTRING) ReadTextWithEncodingAsync(HSTRING absolutePath, Windows.Storage.Streams.UnicodeEncoding encoding)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.abi_ReadTextWithEncodingAsync(absolutePath, encoding, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction WriteTextAsync(HSTRING absolutePath, HSTRING contents)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_WriteTextAsync(absolutePath, contents, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction WriteTextWithEncodingAsync(HSTRING absolutePath, HSTRING contents, Windows.Storage.Streams.UnicodeEncoding encoding)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_WriteTextWithEncodingAsync(absolutePath, contents, encoding, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction AppendTextAsync(HSTRING absolutePath, HSTRING contents)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_AppendTextAsync(absolutePath, contents, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction AppendTextWithEncodingAsync(HSTRING absolutePath, HSTRING contents, Windows.Storage.Streams.UnicodeEncoding encoding)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_AppendTextWithEncodingAsync(absolutePath, contents, encoding, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(HSTRING)) ReadLinesAsync(HSTRING absolutePath)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(HSTRING)) _ret;
		Debug.OK(staticInstance.abi_ReadLinesAsync(absolutePath, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(HSTRING)) ReadLinesWithEncodingAsync(HSTRING absolutePath, Windows.Storage.Streams.UnicodeEncoding encoding)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(HSTRING)) _ret;
		Debug.OK(staticInstance.abi_ReadLinesWithEncodingAsync(absolutePath, encoding, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction WriteLinesAsync(HSTRING absolutePath, Windows.Foundation.Collections.IIterable!(HSTRING) lines)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_WriteLinesAsync(absolutePath, lines, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction WriteLinesWithEncodingAsync(HSTRING absolutePath, Windows.Foundation.Collections.IIterable!(HSTRING) lines, Windows.Storage.Streams.UnicodeEncoding encoding)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_WriteLinesWithEncodingAsync(absolutePath, lines, encoding, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction AppendLinesAsync(HSTRING absolutePath, Windows.Foundation.Collections.IIterable!(HSTRING) lines)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_AppendLinesAsync(absolutePath, lines, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction AppendLinesWithEncodingAsync(HSTRING absolutePath, Windows.Foundation.Collections.IIterable!(HSTRING) lines, Windows.Storage.Streams.UnicodeEncoding encoding)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_AppendLinesWithEncodingAsync(absolutePath, lines, encoding, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) ReadBufferAsync(HSTRING absolutePath)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK(staticInstance.abi_ReadBufferAsync(absolutePath, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction WriteBufferAsync(HSTRING absolutePath, Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_WriteBufferAsync(absolutePath, buffer, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction WriteBytesAsync(HSTRING absolutePath, UINT32 __bufferSize, ubyte* buffer)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_WriteBytesAsync(absolutePath, __bufferSize, buffer, &_ret));
		return _ret;
	}
}

interface SetVersionDeferral : Windows.Storage.ISetVersionDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.Storage.ISetVersionDeferral)this.asInterface(uuid("033508a2-781a-437a-b078-3f32badcfe47"))).abi_Complete());
	}
}

interface SetVersionRequest : Windows.Storage.ISetVersionRequest
{
extern(Windows):
	final UINT32 CurrentVersion()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.ISetVersionRequest)this.asInterface(uuid("b9c76b9b-1056-4e69-8330-162619956f9b"))).get_CurrentVersion(&_ret));
		return _ret;
	}
	final UINT32 DesiredVersion()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.ISetVersionRequest)this.asInterface(uuid("b9c76b9b-1056-4e69-8330-162619956f9b"))).get_DesiredVersion(&_ret));
		return _ret;
	}
	final Windows.Storage.SetVersionDeferral GetDeferral()
	{
		Windows.Storage.SetVersionDeferral _ret;
		Debug.OK((cast(Windows.Storage.ISetVersionRequest)this.asInterface(uuid("b9c76b9b-1056-4e69-8330-162619956f9b"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface StorageFile : Windows.Storage.IStorageFile, Windows.Storage.Streams.IInputStreamReference, Windows.Storage.Streams.IRandomAccessStreamReference, Windows.Storage.IStorageItem, Windows.Storage.IStorageItemProperties, Windows.Storage.IStorageItemProperties2, Windows.Storage.IStorageItem2, Windows.Storage.IStorageItemPropertiesWithProvider, Windows.Storage.IStorageFilePropertiesWithAvailability, Windows.Storage.IStorageFile2
{
extern(Windows):
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
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) CopyOverloadDefaultOptions(Windows.Storage.IStorageFolder destinationFolder, HSTRING desiredNewName)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile)this.asInterface(uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea"))).abi_CopyOverloadDefaultOptions(destinationFolder, desiredNewName, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) CopyOverload(Windows.Storage.IStorageFolder destinationFolder, HSTRING desiredNewName, Windows.Storage.NameCollisionOption option)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile)this.asInterface(uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea"))).abi_CopyOverload(destinationFolder, desiredNewName, option, &_ret));
		return _ret;
	}
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
	final Windows.Foundation.IAsyncAction MoveOverloadDefaultOptions(Windows.Storage.IStorageFolder destinationFolder, HSTRING desiredNewName)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile)this.asInterface(uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea"))).abi_MoveOverloadDefaultOptions(destinationFolder, desiredNewName, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction MoveOverload(Windows.Storage.IStorageFolder destinationFolder, HSTRING desiredNewName, Windows.Storage.NameCollisionOption option)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile)this.asInterface(uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea"))).abi_MoveOverload(destinationFolder, desiredNewName, option, &_ret));
		return _ret;
	}
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
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) GetThumbnailAsyncOverloadDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).abi_GetThumbnailAsyncOverloadDefaultOptions(mode, requestedSize, &_ret));
		return _ret;
	}
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
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) GetScaledImageAsThumbnailAsyncOverloadDefaultSizeDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties2)this.asInterface(uuid("8e86a951-04b9-4bd2-929d-fef3f71621d0"))).abi_GetScaledImageAsThumbnailAsyncOverloadDefaultSizeDefaultOptions(mode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) GetScaledImageAsThumbnailAsyncOverloadDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties2)this.asInterface(uuid("8e86a951-04b9-4bd2-929d-fef3f71621d0"))).abi_GetScaledImageAsThumbnailAsyncOverloadDefaultOptions(mode, requestedSize, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) GetScaledImageAsThumbnailAsync(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize, Windows.Storage.FileProperties.ThumbnailOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties2)this.asInterface(uuid("8e86a951-04b9-4bd2-929d-fef3f71621d0"))).abi_GetScaledImageAsThumbnailAsync(mode, requestedSize, options, &_ret));
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
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageStreamTransaction) OpenTransactedWriteWithOptionsAsync(Windows.Storage.StorageOpenOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageStreamTransaction) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFile2)this.asInterface(uuid("954e4bcf-0a77-42fb-b777-c2ed58a52e44"))).abi_OpenTransactedWriteWithOptionsAsync(options, &_ret));
		return _ret;
	}

	private static Windows.Storage.IStorageFileStatics _staticInstance;
	public static Windows.Storage.IStorageFileStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Storage.IStorageFileStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) GetFileFromPathAsync(HSTRING path)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(staticInstance.abi_GetFileFromPathAsync(path, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) GetFileFromApplicationUriAsync(Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(staticInstance.abi_GetFileFromApplicationUriAsync(uri, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) CreateStreamedFileAsync(HSTRING displayNameWithExtension, Windows.Storage.StreamedFileDataRequestedHandler dataRequested, Windows.Storage.Streams.IRandomAccessStreamReference thumbnail)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(staticInstance.abi_CreateStreamedFileAsync(displayNameWithExtension, dataRequested, thumbnail, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) ReplaceWithStreamedFileAsync(Windows.Storage.IStorageFile fileToReplace, Windows.Storage.StreamedFileDataRequestedHandler dataRequested, Windows.Storage.Streams.IRandomAccessStreamReference thumbnail)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(staticInstance.abi_ReplaceWithStreamedFileAsync(fileToReplace, dataRequested, thumbnail, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) CreateStreamedFileFromUriAsync(HSTRING displayNameWithExtension, Windows.Foundation.Uri uri, Windows.Storage.Streams.IRandomAccessStreamReference thumbnail)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(staticInstance.abi_CreateStreamedFileFromUriAsync(displayNameWithExtension, uri, thumbnail, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) ReplaceWithStreamedFileFromUriAsync(Windows.Storage.IStorageFile fileToReplace, Windows.Foundation.Uri uri, Windows.Storage.Streams.IRandomAccessStreamReference thumbnail)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(staticInstance.abi_ReplaceWithStreamedFileFromUriAsync(fileToReplace, uri, thumbnail, &_ret));
		return _ret;
	}
}

interface StorageFolder : Windows.Storage.IStorageFolder, Windows.Storage.IStorageItem, Windows.Storage.Search.IStorageFolderQueryOperations, Windows.Storage.IStorageItemProperties, Windows.Storage.IStorageItemProperties2, Windows.Storage.IStorageItem2, Windows.Storage.IStorageFolder2, Windows.Storage.IStorageItemPropertiesWithProvider
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) CreateFileAsyncOverloadDefaultOptions(HSTRING desiredName)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFolder)this.asInterface(uuid("72d1cb78-b3ef-4f75-a80b-6fd9dae2944b"))).abi_CreateFileAsyncOverloadDefaultOptions(desiredName, &_ret));
		return _ret;
	}
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
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder)) GetFoldersAsyncOverloadDefaultOptionsStartAndCount()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFolder)) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFolder)this.asInterface(uuid("72d1cb78-b3ef-4f75-a80b-6fd9dae2944b"))).abi_GetFoldersAsyncOverloadDefaultOptionsStartAndCount(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem)) GetItemsAsyncOverloadDefaultStartAndCount()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem)) _ret;
		Debug.OK((cast(Windows.Storage.IStorageFolder)this.asInterface(uuid("72d1cb78-b3ef-4f75-a80b-6fd9dae2944b"))).abi_GetItemsAsyncOverloadDefaultStartAndCount(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction RenameAsyncOverloadDefaultOptions(HSTRING desiredName)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageItem)this.asInterface(uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30"))).abi_RenameAsyncOverloadDefaultOptions(desiredName, &_ret));
		return _ret;
	}
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
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) GetThumbnailAsyncOverloadDefaultSizeDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).abi_GetThumbnailAsyncOverloadDefaultSizeDefaultOptions(mode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) GetThumbnailAsyncOverloadDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties)this.asInterface(uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c"))).abi_GetThumbnailAsyncOverloadDefaultOptions(mode, requestedSize, &_ret));
		return _ret;
	}
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
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) GetScaledImageAsThumbnailAsyncOverloadDefaultSizeDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties2)this.asInterface(uuid("8e86a951-04b9-4bd2-929d-fef3f71621d0"))).abi_GetScaledImageAsThumbnailAsyncOverloadDefaultSizeDefaultOptions(mode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) GetScaledImageAsThumbnailAsyncOverloadDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties2)this.asInterface(uuid("8e86a951-04b9-4bd2-929d-fef3f71621d0"))).abi_GetScaledImageAsThumbnailAsyncOverloadDefaultOptions(mode, requestedSize, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) GetScaledImageAsThumbnailAsync(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize, Windows.Storage.FileProperties.ThumbnailOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail) _ret;
		Debug.OK((cast(Windows.Storage.IStorageItemProperties2)this.asInterface(uuid("8e86a951-04b9-4bd2-929d-fef3f71621d0"))).abi_GetScaledImageAsThumbnailAsync(mode, requestedSize, options, &_ret));
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

	private static Windows.Storage.IStorageFolderStatics _staticInstance;
	public static Windows.Storage.IStorageFolderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Storage.IStorageFolderStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) GetFolderFromPathAsync(HSTRING path)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK(staticInstance.abi_GetFolderFromPathAsync(path, &_ret));
		return _ret;
	}
}

interface StorageLibrary : Windows.Storage.IStorageLibrary, Windows.Storage.IStorageLibrary2
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) RequestAddFolderAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK((cast(Windows.Storage.IStorageLibrary)this.asInterface(uuid("1edd7103-0e5e-4d6c-b5e8-9318983d6a03"))).abi_RequestAddFolderAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestRemoveFolderAsync(Windows.Storage.StorageFolder folder)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Storage.IStorageLibrary)this.asInterface(uuid("1edd7103-0e5e-4d6c-b5e8-9318983d6a03"))).abi_RequestRemoveFolderAsync(folder, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IObservableVector!(Windows.Storage.StorageFolder) Folders()
	{
		Windows.Foundation.Collections.IObservableVector!(Windows.Storage.StorageFolder) _ret;
		Debug.OK((cast(Windows.Storage.IStorageLibrary)this.asInterface(uuid("1edd7103-0e5e-4d6c-b5e8-9318983d6a03"))).get_Folders(&_ret));
		return _ret;
	}
	final Windows.Storage.StorageFolder SaveFolder()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK((cast(Windows.Storage.IStorageLibrary)this.asInterface(uuid("1edd7103-0e5e-4d6c-b5e8-9318983d6a03"))).get_SaveFolder(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnDefinitionChanged(void delegate(Windows.Storage.StorageLibrary, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Storage.IStorageLibrary)this.asInterface(uuid("1edd7103-0e5e-4d6c-b5e8-9318983d6a03"))).add_DefinitionChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.StorageLibrary, IInspectable), Windows.Storage.StorageLibrary, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeDefinitionChanged(EventRegistrationToken eventCookie)
	{
		Debug.OK((cast(Windows.Storage.IStorageLibrary)this.asInterface(uuid("1edd7103-0e5e-4d6c-b5e8-9318983d6a03"))).remove_DefinitionChanged(eventCookie));
	}
	final Windows.Storage.StorageLibraryChangeTracker ChangeTracker()
	{
		Windows.Storage.StorageLibraryChangeTracker _ret;
		Debug.OK((cast(Windows.Storage.IStorageLibrary2)this.asInterface(uuid("5b0ce348-fcb3-4031-afb0-a68d7bd44534"))).get_ChangeTracker(&_ret));
		return _ret;
	}

	private static Windows.Storage.IStorageLibraryStatics _staticInstance;
	public static Windows.Storage.IStorageLibraryStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Storage.IStorageLibraryStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageLibrary) GetLibraryAsync(Windows.Storage.KnownLibraryId libraryId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageLibrary) _ret;
		Debug.OK(staticInstance.abi_GetLibraryAsync(libraryId, &_ret));
		return _ret;
	}
}

interface StorageLibraryChange : Windows.Storage.IStorageLibraryChange
{
extern(Windows):
	final Windows.Storage.StorageLibraryChangeType ChangeType()
	{
		Windows.Storage.StorageLibraryChangeType _ret;
		Debug.OK((cast(Windows.Storage.IStorageLibraryChange)this.asInterface(uuid("00980b23-2be2-4909-aa48-159f5203a51e"))).get_ChangeType(&_ret));
		return _ret;
	}
	final HSTRING Path()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IStorageLibraryChange)this.asInterface(uuid("00980b23-2be2-4909-aa48-159f5203a51e"))).get_Path(&_ret));
		return _ret;
	}
	final HSTRING PreviousPath()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IStorageLibraryChange)this.asInterface(uuid("00980b23-2be2-4909-aa48-159f5203a51e"))).get_PreviousPath(&_ret));
		return _ret;
	}
	final bool IsOfType(Windows.Storage.StorageItemTypes type)
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.IStorageLibraryChange)this.asInterface(uuid("00980b23-2be2-4909-aa48-159f5203a51e"))).abi_IsOfType(type, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) GetStorageItemAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem) _ret;
		Debug.OK((cast(Windows.Storage.IStorageLibraryChange)this.asInterface(uuid("00980b23-2be2-4909-aa48-159f5203a51e"))).abi_GetStorageItemAsync(&_ret));
		return _ret;
	}
}

interface StorageLibraryChangeReader : Windows.Storage.IStorageLibraryChangeReader
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageLibraryChange)) ReadBatchAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageLibraryChange)) _ret;
		Debug.OK((cast(Windows.Storage.IStorageLibraryChangeReader)this.asInterface(uuid("f205bc83-fca2-41f9-8954-ee2e991eb96f"))).abi_ReadBatchAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction AcceptChangesAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageLibraryChangeReader)this.asInterface(uuid("f205bc83-fca2-41f9-8954-ee2e991eb96f"))).abi_AcceptChangesAsync(&_ret));
		return _ret;
	}
}

interface StorageLibraryChangeTracker : Windows.Storage.IStorageLibraryChangeTracker
{
extern(Windows):
	final Windows.Storage.StorageLibraryChangeReader GetChangeReader()
	{
		Windows.Storage.StorageLibraryChangeReader _ret;
		Debug.OK((cast(Windows.Storage.IStorageLibraryChangeTracker)this.asInterface(uuid("9e157316-6073-44f6-9681-7492d1286c90"))).abi_GetChangeReader(&_ret));
		return _ret;
	}
	final void Enable()
	{
		Debug.OK((cast(Windows.Storage.IStorageLibraryChangeTracker)this.asInterface(uuid("9e157316-6073-44f6-9681-7492d1286c90"))).abi_Enable());
	}
	final void Reset()
	{
		Debug.OK((cast(Windows.Storage.IStorageLibraryChangeTracker)this.asInterface(uuid("9e157316-6073-44f6-9681-7492d1286c90"))).abi_Reset());
	}
}

interface StorageProvider : Windows.Storage.IStorageProvider
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IStorageProvider)this.asInterface(uuid("e705eed4-d478-47d6-ba46-1a8ebe114a20"))).get_Id(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.IStorageProvider)this.asInterface(uuid("e705eed4-d478-47d6-ba46-1a8ebe114a20"))).get_DisplayName(&_ret));
		return _ret;
	}
}

interface StorageStreamTransaction : Windows.Storage.IStorageStreamTransaction, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Storage.Streams.IRandomAccessStream Stream()
	{
		Windows.Storage.Streams.IRandomAccessStream _ret;
		Debug.OK((cast(Windows.Storage.IStorageStreamTransaction)this.asInterface(uuid("f67cf363-a53d-4d94-ae2c-67232d93acdd"))).get_Stream(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction CommitAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.IStorageStreamTransaction)this.asInterface(uuid("f67cf363-a53d-4d94-ae2c-67232d93acdd"))).abi_CommitAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
}

interface StreamedFileDataRequest : Windows.Storage.Streams.IOutputStream, Windows.Foundation.IClosable, Windows.Storage.IStreamedFileDataRequest
{
extern(Windows):
	final Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) WriteAsync(Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) _ret;
		Debug.OK((cast(Windows.Storage.Streams.IOutputStream)this.asInterface(uuid("905a0fe6-bc53-11df-8c49-001e4fc686da"))).abi_WriteAsync(buffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) FlushAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Storage.Streams.IOutputStream)this.asInterface(uuid("905a0fe6-bc53-11df-8c49-001e4fc686da"))).abi_FlushAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final void FailAndClose(Windows.Storage.StreamedFileFailureMode failureMode)
	{
		Debug.OK((cast(Windows.Storage.IStreamedFileDataRequest)this.asInterface(uuid("1673fcce-dabd-4d50-beee-180b8a8191b6"))).abi_FailAndClose(failureMode));
	}
}

interface SystemAudioProperties : Windows.Storage.ISystemAudioProperties
{
extern(Windows):
	final HSTRING EncodingBitrate()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemAudioProperties)this.asInterface(uuid("3f8f38b7-308c-47e1-924d-8645348e5db7"))).get_EncodingBitrate(&_ret));
		return _ret;
	}
}

interface SystemGPSProperties : Windows.Storage.ISystemGPSProperties
{
extern(Windows):
	final HSTRING LatitudeDecimal()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemGPSProperties)this.asInterface(uuid("c0f46eb4-c174-481a-bc25-921986f6a6f3"))).get_LatitudeDecimal(&_ret));
		return _ret;
	}
	final HSTRING LongitudeDecimal()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemGPSProperties)this.asInterface(uuid("c0f46eb4-c174-481a-bc25-921986f6a6f3"))).get_LongitudeDecimal(&_ret));
		return _ret;
	}
}

interface SystemImageProperties : Windows.Storage.ISystemImageProperties
{
extern(Windows):
	final HSTRING HorizontalSize()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemImageProperties)this.asInterface(uuid("011b2e30-8b39-4308-bea1-e8aa61e47826"))).get_HorizontalSize(&_ret));
		return _ret;
	}
	final HSTRING VerticalSize()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemImageProperties)this.asInterface(uuid("011b2e30-8b39-4308-bea1-e8aa61e47826"))).get_VerticalSize(&_ret));
		return _ret;
	}
}

interface SystemMediaProperties : Windows.Storage.ISystemMediaProperties
{
extern(Windows):
	final HSTRING Duration()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemMediaProperties)this.asInterface(uuid("a42b3316-8415-40dc-8c44-98361d235430"))).get_Duration(&_ret));
		return _ret;
	}
	final HSTRING Producer()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemMediaProperties)this.asInterface(uuid("a42b3316-8415-40dc-8c44-98361d235430"))).get_Producer(&_ret));
		return _ret;
	}
	final HSTRING Publisher()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemMediaProperties)this.asInterface(uuid("a42b3316-8415-40dc-8c44-98361d235430"))).get_Publisher(&_ret));
		return _ret;
	}
	final HSTRING SubTitle()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemMediaProperties)this.asInterface(uuid("a42b3316-8415-40dc-8c44-98361d235430"))).get_SubTitle(&_ret));
		return _ret;
	}
	final HSTRING Writer()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemMediaProperties)this.asInterface(uuid("a42b3316-8415-40dc-8c44-98361d235430"))).get_Writer(&_ret));
		return _ret;
	}
	final HSTRING Year()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemMediaProperties)this.asInterface(uuid("a42b3316-8415-40dc-8c44-98361d235430"))).get_Year(&_ret));
		return _ret;
	}
}

interface SystemMusicProperties : Windows.Storage.ISystemMusicProperties
{
extern(Windows):
	final HSTRING AlbumArtist()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemMusicProperties)this.asInterface(uuid("b47988d5-67af-4bc3-8d39-5b89022026a1"))).get_AlbumArtist(&_ret));
		return _ret;
	}
	final HSTRING AlbumTitle()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemMusicProperties)this.asInterface(uuid("b47988d5-67af-4bc3-8d39-5b89022026a1"))).get_AlbumTitle(&_ret));
		return _ret;
	}
	final HSTRING Artist()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemMusicProperties)this.asInterface(uuid("b47988d5-67af-4bc3-8d39-5b89022026a1"))).get_Artist(&_ret));
		return _ret;
	}
	final HSTRING Composer()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemMusicProperties)this.asInterface(uuid("b47988d5-67af-4bc3-8d39-5b89022026a1"))).get_Composer(&_ret));
		return _ret;
	}
	final HSTRING Conductor()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemMusicProperties)this.asInterface(uuid("b47988d5-67af-4bc3-8d39-5b89022026a1"))).get_Conductor(&_ret));
		return _ret;
	}
	final HSTRING DisplayArtist()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemMusicProperties)this.asInterface(uuid("b47988d5-67af-4bc3-8d39-5b89022026a1"))).get_DisplayArtist(&_ret));
		return _ret;
	}
	final HSTRING Genre()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemMusicProperties)this.asInterface(uuid("b47988d5-67af-4bc3-8d39-5b89022026a1"))).get_Genre(&_ret));
		return _ret;
	}
	final HSTRING TrackNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemMusicProperties)this.asInterface(uuid("b47988d5-67af-4bc3-8d39-5b89022026a1"))).get_TrackNumber(&_ret));
		return _ret;
	}
}

interface SystemPhotoProperties : Windows.Storage.ISystemPhotoProperties
{
extern(Windows):
	final HSTRING CameraManufacturer()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemPhotoProperties)this.asInterface(uuid("4734fc3d-ab21-4424-b735-f4353a56c8fc"))).get_CameraManufacturer(&_ret));
		return _ret;
	}
	final HSTRING CameraModel()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemPhotoProperties)this.asInterface(uuid("4734fc3d-ab21-4424-b735-f4353a56c8fc"))).get_CameraModel(&_ret));
		return _ret;
	}
	final HSTRING DateTaken()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemPhotoProperties)this.asInterface(uuid("4734fc3d-ab21-4424-b735-f4353a56c8fc"))).get_DateTaken(&_ret));
		return _ret;
	}
	final HSTRING Orientation()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemPhotoProperties)this.asInterface(uuid("4734fc3d-ab21-4424-b735-f4353a56c8fc"))).get_Orientation(&_ret));
		return _ret;
	}
	final HSTRING PeopleNames()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemPhotoProperties)this.asInterface(uuid("4734fc3d-ab21-4424-b735-f4353a56c8fc"))).get_PeopleNames(&_ret));
		return _ret;
	}
}

interface SystemProperties
{
	private static Windows.Storage.ISystemProperties _staticInstance;
	public static Windows.Storage.ISystemProperties staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Storage.ISystemProperties);
		return _staticInstance;
	}
	static HSTRING Author()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Author(&_ret));
		return _ret;
	}
	static HSTRING Comment()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Comment(&_ret));
		return _ret;
	}
	static HSTRING ItemNameDisplay()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ItemNameDisplay(&_ret));
		return _ret;
	}
	static HSTRING Keywords()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Keywords(&_ret));
		return _ret;
	}
	static HSTRING Rating()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Rating(&_ret));
		return _ret;
	}
	static HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Title(&_ret));
		return _ret;
	}
	static Windows.Storage.SystemAudioProperties Audio()
	{
		Windows.Storage.SystemAudioProperties _ret;
		Debug.OK(staticInstance.get_Audio(&_ret));
		return _ret;
	}
	static Windows.Storage.SystemGPSProperties GPS()
	{
		Windows.Storage.SystemGPSProperties _ret;
		Debug.OK(staticInstance.get_GPS(&_ret));
		return _ret;
	}
	static Windows.Storage.SystemMediaProperties Media()
	{
		Windows.Storage.SystemMediaProperties _ret;
		Debug.OK(staticInstance.get_Media(&_ret));
		return _ret;
	}
	static Windows.Storage.SystemMusicProperties Music()
	{
		Windows.Storage.SystemMusicProperties _ret;
		Debug.OK(staticInstance.get_Music(&_ret));
		return _ret;
	}
	static Windows.Storage.SystemPhotoProperties Photo()
	{
		Windows.Storage.SystemPhotoProperties _ret;
		Debug.OK(staticInstance.get_Photo(&_ret));
		return _ret;
	}
	static Windows.Storage.SystemVideoProperties Video()
	{
		Windows.Storage.SystemVideoProperties _ret;
		Debug.OK(staticInstance.get_Video(&_ret));
		return _ret;
	}
	static Windows.Storage.SystemImageProperties Image()
	{
		Windows.Storage.SystemImageProperties _ret;
		Debug.OK(staticInstance.get_Image(&_ret));
		return _ret;
	}
}

interface SystemVideoProperties : Windows.Storage.ISystemVideoProperties
{
extern(Windows):
	final HSTRING Director()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemVideoProperties)this.asInterface(uuid("2040f715-67f8-4322-9b80-4fa9fefb83e8"))).get_Director(&_ret));
		return _ret;
	}
	final HSTRING FrameHeight()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemVideoProperties)this.asInterface(uuid("2040f715-67f8-4322-9b80-4fa9fefb83e8"))).get_FrameHeight(&_ret));
		return _ret;
	}
	final HSTRING FrameWidth()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemVideoProperties)this.asInterface(uuid("2040f715-67f8-4322-9b80-4fa9fefb83e8"))).get_FrameWidth(&_ret));
		return _ret;
	}
	final HSTRING Orientation()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemVideoProperties)this.asInterface(uuid("2040f715-67f8-4322-9b80-4fa9fefb83e8"))).get_Orientation(&_ret));
		return _ret;
	}
	final HSTRING TotalBitrate()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.ISystemVideoProperties)this.asInterface(uuid("2040f715-67f8-4322-9b80-4fa9fefb83e8"))).get_TotalBitrate(&_ret));
		return _ret;
	}
}

enum ApplicationDataCreateDisposition
{
	Always = 0,
	Existing = 1
}

enum ApplicationDataLocality
{
	Local = 0,
	Roaming = 1,
	Temporary = 2,
	LocalCache = 3
}

enum CreationCollisionOption
{
	GenerateUniqueName = 0,
	ReplaceExisting = 1,
	FailIfExists = 2,
	OpenIfExists = 3
}

enum FileAccessMode
{
	Read = 0,
	ReadWrite = 1
}

@bitflags
enum FileAttributes
{
	Normal = 0x0,
	ReadOnly = 0x1,
	Directory = 0x10,
	Archive = 0x20,
	Temporary = 0x100,
	LocallyIncomplete = 0x200
}

enum KnownFolderId
{
	AppCaptures = 0,
	CameraRoll = 1,
	DocumentsLibrary = 2,
	HomeGroup = 3,
	MediaServerDevices = 4,
	MusicLibrary = 5,
	Objects3D = 6,
	PicturesLibrary = 7,
	Playlists = 8,
	RecordedCalls = 9,
	RemovableDevices = 10,
	SavedPictures = 11,
	Screenshots = 12,
	VideosLibrary = 13,
	AllAppMods = 14,
	CurrentAppMods = 15
}

enum KnownLibraryId
{
	Music = 0,
	Pictures = 1,
	Videos = 2,
	Documents = 3
}

enum NameCollisionOption
{
	GenerateUniqueName = 0,
	ReplaceExisting = 1,
	FailIfExists = 2
}

enum StorageDeleteOption
{
	Default = 0,
	PermanentDelete = 1
}

@bitflags
enum StorageItemTypes
{
	None = 0x0,
	File = 0x1,
	Folder = 0x2
}

enum StorageLibraryChangeType
{
	Created = 0,
	Deleted = 1,
	MovedOrRenamed = 2,
	ContentsChanged = 3,
	MovedOutOfLibrary = 4,
	MovedIntoLibrary = 5,
	ContentsReplaced = 6,
	IndexingStatusChanged = 7,
	EncryptionChanged = 8,
	ChangeTrackingLost = 9
}

@bitflags
enum StorageOpenOptions
{
	None = 0x0,
	AllowOnlyReaders = 0x1,
	AllowReadersAndWriters = 0x2
}

enum StreamedFileFailureMode
{
	Failed = 0,
	CurrentlyUnavailable = 1,
	Incomplete = 2
}