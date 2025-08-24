module Windows.Media.Import;

import dwinrt;

struct PhotoImportProgress
{
	UINT32 ItemsImported;
	UINT32 TotalItemsToImport;
	ulong BytesImported;
	ulong TotalBytesToImport;
	double ImportProgress;
}

@uuid("f4e112f8-843d-428a-a1a6-81510292b0ae")
@WinrtFactory("Windows.Media.Import.PhotoImportDeleteImportedItemsFromSourceResult")
interface IPhotoImportDeleteImportedItemsFromSourceResult : IInspectable
{
extern(Windows):
	HRESULT get_Session(Windows.Media.Import.PhotoImportSession* return_value);
	HRESULT get_HasSucceeded(bool* return_value);
	HRESULT get_DeletedItems(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportItem)* return_value);
	HRESULT get_PhotosCount(UINT32* return_value);
	HRESULT get_PhotosSizeInBytes(ulong* return_value);
	HRESULT get_VideosCount(UINT32* return_value);
	HRESULT get_VideosSizeInBytes(ulong* return_value);
	HRESULT get_SidecarsCount(UINT32* return_value);
	HRESULT get_SidecarsSizeInBytes(ulong* return_value);
	HRESULT get_SiblingsCount(UINT32* return_value);
	HRESULT get_SiblingsSizeInBytes(ulong* return_value);
	HRESULT get_TotalCount(UINT32* return_value);
	HRESULT get_TotalSizeInBytes(ulong* return_value);
}

@uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9")
@WinrtFactory("Windows.Media.Import.PhotoImportFindItemsResult")
interface IPhotoImportFindItemsResult : IInspectable
{
extern(Windows):
	HRESULT get_Session(Windows.Media.Import.PhotoImportSession* return_value);
	HRESULT get_HasSucceeded(bool* return_value);
	HRESULT get_FoundItems(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportItem)* return_value);
	HRESULT get_PhotosCount(UINT32* return_value);
	HRESULT get_PhotosSizeInBytes(ulong* return_value);
	HRESULT get_VideosCount(UINT32* return_value);
	HRESULT get_VideosSizeInBytes(ulong* return_value);
	HRESULT get_SidecarsCount(UINT32* return_value);
	HRESULT get_SidecarsSizeInBytes(ulong* return_value);
	HRESULT get_SiblingsCount(UINT32* return_value);
	HRESULT get_SiblingsSizeInBytes(ulong* return_value);
	HRESULT get_TotalCount(UINT32* return_value);
	HRESULT get_TotalSizeInBytes(ulong* return_value);
	HRESULT abi_SelectAll();
	HRESULT abi_SelectNone();
	HRESULT abi_SelectNewAsync(Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_SetImportMode(Windows.Media.Import.PhotoImportImportMode value);
	HRESULT get_ImportMode(Windows.Media.Import.PhotoImportImportMode* return_value);
	HRESULT get_SelectedPhotosCount(UINT32* return_value);
	HRESULT get_SelectedPhotosSizeInBytes(ulong* return_value);
	HRESULT get_SelectedVideosCount(UINT32* return_value);
	HRESULT get_SelectedVideosSizeInBytes(ulong* return_value);
	HRESULT get_SelectedSidecarsCount(UINT32* return_value);
	HRESULT get_SelectedSidecarsSizeInBytes(ulong* return_value);
	HRESULT get_SelectedSiblingsCount(UINT32* return_value);
	HRESULT get_SelectedSiblingsSizeInBytes(ulong* return_value);
	HRESULT get_SelectedTotalCount(UINT32* return_value);
	HRESULT get_SelectedTotalSizeInBytes(ulong* return_value);
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
extern(Windows):
	HRESULT abi_AddItemsInDateRangeToSelection(Windows.Foundation.DateTime rangeStart, Windows.Foundation.TimeSpan rangeLength);
}

@uuid("e4d4f478-d419-4443-a84e-f06a850c0b00")
@WinrtFactory("Windows.Media.Import.PhotoImportImportItemsResult")
interface IPhotoImportImportItemsResult : IInspectable
{
extern(Windows):
	HRESULT get_Session(Windows.Media.Import.PhotoImportSession* return_value);
	HRESULT get_HasSucceeded(bool* return_value);
	HRESULT get_ImportedItems(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportItem)* return_value);
	HRESULT get_PhotosCount(UINT32* return_value);
	HRESULT get_PhotosSizeInBytes(ulong* return_value);
	HRESULT get_VideosCount(UINT32* return_value);
	HRESULT get_VideosSizeInBytes(ulong* return_value);
	HRESULT get_SidecarsCount(UINT32* return_value);
	HRESULT get_SidecarsSizeInBytes(ulong* return_value);
	HRESULT get_SiblingsCount(UINT32* return_value);
	HRESULT get_SiblingsSizeInBytes(ulong* return_value);
	HRESULT get_TotalCount(UINT32* return_value);
	HRESULT get_TotalSizeInBytes(ulong* return_value);
	HRESULT abi_DeleteImportedItemsFromSourceAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportDeleteImportedItemsFromSourceResult, double)* return_result);
}

@uuid("a9d07e76-9bfc-43b8-b356-633b6a988c9e")
@WinrtFactory("Windows.Media.Import.PhotoImportItem")
interface IPhotoImportItem : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_ItemKey(ulong* return_value);
	HRESULT get_ContentType(Windows.Media.Import.PhotoImportContentType* return_value);
	HRESULT get_SizeInBytes(ulong* return_value);
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
extern(Windows):
	HRESULT get_ImportedItem(Windows.Media.Import.PhotoImportItem* return_value);
}

@uuid("2771903d-a046-4f06-9b9c-bfd662e83287")
@WinrtFactory("Windows.Media.Import.PhotoImportManager")
interface IPhotoImportManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_IsSupportedAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_FindAllSourcesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportSource))* return_operation);
	HRESULT abi_GetPendingOperations(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportOperation)* return_result);
}

@uuid("d9f797e4-a09a-4ee4-a4b1-20940277a5be")
@WinrtFactory("Windows.Media.Import.PhotoImportOperation")
interface IPhotoImportOperation : IInspectable
{
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
extern(Windows):
	HRESULT get_IsSelectionEmpty(bool* return_value);
}

@uuid("aa63916e-ecdb-4efe-94c6-5f5cafe34cfb")
@WinrtFactory("Windows.Media.Import.PhotoImportSession")
interface IPhotoImportSession_Base : IInspectable
{
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
@uuid("aa63916e-ecdb-4efe-94c6-5f5cafe34cfb")
@WinrtFactory("Windows.Media.Import.PhotoImportSession")
interface IPhotoImportSession : IPhotoImportSession_Base, Windows.Foundation.IClosable {}

@uuid("2a526710-3ec6-469d-a375-2b9f4785391e")
@WinrtFactory("Windows.Media.Import.PhotoImportSession")
interface IPhotoImportSession2 : IInspectable
{
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
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_SizeInBytes(ulong* return_value);
	HRESULT get_Date(Windows.Foundation.DateTime* return_value);
}

@uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef")
@WinrtFactory("Windows.Media.Import.PhotoImportSource")
interface IPhotoImportSource : IInspectable
{
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
extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING sourceId, Windows.Foundation.IAsyncOperation!(Windows.Media.Import.PhotoImportSource)* return_operation);
	HRESULT abi_FromFolderAsync(Windows.Storage.IStorageFolder sourceRootFolder, Windows.Foundation.IAsyncOperation!(Windows.Media.Import.PhotoImportSource)* return_operation);
}

@uuid("f2b9b093-fc85-487f-87c2-58d675d05b07")
@WinrtFactory("Windows.Media.Import.PhotoImportStorageMedium")
interface IPhotoImportStorageMedium : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_SerialNumber(HSTRING* return_value);
	HRESULT get_StorageMediumType(Windows.Media.Import.PhotoImportStorageMediumType* return_value);
	HRESULT get_SupportedAccessMode(Windows.Media.Import.PhotoImportAccessMode* return_value);
	HRESULT get_CapacityInBytes(ulong* return_value);
	HRESULT get_AvailableSpaceInBytes(ulong* return_value);
	HRESULT abi_Refresh();
}

@uuid("623c0289-321a-41d8-9166-8c62a333276c")
@WinrtFactory("Windows.Media.Import.PhotoImportVideoSegment")
interface IPhotoImportVideoSegment : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_SizeInBytes(ulong* return_value);
	HRESULT get_Date(Windows.Foundation.DateTime* return_value);
	HRESULT get_Sibling(Windows.Media.Import.PhotoImportSidecar* return_value);
	HRESULT get_Sidecars(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportSidecar)* return_value);
}

interface PhotoImportDeleteImportedItemsFromSourceResult : Windows.Media.Import.IPhotoImportDeleteImportedItemsFromSourceResult
{
extern(Windows):
	final Windows.Media.Import.PhotoImportSession Session()
	{
		Windows.Media.Import.PhotoImportSession _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportDeleteImportedItemsFromSourceResult)this.asInterface(uuid("f4e112f8-843d-428a-a1a6-81510292b0ae"))).get_Session(&_ret));
		return _ret;
	}
	final bool HasSucceeded()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportDeleteImportedItemsFromSourceResult)this.asInterface(uuid("f4e112f8-843d-428a-a1a6-81510292b0ae"))).get_HasSucceeded(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportItem) DeletedItems()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportItem) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportDeleteImportedItemsFromSourceResult)this.asInterface(uuid("f4e112f8-843d-428a-a1a6-81510292b0ae"))).get_DeletedItems(&_ret));
		return _ret;
	}
	final UINT32 PhotosCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportDeleteImportedItemsFromSourceResult)this.asInterface(uuid("f4e112f8-843d-428a-a1a6-81510292b0ae"))).get_PhotosCount(&_ret));
		return _ret;
	}
	final ulong PhotosSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportDeleteImportedItemsFromSourceResult)this.asInterface(uuid("f4e112f8-843d-428a-a1a6-81510292b0ae"))).get_PhotosSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 VideosCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportDeleteImportedItemsFromSourceResult)this.asInterface(uuid("f4e112f8-843d-428a-a1a6-81510292b0ae"))).get_VideosCount(&_ret));
		return _ret;
	}
	final ulong VideosSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportDeleteImportedItemsFromSourceResult)this.asInterface(uuid("f4e112f8-843d-428a-a1a6-81510292b0ae"))).get_VideosSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 SidecarsCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportDeleteImportedItemsFromSourceResult)this.asInterface(uuid("f4e112f8-843d-428a-a1a6-81510292b0ae"))).get_SidecarsCount(&_ret));
		return _ret;
	}
	final ulong SidecarsSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportDeleteImportedItemsFromSourceResult)this.asInterface(uuid("f4e112f8-843d-428a-a1a6-81510292b0ae"))).get_SidecarsSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 SiblingsCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportDeleteImportedItemsFromSourceResult)this.asInterface(uuid("f4e112f8-843d-428a-a1a6-81510292b0ae"))).get_SiblingsCount(&_ret));
		return _ret;
	}
	final ulong SiblingsSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportDeleteImportedItemsFromSourceResult)this.asInterface(uuid("f4e112f8-843d-428a-a1a6-81510292b0ae"))).get_SiblingsSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 TotalCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportDeleteImportedItemsFromSourceResult)this.asInterface(uuid("f4e112f8-843d-428a-a1a6-81510292b0ae"))).get_TotalCount(&_ret));
		return _ret;
	}
	final ulong TotalSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportDeleteImportedItemsFromSourceResult)this.asInterface(uuid("f4e112f8-843d-428a-a1a6-81510292b0ae"))).get_TotalSizeInBytes(&_ret));
		return _ret;
	}
}

interface PhotoImportFindItemsResult : Windows.Media.Import.IPhotoImportFindItemsResult, Windows.Media.Import.IPhotoImportFindItemsResult2
{
extern(Windows):
	final Windows.Media.Import.PhotoImportSession Session()
	{
		Windows.Media.Import.PhotoImportSession _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_Session(&_ret));
		return _ret;
	}
	final bool HasSucceeded()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_HasSucceeded(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportItem) FoundItems()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportItem) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_FoundItems(&_ret));
		return _ret;
	}
	final UINT32 PhotosCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_PhotosCount(&_ret));
		return _ret;
	}
	final ulong PhotosSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_PhotosSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 VideosCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_VideosCount(&_ret));
		return _ret;
	}
	final ulong VideosSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_VideosSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 SidecarsCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_SidecarsCount(&_ret));
		return _ret;
	}
	final ulong SidecarsSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_SidecarsSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 SiblingsCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_SiblingsCount(&_ret));
		return _ret;
	}
	final ulong SiblingsSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_SiblingsSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 TotalCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_TotalCount(&_ret));
		return _ret;
	}
	final ulong TotalSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_TotalSizeInBytes(&_ret));
		return _ret;
	}
	final void SelectAll()
	{
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).abi_SelectAll());
	}
	final void SelectNone()
	{
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).abi_SelectNone());
	}
	final Windows.Foundation.IAsyncAction SelectNewAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).abi_SelectNewAsync(&_ret));
		return _ret;
	}
	final void SetImportMode(Windows.Media.Import.PhotoImportImportMode value)
	{
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).abi_SetImportMode(value));
	}
	final Windows.Media.Import.PhotoImportImportMode ImportMode()
	{
		Windows.Media.Import.PhotoImportImportMode _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_ImportMode(&_ret));
		return _ret;
	}
	final UINT32 SelectedPhotosCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_SelectedPhotosCount(&_ret));
		return _ret;
	}
	final ulong SelectedPhotosSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_SelectedPhotosSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 SelectedVideosCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_SelectedVideosCount(&_ret));
		return _ret;
	}
	final ulong SelectedVideosSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_SelectedVideosSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 SelectedSidecarsCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_SelectedSidecarsCount(&_ret));
		return _ret;
	}
	final ulong SelectedSidecarsSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_SelectedSidecarsSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 SelectedSiblingsCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_SelectedSiblingsCount(&_ret));
		return _ret;
	}
	final ulong SelectedSiblingsSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_SelectedSiblingsSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 SelectedTotalCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_SelectedTotalCount(&_ret));
		return _ret;
	}
	final ulong SelectedTotalSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).get_SelectedTotalSizeInBytes(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnSelectionChanged(void delegate(Windows.Media.Import.PhotoImportFindItemsResult, Windows.Media.Import.PhotoImportSelectionChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).add_SelectionChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Import.PhotoImportFindItemsResult, Windows.Media.Import.PhotoImportSelectionChangedEventArgs), Windows.Media.Import.PhotoImportFindItemsResult, Windows.Media.Import.PhotoImportSelectionChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSelectionChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).remove_SelectionChanged(token));
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportImportItemsResult, Windows.Media.Import.PhotoImportProgress) ImportItemsAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportImportItemsResult, Windows.Media.Import.PhotoImportProgress) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).abi_ImportItemsAsync(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnItemImported(void delegate(Windows.Media.Import.PhotoImportFindItemsResult, Windows.Media.Import.PhotoImportItemImportedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).add_ItemImported(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Import.PhotoImportFindItemsResult, Windows.Media.Import.PhotoImportItemImportedEventArgs), Windows.Media.Import.PhotoImportFindItemsResult, Windows.Media.Import.PhotoImportItemImportedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeItemImported(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult)this.asInterface(uuid("3915e647-6c78-492b-844e-8fe5e8f6bfb9"))).remove_ItemImported(token));
	}
	final void AddItemsInDateRangeToSelection(Windows.Foundation.DateTime rangeStart, Windows.Foundation.TimeSpan rangeLength)
	{
		Debug.OK((cast(Windows.Media.Import.IPhotoImportFindItemsResult2)this.asInterface(uuid("fbdd6a3b-ecf9-406a-815e-5015625b0a88"))).abi_AddItemsInDateRangeToSelection(rangeStart, rangeLength));
	}
}

interface PhotoImportImportItemsResult : Windows.Media.Import.IPhotoImportImportItemsResult
{
extern(Windows):
	final Windows.Media.Import.PhotoImportSession Session()
	{
		Windows.Media.Import.PhotoImportSession _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportImportItemsResult)this.asInterface(uuid("e4d4f478-d419-4443-a84e-f06a850c0b00"))).get_Session(&_ret));
		return _ret;
	}
	final bool HasSucceeded()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportImportItemsResult)this.asInterface(uuid("e4d4f478-d419-4443-a84e-f06a850c0b00"))).get_HasSucceeded(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportItem) ImportedItems()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportItem) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportImportItemsResult)this.asInterface(uuid("e4d4f478-d419-4443-a84e-f06a850c0b00"))).get_ImportedItems(&_ret));
		return _ret;
	}
	final UINT32 PhotosCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportImportItemsResult)this.asInterface(uuid("e4d4f478-d419-4443-a84e-f06a850c0b00"))).get_PhotosCount(&_ret));
		return _ret;
	}
	final ulong PhotosSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportImportItemsResult)this.asInterface(uuid("e4d4f478-d419-4443-a84e-f06a850c0b00"))).get_PhotosSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 VideosCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportImportItemsResult)this.asInterface(uuid("e4d4f478-d419-4443-a84e-f06a850c0b00"))).get_VideosCount(&_ret));
		return _ret;
	}
	final ulong VideosSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportImportItemsResult)this.asInterface(uuid("e4d4f478-d419-4443-a84e-f06a850c0b00"))).get_VideosSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 SidecarsCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportImportItemsResult)this.asInterface(uuid("e4d4f478-d419-4443-a84e-f06a850c0b00"))).get_SidecarsCount(&_ret));
		return _ret;
	}
	final ulong SidecarsSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportImportItemsResult)this.asInterface(uuid("e4d4f478-d419-4443-a84e-f06a850c0b00"))).get_SidecarsSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 SiblingsCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportImportItemsResult)this.asInterface(uuid("e4d4f478-d419-4443-a84e-f06a850c0b00"))).get_SiblingsCount(&_ret));
		return _ret;
	}
	final ulong SiblingsSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportImportItemsResult)this.asInterface(uuid("e4d4f478-d419-4443-a84e-f06a850c0b00"))).get_SiblingsSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 TotalCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportImportItemsResult)this.asInterface(uuid("e4d4f478-d419-4443-a84e-f06a850c0b00"))).get_TotalCount(&_ret));
		return _ret;
	}
	final ulong TotalSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportImportItemsResult)this.asInterface(uuid("e4d4f478-d419-4443-a84e-f06a850c0b00"))).get_TotalSizeInBytes(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportDeleteImportedItemsFromSourceResult, double) DeleteImportedItemsFromSourceAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportDeleteImportedItemsFromSourceResult, double) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportImportItemsResult)this.asInterface(uuid("e4d4f478-d419-4443-a84e-f06a850c0b00"))).abi_DeleteImportedItemsFromSourceAsync(&_ret));
		return _ret;
	}
}

interface PhotoImportItem : Windows.Media.Import.IPhotoImportItem
{
extern(Windows):
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportItem)this.asInterface(uuid("a9d07e76-9bfc-43b8-b356-633b6a988c9e"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final ulong ItemKey()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportItem)this.asInterface(uuid("a9d07e76-9bfc-43b8-b356-633b6a988c9e"))).get_ItemKey(&_ret));
		return _ret;
	}
	final Windows.Media.Import.PhotoImportContentType ContentType()
	{
		Windows.Media.Import.PhotoImportContentType _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportItem)this.asInterface(uuid("a9d07e76-9bfc-43b8-b356-633b6a988c9e"))).get_ContentType(&_ret));
		return _ret;
	}
	final ulong SizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportItem)this.asInterface(uuid("a9d07e76-9bfc-43b8-b356-633b6a988c9e"))).get_SizeInBytes(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Date()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportItem)this.asInterface(uuid("a9d07e76-9bfc-43b8-b356-633b6a988c9e"))).get_Date(&_ret));
		return _ret;
	}
	final Windows.Media.Import.PhotoImportSidecar Sibling()
	{
		Windows.Media.Import.PhotoImportSidecar _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportItem)this.asInterface(uuid("a9d07e76-9bfc-43b8-b356-633b6a988c9e"))).get_Sibling(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportSidecar) Sidecars()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportSidecar) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportItem)this.asInterface(uuid("a9d07e76-9bfc-43b8-b356-633b6a988c9e"))).get_Sidecars(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportVideoSegment) VideoSegments()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportVideoSegment) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportItem)this.asInterface(uuid("a9d07e76-9bfc-43b8-b356-633b6a988c9e"))).get_VideoSegments(&_ret));
		return _ret;
	}
	final bool IsSelected()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportItem)this.asInterface(uuid("a9d07e76-9bfc-43b8-b356-633b6a988c9e"))).get_IsSelected(&_ret));
		return _ret;
	}
	final void IsSelected(bool value)
	{
		Debug.OK((cast(Windows.Media.Import.IPhotoImportItem)this.asInterface(uuid("a9d07e76-9bfc-43b8-b356-633b6a988c9e"))).set_IsSelected(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Thumbnail()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportItem)this.asInterface(uuid("a9d07e76-9bfc-43b8-b356-633b6a988c9e"))).get_Thumbnail(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) ImportedFileNames()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportItem)this.asInterface(uuid("a9d07e76-9bfc-43b8-b356-633b6a988c9e"))).get_ImportedFileNames(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) DeletedFileNames()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportItem)this.asInterface(uuid("a9d07e76-9bfc-43b8-b356-633b6a988c9e"))).get_DeletedFileNames(&_ret));
		return _ret;
	}
}

interface PhotoImportItemImportedEventArgs : Windows.Media.Import.IPhotoImportItemImportedEventArgs
{
extern(Windows):
	final Windows.Media.Import.PhotoImportItem ImportedItem()
	{
		Windows.Media.Import.PhotoImportItem _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportItemImportedEventArgs)this.asInterface(uuid("42cb2fdd-7d68-47b5-bc7c-ceb73e0c77dc"))).get_ImportedItem(&_ret));
		return _ret;
	}
}

interface PhotoImportManager
{
	private static Windows.Media.Import.IPhotoImportManagerStatics _staticInstance;
	public static Windows.Media.Import.IPhotoImportManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Import.IPhotoImportManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(bool) IsSupportedAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(staticInstance.abi_IsSupportedAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportSource)) FindAllSourcesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportSource)) _ret;
		Debug.OK(staticInstance.abi_FindAllSourcesAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportOperation) GetPendingOperations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportOperation) _ret;
		Debug.OK(staticInstance.abi_GetPendingOperations(&_ret));
		return _ret;
	}
}

interface PhotoImportOperation : Windows.Media.Import.IPhotoImportOperation
{
extern(Windows):
	final Windows.Media.Import.PhotoImportStage Stage()
	{
		Windows.Media.Import.PhotoImportStage _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportOperation)this.asInterface(uuid("d9f797e4-a09a-4ee4-a4b1-20940277a5be"))).get_Stage(&_ret));
		return _ret;
	}
	final Windows.Media.Import.PhotoImportSession Session()
	{
		Windows.Media.Import.PhotoImportSession _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportOperation)this.asInterface(uuid("d9f797e4-a09a-4ee4-a4b1-20940277a5be"))).get_Session(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportFindItemsResult, UINT32) ContinueFindingItemsAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportFindItemsResult, UINT32) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportOperation)this.asInterface(uuid("d9f797e4-a09a-4ee4-a4b1-20940277a5be"))).get_ContinueFindingItemsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportImportItemsResult, Windows.Media.Import.PhotoImportProgress) ContinueImportingItemsAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportImportItemsResult, Windows.Media.Import.PhotoImportProgress) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportOperation)this.asInterface(uuid("d9f797e4-a09a-4ee4-a4b1-20940277a5be"))).get_ContinueImportingItemsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportDeleteImportedItemsFromSourceResult, double) ContinueDeletingImportedItemsFromSourceAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportDeleteImportedItemsFromSourceResult, double) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportOperation)this.asInterface(uuid("d9f797e4-a09a-4ee4-a4b1-20940277a5be"))).get_ContinueDeletingImportedItemsFromSourceAsync(&_ret));
		return _ret;
	}
}

interface PhotoImportSelectionChangedEventArgs : Windows.Media.Import.IPhotoImportSelectionChangedEventArgs
{
extern(Windows):
	final bool IsSelectionEmpty()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSelectionChangedEventArgs)this.asInterface(uuid("10461782-fa9d-4c30-8bc9-4d64911572d5"))).get_IsSelectionEmpty(&_ret));
		return _ret;
	}
}

interface PhotoImportSession : Windows.Media.Import.IPhotoImportSession, Windows.Foundation.IClosable, Windows.Media.Import.IPhotoImportSession2
{
extern(Windows):
	final Windows.Media.Import.PhotoImportSource Source()
	{
		Windows.Media.Import.PhotoImportSource _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSession)this.asInterface(uuid("aa63916e-ecdb-4efe-94c6-5f5cafe34cfb"))).get_Source(&_ret));
		return _ret;
	}
	final GUID SessionId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSession)this.asInterface(uuid("aa63916e-ecdb-4efe-94c6-5f5cafe34cfb"))).get_SessionId(&_ret));
		return _ret;
	}
	final void DestinationFolder(Windows.Storage.IStorageFolder value)
	{
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSession)this.asInterface(uuid("aa63916e-ecdb-4efe-94c6-5f5cafe34cfb"))).set_DestinationFolder(value));
	}
	final Windows.Storage.IStorageFolder DestinationFolder()
	{
		Windows.Storage.IStorageFolder _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSession)this.asInterface(uuid("aa63916e-ecdb-4efe-94c6-5f5cafe34cfb"))).get_DestinationFolder(&_ret));
		return _ret;
	}
	final void AppendSessionDateToDestinationFolder(bool value)
	{
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSession)this.asInterface(uuid("aa63916e-ecdb-4efe-94c6-5f5cafe34cfb"))).set_AppendSessionDateToDestinationFolder(value));
	}
	final bool AppendSessionDateToDestinationFolder()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSession)this.asInterface(uuid("aa63916e-ecdb-4efe-94c6-5f5cafe34cfb"))).get_AppendSessionDateToDestinationFolder(&_ret));
		return _ret;
	}
	final void SubfolderCreationMode(Windows.Media.Import.PhotoImportSubfolderCreationMode value)
	{
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSession)this.asInterface(uuid("aa63916e-ecdb-4efe-94c6-5f5cafe34cfb"))).set_SubfolderCreationMode(value));
	}
	final Windows.Media.Import.PhotoImportSubfolderCreationMode SubfolderCreationMode()
	{
		Windows.Media.Import.PhotoImportSubfolderCreationMode _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSession)this.asInterface(uuid("aa63916e-ecdb-4efe-94c6-5f5cafe34cfb"))).get_SubfolderCreationMode(&_ret));
		return _ret;
	}
	final void DestinationFileNamePrefix(wstring value)
	{
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSession)this.asInterface(uuid("aa63916e-ecdb-4efe-94c6-5f5cafe34cfb"))).set_DestinationFileNamePrefix(hstring(value).handle));
	}
	final wstring DestinationFileNamePrefix()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSession)this.asInterface(uuid("aa63916e-ecdb-4efe-94c6-5f5cafe34cfb"))).get_DestinationFileNamePrefix(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportFindItemsResult, UINT32) FindItemsAsync(Windows.Media.Import.PhotoImportContentTypeFilter contentTypeFilter, Windows.Media.Import.PhotoImportItemSelectionMode itemSelectionMode)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Import.PhotoImportFindItemsResult, UINT32) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSession)this.asInterface(uuid("aa63916e-ecdb-4efe-94c6-5f5cafe34cfb"))).abi_FindItemsAsync(contentTypeFilter, itemSelectionMode, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final void SubfolderDateFormat(Windows.Media.Import.PhotoImportSubfolderDateFormat value)
	{
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSession2)this.asInterface(uuid("2a526710-3ec6-469d-a375-2b9f4785391e"))).set_SubfolderDateFormat(value));
	}
	final Windows.Media.Import.PhotoImportSubfolderDateFormat SubfolderDateFormat()
	{
		Windows.Media.Import.PhotoImportSubfolderDateFormat _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSession2)this.asInterface(uuid("2a526710-3ec6-469d-a375-2b9f4785391e"))).get_SubfolderDateFormat(&_ret));
		return _ret;
	}
	final void RememberDeselectedItems(bool value)
	{
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSession2)this.asInterface(uuid("2a526710-3ec6-469d-a375-2b9f4785391e"))).set_RememberDeselectedItems(value));
	}
	final bool RememberDeselectedItems()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSession2)this.asInterface(uuid("2a526710-3ec6-469d-a375-2b9f4785391e"))).get_RememberDeselectedItems(&_ret));
		return _ret;
	}
}

interface PhotoImportSidecar : Windows.Media.Import.IPhotoImportSidecar
{
extern(Windows):
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSidecar)this.asInterface(uuid("46d7d757-f802-44c7-9c98-7a71f4bc1486"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final ulong SizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSidecar)this.asInterface(uuid("46d7d757-f802-44c7-9c98-7a71f4bc1486"))).get_SizeInBytes(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Date()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSidecar)this.asInterface(uuid("46d7d757-f802-44c7-9c98-7a71f4bc1486"))).get_Date(&_ret));
		return _ret;
	}
}

interface PhotoImportSource : Windows.Media.Import.IPhotoImportSource
{
extern(Windows):
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).get_DisplayName(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).get_Description(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Manufacturer()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).get_Manufacturer(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Model()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).get_Model(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring SerialNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).get_SerialNumber(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring ConnectionProtocol()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).get_ConnectionProtocol(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Media.Import.PhotoImportConnectionTransport ConnectionTransport()
	{
		Windows.Media.Import.PhotoImportConnectionTransport _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).get_ConnectionTransport(&_ret));
		return _ret;
	}
	final Windows.Media.Import.PhotoImportSourceType Type()
	{
		Windows.Media.Import.PhotoImportSourceType _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).get_Type(&_ret));
		return _ret;
	}
	final Windows.Media.Import.PhotoImportPowerSource PowerSource()
	{
		Windows.Media.Import.PhotoImportPowerSource _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).get_PowerSource(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) BatteryLevelPercent()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).get_BatteryLevelPercent(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) DateTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).get_DateTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportStorageMedium) StorageMedia()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportStorageMedium) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).get_StorageMedia(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(bool) IsLocked()
	{
		Windows.Foundation.IReference!(bool) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).get_IsLocked(&_ret));
		return _ret;
	}
	final bool IsMassStorage()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).get_IsMassStorage(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Thumbnail()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).get_Thumbnail(&_ret));
		return _ret;
	}
	final Windows.Media.Import.PhotoImportSession CreateImportSession()
	{
		Windows.Media.Import.PhotoImportSession _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportSource)this.asInterface(uuid("1f8ea35e-145b-4cd6-87f1-54965a982fef"))).abi_CreateImportSession(&_ret));
		return _ret;
	}

	private static Windows.Media.Import.IPhotoImportSourceStatics _staticInstance;
	public static Windows.Media.Import.IPhotoImportSourceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Import.IPhotoImportSourceStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.Import.PhotoImportSource) FromIdAsync(wstring sourceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Import.PhotoImportSource) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(hstring(sourceId).handle, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.Import.PhotoImportSource) FromFolderAsync(Windows.Storage.IStorageFolder sourceRootFolder)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Import.PhotoImportSource) _ret;
		Debug.OK(staticInstance.abi_FromFolderAsync(sourceRootFolder, &_ret));
		return _ret;
	}
}

interface PhotoImportStorageMedium : Windows.Media.Import.IPhotoImportStorageMedium
{
extern(Windows):
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportStorageMedium)this.asInterface(uuid("f2b9b093-fc85-487f-87c2-58d675d05b07"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportStorageMedium)this.asInterface(uuid("f2b9b093-fc85-487f-87c2-58d675d05b07"))).get_Description(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring SerialNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportStorageMedium)this.asInterface(uuid("f2b9b093-fc85-487f-87c2-58d675d05b07"))).get_SerialNumber(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Media.Import.PhotoImportStorageMediumType StorageMediumType()
	{
		Windows.Media.Import.PhotoImportStorageMediumType _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportStorageMedium)this.asInterface(uuid("f2b9b093-fc85-487f-87c2-58d675d05b07"))).get_StorageMediumType(&_ret));
		return _ret;
	}
	final Windows.Media.Import.PhotoImportAccessMode SupportedAccessMode()
	{
		Windows.Media.Import.PhotoImportAccessMode _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportStorageMedium)this.asInterface(uuid("f2b9b093-fc85-487f-87c2-58d675d05b07"))).get_SupportedAccessMode(&_ret));
		return _ret;
	}
	final ulong CapacityInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportStorageMedium)this.asInterface(uuid("f2b9b093-fc85-487f-87c2-58d675d05b07"))).get_CapacityInBytes(&_ret));
		return _ret;
	}
	final ulong AvailableSpaceInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportStorageMedium)this.asInterface(uuid("f2b9b093-fc85-487f-87c2-58d675d05b07"))).get_AvailableSpaceInBytes(&_ret));
		return _ret;
	}
	final void Refresh()
	{
		Debug.OK((cast(Windows.Media.Import.IPhotoImportStorageMedium)this.asInterface(uuid("f2b9b093-fc85-487f-87c2-58d675d05b07"))).abi_Refresh());
	}
}

interface PhotoImportVideoSegment : Windows.Media.Import.IPhotoImportVideoSegment
{
extern(Windows):
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportVideoSegment)this.asInterface(uuid("623c0289-321a-41d8-9166-8c62a333276c"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final ulong SizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportVideoSegment)this.asInterface(uuid("623c0289-321a-41d8-9166-8c62a333276c"))).get_SizeInBytes(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Date()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportVideoSegment)this.asInterface(uuid("623c0289-321a-41d8-9166-8c62a333276c"))).get_Date(&_ret));
		return _ret;
	}
	final Windows.Media.Import.PhotoImportSidecar Sibling()
	{
		Windows.Media.Import.PhotoImportSidecar _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportVideoSegment)this.asInterface(uuid("623c0289-321a-41d8-9166-8c62a333276c"))).get_Sibling(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportSidecar) Sidecars()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Import.PhotoImportSidecar) _ret;
		Debug.OK((cast(Windows.Media.Import.IPhotoImportVideoSegment)this.asInterface(uuid("623c0289-321a-41d8-9166-8c62a333276c"))).get_Sidecars(&_ret));
		return _ret;
	}
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