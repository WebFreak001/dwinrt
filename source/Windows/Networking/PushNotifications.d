module Windows.Networking.PushNotifications;

import dwinrt;

@uuid("2b28102e-ef0b-4f39-9b8a-a3c194de7081")
@WinrtFactory("Windows.Networking.PushNotifications.PushNotificationChannel")
interface IPushNotificationChannel : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsync(Windows.Storage.Streams.IBuffer appServerKey, HSTRING channelId, Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel)* return_operation);
	HRESULT abi_CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsyncWithId(Windows.Storage.Streams.IBuffer appServerKey, HSTRING channelId, HSTRING appId, Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel)* return_operation);
}

@uuid("8baf9b65-77a1-4588-bd19-861529a9dcf0")
@WinrtFactory("Windows.Networking.PushNotifications.PushNotificationChannelManager")
interface IPushNotificationChannelManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreatePushNotificationChannelForApplicationAsync(Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel)* return_operation);
	HRESULT abi_CreatePushNotificationChannelForApplicationAsyncWithId(HSTRING applicationId, Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel)* return_operation);
	HRESULT abi_CreatePushNotificationChannelForSecondaryTileAsync(HSTRING tileId, Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel)* return_operation);
}

@uuid("b444a65d-a7e9-4b28-950e-f375a907f9df")
@WinrtFactory("Windows.Networking.PushNotifications.PushNotificationChannelManager")
interface IPushNotificationChannelManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetForUser(Windows.System.User user, Windows.Networking.PushNotifications.PushNotificationChannelManagerForUser* return_result);
}

@uuid("4701fefe-0ede-4a3f-ae78-bfa471496925")
@WinrtFactory("Windows.Networking.PushNotifications.PushNotificationChannelManager")
interface IPushNotificationChannelManagerStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Networking.PushNotifications.PushNotificationChannelManagerForUser* return_value);
}

@uuid("d1065e0c-36cd-484c-b935-0a99b753cf00")
@WinrtFactory("Windows.Networking.PushNotifications.PushNotificationReceivedEventArgs")
interface IPushNotificationReceivedEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT get_Content(HSTRING* return_value);
}

@uuid("e6d0cf19-0c6f-4cdd-9424-eec5be014d26")
@WinrtFactory("Windows.Networking.PushNotifications.RawNotification")
interface IRawNotification2 : IInspectable
{
extern(Windows):
	HRESULT get_Headers(Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING)* return_value);
	HRESULT get_ChannelId(HSTRING* return_value);
}

interface PushNotificationChannel : Windows.Networking.PushNotifications.IPushNotificationChannel
{
extern(Windows):
	final HSTRING Uri()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationChannel)this.asInterface(uuid("2b28102e-ef0b-4f39-9b8a-a3c194de7081"))).get_Uri(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime ExpirationTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationChannel)this.asInterface(uuid("2b28102e-ef0b-4f39-9b8a-a3c194de7081"))).get_ExpirationTime(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationChannel)this.asInterface(uuid("2b28102e-ef0b-4f39-9b8a-a3c194de7081"))).abi_Close());
	}
	final EventRegistrationToken OnPushNotificationReceived(void delegate(Windows.Networking.PushNotifications.PushNotificationChannel, Windows.Networking.PushNotifications.PushNotificationReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationChannel)this.asInterface(uuid("2b28102e-ef0b-4f39-9b8a-a3c194de7081"))).add_PushNotificationReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Networking.PushNotifications.PushNotificationChannel, Windows.Networking.PushNotifications.PushNotificationReceivedEventArgs), Windows.Networking.PushNotifications.PushNotificationChannel, Windows.Networking.PushNotifications.PushNotificationReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePushNotificationReceived(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationChannel)this.asInterface(uuid("2b28102e-ef0b-4f39-9b8a-a3c194de7081"))).remove_PushNotificationReceived(token));
	}
}

interface PushNotificationChannelManager
{
	private static Windows.Networking.PushNotifications.IPushNotificationChannelManagerStatics _staticInstance;
	public static Windows.Networking.PushNotifications.IPushNotificationChannelManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Networking.PushNotifications.IPushNotificationChannelManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel) CreatePushNotificationChannelForApplicationAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel) _ret;
		Debug.OK(staticInstance.abi_CreatePushNotificationChannelForApplicationAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel) CreatePushNotificationChannelForApplicationAsyncWithId(HSTRING applicationId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel) _ret;
		Debug.OK(staticInstance.abi_CreatePushNotificationChannelForApplicationAsyncWithId(applicationId, &_ret));
		return _ret;
	}
	alias CreatePushNotificationChannelForApplicationAsync = CreatePushNotificationChannelForApplicationAsyncWithId;
	static Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel) CreatePushNotificationChannelForSecondaryTileAsync(HSTRING tileId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel) _ret;
		Debug.OK(staticInstance.abi_CreatePushNotificationChannelForSecondaryTileAsync(tileId, &_ret));
		return _ret;
	}
}

interface PushNotificationChannelManagerForUser : Windows.Networking.PushNotifications.IPushNotificationChannelManagerForUser, Windows.Networking.PushNotifications.IPushNotificationChannelManagerForUser2
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel) CreatePushNotificationChannelForApplicationAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel) _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationChannelManagerForUser)this.asInterface(uuid("a4c45704-1182-42c7-8890-f563c4890dc4"))).abi_CreatePushNotificationChannelForApplicationAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel) CreatePushNotificationChannelForApplicationAsyncWithId(HSTRING applicationId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel) _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationChannelManagerForUser)this.asInterface(uuid("a4c45704-1182-42c7-8890-f563c4890dc4"))).abi_CreatePushNotificationChannelForApplicationAsyncWithId(applicationId, &_ret));
		return _ret;
	}
	alias CreatePushNotificationChannelForApplicationAsync = CreatePushNotificationChannelForApplicationAsyncWithId;
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel) CreatePushNotificationChannelForSecondaryTileAsync(HSTRING tileId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel) _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationChannelManagerForUser)this.asInterface(uuid("a4c45704-1182-42c7-8890-f563c4890dc4"))).abi_CreatePushNotificationChannelForSecondaryTileAsync(tileId, &_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationChannelManagerForUser)this.asInterface(uuid("a4c45704-1182-42c7-8890-f563c4890dc4"))).get_User(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel) CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsync(Windows.Storage.Streams.IBuffer appServerKey, HSTRING channelId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel) _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationChannelManagerForUser2)this.asInterface(uuid("c38b066a-7cc1-4dac-87fd-be6e920414a4"))).abi_CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsync(appServerKey, channelId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel) CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsyncWithId(Windows.Storage.Streams.IBuffer appServerKey, HSTRING channelId, HSTRING appId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.PushNotifications.PushNotificationChannel) _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationChannelManagerForUser2)this.asInterface(uuid("c38b066a-7cc1-4dac-87fd-be6e920414a4"))).abi_CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsyncWithId(appServerKey, channelId, appId, &_ret));
		return _ret;
	}
	alias CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsync = CreateRawPushNotificationChannelWithAlternateKeyForApplicationAsyncWithId;
}

interface PushNotificationReceivedEventArgs : Windows.Networking.PushNotifications.IPushNotificationReceivedEventArgs
{
extern(Windows):
	final void Cancel(bool value)
	{
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationReceivedEventArgs)this.asInterface(uuid("d1065e0c-36cd-484c-b935-0a99b753cf00"))).set_Cancel(value));
	}
	final bool Cancel()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationReceivedEventArgs)this.asInterface(uuid("d1065e0c-36cd-484c-b935-0a99b753cf00"))).get_Cancel(&_ret));
		return _ret;
	}
	final Windows.Networking.PushNotifications.PushNotificationType NotificationType()
	{
		Windows.Networking.PushNotifications.PushNotificationType _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationReceivedEventArgs)this.asInterface(uuid("d1065e0c-36cd-484c-b935-0a99b753cf00"))).get_NotificationType(&_ret));
		return _ret;
	}
	final Windows.UI.Notifications.ToastNotification ToastNotification()
	{
		Windows.UI.Notifications.ToastNotification _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationReceivedEventArgs)this.asInterface(uuid("d1065e0c-36cd-484c-b935-0a99b753cf00"))).get_ToastNotification(&_ret));
		return _ret;
	}
	final Windows.UI.Notifications.TileNotification TileNotification()
	{
		Windows.UI.Notifications.TileNotification _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationReceivedEventArgs)this.asInterface(uuid("d1065e0c-36cd-484c-b935-0a99b753cf00"))).get_TileNotification(&_ret));
		return _ret;
	}
	final Windows.UI.Notifications.BadgeNotification BadgeNotification()
	{
		Windows.UI.Notifications.BadgeNotification _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationReceivedEventArgs)this.asInterface(uuid("d1065e0c-36cd-484c-b935-0a99b753cf00"))).get_BadgeNotification(&_ret));
		return _ret;
	}
	final Windows.Networking.PushNotifications.RawNotification RawNotification()
	{
		Windows.Networking.PushNotifications.RawNotification _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IPushNotificationReceivedEventArgs)this.asInterface(uuid("d1065e0c-36cd-484c-b935-0a99b753cf00"))).get_RawNotification(&_ret));
		return _ret;
	}
}

interface RawNotification : Windows.Networking.PushNotifications.IRawNotification, Windows.Networking.PushNotifications.IRawNotification2
{
extern(Windows):
	final HSTRING Content()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IRawNotification)this.asInterface(uuid("1a227281-3b79-42ac-9963-22ab00d4f0b7"))).get_Content(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) Headers()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IRawNotification2)this.asInterface(uuid("e6d0cf19-0c6f-4cdd-9424-eec5be014d26"))).get_Headers(&_ret));
		return _ret;
	}
	final HSTRING ChannelId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.PushNotifications.IRawNotification2)this.asInterface(uuid("e6d0cf19-0c6f-4cdd-9424-eec5be014d26"))).get_ChannelId(&_ret));
		return _ret;
	}
}

enum PushNotificationType
{
	Toast = 0,
	Tile = 1,
	Badge = 2,
	Raw = 3,
	TileFlyout = 4
}