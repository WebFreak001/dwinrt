module Windows.Storage.Pickers.Provider;

import dwinrt;

@uuid("dda45a10-f9d4-40c4-8af5-c5b6b5a61d1d")
@WinrtFactory("Windows.Storage.Pickers.Provider.FileOpenPickerUI")
interface IFileOpenPickerUI : IInspectable
{
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
extern(Windows):
	deprecated("Since Windows 10, only apps can remove files, not end users so the FileRemoved event will not be raised.")
	HRESULT get_Id(HSTRING* return_value);
}

@uuid("9656c1e7-3e56-43cc-8a39-33c73d9d542b")
@WinrtFactory("Windows.Storage.Pickers.Provider.FileSavePickerUI")
interface IFileSavePickerUI : IInspectable
{
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
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("7e59f224-b332-4f12-8b9f-a8c2f06b32cd")
@WinrtFactory("Windows.Storage.Pickers.Provider.PickerClosingEventArgs")
interface IPickerClosingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ClosingOperation(Windows.Storage.Pickers.Provider.PickerClosingOperation* return_value);
	HRESULT get_IsCanceled(bool* return_value);
}

@uuid("4ce9fb84-beee-4e39-a773-fc5f0eae328d")
@WinrtFactory("Windows.Storage.Pickers.Provider.PickerClosingOperation")
interface IPickerClosingOperation : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.Storage.Pickers.Provider.PickerClosingDeferral* return_value);
	HRESULT get_Deadline(Windows.Foundation.DateTime* return_value);
}

@uuid("42bd3355-7f88-478b-8e81-690b20340678")
@WinrtFactory("Windows.Storage.Pickers.Provider.TargetFileRequest")
interface ITargetFileRequest : IInspectable
{
extern(Windows):
	HRESULT get_TargetFile(Windows.Storage.IStorageFile* return_value);
	HRESULT set_TargetFile(Windows.Storage.IStorageFile value);
	HRESULT abi_GetDeferral(Windows.Storage.Pickers.Provider.TargetFileRequestDeferral* return_value);
}

@uuid("4aee9d91-bf15-4da9-95f6-f6b7d558225b")
@WinrtFactory("Windows.Storage.Pickers.Provider.TargetFileRequestDeferral")
interface ITargetFileRequestDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("b163dbc1-1b51-4c89-a591-0fd40b3c57c9")
@WinrtFactory("Windows.Storage.Pickers.Provider.TargetFileRequestedEventArgs")
interface ITargetFileRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.Storage.Pickers.Provider.TargetFileRequest* return_value);
}

interface FileOpenPickerUI : Windows.Storage.Pickers.Provider.IFileOpenPickerUI
{
extern(Windows):
	final Windows.Storage.Pickers.Provider.AddFileResult AddFile(HSTRING id, Windows.Storage.IStorageFile file)
	{
		Windows.Storage.Pickers.Provider.AddFileResult _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IFileOpenPickerUI).abi_AddFile(id, file, &_ret));
		return _ret;
	}
	final void RemoveFile(HSTRING id)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IFileOpenPickerUI).abi_RemoveFile(id));
	}
	final bool ContainsFile(HSTRING id)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IFileOpenPickerUI).abi_ContainsFile(id, &_ret));
		return _ret;
	}
	final bool CanAddFile(Windows.Storage.IStorageFile file)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IFileOpenPickerUI).abi_CanAddFile(file, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) AllowedFileTypes()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IFileOpenPickerUI).get_AllowedFileTypes(&_ret));
		return _ret;
	}
	final Windows.Storage.Pickers.Provider.FileSelectionMode SelectionMode()
	{
		Windows.Storage.Pickers.Provider.FileSelectionMode _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IFileOpenPickerUI).get_SelectionMode(&_ret));
		return _ret;
	}
	final HSTRING SettingsIdentifier()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IFileOpenPickerUI).get_SettingsIdentifier(&_ret));
		return _ret;
	}
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IFileOpenPickerUI).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IFileOpenPickerUI).set_Title(value));
	}
}

interface FileRemovedEventArgs : Windows.Storage.Pickers.Provider.IFileRemovedEventArgs
{
extern(Windows):
	deprecated("Since Windows 10, only apps can remove files, not end users so the FileRemoved event will not be raised.")
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IFileRemovedEventArgs).get_Id(&_ret));
		return _ret;
	}
}

interface FileSavePickerUI : Windows.Storage.Pickers.Provider.IFileSavePickerUI
{
extern(Windows):
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IFileSavePickerUI).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IFileSavePickerUI).set_Title(value));
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) AllowedFileTypes()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IFileSavePickerUI).get_AllowedFileTypes(&_ret));
		return _ret;
	}
	final HSTRING SettingsIdentifier()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IFileSavePickerUI).get_SettingsIdentifier(&_ret));
		return _ret;
	}
	final HSTRING FileName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IFileSavePickerUI).get_FileName(&_ret));
		return _ret;
	}
	final Windows.Storage.Pickers.Provider.SetFileNameResult TrySetFileName(HSTRING value)
	{
		Windows.Storage.Pickers.Provider.SetFileNameResult _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IFileSavePickerUI).abi_TrySetFileName(value, &_ret));
		return _ret;
	}
}

interface PickerClosingDeferral : Windows.Storage.Pickers.Provider.IPickerClosingDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IPickerClosingDeferral).abi_Complete());
	}
}

interface PickerClosingEventArgs : Windows.Storage.Pickers.Provider.IPickerClosingEventArgs
{
extern(Windows):
	final Windows.Storage.Pickers.Provider.PickerClosingOperation ClosingOperation()
	{
		Windows.Storage.Pickers.Provider.PickerClosingOperation _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IPickerClosingEventArgs).get_ClosingOperation(&_ret));
		return _ret;
	}
	final bool IsCanceled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IPickerClosingEventArgs).get_IsCanceled(&_ret));
		return _ret;
	}
}

interface PickerClosingOperation : Windows.Storage.Pickers.Provider.IPickerClosingOperation
{
extern(Windows):
	final Windows.Storage.Pickers.Provider.PickerClosingDeferral GetDeferral()
	{
		Windows.Storage.Pickers.Provider.PickerClosingDeferral _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IPickerClosingOperation).abi_GetDeferral(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Deadline()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.IPickerClosingOperation).get_Deadline(&_ret));
		return _ret;
	}
}

interface TargetFileRequest : Windows.Storage.Pickers.Provider.ITargetFileRequest
{
extern(Windows):
	final Windows.Storage.IStorageFile TargetFile()
	{
		Windows.Storage.IStorageFile _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.ITargetFileRequest).get_TargetFile(&_ret));
		return _ret;
	}
	final void TargetFile(Windows.Storage.IStorageFile value)
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.ITargetFileRequest).set_TargetFile(value));
	}
	final Windows.Storage.Pickers.Provider.TargetFileRequestDeferral GetDeferral()
	{
		Windows.Storage.Pickers.Provider.TargetFileRequestDeferral _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.ITargetFileRequest).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface TargetFileRequestDeferral : Windows.Storage.Pickers.Provider.ITargetFileRequestDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.ITargetFileRequestDeferral).abi_Complete());
	}
}

interface TargetFileRequestedEventArgs : Windows.Storage.Pickers.Provider.ITargetFileRequestedEventArgs
{
extern(Windows):
	final Windows.Storage.Pickers.Provider.TargetFileRequest Request()
	{
		Windows.Storage.Pickers.Provider.TargetFileRequest _ret;
		Debug.OK(this.as!(Windows.Storage.Pickers.Provider.ITargetFileRequestedEventArgs).get_Request(&_ret));
		return _ret;
	}
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