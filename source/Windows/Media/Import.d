module Windows.Media.Import;

import dwinrt;

struct PhotoImportProgress
{
	UINT32 ItemsImported;
	UINT32 TotalItemsToImport;
	UINT64 BytesImported;
	UINT64 TotalBytesToImport;
	double ImportProgress;
}

@uuid("f4e112f8-843d-428a-a1a6-81510292b0ae")
@WinrtFactory("Windows.Media.Import.PhotoImportDeleteImportedItemsFromSourceResult")
interface IPhotoImportDeleteImportedItemsFromSourceResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Session(Windows.Media.Import.PhotoImportSession* return_value);
	HRESULT get_HasSucceeded(bool* return_value);
	HRESULT get_DeletedItems(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportItem)* return_value);
	HRESULT get_PhotosCount(UINT32* return_value);
	HRESULT get_PhotosSizeInBytes(UINT64* return_value);
	HRESULT get_VideosCount(UINT32* return_value);
	HRESULT get_VideosSizeInBytes(UINT64* return_value);
	HRESULT get_SidecarsCount(UINT32* return_value);
	HRESULT get_SidecarsSizeInBytes(UINT64* return_value);
	HRESULT get_SiblingsCount(UINT32* return_value);
	HRESULT get_SiblingsSizeInBytes(UINT64* return_value);
	HRESULT get_TotalCount(UINT32* return_value);
	HRESULT get_TotalSizeInBytes(UINT64* return_value);
}

@uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9")
@WinrtFactory("Windows.Media.Import.PhotoImportFindItemsResult")
interface IPhotoImportFindItemsResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Session(Windows.Media.Import.PhotoImportSession* return_value);
	HRESULT get_HasSucceeded(bool* return_value);
	HRESULT get_FoundItems(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportItem)* return_value);
	HRESULT get_PhotosCount(UINT32* return_value);
	HRESULT get_PhotosSizeInBytes(UINT64* return_value);
	HRESULT get_VideosCount(UINT32* return_value);
	HRESULT get_VideosSizeInBytes(UINT64* return_value);
	HRESULT get_SidecarsCount(UINT32* return_value);
	HRESULT get_SidecarsSizeInBytes(UINT64* return_value);
	HRESULT get_SiblingsCount(UINT32* return_value);
	HRESULT get_SiblingsSizeInBytes(UINT64* return_value);
	HRESULT get_TotalCount(UINT32* return_value);
	HRESULT get_TotalSizeInBytes(UINT64* return_value);
	HRESULT abi_SelectAll();
	HRESULT abi_SelectNone();
	HRESULT abi_SelectNewAsync(Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_SetImportMode(Windows.Media.Import.PhotoImportImportMode value);
	HRESULT get_ImportMode(Windows.Media.Import.PhotoImportImportMode* return_value);
	HRESULT get_SelectedPhotosCount(UINT32* return_value);
	HRESULT get_SelectedPhotosSizeInBytes(UINT64* return_value);
	HRESULT get_SelectedVideosCount(UINT32* return_value);
	HRESULT get_SelectedVideosSizeInBytes(UINT64* return_value);
	HRESULT get_SelectedSidecarsCount(UINT32* return_value);
	HRESULT get_SelectedSidecarsSizeInBytes(UINT64* return_value);
	HRESULT get_SelectedSiblingsCount(UINT32* return_value);
	HRESULT get_SelectedSiblingsSizeInBytes(UINT64* return_value);
	HRESULT get_SelectedTotalCount(UINT32* return_value);
	HRESULT get_SelectedTotalSizeInBytes(UINT64* return_value);
	HRESULT add_SelectionChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Import.PhotoImportFindItemsResult, Windows.Media.Import.PhotoImportSelectionChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_SelectionChanged(EventRegistrationToken token);
	HRESULT abi_ImportItemsAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportImportItemsResult, Windows.Media.Import.PhotoImportProgress)* return_operation);
	HRESULT add_ItemImported(Windows.Foundation.TypedEventHandler!(Windows.Media.Import.PhotoImportFindItemsResult, Windows.Media.Import.PhotoImportItemImportedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_ItemImported(EventRegistrationToken token);
}

@uuid("fbdd6a3b-ecf9-406a-815e-5015625b0a88")
@WinrtFactory("Windows.Media.Import.PhotoImportFindItemsResult")
interface IPhotoImportFindItemsResult2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddItemsInDateRangeToSelection(Windows.Foundation.DateTime rangeStart, Windows.Foundation.TimeSpan rangeLength);
}

@uuid("e4d4f478-d419-4443-a84e-f06a850c0b00")
@WinrtFactory("Windows.Media.Import.PhotoImportImportItemsResult")
interface IPhotoImportImportItemsResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Session(Windows.Media.Import.PhotoImportSession* return_value);
	HRESULT get_HasSucceeded(bool* return_value);
	HRESULT get_ImportedItems(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportItem)* return_value);
	HRESULT get_PhotosCount(UINT32* return_value);
	HRESULT get_PhotosSizeInBytes(UINT64* return_value);
	HRESULT get_VideosCount(UINT32* return_value);
	HRESULT get_VideosSizeInBytes(UINT64* return_value);
	HRESULT get_SidecarsCount(UINT32* return_value);
	HRESULT get_SidecarsSizeInBytes(UINT64* return_value);
	HRESULT get_SiblingsCount(UINT32* return_value);
	HRESULT get_SiblingsSizeInBytes(UINT64* return_value);
	HRESULT get_TotalCount(UINT32* return_value);
	HRESULT get_TotalSizeInBytes(UINT64* return_value);
	HRESULT abi_DeleteImportedItemsFromSourceAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportDeleteImportedItemsFromSourceResult, double)* return_result);
}

@uuid("a9d07e76-9bfc-43b8-b356-633b6a988c9e")
@WinrtFactory("Windows.Media.Import.PhotoImportItem")
interface IPhotoImportItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_ItemKey(UINT64* return_value);
	HRESULT get_ContentType(Windows.Media.Import.PhotoImportContentType* return_value);
	HRESULT get_SizeInBytes(UINT64* return_value);
	HRESULT get_Date(Windows.Foundation.DateTime* return_value);
	HRESULT get_Sibling(Windows.Media.Import.PhotoImportSidecar* return_value);
	HRESULT get_Sidecars(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportSidecar)* return_value);
	HRESULT get_VideoSegments(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportVideoSegment)* return_value);
	HRESULT get_IsSelected(bool* return_value);
	HRESULT set_IsSelected(bool value);
	HRESULT get_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT get_ImportedFileNames(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_DeletedFileNames(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}

@uuid("42cb2fdd-7d68-47b5-bc7c-ceb73e0c77dc")
@WinrtFactory("Windows.Media.Import.PhotoImportItemImportedEventArgs")
interface IPhotoImportItemImportedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ImportedItem(Windows.Media.Import.PhotoImportItem* return_value);
}

@uuid("2771903d-a046-4f06-9b9c-bfd662e83287")
@WinrtFactory("Windows.Media.Import.PhotoImportManager")
interface IPhotoImportManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_IsSupportedAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_FindAllSourcesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportSource))* return_operation);
	HRESULT abi_GetPendingOperations(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportOperation)* return_result);
}

@uuid("d9f797e4-a09a-4ee4-a4b1-20940277a5be")
@WinrtFactory("Windows.Media.Import.PhotoImportOperation")
interface IPhotoImportOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Stage(Windows.Media.Import.PhotoImportStage* return_value);
	HRESULT get_Session(Windows.Media.Import.PhotoImportSession* return_value);
	HRESULT get_ContinueFindingItemsAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportFindItemsResult, UINT32)* return_operation);
	HRESULT get_ContinueImportingItemsAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportImportItemsResult, Windows.Media.Import.PhotoImportProgress)* return_operation);
	HRESULT get_ContinueDeletingImportedItemsFromSourceAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportDeleteImportedItemsFromSourceResult, double)* return_operation);
}

@uuid("10461782-fa9d-4c30-8bc9-4d64911572d5")
@WinrtFactory("Windows.Media.Import.PhotoImportSelectionChangedEventArgs")
interface IPhotoImportSelectionChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsSelectionEmpty(bool* return_value);
}

@uuid("aa63916e-ecdb-4efe-94c6-5f5cafe34cfb")
@WinrtFactory("Windows.Media.Import.PhotoImportSession")
interface IPhotoImportSession : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Source(Windows.Media.Import.PhotoImportSource* return_value);
	HRESULT get_SessionId(GUID* return_value);
	HRESULT set_DestinationFolder(Windows.Storage.IStorageFolder value);
	HRESULT get_DestinationFolder(Windows.Storage.IStorageFolder* return_value);
	HRESULT set_AppendSessionDateToDestinationFolder(bool value);
	HRESULT get_AppendSessionDateToDestinationFolder(bool* return_value);
	HRESULT set_SubfolderCreationMode(Windows.Media.Import.PhotoImportSubfolderCreationMode value);
	HRESULT get_SubfolderCreationMode(Windows.Media.Import.PhotoImportSubfolderCreationMode* return_value);
	HRESULT set_DestinationFileNamePrefix(HSTRING value);
	HRESULT get_DestinationFileNamePrefix(HSTRING* return_value);
	HRESULT abi_FindItemsAsync(Windows.Media.Import.PhotoImportContentTypeFilter contentTypeFilter, Windows.Media.Import.PhotoImportItemSelectionMode itemSelectionMode, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportFindItemsResult, UINT32)* return_operation);
}

@uuid("2a526710-3ec6-469d-a375-2b9f4785391e")
@WinrtFactory("Windows.Media.Import.PhotoImportSession")
interface IPhotoImportSession2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_SubfolderDateFormat(Windows.Media.Import.PhotoImportSubfolderDateFormat value);
	HRESULT get_SubfolderDateFormat(Windows.Media.Import.PhotoImportSubfolderDateFormat* return_value);
	HRESULT set_RememberDeselectedItems(bool value);
	HRESULT get_RememberDeselectedItems(bool* return_value);
}

@uuid("46d7d757-f802-44c7-9c98-7a71f4bc1486")
@WinrtFactory("Windows.Media.Import.PhotoImportSidecar")
interface IPhotoImportSidecar : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_SizeInBytes(UINT64* return_value);
	HRESULT get_Date(Windows.Foundation.DateTime* return_value);
}

@uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef")
@WinrtFactory("Windows.Media.Import.PhotoImportSource")
interface IPhotoImportSource : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_Manufacturer(HSTRING* return_value);
	HRESULT get_Model(HSTRING* return_value);
	HRESULT get_SerialNumber(HSTRING* return_value);
	HRESULT get_ConnectionProtocol(HSTRING* return_value);
	HRESULT get_ConnectionTransport(Windows.Media.Import.PhotoImportConnectionTransport* return_value);
	HRESULT get_Type(Windows.Media.Import.PhotoImportSourceType* return_value);
	HRESULT get_PowerSource(Windows.Media.Import.PhotoImportPowerSource* return_value);
	HRESULT get_BatteryLevelPercent(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_DateTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_StorageMedia(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportStorageMedium)* return_value);
	HRESULT get_IsLocked(Windows.Foundation.IReference!(bool)* return_value);
	HRESULT get_IsMassStorage(bool* return_value);
	HRESULT get_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT abi_CreateImportSession(Windows.Media.Import.PhotoImportSession* return_result);
}

@uuid("0528e586-32d8-467c-8cee-23a1b2f43e85")
@WinrtFactory("Windows.Media.Import.PhotoImportSource")
interface IPhotoImportSourceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING sourceId, Windows.Foundation.IAsyncOperation!(Windows.Media.Import.PhotoImportSource)* return_operation);
	HRESULT abi_FromFolderAsync(Windows.Storage.IStorageFolder sourceRootFolder, Windows.Foundation.IAsyncOperation!(Windows.Media.Import.PhotoImportSource)* return_operation);
}

@uuid("f2b9b093-fc85-487f-87c2-58d675d05b07")
@WinrtFactory("Windows.Media.Import.PhotoImportStorageMedium")
interface IPhotoImportStorageMedium : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_SerialNumber(HSTRING* return_value);
	HRESULT get_StorageMediumType(Windows.Media.Import.PhotoImportStorageMediumType* return_value);
	HRESULT get_SupportedAccessMode(Windows.Media.Import.PhotoImportAccessMode* return_value);
	HRESULT get_CapacityInBytes(UINT64* return_value);
	HRESULT get_AvailableSpaceInBytes(UINT64* return_value);
	HRESULT abi_Refresh();
}

@uuid("623c0289-321a-41d8-9166-8c62a333276c")
@WinrtFactory("Windows.Media.Import.PhotoImportVideoSegment")
interface IPhotoImportVideoSegment : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_SizeInBytes(UINT64* return_value);
	HRESULT get_Date(Windows.Foundation.DateTime* return_value);
	HRESULT get_Sibling(Windows.Media.Import.PhotoImportSidecar* return_value);
	HRESULT get_Sidecars(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportSidecar)* return_value);
}

interface PhotoImportDeleteImportedItemsFromSourceResult : Windows.Media.Import.IPhotoImportDeleteImportedItemsFromSourceResult
{
}

interface PhotoImportFindItemsResult : Windows.Media.Import.IPhotoImportFindItemsResult, Windows.Media.Import.IPhotoImportFindItemsResult2
{
}

interface PhotoImportImportItemsResult : Windows.Media.Import.IPhotoImportImportItemsResult
{
}

interface PhotoImportItem : Windows.Media.Import.IPhotoImportItem
{
}

interface PhotoImportItemImportedEventArgs : Windows.Media.Import.IPhotoImportItemImportedEventArgs
{
}

interface PhotoImportManager
{
}

interface PhotoImportOperation : Windows.Media.Import.IPhotoImportOperation
{
}

interface PhotoImportSelectionChangedEventArgs : Windows.Media.Import.IPhotoImportSelectionChangedEventArgs
{
}

interface PhotoImportSession : Windows.Media.Import.IPhotoImportSession, Windows.Foundation.IClosable, Windows.Media.Import.IPhotoImportSession2
{
}

interface PhotoImportSidecar : Windows.Media.Import.IPhotoImportSidecar
{
}

interface PhotoImportSource : Windows.Media.Import.IPhotoImportSource
{
}

interface PhotoImportStorageMedium : Windows.Media.Import.IPhotoImportStorageMedium
{
}

interface PhotoImportVideoSegment : Windows.Media.Import.IPhotoImportVideoSegment
{
}

enum PhotoImportAccessMode
{
	ReadWrite = 0,
	ReadOnly = 1,
	ReadAndDelete = 2
}

enum PhotoImportConnectionTransport
{
	Unknown = 0,
	Usb = 1,
	IP = 2,
	Bluetooth = 3
}

enum PhotoImportContentType
{
	Unknown = 0,
	Image = 1,
	Video = 2
}

enum PhotoImportContentTypeFilter
{
	OnlyImages = 0,
	OnlyVideos = 1,
	ImagesAndVideos = 2
}

enum PhotoImportImportMode
{
	ImportEverything = 0,
	IgnoreSidecars = 1,
	IgnoreSiblings = 2,
	IgnoreSidecarsAndSiblings = 3
}

enum PhotoImportItemSelectionMode
{
	SelectAll = 0,
	SelectNone = 1,
	SelectNew = 2
}

enum PhotoImportPowerSource
{
	Unknown = 0,
	Battery = 1,
	External = 2
}

enum PhotoImportSourceType
{
	Generic = 0,
	Camera = 1,
	MediaPlayer = 2,
	Phone = 3,
	Video = 4,
	PersonalInfoManager = 5,
	AudioRecorder = 6
}

enum PhotoImportStage
{
	NotStarted = 0,
	FindingItems = 1,
	ImportingItems = 2,
	DeletingImportedItemsFromSource = 3
}

enum PhotoImportStorageMediumType
{
	Undefined = 0,
	Fixed = 1,
	Removable = 2
}

enum PhotoImportSubfolderCreationMode
{
	DoNotCreateSubfolders = 0,
	CreateSubfoldersFromFileDate = 1,
	CreateSubfoldersFromExifDate = 2,
	KeepOriginalFolderStructure = 3
}

enum PhotoImportSubfolderDateFormat
{
	Year = 0,
	YearMonth = 1,
	YearMonthDay = 2
}