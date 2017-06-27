module Windows.UI.Notifications.Management;

import dwinrt;

@uuid("62553e41-8a06-4cef-8215-6033a5be4b03")
@WinrtFactory("Windows.UI.Notifications.Management.UserNotificationListener")
interface IUserNotificationListener : IInspectable
{
extern(Windows):
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus)* return_result);
	HRESULT abi_GetAccessStatus(Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus* return_accessStatus);
	HRESULT add_NotificationChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Notifications.Management.UserNotificationListener, Windows.UI.Notifications.UserNotificationChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_NotificationChanged(EventRegistrationToken token);
	HRESULT abi_GetNotificationsAsync(Windows.UI.Notifications.NotificationKinds kinds, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.UserNotification))* return_result);
	HRESULT abi_GetNotification(UINT32 notificationId, Windows.UI.Notifications.UserNotification* return_result);
	HRESULT abi_ClearNotifications();
	HRESULT abi_RemoveNotification(UINT32 notificationId);
}

@uuid("ff6123cf-4386-4aa3-b73d-b804e5b63b23")
@WinrtFactory("Windows.UI.Notifications.Management.UserNotificationListener")
interface IUserNotificationListenerStatics : IInspectable
{
extern(Windows):
	HRESULT get_Current(Windows.UI.Notifications.Management.UserNotificationListener* return_result);
}

interface UserNotificationListener : Windows.UI.Notifications.Management.IUserNotificationListener
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus) RequestAccessAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus) _ret;
		Debug.OK((cast(Windows.UI.Notifications.Management.IUserNotificationListener)this.asInterface(uuid("62553e41-8a06-4cef-8215-6033a5be4b03"))).abi_RequestAccessAsync(&_ret));
		return _ret;
	}
	final Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus GetAccessStatus()
	{
		Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus _ret;
		Debug.OK((cast(Windows.UI.Notifications.Management.IUserNotificationListener)this.asInterface(uuid("62553e41-8a06-4cef-8215-6033a5be4b03"))).abi_GetAccessStatus(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnNotificationChanged(void delegate(Windows.UI.Notifications.Management.UserNotificationListener, Windows.UI.Notifications.UserNotificationChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Notifications.Management.IUserNotificationListener)this.asInterface(uuid("62553e41-8a06-4cef-8215-6033a5be4b03"))).add_NotificationChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Notifications.Management.UserNotificationListener, Windows.UI.Notifications.UserNotificationChangedEventArgs), Windows.UI.Notifications.Management.UserNotificationListener, Windows.UI.Notifications.UserNotificationChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeNotificationChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Notifications.Management.IUserNotificationListener)this.asInterface(uuid("62553e41-8a06-4cef-8215-6033a5be4b03"))).remove_NotificationChanged(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.UserNotification)) GetNotificationsAsync(Windows.UI.Notifications.NotificationKinds kinds)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.UserNotification)) _ret;
		Debug.OK((cast(Windows.UI.Notifications.Management.IUserNotificationListener)this.asInterface(uuid("62553e41-8a06-4cef-8215-6033a5be4b03"))).abi_GetNotificationsAsync(kinds, &_ret));
		return _ret;
	}
	final Windows.UI.Notifications.UserNotification GetNotification(UINT32 notificationId)
	{
		Windows.UI.Notifications.UserNotification _ret;
		Debug.OK((cast(Windows.UI.Notifications.Management.IUserNotificationListener)this.asInterface(uuid("62553e41-8a06-4cef-8215-6033a5be4b03"))).abi_GetNotification(notificationId, &_ret));
		return _ret;
	}
	final void ClearNotifications()
	{
		Debug.OK((cast(Windows.UI.Notifications.Management.IUserNotificationListener)this.asInterface(uuid("62553e41-8a06-4cef-8215-6033a5be4b03"))).abi_ClearNotifications());
	}
	final void RemoveNotification(UINT32 notificationId)
	{
		Debug.OK((cast(Windows.UI.Notifications.Management.IUserNotificationListener)this.asInterface(uuid("62553e41-8a06-4cef-8215-6033a5be4b03"))).abi_RemoveNotification(notificationId));
	}

	private static Windows.UI.Notifications.Management.IUserNotificationListenerStatics _staticInstance;
	public static Windows.UI.Notifications.Management.IUserNotificationListenerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Notifications.Management.IUserNotificationListenerStatics);
		return _staticInstance;
	}
	static Windows.UI.Notifications.Management.UserNotificationListener Current()
	{
		Windows.UI.Notifications.Management.UserNotificationListener _ret;
		Debug.OK(staticInstance.get_Current(&_ret));
		return _ret;
	}
}

enum UserNotificationListenerAccessStatus
{
	Unspecified = 0,
	Allowed = 1,
	Denied = 2
}