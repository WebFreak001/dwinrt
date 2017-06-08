module Windows.Storage.Pickers;

import dwinrt;

@uuid("2ca8278a-12c5-4c5f-8977-94547793c241")
@WinrtFactory("Windows.Storage.Pickers.FileOpenPicker")
interface IFileOpenPicker : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
interface IFileOpenPicker2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("Instead, use PickSingleFileAsync")
	HRESULT abi_ResumePickSingleFileAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_pickSingleFileOperation);
}

@uuid("3f57b569-2522-4ca5-aa73-a15509f1fcbf")
@WinrtFactory("Windows.Storage.Pickers.FileOpenPicker")
interface IFileOpenPickerWithOperationId : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_PickSingleFileAsync(HSTRING pickerOperationId, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_pickSingleFileOperation);
}

@uuid("3286ffcb-617f-4cc5-af6a-b3fdf29ad145")
@WinrtFactory("Windows.Storage.Pickers.FileSavePicker")
interface IFileSavePicker : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SettingsIdentifier(HSTRING* return_value);
	HRESULT set_SettingsIdentifier(HSTRING value);
	HRESULT get_SuggestedStartLocation(Windows.Storage.Pickers.PickerLocationId* return_value);
	HRESULT set_SuggestedStartLocation(Windows.Storage.Pickers.PickerLocationId value);
	HRESULT get_CommitButtonText(HSTRING* return_value);
	HRESULT set_CommitButtonText(HSTRING value);
	HRESULT get_FileTypeChoices(Windows.Foundation.Collections.IMap!(HSTRING,Windows.Foundation.Collections.IVector!(HSTRING))* return_value);
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
interface IFileSavePicker2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContinuationData(Windows.Foundation.Collections.ValueSet* return_value);
	deprecated("Instead, use PickSaveFileAsync")
	HRESULT abi_PickSaveFileAndContinue();
}

@uuid("698aec69-ba3c-4e51-bd90-4abcbbf4cfaf")
@WinrtFactory("Windows.Storage.Pickers.FileSavePicker")
interface IFileSavePicker3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EnterpriseId(HSTRING* return_value);
	HRESULT set_EnterpriseId(HSTRING value);
}

@uuid("084f7799-f3fb-400a-99b1-7b4a772fd60d")
@WinrtFactory("Windows.Storage.Pickers.FolderPicker")
interface IFolderPicker : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
interface IFolderPicker2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContinuationData(Windows.Foundation.Collections.ValueSet* return_value);
	deprecated("Instead, use PickSingleFolderAsync")
	HRESULT abi_PickFolderAndContinue();
}

interface FileExtensionVector
{
}

interface FileOpenPicker
{
}

interface FilePickerFileTypesOrderedMap
{
}

interface FilePickerSelectedFilesArray
{
}

interface FileSavePicker
{
}

interface FolderPicker
{
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