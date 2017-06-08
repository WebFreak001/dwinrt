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
	mixin(generateRTMethods!(typeof(this)));

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
	HRESULT get_RoamingStorageQuota(UINT64* return_value);
}

@uuid("9e65cd69-0ba3-4e32-be29-b02de6607638")
@WinrtFactory("Windows.Storage.ApplicationData")
interface IApplicationData2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LocalCacheFolder(Windows.Storage.StorageFolder* return_value);
}

@uuid("dc222cf4-2772-4c1d-aa2c-c9f743ade8d1")
@WinrtFactory("Windows.Storage.ApplicationData")
interface IApplicationData3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetPublisherCacheFolder(HSTRING folderName, Windows.Storage.StorageFolder* return_value);
	HRESULT abi_ClearPublisherCacheFolderAsync(HSTRING folderName, Windows.Foundation.IAsyncAction* return_clearOperation);
	HRESULT get_SharedLocalFolder(Windows.Storage.StorageFolder* return_value);
}

@uuid("c5aefd1e-f467-40ba-8566-ab640a441e1d")
@WinrtFactory("Windows.Storage.ApplicationDataContainer")
interface IApplicationDataContainer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Current(Windows.Storage.ApplicationData* return_value);
}

@uuid("cd606211-cf49-40a4-a47c-c7f0dbba8107")
@WinrtFactory("Windows.Storage.ApplicationData")
interface IApplicationDataStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForUserAsync(Windows.System.User user, Windows.Foundation.IAsyncOperation!(Windows.Storage.ApplicationData)* return_getForUserOperation);
}

@uuid("8ffc224a-e782-495d-b614-654c4f0b2370")
@WinrtFactory("Windows.Storage.CachedFileManager")
interface ICachedFileManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_DeferUpdates(Windows.Storage.IStorageFile file);
	HRESULT abi_CompleteUpdatesAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Storage.Provider.FileUpdateStatus)* return_operation);
}

@uuid("27862ed0-404e-47df-a1e2-e37308be7b37")
@WinrtFactory("Windows.Storage.DownloadsFolder")
interface IDownloadsFolderStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	HRESULT abi_WriteBytesAsync(Windows.Storage.IStorageFile file, UINT32 __bufferSize, BYTE* buffer, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("5d115e66-27e8-492f-b8e5-2f90896cd4cd")
@WinrtFactory("Windows.Storage.KnownFolders")
interface IKnownFoldersCameraRollStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CameraRoll(Windows.Storage.StorageFolder* return_value);
}

@uuid("dad5ecd6-306f-4d6a-b496-46ba8eb106ce")
@WinrtFactory("Windows.Storage.KnownFolders")
interface IKnownFoldersPlaylistsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Playlists(Windows.Storage.StorageFolder* return_value);
}

@uuid("055c93ea-253d-467c-b6ca-a97da1e9a18d")
@WinrtFactory("Windows.Storage.KnownFolders")
interface IKnownFoldersSavedPicturesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SavedPictures(Windows.Storage.StorageFolder* return_value);
}

@uuid("5a2a7520-4802-452d-9ad9-4351ada7ec35")
@WinrtFactory("Windows.Storage.KnownFolders")
interface IKnownFoldersStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Objects3D(Windows.Storage.StorageFolder* return_value);
	HRESULT get_AppCaptures(Windows.Storage.StorageFolder* return_value);
	HRESULT get_RecordedCalls(Windows.Storage.StorageFolder* return_value);
}

@uuid("c5194341-9742-4ed5-823d-fc1401148764")
@WinrtFactory("Windows.Storage.KnownFolders")
interface IKnownFoldersStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetFolderForUserAsync(Windows.System.User user, Windows.Storage.KnownFolderId folderId, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
}

@uuid("0f2f3758-8ec7-4381-922b-8f6c07d288f3")
@WinrtFactory("Windows.Storage.PathIO")
interface IPathIOStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	HRESULT abi_WriteBytesAsync(HSTRING absolutePath, UINT32 __bufferSize, BYTE* buffer, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("033508a2-781a-437a-b078-3f32badcfe47")
@WinrtFactory("Windows.Storage.SetVersionDeferral")
interface ISetVersionDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

@uuid("b9c76b9b-1056-4e69-8330-162619956f9b")
@WinrtFactory("Windows.Storage.SetVersionRequest")
interface ISetVersionRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CurrentVersion(UINT32* return_currentVersion);
	HRESULT get_DesiredVersion(UINT32* return_desiredVersion);
	HRESULT abi_GetDeferral(Windows.Storage.SetVersionDeferral* return_deferral);
}

@uuid("fa3f6186-4214-428c-a64c-14c9ac7315ea")
interface IStorageFile : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("954e4bcf-0a77-42fb-b777-c2ed58a52e44")
interface IStorageFile2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OpenWithOptionsAsync(Windows.Storage.FileAccessMode accessMode, Windows.Storage.StorageOpenOptions options, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream)* return_operation);
	HRESULT abi_OpenTransactedWriteWithOptionsAsync(Windows.Storage.StorageOpenOptions options, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageStreamTransaction)* return_operation);
}

@uuid("afcbbe9b-582b-4133-9648-e44ca46ee491")
interface IStorageFilePropertiesWithAvailability : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsAvailable(bool* return_value);
}

@uuid("5984c710-daf2-43c8-8bb4-a4d3eacfd03f")
@WinrtFactory("Windows.Storage.StorageFile")
interface IStorageFileStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetFileFromPathAsync(HSTRING path, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_GetFileFromApplicationUriAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_CreateStreamedFileAsync(HSTRING displayNameWithExtension, Windows.Storage.StreamedFileDataRequestedHandler dataRequested, Windows.Storage.Streams.IRandomAccessStreamReference thumbnail, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_ReplaceWithStreamedFileAsync(Windows.Storage.IStorageFile fileToReplace, Windows.Storage.StreamedFileDataRequestedHandler dataRequested, Windows.Storage.Streams.IRandomAccessStreamReference thumbnail, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_CreateStreamedFileFromUriAsync(HSTRING displayNameWithExtension, Windows.Foundation.Uri uri, Windows.Storage.Streams.IRandomAccessStreamReference thumbnail, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_ReplaceWithStreamedFileFromUriAsync(Windows.Storage.IStorageFile fileToReplace, Windows.Foundation.Uri uri, Windows.Storage.Streams.IRandomAccessStreamReference thumbnail, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
}

@uuid("72d1cb78-b3ef-4f75-a80b-6fd9dae2944b")
interface IStorageFolder : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("e827e8b9-08d9-4a8e-a0ac-fe5ed3cbbbd3")
interface IStorageFolder2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TryGetItemAsync(HSTRING name, Windows.Foundation.IAsyncOperation!(Windows.Storage.IStorageItem)* return_operation);
}

@uuid("08f327ff-85d5-48b9-aee9-28511e339f9f")
@WinrtFactory("Windows.Storage.StorageFolder")
interface IStorageFolderStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetFolderFromPathAsync(HSTRING path, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
}

@uuid("4207a996-ca2f-42f7-bde8-8b10457a7f30")
interface IStorageItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
interface IStorageItem2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetParentAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
	HRESULT abi_IsEqual(Windows.Storage.IStorageItem item, bool* return_value);
}

@uuid("86664478-8029-46fe-a789-1c2f3e2ffb5c")
interface IStorageItemProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
interface IStorageItemProperties2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetScaledImageAsThumbnailAsyncOverloadDefaultSizeDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode, Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail)* return_operation);
	HRESULT abi_GetScaledImageAsThumbnailAsyncOverloadDefaultOptions(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize, Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail)* return_operation);
	HRESULT abi_GetScaledImageAsThumbnailAsync(Windows.Storage.FileProperties.ThumbnailMode mode, UINT32 requestedSize, Windows.Storage.FileProperties.ThumbnailOptions options, Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.StorageItemThumbnail)* return_operation);
}

@uuid("861bf39b-6368-4dee-b40e-74684a5ce714")
interface IStorageItemPropertiesWithProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Provider(Windows.Storage.StorageProvider* return_value);
}

@uuid("1edd7103-0e5e-4d6c-b5e8-9318983d6a03")
@WinrtFactory("Windows.Storage.StorageLibrary")
interface IStorageLibrary : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ChangeTracker(Windows.Storage.StorageLibraryChangeTracker* return_value);
}

@uuid("00980b23-2be2-4909-aa48-159f5203a51e")
@WinrtFactory("Windows.Storage.StorageLibraryChange")
interface IStorageLibraryChange : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageLibraryChange))* return_operation);
	HRESULT abi_AcceptChangesAsync(Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("9e157316-6073-44f6-9681-7492d1286c90")
@WinrtFactory("Windows.Storage.StorageLibraryChangeTracker")
interface IStorageLibraryChangeTracker : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetChangeReader(Windows.Storage.StorageLibraryChangeReader* return_value);
	HRESULT abi_Enable();
	HRESULT abi_Reset();
}

@uuid("4208a6db-684a-49c6-9e59-90121ee050d6")
@WinrtFactory("Windows.Storage.StorageLibrary")
interface IStorageLibraryStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetLibraryAsync(Windows.Storage.KnownLibraryId libraryId, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageLibrary)* return_operation);
}

@uuid("ffb08ddc-fa75-4695-b9d1-7f81f97832e3")
@WinrtFactory("Windows.Storage.StorageLibrary")
interface IStorageLibraryStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetLibraryForUserAsync(Windows.System.User user, Windows.Storage.KnownLibraryId libraryId, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageLibrary)* return_operation);
}

@uuid("e705eed4-d478-47d6-ba46-1a8ebe114a20")
@WinrtFactory("Windows.Storage.StorageProvider")
interface IStorageProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
}

@uuid("f67cf363-a53d-4d94-ae2c-67232d93acdd")
@WinrtFactory("Windows.Storage.StorageStreamTransaction")
interface IStorageStreamTransaction : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Stream(Windows.Storage.Streams.IRandomAccessStream* return_value);
	HRESULT abi_CommitAsync(Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("1673fcce-dabd-4d50-beee-180b8a8191b6")
interface IStreamedFileDataRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FailAndClose(Windows.Storage.StreamedFileFailureMode failureMode);
}

@uuid("3f8f38b7-308c-47e1-924d-8645348e5db7")
@WinrtFactory("Windows.Storage.SystemAudioProperties")
interface ISystemAudioProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EncodingBitrate(HSTRING* return_value);
}

@uuid("c0f46eb4-c174-481a-bc25-921986f6a6f3")
@WinrtFactory("Windows.Storage.SystemGPSProperties")
interface ISystemGPSProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LatitudeDecimal(HSTRING* return_value);
	HRESULT get_LongitudeDecimal(HSTRING* return_value);
}

@uuid("011b2e30-8b39-4308-bea1-e8aa61e47826")
@WinrtFactory("Windows.Storage.SystemImageProperties")
interface ISystemImageProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HorizontalSize(HSTRING* return_value);
	HRESULT get_VerticalSize(HSTRING* return_value);
}

@uuid("a42b3316-8415-40dc-8c44-98361d235430")
@WinrtFactory("Windows.Storage.SystemMediaProperties")
interface ISystemMediaProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Director(HSTRING* return_value);
	HRESULT get_FrameHeight(HSTRING* return_value);
	HRESULT get_FrameWidth(HSTRING* return_value);
	HRESULT get_Orientation(HSTRING* return_value);
	HRESULT get_TotalBitrate(HSTRING* return_value);
}

interface ApplicationData : Windows.Storage.IApplicationData, Windows.Storage.IApplicationData2, Windows.Storage.IApplicationData3
{
}

interface ApplicationDataCompositeValue : Windows.Foundation.Collections.IPropertySet, Windows.Foundation.Collections.IObservableMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))
{
}

interface ApplicationDataContainer : Windows.Storage.IApplicationDataContainer
{
}

interface ApplicationDataContainerSettings : Windows.Foundation.Collections.IPropertySet, Windows.Foundation.Collections.IObservableMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))
{
}

interface CachedFileManager
{
}

interface DownloadsFolder
{
}

interface FileIO
{
}

interface KnownFolders
{
}

interface PathIO
{
}

interface SetVersionDeferral : Windows.Storage.ISetVersionDeferral
{
}

interface SetVersionRequest : Windows.Storage.ISetVersionRequest
{
}

interface StorageFile : Windows.Storage.IStorageFile, Windows.Storage.Streams.IInputStreamReference, Windows.Storage.Streams.IRandomAccessStreamReference, Windows.Storage.IStorageItem, Windows.Storage.IStorageItemProperties, Windows.Storage.IStorageItemProperties2, Windows.Storage.IStorageItem2, Windows.Storage.IStorageItemPropertiesWithProvider, Windows.Storage.IStorageFilePropertiesWithAvailability, Windows.Storage.IStorageFile2
{
}

interface StorageFolder : Windows.Storage.IStorageFolder, Windows.Storage.IStorageItem, Windows.Storage.Search.IStorageFolderQueryOperations, Windows.Storage.IStorageItemProperties, Windows.Storage.IStorageItemProperties2, Windows.Storage.IStorageItem2, Windows.Storage.IStorageFolder2, Windows.Storage.IStorageItemPropertiesWithProvider
{
}

interface StorageLibrary : Windows.Storage.IStorageLibrary, Windows.Storage.IStorageLibrary2
{
}

interface StorageLibraryChange : Windows.Storage.IStorageLibraryChange
{
}

interface StorageLibraryChangeReader : Windows.Storage.IStorageLibraryChangeReader
{
}

interface StorageLibraryChangeTracker : Windows.Storage.IStorageLibraryChangeTracker
{
}

interface StorageProvider : Windows.Storage.IStorageProvider
{
}

interface StorageStreamTransaction : Windows.Storage.IStorageStreamTransaction, Windows.Foundation.IClosable
{
}

interface StreamedFileDataRequest : Windows.Storage.Streams.IOutputStream, Windows.Foundation.IClosable, Windows.Storage.IStreamedFileDataRequest
{
}

interface SystemAudioProperties : Windows.Storage.ISystemAudioProperties
{
}

interface SystemGPSProperties : Windows.Storage.ISystemGPSProperties
{
}

interface SystemImageProperties : Windows.Storage.ISystemImageProperties
{
}

interface SystemMediaProperties : Windows.Storage.ISystemMediaProperties
{
}

interface SystemMusicProperties : Windows.Storage.ISystemMusicProperties
{
}

interface SystemPhotoProperties : Windows.Storage.ISystemPhotoProperties
{
}

interface SystemProperties
{
}

interface SystemVideoProperties : Windows.Storage.ISystemVideoProperties
{
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