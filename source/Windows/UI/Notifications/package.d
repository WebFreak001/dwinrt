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
interface IAdaptiveNotificationText : IInspectable
{
extern(Windows):
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
	HRESULT get_Language(HSTRING* return_value);
	HRESULT set_Language(HSTRING value);
}

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
}

interface BadgeNotification : Windows.UI.Notifications.IBadgeNotification
{
}

interface BadgeUpdateManager
{
}

interface BadgeUpdateManagerForUser : Windows.UI.Notifications.IBadgeUpdateManagerForUser
{
}

interface BadgeUpdater : Windows.UI.Notifications.IBadgeUpdater
{
}

interface KnownAdaptiveNotificationHints
{
}

interface KnownAdaptiveNotificationTextStyles
{
}

interface KnownNotificationBindings
{
}

interface Notification : Windows.UI.Notifications.INotification
{
}

interface NotificationBinding : Windows.UI.Notifications.INotificationBinding
{
}

interface NotificationData : Windows.UI.Notifications.INotificationData
{
}

interface NotificationVisual : Windows.UI.Notifications.INotificationVisual
{
}

interface ScheduledTileNotification : Windows.UI.Notifications.IScheduledTileNotification
{
}

interface ScheduledToastNotification : Windows.UI.Notifications.IScheduledToastNotification, Windows.UI.Notifications.IScheduledToastNotification2, Windows.UI.Notifications.IScheduledToastNotification3
{
}

interface ShownTileNotification : Windows.UI.Notifications.IShownTileNotification
{
}

interface TileFlyoutNotification : Windows.UI.Notifications.ITileFlyoutNotification
{
}

interface TileFlyoutUpdateManager
{
}

interface TileFlyoutUpdater : Windows.UI.Notifications.ITileFlyoutUpdater
{
}

interface TileNotification : Windows.UI.Notifications.ITileNotification
{
}

interface TileUpdateManager
{
}

interface TileUpdateManagerForUser : Windows.UI.Notifications.ITileUpdateManagerForUser
{
}

interface TileUpdater : Windows.UI.Notifications.ITileUpdater, Windows.UI.Notifications.ITileUpdater2
{
}

interface ToastActivatedEventArgs : Windows.UI.Notifications.IToastActivatedEventArgs
{
}

interface ToastCollection : Windows.UI.Notifications.IToastCollection
{
}

interface ToastCollectionManager : Windows.UI.Notifications.IToastCollectionManager
{
}

interface ToastDismissedEventArgs : Windows.UI.Notifications.IToastDismissedEventArgs
{
}

interface ToastFailedEventArgs : Windows.UI.Notifications.IToastFailedEventArgs
{
}

interface ToastNotification : Windows.UI.Notifications.IToastNotification, Windows.UI.Notifications.IToastNotification2, Windows.UI.Notifications.IToastNotification3, Windows.UI.Notifications.IToastNotification4
{
}

interface ToastNotificationActionTriggerDetail : Windows.UI.Notifications.IToastNotificationActionTriggerDetail
{
}

interface ToastNotificationHistory : Windows.UI.Notifications.IToastNotificationHistory, Windows.UI.Notifications.IToastNotificationHistory2
{
}

interface ToastNotificationHistoryChangedTriggerDetail : Windows.UI.Notifications.IToastNotificationHistoryChangedTriggerDetail, Windows.UI.Notifications.IToastNotificationHistoryChangedTriggerDetail2
{
}

interface ToastNotificationManager
{
}

interface ToastNotificationManagerForUser : Windows.UI.Notifications.IToastNotificationManagerForUser, Windows.UI.Notifications.IToastNotificationManagerForUser2
{
}

interface ToastNotifier : Windows.UI.Notifications.IToastNotifier, Windows.UI.Notifications.IToastNotifier2
{
}

interface UserNotification : Windows.UI.Notifications.IUserNotification
{
}

interface UserNotificationChangedEventArgs : Windows.UI.Notifications.IUserNotificationChangedEventArgs
{
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