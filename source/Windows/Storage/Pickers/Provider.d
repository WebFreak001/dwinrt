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
	final Windows.Storage.Pickers.Provider.AddFileResult AddFile(wstring id, Windows.Storage.IStorageFile file)
	{
		Windows.Storage.Pickers.Provider.AddFileResult _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileOpenPickerUI)this.asInterface(uuid("dda45a10-f9d4-40c4-8af5-c5b6b5a61d1d"))).abi_AddFile(hstring(id).handle, file, &_ret));
		return _ret;
	}
	final void RemoveFile(wstring id)
	{
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileOpenPickerUI)this.asInterface(uuid("dda45a10-f9d4-40c4-8af5-c5b6b5a61d1d"))).abi_RemoveFile(hstring(id).handle));
	}
	final bool ContainsFile(wstring id)
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileOpenPickerUI)this.asInterface(uuid("dda45a10-f9d4-40c4-8af5-c5b6b5a61d1d"))).abi_ContainsFile(hstring(id).handle, &_ret));
		return _ret;
	}
	final bool CanAddFile(Windows.Storage.IStorageFile file)
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileOpenPickerUI)this.asInterface(uuid("dda45a10-f9d4-40c4-8af5-c5b6b5a61d1d"))).abi_CanAddFile(file, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) AllowedFileTypes()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileOpenPickerUI)this.asInterface(uuid("dda45a10-f9d4-40c4-8af5-c5b6b5a61d1d"))).get_AllowedFileTypes(&_ret));
		return _ret;
	}
	final Windows.Storage.Pickers.Provider.FileSelectionMode SelectionMode()
	{
		Windows.Storage.Pickers.Provider.FileSelectionMode _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileOpenPickerUI)this.asInterface(uuid("dda45a10-f9d4-40c4-8af5-c5b6b5a61d1d"))).get_SelectionMode(&_ret));
		return _ret;
	}
	final wstring SettingsIdentifier()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileOpenPickerUI)this.asInterface(uuid("dda45a10-f9d4-40c4-8af5-c5b6b5a61d1d"))).get_SettingsIdentifier(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileOpenPickerUI)this.asInterface(uuid("dda45a10-f9d4-40c4-8af5-c5b6b5a61d1d"))).get_Title(&_ret));
		return hstring(_ret).d_str;
	}
	final void Title(wstring value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileOpenPickerUI)this.asInterface(uuid("dda45a10-f9d4-40c4-8af5-c5b6b5a61d1d"))).set_Title(hstring(value).handle));
	}
	deprecated("Since Windows 10, only apps can remove files, not end users so the FileRemoved event will not be raised.")
	final EventRegistrationToken OnFileRemoved(void delegate(Windows.Storage.Pickers.Provider.FileOpenPickerUI, Windows.Storage.Pickers.Provider.FileRemovedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileOpenPickerUI)this.asInterface(uuid("dda45a10-f9d4-40c4-8af5-c5b6b5a61d1d"))).add_FileRemoved(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.Pickers.Provider.FileOpenPickerUI, Windows.Storage.Pickers.Provider.FileRemovedEventArgs), Windows.Storage.Pickers.Provider.FileOpenPickerUI, Windows.Storage.Pickers.Provider.FileRemovedEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("Since Windows 10, only apps can remove files, not end users so the FileRemoved event will not be raised.")
	final void removeFileRemoved(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileOpenPickerUI)this.asInterface(uuid("dda45a10-f9d4-40c4-8af5-c5b6b5a61d1d"))).remove_FileRemoved(token));
	}
	final EventRegistrationToken OnClosing(void delegate(Windows.Storage.Pickers.Provider.FileOpenPickerUI, Windows.Storage.Pickers.Provider.PickerClosingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileOpenPickerUI)this.asInterface(uuid("dda45a10-f9d4-40c4-8af5-c5b6b5a61d1d"))).add_Closing(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.Pickers.Provider.FileOpenPickerUI, Windows.Storage.Pickers.Provider.PickerClosingEventArgs), Windows.Storage.Pickers.Provider.FileOpenPickerUI, Windows.Storage.Pickers.Provider.PickerClosingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeClosing(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileOpenPickerUI)this.asInterface(uuid("dda45a10-f9d4-40c4-8af5-c5b6b5a61d1d"))).remove_Closing(token));
	}
}

interface FileRemovedEventArgs : Windows.Storage.Pickers.Provider.IFileRemovedEventArgs
{
extern(Windows):
	deprecated("Since Windows 10, only apps can remove files, not end users so the FileRemoved event will not be raised.")
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileRemovedEventArgs)this.asInterface(uuid("13043da7-7fca-4c2b-9eca-6890f9f00185"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
}

interface FileSavePickerUI : Windows.Storage.Pickers.Provider.IFileSavePickerUI
{
extern(Windows):
	final wstring Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileSavePickerUI)this.asInterface(uuid("9656c1e7-3e56-43cc-8a39-33c73d9d542b"))).get_Title(&_ret));
		return hstring(_ret).d_str;
	}
	final void Title(wstring value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileSavePickerUI)this.asInterface(uuid("9656c1e7-3e56-43cc-8a39-33c73d9d542b"))).set_Title(hstring(value).handle));
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) AllowedFileTypes()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileSavePickerUI)this.asInterface(uuid("9656c1e7-3e56-43cc-8a39-33c73d9d542b"))).get_AllowedFileTypes(&_ret));
		return _ret;
	}
	final wstring SettingsIdentifier()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileSavePickerUI)this.asInterface(uuid("9656c1e7-3e56-43cc-8a39-33c73d9d542b"))).get_SettingsIdentifier(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring FileName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileSavePickerUI)this.asInterface(uuid("9656c1e7-3e56-43cc-8a39-33c73d9d542b"))).get_FileName(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Storage.Pickers.Provider.SetFileNameResult TrySetFileName(wstring value)
	{
		Windows.Storage.Pickers.Provider.SetFileNameResult _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileSavePickerUI)this.asInterface(uuid("9656c1e7-3e56-43cc-8a39-33c73d9d542b"))).abi_TrySetFileName(hstring(value).handle, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnFileNameChanged(void delegate(Windows.Storage.Pickers.Provider.FileSavePickerUI, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileSavePickerUI)this.asInterface(uuid("9656c1e7-3e56-43cc-8a39-33c73d9d542b"))).add_FileNameChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.Pickers.Provider.FileSavePickerUI, IInspectable), Windows.Storage.Pickers.Provider.FileSavePickerUI, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeFileNameChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileSavePickerUI)this.asInterface(uuid("9656c1e7-3e56-43cc-8a39-33c73d9d542b"))).remove_FileNameChanged(token));
	}
	final EventRegistrationToken OnTargetFileRequested(void delegate(Windows.Storage.Pickers.Provider.FileSavePickerUI, Windows.Storage.Pickers.Provider.TargetFileRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileSavePickerUI)this.asInterface(uuid("9656c1e7-3e56-43cc-8a39-33c73d9d542b"))).add_TargetFileRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.Pickers.Provider.FileSavePickerUI, Windows.Storage.Pickers.Provider.TargetFileRequestedEventArgs), Windows.Storage.Pickers.Provider.FileSavePickerUI, Windows.Storage.Pickers.Provider.TargetFileRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTargetFileRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IFileSavePickerUI)this.asInterface(uuid("9656c1e7-3e56-43cc-8a39-33c73d9d542b"))).remove_TargetFileRequested(token));
	}
}

interface PickerClosingDeferral : Windows.Storage.Pickers.Provider.IPickerClosingDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IPickerClosingDeferral)this.asInterface(uuid("7af7f71e-1a67-4a31-ae80-e907708a619b"))).abi_Complete());
	}
}

interface PickerClosingEventArgs : Windows.Storage.Pickers.Provider.IPickerClosingEventArgs
{
extern(Windows):
	final Windows.Storage.Pickers.Provider.PickerClosingOperation ClosingOperation()
	{
		Windows.Storage.Pickers.Provider.PickerClosingOperation _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IPickerClosingEventArgs)this.asInterface(uuid("7e59f224-b332-4f12-8b9f-a8c2f06b32cd"))).get_ClosingOperation(&_ret));
		return _ret;
	}
	final bool IsCanceled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IPickerClosingEventArgs)this.asInterface(uuid("7e59f224-b332-4f12-8b9f-a8c2f06b32cd"))).get_IsCanceled(&_ret));
		return _ret;
	}
}

interface PickerClosingOperation : Windows.Storage.Pickers.Provider.IPickerClosingOperation
{
extern(Windows):
	final Windows.Storage.Pickers.Provider.PickerClosingDeferral GetDeferral()
	{
		Windows.Storage.Pickers.Provider.PickerClosingDeferral _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IPickerClosingOperation)this.asInterface(uuid("4ce9fb84-beee-4e39-a773-fc5f0eae328d"))).abi_GetDeferral(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Deadline()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.IPickerClosingOperation)this.asInterface(uuid("4ce9fb84-beee-4e39-a773-fc5f0eae328d"))).get_Deadline(&_ret));
		return _ret;
	}
}

interface TargetFileRequest : Windows.Storage.Pickers.Provider.ITargetFileRequest
{
extern(Windows):
	final Windows.Storage.IStorageFile TargetFile()
	{
		Windows.Storage.IStorageFile _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.ITargetFileRequest)this.asInterface(uuid("42bd3355-7f88-478b-8e81-690b20340678"))).get_TargetFile(&_ret));
		return _ret;
	}
	final void TargetFile(Windows.Storage.IStorageFile value)
	{
		Debug.OK((cast(Windows.Storage.Pickers.Provider.ITargetFileRequest)this.asInterface(uuid("42bd3355-7f88-478b-8e81-690b20340678"))).set_TargetFile(value));
	}
	final Windows.Storage.Pickers.Provider.TargetFileRequestDeferral GetDeferral()
	{
		Windows.Storage.Pickers.Provider.TargetFileRequestDeferral _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.ITargetFileRequest)this.asInterface(uuid("42bd3355-7f88-478b-8e81-690b20340678"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface TargetFileRequestDeferral : Windows.Storage.Pickers.Provider.ITargetFileRequestDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.Storage.Pickers.Provider.ITargetFileRequestDeferral)this.asInterface(uuid("4aee9d91-bf15-4da9-95f6-f6b7d558225b"))).abi_Complete());
	}
}

interface TargetFileRequestedEventArgs : Windows.Storage.Pickers.Provider.ITargetFileRequestedEventArgs
{
extern(Windows):
	final Windows.Storage.Pickers.Provider.TargetFileRequest Request()
	{
		Windows.Storage.Pickers.Provider.TargetFileRequest _ret;
		Debug.OK((cast(Windows.Storage.Pickers.Provider.ITargetFileRequestedEventArgs)this.asInterface(uuid("b163dbc1-1b51-4c89-a591-0fd40b3c57c9"))).get_Request(&_ret));
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