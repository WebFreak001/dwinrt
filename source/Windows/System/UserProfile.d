module Windows.System.UserProfile;

import dwinrt;

@uuid("928bf3d0-cf7c-4ab0-a7dc-6dc5bcd44252")
@WinrtFactory("Windows.System.UserProfile.AdvertisingManagerForUser")
interface IAdvertisingManagerForUser : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AdvertisingId(HSTRING* return_value);
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("add3468c-a273-48cb-b346-3544522d5581")
@WinrtFactory("Windows.System.UserProfile.AdvertisingManager")
interface IAdvertisingManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AdvertisingId(HSTRING* return_value);
}

@uuid("dd0947af-1a6d-46b0-95bc-f3f9d6beb9fb")
@WinrtFactory("Windows.System.UserProfile.AdvertisingManager")
interface IAdvertisingManagerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForUser(Windows.System.User user, Windows.System.UserProfile.AdvertisingManagerForUser* return_value);
}

@uuid("e5e9eccd-2711-44e0-973c-491d78048d24")
@WinrtFactory("Windows.System.UserProfile.DiagnosticsSettings")
interface IDiagnosticsSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CanUseDiagnosticsToTailorExperiences(bool* return_value);
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("72d2e80f-5390-4793-990b-3ccc7d6ac9c8")
@WinrtFactory("Windows.System.UserProfile.DiagnosticsSettings")
interface IDiagnosticsSettingsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefault(Windows.System.UserProfile.DiagnosticsSettings* return_value);
	HRESULT abi_GetForUser(Windows.System.User user, Windows.System.UserProfile.DiagnosticsSettings* return_value);
}

@uuid("1ce18f0f-1c41-4ea0-b7a2-6f0c1c7e8438")
@WinrtFactory("Windows.System.UserProfile.FirstSignInSettings")
interface IFirstSignInSettingsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefault(Windows.System.UserProfile.FirstSignInSettings* return_result);
}

@uuid("01bf4326-ed37-4e96-b0e9-c1340d1ea158")
@WinrtFactory("Windows.System.UserProfile.GlobalizationPreferences")
interface IGlobalizationPreferencesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Calendars(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_Clocks(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_Currencies(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_Languages(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_HomeGeographicRegion(HSTRING* return_value);
	HRESULT get_WeekStartsOn(Windows.Globalization.DayOfWeek* return_value);
}

@uuid("2c0d73f6-03a9-41a6-9b01-495251ff51d5")
@WinrtFactory("Windows.System.UserProfile.LockScreen")
interface ILockScreenImageFeedStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestSetImageFeedAsync(Windows.Foundation.Uri syndicationFeedUri, Windows.Foundation.IAsyncOperation!(Windows.System.UserProfile.SetImageFeedResult)* return_value);
	HRESULT abi_TryRemoveImageFeed(bool* return_result);
}

@uuid("3ee9d3ad-b607-40ae-b426-7631d9821269")
@WinrtFactory("Windows.System.UserProfile.LockScreen")
interface ILockScreenStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OriginalImageFile(Windows.Foundation.Uri* return_value);
	HRESULT abi_GetImageStream(Windows.Storage.Streams.IRandomAccessStream* return_value);
	HRESULT abi_SetImageFileAsync(Windows.Storage.IStorageFile value, Windows.Foundation.IAsyncAction* return_Operation);
	HRESULT abi_SetImageStreamAsync(Windows.Storage.Streams.IRandomAccessStream value, Windows.Foundation.IAsyncAction* return_Operation);
}

@uuid("77f3a910-48fa-489c-934e-2ae85ba8f772")
@WinrtFactory("Windows.System.UserProfile.UserInformation")
interface IUserInformationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AccountPictureChangeEnabled(bool* return_value);
	HRESULT get_NameAccessAllowed(bool* return_value);
	HRESULT abi_GetAccountPicture(Windows.System.UserProfile.AccountPictureKind kind, Windows.Storage.IStorageFile* return_storageFile);
	HRESULT abi_SetAccountPictureAsync(Windows.Storage.IStorageFile image, Windows.Foundation.IAsyncOperation!(Windows.System.UserProfile.SetAccountPictureResult)* return_operation);
	HRESULT abi_SetAccountPicturesAsync(Windows.Storage.IStorageFile smallImage, Windows.Storage.IStorageFile largeImage, Windows.Storage.IStorageFile video, Windows.Foundation.IAsyncOperation!(Windows.System.UserProfile.SetAccountPictureResult)* return_operation);
	HRESULT abi_SetAccountPictureFromStreamAsync(Windows.Storage.Streams.IRandomAccessStream image, Windows.Foundation.IAsyncOperation!(Windows.System.UserProfile.SetAccountPictureResult)* return_operation);
	HRESULT abi_SetAccountPicturesFromStreamsAsync(Windows.Storage.Streams.IRandomAccessStream smallImage, Windows.Storage.Streams.IRandomAccessStream largeImage, Windows.Storage.Streams.IRandomAccessStream video, Windows.Foundation.IAsyncOperation!(Windows.System.UserProfile.SetAccountPictureResult)* return_operation);
	HRESULT add_AccountPictureChanged(Windows.Foundation.EventHandler!(IInspectable) changeHandler, EventRegistrationToken* return_token);
	HRESULT remove_AccountPictureChanged(EventRegistrationToken token);
	HRESULT abi_GetDisplayNameAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_GetFirstNameAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_GetLastNameAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_GetPrincipalNameAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_GetSessionInitiationProtocolUriAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Uri)* return_operation);
	HRESULT abi_GetDomainNameAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
}

@uuid("8ceddab4-7998-46d5-8dd3-184f1c5f9ab9")
@WinrtFactory("Windows.System.UserProfile.UserProfilePersonalizationSettings")
interface IUserProfilePersonalizationSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TrySetLockScreenImageAsync(Windows.Storage.StorageFile imageFile, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_TrySetWallpaperImageAsync(Windows.Storage.StorageFile imageFile, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("91acb841-5037-454b-9883-bb772d08dd16")
@WinrtFactory("Windows.System.UserProfile.UserProfilePersonalizationSettings")
interface IUserProfilePersonalizationSettingsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Current(Windows.System.UserProfile.UserProfilePersonalizationSettings* return_value);
	HRESULT abi_IsSupported(bool* return_result);
}

interface AdvertisingManagerForUser
{
}

interface DiagnosticsSettings
{
}

interface FirstSignInSettings
{
}

interface UserProfilePersonalizationSettings
{
}

enum AccountPictureKind
{
	SmallImage = 0,
	LargeImage = 1,
	Video = 2
}

enum SetAccountPictureResult
{
	Success = 0,
	ChangeDisabled = 1,
	LargeOrDynamicError = 2,
	VideoFrameSizeError = 3,
	FileSizeError = 4,
	Failure = 5
}

enum SetImageFeedResult
{
	Success = 0,
	ChangeDisabled = 1,
	UserCanceled = 2
}