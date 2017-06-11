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
}

interface GameChatMessageReceivedEventArgs : Windows.Gaming.UI.IGameChatMessageReceivedEventArgs
{
extern(Windows):
	final HSTRING AppId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Gaming.UI.IGameChatMessageReceivedEventArgs).get_AppId(&_ret));
		return _ret;
	}
	final HSTRING AppDisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Gaming.UI.IGameChatMessageReceivedEventArgs).get_AppDisplayName(&_ret));
		return _ret;
	}
	final HSTRING SenderName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Gaming.UI.IGameChatMessageReceivedEventArgs).get_SenderName(&_ret));
		return _ret;
	}
	final HSTRING Message()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Gaming.UI.IGameChatMessageReceivedEventArgs).get_Message(&_ret));
		return _ret;
	}
	final Windows.Gaming.UI.GameChatMessageOrigin Origin()
	{
		Windows.Gaming.UI.GameChatMessageOrigin _ret;
		Debug.OK(this.as!(Windows.Gaming.UI.IGameChatMessageReceivedEventArgs).get_Origin(&_ret));
		return _ret;
	}
}

interface GameChatOverlay : Windows.Gaming.UI.IGameChatOverlay
{
extern(Windows):
	final Windows.Gaming.UI.GameChatOverlayPosition DesiredPosition()
	{
		Windows.Gaming.UI.GameChatOverlayPosition _ret;
		Debug.OK(this.as!(Windows.Gaming.UI.IGameChatOverlay).get_DesiredPosition(&_ret));
		return _ret;
	}
	final void DesiredPosition(Windows.Gaming.UI.GameChatOverlayPosition value)
	{
		Debug.OK(this.as!(Windows.Gaming.UI.IGameChatOverlay).set_DesiredPosition(value));
	}
	final void AddMessage(HSTRING sender, HSTRING message, Windows.Gaming.UI.GameChatMessageOrigin origin)
	{
		Debug.OK(this.as!(Windows.Gaming.UI.IGameChatOverlay).abi_AddMessage(sender, message, origin));
	}
}

interface GameChatOverlayMessageSource : Windows.Gaming.UI.IGameChatOverlayMessageSource
{
extern(Windows):
	final EventRegistrationToken OnMessageReceived(void delegate(Windows.Gaming.UI.GameChatOverlayMessageSource, Windows.Gaming.UI.GameChatMessageReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MessageReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Gaming.UI.GameChatOverlayMessageSource, Windows.Gaming.UI.GameChatMessageReceivedEventArgs), Windows.Gaming.UI.GameChatOverlayMessageSource, Windows.Gaming.UI.GameChatMessageReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMessageReceived(EventRegistrationToken token)
	{
		Debug.OK(remove_MessageReceived(token));
	}
	final void SetDelayBeforeClosingAfterMessageReceived(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Gaming.UI.IGameChatOverlayMessageSource).abi_SetDelayBeforeClosingAfterMessageReceived(value));
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