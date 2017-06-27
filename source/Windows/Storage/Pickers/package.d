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
interface IFileOpenPicker2_Base : IInspectable
{
extern(Windows):
	deprecated("Instead, use PickSingleFileAsync/PickMultipleFilesAsync")
	HRESULT get_ContinuationData(Windows.Foundation.Collections.ValueSet* return_value);
	deprecated("Instead, use PickSingleFileAsync")
	HRESULT abi_PickSingleFileAndContinue();
	deprecated("Instead, use PickMultipleFilesAsync")
	HRESULT abi_PickMultipleFilesAndContinue();
}
@uuid("8ceb6cd2-b446-46f7-b265-90f8e55ad650")
@WinrtFactory("Windows.Storage.Pickers.FileOpenPicker")
interface IFileOpenPicker2 : IFileOpenPicker2_Base, Windows.Storage.Pickers.IFileOpenPicker {}

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
interface IFileSavePicker2_Base : IInspectable
{
extern(Windows):
	HRESULT get_ContinuationData(Windows.Foundation.Collections.ValueSet* return_value);
	deprecated("Instead, use PickSaveFileAsync")
	HRESULT abi_PickSaveFileAndContinue();
}
@uuid("0ec313a2-d24b-449a-8197-e89104fd42cc")
@WinrtFactory("Windows.Storage.Pickers.FileSavePicker")
interface IFileSavePicker2 : IFileSavePicker2_Base, Windows.Storage.Pickers.IFileSavePicker {}

@uuid("698aec69-ba3c-4e51-bd90-4abcbbf4cfaf")
@WinrtFactory("Windows.Storage.Pickers.FileSavePicker")
interface IFileSavePicker3_Base : IInspectable
{
extern(Windows):
	HRESULT get_EnterpriseId(HSTRING* return_value);
	HRESULT set_EnterpriseId(HSTRING value);
}
@uuid("698aec69-ba3c-4e51-bd90-4abcbbf4cfaf")
@WinrtFactory("Windows.Storage.Pickers.FileSavePicker")
interface IFileSavePicker3 : IFileSavePicker3_Base, Windows.Storage.Pickers.IFileSavePicker {}

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
interface IFolderPicker2_Base : IInspectable
{
extern(Windows):
	HRESULT get_ContinuationData(Windows.Foundation.Collections.ValueSet* return_value);
	deprecated("Instead, use PickSingleFolderAsync")
	HRESULT abi_PickFolderAndContinue();
}
@uuid("8eb3ba97-dc85-4616-be94-9660881f2f5d")
@WinrtFactory("Windows.Storage.Pickers.FolderPicker")
interface IFolderPicker2 : IFolderPicker2_Base, Windows.Storage.Pickers.IFolderPicker {}

interface FileExtensionVector : Windows.Foundation.Collections.IVector!(HSTRING), Windows.Foundation.Collections.IIterable!(HSTRING)
{
extern(Windows):
	final HSTRING GetAt(uint index)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(HSTRING))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(HSTRING))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(HSTRING)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(HSTRING))this).abi_GetView(out_view));
	}
	final uint IndexOf(HSTRING value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(HSTRING))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, HSTRING item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(HSTRING))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, HSTRING item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(HSTRING))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(HSTRING))this).abi_RemoveAt(index));
	}
	final void Append(HSTRING item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(HSTRING))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(HSTRING))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(HSTRING))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, HSTRING* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(HSTRING))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, HSTRING* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(HSTRING))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(HSTRING)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(HSTRING))this).abi_First(out_first));
	}
}

interface FileOpenPicker : Windows.Storage.Pickers.IFileOpenPicker, Windows.Storage.Pickers.IFileOpenPickerWithOperationId, Windows.Storage.Pickers.IFileOpenPicker2
{
extern(Windows):
	final Windows.Storage.Pickers.PickerViewMode ViewMode()
	{
		Windows.Storage.Pickers.PickerViewMode _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileOpenPicker)this.asInterface(uuid("2ca8278a-12c5-4c5f-8977-94547793c241"))).get_ViewMode(&_ret));
		return _ret;
	}
	final void ViewMode(Windows.Storage.Pickers.PickerViewMode value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFileOpenPicker)this.asInterface(uuid("2ca8278a-12c5-4c5f-8977-94547793c241"))).set_ViewMode(value));
	}
	final HSTRING SettingsIdentifier()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileOpenPicker)this.asInterface(uuid("2ca8278a-12c5-4c5f-8977-94547793c241"))).get_SettingsIdentifier(&_ret));
		return _ret;
	}
	final void SettingsIdentifier(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFileOpenPicker)this.asInterface(uuid("2ca8278a-12c5-4c5f-8977-94547793c241"))).set_SettingsIdentifier(value));
	}
	final Windows.Storage.Pickers.PickerLocationId SuggestedStartLocation()
	{
		Windows.Storage.Pickers.PickerLocationId _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileOpenPicker)this.asInterface(uuid("2ca8278a-12c5-4c5f-8977-94547793c241"))).get_SuggestedStartLocation(&_ret));
		return _ret;
	}
	final void SuggestedStartLocation(Windows.Storage.Pickers.PickerLocationId value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFileOpenPicker)this.asInterface(uuid("2ca8278a-12c5-4c5f-8977-94547793c241"))).set_SuggestedStartLocation(value));
	}
	final HSTRING CommitButtonText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileOpenPicker)this.asInterface(uuid("2ca8278a-12c5-4c5f-8977-94547793c241"))).get_CommitButtonText(&_ret));
		return _ret;
	}
	final void CommitButtonText(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFileOpenPicker)this.asInterface(uuid("2ca8278a-12c5-4c5f-8977-94547793c241"))).set_CommitButtonText(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) FileTypeFilter()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileOpenPicker)this.asInterface(uuid("2ca8278a-12c5-4c5f-8977-94547793c241"))).get_FileTypeFilter(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) PickSingleFileAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileOpenPicker)this.asInterface(uuid("2ca8278a-12c5-4c5f-8977-94547793c241"))).abi_PickSingleFileAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)) PickMultipleFilesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)) _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileOpenPicker)this.asInterface(uuid("2ca8278a-12c5-4c5f-8977-94547793c241"))).abi_PickMultipleFilesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) PickSingleFileAsync(HSTRING pickerOperationId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileOpenPickerWithOperationId)this.asInterface(uuid("3f57b569-2522-4ca5-aa73-a15509f1fcbf"))).abi_PickSingleFileAsync(pickerOperationId, &_ret));
		return _ret;
	}
	deprecated("Instead, use PickSingleFileAsync/PickMultipleFilesAsync")
	final Windows.Foundation.Collections.ValueSet ContinuationData()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileOpenPicker2)this.asInterface(uuid("8ceb6cd2-b446-46f7-b265-90f8e55ad650"))).get_ContinuationData(&_ret));
		return _ret;
	}
	deprecated("Instead, use PickSingleFileAsync")
	final void PickSingleFileAndContinue()
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFileOpenPicker2)this.asInterface(uuid("8ceb6cd2-b446-46f7-b265-90f8e55ad650"))).abi_PickSingleFileAndContinue());
	}
	deprecated("Instead, use PickMultipleFilesAsync")
	final void PickMultipleFilesAndContinue()
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFileOpenPicker2)this.asInterface(uuid("8ceb6cd2-b446-46f7-b265-90f8e55ad650"))).abi_PickMultipleFilesAndContinue());
	}

	private static Windows.Storage.Pickers.IFileOpenPickerStatics _staticInstance;
	public static Windows.Storage.Pickers.IFileOpenPickerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Storage.Pickers.IFileOpenPickerStatics);
		return _staticInstance;
	}
	deprecated("Instead, use PickSingleFileAsync")
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) ResumePickSingleFileAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(staticInstance.abi_ResumePickSingleFileAsync(&_ret));
		return _ret;
	}
	static FileOpenPicker New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(FileOpenPicker).abi_ActivateInstance(&ret));
		return cast(FileOpenPicker) ret;
	}
}

interface FilePickerFileTypesOrderedMap : Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)))
{
extern(Windows):
	final  Windows.Foundation.Collections.IVector!(HSTRING) Lookup(HSTRING key)
	{
		 Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)))this).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)))this).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(HSTRING key)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)))this).abi_HasKey(key, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 Windows.Foundation.Collections.IVector!(HSTRING)) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  Windows.Foundation.Collections.IVector!(HSTRING)) _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)))this).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(HSTRING key,	Windows.Foundation.Collections.IVector!(HSTRING) value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)))this).abi_Insert(key, value, &_ret));
		return _ret;
	}
	final void Remove(HSTRING key)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)))this).abi_Remove(key));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)))this).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)))* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING))))this).abi_First(out_first));
	}
}

interface FilePickerSelectedFilesArray : Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile), Windows.Foundation.Collections.IIterable!(Windows.Storage.StorageFile)
{
extern(Windows):
	final void GetAt(uint index, Windows.Storage.StorageFile* out_item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile))this).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile))this).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Storage.StorageFile value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Storage.StorageFile* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Storage.StorageFile)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Storage.StorageFile))this).abi_First(out_first));
	}
}

interface FileSavePicker : Windows.Storage.Pickers.IFileSavePicker, Windows.Storage.Pickers.IFileSavePicker2, Windows.Storage.Pickers.IFileSavePicker3
{
extern(Windows):
	final HSTRING SettingsIdentifier()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker)this.asInterface(uuid("3286ffcb-617f-4cc5-af6a-b3fdf29ad145"))).get_SettingsIdentifier(&_ret));
		return _ret;
	}
	final void SettingsIdentifier(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker)this.asInterface(uuid("3286ffcb-617f-4cc5-af6a-b3fdf29ad145"))).set_SettingsIdentifier(value));
	}
	final Windows.Storage.Pickers.PickerLocationId SuggestedStartLocation()
	{
		Windows.Storage.Pickers.PickerLocationId _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker)this.asInterface(uuid("3286ffcb-617f-4cc5-af6a-b3fdf29ad145"))).get_SuggestedStartLocation(&_ret));
		return _ret;
	}
	final void SuggestedStartLocation(Windows.Storage.Pickers.PickerLocationId value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker)this.asInterface(uuid("3286ffcb-617f-4cc5-af6a-b3fdf29ad145"))).set_SuggestedStartLocation(value));
	}
	final HSTRING CommitButtonText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker)this.asInterface(uuid("3286ffcb-617f-4cc5-af6a-b3fdf29ad145"))).get_CommitButtonText(&_ret));
		return _ret;
	}
	final void CommitButtonText(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker)this.asInterface(uuid("3286ffcb-617f-4cc5-af6a-b3fdf29ad145"))).set_CommitButtonText(value));
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)) FileTypeChoices()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, Windows.Foundation.Collections.IVector!(HSTRING)) _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker)this.asInterface(uuid("3286ffcb-617f-4cc5-af6a-b3fdf29ad145"))).get_FileTypeChoices(&_ret));
		return _ret;
	}
	final HSTRING DefaultFileExtension()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker)this.asInterface(uuid("3286ffcb-617f-4cc5-af6a-b3fdf29ad145"))).get_DefaultFileExtension(&_ret));
		return _ret;
	}
	final void DefaultFileExtension(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker)this.asInterface(uuid("3286ffcb-617f-4cc5-af6a-b3fdf29ad145"))).set_DefaultFileExtension(value));
	}
	final Windows.Storage.StorageFile SuggestedSaveFile()
	{
		Windows.Storage.StorageFile _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker)this.asInterface(uuid("3286ffcb-617f-4cc5-af6a-b3fdf29ad145"))).get_SuggestedSaveFile(&_ret));
		return _ret;
	}
	final void SuggestedSaveFile(Windows.Storage.StorageFile value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker)this.asInterface(uuid("3286ffcb-617f-4cc5-af6a-b3fdf29ad145"))).set_SuggestedSaveFile(value));
	}
	final HSTRING SuggestedFileName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker)this.asInterface(uuid("3286ffcb-617f-4cc5-af6a-b3fdf29ad145"))).get_SuggestedFileName(&_ret));
		return _ret;
	}
	final void SuggestedFileName(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker)this.asInterface(uuid("3286ffcb-617f-4cc5-af6a-b3fdf29ad145"))).set_SuggestedFileName(value));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) PickSaveFileAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker)this.asInterface(uuid("3286ffcb-617f-4cc5-af6a-b3fdf29ad145"))).abi_PickSaveFileAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet ContinuationData()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker2)this.asInterface(uuid("0ec313a2-d24b-449a-8197-e89104fd42cc"))).get_ContinuationData(&_ret));
		return _ret;
	}
	deprecated("Instead, use PickSaveFileAsync")
	final void PickSaveFileAndContinue()
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker2)this.asInterface(uuid("0ec313a2-d24b-449a-8197-e89104fd42cc"))).abi_PickSaveFileAndContinue());
	}
	final HSTRING EnterpriseId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker3)this.asInterface(uuid("698aec69-ba3c-4e51-bd90-4abcbbf4cfaf"))).get_EnterpriseId(&_ret));
		return _ret;
	}
	final void EnterpriseId(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFileSavePicker3)this.asInterface(uuid("698aec69-ba3c-4e51-bd90-4abcbbf4cfaf"))).set_EnterpriseId(value));
	}
	static FileSavePicker New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(FileSavePicker).abi_ActivateInstance(&ret));
		return cast(FileSavePicker) ret;
	}
}

interface FolderPicker : Windows.Storage.Pickers.IFolderPicker, Windows.Storage.Pickers.IFolderPicker2
{
extern(Windows):
	final Windows.Storage.Pickers.PickerViewMode ViewMode()
	{
		Windows.Storage.Pickers.PickerViewMode _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFolderPicker)this.asInterface(uuid("084f7799-f3fb-400a-99b1-7b4a772fd60d"))).get_ViewMode(&_ret));
		return _ret;
	}
	final void ViewMode(Windows.Storage.Pickers.PickerViewMode value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFolderPicker)this.asInterface(uuid("084f7799-f3fb-400a-99b1-7b4a772fd60d"))).set_ViewMode(value));
	}
	final HSTRING SettingsIdentifier()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFolderPicker)this.asInterface(uuid("084f7799-f3fb-400a-99b1-7b4a772fd60d"))).get_SettingsIdentifier(&_ret));
		return _ret;
	}
	final void SettingsIdentifier(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFolderPicker)this.asInterface(uuid("084f7799-f3fb-400a-99b1-7b4a772fd60d"))).set_SettingsIdentifier(value));
	}
	final Windows.Storage.Pickers.PickerLocationId SuggestedStartLocation()
	{
		Windows.Storage.Pickers.PickerLocationId _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFolderPicker)this.asInterface(uuid("084f7799-f3fb-400a-99b1-7b4a772fd60d"))).get_SuggestedStartLocation(&_ret));
		return _ret;
	}
	final void SuggestedStartLocation(Windows.Storage.Pickers.PickerLocationId value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFolderPicker)this.asInterface(uuid("084f7799-f3fb-400a-99b1-7b4a772fd60d"))).set_SuggestedStartLocation(value));
	}
	final HSTRING CommitButtonText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFolderPicker)this.asInterface(uuid("084f7799-f3fb-400a-99b1-7b4a772fd60d"))).get_CommitButtonText(&_ret));
		return _ret;
	}
	final void CommitButtonText(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFolderPicker)this.asInterface(uuid("084f7799-f3fb-400a-99b1-7b4a772fd60d"))).set_CommitButtonText(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) FileTypeFilter()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFolderPicker)this.asInterface(uuid("084f7799-f3fb-400a-99b1-7b4a772fd60d"))).get_FileTypeFilter(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) PickSingleFolderAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFolderPicker)this.asInterface(uuid("084f7799-f3fb-400a-99b1-7b4a772fd60d"))).abi_PickSingleFolderAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet ContinuationData()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.Storage.Pickers.IFolderPicker2)this.asInterface(uuid("8eb3ba97-dc85-4616-be94-9660881f2f5d"))).get_ContinuationData(&_ret));
		return _ret;
	}
	deprecated("Instead, use PickSingleFolderAsync")
	final void PickFolderAndContinue()
	{
		Debug.OK((cast(Windows.Storage.Pickers.IFolderPicker2)this.asInterface(uuid("8eb3ba97-dc85-4616-be94-9660881f2f5d"))).abi_PickFolderAndContinue());
	}
	static FolderPicker New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(FolderPicker).abi_ActivateInstance(&ret));
		return cast(FolderPicker) ret;
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