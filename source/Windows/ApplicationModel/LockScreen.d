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
}

interface LockScreenBadge : Windows.ApplicationModel.LockScreen.ILockScreenBadge
{
}

interface LockScreenInfo : Windows.ApplicationModel.LockScreen.ILockScreenInfo
{
}

interface LockScreenUnlockingDeferral : Windows.ApplicationModel.LockScreen.ILockScreenUnlockingDeferral
{
}

interface LockScreenUnlockingEventArgs : Windows.ApplicationModel.LockScreen.ILockScreenUnlockingEventArgs
{
}