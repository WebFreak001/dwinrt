module Windows.UI.Notifications;

import dwinrt;

@uuid("eb0dbe66-7448-448d-9db8-d78acd2abba9")
interface IAdaptiveNotificationContent : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.UI.Notifications.AdaptiveNotificationContentKind* return_value);
	HRESULT get_Hints(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
}

@uuid("46d4a3be-609a-4326-a40b-bfde872034a3")
@WinrtFactory("Windows.UI.Notifications.AdaptiveNotificationText")
interface IAdaptiveNotificationText_Base : IInspectable
{
extern(Windows):
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
	HRESULT get_Language(HSTRING* return_value);
	HRESULT set_Language(HSTRING value);
}
@uuid("46d4a3be-609a-4326-a40b-bfde872034a3")
@WinrtFactory("Windows.UI.Notifications.AdaptiveNotificationText")
interface IAdaptiveNotificationText : IAdaptiveNotificationText_Base, Windows.UI.Notifications.IAdaptiveNotificationContent {}

@uuid("075cb4ca-d08a-4e2f-9233-7e289c1f7722")
@WinrtFactory("Windows.UI.Notifications.BadgeNotification")
interface IBadgeNotification : IInspectable
{
extern(Windows):
	HRESULT get_Content(Windows.Data.Xml.Dom.XmlDocument* return_value);
	HRESULT set_ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
}

@uuid("edf255ce-0618-4d59-948a-5a61040c52f9")
@WinrtFactory("Windows.UI.Notifications.BadgeNotification")
interface IBadgeNotificationFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateBadgeNotification(Windows.Data.Xml.Dom.XmlDocument content, Windows.UI.Notifications.BadgeNotification* return_notification);
}

@uuid("996b21bc-0386-44e5-ba8d-0c1077a62e92")
@WinrtFactory("Windows.UI.Notifications.BadgeUpdateManagerForUser")
interface IBadgeUpdateManagerForUser : IInspectable
{
extern(Windows):
	HRESULT abi_CreateBadgeUpdaterForApplication(Windows.UI.Notifications.BadgeUpdater* return_result);
	HRESULT abi_CreateBadgeUpdaterForApplicationWithId(HSTRING applicationId, Windows.UI.Notifications.BadgeUpdater* return_result);
	HRESULT abi_CreateBadgeUpdaterForSecondaryTile(HSTRING tileId, Windows.UI.Notifications.BadgeUpdater* return_result);
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("33400faa-6dd5-4105-aebc-9b50fca492da")
@WinrtFactory("Windows.UI.Notifications.BadgeUpdateManager")
interface IBadgeUpdateManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateBadgeUpdaterForApplication(Windows.UI.Notifications.BadgeUpdater* return_updater);
	HRESULT abi_CreateBadgeUpdaterForApplicationWithId(HSTRING applicationId, Windows.UI.Notifications.BadgeUpdater* return_updater);
	HRESULT abi_CreateBadgeUpdaterForSecondaryTile(HSTRING tileId, Windows.UI.Notifications.BadgeUpdater* return_updater);
	HRESULT abi_GetTemplateContent(Windows.UI.Notifications.BadgeTemplateType type, Windows.Data.Xml.Dom.XmlDocument* return_content);
}

@uuid("979a35ce-f940-48bf-94e8-ca244d400b41")
@WinrtFactory("Windows.UI.Notifications.BadgeUpdateManager")
interface IBadgeUpdateManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetForUser(Windows.System.User user, Windows.UI.Notifications.BadgeUpdateManagerForUser* return_result);
}

@uuid("b5fa1fd4-7562-4f6c-bfa3-1b6ed2e57f2f")
@WinrtFactory("Windows.UI.Notifications.BadgeUpdater")
interface IBadgeUpdater : IInspectable
{
extern(Windows):
	HRESULT abi_Update(Windows.UI.Notifications.BadgeNotification notification);
	HRESULT abi_Clear();
	HRESULT abi_StartPeriodicUpdate(Windows.Foundation.Uri badgeContent, Windows.UI.Notifications.PeriodicUpdateRecurrence requestedInterval);
	HRESULT abi_StartPeriodicUpdateAtTime(Windows.Foundation.Uri badgeContent, Windows.Foundation.DateTime startTime, Windows.UI.Notifications.PeriodicUpdateRecurrence requestedInterval);
	HRESULT abi_StopPeriodicUpdate();
}

@uuid("06206598-d496-497d-8692-4f7d7c2770df")
@WinrtFactory("Windows.UI.Notifications.KnownAdaptiveNotificationHints")
interface IKnownAdaptiveNotificationHintsStatics : IInspectable
{
extern(Windows):
	HRESULT get_Style(HSTRING* return_value);
	HRESULT get_Wrap(HSTRING* return_value);
	HRESULT get_MaxLines(HSTRING* return_value);
	HRESULT get_MinLines(HSTRING* return_value);
	HRESULT get_TextStacking(HSTRING* return_value);
	HRESULT get_Align(HSTRING* return_value);
}

@uuid("202192d7-8996-45aa-8ba1-d461d72c2a1b")
@WinrtFactory("Windows.UI.Notifications.KnownAdaptiveNotificationTextStyles")
interface IKnownAdaptiveNotificationTextStylesStatics : IInspectable
{
extern(Windows):
	HRESULT get_Caption(HSTRING* return_value);
	HRESULT get_Body(HSTRING* return_value);
	HRESULT get_Base(HSTRING* return_value);
	HRESULT get_Subtitle(HSTRING* return_value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT get_Subheader(HSTRING* return_value);
	HRESULT get_Header(HSTRING* return_value);
	HRESULT get_TitleNumeral(HSTRING* return_value);
	HRESULT get_SubheaderNumeral(HSTRING* return_value);
	HRESULT get_HeaderNumeral(HSTRING* return_value);
	HRESULT get_CaptionSubtle(HSTRING* return_value);
	HRESULT get_BodySubtle(HSTRING* return_value);
	HRESULT get_BaseSubtle(HSTRING* return_value);
	HRESULT get_SubtitleSubtle(HSTRING* return_value);
	HRESULT get_TitleSubtle(HSTRING* return_value);
	HRESULT get_SubheaderSubtle(HSTRING* return_value);
	HRESULT get_SubheaderNumeralSubtle(HSTRING* return_value);
	HRESULT get_HeaderSubtle(HSTRING* return_value);
	HRESULT get_HeaderNumeralSubtle(HSTRING* return_value);
}

@uuid("79427bae-a8b7-4d58-89ea-76a7b7bccded")
@WinrtFactory("Windows.UI.Notifications.KnownNotificationBindings")
interface IKnownNotificationBindingsStatics : IInspectable
{
extern(Windows):
	HRESULT get_ToastGeneric(HSTRING* return_value);
}

@uuid("108037fe-eb76-4f82-97bc-da07530a2e20")
@WinrtFactory("Windows.UI.Notifications.Notification")
interface INotification : IInspectable
{
extern(Windows):
	HRESULT get_ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_Visual(Windows.UI.Notifications.NotificationVisual* return_value);
	HRESULT set_Visual(Windows.UI.Notifications.NotificationVisual value);
}

@uuid("f29e4b85-0370-4ad3-b4ea-da9e35e7eabf")
@WinrtFactory("Windows.UI.Notifications.NotificationBinding")
interface INotificationBinding : IInspectable
{
extern(Windows):
	HRESULT get_Template(HSTRING* return_value);
	HRESULT set_Template(HSTRING value);
	HRESULT get_Language(HSTRING* return_value);
	HRESULT set_Language(HSTRING value);
	HRESULT get_Hints(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
	HRESULT abi_GetTextElements(Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.AdaptiveNotificationText)* return_result);
}

@uuid("9ffd2312-9d6a-4aaf-b6ac-ff17f0c1f280")
@WinrtFactory("Windows.UI.Notifications.NotificationData")
interface INotificationData : IInspectable
{
extern(Windows):
	HRESULT get_Values(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
	HRESULT get_SequenceNumber(UINT32* return_value);
	HRESULT set_SequenceNumber(UINT32 value);
}

@uuid("23c1e33a-1c10-46fb-8040-dec384621cf8")
@WinrtFactory("Windows.UI.Notifications.NotificationData")
interface INotificationDataFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateNotificationDataWithValuesAndSequenceNumber(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) initialValues, UINT32 sequenceNumber, Windows.UI.Notifications.NotificationData* return_result);
	HRESULT abi_CreateNotificationDataWithValues(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) initialValues, Windows.UI.Notifications.NotificationData* return_result);
}

@uuid("68835b8e-aa56-4e11-86d3-5f9a6957bc5b")
@WinrtFactory("Windows.UI.Notifications.NotificationVisual")
interface INotificationVisual : IInspectable
{
extern(Windows):
	HRESULT get_Language(HSTRING* return_value);
	HRESULT set_Language(HSTRING value);
	HRESULT get_Bindings(Windows.Foundation.Collections.IVector!(Windows.UI.Notifications.NotificationBinding)* return_result);
	HRESULT abi_GetBinding(HSTRING templateName, Windows.UI.Notifications.NotificationBinding* return_result);
}

@uuid("0abca6d5-99dc-4c78-a11c-c9e7f86d7ef7")
@WinrtFactory("Windows.UI.Notifications.ScheduledTileNotification")
interface IScheduledTileNotification : IInspectable
{
extern(Windows):
	HRESULT get_Content(Windows.Data.Xml.Dom.XmlDocument* return_value);
	HRESULT get_DeliveryTime(Windows.Foundation.DateTime* return_value);
	HRESULT set_ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_Tag(HSTRING value);
	HRESULT get_Tag(HSTRING* return_value);
	HRESULT set_Id(HSTRING value);
	HRESULT get_Id(HSTRING* return_value);
}

@uuid("3383138a-98c0-4c3b-bbd6-4a633c7cfc29")
@WinrtFactory("Windows.UI.Notifications.ScheduledTileNotification")
interface IScheduledTileNotificationFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateScheduledTileNotification(Windows.Data.Xml.Dom.XmlDocument content, Windows.Foundation.DateTime deliveryTime, Windows.UI.Notifications.ScheduledTileNotification* return_notification);
}

@uuid("79f577f8-0de7-48cd-9740-9b370490c838")
@WinrtFactory("Windows.UI.Notifications.ScheduledToastNotification")
interface IScheduledToastNotification : IInspectable
{
extern(Windows):
	HRESULT get_Content(Windows.Data.Xml.Dom.XmlDocument* return_value);
	HRESULT get_DeliveryTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_SnoozeInterval(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_MaximumSnoozeCount(UINT32* return_value);
	HRESULT set_Id(HSTRING value);
	HRESULT get_Id(HSTRING* return_value);
}

@uuid("a66ea09c-31b4-43b0-b5dd-7a40e85363b1")
@WinrtFactory("Windows.UI.Notifications.ScheduledToastNotification")
interface IScheduledToastNotification2 : IInspectable
{
extern(Windows):
	HRESULT set_Tag(HSTRING value);
	HRESULT get_Tag(HSTRING* return_value);
	HRESULT set_Group(HSTRING value);
	HRESULT get_Group(HSTRING* return_value);
	HRESULT set_SuppressPopup(bool value);
	HRESULT get_SuppressPopup(bool* return_value);
}

@uuid("98429e8b-bd32-4a3b-9d15-22aea49462a1")
@WinrtFactory("Windows.UI.Notifications.ScheduledToastNotification")
interface IScheduledToastNotification3 : IInspectable
{
extern(Windows):
	HRESULT get_NotificationMirroring(Windows.UI.Notifications.NotificationMirroring* return_value);
	HRESULT set_NotificationMirroring(Windows.UI.Notifications.NotificationMirroring value);
	HRESULT get_RemoteId(HSTRING* return_value);
	HRESULT set_RemoteId(HSTRING value);
}

@uuid("e7bed191-0bb9-4189-8394-31761b476fd7")
@WinrtFactory("Windows.UI.Notifications.ScheduledToastNotification")
interface IScheduledToastNotificationFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateScheduledToastNotification(Windows.Data.Xml.Dom.XmlDocument content, Windows.Foundation.DateTime deliveryTime, Windows.UI.Notifications.ScheduledToastNotification* return_notification);
	HRESULT abi_CreateScheduledToastNotificationRecurring(Windows.Data.Xml.Dom.XmlDocument content, Windows.Foundation.DateTime deliveryTime, Windows.Foundation.TimeSpan snoozeInterval, UINT32 maximumSnoozeCount, Windows.UI.Notifications.ScheduledToastNotification* return_notification);
}

@uuid("342d8988-5af2-481a-a6a3-f2fdc78de88e")
@WinrtFactory("Windows.UI.Notifications.ShownTileNotification")
interface IShownTileNotification : IInspectable
{
extern(Windows):
	HRESULT get_Arguments(HSTRING* return_value);
}

@uuid("9a53b261-c70c-42be-b2f3-f42aa97d34e5")
@WinrtFactory("Windows.UI.Notifications.TileFlyoutNotification")
interface ITileFlyoutNotification : IInspectable
{
extern(Windows):
	HRESULT get_Content(Windows.Data.Xml.Dom.XmlDocument* return_value);
	HRESULT set_ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
}

@uuid("ef556ff5-5226-4f2b-b278-88a35dfe569f")
@WinrtFactory("Windows.UI.Notifications.TileFlyoutNotification")
interface ITileFlyoutNotificationFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateTileFlyoutNotification(Windows.Data.Xml.Dom.XmlDocument content, Windows.UI.Notifications.TileFlyoutNotification* return_notification);
}

@uuid("04363b0b-1ac0-4b99-88e7-ada83e953d48")
@WinrtFactory("Windows.UI.Notifications.TileFlyoutUpdateManager")
interface ITileFlyoutUpdateManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateTileFlyoutUpdaterForApplication(Windows.UI.Notifications.TileFlyoutUpdater* return_updater);
	HRESULT abi_CreateTileFlyoutUpdaterForApplicationWithId(HSTRING applicationId, Windows.UI.Notifications.TileFlyoutUpdater* return_updater);
	HRESULT abi_CreateTileFlyoutUpdaterForSecondaryTile(HSTRING tileId, Windows.UI.Notifications.TileFlyoutUpdater* return_updater);
	HRESULT abi_GetTemplateContent(Windows.UI.Notifications.TileFlyoutTemplateType type, Windows.Data.Xml.Dom.XmlDocument* return_content);
}

@uuid("8d40c76a-c465-4052-a740-5c2654c1a089")
@WinrtFactory("Windows.UI.Notifications.TileFlyoutUpdater")
interface ITileFlyoutUpdater : IInspectable
{
extern(Windows):
	HRESULT abi_Update(Windows.UI.Notifications.TileFlyoutNotification notification);
	HRESULT abi_Clear();
	HRESULT abi_StartPeriodicUpdate(Windows.Foundation.Uri tileFlyoutContent, Windows.UI.Notifications.PeriodicUpdateRecurrence requestedInterval);
	HRESULT abi_StartPeriodicUpdateAtTime(Windows.Foundation.Uri tileFlyoutContent, Windows.Foundation.DateTime startTime, Windows.UI.Notifications.PeriodicUpdateRecurrence requestedInterval);
	HRESULT abi_StopPeriodicUpdate();
	HRESULT get_Setting(Windows.UI.Notifications.NotificationSetting* return_value);
}

@uuid("ebaec8fa-50ec-4c18-b4d0-3af02e5540ab")
@WinrtFactory("Windows.UI.Notifications.TileNotification")
interface ITileNotification : IInspectable
{
extern(Windows):
	HRESULT get_Content(Windows.Data.Xml.Dom.XmlDocument* return_value);
	HRESULT set_ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_Tag(HSTRING value);
	HRESULT get_Tag(HSTRING* return_value);
}

@uuid("c6abdd6e-4928-46c8-bdbf-81a047dea0d4")
@WinrtFactory("Windows.UI.Notifications.TileNotification")
interface ITileNotificationFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateTileNotification(Windows.Data.Xml.Dom.XmlDocument content, Windows.UI.Notifications.TileNotification* return_notification);
}

@uuid("55141348-2ee2-4e2d-9cc1-216a20decc9f")
@WinrtFactory("Windows.UI.Notifications.TileUpdateManagerForUser")
interface ITileUpdateManagerForUser : IInspectable
{
extern(Windows):
	HRESULT abi_CreateTileUpdaterForApplication(Windows.UI.Notifications.TileUpdater* return_updater);
	HRESULT abi_CreateTileUpdaterForApplicationWithId(HSTRING applicationId, Windows.UI.Notifications.TileUpdater* return_updater);
	HRESULT abi_CreateTileUpdaterForSecondaryTile(HSTRING tileId, Windows.UI.Notifications.TileUpdater* return_updater);
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("da159e5d-3ea9-4986-8d84-b09d5e12276d")
@WinrtFactory("Windows.UI.Notifications.TileUpdateManager")
interface ITileUpdateManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateTileUpdaterForApplication(Windows.UI.Notifications.TileUpdater* return_updater);
	HRESULT abi_CreateTileUpdaterForApplicationWithId(HSTRING applicationId, Windows.UI.Notifications.TileUpdater* return_updater);
	HRESULT abi_CreateTileUpdaterForSecondaryTile(HSTRING tileId, Windows.UI.Notifications.TileUpdater* return_updater);
	HRESULT abi_GetTemplateContent(Windows.UI.Notifications.TileTemplateType type, Windows.Data.Xml.Dom.XmlDocument* return_content);
}

@uuid("731c1ddc-8e14-4b7c-a34b-9d22de76c84d")
@WinrtFactory("Windows.UI.Notifications.TileUpdateManager")
interface ITileUpdateManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetForUser(Windows.System.User user, Windows.UI.Notifications.TileUpdateManagerForUser* return_result);
}

@uuid("0942a48b-1d91-44ec-9243-c1e821c29a20")
@WinrtFactory("Windows.UI.Notifications.TileUpdater")
interface ITileUpdater : IInspectable
{
extern(Windows):
	HRESULT abi_Update(Windows.UI.Notifications.TileNotification notification);
	HRESULT abi_Clear();
	HRESULT abi_EnableNotificationQueue(bool enable);
	HRESULT get_Setting(Windows.UI.Notifications.NotificationSetting* return_value);
	HRESULT abi_AddToSchedule(Windows.UI.Notifications.ScheduledTileNotification scheduledTile);
	HRESULT abi_RemoveFromSchedule(Windows.UI.Notifications.ScheduledTileNotification scheduledTile);
	HRESULT abi_GetScheduledTileNotifications(Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.ScheduledTileNotification)* return_scheduledTiles);
	HRESULT abi_StartPeriodicUpdate(Windows.Foundation.Uri tileContent, Windows.UI.Notifications.PeriodicUpdateRecurrence requestedInterval);
	HRESULT abi_StartPeriodicUpdateAtTime(Windows.Foundation.Uri tileContent, Windows.Foundation.DateTime startTime, Windows.UI.Notifications.PeriodicUpdateRecurrence requestedInterval);
	HRESULT abi_StopPeriodicUpdate();
	HRESULT abi_StartPeriodicUpdateBatch(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) tileContents, Windows.UI.Notifications.PeriodicUpdateRecurrence requestedInterval);
	HRESULT abi_StartPeriodicUpdateBatchAtTime(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) tileContents, Windows.Foundation.DateTime startTime, Windows.UI.Notifications.PeriodicUpdateRecurrence requestedInterval);
}

@uuid("a2266e12-15ee-43ed-83f5-65b352bb1a84")
@WinrtFactory("Windows.UI.Notifications.TileUpdater")
interface ITileUpdater2 : IInspectable
{
extern(Windows):
	HRESULT abi_EnableNotificationQueueForSquare150x150(bool enable);
	HRESULT abi_EnableNotificationQueueForWide310x150(bool enable);
	HRESULT abi_EnableNotificationQueueForSquare310x310(bool enable);
}

@uuid("e3bf92f3-c197-436f-8265-0625824f8dac")
@WinrtFactory("Windows.UI.Notifications.ToastActivatedEventArgs")
interface IToastActivatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Arguments(HSTRING* return_value);
}

@uuid("0a8bc3b0-e0be-4858-bc2a-89dfe0b32863")
@WinrtFactory("Windows.UI.Notifications.ToastCollection")
interface IToastCollection : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT set_DisplayName(HSTRING value);
	HRESULT get_LaunchArgs(HSTRING* return_value);
	HRESULT set_LaunchArgs(HSTRING value);
	HRESULT get_Icon(Windows.Foundation.Uri* return_value);
	HRESULT set_Icon(Windows.Foundation.Uri value);
}

@uuid("164dd3d7-73c4-44f7-b4ff-fb6d4bf1f4c6")
@WinrtFactory("Windows.UI.Notifications.ToastCollection")
interface IToastCollectionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(HSTRING collectionId, HSTRING displayName, HSTRING launchArgs, Windows.Foundation.Uri iconUri, Windows.UI.Notifications.ToastCollection* return_result);
}

@uuid("2a1821fe-179d-49bc-b79d-a527920d3665")
@WinrtFactory("Windows.UI.Notifications.ToastCollectionManager")
interface IToastCollectionManager : IInspectable
{
extern(Windows):
	HRESULT abi_SaveToastCollectionAsync(Windows.UI.Notifications.ToastCollection collection, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_FindAllToastCollectionsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.ToastCollection))* return_operation);
	HRESULT abi_GetToastCollectionAsync(HSTRING collectionId, Windows.Foundation.IAsyncOperation!(Windows.UI.Notifications.ToastCollection)* return_operation);
	HRESULT abi_RemoveToastCollectionAsync(HSTRING collectionId, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_RemoveAllToastCollectionsAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT get_User(Windows.System.User* return_value);
	HRESULT get_AppId(HSTRING* return_value);
}

@uuid("3f89d935-d9cb-4538-a0f0-ffe7659938f8")
@WinrtFactory("Windows.UI.Notifications.ToastDismissedEventArgs")
interface IToastDismissedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reason(Windows.UI.Notifications.ToastDismissalReason* return_value);
}

@uuid("35176862-cfd4-44f8-ad64-f500fd896c3b")
@WinrtFactory("Windows.UI.Notifications.ToastFailedEventArgs")
interface IToastFailedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ErrorCode(HRESULT* return_value);
}

@uuid("997e2675-059e-4e60-8b06-1760917c8b80")
@WinrtFactory("Windows.UI.Notifications.ToastNotification")
interface IToastNotification : IInspectable
{
extern(Windows):
	HRESULT get_Content(Windows.Data.Xml.Dom.XmlDocument* return_value);
	HRESULT set_ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT add_Dismissed(Windows.Foundation.TypedEventHandler!(Windows.UI.Notifications.ToastNotification, Windows.UI.Notifications.ToastDismissedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_Dismissed(EventRegistrationToken cookie);
	HRESULT add_Activated(Windows.Foundation.TypedEventHandler!(Windows.UI.Notifications.ToastNotification, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_Activated(EventRegistrationToken cookie);
	HRESULT add_Failed(Windows.Foundation.TypedEventHandler!(Windows.UI.Notifications.ToastNotification, Windows.UI.Notifications.ToastFailedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Failed(EventRegistrationToken token);
}

@uuid("9dfb9fd1-143a-490e-90bf-b9fba7132de7")
@WinrtFactory("Windows.UI.Notifications.ToastNotification")
interface IToastNotification2 : IInspectable
{
extern(Windows):
	HRESULT set_Tag(HSTRING value);
	HRESULT get_Tag(HSTRING* return_value);
	HRESULT set_Group(HSTRING value);
	HRESULT get_Group(HSTRING* return_value);
	HRESULT set_SuppressPopup(bool value);
	HRESULT get_SuppressPopup(bool* return_value);
}

@uuid("31e8aed8-8141-4f99-bc0a-c4ed21297d77")
@WinrtFactory("Windows.UI.Notifications.ToastNotification")
interface IToastNotification3 : IInspectable
{
extern(Windows):
	HRESULT get_NotificationMirroring(Windows.UI.Notifications.NotificationMirroring* return_value);
	HRESULT set_NotificationMirroring(Windows.UI.Notifications.NotificationMirroring value);
	HRESULT get_RemoteId(HSTRING* return_value);
	HRESULT set_RemoteId(HSTRING value);
}

@uuid("15154935-28ea-4727-88e9-c58680e2d118")
@WinrtFactory("Windows.UI.Notifications.ToastNotification")
interface IToastNotification4 : IInspectable
{
extern(Windows):
	HRESULT get_Data(Windows.UI.Notifications.NotificationData* return_value);
	HRESULT set_Data(Windows.UI.Notifications.NotificationData value);
	HRESULT get_Priority(Windows.UI.Notifications.ToastNotificationPriority* return_value);
	HRESULT set_Priority(Windows.UI.Notifications.ToastNotificationPriority value);
}

@uuid("9445135a-38f3-42f6-96aa-7955b0f03da2")
@WinrtFactory("Windows.UI.Notifications.ToastNotificationActionTriggerDetail")
interface IToastNotificationActionTriggerDetail : IInspectable
{
extern(Windows):
	HRESULT get_Argument(HSTRING* return_argument);
	HRESULT get_UserInput(Windows.Foundation.Collections.ValueSet* return_inputs);
}

@uuid("04124b20-82c6-4229-b109-fd9ed4662b53")
@WinrtFactory("Windows.UI.Notifications.ToastNotification")
interface IToastNotificationFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateToastNotification(Windows.Data.Xml.Dom.XmlDocument content, Windows.UI.Notifications.ToastNotification* return_notification);
}

@uuid("5caddc63-01d3-4c97-986f-0533483fee14")
@WinrtFactory("Windows.UI.Notifications.ToastNotificationHistory")
interface IToastNotificationHistory : IInspectable
{
extern(Windows):
	HRESULT abi_RemoveGroup(HSTRING group);
	HRESULT abi_RemoveGroupWithId(HSTRING group, HSTRING applicationId);
	HRESULT abi_RemoveGroupedTagWithId(HSTRING tag, HSTRING group, HSTRING applicationId);
	HRESULT abi_RemoveGroupedTag(HSTRING tag, HSTRING group);
	HRESULT abi_Remove(HSTRING tag);
	HRESULT abi_Clear();
	HRESULT abi_ClearWithId(HSTRING applicationId);
}

@uuid("3bc3d253-2f31-4092-9129-8ad5abf067da")
@WinrtFactory("Windows.UI.Notifications.ToastNotificationHistory")
interface IToastNotificationHistory2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetHistory(Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.ToastNotification)* return_toasts);
	HRESULT abi_GetHistoryWithId(HSTRING applicationId, Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.ToastNotification)* return_toasts);
}

@uuid("db037ffa-0068-412c-9c83-267c37f65670")
@WinrtFactory("Windows.UI.Notifications.ToastNotificationHistoryChangedTriggerDetail")
interface IToastNotificationHistoryChangedTriggerDetail : IInspectable
{
extern(Windows):
	HRESULT get_ChangeType(Windows.UI.Notifications.ToastHistoryChangedType* return_value);
}

@uuid("0b36e982-c871-49fb-babb-25bdbc4cc45b")
@WinrtFactory("Windows.UI.Notifications.ToastNotificationHistoryChangedTriggerDetail")
interface IToastNotificationHistoryChangedTriggerDetail2 : IInspectable
{
extern(Windows):
	HRESULT get_CollectionId(HSTRING* return_collectionId);
}

@uuid("79ab57f6-43fe-487b-8a7f-99567200ae94")
@WinrtFactory("Windows.UI.Notifications.ToastNotificationManagerForUser")
interface IToastNotificationManagerForUser : IInspectable
{
extern(Windows):
	HRESULT abi_CreateToastNotifier(Windows.UI.Notifications.ToastNotifier* return_result);
	HRESULT abi_CreateToastNotifierWithId(HSTRING applicationId, Windows.UI.Notifications.ToastNotifier* return_result);
	HRESULT get_History(Windows.UI.Notifications.ToastNotificationHistory* return_value);
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("679c64b7-81ab-42c2-8819-c958767753f4")
@WinrtFactory("Windows.UI.Notifications.ToastNotificationManagerForUser")
interface IToastNotificationManagerForUser2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetToastNotifierForToastCollectionIdAsync(HSTRING collectionId, Windows.Foundation.IAsyncOperation!(Windows.UI.Notifications.ToastNotifier)* return_operation);
	HRESULT abi_GetHistoryForToastCollectionIdAsync(HSTRING collectionId, Windows.Foundation.IAsyncOperation!(Windows.UI.Notifications.ToastNotificationHistory)* return_operation);
	HRESULT abi_GetToastCollectionManager(Windows.UI.Notifications.ToastCollectionManager* return_result);
	HRESULT abi_GetToastCollectionManagerWithAppId(HSTRING appId, Windows.UI.Notifications.ToastCollectionManager* return_result);
}

@uuid("50ac103f-d235-4598-bbef-98fe4d1a3ad4")
@WinrtFactory("Windows.UI.Notifications.ToastNotificationManager")
interface IToastNotificationManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateToastNotifier(Windows.UI.Notifications.ToastNotifier* return_notifier);
	HRESULT abi_CreateToastNotifierWithId(HSTRING applicationId, Windows.UI.Notifications.ToastNotifier* return_notifier);
	HRESULT abi_GetTemplateContent(Windows.UI.Notifications.ToastTemplateType type, Windows.Data.Xml.Dom.XmlDocument* return_content);
}

@uuid("7ab93c52-0e48-4750-ba9d-1a4113981847")
@WinrtFactory("Windows.UI.Notifications.ToastNotificationManager")
interface IToastNotificationManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_History(Windows.UI.Notifications.ToastNotificationHistory* return_value);
}

@uuid("8f993fd3-e516-45fb-8130-398e93fa52c3")
@WinrtFactory("Windows.UI.Notifications.ToastNotificationManager")
interface IToastNotificationManagerStatics4 : IInspectable
{
extern(Windows):
	HRESULT abi_GetForUser(Windows.System.User user, Windows.UI.Notifications.ToastNotificationManagerForUser* return_result);
	HRESULT abi_ConfigureNotificationMirroring(Windows.UI.Notifications.NotificationMirroring value);
}

@uuid("d6f5f569-d40d-407c-8989-88cab42cfd14")
@WinrtFactory("Windows.UI.Notifications.ToastNotificationManager")
interface IToastNotificationManagerStatics5 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.UI.Notifications.ToastNotificationManagerForUser* return_value);
}

@uuid("75927b93-03f3-41ec-91d3-6e5bac1b38e7")
@WinrtFactory("Windows.UI.Notifications.ToastNotifier")
interface IToastNotifier : IInspectable
{
extern(Windows):
	HRESULT abi_Show(Windows.UI.Notifications.ToastNotification notification);
	HRESULT abi_Hide(Windows.UI.Notifications.ToastNotification notification);
	HRESULT get_Setting(Windows.UI.Notifications.NotificationSetting* return_value);
	HRESULT abi_AddToSchedule(Windows.UI.Notifications.ScheduledToastNotification scheduledToast);
	HRESULT abi_RemoveFromSchedule(Windows.UI.Notifications.ScheduledToastNotification scheduledToast);
	HRESULT abi_GetScheduledToastNotifications(Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.ScheduledToastNotification)* return_scheduledToasts);
}

@uuid("354389c6-7c01-4bd5-9c20-604340cd2b74")
@WinrtFactory("Windows.UI.Notifications.ToastNotifier")
interface IToastNotifier2 : IInspectable
{
extern(Windows):
	HRESULT abi_UpdateWithTagAndGroup(Windows.UI.Notifications.NotificationData data, HSTRING tag, HSTRING group, Windows.UI.Notifications.NotificationUpdateResult* return_result);
	HRESULT abi_UpdateWithTag(Windows.UI.Notifications.NotificationData data, HSTRING tag, Windows.UI.Notifications.NotificationUpdateResult* return_result);
}

@uuid("adf7e52f-4e53-42d5-9c33-eb5ea515b23e")
@WinrtFactory("Windows.UI.Notifications.UserNotification")
interface IUserNotification : IInspectable
{
extern(Windows):
	HRESULT get_Notification(Windows.UI.Notifications.Notification* return_value);
	HRESULT get_AppInfo(Windows.ApplicationModel.AppInfo* return_value);
	HRESULT get_Id(UINT32* return_value);
	HRESULT get_CreationTime(Windows.Foundation.DateTime* return_value);
}

@uuid("b6bd6839-79cf-4b25-82c0-0ce1eef81f8c")
@WinrtFactory("Windows.UI.Notifications.UserNotificationChangedEventArgs")
interface IUserNotificationChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ChangeKind(Windows.UI.Notifications.UserNotificationChangedKind* return_value);
	HRESULT get_UserNotificationId(UINT32* return_value);
}

interface AdaptiveNotificationText : Windows.UI.Notifications.IAdaptiveNotificationText, Windows.UI.Notifications.IAdaptiveNotificationContent
{
extern(Windows):
	final wstring Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IAdaptiveNotificationText)this.asInterface(uuid("46d4a3be-609a-4326-a40b-bfde872034a3"))).get_Text(&_ret));
		return hstring(_ret).d_str;
	}
	final void Text(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IAdaptiveNotificationText)this.asInterface(uuid("46d4a3be-609a-4326-a40b-bfde872034a3"))).set_Text(hstring(value).handle));
	}
	final wstring Language()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IAdaptiveNotificationText)this.asInterface(uuid("46d4a3be-609a-4326-a40b-bfde872034a3"))).get_Language(&_ret));
		return hstring(_ret).d_str;
	}
	final void Language(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IAdaptiveNotificationText)this.asInterface(uuid("46d4a3be-609a-4326-a40b-bfde872034a3"))).set_Language(hstring(value).handle));
	}
	final Windows.UI.Notifications.AdaptiveNotificationContentKind Kind()
	{
		Windows.UI.Notifications.AdaptiveNotificationContentKind _ret;
		Debug.OK((cast(Windows.UI.Notifications.IAdaptiveNotificationContent)this.asInterface(uuid("eb0dbe66-7448-448d-9db8-d78acd2abba9"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) Hints()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK((cast(Windows.UI.Notifications.IAdaptiveNotificationContent)this.asInterface(uuid("eb0dbe66-7448-448d-9db8-d78acd2abba9"))).get_Hints(&_ret));
		return _ret;
	}
	static AdaptiveNotificationText New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(AdaptiveNotificationText).abi_ActivateInstance(&ret));
		return cast(AdaptiveNotificationText) ret;
	}
}

interface BadgeNotification : Windows.UI.Notifications.IBadgeNotification
{
extern(Windows):
	final Windows.Data.Xml.Dom.XmlDocument Content()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.UI.Notifications.IBadgeNotification)this.asInterface(uuid("075cb4ca-d08a-4e2f-9233-7e289c1f7722"))).get_Content(&_ret));
		return _ret;
	}
	final void ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IBadgeNotification)this.asInterface(uuid("075cb4ca-d08a-4e2f-9233-7e289c1f7722"))).set_ExpirationTime(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ExpirationTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.UI.Notifications.IBadgeNotification)this.asInterface(uuid("075cb4ca-d08a-4e2f-9233-7e289c1f7722"))).get_ExpirationTime(&_ret));
		return _ret;
	}
	static Windows.UI.Notifications.BadgeNotification New(Windows.Data.Xml.Dom.XmlDocument content)
	{
		auto factory = factory!(Windows.UI.Notifications.IBadgeNotificationFactory);
		Windows.UI.Notifications.BadgeNotification _ret;
		Debug.OK((cast(Windows.UI.Notifications.IBadgeNotificationFactory)factory.asInterface(uuid("edf255ce-0618-4d59-948a-5a61040c52f9"))).abi_CreateBadgeNotification(content, &_ret));
		return _ret;
	}
}

interface BadgeUpdateManager
{
	private static Windows.UI.Notifications.IBadgeUpdateManagerStatics _staticInstance;
	public static Windows.UI.Notifications.IBadgeUpdateManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Notifications.IBadgeUpdateManagerStatics);
		return _staticInstance;
	}
	static Windows.UI.Notifications.BadgeUpdater CreateBadgeUpdaterForApplication()
	{
		Windows.UI.Notifications.BadgeUpdater _ret;
		Debug.OK(staticInstance.abi_CreateBadgeUpdaterForApplication(&_ret));
		return _ret;
	}
	static Windows.UI.Notifications.BadgeUpdater CreateBadgeUpdaterForApplicationWithId(wstring applicationId)
	{
		Windows.UI.Notifications.BadgeUpdater _ret;
		Debug.OK(staticInstance.abi_CreateBadgeUpdaterForApplicationWithId(hstring(applicationId).handle, &_ret));
		return _ret;
	}
	alias CreateBadgeUpdaterForApplication = CreateBadgeUpdaterForApplicationWithId;
	static Windows.UI.Notifications.BadgeUpdater CreateBadgeUpdaterForSecondaryTile(wstring tileId)
	{
		Windows.UI.Notifications.BadgeUpdater _ret;
		Debug.OK(staticInstance.abi_CreateBadgeUpdaterForSecondaryTile(hstring(tileId).handle, &_ret));
		return _ret;
	}
	static Windows.Data.Xml.Dom.XmlDocument GetTemplateContent(Windows.UI.Notifications.BadgeTemplateType type)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK(staticInstance.abi_GetTemplateContent(type, &_ret));
		return _ret;
	}
}

interface BadgeUpdateManagerForUser : Windows.UI.Notifications.IBadgeUpdateManagerForUser
{
extern(Windows):
	final Windows.UI.Notifications.BadgeUpdater CreateBadgeUpdaterForApplication()
	{
		Windows.UI.Notifications.BadgeUpdater _ret;
		Debug.OK((cast(Windows.UI.Notifications.IBadgeUpdateManagerForUser)this.asInterface(uuid("996b21bc-0386-44e5-ba8d-0c1077a62e92"))).abi_CreateBadgeUpdaterForApplication(&_ret));
		return _ret;
	}
	final Windows.UI.Notifications.BadgeUpdater CreateBadgeUpdaterForApplicationWithId(wstring applicationId)
	{
		Windows.UI.Notifications.BadgeUpdater _ret;
		Debug.OK((cast(Windows.UI.Notifications.IBadgeUpdateManagerForUser)this.asInterface(uuid("996b21bc-0386-44e5-ba8d-0c1077a62e92"))).abi_CreateBadgeUpdaterForApplicationWithId(hstring(applicationId).handle, &_ret));
		return _ret;
	}
	alias CreateBadgeUpdaterForApplication = CreateBadgeUpdaterForApplicationWithId;
	final Windows.UI.Notifications.BadgeUpdater CreateBadgeUpdaterForSecondaryTile(wstring tileId)
	{
		Windows.UI.Notifications.BadgeUpdater _ret;
		Debug.OK((cast(Windows.UI.Notifications.IBadgeUpdateManagerForUser)this.asInterface(uuid("996b21bc-0386-44e5-ba8d-0c1077a62e92"))).abi_CreateBadgeUpdaterForSecondaryTile(hstring(tileId).handle, &_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.UI.Notifications.IBadgeUpdateManagerForUser)this.asInterface(uuid("996b21bc-0386-44e5-ba8d-0c1077a62e92"))).get_User(&_ret));
		return _ret;
	}
}

interface BadgeUpdater : Windows.UI.Notifications.IBadgeUpdater
{
extern(Windows):
	final void Update(Windows.UI.Notifications.BadgeNotification notification)
	{
		Debug.OK((cast(Windows.UI.Notifications.IBadgeUpdater)this.asInterface(uuid("b5fa1fd4-7562-4f6c-bfa3-1b6ed2e57f2f"))).abi_Update(notification));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.UI.Notifications.IBadgeUpdater)this.asInterface(uuid("b5fa1fd4-7562-4f6c-bfa3-1b6ed2e57f2f"))).abi_Clear());
	}
	final void StartPeriodicUpdate(Windows.Foundation.Uri badgeContent, Windows.UI.Notifications.PeriodicUpdateRecurrence requestedInterval)
	{
		Debug.OK((cast(Windows.UI.Notifications.IBadgeUpdater)this.asInterface(uuid("b5fa1fd4-7562-4f6c-bfa3-1b6ed2e57f2f"))).abi_StartPeriodicUpdate(badgeContent, requestedInterval));
	}
	final void StartPeriodicUpdateAtTime(Windows.Foundation.Uri badgeContent, Windows.Foundation.DateTime startTime, Windows.UI.Notifications.PeriodicUpdateRecurrence requestedInterval)
	{
		Debug.OK((cast(Windows.UI.Notifications.IBadgeUpdater)this.asInterface(uuid("b5fa1fd4-7562-4f6c-bfa3-1b6ed2e57f2f"))).abi_StartPeriodicUpdateAtTime(badgeContent, startTime, requestedInterval));
	}
	alias StartPeriodicUpdate = StartPeriodicUpdateAtTime;
	final void StopPeriodicUpdate()
	{
		Debug.OK((cast(Windows.UI.Notifications.IBadgeUpdater)this.asInterface(uuid("b5fa1fd4-7562-4f6c-bfa3-1b6ed2e57f2f"))).abi_StopPeriodicUpdate());
	}
}

interface KnownAdaptiveNotificationHints
{
	private static Windows.UI.Notifications.IKnownAdaptiveNotificationHintsStatics _staticInstance;
	public static Windows.UI.Notifications.IKnownAdaptiveNotificationHintsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Notifications.IKnownAdaptiveNotificationHintsStatics);
		return _staticInstance;
	}
	static wstring Style()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Style(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Wrap()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Wrap(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MaxLines()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MaxLines(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MinLines()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MinLines(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring TextStacking()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TextStacking(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Align()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Align(&_ret));
		return hstring(_ret).d_str;
	}
}

interface KnownAdaptiveNotificationTextStyles
{
	private static Windows.UI.Notifications.IKnownAdaptiveNotificationTextStylesStatics _staticInstance;
	public static Windows.UI.Notifications.IKnownAdaptiveNotificationTextStylesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Notifications.IKnownAdaptiveNotificationTextStylesStatics);
		return _staticInstance;
	}
	static wstring Caption()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Caption(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Body()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Body(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Base()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Base(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Subtitle()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Subtitle(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Title()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Title(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Subheader()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Subheader(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Header()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Header(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring TitleNumeral()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TitleNumeral(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SubheaderNumeral()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SubheaderNumeral(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring HeaderNumeral()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HeaderNumeral(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring CaptionSubtle()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_CaptionSubtle(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BodySubtle()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BodySubtle(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BaseSubtle()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BaseSubtle(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SubtitleSubtle()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SubtitleSubtle(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring TitleSubtle()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TitleSubtle(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SubheaderSubtle()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SubheaderSubtle(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SubheaderNumeralSubtle()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SubheaderNumeralSubtle(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring HeaderSubtle()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HeaderSubtle(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring HeaderNumeralSubtle()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HeaderNumeralSubtle(&_ret));
		return hstring(_ret).d_str;
	}
}

interface KnownNotificationBindings
{
	private static Windows.UI.Notifications.IKnownNotificationBindingsStatics _staticInstance;
	public static Windows.UI.Notifications.IKnownNotificationBindingsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Notifications.IKnownNotificationBindingsStatics);
		return _staticInstance;
	}
	static wstring ToastGeneric()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ToastGeneric(&_ret));
		return hstring(_ret).d_str;
	}
}

interface Notification : Windows.UI.Notifications.INotification
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ExpirationTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.UI.Notifications.INotification)this.asInterface(uuid("108037fe-eb76-4f82-97bc-da07530a2e20"))).get_ExpirationTime(&_ret));
		return _ret;
	}
	final void ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.UI.Notifications.INotification)this.asInterface(uuid("108037fe-eb76-4f82-97bc-da07530a2e20"))).set_ExpirationTime(value));
	}
	final Windows.UI.Notifications.NotificationVisual Visual()
	{
		Windows.UI.Notifications.NotificationVisual _ret;
		Debug.OK((cast(Windows.UI.Notifications.INotification)this.asInterface(uuid("108037fe-eb76-4f82-97bc-da07530a2e20"))).get_Visual(&_ret));
		return _ret;
	}
	final void Visual(Windows.UI.Notifications.NotificationVisual value)
	{
		Debug.OK((cast(Windows.UI.Notifications.INotification)this.asInterface(uuid("108037fe-eb76-4f82-97bc-da07530a2e20"))).set_Visual(value));
	}
	static Notification New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(Notification).abi_ActivateInstance(&ret));
		return cast(Notification) ret;
	}
}

interface NotificationBinding : Windows.UI.Notifications.INotificationBinding
{
extern(Windows):
	final wstring Template()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.INotificationBinding)this.asInterface(uuid("f29e4b85-0370-4ad3-b4ea-da9e35e7eabf"))).get_Template(&_ret));
		return hstring(_ret).d_str;
	}
	final void Template(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.INotificationBinding)this.asInterface(uuid("f29e4b85-0370-4ad3-b4ea-da9e35e7eabf"))).set_Template(hstring(value).handle));
	}
	final wstring Language()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.INotificationBinding)this.asInterface(uuid("f29e4b85-0370-4ad3-b4ea-da9e35e7eabf"))).get_Language(&_ret));
		return hstring(_ret).d_str;
	}
	final void Language(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.INotificationBinding)this.asInterface(uuid("f29e4b85-0370-4ad3-b4ea-da9e35e7eabf"))).set_Language(hstring(value).handle));
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) Hints()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK((cast(Windows.UI.Notifications.INotificationBinding)this.asInterface(uuid("f29e4b85-0370-4ad3-b4ea-da9e35e7eabf"))).get_Hints(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.AdaptiveNotificationText) GetTextElements()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.AdaptiveNotificationText) _ret;
		Debug.OK((cast(Windows.UI.Notifications.INotificationBinding)this.asInterface(uuid("f29e4b85-0370-4ad3-b4ea-da9e35e7eabf"))).abi_GetTextElements(&_ret));
		return _ret;
	}
}

interface NotificationData : Windows.UI.Notifications.INotificationData
{
extern(Windows):
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) Values()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK((cast(Windows.UI.Notifications.INotificationData)this.asInterface(uuid("9ffd2312-9d6a-4aaf-b6ac-ff17f0c1f280"))).get_Values(&_ret));
		return _ret;
	}
	final UINT32 SequenceNumber()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.Notifications.INotificationData)this.asInterface(uuid("9ffd2312-9d6a-4aaf-b6ac-ff17f0c1f280"))).get_SequenceNumber(&_ret));
		return _ret;
	}
	final void SequenceNumber(UINT32 value)
	{
		Debug.OK((cast(Windows.UI.Notifications.INotificationData)this.asInterface(uuid("9ffd2312-9d6a-4aaf-b6ac-ff17f0c1f280"))).set_SequenceNumber(value));
	}
	static NotificationData New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(NotificationData).abi_ActivateInstance(&ret));
		return cast(NotificationData) ret;
	}
	static Windows.UI.Notifications.NotificationData New(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) initialValues, UINT32 sequenceNumber)
	{
		auto factory = factory!(Windows.UI.Notifications.INotificationDataFactory);
		Windows.UI.Notifications.NotificationData _ret;
		Debug.OK((cast(Windows.UI.Notifications.INotificationDataFactory)factory.asInterface(uuid("23c1e33a-1c10-46fb-8040-dec384621cf8"))).abi_CreateNotificationDataWithValuesAndSequenceNumber(initialValues, sequenceNumber, &_ret));
		return _ret;
	}
	alias CreateNotificationData = New;
	static Windows.UI.Notifications.NotificationData New(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) initialValues)
	{
		auto factory = factory!(Windows.UI.Notifications.INotificationDataFactory);
		Windows.UI.Notifications.NotificationData _ret;
		Debug.OK((cast(Windows.UI.Notifications.INotificationDataFactory)factory.asInterface(uuid("23c1e33a-1c10-46fb-8040-dec384621cf8"))).abi_CreateNotificationDataWithValues(initialValues, &_ret));
		return _ret;
	}
	alias CreateNotificationData = New;
}

interface NotificationVisual : Windows.UI.Notifications.INotificationVisual
{
extern(Windows):
	final wstring Language()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.INotificationVisual)this.asInterface(uuid("68835b8e-aa56-4e11-86d3-5f9a6957bc5b"))).get_Language(&_ret));
		return hstring(_ret).d_str;
	}
	final void Language(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.INotificationVisual)this.asInterface(uuid("68835b8e-aa56-4e11-86d3-5f9a6957bc5b"))).set_Language(hstring(value).handle));
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Notifications.NotificationBinding) Bindings()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Notifications.NotificationBinding) _ret;
		Debug.OK((cast(Windows.UI.Notifications.INotificationVisual)this.asInterface(uuid("68835b8e-aa56-4e11-86d3-5f9a6957bc5b"))).get_Bindings(&_ret));
		return _ret;
	}
	final Windows.UI.Notifications.NotificationBinding GetBinding(wstring templateName)
	{
		Windows.UI.Notifications.NotificationBinding _ret;
		Debug.OK((cast(Windows.UI.Notifications.INotificationVisual)this.asInterface(uuid("68835b8e-aa56-4e11-86d3-5f9a6957bc5b"))).abi_GetBinding(hstring(templateName).handle, &_ret));
		return _ret;
	}
}

interface ScheduledTileNotification : Windows.UI.Notifications.IScheduledTileNotification
{
extern(Windows):
	final Windows.Data.Xml.Dom.XmlDocument Content()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledTileNotification)this.asInterface(uuid("0abca6d5-99dc-4c78-a11c-c9e7f86d7ef7"))).get_Content(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime DeliveryTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledTileNotification)this.asInterface(uuid("0abca6d5-99dc-4c78-a11c-c9e7f86d7ef7"))).get_DeliveryTime(&_ret));
		return _ret;
	}
	final void ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IScheduledTileNotification)this.asInterface(uuid("0abca6d5-99dc-4c78-a11c-c9e7f86d7ef7"))).set_ExpirationTime(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ExpirationTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledTileNotification)this.asInterface(uuid("0abca6d5-99dc-4c78-a11c-c9e7f86d7ef7"))).get_ExpirationTime(&_ret));
		return _ret;
	}
	final void Tag(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IScheduledTileNotification)this.asInterface(uuid("0abca6d5-99dc-4c78-a11c-c9e7f86d7ef7"))).set_Tag(hstring(value).handle));
	}
	final wstring Tag()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledTileNotification)this.asInterface(uuid("0abca6d5-99dc-4c78-a11c-c9e7f86d7ef7"))).get_Tag(&_ret));
		return hstring(_ret).d_str;
	}
	final void Id(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IScheduledTileNotification)this.asInterface(uuid("0abca6d5-99dc-4c78-a11c-c9e7f86d7ef7"))).set_Id(hstring(value).handle));
	}
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledTileNotification)this.asInterface(uuid("0abca6d5-99dc-4c78-a11c-c9e7f86d7ef7"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	static Windows.UI.Notifications.ScheduledTileNotification New(Windows.Data.Xml.Dom.XmlDocument content, Windows.Foundation.DateTime deliveryTime)
	{
		auto factory = factory!(Windows.UI.Notifications.IScheduledTileNotificationFactory);
		Windows.UI.Notifications.ScheduledTileNotification _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledTileNotificationFactory)factory.asInterface(uuid("3383138a-98c0-4c3b-bbd6-4a633c7cfc29"))).abi_CreateScheduledTileNotification(content, deliveryTime, &_ret));
		return _ret;
	}
}

interface ScheduledToastNotification : Windows.UI.Notifications.IScheduledToastNotification, Windows.UI.Notifications.IScheduledToastNotification2, Windows.UI.Notifications.IScheduledToastNotification3
{
extern(Windows):
	final Windows.Data.Xml.Dom.XmlDocument Content()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotification)this.asInterface(uuid("79f577f8-0de7-48cd-9740-9b370490c838"))).get_Content(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime DeliveryTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotification)this.asInterface(uuid("79f577f8-0de7-48cd-9740-9b370490c838"))).get_DeliveryTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) SnoozeInterval()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotification)this.asInterface(uuid("79f577f8-0de7-48cd-9740-9b370490c838"))).get_SnoozeInterval(&_ret));
		return _ret;
	}
	final UINT32 MaximumSnoozeCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotification)this.asInterface(uuid("79f577f8-0de7-48cd-9740-9b370490c838"))).get_MaximumSnoozeCount(&_ret));
		return _ret;
	}
	final void Id(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotification)this.asInterface(uuid("79f577f8-0de7-48cd-9740-9b370490c838"))).set_Id(hstring(value).handle));
	}
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotification)this.asInterface(uuid("79f577f8-0de7-48cd-9740-9b370490c838"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final void Tag(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotification2)this.asInterface(uuid("a66ea09c-31b4-43b0-b5dd-7a40e85363b1"))).set_Tag(hstring(value).handle));
	}
	final wstring Tag()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotification2)this.asInterface(uuid("a66ea09c-31b4-43b0-b5dd-7a40e85363b1"))).get_Tag(&_ret));
		return hstring(_ret).d_str;
	}
	final void Group(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotification2)this.asInterface(uuid("a66ea09c-31b4-43b0-b5dd-7a40e85363b1"))).set_Group(hstring(value).handle));
	}
	final wstring Group()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotification2)this.asInterface(uuid("a66ea09c-31b4-43b0-b5dd-7a40e85363b1"))).get_Group(&_ret));
		return hstring(_ret).d_str;
	}
	final void SuppressPopup(bool value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotification2)this.asInterface(uuid("a66ea09c-31b4-43b0-b5dd-7a40e85363b1"))).set_SuppressPopup(value));
	}
	final bool SuppressPopup()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotification2)this.asInterface(uuid("a66ea09c-31b4-43b0-b5dd-7a40e85363b1"))).get_SuppressPopup(&_ret));
		return _ret;
	}
	final Windows.UI.Notifications.NotificationMirroring NotificationMirroring()
	{
		Windows.UI.Notifications.NotificationMirroring _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotification3)this.asInterface(uuid("98429e8b-bd32-4a3b-9d15-22aea49462a1"))).get_NotificationMirroring(&_ret));
		return _ret;
	}
	final void NotificationMirroring(Windows.UI.Notifications.NotificationMirroring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotification3)this.asInterface(uuid("98429e8b-bd32-4a3b-9d15-22aea49462a1"))).set_NotificationMirroring(value));
	}
	final wstring RemoteId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotification3)this.asInterface(uuid("98429e8b-bd32-4a3b-9d15-22aea49462a1"))).get_RemoteId(&_ret));
		return hstring(_ret).d_str;
	}
	final void RemoteId(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotification3)this.asInterface(uuid("98429e8b-bd32-4a3b-9d15-22aea49462a1"))).set_RemoteId(hstring(value).handle));
	}
	static Windows.UI.Notifications.ScheduledToastNotification New(Windows.Data.Xml.Dom.XmlDocument content, Windows.Foundation.DateTime deliveryTime)
	{
		auto factory = factory!(Windows.UI.Notifications.IScheduledToastNotificationFactory);
		Windows.UI.Notifications.ScheduledToastNotification _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotificationFactory)factory.asInterface(uuid("e7bed191-0bb9-4189-8394-31761b476fd7"))).abi_CreateScheduledToastNotification(content, deliveryTime, &_ret));
		return _ret;
	}
	static Windows.UI.Notifications.ScheduledToastNotification New(Windows.Data.Xml.Dom.XmlDocument content, Windows.Foundation.DateTime deliveryTime, Windows.Foundation.TimeSpan snoozeInterval, UINT32 maximumSnoozeCount)
	{
		auto factory = factory!(Windows.UI.Notifications.IScheduledToastNotificationFactory);
		Windows.UI.Notifications.ScheduledToastNotification _ret;
		Debug.OK((cast(Windows.UI.Notifications.IScheduledToastNotificationFactory)factory.asInterface(uuid("e7bed191-0bb9-4189-8394-31761b476fd7"))).abi_CreateScheduledToastNotificationRecurring(content, deliveryTime, snoozeInterval, maximumSnoozeCount, &_ret));
		return _ret;
	}
}

interface ShownTileNotification : Windows.UI.Notifications.IShownTileNotification
{
extern(Windows):
	final wstring Arguments()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IShownTileNotification)this.asInterface(uuid("342d8988-5af2-481a-a6a3-f2fdc78de88e"))).get_Arguments(&_ret));
		return hstring(_ret).d_str;
	}
}

interface TileFlyoutNotification : Windows.UI.Notifications.ITileFlyoutNotification
{
extern(Windows):
	final Windows.Data.Xml.Dom.XmlDocument Content()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.UI.Notifications.ITileFlyoutNotification)this.asInterface(uuid("9a53b261-c70c-42be-b2f3-f42aa97d34e5"))).get_Content(&_ret));
		return _ret;
	}
	final void ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileFlyoutNotification)this.asInterface(uuid("9a53b261-c70c-42be-b2f3-f42aa97d34e5"))).set_ExpirationTime(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ExpirationTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.UI.Notifications.ITileFlyoutNotification)this.asInterface(uuid("9a53b261-c70c-42be-b2f3-f42aa97d34e5"))).get_ExpirationTime(&_ret));
		return _ret;
	}
	static Windows.UI.Notifications.TileFlyoutNotification New(Windows.Data.Xml.Dom.XmlDocument content)
	{
		auto factory = factory!(Windows.UI.Notifications.ITileFlyoutNotificationFactory);
		Windows.UI.Notifications.TileFlyoutNotification _ret;
		Debug.OK((cast(Windows.UI.Notifications.ITileFlyoutNotificationFactory)factory.asInterface(uuid("ef556ff5-5226-4f2b-b278-88a35dfe569f"))).abi_CreateTileFlyoutNotification(content, &_ret));
		return _ret;
	}
}

interface TileFlyoutUpdateManager
{
	private static Windows.UI.Notifications.ITileFlyoutUpdateManagerStatics _staticInstance;
	public static Windows.UI.Notifications.ITileFlyoutUpdateManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Notifications.ITileFlyoutUpdateManagerStatics);
		return _staticInstance;
	}
	static Windows.UI.Notifications.TileFlyoutUpdater CreateTileFlyoutUpdaterForApplication()
	{
		Windows.UI.Notifications.TileFlyoutUpdater _ret;
		Debug.OK(staticInstance.abi_CreateTileFlyoutUpdaterForApplication(&_ret));
		return _ret;
	}
	static Windows.UI.Notifications.TileFlyoutUpdater CreateTileFlyoutUpdaterForApplicationWithId(wstring applicationId)
	{
		Windows.UI.Notifications.TileFlyoutUpdater _ret;
		Debug.OK(staticInstance.abi_CreateTileFlyoutUpdaterForApplicationWithId(hstring(applicationId).handle, &_ret));
		return _ret;
	}
	alias CreateTileFlyoutUpdaterForApplication = CreateTileFlyoutUpdaterForApplicationWithId;
	static Windows.UI.Notifications.TileFlyoutUpdater CreateTileFlyoutUpdaterForSecondaryTile(wstring tileId)
	{
		Windows.UI.Notifications.TileFlyoutUpdater _ret;
		Debug.OK(staticInstance.abi_CreateTileFlyoutUpdaterForSecondaryTile(hstring(tileId).handle, &_ret));
		return _ret;
	}
	static Windows.Data.Xml.Dom.XmlDocument GetTemplateContent(Windows.UI.Notifications.TileFlyoutTemplateType type)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK(staticInstance.abi_GetTemplateContent(type, &_ret));
		return _ret;
	}
}

interface TileFlyoutUpdater : Windows.UI.Notifications.ITileFlyoutUpdater
{
extern(Windows):
	final void Update(Windows.UI.Notifications.TileFlyoutNotification notification)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileFlyoutUpdater)this.asInterface(uuid("8d40c76a-c465-4052-a740-5c2654c1a089"))).abi_Update(notification));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileFlyoutUpdater)this.asInterface(uuid("8d40c76a-c465-4052-a740-5c2654c1a089"))).abi_Clear());
	}
	final void StartPeriodicUpdate(Windows.Foundation.Uri tileFlyoutContent, Windows.UI.Notifications.PeriodicUpdateRecurrence requestedInterval)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileFlyoutUpdater)this.asInterface(uuid("8d40c76a-c465-4052-a740-5c2654c1a089"))).abi_StartPeriodicUpdate(tileFlyoutContent, requestedInterval));
	}
	final void StartPeriodicUpdateAtTime(Windows.Foundation.Uri tileFlyoutContent, Windows.Foundation.DateTime startTime, Windows.UI.Notifications.PeriodicUpdateRecurrence requestedInterval)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileFlyoutUpdater)this.asInterface(uuid("8d40c76a-c465-4052-a740-5c2654c1a089"))).abi_StartPeriodicUpdateAtTime(tileFlyoutContent, startTime, requestedInterval));
	}
	alias StartPeriodicUpdate = StartPeriodicUpdateAtTime;
	final void StopPeriodicUpdate()
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileFlyoutUpdater)this.asInterface(uuid("8d40c76a-c465-4052-a740-5c2654c1a089"))).abi_StopPeriodicUpdate());
	}
	final Windows.UI.Notifications.NotificationSetting Setting()
	{
		Windows.UI.Notifications.NotificationSetting _ret;
		Debug.OK((cast(Windows.UI.Notifications.ITileFlyoutUpdater)this.asInterface(uuid("8d40c76a-c465-4052-a740-5c2654c1a089"))).get_Setting(&_ret));
		return _ret;
	}
}

interface TileNotification : Windows.UI.Notifications.ITileNotification
{
extern(Windows):
	final Windows.Data.Xml.Dom.XmlDocument Content()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.UI.Notifications.ITileNotification)this.asInterface(uuid("ebaec8fa-50ec-4c18-b4d0-3af02e5540ab"))).get_Content(&_ret));
		return _ret;
	}
	final void ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileNotification)this.asInterface(uuid("ebaec8fa-50ec-4c18-b4d0-3af02e5540ab"))).set_ExpirationTime(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ExpirationTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.UI.Notifications.ITileNotification)this.asInterface(uuid("ebaec8fa-50ec-4c18-b4d0-3af02e5540ab"))).get_ExpirationTime(&_ret));
		return _ret;
	}
	final void Tag(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileNotification)this.asInterface(uuid("ebaec8fa-50ec-4c18-b4d0-3af02e5540ab"))).set_Tag(hstring(value).handle));
	}
	final wstring Tag()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.ITileNotification)this.asInterface(uuid("ebaec8fa-50ec-4c18-b4d0-3af02e5540ab"))).get_Tag(&_ret));
		return hstring(_ret).d_str;
	}
	static Windows.UI.Notifications.TileNotification New(Windows.Data.Xml.Dom.XmlDocument content)
	{
		auto factory = factory!(Windows.UI.Notifications.ITileNotificationFactory);
		Windows.UI.Notifications.TileNotification _ret;
		Debug.OK((cast(Windows.UI.Notifications.ITileNotificationFactory)factory.asInterface(uuid("c6abdd6e-4928-46c8-bdbf-81a047dea0d4"))).abi_CreateTileNotification(content, &_ret));
		return _ret;
	}
}

interface TileUpdateManager
{
	private static Windows.UI.Notifications.ITileUpdateManagerStatics _staticInstance;
	public static Windows.UI.Notifications.ITileUpdateManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Notifications.ITileUpdateManagerStatics);
		return _staticInstance;
	}
	static Windows.UI.Notifications.TileUpdater CreateTileUpdaterForApplication()
	{
		Windows.UI.Notifications.TileUpdater _ret;
		Debug.OK(staticInstance.abi_CreateTileUpdaterForApplication(&_ret));
		return _ret;
	}
	static Windows.UI.Notifications.TileUpdater CreateTileUpdaterForApplicationWithId(wstring applicationId)
	{
		Windows.UI.Notifications.TileUpdater _ret;
		Debug.OK(staticInstance.abi_CreateTileUpdaterForApplicationWithId(hstring(applicationId).handle, &_ret));
		return _ret;
	}
	alias CreateTileUpdaterForApplication = CreateTileUpdaterForApplicationWithId;
	static Windows.UI.Notifications.TileUpdater CreateTileUpdaterForSecondaryTile(wstring tileId)
	{
		Windows.UI.Notifications.TileUpdater _ret;
		Debug.OK(staticInstance.abi_CreateTileUpdaterForSecondaryTile(hstring(tileId).handle, &_ret));
		return _ret;
	}
	static Windows.Data.Xml.Dom.XmlDocument GetTemplateContent(Windows.UI.Notifications.TileTemplateType type)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK(staticInstance.abi_GetTemplateContent(type, &_ret));
		return _ret;
	}
}

interface TileUpdateManagerForUser : Windows.UI.Notifications.ITileUpdateManagerForUser
{
extern(Windows):
	final Windows.UI.Notifications.TileUpdater CreateTileUpdaterForApplication()
	{
		Windows.UI.Notifications.TileUpdater _ret;
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdateManagerForUser)this.asInterface(uuid("55141348-2ee2-4e2d-9cc1-216a20decc9f"))).abi_CreateTileUpdaterForApplication(&_ret));
		return _ret;
	}
	alias CreateTileUpdaterForApplicationForUser = CreateTileUpdaterForApplication;
	final Windows.UI.Notifications.TileUpdater CreateTileUpdaterForApplicationWithId(wstring applicationId)
	{
		Windows.UI.Notifications.TileUpdater _ret;
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdateManagerForUser)this.asInterface(uuid("55141348-2ee2-4e2d-9cc1-216a20decc9f"))).abi_CreateTileUpdaterForApplicationWithId(hstring(applicationId).handle, &_ret));
		return _ret;
	}
	alias CreateTileUpdaterForApplication = CreateTileUpdaterForApplicationWithId;
	final Windows.UI.Notifications.TileUpdater CreateTileUpdaterForSecondaryTile(wstring tileId)
	{
		Windows.UI.Notifications.TileUpdater _ret;
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdateManagerForUser)this.asInterface(uuid("55141348-2ee2-4e2d-9cc1-216a20decc9f"))).abi_CreateTileUpdaterForSecondaryTile(hstring(tileId).handle, &_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdateManagerForUser)this.asInterface(uuid("55141348-2ee2-4e2d-9cc1-216a20decc9f"))).get_User(&_ret));
		return _ret;
	}
}

interface TileUpdater : Windows.UI.Notifications.ITileUpdater, Windows.UI.Notifications.ITileUpdater2
{
extern(Windows):
	final void Update(Windows.UI.Notifications.TileNotification notification)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdater)this.asInterface(uuid("0942a48b-1d91-44ec-9243-c1e821c29a20"))).abi_Update(notification));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdater)this.asInterface(uuid("0942a48b-1d91-44ec-9243-c1e821c29a20"))).abi_Clear());
	}
	final void EnableNotificationQueue(bool enable)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdater)this.asInterface(uuid("0942a48b-1d91-44ec-9243-c1e821c29a20"))).abi_EnableNotificationQueue(enable));
	}
	final Windows.UI.Notifications.NotificationSetting Setting()
	{
		Windows.UI.Notifications.NotificationSetting _ret;
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdater)this.asInterface(uuid("0942a48b-1d91-44ec-9243-c1e821c29a20"))).get_Setting(&_ret));
		return _ret;
	}
	final void AddToSchedule(Windows.UI.Notifications.ScheduledTileNotification scheduledTile)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdater)this.asInterface(uuid("0942a48b-1d91-44ec-9243-c1e821c29a20"))).abi_AddToSchedule(scheduledTile));
	}
	final void RemoveFromSchedule(Windows.UI.Notifications.ScheduledTileNotification scheduledTile)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdater)this.asInterface(uuid("0942a48b-1d91-44ec-9243-c1e821c29a20"))).abi_RemoveFromSchedule(scheduledTile));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.ScheduledTileNotification) GetScheduledTileNotifications()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.ScheduledTileNotification) _ret;
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdater)this.asInterface(uuid("0942a48b-1d91-44ec-9243-c1e821c29a20"))).abi_GetScheduledTileNotifications(&_ret));
		return _ret;
	}
	final void StartPeriodicUpdate(Windows.Foundation.Uri tileContent, Windows.UI.Notifications.PeriodicUpdateRecurrence requestedInterval)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdater)this.asInterface(uuid("0942a48b-1d91-44ec-9243-c1e821c29a20"))).abi_StartPeriodicUpdate(tileContent, requestedInterval));
	}
	final void StartPeriodicUpdateAtTime(Windows.Foundation.Uri tileContent, Windows.Foundation.DateTime startTime, Windows.UI.Notifications.PeriodicUpdateRecurrence requestedInterval)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdater)this.asInterface(uuid("0942a48b-1d91-44ec-9243-c1e821c29a20"))).abi_StartPeriodicUpdateAtTime(tileContent, startTime, requestedInterval));
	}
	alias StartPeriodicUpdate = StartPeriodicUpdateAtTime;
	final void StopPeriodicUpdate()
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdater)this.asInterface(uuid("0942a48b-1d91-44ec-9243-c1e821c29a20"))).abi_StopPeriodicUpdate());
	}
	final void StartPeriodicUpdateBatch(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) tileContents, Windows.UI.Notifications.PeriodicUpdateRecurrence requestedInterval)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdater)this.asInterface(uuid("0942a48b-1d91-44ec-9243-c1e821c29a20"))).abi_StartPeriodicUpdateBatch(tileContents, requestedInterval));
	}
	final void StartPeriodicUpdateBatchAtTime(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) tileContents, Windows.Foundation.DateTime startTime, Windows.UI.Notifications.PeriodicUpdateRecurrence requestedInterval)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdater)this.asInterface(uuid("0942a48b-1d91-44ec-9243-c1e821c29a20"))).abi_StartPeriodicUpdateBatchAtTime(tileContents, startTime, requestedInterval));
	}
	alias StartPeriodicUpdateBatch = StartPeriodicUpdateBatchAtTime;
	final void EnableNotificationQueueForSquare150x150(bool enable)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdater2)this.asInterface(uuid("a2266e12-15ee-43ed-83f5-65b352bb1a84"))).abi_EnableNotificationQueueForSquare150x150(enable));
	}
	final void EnableNotificationQueueForWide310x150(bool enable)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdater2)this.asInterface(uuid("a2266e12-15ee-43ed-83f5-65b352bb1a84"))).abi_EnableNotificationQueueForWide310x150(enable));
	}
	final void EnableNotificationQueueForSquare310x310(bool enable)
	{
		Debug.OK((cast(Windows.UI.Notifications.ITileUpdater2)this.asInterface(uuid("a2266e12-15ee-43ed-83f5-65b352bb1a84"))).abi_EnableNotificationQueueForSquare310x310(enable));
	}
}

interface ToastActivatedEventArgs : Windows.UI.Notifications.IToastActivatedEventArgs
{
extern(Windows):
	final wstring Arguments()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastActivatedEventArgs)this.asInterface(uuid("e3bf92f3-c197-436f-8265-0625824f8dac"))).get_Arguments(&_ret));
		return hstring(_ret).d_str;
	}
}

interface ToastCollection : Windows.UI.Notifications.IToastCollection
{
extern(Windows):
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastCollection)this.asInterface(uuid("0a8bc3b0-e0be-4858-bc2a-89dfe0b32863"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastCollection)this.asInterface(uuid("0a8bc3b0-e0be-4858-bc2a-89dfe0b32863"))).get_DisplayName(&_ret));
		return hstring(_ret).d_str;
	}
	final void DisplayName(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastCollection)this.asInterface(uuid("0a8bc3b0-e0be-4858-bc2a-89dfe0b32863"))).set_DisplayName(hstring(value).handle));
	}
	final wstring LaunchArgs()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastCollection)this.asInterface(uuid("0a8bc3b0-e0be-4858-bc2a-89dfe0b32863"))).get_LaunchArgs(&_ret));
		return hstring(_ret).d_str;
	}
	final void LaunchArgs(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastCollection)this.asInterface(uuid("0a8bc3b0-e0be-4858-bc2a-89dfe0b32863"))).set_LaunchArgs(hstring(value).handle));
	}
	final Windows.Foundation.Uri Icon()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastCollection)this.asInterface(uuid("0a8bc3b0-e0be-4858-bc2a-89dfe0b32863"))).get_Icon(&_ret));
		return _ret;
	}
	final void Icon(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastCollection)this.asInterface(uuid("0a8bc3b0-e0be-4858-bc2a-89dfe0b32863"))).set_Icon(value));
	}
	static Windows.UI.Notifications.ToastCollection New(wstring collectionId, wstring displayName, wstring launchArgs, Windows.Foundation.Uri iconUri)
	{
		auto factory = factory!(Windows.UI.Notifications.IToastCollectionFactory);
		Windows.UI.Notifications.ToastCollection _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastCollectionFactory)factory.asInterface(uuid("164dd3d7-73c4-44f7-b4ff-fb6d4bf1f4c6"))).abi_CreateInstance(hstring(collectionId).handle, hstring(displayName).handle, hstring(launchArgs).handle, iconUri, &_ret));
		return _ret;
	}
}

interface ToastCollectionManager : Windows.UI.Notifications.IToastCollectionManager
{
extern(Windows):
	final Windows.Foundation.IAsyncAction SaveToastCollectionAsync(Windows.UI.Notifications.ToastCollection collection)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastCollectionManager)this.asInterface(uuid("2a1821fe-179d-49bc-b79d-a527920d3665"))).abi_SaveToastCollectionAsync(collection, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.ToastCollection)) FindAllToastCollectionsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.ToastCollection)) _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastCollectionManager)this.asInterface(uuid("2a1821fe-179d-49bc-b79d-a527920d3665"))).abi_FindAllToastCollectionsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.UI.Notifications.ToastCollection) GetToastCollectionAsync(wstring collectionId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.UI.Notifications.ToastCollection) _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastCollectionManager)this.asInterface(uuid("2a1821fe-179d-49bc-b79d-a527920d3665"))).abi_GetToastCollectionAsync(hstring(collectionId).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction RemoveToastCollectionAsync(wstring collectionId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastCollectionManager)this.asInterface(uuid("2a1821fe-179d-49bc-b79d-a527920d3665"))).abi_RemoveToastCollectionAsync(hstring(collectionId).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction RemoveAllToastCollectionsAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastCollectionManager)this.asInterface(uuid("2a1821fe-179d-49bc-b79d-a527920d3665"))).abi_RemoveAllToastCollectionsAsync(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastCollectionManager)this.asInterface(uuid("2a1821fe-179d-49bc-b79d-a527920d3665"))).get_User(&_ret));
		return _ret;
	}
	final wstring AppId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastCollectionManager)this.asInterface(uuid("2a1821fe-179d-49bc-b79d-a527920d3665"))).get_AppId(&_ret));
		return hstring(_ret).d_str;
	}
}

interface ToastDismissedEventArgs : Windows.UI.Notifications.IToastDismissedEventArgs
{
extern(Windows):
	final Windows.UI.Notifications.ToastDismissalReason Reason()
	{
		Windows.UI.Notifications.ToastDismissalReason _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastDismissedEventArgs)this.asInterface(uuid("3f89d935-d9cb-4538-a0f0-ffe7659938f8"))).get_Reason(&_ret));
		return _ret;
	}
}

interface ToastFailedEventArgs : Windows.UI.Notifications.IToastFailedEventArgs
{
extern(Windows):
	final HRESULT ErrorCode()
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastFailedEventArgs)this.asInterface(uuid("35176862-cfd4-44f8-ad64-f500fd896c3b"))).get_ErrorCode(&_ret));
		return _ret;
	}
}

interface ToastNotification : Windows.UI.Notifications.IToastNotification, Windows.UI.Notifications.IToastNotification2, Windows.UI.Notifications.IToastNotification3, Windows.UI.Notifications.IToastNotification4
{
extern(Windows):
	final Windows.Data.Xml.Dom.XmlDocument Content()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification)this.asInterface(uuid("997e2675-059e-4e60-8b06-1760917c8b80"))).get_Content(&_ret));
		return _ret;
	}
	final void ExpirationTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification)this.asInterface(uuid("997e2675-059e-4e60-8b06-1760917c8b80"))).set_ExpirationTime(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ExpirationTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification)this.asInterface(uuid("997e2675-059e-4e60-8b06-1760917c8b80"))).get_ExpirationTime(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnDismissed(void delegate(Windows.UI.Notifications.ToastNotification, Windows.UI.Notifications.ToastDismissedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification)this.asInterface(uuid("997e2675-059e-4e60-8b06-1760917c8b80"))).add_Dismissed(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Notifications.ToastNotification, Windows.UI.Notifications.ToastDismissedEventArgs), Windows.UI.Notifications.ToastNotification, Windows.UI.Notifications.ToastDismissedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDismissed(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification)this.asInterface(uuid("997e2675-059e-4e60-8b06-1760917c8b80"))).remove_Dismissed(cookie));
	}
	final EventRegistrationToken OnActivated(void delegate(Windows.UI.Notifications.ToastNotification, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification)this.asInterface(uuid("997e2675-059e-4e60-8b06-1760917c8b80"))).add_Activated(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Notifications.ToastNotification, IInspectable), Windows.UI.Notifications.ToastNotification, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeActivated(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification)this.asInterface(uuid("997e2675-059e-4e60-8b06-1760917c8b80"))).remove_Activated(cookie));
	}
	final EventRegistrationToken OnFailed(void delegate(Windows.UI.Notifications.ToastNotification, Windows.UI.Notifications.ToastFailedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification)this.asInterface(uuid("997e2675-059e-4e60-8b06-1760917c8b80"))).add_Failed(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Notifications.ToastNotification, Windows.UI.Notifications.ToastFailedEventArgs), Windows.UI.Notifications.ToastNotification, Windows.UI.Notifications.ToastFailedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeFailed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification)this.asInterface(uuid("997e2675-059e-4e60-8b06-1760917c8b80"))).remove_Failed(token));
	}
	final void Tag(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification2)this.asInterface(uuid("9dfb9fd1-143a-490e-90bf-b9fba7132de7"))).set_Tag(hstring(value).handle));
	}
	final wstring Tag()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification2)this.asInterface(uuid("9dfb9fd1-143a-490e-90bf-b9fba7132de7"))).get_Tag(&_ret));
		return hstring(_ret).d_str;
	}
	final void Group(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification2)this.asInterface(uuid("9dfb9fd1-143a-490e-90bf-b9fba7132de7"))).set_Group(hstring(value).handle));
	}
	final wstring Group()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification2)this.asInterface(uuid("9dfb9fd1-143a-490e-90bf-b9fba7132de7"))).get_Group(&_ret));
		return hstring(_ret).d_str;
	}
	final void SuppressPopup(bool value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification2)this.asInterface(uuid("9dfb9fd1-143a-490e-90bf-b9fba7132de7"))).set_SuppressPopup(value));
	}
	final bool SuppressPopup()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification2)this.asInterface(uuid("9dfb9fd1-143a-490e-90bf-b9fba7132de7"))).get_SuppressPopup(&_ret));
		return _ret;
	}
	final Windows.UI.Notifications.NotificationMirroring NotificationMirroring()
	{
		Windows.UI.Notifications.NotificationMirroring _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification3)this.asInterface(uuid("31e8aed8-8141-4f99-bc0a-c4ed21297d77"))).get_NotificationMirroring(&_ret));
		return _ret;
	}
	final void NotificationMirroring(Windows.UI.Notifications.NotificationMirroring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification3)this.asInterface(uuid("31e8aed8-8141-4f99-bc0a-c4ed21297d77"))).set_NotificationMirroring(value));
	}
	final wstring RemoteId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification3)this.asInterface(uuid("31e8aed8-8141-4f99-bc0a-c4ed21297d77"))).get_RemoteId(&_ret));
		return hstring(_ret).d_str;
	}
	final void RemoteId(wstring value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification3)this.asInterface(uuid("31e8aed8-8141-4f99-bc0a-c4ed21297d77"))).set_RemoteId(hstring(value).handle));
	}
	final Windows.UI.Notifications.NotificationData Data()
	{
		Windows.UI.Notifications.NotificationData _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification4)this.asInterface(uuid("15154935-28ea-4727-88e9-c58680e2d118"))).get_Data(&_ret));
		return _ret;
	}
	final void Data(Windows.UI.Notifications.NotificationData value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification4)this.asInterface(uuid("15154935-28ea-4727-88e9-c58680e2d118"))).set_Data(value));
	}
	final Windows.UI.Notifications.ToastNotificationPriority Priority()
	{
		Windows.UI.Notifications.ToastNotificationPriority _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification4)this.asInterface(uuid("15154935-28ea-4727-88e9-c58680e2d118"))).get_Priority(&_ret));
		return _ret;
	}
	final void Priority(Windows.UI.Notifications.ToastNotificationPriority value)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotification4)this.asInterface(uuid("15154935-28ea-4727-88e9-c58680e2d118"))).set_Priority(value));
	}
	static Windows.UI.Notifications.ToastNotification New(Windows.Data.Xml.Dom.XmlDocument content)
	{
		auto factory = factory!(Windows.UI.Notifications.IToastNotificationFactory);
		Windows.UI.Notifications.ToastNotification _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationFactory)factory.asInterface(uuid("04124b20-82c6-4229-b109-fd9ed4662b53"))).abi_CreateToastNotification(content, &_ret));
		return _ret;
	}
}

interface ToastNotificationActionTriggerDetail : Windows.UI.Notifications.IToastNotificationActionTriggerDetail
{
extern(Windows):
	final wstring Argument()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationActionTriggerDetail)this.asInterface(uuid("9445135a-38f3-42f6-96aa-7955b0f03da2"))).get_Argument(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.Collections.ValueSet UserInput()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationActionTriggerDetail)this.asInterface(uuid("9445135a-38f3-42f6-96aa-7955b0f03da2"))).get_UserInput(&_ret));
		return _ret;
	}
}

interface ToastNotificationHistory : Windows.UI.Notifications.IToastNotificationHistory, Windows.UI.Notifications.IToastNotificationHistory2
{
extern(Windows):
	final void RemoveGroup(wstring group)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationHistory)this.asInterface(uuid("5caddc63-01d3-4c97-986f-0533483fee14"))).abi_RemoveGroup(hstring(group).handle));
	}
	final void RemoveGroupWithId(wstring group, wstring applicationId)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationHistory)this.asInterface(uuid("5caddc63-01d3-4c97-986f-0533483fee14"))).abi_RemoveGroupWithId(hstring(group).handle, hstring(applicationId).handle));
	}
	alias RemoveGroup = RemoveGroupWithId;
	final void RemoveGroupedTagWithId(wstring tag, wstring group, wstring applicationId)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationHistory)this.asInterface(uuid("5caddc63-01d3-4c97-986f-0533483fee14"))).abi_RemoveGroupedTagWithId(hstring(tag).handle, hstring(group).handle, hstring(applicationId).handle));
	}
	alias Remove = RemoveGroupedTagWithId;
	final void RemoveGroupedTag(wstring tag, wstring group)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationHistory)this.asInterface(uuid("5caddc63-01d3-4c97-986f-0533483fee14"))).abi_RemoveGroupedTag(hstring(tag).handle, hstring(group).handle));
	}
	alias Remove = RemoveGroupedTag;
	final void Remove(wstring tag)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationHistory)this.asInterface(uuid("5caddc63-01d3-4c97-986f-0533483fee14"))).abi_Remove(hstring(tag).handle));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationHistory)this.asInterface(uuid("5caddc63-01d3-4c97-986f-0533483fee14"))).abi_Clear());
	}
	final void ClearWithId(wstring applicationId)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationHistory)this.asInterface(uuid("5caddc63-01d3-4c97-986f-0533483fee14"))).abi_ClearWithId(hstring(applicationId).handle));
	}
	alias Clear = ClearWithId;
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.ToastNotification) GetHistory()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.ToastNotification) _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationHistory2)this.asInterface(uuid("3bc3d253-2f31-4092-9129-8ad5abf067da"))).abi_GetHistory(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.ToastNotification) GetHistoryWithId(wstring applicationId)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.ToastNotification) _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationHistory2)this.asInterface(uuid("3bc3d253-2f31-4092-9129-8ad5abf067da"))).abi_GetHistoryWithId(hstring(applicationId).handle, &_ret));
		return _ret;
	}
	alias GetHistory = GetHistoryWithId;
}

interface ToastNotificationHistoryChangedTriggerDetail : Windows.UI.Notifications.IToastNotificationHistoryChangedTriggerDetail, Windows.UI.Notifications.IToastNotificationHistoryChangedTriggerDetail2
{
extern(Windows):
	final Windows.UI.Notifications.ToastHistoryChangedType ChangeType()
	{
		Windows.UI.Notifications.ToastHistoryChangedType _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationHistoryChangedTriggerDetail)this.asInterface(uuid("db037ffa-0068-412c-9c83-267c37f65670"))).get_ChangeType(&_ret));
		return _ret;
	}
	final wstring CollectionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationHistoryChangedTriggerDetail2)this.asInterface(uuid("0b36e982-c871-49fb-babb-25bdbc4cc45b"))).get_CollectionId(&_ret));
		return hstring(_ret).d_str;
	}
}

interface ToastNotificationManager
{
	private static Windows.UI.Notifications.IToastNotificationManagerStatics _staticInstance;
	public static Windows.UI.Notifications.IToastNotificationManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Notifications.IToastNotificationManagerStatics);
		return _staticInstance;
	}
	static Windows.UI.Notifications.ToastNotifier CreateToastNotifier()
	{
		Windows.UI.Notifications.ToastNotifier _ret;
		Debug.OK(staticInstance.abi_CreateToastNotifier(&_ret));
		return _ret;
	}
	static Windows.UI.Notifications.ToastNotifier CreateToastNotifierWithId(wstring applicationId)
	{
		Windows.UI.Notifications.ToastNotifier _ret;
		Debug.OK(staticInstance.abi_CreateToastNotifierWithId(hstring(applicationId).handle, &_ret));
		return _ret;
	}
	alias CreateToastNotifier = CreateToastNotifierWithId;
	static Windows.Data.Xml.Dom.XmlDocument GetTemplateContent(Windows.UI.Notifications.ToastTemplateType type)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK(staticInstance.abi_GetTemplateContent(type, &_ret));
		return _ret;
	}
}

interface ToastNotificationManagerForUser : Windows.UI.Notifications.IToastNotificationManagerForUser, Windows.UI.Notifications.IToastNotificationManagerForUser2
{
extern(Windows):
	final Windows.UI.Notifications.ToastNotifier CreateToastNotifier()
	{
		Windows.UI.Notifications.ToastNotifier _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationManagerForUser)this.asInterface(uuid("79ab57f6-43fe-487b-8a7f-99567200ae94"))).abi_CreateToastNotifier(&_ret));
		return _ret;
	}
	final Windows.UI.Notifications.ToastNotifier CreateToastNotifierWithId(wstring applicationId)
	{
		Windows.UI.Notifications.ToastNotifier _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationManagerForUser)this.asInterface(uuid("79ab57f6-43fe-487b-8a7f-99567200ae94"))).abi_CreateToastNotifierWithId(hstring(applicationId).handle, &_ret));
		return _ret;
	}
	alias CreateToastNotifier = CreateToastNotifierWithId;
	final Windows.UI.Notifications.ToastNotificationHistory History()
	{
		Windows.UI.Notifications.ToastNotificationHistory _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationManagerForUser)this.asInterface(uuid("79ab57f6-43fe-487b-8a7f-99567200ae94"))).get_History(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationManagerForUser)this.asInterface(uuid("79ab57f6-43fe-487b-8a7f-99567200ae94"))).get_User(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.UI.Notifications.ToastNotifier) GetToastNotifierForToastCollectionIdAsync(wstring collectionId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.UI.Notifications.ToastNotifier) _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationManagerForUser2)this.asInterface(uuid("679c64b7-81ab-42c2-8819-c958767753f4"))).abi_GetToastNotifierForToastCollectionIdAsync(hstring(collectionId).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.UI.Notifications.ToastNotificationHistory) GetHistoryForToastCollectionIdAsync(wstring collectionId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.UI.Notifications.ToastNotificationHistory) _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationManagerForUser2)this.asInterface(uuid("679c64b7-81ab-42c2-8819-c958767753f4"))).abi_GetHistoryForToastCollectionIdAsync(hstring(collectionId).handle, &_ret));
		return _ret;
	}
	final Windows.UI.Notifications.ToastCollectionManager GetToastCollectionManager()
	{
		Windows.UI.Notifications.ToastCollectionManager _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationManagerForUser2)this.asInterface(uuid("679c64b7-81ab-42c2-8819-c958767753f4"))).abi_GetToastCollectionManager(&_ret));
		return _ret;
	}
	final Windows.UI.Notifications.ToastCollectionManager GetToastCollectionManagerWithAppId(wstring appId)
	{
		Windows.UI.Notifications.ToastCollectionManager _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotificationManagerForUser2)this.asInterface(uuid("679c64b7-81ab-42c2-8819-c958767753f4"))).abi_GetToastCollectionManagerWithAppId(hstring(appId).handle, &_ret));
		return _ret;
	}
	alias GetToastCollectionManager = GetToastCollectionManagerWithAppId;
}

interface ToastNotifier : Windows.UI.Notifications.IToastNotifier, Windows.UI.Notifications.IToastNotifier2
{
extern(Windows):
	final void Show(Windows.UI.Notifications.ToastNotification notification)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotifier)this.asInterface(uuid("75927b93-03f3-41ec-91d3-6e5bac1b38e7"))).abi_Show(notification));
	}
	final void Hide(Windows.UI.Notifications.ToastNotification notification)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotifier)this.asInterface(uuid("75927b93-03f3-41ec-91d3-6e5bac1b38e7"))).abi_Hide(notification));
	}
	final Windows.UI.Notifications.NotificationSetting Setting()
	{
		Windows.UI.Notifications.NotificationSetting _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotifier)this.asInterface(uuid("75927b93-03f3-41ec-91d3-6e5bac1b38e7"))).get_Setting(&_ret));
		return _ret;
	}
	final void AddToSchedule(Windows.UI.Notifications.ScheduledToastNotification scheduledToast)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotifier)this.asInterface(uuid("75927b93-03f3-41ec-91d3-6e5bac1b38e7"))).abi_AddToSchedule(scheduledToast));
	}
	final void RemoveFromSchedule(Windows.UI.Notifications.ScheduledToastNotification scheduledToast)
	{
		Debug.OK((cast(Windows.UI.Notifications.IToastNotifier)this.asInterface(uuid("75927b93-03f3-41ec-91d3-6e5bac1b38e7"))).abi_RemoveFromSchedule(scheduledToast));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.ScheduledToastNotification) GetScheduledToastNotifications()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.ScheduledToastNotification) _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotifier)this.asInterface(uuid("75927b93-03f3-41ec-91d3-6e5bac1b38e7"))).abi_GetScheduledToastNotifications(&_ret));
		return _ret;
	}
	final Windows.UI.Notifications.NotificationUpdateResult UpdateWithTagAndGroup(Windows.UI.Notifications.NotificationData data, wstring tag, wstring group)
	{
		Windows.UI.Notifications.NotificationUpdateResult _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotifier2)this.asInterface(uuid("354389c6-7c01-4bd5-9c20-604340cd2b74"))).abi_UpdateWithTagAndGroup(data, hstring(tag).handle, hstring(group).handle, &_ret));
		return _ret;
	}
	alias Update = UpdateWithTagAndGroup;
	final Windows.UI.Notifications.NotificationUpdateResult UpdateWithTag(Windows.UI.Notifications.NotificationData data, wstring tag)
	{
		Windows.UI.Notifications.NotificationUpdateResult _ret;
		Debug.OK((cast(Windows.UI.Notifications.IToastNotifier2)this.asInterface(uuid("354389c6-7c01-4bd5-9c20-604340cd2b74"))).abi_UpdateWithTag(data, hstring(tag).handle, &_ret));
		return _ret;
	}
	alias Update = UpdateWithTag;
}

interface UserNotification : Windows.UI.Notifications.IUserNotification
{
extern(Windows):
	final Windows.UI.Notifications.Notification Notification()
	{
		Windows.UI.Notifications.Notification _ret;
		Debug.OK((cast(Windows.UI.Notifications.IUserNotification)this.asInterface(uuid("adf7e52f-4e53-42d5-9c33-eb5ea515b23e"))).get_Notification(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.AppInfo AppInfo()
	{
		Windows.ApplicationModel.AppInfo _ret;
		Debug.OK((cast(Windows.UI.Notifications.IUserNotification)this.asInterface(uuid("adf7e52f-4e53-42d5-9c33-eb5ea515b23e"))).get_AppInfo(&_ret));
		return _ret;
	}
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.Notifications.IUserNotification)this.asInterface(uuid("adf7e52f-4e53-42d5-9c33-eb5ea515b23e"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime CreationTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.UI.Notifications.IUserNotification)this.asInterface(uuid("adf7e52f-4e53-42d5-9c33-eb5ea515b23e"))).get_CreationTime(&_ret));
		return _ret;
	}
}

interface UserNotificationChangedEventArgs : Windows.UI.Notifications.IUserNotificationChangedEventArgs
{
extern(Windows):
	final Windows.UI.Notifications.UserNotificationChangedKind ChangeKind()
	{
		Windows.UI.Notifications.UserNotificationChangedKind _ret;
		Debug.OK((cast(Windows.UI.Notifications.IUserNotificationChangedEventArgs)this.asInterface(uuid("b6bd6839-79cf-4b25-82c0-0ce1eef81f8c"))).get_ChangeKind(&_ret));
		return _ret;
	}
	final UINT32 UserNotificationId()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.Notifications.IUserNotificationChangedEventArgs)this.asInterface(uuid("b6bd6839-79cf-4b25-82c0-0ce1eef81f8c"))).get_UserNotificationId(&_ret));
		return _ret;
	}
}

enum AdaptiveNotificationContentKind
{
	Text = 0
}

enum BadgeTemplateType
{
	BadgeGlyph = 0,
	BadgeNumber = 1
}

@bitflags
enum NotificationKinds
{
	Unknown = 0x0,
	Toast = 0x1
}

enum NotificationMirroring
{
	Allowed = 0,
	Disabled = 1
}

enum NotificationSetting
{
	Enabled = 0,
	DisabledForApplication = 1,
	DisabledForUser = 2,
	DisabledByGroupPolicy = 3,
	DisabledByManifest = 4
}

enum NotificationUpdateResult
{
	Succeeded = 0,
	Failed = 1,
	NotificationNotFound = 2
}

enum PeriodicUpdateRecurrence
{
	HalfHour = 0,
	Hour = 1,
	SixHours = 2,
	TwelveHours = 3,
	Daily = 4
}

enum TileFlyoutTemplateType
{
	TileFlyoutTemplate01 = 0
}

enum TileTemplateType
{
	TileSquareImage = 0,
	TileSquareBlock = 1,
	TileSquareText01 = 2,
	TileSquareText02 = 3,
	TileSquareText03 = 4,
	TileSquareText04 = 5,
	TileSquarePeekImageAndText01 = 6,
	TileSquarePeekImageAndText02 = 7,
	TileSquarePeekImageAndText03 = 8,
	TileSquarePeekImageAndText04 = 9,
	TileWideImage = 10,
	TileWideImageCollection = 11,
	TileWideImageAndText01 = 12,
	TileWideImageAndText02 = 13,
	TileWideBlockAndText01 = 14,
	TileWideBlockAndText02 = 15,
	TileWidePeekImageCollection01 = 16,
	TileWidePeekImageCollection02 = 17,
	TileWidePeekImageCollection03 = 18,
	TileWidePeekImageCollection04 = 19,
	TileWidePeekImageCollection05 = 20,
	TileWidePeekImageCollection06 = 21,
	TileWidePeekImageAndText01 = 22,
	TileWidePeekImageAndText02 = 23,
	TileWidePeekImage01 = 24,
	TileWidePeekImage02 = 25,
	TileWidePeekImage03 = 26,
	TileWidePeekImage04 = 27,
	TileWidePeekImage05 = 28,
	TileWidePeekImage06 = 29,
	TileWideSmallImageAndText01 = 30,
	TileWideSmallImageAndText02 = 31,
	TileWideSmallImageAndText03 = 32,
	TileWideSmallImageAndText04 = 33,
	TileWideSmallImageAndText05 = 34,
	TileWideText01 = 35,
	TileWideText02 = 36,
	TileWideText03 = 37,
	TileWideText04 = 38,
	TileWideText05 = 39,
	TileWideText06 = 40,
	TileWideText07 = 41,
	TileWideText08 = 42,
	TileWideText09 = 43,
	TileWideText10 = 44,
	TileWideText11 = 45,
	TileSquare150x150Image = 0,
	TileSquare150x150Block = 1,
	TileSquare150x150Text01 = 2,
	TileSquare150x150Text02 = 3,
	TileSquare150x150Text03 = 4,
	TileSquare150x150Text04 = 5,
	TileSquare150x150PeekImageAndText01 = 6,
	TileSquare150x150PeekImageAndText02 = 7,
	TileSquare150x150PeekImageAndText03 = 8,
	TileSquare150x150PeekImageAndText04 = 9,
	TileWide310x150Image = 10,
	TileWide310x150ImageCollection = 11,
	TileWide310x150ImageAndText01 = 12,
	TileWide310x150ImageAndText02 = 13,
	TileWide310x150BlockAndText01 = 14,
	TileWide310x150BlockAndText02 = 15,
	TileWide310x150PeekImageCollection01 = 16,
	TileWide310x150PeekImageCollection02 = 17,
	TileWide310x150PeekImageCollection03 = 18,
	TileWide310x150PeekImageCollection04 = 19,
	TileWide310x150PeekImageCollection05 = 20,
	TileWide310x150PeekImageCollection06 = 21,
	TileWide310x150PeekImageAndText01 = 22,
	TileWide310x150PeekImageAndText02 = 23,
	TileWide310x150PeekImage01 = 24,
	TileWide310x150PeekImage02 = 25,
	TileWide310x150PeekImage03 = 26,
	TileWide310x150PeekImage04 = 27,
	TileWide310x150PeekImage05 = 28,
	TileWide310x150PeekImage06 = 29,
	TileWide310x150SmallImageAndText01 = 30,
	TileWide310x150SmallImageAndText02 = 31,
	TileWide310x150SmallImageAndText03 = 32,
	TileWide310x150SmallImageAndText04 = 33,
	TileWide310x150SmallImageAndText05 = 34,
	TileWide310x150Text01 = 35,
	TileWide310x150Text02 = 36,
	TileWide310x150Text03 = 37,
	TileWide310x150Text04 = 38,
	TileWide310x150Text05 = 39,
	TileWide310x150Text06 = 40,
	TileWide310x150Text07 = 41,
	TileWide310x150Text08 = 42,
	TileWide310x150Text09 = 43,
	TileWide310x150Text10 = 44,
	TileWide310x150Text11 = 45,
	TileSquare310x310BlockAndText01 = 46,
	TileSquare310x310BlockAndText02 = 47,
	TileSquare310x310Image = 48,
	TileSquare310x310ImageAndText01 = 49,
	TileSquare310x310ImageAndText02 = 50,
	TileSquare310x310ImageAndTextOverlay01 = 51,
	TileSquare310x310ImageAndTextOverlay02 = 52,
	TileSquare310x310ImageAndTextOverlay03 = 53,
	TileSquare310x310ImageCollectionAndText01 = 54,
	TileSquare310x310ImageCollectionAndText02 = 55,
	TileSquare310x310ImageCollection = 56,
	TileSquare310x310SmallImagesAndTextList01 = 57,
	TileSquare310x310SmallImagesAndTextList02 = 58,
	TileSquare310x310SmallImagesAndTextList03 = 59,
	TileSquare310x310SmallImagesAndTextList04 = 60,
	TileSquare310x310Text01 = 61,
	TileSquare310x310Text02 = 62,
	TileSquare310x310Text03 = 63,
	TileSquare310x310Text04 = 64,
	TileSquare310x310Text05 = 65,
	TileSquare310x310Text06 = 66,
	TileSquare310x310Text07 = 67,
	TileSquare310x310Text08 = 68,
	TileSquare310x310TextList01 = 69,
	TileSquare310x310TextList02 = 70,
	TileSquare310x310TextList03 = 71,
	TileSquare310x310SmallImageAndText01 = 72,
	TileSquare310x310SmallImagesAndTextList05 = 73,
	TileSquare310x310Text09 = 74,
	TileSquare71x71IconWithBadge = 75,
	TileSquare150x150IconWithBadge = 76,
	TileWide310x150IconWithBadgeAndText = 77,
	TileSquare71x71Image = 78,
	TileTall150x310Image = 79
}

enum ToastDismissalReason
{
	UserCanceled = 0,
	ApplicationHidden = 1,
	TimedOut = 2
}

enum ToastHistoryChangedType
{
	Cleared = 0,
	Removed = 1,
	Expired = 2,
	Added = 3
}

enum ToastNotificationPriority
{
	Default = 0,
	High = 1
}

enum ToastTemplateType
{
	ToastImageAndText01 = 0,
	ToastImageAndText02 = 1,
	ToastImageAndText03 = 2,
	ToastImageAndText04 = 3,
	ToastText01 = 4,
	ToastText02 = 5,
	ToastText03 = 6,
	ToastText04 = 7
}

enum UserNotificationChangedKind
{
	Added = 0,
	Removed = 1
}