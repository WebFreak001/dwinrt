module Windows.ApplicationModel.SocialInfo.Provider;

import dwinrt;

@uuid("3cde9dc9-4800-46cd-869b-1973ec685bde")
@WinrtFactory("Windows.ApplicationModel.SocialInfo.Provider.SocialDashboardItemUpdater")
interface ISocialDashboardItemUpdater : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_OwnerRemoteId(HSTRING* return_value);
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Content(Windows.ApplicationModel.SocialInfo.SocialFeedContent* return_value);
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_Timestamp(Windows.Foundation.DateTime value);
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_Thumbnail(Windows.ApplicationModel.SocialInfo.SocialItemThumbnail value);
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Thumbnail(Windows.ApplicationModel.SocialInfo.SocialItemThumbnail* return_value);
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_CommitAsync(Windows.Foundation.IAsyncAction* return_operation);
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_TargetUri(Windows.Foundation.Uri* return_value);
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_TargetUri(Windows.Foundation.Uri value);
}

@uuid("7a0c0aa7-ed89-4bd5-a8d9-15f4d9861c10")
@WinrtFactory("Windows.ApplicationModel.SocialInfo.Provider.SocialFeedUpdater")
interface ISocialFeedUpdater : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("ISocialFeedUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_OwnerRemoteId(HSTRING* return_value);
	deprecated("ISocialFeedUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Kind(Windows.ApplicationModel.SocialInfo.SocialFeedKind* return_value);
	deprecated("ISocialFeedUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Items(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.SocialInfo.SocialFeedItem)* return_value);
	deprecated("ISocialFeedUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_CommitAsync(Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("1b88e52b-7787-48d6-aa12-d8e8f47ab85a")
@WinrtFactory("Windows.ApplicationModel.SocialInfo.Provider.SocialInfoProviderManager")
interface ISocialInfoProviderManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("ISocialInfoProviderManagerStatics is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_CreateSocialFeedUpdaterAsync(Windows.ApplicationModel.SocialInfo.SocialFeedKind kind, Windows.ApplicationModel.SocialInfo.SocialFeedUpdateMode mode, HSTRING ownerRemoteId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.SocialInfo.Provider.SocialFeedUpdater)* return_operation);
	deprecated("ISocialInfoProviderManagerStatics is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_CreateDashboardItemUpdaterAsync(HSTRING ownerRemoteId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.SocialInfo.Provider.SocialDashboardItemUpdater)* return_operation);
	deprecated("ISocialInfoProviderManagerStatics is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_UpdateBadgeCountValue(HSTRING itemRemoteId, INT32 newCount);
	deprecated("ISocialInfoProviderManagerStatics is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_ReportNewContentAvailable(HSTRING contactRemoteId, Windows.ApplicationModel.SocialInfo.SocialFeedKind kind);
	deprecated("ISocialInfoProviderManagerStatics is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_ProvisionAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	deprecated("ISocialInfoProviderManagerStatics is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_DeprovisionAsync(Windows.Foundation.IAsyncAction* return_operation);
}

interface SocialDashboardItemUpdater : Windows.ApplicationModel.SocialInfo.Provider.ISocialDashboardItemUpdater
{
}

interface SocialFeedUpdater : Windows.ApplicationModel.SocialInfo.Provider.ISocialFeedUpdater
{
}

interface SocialInfoProviderManager
{
}