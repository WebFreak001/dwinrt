module Windows.Storage.Provider;

import dwinrt;

@uuid("9fc90920-7bcf-4888-a81e-102d7034d7ce")
@WinrtFactory("Windows.Storage.Provider.CachedFileUpdater")
interface ICachedFileUpdaterStatics : IInspectable
{
extern(Windows):
	HRESULT abi_SetUpdateInformation(Windows.Storage.IStorageFile file, HSTRING contentId, Windows.Storage.Provider.ReadActivationMode readMode, Windows.Storage.Provider.WriteActivationMode writeMode, Windows.Storage.Provider.CachedFileOptions options);
}

@uuid("9e6f41e6-baf2-4a97-b600-9333f5df80fd")
@WinrtFactory("Windows.Storage.Provider.CachedFileUpdaterUI")
interface ICachedFileUpdaterUI : IInspectable
{
extern(Windows):
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_UpdateTarget(Windows.Storage.Provider.CachedFileTarget* return_value);
	HRESULT add_FileUpdateRequested(Windows.Foundation.TypedEventHandler!(Windows.Storage.Provider.CachedFileUpdaterUI, Windows.Storage.Provider.FileUpdateRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_FileUpdateRequested(EventRegistrationToken token);
	HRESULT add_UIRequested(Windows.Foundation.TypedEventHandler!(Windows.Storage.Provider.CachedFileUpdaterUI, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_UIRequested(EventRegistrationToken token);
	HRESULT get_UIStatus(Windows.Storage.Provider.UIStatus* return_value);
}

@uuid("8856a21c-8699-4340-9f49-f7cad7fe8991")
@WinrtFactory("Windows.Storage.Provider.CachedFileUpdaterUI")
interface ICachedFileUpdaterUI2_Base : IInspectable
{
extern(Windows):
	HRESULT get_UpdateRequest(Windows.Storage.Provider.FileUpdateRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Storage.Provider.FileUpdateRequestDeferral* return_value);
}
@uuid("8856a21c-8699-4340-9f49-f7cad7fe8991")
@WinrtFactory("Windows.Storage.Provider.CachedFileUpdaterUI")
interface ICachedFileUpdaterUI2 : ICachedFileUpdaterUI2_Base, Windows.Storage.Provider.ICachedFileUpdaterUI {}

@uuid("40c82536-c1fe-4d93-a792-1e736bc70837")
@WinrtFactory("Windows.Storage.Provider.FileUpdateRequest")
interface IFileUpdateRequest : IInspectable
{
extern(Windows):
	HRESULT get_ContentId(HSTRING* return_value);
	HRESULT get_File(Windows.Storage.StorageFile* return_value);
	HRESULT get_Status(Windows.Storage.Provider.FileUpdateStatus* return_value);
	HRESULT set_Status(Windows.Storage.Provider.FileUpdateStatus value);
	HRESULT abi_GetDeferral(Windows.Storage.Provider.FileUpdateRequestDeferral* return_value);
	HRESULT abi_UpdateLocalFile(Windows.Storage.IStorageFile value);
}

@uuid("82484648-bdbe-447b-a2ee-7afe6a032a94")
@WinrtFactory("Windows.Storage.Provider.FileUpdateRequest")
interface IFileUpdateRequest2_Base : IInspectable
{
extern(Windows):
	HRESULT get_UserInputNeededMessage(HSTRING* return_value);
	HRESULT set_UserInputNeededMessage(HSTRING value);
}
@uuid("82484648-bdbe-447b-a2ee-7afe6a032a94")
@WinrtFactory("Windows.Storage.Provider.FileUpdateRequest")
interface IFileUpdateRequest2 : IFileUpdateRequest2_Base, Windows.Storage.Provider.IFileUpdateRequest {}

@uuid("ffcedb2b-8ade-44a5-bb00-164c4e72f13a")
@WinrtFactory("Windows.Storage.Provider.FileUpdateRequestDeferral")
interface IFileUpdateRequestDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("7b0a9342-3905-438d-aaef-78ae265f8dd2")
@WinrtFactory("Windows.Storage.Provider.FileUpdateRequestedEventArgs")
interface IFileUpdateRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.Storage.Provider.FileUpdateRequest* return_value);
}

interface CachedFileUpdater
{
	private static Windows.Storage.Provider.ICachedFileUpdaterStatics _staticInstance;
	public static Windows.Storage.Provider.ICachedFileUpdaterStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Storage.Provider.ICachedFileUpdaterStatics);
		return _staticInstance;
	}
	static void SetUpdateInformation(Windows.Storage.IStorageFile file, wstring contentId, Windows.Storage.Provider.ReadActivationMode readMode, Windows.Storage.Provider.WriteActivationMode writeMode, Windows.Storage.Provider.CachedFileOptions options)
	{
		Debug.OK(staticInstance.abi_SetUpdateInformation(file, hstring(contentId).handle, readMode, writeMode, options));
	}
}

interface CachedFileUpdaterUI : Windows.Storage.Provider.ICachedFileUpdaterUI, Windows.Storage.Provider.ICachedFileUpdaterUI2
{
extern(Windows):
	final wstring Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Provider.ICachedFileUpdaterUI)this.asInterface(uuid("9e6f41e6-baf2-4a97-b600-9333f5df80fd"))).get_Title(&_ret));
		return hstring(_ret).d_str;
	}
	final void Title(wstring value)
	{
		Debug.OK((cast(Windows.Storage.Provider.ICachedFileUpdaterUI)this.asInterface(uuid("9e6f41e6-baf2-4a97-b600-9333f5df80fd"))).set_Title(hstring(value).handle));
	}
	final Windows.Storage.Provider.CachedFileTarget UpdateTarget()
	{
		Windows.Storage.Provider.CachedFileTarget _ret;
		Debug.OK((cast(Windows.Storage.Provider.ICachedFileUpdaterUI)this.asInterface(uuid("9e6f41e6-baf2-4a97-b600-9333f5df80fd"))).get_UpdateTarget(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnFileUpdateRequested(void delegate(Windows.Storage.Provider.CachedFileUpdaterUI, Windows.Storage.Provider.FileUpdateRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Storage.Provider.ICachedFileUpdaterUI)this.asInterface(uuid("9e6f41e6-baf2-4a97-b600-9333f5df80fd"))).add_FileUpdateRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.Provider.CachedFileUpdaterUI, Windows.Storage.Provider.FileUpdateRequestedEventArgs), Windows.Storage.Provider.CachedFileUpdaterUI, Windows.Storage.Provider.FileUpdateRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeFileUpdateRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Storage.Provider.ICachedFileUpdaterUI)this.asInterface(uuid("9e6f41e6-baf2-4a97-b600-9333f5df80fd"))).remove_FileUpdateRequested(token));
	}
	final EventRegistrationToken OnUIRequested(void delegate(Windows.Storage.Provider.CachedFileUpdaterUI, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Storage.Provider.ICachedFileUpdaterUI)this.asInterface(uuid("9e6f41e6-baf2-4a97-b600-9333f5df80fd"))).add_UIRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Storage.Provider.CachedFileUpdaterUI, IInspectable), Windows.Storage.Provider.CachedFileUpdaterUI, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeUIRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Storage.Provider.ICachedFileUpdaterUI)this.asInterface(uuid("9e6f41e6-baf2-4a97-b600-9333f5df80fd"))).remove_UIRequested(token));
	}
	final Windows.Storage.Provider.UIStatus UIStatus()
	{
		Windows.Storage.Provider.UIStatus _ret;
		Debug.OK((cast(Windows.Storage.Provider.ICachedFileUpdaterUI)this.asInterface(uuid("9e6f41e6-baf2-4a97-b600-9333f5df80fd"))).get_UIStatus(&_ret));
		return _ret;
	}
	final Windows.Storage.Provider.FileUpdateRequest UpdateRequest()
	{
		Windows.Storage.Provider.FileUpdateRequest _ret;
		Debug.OK((cast(Windows.Storage.Provider.ICachedFileUpdaterUI2)this.asInterface(uuid("8856a21c-8699-4340-9f49-f7cad7fe8991"))).get_UpdateRequest(&_ret));
		return _ret;
	}
	final Windows.Storage.Provider.FileUpdateRequestDeferral GetDeferral()
	{
		Windows.Storage.Provider.FileUpdateRequestDeferral _ret;
		Debug.OK((cast(Windows.Storage.Provider.ICachedFileUpdaterUI2)this.asInterface(uuid("8856a21c-8699-4340-9f49-f7cad7fe8991"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface FileUpdateRequest : Windows.Storage.Provider.IFileUpdateRequest, Windows.Storage.Provider.IFileUpdateRequest2
{
extern(Windows):
	final wstring ContentId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Provider.IFileUpdateRequest)this.asInterface(uuid("40c82536-c1fe-4d93-a792-1e736bc70837"))).get_ContentId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Storage.StorageFile File()
	{
		Windows.Storage.StorageFile _ret;
		Debug.OK((cast(Windows.Storage.Provider.IFileUpdateRequest)this.asInterface(uuid("40c82536-c1fe-4d93-a792-1e736bc70837"))).get_File(&_ret));
		return _ret;
	}
	final Windows.Storage.Provider.FileUpdateStatus Status()
	{
		Windows.Storage.Provider.FileUpdateStatus _ret;
		Debug.OK((cast(Windows.Storage.Provider.IFileUpdateRequest)this.asInterface(uuid("40c82536-c1fe-4d93-a792-1e736bc70837"))).get_Status(&_ret));
		return _ret;
	}
	final void Status(Windows.Storage.Provider.FileUpdateStatus value)
	{
		Debug.OK((cast(Windows.Storage.Provider.IFileUpdateRequest)this.asInterface(uuid("40c82536-c1fe-4d93-a792-1e736bc70837"))).set_Status(value));
	}
	final Windows.Storage.Provider.FileUpdateRequestDeferral GetDeferral()
	{
		Windows.Storage.Provider.FileUpdateRequestDeferral _ret;
		Debug.OK((cast(Windows.Storage.Provider.IFileUpdateRequest)this.asInterface(uuid("40c82536-c1fe-4d93-a792-1e736bc70837"))).abi_GetDeferral(&_ret));
		return _ret;
	}
	final void UpdateLocalFile(Windows.Storage.IStorageFile value)
	{
		Debug.OK((cast(Windows.Storage.Provider.IFileUpdateRequest)this.asInterface(uuid("40c82536-c1fe-4d93-a792-1e736bc70837"))).abi_UpdateLocalFile(value));
	}
	final wstring UserInputNeededMessage()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Provider.IFileUpdateRequest2)this.asInterface(uuid("82484648-bdbe-447b-a2ee-7afe6a032a94"))).get_UserInputNeededMessage(&_ret));
		return hstring(_ret).d_str;
	}
	final void UserInputNeededMessage(wstring value)
	{
		Debug.OK((cast(Windows.Storage.Provider.IFileUpdateRequest2)this.asInterface(uuid("82484648-bdbe-447b-a2ee-7afe6a032a94"))).set_UserInputNeededMessage(hstring(value).handle));
	}
}

interface FileUpdateRequestDeferral : Windows.Storage.Provider.IFileUpdateRequestDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.Storage.Provider.IFileUpdateRequestDeferral)this.asInterface(uuid("ffcedb2b-8ade-44a5-bb00-164c4e72f13a"))).abi_Complete());
	}
}

interface FileUpdateRequestedEventArgs : Windows.Storage.Provider.IFileUpdateRequestedEventArgs
{
extern(Windows):
	final Windows.Storage.Provider.FileUpdateRequest Request()
	{
		Windows.Storage.Provider.FileUpdateRequest _ret;
		Debug.OK((cast(Windows.Storage.Provider.IFileUpdateRequestedEventArgs)this.asInterface(uuid("7b0a9342-3905-438d-aaef-78ae265f8dd2"))).get_Request(&_ret));
		return _ret;
	}
}

@bitflags
enum CachedFileOptions
{
	None = 0x0,
	RequireUpdateOnAccess = 0x1,
	UseCachedFileWhenOffline = 0x2,
	DenyAccessWhenOffline = 0x4
}

enum CachedFileTarget
{
	Local = 0,
	Remote = 1
}

enum FileUpdateStatus
{
	Incomplete = 0,
	Complete = 1,
	UserInputNeeded = 2,
	CurrentlyUnavailable = 3,
	Failed = 4,
	CompleteAndRenamed = 5
}

enum ReadActivationMode
{
	NotNeeded = 0,
	BeforeAccess = 1
}

enum UIStatus
{
	Unavailable = 0,
	Hidden = 1,
	Visible = 2,
	Complete = 3
}

enum WriteActivationMode
{
	ReadOnly = 0,
	NotNeeded = 1,
	AfterWrite = 2
}