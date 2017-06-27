module Windows.UI.Core.Preview;

import dwinrt;

@uuid("83d00de1-cbe5-4f31-8414-361da046518f")
@WinrtFactory("Windows.UI.Core.Preview.SystemNavigationCloseRequestedPreviewEventArgs")
interface ISystemNavigationCloseRequestedPreviewEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_result);
}

@uuid("ec5f0488-6425-4777-a536-cb5634427f0d")
@WinrtFactory("Windows.UI.Core.Preview.SystemNavigationManagerPreview")
interface ISystemNavigationManagerPreview : IInspectable
{
extern(Windows):
	HRESULT add_CloseRequested(Windows.Foundation.EventHandler!(Windows.UI.Core.Preview.SystemNavigationCloseRequestedPreviewEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CloseRequested(EventRegistrationToken token);
}

@uuid("0e971360-df74-4bce-84cb-bd1181ac0a71")
@WinrtFactory("Windows.UI.Core.Preview.SystemNavigationManagerPreview")
interface ISystemNavigationManagerPreviewStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Core.Preview.SystemNavigationManagerPreview* return_loader);
}

interface SystemNavigationCloseRequestedPreviewEventArgs : Windows.UI.Core.Preview.ISystemNavigationCloseRequestedPreviewEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Core.Preview.ISystemNavigationCloseRequestedPreviewEventArgs)this.asInterface(uuid("83d00de1-cbe5-4f31-8414-361da046518f"))).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK((cast(Windows.UI.Core.Preview.ISystemNavigationCloseRequestedPreviewEventArgs)this.asInterface(uuid("83d00de1-cbe5-4f31-8414-361da046518f"))).set_Handled(value));
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.UI.Core.Preview.ISystemNavigationCloseRequestedPreviewEventArgs)this.asInterface(uuid("83d00de1-cbe5-4f31-8414-361da046518f"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface SystemNavigationManagerPreview : Windows.UI.Core.Preview.ISystemNavigationManagerPreview
{
extern(Windows):
	final EventRegistrationToken OnCloseRequested(void delegate(IInspectable, Windows.UI.Core.Preview.SystemNavigationCloseRequestedPreviewEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Core.Preview.ISystemNavigationManagerPreview)this.asInterface(uuid("ec5f0488-6425-4777-a536-cb5634427f0d"))).add_CloseRequested(event!(Windows.Foundation.EventHandler!(Windows.UI.Core.Preview.SystemNavigationCloseRequestedPreviewEventArgs), IInspectable, Windows.UI.Core.Preview.SystemNavigationCloseRequestedPreviewEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCloseRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Core.Preview.ISystemNavigationManagerPreview)this.asInterface(uuid("ec5f0488-6425-4777-a536-cb5634427f0d"))).remove_CloseRequested(token));
	}

	private static Windows.UI.Core.Preview.ISystemNavigationManagerPreviewStatics _staticInstance;
	public static Windows.UI.Core.Preview.ISystemNavigationManagerPreviewStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Core.Preview.ISystemNavigationManagerPreviewStatics);
		return _staticInstance;
	}
	static Windows.UI.Core.Preview.SystemNavigationManagerPreview GetForCurrentView()
	{
		Windows.UI.Core.Preview.SystemNavigationManagerPreview _ret;
		Debug.OK(staticInstance.abi_GetForCurrentView(&_ret));
		return _ret;
	}
}