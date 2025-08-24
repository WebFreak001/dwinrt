module Windows.Gaming.UI;

import dwinrt;

@uuid("1db9a292-cc78-4173-be45-b61e67283ea7")
@WinrtFactory("Windows.Gaming.UI.GameBar")
interface IGameBarStatics : IInspectable
{
extern(Windows):
	HRESULT add_VisibilityChanged(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_VisibilityChanged(EventRegistrationToken token);
	HRESULT add_IsInputRedirectedChanged(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_IsInputRedirectedChanged(EventRegistrationToken token);
	HRESULT get_Visible(bool* return_value);
	HRESULT get_IsInputRedirected(bool* return_value);
}

@uuid("a28201f1-3fb9-4e42-a403-7afce2023b1e")
@WinrtFactory("Windows.Gaming.UI.GameChatMessageReceivedEventArgs")
interface IGameChatMessageReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_AppId(HSTRING* return_value);
	HRESULT get_AppDisplayName(HSTRING* return_value);
	HRESULT get_SenderName(HSTRING* return_value);
	HRESULT get_Message(HSTRING* return_value);
	HRESULT get_Origin(Windows.Gaming.UI.GameChatMessageOrigin* return_value);
}

@uuid("fbc64865-f6fc-4a48-ae07-03ac6ed43704")
@WinrtFactory("Windows.Gaming.UI.GameChatOverlay")
interface IGameChatOverlay : IInspectable
{
extern(Windows):
	HRESULT get_DesiredPosition(Windows.Gaming.UI.GameChatOverlayPosition* return_value);
	HRESULT set_DesiredPosition(Windows.Gaming.UI.GameChatOverlayPosition value);
	HRESULT abi_AddMessage(HSTRING sender, HSTRING message, Windows.Gaming.UI.GameChatMessageOrigin origin);
}

@uuid("1e177397-59fb-4f4f-8e9a-80acf817743c")
@WinrtFactory("Windows.Gaming.UI.GameChatOverlayMessageSource")
interface IGameChatOverlayMessageSource : IInspectable
{
extern(Windows):
	HRESULT add_MessageReceived(Windows.Foundation.TypedEventHandler!(Windows.Gaming.UI.GameChatOverlayMessageSource, Windows.Gaming.UI.GameChatMessageReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_MessageReceived(EventRegistrationToken token);
	HRESULT abi_SetDelayBeforeClosingAfterMessageReceived(Windows.Foundation.TimeSpan value);
}

@uuid("89acf614-7867-49f7-9687-25d9dbf444d1")
@WinrtFactory("Windows.Gaming.UI.GameChatOverlay")
interface IGameChatOverlayStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Gaming.UI.GameChatOverlay* return_value);
}

interface GameBar
{
	private static Windows.Gaming.UI.IGameBarStatics _staticInstance;
	public static Windows.Gaming.UI.IGameBarStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Gaming.UI.IGameBarStatics);
		return _staticInstance;
	}
	static EventRegistrationToken OnVisibilityChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_VisibilityChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeVisibilityChanged(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_VisibilityChanged(token));
	}
	static EventRegistrationToken OnIsInputRedirectedChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_IsInputRedirectedChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeIsInputRedirectedChanged(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_IsInputRedirectedChanged(token));
	}
	static bool Visible()
	{
		bool _ret;
		Debug.OK(staticInstance.get_Visible(&_ret));
		return _ret;
	}
	static bool IsInputRedirected()
	{
		bool _ret;
		Debug.OK(staticInstance.get_IsInputRedirected(&_ret));
		return _ret;
	}
}

interface GameChatMessageReceivedEventArgs : Windows.Gaming.UI.IGameChatMessageReceivedEventArgs
{
extern(Windows):
	final wstring AppId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Gaming.UI.IGameChatMessageReceivedEventArgs)this.asInterface(uuid("a28201f1-3fb9-4e42-a403-7afce2023b1e"))).get_AppId(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring AppDisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Gaming.UI.IGameChatMessageReceivedEventArgs)this.asInterface(uuid("a28201f1-3fb9-4e42-a403-7afce2023b1e"))).get_AppDisplayName(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring SenderName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Gaming.UI.IGameChatMessageReceivedEventArgs)this.asInterface(uuid("a28201f1-3fb9-4e42-a403-7afce2023b1e"))).get_SenderName(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Message()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Gaming.UI.IGameChatMessageReceivedEventArgs)this.asInterface(uuid("a28201f1-3fb9-4e42-a403-7afce2023b1e"))).get_Message(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Gaming.UI.GameChatMessageOrigin Origin()
	{
		Windows.Gaming.UI.GameChatMessageOrigin _ret;
		Debug.OK((cast(Windows.Gaming.UI.IGameChatMessageReceivedEventArgs)this.asInterface(uuid("a28201f1-3fb9-4e42-a403-7afce2023b1e"))).get_Origin(&_ret));
		return _ret;
	}
}

interface GameChatOverlay : Windows.Gaming.UI.IGameChatOverlay
{
extern(Windows):
	final Windows.Gaming.UI.GameChatOverlayPosition DesiredPosition()
	{
		Windows.Gaming.UI.GameChatOverlayPosition _ret;
		Debug.OK((cast(Windows.Gaming.UI.IGameChatOverlay)this.asInterface(uuid("fbc64865-f6fc-4a48-ae07-03ac6ed43704"))).get_DesiredPosition(&_ret));
		return _ret;
	}
	final void DesiredPosition(Windows.Gaming.UI.GameChatOverlayPosition value)
	{
		Debug.OK((cast(Windows.Gaming.UI.IGameChatOverlay)this.asInterface(uuid("fbc64865-f6fc-4a48-ae07-03ac6ed43704"))).set_DesiredPosition(value));
	}
	final void AddMessage(wstring sender, wstring message, Windows.Gaming.UI.GameChatMessageOrigin origin)
	{
		Debug.OK((cast(Windows.Gaming.UI.IGameChatOverlay)this.asInterface(uuid("fbc64865-f6fc-4a48-ae07-03ac6ed43704"))).abi_AddMessage(hstring(sender).handle, hstring(message).handle, origin));
	}

	private static Windows.Gaming.UI.IGameChatOverlayStatics _staticInstance;
	public static Windows.Gaming.UI.IGameChatOverlayStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Gaming.UI.IGameChatOverlayStatics);
		return _staticInstance;
	}
	static Windows.Gaming.UI.GameChatOverlay GetDefault()
	{
		Windows.Gaming.UI.GameChatOverlay _ret;
		Debug.OK(staticInstance.abi_GetDefault(&_ret));
		return _ret;
	}
}

interface GameChatOverlayMessageSource : Windows.Gaming.UI.IGameChatOverlayMessageSource
{
extern(Windows):
	final EventRegistrationToken OnMessageReceived(void delegate(Windows.Gaming.UI.GameChatOverlayMessageSource, Windows.Gaming.UI.GameChatMessageReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Gaming.UI.IGameChatOverlayMessageSource)this.asInterface(uuid("1e177397-59fb-4f4f-8e9a-80acf817743c"))).add_MessageReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.UI.GameChatOverlayMessageSource, Windows.Gaming.UI.GameChatMessageReceivedEventArgs), Windows.Gaming.UI.GameChatOverlayMessageSource, Windows.Gaming.UI.GameChatMessageReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMessageReceived(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Gaming.UI.IGameChatOverlayMessageSource)this.asInterface(uuid("1e177397-59fb-4f4f-8e9a-80acf817743c"))).remove_MessageReceived(token));
	}
	final void SetDelayBeforeClosingAfterMessageReceived(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.Gaming.UI.IGameChatOverlayMessageSource)this.asInterface(uuid("1e177397-59fb-4f4f-8e9a-80acf817743c"))).abi_SetDelayBeforeClosingAfterMessageReceived(value));
	}
	static GameChatOverlayMessageSource New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(GameChatOverlayMessageSource).abi_ActivateInstance(&ret));
		return cast(GameChatOverlayMessageSource) ret;
	}
}

enum GameChatMessageOrigin
{
	Voice = 0,
	Text = 1
}

enum GameChatOverlayPosition
{
	BottomCenter = 0,
	BottomLeft = 1,
	BottomRight = 2,
	MiddleRight = 3,
	MiddleLeft = 4,
	TopCenter = 5,
	TopLeft = 6,
	TopRight = 7
}