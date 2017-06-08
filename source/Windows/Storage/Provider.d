module Windows.Storage.Provider;

import dwinrt;

@uuid("9fc90920-7bcf-4888-a81e-102d7034d7ce")
@WinrtFactory("Windows.Storage.Provider.CachedFileUpdater")
interface ICachedFileUpdaterStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetUpdateInformation(Windows.Storage.IStorageFile file, HSTRING contentId, Windows.Storage.Provider.ReadActivationMode readMode, Windows.Storage.Provider.WriteActivationMode writeMode, Windows.Storage.Provider.CachedFileOptions options);
}

@uuid("9e6f41e6-baf2-4a97-b600-9333f5df80fd")
@WinrtFactory("Windows.Storage.Provider.CachedFileUpdaterUI")
interface ICachedFileUpdaterUI : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_UpdateTarget(Windows.Storage.Provider.CachedFileTarget* return_value);
	HRESULT add_FileUpdateRequested(Windows.Foundation.TypedEventHandler!(Windows.Storage.Provider.CachedFileUpdaterUI*,Windows.Storage.Provider.FileUpdateRequestedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_FileUpdateRequested(EventRegistrationToken token);
	HRESULT add_UIRequested(Windows.Foundation.TypedEventHandler!(Windows.Storage.Provider.CachedFileUpdaterUI*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_UIRequested(EventRegistrationToken token);
	HRESULT get_UIStatus(Windows.Storage.Provider.UIStatus* return_value);
}

@uuid("8856a21c-8699-4340-9f49-f7cad7fe8991")
@WinrtFactory("Windows.Storage.Provider.CachedFileUpdaterUI")
interface ICachedFileUpdaterUI2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UpdateRequest(Windows.Storage.Provider.FileUpdateRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Storage.Provider.FileUpdateRequestDeferral* return_value);
}

@uuid("40c82536-c1fe-4d93-a792-1e736bc70837")
@WinrtFactory("Windows.Storage.Provider.FileUpdateRequest")
interface IFileUpdateRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
interface IFileUpdateRequest2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UserInputNeededMessage(HSTRING* return_value);
	HRESULT set_UserInputNeededMessage(HSTRING value);
}

@uuid("ffcedb2b-8ade-44a5-bb00-164c4e72f13a")
@WinrtFactory("Windows.Storage.Provider.FileUpdateRequestDeferral")
interface IFileUpdateRequestDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

@uuid("7b0a9342-3905-438d-aaef-78ae265f8dd2")
@WinrtFactory("Windows.Storage.Provider.FileUpdateRequestedEventArgs")
interface IFileUpdateRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.Storage.Provider.FileUpdateRequest* return_value);
}

interface CachedFileUpdaterUI
{
}

interface FileUpdateRequest
{
}

interface FileUpdateRequestDeferral
{
}

interface FileUpdateRequestedEventArgs
{
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