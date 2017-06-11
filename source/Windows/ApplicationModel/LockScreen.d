module Windows.ApplicationModel.LockScreen;

import dwinrt;

@uuid("38ee31ad-d94f-4e7c-81fa-4f4436506281")
@WinrtFactory("Windows.ApplicationModel.LockScreen.LockApplicationHost")
interface ILockApplicationHost : IInspectable
{
extern(Windows):
	HRESULT abi_RequestUnlock();
	HRESULT add_Unlocking(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.LockScreen.LockApplicationHost, Windows.ApplicationModel.LockScreen.LockScreenUnlockingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Unlocking(EventRegistrationToken token);
}

@uuid("f48fab8e-23d7-4e63-96a1-666ff52d3b2c")
@WinrtFactory("Windows.ApplicationModel.LockScreen.LockApplicationHost")
interface ILockApplicationHostStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.ApplicationModel.LockScreen.LockApplicationHost* return_result);
}

@uuid("e95105d9-2bff-4db0-9b4f-3824778b9c9a")
@WinrtFactory("Windows.ApplicationModel.LockScreen.LockScreenBadge")
interface ILockScreenBadge : IInspectable
{
extern(Windows):
	HRESULT get_Logo(Windows.Storage.Streams.IRandomAccessStream* return_value);
	HRESULT get_Glyph(Windows.Storage.Streams.IRandomAccessStream* return_value);
	HRESULT get_Number(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_AutomationName(HSTRING* return_value);
	HRESULT abi_LaunchApp();
}

@uuid("f59aa65c-9711-4dc9-a630-95b6cb8cdad0")
@WinrtFactory("Windows.ApplicationModel.LockScreen.LockScreenInfo")
interface ILockScreenInfo : IInspectable
{
extern(Windows):
	HRESULT add_LockScreenImageChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.LockScreen.LockScreenInfo, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_LockScreenImageChanged(EventRegistrationToken token);
	HRESULT get_LockScreenImage(Windows.Storage.Streams.IRandomAccessStream* return_value);
	HRESULT add_BadgesChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.LockScreen.LockScreenInfo, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_BadgesChanged(EventRegistrationToken token);
	HRESULT get_Badges(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.LockScreen.LockScreenBadge)* return_value);
	HRESULT add_DetailTextChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.LockScreen.LockScreenInfo, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_DetailTextChanged(EventRegistrationToken token);
	HRESULT get_DetailText(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT add_AlarmIconChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.LockScreen.LockScreenInfo, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_AlarmIconChanged(EventRegistrationToken token);
	HRESULT get_AlarmIcon(Windows.Storage.Streams.IRandomAccessStream* return_value);
}

@uuid("7e7d1ad6-5203-43e7-9bd6-7c3947d1e3fe")
@WinrtFactory("Windows.ApplicationModel.LockScreen.LockScreenUnlockingDeferral")
interface ILockScreenUnlockingDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("44e6c007-75fb-4abb-9f8b-824748900c71")
@WinrtFactory("Windows.ApplicationModel.LockScreen.LockScreenUnlockingEventArgs")
interface ILockScreenUnlockingEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.ApplicationModel.LockScreen.LockScreenUnlockingDeferral* return_deferral);
	HRESULT get_Deadline(Windows.Foundation.DateTime* return_value);
}

interface LockApplicationHost : Windows.ApplicationModel.LockScreen.ILockApplicationHost
{
extern(Windows):
	final void RequestUnlock()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.LockScreen.ILockApplicationHost).abi_RequestUnlock());
	}
	final EventRegistrationToken OnUnlocking(void delegate(Windows.ApplicationModel.LockScreen.LockApplicationHost, Windows.ApplicationModel.LockScreen.LockScreenUnlockingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Unlocking(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.LockScreen.LockApplicationHost, Windows.ApplicationModel.LockScreen.LockScreenUnlockingEventArgs), Windows.ApplicationModel.LockScreen.LockApplicationHost, Windows.ApplicationModel.LockScreen.LockScreenUnlockingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUnlocking(EventRegistrationToken token)
	{
		Debug.OK(remove_Unlocking(token));
	}
}

interface LockScreenBadge : Windows.ApplicationModel.LockScreen.ILockScreenBadge
{
extern(Windows):
	final Windows.Storage.Streams.IRandomAccessStream Logo()
	{
		Windows.Storage.Streams.IRandomAccessStream _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.LockScreen.ILockScreenBadge).get_Logo(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IRandomAccessStream Glyph()
	{
		Windows.Storage.Streams.IRandomAccessStream _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.LockScreen.ILockScreenBadge).get_Glyph(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) Number()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.LockScreen.ILockScreenBadge).get_Number(&_ret));
		return _ret;
	}
	final HSTRING AutomationName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.LockScreen.ILockScreenBadge).get_AutomationName(&_ret));
		return _ret;
	}
	final void LaunchApp()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.LockScreen.ILockScreenBadge).abi_LaunchApp());
	}
}

interface LockScreenInfo : Windows.ApplicationModel.LockScreen.ILockScreenInfo
{
extern(Windows):
	final EventRegistrationToken OnLockScreenImageChanged(void delegate(Windows.ApplicationModel.LockScreen.LockScreenInfo, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_LockScreenImageChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.LockScreen.LockScreenInfo, IInspectable), Windows.ApplicationModel.LockScreen.LockScreenInfo, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeLockScreenImageChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_LockScreenImageChanged(token));
	}
	final Windows.Storage.Streams.IRandomAccessStream LockScreenImage()
	{
		Windows.Storage.Streams.IRandomAccessStream _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.LockScreen.ILockScreenInfo).get_LockScreenImage(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnBadgesChanged(void delegate(Windows.ApplicationModel.LockScreen.LockScreenInfo, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_BadgesChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.LockScreen.LockScreenInfo, IInspectable), Windows.ApplicationModel.LockScreen.LockScreenInfo, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeBadgesChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_BadgesChanged(token));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.LockScreen.LockScreenBadge) Badges()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.LockScreen.LockScreenBadge) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.LockScreen.ILockScreenInfo).get_Badges(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnDetailTextChanged(void delegate(Windows.ApplicationModel.LockScreen.LockScreenInfo, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DetailTextChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.LockScreen.LockScreenInfo, IInspectable), Windows.ApplicationModel.LockScreen.LockScreenInfo, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeDetailTextChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_DetailTextChanged(token));
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) DetailText()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.LockScreen.ILockScreenInfo).get_DetailText(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnAlarmIconChanged(void delegate(Windows.ApplicationModel.LockScreen.LockScreenInfo, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_AlarmIconChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.LockScreen.LockScreenInfo, IInspectable), Windows.ApplicationModel.LockScreen.LockScreenInfo, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeAlarmIconChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_AlarmIconChanged(token));
	}
	final Windows.Storage.Streams.IRandomAccessStream AlarmIcon()
	{
		Windows.Storage.Streams.IRandomAccessStream _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.LockScreen.ILockScreenInfo).get_AlarmIcon(&_ret));
		return _ret;
	}
}

interface LockScreenUnlockingDeferral : Windows.ApplicationModel.LockScreen.ILockScreenUnlockingDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.LockScreen.ILockScreenUnlockingDeferral).abi_Complete());
	}
}

interface LockScreenUnlockingEventArgs : Windows.ApplicationModel.LockScreen.ILockScreenUnlockingEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.LockScreen.LockScreenUnlockingDeferral GetDeferral()
	{
		Windows.ApplicationModel.LockScreen.LockScreenUnlockingDeferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.LockScreen.ILockScreenUnlockingEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Deadline()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.LockScreen.ILockScreenUnlockingEventArgs).get_Deadline(&_ret));
		return _ret;
	}
}