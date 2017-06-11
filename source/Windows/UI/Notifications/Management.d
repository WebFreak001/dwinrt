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
		Debug.OK(this.as!(Windows.UI.Notifications.Management.IUserNotificationListener).abi_RequestAccessAsync(&_ret));
		return _ret;
	}
	final Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus GetAccessStatus()
	{
		Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus _ret;
		Debug.OK(this.as!(Windows.UI.Notifications.Management.IUserNotificationListener).abi_GetAccessStatus(&_ret));
		return _ret;
	}
	final void removeNotificationChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_NotificationChanged(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.UserNotification)) GetNotificationsAsync(Windows.UI.Notifications.NotificationKinds kinds)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Notifications.UserNotification)) _ret;
		Debug.OK(this.as!(Windows.UI.Notifications.Management.IUserNotificationListener).abi_GetNotificationsAsync(kinds, &_ret));
		return _ret;
	}
	final Windows.UI.Notifications.UserNotification GetNotification(UINT32 notificationId)
	{
		Windows.UI.Notifications.UserNotification _ret;
		Debug.OK(this.as!(Windows.UI.Notifications.Management.IUserNotificationListener).abi_GetNotification(notificationId, &_ret));
		return _ret;
	}
	final void ClearNotifications()
	{
		Debug.OK(this.as!(Windows.UI.Notifications.Management.IUserNotificationListener).abi_ClearNotifications());
	}
	final void RemoveNotification(UINT32 notificationId)
	{
		Debug.OK(this.as!(Windows.UI.Notifications.Management.IUserNotificationListener).abi_RemoveNotification(notificationId));
	}
}

enum UserNotificationListenerAccessStatus
{
	Unspecified = 0,
	Allowed = 1,
	Denied = 2
}