module Windows.Networking.PushNotifications;

import dwinrt;

@uuid("2b28102e-ef0b-4f39-9b8a-a3c194de7081")
@WinrtFactory("Windows.Networking.PushNotifications.PushNotificationChannel")
interface IPushNotificationChannel : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uri(HSTRING* return_value);
	HRESULT get_ExpirationTime(Windows.Foundation.DateTime* return_value);
	HRESULT abi_Close();
	HRESULT add_PushNotificationReceived(Windows.Foundation.TypedEventHandler!(Windows.Networking.PushNotifications.PushNotificationChannel, Windows.Networking.PushNotifications.PushNotificationReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PushNotificationReceived(EventRegistrationToken token);
}

@uuid("a4c45704-1182-42c7-8890-f563c4890dc4")
@WinrtFactory("Windows.Networking.PushNotifications.PushNotificationChannelManagerForUser")
interface IPushNotificationChannelManagerForUser : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreatePushNotificationChannelForApplicationAsync(Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel)* return_operation);
	HRESULT abi_CreatePushNotificationChannelForApplicationAsyncWithId(HSTRING applicationId, Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel)* return_operation);
	HRESULT abi_CreatePushNotificationChannelForSecondaryTileAsync(HSTRING tileId, Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel)* return_operation);
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("c38b066a-7cc1-4dac-87fd-be6e920414a4")
@WinrtFactory("Windows.Networking.PushNotifications.PushNotificationChannelManagerForUser")
interface IPushNotificationChannelManagerForUser2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsync(Windows.Storage.Streams.IBuffer appServerKey, HSTRING channelId, Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel)* return_operation);
	HRESULT abi_CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsyncWithId(Windows.Storage.Streams.IBuffer appServerKey, HSTRING channelId, HSTRING appId, Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel)* return_operation);
}

@uuid("8baf9b65-77a1-4588-bd19-861529a9dcf0")
@WinrtFactory("Windows.Networking.PushNotifications.PushNotificationChannelManager")
interface IPushNotificationChannelManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreatePushNotificationChannelForApplicationAsync(Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel)* return_operation);
	HRESULT abi_CreatePushNotificationChannelForApplicationAsyncWithId(HSTRING applicationId, Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel)* return_operation);
	HRESULT abi_CreatePushNotificationChannelForSecondaryTileAsync(HSTRING tileId, Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel)* return_operation);
}

@uuid("b444a65d-a7e9-4b28-950e-f375a907f9df")
@WinrtFactory("Windows.Networking.PushNotifications.PushNotificationChannelManager")
interface IPushNotificationChannelManagerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForUser(Windows.System.User user, Windows.Networking.PushNotifications.PushNotificationChannelManagerForUser* return_result);
}

@uuid("4701fefe-0ede-4a3f-ae78-bfa471496925")
@WinrtFactory("Windows.Networking.PushNotifications.PushNotificationChannelManager")
interface IPushNotificationChannelManagerStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefault(Windows.Networking.PushNotifications.PushNotificationChannelManagerForUser* return_value);
}

@uuid("d1065e0c-36cd-484c-b935-0a99b753cf00")
@WinrtFactory("Windows.Networking.PushNotifications.PushNotificationReceivedEventArgs")
interface IPushNotificationReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_Cancel(bool value);
	HRESULT get_Cancel(bool* return_value);
	HRESULT get_NotificationType(Windows.Networking.PushNotifications.PushNotificationType* return_value);
	HRESULT get_ToastNotification(Windows.UI.Notifications.ToastNotification* return_value);
	HRESULT get_TileNotification(Windows.UI.Notifications.TileNotification* return_value);
	HRESULT get_BadgeNotification(Windows.UI.Notifications.BadgeNotification* return_value);
	HRESULT get_RawNotification(Windows.Networking.PushNotifications.RawNotification* return_value);
}

@uuid("1a227281-3b79-42ac-9963-22ab00d4f0b7")
@WinrtFactory("Windows.Networking.PushNotifications.RawNotification")
interface IRawNotification : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Content(HSTRING* return_value);
}

@uuid("e6d0cf19-0c6f-4cdd-9424-eec5be014d26")
@WinrtFactory("Windows.Networking.PushNotifications.RawNotification")
interface IRawNotification2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Headers(Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING)* return_value);
	HRESULT get_ChannelId(HSTRING* return_value);
}

interface PushNotificationChannel : Windows.Networking.PushNotifications.IPushNotificationChannel
{
}

interface PushNotificationChannelManager
{
}

interface PushNotificationChannelManagerForUser : Windows.Networking.PushNotifications.IPushNotificationChannelManagerForUser, Windows.Networking.PushNotifications.IPushNotificationChannelManagerForUser2
{
}

interface PushNotificationReceivedEventArgs : Windows.Networking.PushNotifications.IPushNotificationReceivedEventArgs
{
}

interface RawNotification : Windows.Networking.PushNotifications.IRawNotification, Windows.Networking.PushNotifications.IRawNotification2
{
}

enum PushNotificationType
{
	Toast = 0,
	Tile = 1,
	Badge = 2,
	Raw = 3,
	TileFlyout = 4
}