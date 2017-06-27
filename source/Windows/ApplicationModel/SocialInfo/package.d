module Windows.ApplicationModel.SocialInfo;

import dwinrt;

@uuid("0b6a985a-d59d-40be-980c-488a2ab30a83")
@WinrtFactory("Windows.ApplicationModel.SocialInfo.SocialFeedChildItem")
interface ISocialFeedChildItem : IInspectable
{
extern(Windows):
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Author(Windows.ApplicationModel.SocialInfo.SocialUserInfo* return_value);
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_PrimaryContent(Windows.ApplicationModel.SocialInfo.SocialFeedContent* return_value);
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_SecondaryContent(Windows.ApplicationModel.SocialInfo.SocialFeedContent* return_value);
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_Timestamp(Windows.Foundation.DateTime value);
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_TargetUri(Windows.Foundation.Uri* return_value);
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_TargetUri(Windows.Foundation.Uri value);
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Thumbnails(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.SocialInfo.SocialItemThumbnail)* return_value);
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_SharedItem(Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem* return_value);
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_SharedItem(Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem value);
}

@uuid("a234e429-3e39-494d-a37c-f462a2494514")
@WinrtFactory("Windows.ApplicationModel.SocialInfo.SocialFeedContent")
interface ISocialFeedContent : IInspectable
{
extern(Windows):
	deprecated("ISocialFeedContent is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Title(HSTRING* return_value);
	deprecated("ISocialFeedContent is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_Title(HSTRING value);
	deprecated("ISocialFeedContent is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Message(HSTRING* return_value);
	deprecated("ISocialFeedContent is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_Message(HSTRING value);
	deprecated("ISocialFeedContent is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_TargetUri(Windows.Foundation.Uri* return_value);
	deprecated("ISocialFeedContent is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_TargetUri(Windows.Foundation.Uri value);
}

@uuid("4f1392ab-1f72-4d33-b695-de3e1db60317")
@WinrtFactory("Windows.ApplicationModel.SocialInfo.SocialFeedItem")
interface ISocialFeedItem : IInspectable
{
extern(Windows):
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Author(Windows.ApplicationModel.SocialInfo.SocialUserInfo* return_value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_PrimaryContent(Windows.ApplicationModel.SocialInfo.SocialFeedContent* return_value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_SecondaryContent(Windows.ApplicationModel.SocialInfo.SocialFeedContent* return_value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_Timestamp(Windows.Foundation.DateTime value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_TargetUri(Windows.Foundation.Uri* return_value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_TargetUri(Windows.Foundation.Uri value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Thumbnails(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.SocialInfo.SocialItemThumbnail)* return_value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_SharedItem(Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem* return_value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_SharedItem(Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_BadgeStyle(Windows.ApplicationModel.SocialInfo.SocialItemBadgeStyle* return_value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_BadgeStyle(Windows.ApplicationModel.SocialInfo.SocialItemBadgeStyle value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_BadgeCountValue(INT32* return_value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_BadgeCountValue(INT32 value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_RemoteId(HSTRING* return_value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_RemoteId(HSTRING value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ChildItem(Windows.ApplicationModel.SocialInfo.SocialFeedChildItem* return_value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_ChildItem(Windows.ApplicationModel.SocialInfo.SocialFeedChildItem value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Style(Windows.ApplicationModel.SocialInfo.SocialFeedItemStyle* return_value);
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_Style(Windows.ApplicationModel.SocialInfo.SocialFeedItemStyle value);
}

@uuid("7bfb9e40-a6aa-45a7-9ff6-54c42105dd1f")
@WinrtFactory("Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem")
interface ISocialFeedSharedItem : IInspectable
{
extern(Windows):
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_OriginalSource(Windows.Foundation.Uri* return_value);
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_OriginalSource(Windows.Foundation.Uri value);
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Content(Windows.ApplicationModel.SocialInfo.SocialFeedContent* return_value);
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_Timestamp(Windows.Foundation.DateTime value);
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_TargetUri(Windows.Foundation.Uri* return_value);
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_TargetUri(Windows.Foundation.Uri value);
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_Thumbnail(Windows.ApplicationModel.SocialInfo.SocialItemThumbnail value);
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Thumbnail(Windows.ApplicationModel.SocialInfo.SocialItemThumbnail* return_value);
}

@uuid("5cbf831a-3f08-497f-917f-57e09d84b141")
@WinrtFactory("Windows.ApplicationModel.SocialInfo.SocialItemThumbnail")
interface ISocialItemThumbnail : IInspectable
{
extern(Windows):
	deprecated("ISocialItemThumbnail is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_TargetUri(Windows.Foundation.Uri* return_value);
	deprecated("ISocialItemThumbnail is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_TargetUri(Windows.Foundation.Uri value);
	deprecated("ISocialItemThumbnail is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ImageUri(Windows.Foundation.Uri* return_value);
	deprecated("ISocialItemThumbnail is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_ImageUri(Windows.Foundation.Uri value);
	deprecated("ISocialItemThumbnail is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_BitmapSize(Windows.Graphics.Imaging.BitmapSize* return_value);
	deprecated("ISocialItemThumbnail is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_BitmapSize(Windows.Graphics.Imaging.BitmapSize value);
	deprecated("ISocialItemThumbnail is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_SetImageAsync(Windows.Storage.Streams.IInputStream image, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("9e5e1bd1-90d0-4e1d-9554-844d46607f61")
@WinrtFactory("Windows.ApplicationModel.SocialInfo.SocialUserInfo")
interface ISocialUserInfo : IInspectable
{
extern(Windows):
	deprecated("ISocialUserInfo is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_DisplayName(HSTRING* return_value);
	deprecated("ISocialUserInfo is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_DisplayName(HSTRING value);
	deprecated("ISocialUserInfo is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_UserName(HSTRING* return_value);
	deprecated("ISocialUserInfo is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_UserName(HSTRING value);
	deprecated("ISocialUserInfo is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_RemoteId(HSTRING* return_value);
	deprecated("ISocialUserInfo is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_RemoteId(HSTRING value);
	deprecated("ISocialUserInfo is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_TargetUri(Windows.Foundation.Uri* return_value);
	deprecated("ISocialUserInfo is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_TargetUri(Windows.Foundation.Uri value);
}

interface SocialFeedChildItem : Windows.ApplicationModel.SocialInfo.ISocialFeedChildItem
{
extern(Windows):
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.ApplicationModel.SocialInfo.SocialUserInfo Author()
	{
		Windows.ApplicationModel.SocialInfo.SocialUserInfo _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedChildItem)this.asInterface(uuid("0b6a985a-d59d-40be-980c-488a2ab30a83"))).get_Author(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.ApplicationModel.SocialInfo.SocialFeedContent PrimaryContent()
	{
		Windows.ApplicationModel.SocialInfo.SocialFeedContent _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedChildItem)this.asInterface(uuid("0b6a985a-d59d-40be-980c-488a2ab30a83"))).get_PrimaryContent(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.ApplicationModel.SocialInfo.SocialFeedContent SecondaryContent()
	{
		Windows.ApplicationModel.SocialInfo.SocialFeedContent _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedChildItem)this.asInterface(uuid("0b6a985a-d59d-40be-980c-488a2ab30a83"))).get_SecondaryContent(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedChildItem)this.asInterface(uuid("0b6a985a-d59d-40be-980c-488a2ab30a83"))).get_Timestamp(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void Timestamp(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedChildItem)this.asInterface(uuid("0b6a985a-d59d-40be-980c-488a2ab30a83"))).set_Timestamp(value));
	}
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.Uri TargetUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedChildItem)this.asInterface(uuid("0b6a985a-d59d-40be-980c-488a2ab30a83"))).get_TargetUri(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void TargetUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedChildItem)this.asInterface(uuid("0b6a985a-d59d-40be-980c-488a2ab30a83"))).set_TargetUri(value));
	}
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.SocialInfo.SocialItemThumbnail) Thumbnails()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.SocialInfo.SocialItemThumbnail) _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedChildItem)this.asInterface(uuid("0b6a985a-d59d-40be-980c-488a2ab30a83"))).get_Thumbnails(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem SharedItem()
	{
		Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedChildItem)this.asInterface(uuid("0b6a985a-d59d-40be-980c-488a2ab30a83"))).get_SharedItem(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedChildItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void SharedItem(Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedChildItem)this.asInterface(uuid("0b6a985a-d59d-40be-980c-488a2ab30a83"))).set_SharedItem(value));
	}
	static SocialFeedChildItem New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SocialFeedChildItem).abi_ActivateInstance(&ret));
		return cast(SocialFeedChildItem) ret;
	}
}

interface SocialFeedContent : Windows.ApplicationModel.SocialInfo.ISocialFeedContent
{
extern(Windows):
	deprecated("ISocialFeedContent is deprecated and might not work on all platforms. For more info, see MSDN.")
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedContent)this.asInterface(uuid("a234e429-3e39-494d-a37c-f462a2494514"))).get_Title(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedContent is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void Title(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedContent)this.asInterface(uuid("a234e429-3e39-494d-a37c-f462a2494514"))).set_Title(value));
	}
	deprecated("ISocialFeedContent is deprecated and might not work on all platforms. For more info, see MSDN.")
	final HSTRING Message()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedContent)this.asInterface(uuid("a234e429-3e39-494d-a37c-f462a2494514"))).get_Message(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedContent is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void Message(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedContent)this.asInterface(uuid("a234e429-3e39-494d-a37c-f462a2494514"))).set_Message(value));
	}
	deprecated("ISocialFeedContent is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.Uri TargetUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedContent)this.asInterface(uuid("a234e429-3e39-494d-a37c-f462a2494514"))).get_TargetUri(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedContent is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void TargetUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedContent)this.asInterface(uuid("a234e429-3e39-494d-a37c-f462a2494514"))).set_TargetUri(value));
	}
}

interface SocialFeedItem : Windows.ApplicationModel.SocialInfo.ISocialFeedItem
{
extern(Windows):
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.ApplicationModel.SocialInfo.SocialUserInfo Author()
	{
		Windows.ApplicationModel.SocialInfo.SocialUserInfo _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).get_Author(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.ApplicationModel.SocialInfo.SocialFeedContent PrimaryContent()
	{
		Windows.ApplicationModel.SocialInfo.SocialFeedContent _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).get_PrimaryContent(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.ApplicationModel.SocialInfo.SocialFeedContent SecondaryContent()
	{
		Windows.ApplicationModel.SocialInfo.SocialFeedContent _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).get_SecondaryContent(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).get_Timestamp(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void Timestamp(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).set_Timestamp(value));
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.Uri TargetUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).get_TargetUri(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void TargetUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).set_TargetUri(value));
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.SocialInfo.SocialItemThumbnail) Thumbnails()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.SocialInfo.SocialItemThumbnail) _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).get_Thumbnails(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem SharedItem()
	{
		Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).get_SharedItem(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void SharedItem(Windows.ApplicationModel.SocialInfo.SocialFeedSharedItem value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).set_SharedItem(value));
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.ApplicationModel.SocialInfo.SocialItemBadgeStyle BadgeStyle()
	{
		Windows.ApplicationModel.SocialInfo.SocialItemBadgeStyle _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).get_BadgeStyle(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void BadgeStyle(Windows.ApplicationModel.SocialInfo.SocialItemBadgeStyle value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).set_BadgeStyle(value));
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final INT32 BadgeCountValue()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).get_BadgeCountValue(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void BadgeCountValue(INT32 value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).set_BadgeCountValue(value));
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final HSTRING RemoteId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).get_RemoteId(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void RemoteId(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).set_RemoteId(value));
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.ApplicationModel.SocialInfo.SocialFeedChildItem ChildItem()
	{
		Windows.ApplicationModel.SocialInfo.SocialFeedChildItem _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).get_ChildItem(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void ChildItem(Windows.ApplicationModel.SocialInfo.SocialFeedChildItem value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).set_ChildItem(value));
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.ApplicationModel.SocialInfo.SocialFeedItemStyle Style()
	{
		Windows.ApplicationModel.SocialInfo.SocialFeedItemStyle _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).get_Style(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void Style(Windows.ApplicationModel.SocialInfo.SocialFeedItemStyle value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedItem)this.asInterface(uuid("4f1392ab-1f72-4d33-b695-de3e1db60317"))).set_Style(value));
	}
	static SocialFeedItem New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SocialFeedItem).abi_ActivateInstance(&ret));
		return cast(SocialFeedItem) ret;
	}
}

interface SocialFeedSharedItem : Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem
{
extern(Windows):
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.Uri OriginalSource()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem)this.asInterface(uuid("7bfb9e40-a6aa-45a7-9ff6-54c42105dd1f"))).get_OriginalSource(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void OriginalSource(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem)this.asInterface(uuid("7bfb9e40-a6aa-45a7-9ff6-54c42105dd1f"))).set_OriginalSource(value));
	}
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.ApplicationModel.SocialInfo.SocialFeedContent Content()
	{
		Windows.ApplicationModel.SocialInfo.SocialFeedContent _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem)this.asInterface(uuid("7bfb9e40-a6aa-45a7-9ff6-54c42105dd1f"))).get_Content(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem)this.asInterface(uuid("7bfb9e40-a6aa-45a7-9ff6-54c42105dd1f"))).get_Timestamp(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void Timestamp(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem)this.asInterface(uuid("7bfb9e40-a6aa-45a7-9ff6-54c42105dd1f"))).set_Timestamp(value));
	}
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.Uri TargetUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem)this.asInterface(uuid("7bfb9e40-a6aa-45a7-9ff6-54c42105dd1f"))).get_TargetUri(&_ret));
		return _ret;
	}
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void TargetUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem)this.asInterface(uuid("7bfb9e40-a6aa-45a7-9ff6-54c42105dd1f"))).set_TargetUri(value));
	}
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void Thumbnail(Windows.ApplicationModel.SocialInfo.SocialItemThumbnail value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem)this.asInterface(uuid("7bfb9e40-a6aa-45a7-9ff6-54c42105dd1f"))).set_Thumbnail(value));
	}
	deprecated("ISocialFeedSharedItem is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.ApplicationModel.SocialInfo.SocialItemThumbnail Thumbnail()
	{
		Windows.ApplicationModel.SocialInfo.SocialItemThumbnail _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem)this.asInterface(uuid("7bfb9e40-a6aa-45a7-9ff6-54c42105dd1f"))).get_Thumbnail(&_ret));
		return _ret;
	}
	static SocialFeedSharedItem New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SocialFeedSharedItem).abi_ActivateInstance(&ret));
		return cast(SocialFeedSharedItem) ret;
	}
}

interface SocialItemThumbnail : Windows.ApplicationModel.SocialInfo.ISocialItemThumbnail
{
extern(Windows):
	deprecated("ISocialItemThumbnail is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.Uri TargetUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialItemThumbnail)this.asInterface(uuid("5cbf831a-3f08-497f-917f-57e09d84b141"))).get_TargetUri(&_ret));
		return _ret;
	}
	deprecated("ISocialItemThumbnail is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void TargetUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialItemThumbnail)this.asInterface(uuid("5cbf831a-3f08-497f-917f-57e09d84b141"))).set_TargetUri(value));
	}
	deprecated("ISocialItemThumbnail is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.Uri ImageUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialItemThumbnail)this.asInterface(uuid("5cbf831a-3f08-497f-917f-57e09d84b141"))).get_ImageUri(&_ret));
		return _ret;
	}
	deprecated("ISocialItemThumbnail is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void ImageUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialItemThumbnail)this.asInterface(uuid("5cbf831a-3f08-497f-917f-57e09d84b141"))).set_ImageUri(value));
	}
	deprecated("ISocialItemThumbnail is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Graphics.Imaging.BitmapSize BitmapSize()
	{
		Windows.Graphics.Imaging.BitmapSize _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialItemThumbnail)this.asInterface(uuid("5cbf831a-3f08-497f-917f-57e09d84b141"))).get_BitmapSize(&_ret));
		return _ret;
	}
	deprecated("ISocialItemThumbnail is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void BitmapSize(Windows.Graphics.Imaging.BitmapSize value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialItemThumbnail)this.asInterface(uuid("5cbf831a-3f08-497f-917f-57e09d84b141"))).set_BitmapSize(value));
	}
	deprecated("ISocialItemThumbnail is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.IAsyncAction SetImageAsync(Windows.Storage.Streams.IInputStream image)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialItemThumbnail)this.asInterface(uuid("5cbf831a-3f08-497f-917f-57e09d84b141"))).abi_SetImageAsync(image, &_ret));
		return _ret;
	}
	static SocialItemThumbnail New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SocialItemThumbnail).abi_ActivateInstance(&ret));
		return cast(SocialItemThumbnail) ret;
	}
}

interface SocialUserInfo : Windows.ApplicationModel.SocialInfo.ISocialUserInfo
{
extern(Windows):
	deprecated("ISocialUserInfo is deprecated and might not work on all platforms. For more info, see MSDN.")
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialUserInfo)this.asInterface(uuid("9e5e1bd1-90d0-4e1d-9554-844d46607f61"))).get_DisplayName(&_ret));
		return _ret;
	}
	deprecated("ISocialUserInfo is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void DisplayName(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialUserInfo)this.asInterface(uuid("9e5e1bd1-90d0-4e1d-9554-844d46607f61"))).set_DisplayName(value));
	}
	deprecated("ISocialUserInfo is deprecated and might not work on all platforms. For more info, see MSDN.")
	final HSTRING UserName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialUserInfo)this.asInterface(uuid("9e5e1bd1-90d0-4e1d-9554-844d46607f61"))).get_UserName(&_ret));
		return _ret;
	}
	deprecated("ISocialUserInfo is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void UserName(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialUserInfo)this.asInterface(uuid("9e5e1bd1-90d0-4e1d-9554-844d46607f61"))).set_UserName(value));
	}
	deprecated("ISocialUserInfo is deprecated and might not work on all platforms. For more info, see MSDN.")
	final HSTRING RemoteId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialUserInfo)this.asInterface(uuid("9e5e1bd1-90d0-4e1d-9554-844d46607f61"))).get_RemoteId(&_ret));
		return _ret;
	}
	deprecated("ISocialUserInfo is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void RemoteId(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialUserInfo)this.asInterface(uuid("9e5e1bd1-90d0-4e1d-9554-844d46607f61"))).set_RemoteId(value));
	}
	deprecated("ISocialUserInfo is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.Uri TargetUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialUserInfo)this.asInterface(uuid("9e5e1bd1-90d0-4e1d-9554-844d46607f61"))).get_TargetUri(&_ret));
		return _ret;
	}
	deprecated("ISocialUserInfo is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void TargetUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.ApplicationModel.SocialInfo.ISocialUserInfo)this.asInterface(uuid("9e5e1bd1-90d0-4e1d-9554-844d46607f61"))).set_TargetUri(value));
	}
}

enum SocialFeedItemStyle
{
	Default = 0,
	Photo = 1
}

enum SocialFeedKind
{
	HomeFeed = 0,
	ContactFeed = 1,
	Dashboard = 2
}

enum SocialFeedUpdateMode
{
	Append = 0,
	Replace = 1
}

enum SocialItemBadgeStyle
{
	Hidden = 0,
	Visible = 1,
	VisibleWithCount = 2
}