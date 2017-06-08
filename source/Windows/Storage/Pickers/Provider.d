module Windows.Storage.Pickers.Provider;

import dwinrt;

@uuid("dda45a10-f9d4-40c4-8af5-c5b6b5a61d1d")
@WinrtFactory("Windows.Storage.Pickers.Provider.FileOpenPickerUI")
interface IFileOpenPickerUI : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddFile(HSTRING id, Windows.Storage.IStorageFile file, Windows.Storage.Pickers.Provider.AddFileResult* return_addResult);
	HRESULT abi_RemoveFile(HSTRING id);
	HRESULT abi_ContainsFile(HSTRING id, bool* return_isContained);
	HRESULT abi_CanAddFile(Windows.Storage.IStorageFile file, bool* return_canAdd);
	HRESULT get_AllowedFileTypes(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_SelectionMode(Windows.Storage.Pickers.Provider.FileSelectionMode* return_value);
	HRESULT get_SettingsIdentifier(HSTRING* return_value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	deprecated("Since Windows 10, only apps can remove files, not end users so the FileRemoved event will not be raised.")
	HRESULT add_FileRemoved(Windows.Foundation.TypedEventHandler!(Windows.Storage.Pickers.Provider.FileOpenPickerUI, Windows.Storage.Pickers.Provider.FileRemovedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("Since Windows 10, only apps can remove files, not end users so the FileRemoved event will not be raised.")
	HRESULT remove_FileRemoved(EventRegistrationToken token);
	HRESULT add_Closing(Windows.Foundation.TypedEventHandler!(Windows.Storage.Pickers.Provider.FileOpenPickerUI, Windows.Storage.Pickers.Provider.PickerClosingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Closing(EventRegistrationToken token);
}

@uuid("13043da7-7fca-4c2b-9eca-6890f9f00185")
@WinrtFactory("Windows.Storage.Pickers.Provider.FileRemovedEventArgs")
interface IFileRemovedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("Since Windows 10, only apps can remove files, not end users so the FileRemoved event will not be raised.")
	HRESULT get_Id(HSTRING* return_value);
}

@uuid("9656c1e7-3e56-43cc-8a39-33c73d9d542b")
@WinrtFactory("Windows.Storage.Pickers.Provider.FileSavePickerUI")
interface IFileSavePickerUI : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_AllowedFileTypes(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_SettingsIdentifier(HSTRING* return_value);
	HRESULT get_FileName(HSTRING* return_value);
	HRESULT abi_TrySetFileName(HSTRING value, Windows.Storage.Pickers.Provider.SetFileNameResult* return_result);
	HRESULT add_FileNameChanged(Windows.Foundation.TypedEventHandler!(Windows.Storage.Pickers.Provider.FileSavePickerUI, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_FileNameChanged(EventRegistrationToken token);
	HRESULT add_TargetFileRequested(Windows.Foundation.TypedEventHandler!(Windows.Storage.Pickers.Provider.FileSavePickerUI, Windows.Storage.Pickers.Provider.TargetFileRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_TargetFileRequested(EventRegistrationToken token);
}

@uuid("7af7f71e-1a67-4a31-ae80-e907708a619b")
@WinrtFactory("Windows.Storage.Pickers.Provider.PickerClosingDeferral")
interface IPickerClosingDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

@uuid("7e59f224-b332-4f12-8b9f-a8c2f06b32cd")
@WinrtFactory("Windows.Storage.Pickers.Provider.PickerClosingEventArgs")
interface IPickerClosingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ClosingOperation(Windows.Storage.Pickers.Provider.PickerClosingOperation* return_value);
	HRESULT get_IsCanceled(bool* return_value);
}

@uuid("4ce9fb84-beee-4e39-a773-fc5f0eae328d")
@WinrtFactory("Windows.Storage.Pickers.Provider.PickerClosingOperation")
interface IPickerClosingOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeferral(Windows.Storage.Pickers.Provider.PickerClosingDeferral* return_value);
	HRESULT get_Deadline(Windows.Foundation.DateTime* return_value);
}

@uuid("42bd3355-7f88-478b-8e81-690b20340678")
@WinrtFactory("Windows.Storage.Pickers.Provider.TargetFileRequest")
interface ITargetFileRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetFile(Windows.Storage.IStorageFile* return_value);
	HRESULT set_TargetFile(Windows.Storage.IStorageFile value);
	HRESULT abi_GetDeferral(Windows.Storage.Pickers.Provider.TargetFileRequestDeferral* return_value);
}

@uuid("4aee9d91-bf15-4da9-95f6-f6b7d558225b")
@WinrtFactory("Windows.Storage.Pickers.Provider.TargetFileRequestDeferral")
interface ITargetFileRequestDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

@uuid("b163dbc1-1b51-4c89-a591-0fd40b3c57c9")
@WinrtFactory("Windows.Storage.Pickers.Provider.TargetFileRequestedEventArgs")
interface ITargetFileRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.Storage.Pickers.Provider.TargetFileRequest* return_value);
}

interface FileOpenPickerUI
{
}

interface FileRemovedEventArgs
{
}

interface FileSavePickerUI
{
}

interface PickerClosingDeferral
{
}

interface PickerClosingEventArgs
{
}

interface PickerClosingOperation
{
}

interface TargetFileRequest
{
}

interface TargetFileRequestDeferral
{
}

interface TargetFileRequestedEventArgs
{
}

enum AddFileResult
{
	Added = 0,
	AlreadyAdded = 1,
	NotAllowed = 2,
	Unavailable = 3
}

enum FileSelectionMode
{
	Single = 0,
	Multiple = 1
}

enum SetFileNameResult
{
	Succeeded = 0,
	NotAllowed = 1,
	Unavailable = 2
}