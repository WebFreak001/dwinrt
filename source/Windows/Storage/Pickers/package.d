module Windows.Storage.Pickers;

import dwinrt;

@uuid("2ca8278a-12c5-4c5f-8977-94547793c241")
@WinrtFactory("Windows.Storage.Pickers.FileOpenPicker")
interface IFileOpenPicker : IInspectable
{
extern(Windows):
	HRESULT get_ViewMode(Windows.Storage.Pickers.PickerViewMode* return_value);
	HRESULT set_ViewMode(Windows.Storage.Pickers.PickerViewMode value);
	HRESULT get_SettingsIdentifier(HSTRING* return_value);
	HRESULT set_SettingsIdentifier(HSTRING value);
	HRESULT get_SuggestedStartLocation(Windows.Storage.Pickers.PickerLocationId* return_value);
	HRESULT set_SuggestedStartLocation(Windows.Storage.Pickers.PickerLocationId value);
	HRESULT get_CommitButtonText(HSTRING* return_value);
	HRESULT set_CommitButtonText(HSTRING value);
	HRESULT get_FileTypeFilter(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT abi_PickSingleFileAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_pickSingleFileOperation);
	HRESULT abi_PickMultipleFilesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile))* return_pickMultipleFilesOperation);
}

@uuid("8ceb6cd2-b446-46f7-b265-90f8e55ad650")
@WinrtFactory("Windows.Storage.Pickers.FileOpenPicker")
interface IFileOpenPicker2 : IInspectable, Windows.Storage.Pickers.IFileOpenPicker
{
extern(Windows):
	deprecated("Instead, use PickSingleFileAsync/PickMultipleFilesAsync")
	HRESULT get_ContinuationData(Windows.Foundation.Collections.ValueSet* return_value);
	deprecated("Instead, use PickSingleFileAsync")
	HRESULT abi_PickSingleFileAndContinue();
	deprecated("Instead, use PickMultipleFilesAsync")
	HRESULT abi_PickMultipleFilesAndContinue();
}

@uuid("6821573b-2f02-4833-96d4-abbfad72b67b")
@WinrtFactory("Windows.Storage.Pickers.FileOpenPicker")
interface IFileOpenPickerStatics : IInspectable
{
extern(Windows):
	deprecated("Instead, use PickSingleFileAsync")
	HRESULT abi_ResumePickSingleFileAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_pickSingleFileOperation);
}

@uuid("3f57b569-2522-4ca5-aa73-a15509f1fcbf")
@WinrtFactory("Windows.Storage.Pickers.FileOpenPicker")
interface IFileOpenPickerWithOperationId : IInspectable
{
extern(Windows):
	HRESULT abi_PickSingleFileAsync(HSTRING pickerOperationId, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_pickSingleFileOperation);
}

@uuid("3286ffcb-617f-4cc5-af6a-b3fdf29ad145")
@WinrtFactory("Windows.Storage.Pickers.FileSavePicker")
interface IFileSavePicker : IInspectable
{
extern(Windows):
	HRESULT get_SettingsIdentifier(HSTRING* return_value);
	HRESULT set_SettingsIdentifier(HSTRING value);
	HRESULT get_SuggestedStartLocation(Windows.Storage.Pickers.PickerLocationId* return_value);
	HRESULT set_SuggestedStartLocation(Windows.Storage.Pickers.PickerLocationId value);
	HRESULT get_CommitButtonText(HSTRING* return_value);
	HRESULT set_CommitButtonText(HSTRING value);
	HRESULT get_FileTypeChoices(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING))* return_value);
	HRESULT get_DefaultFileExtension(HSTRING* return_value);
	HRESULT set_DefaultFileExtension(HSTRING value);
	HRESULT get_SuggestedSaveFile(Windows.Storage.StorageFile* return_value);
	HRESULT set_SuggestedSaveFile(Windows.Storage.StorageFile value);
	HRESULT get_SuggestedFileName(HSTRING* return_value);
	HRESULT set_SuggestedFileName(HSTRING value);
	HRESULT abi_PickSaveFileAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_pickSaveFileOperation);
}

@uuid("0ec313a2-d24b-449a-8197-e89104fd42cc")
@WinrtFactory("Windows.Storage.Pickers.FileSavePicker")
interface IFileSavePicker2 : IInspectable, Windows.Storage.Pickers.IFileSavePicker
{
extern(Windows):
	HRESULT get_ContinuationData(Windows.Foundation.Collections.ValueSet* return_value);
	deprecated("Instead, use PickSaveFileAsync")
	HRESULT abi_PickSaveFileAndContinue();
}

@uuid("698aec69-ba3c-4e51-bd90-4abcbbf4cfaf")
@WinrtFactory("Windows.Storage.Pickers.FileSavePicker")
interface IFileSavePicker3 : IInspectable, Windows.Storage.Pickers.IFileSavePicker
{
extern(Windows):
	HRESULT get_EnterpriseId(HSTRING* return_value);
	HRESULT set_EnterpriseId(HSTRING value);
}

@uuid("084f7799-f3fb-400a-99b1-7b4a772fd60d")
@WinrtFactory("Windows.Storage.Pickers.FolderPicker")
interface IFolderPicker : IInspectable
{
extern(Windows):
	HRESULT get_ViewMode(Windows.Storage.Pickers.PickerViewMode* return_value);
	HRESULT set_ViewMode(Windows.Storage.Pickers.PickerViewMode value);
	HRESULT get_SettingsIdentifier(HSTRING* return_value);
	HRESULT set_SettingsIdentifier(HSTRING value);
	HRESULT get_SuggestedStartLocation(Windows.Storage.Pickers.PickerLocationId* return_value);
	HRESULT set_SuggestedStartLocation(Windows.Storage.Pickers.PickerLocationId value);
	HRESULT get_CommitButtonText(HSTRING* return_value);
	HRESULT set_CommitButtonText(HSTRING value);
	HRESULT get_FileTypeFilter(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT abi_PickSingleFolderAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_pickSingleFolderOperation);
}

@uuid("8eb3ba97-dc85-4616-be94-9660881f2f5d")
@WinrtFactory("Windows.Storage.Pickers.FolderPicker")
interface IFolderPicker2 : IInspectable, Windows.Storage.Pickers.IFolderPicker
{
extern(Windows):
	HRESULT get_ContinuationData(Windows.Foundation.Collections.ValueSet* return_value);
	deprecated("Instead, use PickSingleFolderAsync")
	HRESULT abi_PickFolderAndContinue();
}

interface FileExtensionVector : Windows.Foundation.Collections.IVector!(HSTRING), Windows.Foundation.Collections.IIterable!(HSTRING)
{
extern(Windows):
	final HSTRING GetAt(uint index)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(HSTRING)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(HSTRING)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(HSTRING)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(HSTRING)).abi_GetView(out_view));
	}
	final uint IndexOf(HSTRING value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(HSTRING)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, HSTRING item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(HSTRING)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, HSTRING item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(HSTRING)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(HSTRING)).abi_RemoveAt(index));
	}
	final void Append(HSTRING item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(HSTRING)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(HSTRING)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(HSTRING)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, HSTRING* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(HSTRING)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, HSTRING* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(HSTRING)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(HSTRING)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(HSTRING)).abi_First(out_first));
	}
}

interface FileOpenPicker : Windows.Storage.Pickers.IFileOpenPicker, Windows.Storage.Pickers.IFileOpenPickerWithOperationId, Windows.Storage.Pickers.IFileOpenPicker2
{
extern(Windows):
	final Windows.Storage.Pickers.PickerViewMode ViewMode()
	{
		Windows.Storage.Pickers.PickerViewMode _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileOpenPicker).get_ViewMode(&_ret));
		return _ret;
	}
	final void ViewMode(Windows.Storage.Pickers.PickerViewMode value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileOpenPicker).set_ViewMode(value));
	}
	final HSTRING SettingsIdentifier()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileOpenPicker).get_SettingsIdentifier(&_ret));
		return _ret;
	}
	final void SettingsIdentifier(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileOpenPicker).set_SettingsIdentifier(value));
	}
	final Windows.Storage.Pickers.PickerLocationId SuggestedStartLocation()
	{
		Windows.Storage.Pickers.PickerLocationId _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileOpenPicker).get_SuggestedStartLocation(&_ret));
		return _ret;
	}
	final void SuggestedStartLocation(Windows.Storage.Pickers.PickerLocationId value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileOpenPicker).set_SuggestedStartLocation(value));
	}
	final HSTRING CommitButtonText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileOpenPicker).get_CommitButtonText(&_ret));
		return _ret;
	}
	final void CommitButtonText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileOpenPicker).set_CommitButtonText(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) FileTypeFilter()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileOpenPicker).get_FileTypeFilter(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) PickSingleFileAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileOpenPicker).abi_PickSingleFileAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)) PickMultipleFilesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)) _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileOpenPicker).abi_PickMultipleFilesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) PickSingleFileAsync(HSTRING pickerOperationId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileOpenPickerWithOperationId).abi_PickSingleFileAsync(pickerOperationId, &_ret));
		return _ret;
	}
	deprecated("Instead, use PickSingleFileAsync/PickMultipleFilesAsync")
	final Windows.Foundation.Collections.ValueSet ContinuationData()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileOpenPicker2).get_ContinuationData(&_ret));
		return _ret;
	}
	deprecated("Instead, use PickSingleFileAsync")
	final void PickSingleFileAndContinue()
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileOpenPicker2).abi_PickSingleFileAndContinue());
	}
	deprecated("Instead, use PickMultipleFilesAsync")
	final void PickMultipleFilesAndContinue()
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileOpenPicker2).abi_PickMultipleFilesAndContinue());
	}
}

interface FilePickerFileTypesOrderedMap : Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)))
{
extern(Windows):
	final  Windows.Foundation.Collections.IVector!(HSTRING) Lookup(HSTRING key)
	{
		 Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING))).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING))).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(HSTRING key)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING))).abi_HasKey(key, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 Windows.Foundation.Collections.IVector!(HSTRING)) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  Windows.Foundation.Collections.IVector!(HSTRING)) _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING))).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(HSTRING key,	Windows.Foundation.Collections.IVector!(HSTRING) value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING))).abi_Insert(key, value, &_ret));
		return _ret;
	}
	final void Remove(HSTRING key)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING))).abi_Remove(key));
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING))).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)))* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)))).abi_First(out_first));
	}
}

interface FilePickerSelectedFilesArray : Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile), Windows.Foundation.Collections.IIterable!(Windows.Storage.StorageFile)
{
extern(Windows):
	final void GetAt(uint index, Windows.Storage.StorageFile* out_item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Storage.StorageFile value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Storage.StorageFile* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Storage.StorageFile)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Storage.StorageFile)).abi_First(out_first));
	}
}

interface FileSavePicker : Windows.Storage.Pickers.IFileSavePicker, Windows.Storage.Pickers.IFileSavePicker2, Windows.Storage.Pickers.IFileSavePicker3
{
extern(Windows):
	final HSTRING SettingsIdentifier()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker).get_SettingsIdentifier(&_ret));
		return _ret;
	}
	final void SettingsIdentifier(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker).set_SettingsIdentifier(value));
	}
	final Windows.Storage.Pickers.PickerLocationId SuggestedStartLocation()
	{
		Windows.Storage.Pickers.PickerLocationId _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker).get_SuggestedStartLocation(&_ret));
		return _ret;
	}
	final void SuggestedStartLocation(Windows.Storage.Pickers.PickerLocationId value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker).set_SuggestedStartLocation(value));
	}
	final HSTRING CommitButtonText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker).get_CommitButtonText(&_ret));
		return _ret;
	}
	final void CommitButtonText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker).set_CommitButtonText(value));
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)) FileTypeChoices()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)) _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker).get_FileTypeChoices(&_ret));
		return _ret;
	}
	final HSTRING DefaultFileExtension()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker).get_DefaultFileExtension(&_ret));
		return _ret;
	}
	final void DefaultFileExtension(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker).set_DefaultFileExtension(value));
	}
	final Windows.Storage.StorageFile SuggestedSaveFile()
	{
		Windows.Storage.StorageFile _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker).get_SuggestedSaveFile(&_ret));
		return _ret;
	}
	final void SuggestedSaveFile(Windows.Storage.StorageFile value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker).set_SuggestedSaveFile(value));
	}
	final HSTRING SuggestedFileName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker).get_SuggestedFileName(&_ret));
		return _ret;
	}
	final void SuggestedFileName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker).set_SuggestedFileName(value));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) PickSaveFileAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker).abi_PickSaveFileAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet ContinuationData()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker2).get_ContinuationData(&_ret));
		return _ret;
	}
	deprecated("Instead, use PickSaveFileAsync")
	final void PickSaveFileAndContinue()
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker2).abi_PickSaveFileAndContinue());
	}
	final HSTRING EnterpriseId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker3).get_EnterpriseId(&_ret));
		return _ret;
	}
	final void EnterpriseId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFileSavePicker3).set_EnterpriseId(value));
	}
}

interface FolderPicker : Windows.Storage.Pickers.IFolderPicker, Windows.Storage.Pickers.IFolderPicker2
{
extern(Windows):
	final Windows.Storage.Pickers.PickerViewMode ViewMode()
	{
		Windows.Storage.Pickers.PickerViewMode _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFolderPicker).get_ViewMode(&_ret));
		return _ret;
	}
	final void ViewMode(Windows.Storage.Pickers.PickerViewMode value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFolderPicker).set_ViewMode(value));
	}
	final HSTRING SettingsIdentifier()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFolderPicker).get_SettingsIdentifier(&_ret));
		return _ret;
	}
	final void SettingsIdentifier(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFolderPicker).set_SettingsIdentifier(value));
	}
	final Windows.Storage.Pickers.PickerLocationId SuggestedStartLocation()
	{
		Windows.Storage.Pickers.PickerLocationId _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFolderPicker).get_SuggestedStartLocation(&_ret));
		return _ret;
	}
	final void SuggestedStartLocation(Windows.Storage.Pickers.PickerLocationId value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFolderPicker).set_SuggestedStartLocation(value));
	}
	final HSTRING CommitButtonText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFolderPicker).get_CommitButtonText(&_ret));
		return _ret;
	}
	final void CommitButtonText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFolderPicker).set_CommitButtonText(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) FileTypeFilter()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFolderPicker).get_FileTypeFilter(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) PickSingleFolderAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFolderPicker).abi_PickSingleFolderAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet ContinuationData()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.IFolderPicker2).get_ContinuationData(&_ret));
		return _ret;
	}
	deprecated("Instead, use PickSingleFolderAsync")
	final void PickFolderAndContinue()
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.IFolderPicker2).abi_PickFolderAndContinue());
	}
}

enum PickerLocationId
{
	DocumentsLibrary = 0,
	ComputerFolder = 1,
	Desktop = 2,
	Downloads = 3,
	HomeGroup = 4,
	MusicLibrary = 5,
	PicturesLibrary = 6,
	VideosLibrary = 7,
	Objects3D = 8,
	Unspecified = 9
}

enum PickerViewMode
{
	List = 0,
	Thumbnail = 1
}