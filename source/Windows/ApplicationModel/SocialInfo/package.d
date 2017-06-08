module Windows.ApplicationModel.SocialInfo;

import dwinrt;

@uuid("0b6a985a-d59d-40be-980c-488a2ab30a83")
@WinrtFactory("Windows.ApplicationModel.SocialInfo.SocialFeedChildItem")
interface ISocialFeedChildItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
}

interface SocialFeedContent : Windows.ApplicationModel.SocialInfo.ISocialFeedContent
{
}

interface SocialFeedItem : Windows.ApplicationModel.SocialInfo.ISocialFeedItem
{
}

interface SocialFeedSharedItem : Windows.ApplicationModel.SocialInfo.ISocialFeedSharedItem
{
}

interface SocialItemThumbnail : Windows.ApplicationModel.SocialInfo.ISocialItemThumbnail
{
}

interface SocialUserInfo : Windows.ApplicationModel.SocialInfo.ISocialUserInfo
{
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