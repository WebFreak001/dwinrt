module Windows.ApplicationModel.SocialInfo.Provider;

import dwinrt;

@uuid("3cde9dc9-4800-46cd-869b-1973ec685bde")
@WinrtFactory("Windows.ApplicationModel.SocialInfo.Provider.SocialDashboardItemUpdater")
interface ISocialDashboardItemUpdater : IInspectable
{
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
extern(Windows):
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	final HSTRING OwnerRemoteId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.Provider.ISocialDashboardItemUpdater)this.asInterface(uuid("3cde9dc9-4800-46cd-869b-1973ec685bde"))).get_OwnerRemoteId(&_ret));
		return _ret;
	}
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.ApplicationModel.SocialInfo.SocialFeedContent Content()
	{
		Windows.ApplicationModel.SocialInfo.SocialFeedContent _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.Provider.ISocialDashboardItemUpdater)this.asInterface(uuid("3cde9dc9-4800-46cd-869b-1973ec685bde"))).get_Content(&_ret));
		return _ret;
	}
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.Provider.ISocialDashboardItemUpdater)this.asInterface(uuid("3cde9dc9-4800-46cd-869b-1973ec685bde"))).get_Timestamp(&_ret));
		return _ret;
	}
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void Timestamp(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.Provider.ISocialDashboardItemUpdater)this.asInterface(uuid("3cde9dc9-4800-46cd-869b-1973ec685bde"))).set_Timestamp(value));
	}
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void Thumbnail(Windows.ApplicationModel.SocialInfo.SocialItemThumbnail value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.Provider.ISocialDashboardItemUpdater)this.asInterface(uuid("3cde9dc9-4800-46cd-869b-1973ec685bde"))).set_Thumbnail(value));
	}
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.ApplicationModel.SocialInfo.SocialItemThumbnail Thumbnail()
	{
		Windows.ApplicationModel.SocialInfo.SocialItemThumbnail _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.Provider.ISocialDashboardItemUpdater)this.asInterface(uuid("3cde9dc9-4800-46cd-869b-1973ec685bde"))).get_Thumbnail(&_ret));
		return _ret;
	}
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.IAsyncAction CommitAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.Provider.ISocialDashboardItemUpdater)this.asInterface(uuid("3cde9dc9-4800-46cd-869b-1973ec685bde"))).abi_CommitAsync(&_ret));
		return _ret;
	}
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.Uri TargetUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.Provider.ISocialDashboardItemUpdater)this.asInterface(uuid("3cde9dc9-4800-46cd-869b-1973ec685bde"))).get_TargetUri(&_ret));
		return _ret;
	}
	deprecated("ISocialDashboardItemUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void TargetUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.Provider.ISocialDashboardItemUpdater)this.asInterface(uuid("3cde9dc9-4800-46cd-869b-1973ec685bde"))).set_TargetUri(value));
	}
}

interface SocialFeedUpdater : Windows.ApplicationModel.SocialInfo.Provider.ISocialFeedUpdater
{
extern(Windows):
	deprecated("ISocialFeedUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	final HSTRING OwnerRemoteId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.Provider.ISocialFeedUpdater)this.asInterface(uuid("7a0c0aa7-ed89-4bd5-a8d9-15f4d9861c10"))).get_OwnerRemoteId(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.ApplicationModel.SocialInfo.SocialFeedKind Kind()
	{
		Windows.ApplicationModel.SocialInfo.SocialFeedKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.Provider.ISocialFeedUpdater)this.asInterface(uuid("7a0c0aa7-ed89-4bd5-a8d9-15f4d9861c10"))).get_Kind(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.SocialInfo.SocialFeedItem) Items()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.SocialInfo.SocialFeedItem) _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.Provider.ISocialFeedUpdater)this.asInterface(uuid("7a0c0aa7-ed89-4bd5-a8d9-15f4d9861c10"))).get_Items(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedUpdater is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.IAsyncAction CommitAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.Provider.ISocialFeedUpdater)this.asInterface(uuid("7a0c0aa7-ed89-4bd5-a8d9-15f4d9861c10"))).abi_CommitAsync(&_ret));
		return _ret;
	}
}

interface SocialInfoProviderManager
{
	private static Windows.ApplicationModel.SocialInfo.Provider.ISocialInfoProviderManagerStatics _staticInstance;
	public static Windows.ApplicationModel.SocialInfo.Provider.ISocialInfoProviderManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.SocialInfo.Provider.ISocialInfoProviderManagerStatics);
		return _staticInstance;
	}
	deprecated("ISocialInfoProviderManagerStatics is deprecated and might not work on all platforms. For more info, see MSDN.")
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.SocialInfo.Provider.SocialFeedUpdater) CreateSocialFeedUpdaterAsync(Windows.ApplicationModel.SocialInfo.SocialFeedKind kind, Windows.ApplicationModel.SocialInfo.SocialFeedUpdateMode mode, HSTRING ownerRemoteId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.SocialInfo.Provider.SocialFeedUpdater) _ret;
		Debug.OK(staticInstance.abi_CreateSocialFeedUpdaterAsync(kind, mode, ownerRemoteId, &_ret));
		return _ret;
	}
	deprecated("ISocialInfoProviderManagerStatics is deprecated and might not work on all platforms. For more info, see MSDN.")
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.SocialInfo.Provider.SocialDashboardItemUpdater) CreateDashboardItemUpdaterAsync(HSTRING ownerRemoteId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.SocialInfo.Provider.SocialDashboardItemUpdater) _ret;
		Debug.OK(staticInstance.abi_CreateDashboardItemUpdaterAsync(ownerRemoteId, &_ret));
		return _ret;
	}
	deprecated("ISocialInfoProviderManagerStatics is deprecated and might not work on all platforms. For more info, see MSDN.")
	static void UpdateBadgeCountValue(HSTRING itemRemoteId, INT32 newCount)
	{
		Debug.OK(staticInstance.abi_UpdateBadgeCountValue(itemRemoteId, newCount));
	}
	deprecated("ISocialInfoProviderManagerStatics is deprecated and might not work on all platforms. For more info, see MSDN.")
	static void ReportNewContentAvailable(HSTRING contactRemoteId, Windows.ApplicationModel.SocialInfo.SocialFeedKind kind)
	{
		Debug.OK(staticInstance.abi_ReportNewContentAvailable(contactRemoteId, kind));
	}
	deprecated("ISocialInfoProviderManagerStatics is deprecated and might not work on all platforms. For more info, see MSDN.")
	static Windows.Foundation.IAsyncOperation!(bool) ProvisionAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(staticInstance.abi_ProvisionAsync(&_ret));
		return _ret;
	}
	deprecated("ISocialInfoProviderManagerStatics is deprecated and might not work on all platforms. For more info, see MSDN.")
	static Windows.Foundation.IAsyncAction DeprovisionAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_DeprovisionAsync(&_ret));
		return _ret;
	}
}