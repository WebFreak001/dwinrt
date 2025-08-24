module Windows.Media.PlayTo;

import dwinrt;

@uuid("99711324-edc7-4bf5-91f6-3c8627db59e5")
@WinrtFactory("Windows.Media.PlayTo.CurrentTimeChangeRequestedEventArgs")
interface ICurrentTimeChangeRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Time(Windows.Foundation.TimeSpan* return_value);
}

@uuid("e4b4f5f6-af1f-4f1e-b437-7da32400e1d4")
@WinrtFactory("Windows.Media.PlayTo.MuteChangeRequestedEventArgs")
interface IMuteChangeRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Mute(bool* return_value);
}

@uuid("112fbfc8-f235-4fde-8d41-9bf27c9e9a40")
@WinrtFactory("Windows.Media.PlayTo.PlayToConnection")
interface IPlayToConnection : IInspectable
{
extern(Windows):
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	HRESULT get_State(Windows.Media.PlayTo.PlayToConnectionState* return_value);
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	HRESULT add_StateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToConnection, Windows.Media.PlayTo.PlayToConnectionStateChangedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	HRESULT remove_StateChanged(EventRegistrationToken token);
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	HRESULT add_Transferred(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToConnection, Windows.Media.PlayTo.PlayToConnectionTransferredEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	HRESULT remove_Transferred(EventRegistrationToken token);
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	HRESULT add_Error(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToConnection, Windows.Media.PlayTo.PlayToConnectionErrorEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	HRESULT remove_Error(EventRegistrationToken token);
}

@uuid("bf5eada6-88e6-445f-9d40-d9b9f8939896")
@WinrtFactory("Windows.Media.PlayTo.PlayToConnectionErrorEventArgs")
interface IPlayToConnectionErrorEventArgs : IInspectable
{
extern(Windows):
	deprecated("PlayToConnectionErrorEventArgs may be altered or unavailable for releases after Windows 10. Instead, use CastingConnectionErrorOccurredEventArgs.")
	HRESULT get_Code(Windows.Media.PlayTo.PlayToConnectionError* return_value);
	deprecated("PlayToConnectionErrorEventArgs may be altered or unavailable for releases after Windows 10. Instead, use CastingConnectionErrorOccurredEventArgs.")
	HRESULT get_Message(HSTRING* return_value);
}

@uuid("68c4b50f-0c20-4980-8602-58c62238d423")
@WinrtFactory("Windows.Media.PlayTo.PlayToConnectionStateChangedEventArgs")
interface IPlayToConnectionStateChangedEventArgs : IInspectable
{
extern(Windows):
	deprecated("PlayToConnectionStateChangedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_PreviousState(Windows.Media.PlayTo.PlayToConnectionState* return_value);
	deprecated("PlayToConnectionStateChangedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_CurrentState(Windows.Media.PlayTo.PlayToConnectionState* return_value);
}

@uuid("fae3193a-0683-47d9-8df0-18cbb48984d8")
@WinrtFactory("Windows.Media.PlayTo.PlayToConnectionTransferredEventArgs")
interface IPlayToConnectionTransferredEventArgs : IInspectable
{
extern(Windows):
	deprecated("PlayToConnectionTransferredEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_PreviousSource(Windows.Media.PlayTo.PlayToSource* return_value);
	deprecated("PlayToConnectionTransferredEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_CurrentSource(Windows.Media.PlayTo.PlayToSource* return_value);
}

@uuid("f56a206e-1b77-42ef-8f0d-b949f8d9b260")
@WinrtFactory("Windows.Media.PlayTo.PlayToManager")
interface IPlayToManager : IInspectable
{
extern(Windows):
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	HRESULT add_SourceRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToManager, Windows.Media.PlayTo.PlayToSourceRequestedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	HRESULT remove_SourceRequested(EventRegistrationToken token);
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	HRESULT add_SourceSelected(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToManager, Windows.Media.PlayTo.PlayToSourceSelectedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	HRESULT remove_SourceSelected(EventRegistrationToken token);
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	HRESULT set_DefaultSourceSelection(bool value);
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	HRESULT get_DefaultSourceSelection(bool* return_value);
}

@uuid("64e6a887-3982-4f3b-ba20-6155e435325b")
@WinrtFactory("Windows.Media.PlayTo.PlayToManager")
interface IPlayToManagerStatics : IInspectable
{
extern(Windows):
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_GetForCurrentView(Windows.Media.PlayTo.PlayToManager* return_playToManager);
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_ShowPlayToUI();
}

@uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069")
@WinrtFactory("Windows.Media.PlayTo.PlayToReceiver")
interface IPlayToReceiver : IInspectable
{
extern(Windows):
	HRESULT add_PlayRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_PlayRequested(EventRegistrationToken token);
	HRESULT add_PauseRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_PauseRequested(EventRegistrationToken token);
	HRESULT add_SourceChangeRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.SourceChangeRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SourceChangeRequested(EventRegistrationToken token);
	HRESULT add_PlaybackRateChangeRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.PlaybackRateChangeRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PlaybackRateChangeRequested(EventRegistrationToken token);
	HRESULT add_CurrentTimeChangeRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.CurrentTimeChangeRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CurrentTimeChangeRequested(EventRegistrationToken token);
	HRESULT add_MuteChangeRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.MuteChangeRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_MuteChangeRequested(EventRegistrationToken token);
	HRESULT add_VolumeChangeRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.VolumeChangeRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_VolumeChangeRequested(EventRegistrationToken token);
	HRESULT add_TimeUpdateRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_TimeUpdateRequested(EventRegistrationToken token);
	HRESULT add_StopRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_StopRequested(EventRegistrationToken token);
	HRESULT abi_NotifyVolumeChange(double volume, bool mute);
	HRESULT abi_NotifyRateChange(double rate);
	HRESULT abi_NotifyLoadedMetadata();
	HRESULT abi_NotifyTimeUpdate(Windows.Foundation.TimeSpan currentTime);
	HRESULT abi_NotifyDurationChange(Windows.Foundation.TimeSpan duration);
	HRESULT abi_NotifySeeking();
	HRESULT abi_NotifySeeked();
	HRESULT abi_NotifyPaused();
	HRESULT abi_NotifyPlaying();
	HRESULT abi_NotifyEnded();
	HRESULT abi_NotifyError();
	HRESULT abi_NotifyStopped();
	HRESULT get_FriendlyName(HSTRING* return_value);
	HRESULT set_FriendlyName(HSTRING value);
	HRESULT set_SupportsImage(bool value);
	HRESULT get_SupportsImage(bool* return_value);
	HRESULT set_SupportsAudio(bool value);
	HRESULT get_SupportsAudio(bool* return_value);
	HRESULT set_SupportsVideo(bool value);
	HRESULT get_SupportsVideo(bool* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IPropertySet* return_value);
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_StopAsync(Windows.Foundation.IAsyncAction* return_action);
}

@uuid("7f138a08-fbb7-4b09-8356-aa5f4e335c31")
@WinrtFactory("Windows.Media.PlayTo.PlayToSource")
interface IPlayToSource : IInspectable
{
extern(Windows):
	deprecated("PlayToSource may be altered or unavailable for releases after Windows 10. Instead, use CastingSource.")
	HRESULT get_Connection(Windows.Media.PlayTo.PlayToConnection* return_value);
	deprecated("PlayToSource may be altered or unavailable for releases after Windows 10. Instead, use CastingSource.")
	HRESULT get_Next(Windows.Media.PlayTo.PlayToSource* return_value);
	deprecated("PlayToSource may be altered or unavailable for releases after Windows 10. Instead, use CastingSource.")
	HRESULT set_Next(Windows.Media.PlayTo.PlayToSource value);
	deprecated("PlayToSource may be altered or unavailable for releases after Windows 10. Instead, use CastingSource.")
	HRESULT abi_PlayNext();
}

@uuid("4100891d-278e-4f29-859b-a9e501053e7d")
@WinrtFactory("Windows.Media.PlayTo.PlayToSourceDeferral")
interface IPlayToSourceDeferral : IInspectable
{
extern(Windows):
	deprecated("PlayToSourceDeferral may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_Complete();
}

@uuid("f8584665-64f4-44a0-ac0d-468d2b8fda83")
@WinrtFactory("Windows.Media.PlayTo.PlayToSourceRequest")
interface IPlayToSourceRequest : IInspectable
{
extern(Windows):
	deprecated("PlayToSourceRequest may be altered or unavailable for releases after Windows 10.")
	HRESULT get_Deadline(Windows.Foundation.DateTime* return_value);
	deprecated("PlayToSourceRequest may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_DisplayErrorString(HSTRING errorString);
	deprecated("PlayToSourceRequest may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_GetDeferral(Windows.Media.PlayTo.PlayToSourceDeferral* return_deferral);
	deprecated("PlayToSourceRequest may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_SetSource(Windows.Media.PlayTo.PlayToSource value);
}

@uuid("c5cdc330-29df-4ec6-9da9-9fbdfcfc1b3e")
@WinrtFactory("Windows.Media.PlayTo.PlayToSourceRequestedEventArgs")
interface IPlayToSourceRequestedEventArgs : IInspectable
{
extern(Windows):
	deprecated("PlayToSourceRequestedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_SourceRequest(Windows.Media.PlayTo.PlayToSourceRequest* return_value);
}

@uuid("0c9d8511-5202-4dcb-8c67-abda12bb3c12")
@WinrtFactory("Windows.Media.PlayTo.PlayToSourceSelectedEventArgs")
interface IPlayToSourceSelectedEventArgs : IInspectable
{
extern(Windows):
	deprecated("PlayToSourceSelectedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_FriendlyName(HSTRING* return_value);
	deprecated("PlayToSourceSelectedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_Icon(Windows.Storage.Streams.IRandomAccessStreamWithContentType* return_value);
	deprecated("PlayToSourceSelectedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_SupportsImage(bool* return_value);
	deprecated("PlayToSourceSelectedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_SupportsAudio(bool* return_value);
	deprecated("PlayToSourceSelectedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_SupportsVideo(bool* return_value);
}

@uuid("aab253eb-3301-4dc4-afba-b2f2ed9635a0")
@WinrtFactory("Windows.Media.PlayTo.PlayToSource")
interface IPlayToSourceWithPreferredSourceUri : IInspectable
{
extern(Windows):
	deprecated("PlayToSourceWithPreferredSourceUri may be altered or unavailable for releases after Windows 10. Instead, use CastingSource.")
	HRESULT get_PreferredSourceUri(Windows.Foundation.Uri* return_value);
	deprecated("PlayToSourceWithPreferredSourceUri may be altered or unavailable for releases after Windows 10. Instead, use CastingSource.")
	HRESULT set_PreferredSourceUri(Windows.Foundation.Uri value);
}

@uuid("0f5661ae-2c88-4cca-8540-d586095d13a5")
@WinrtFactory("Windows.Media.PlayTo.PlaybackRateChangeRequestedEventArgs")
interface IPlaybackRateChangeRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Rate(double* return_value);
}

@uuid("fb3f3a96-7aa6-4a8b-86e7-54f6c6d34f64")
@WinrtFactory("Windows.Media.PlayTo.SourceChangeRequestedEventArgs")
interface ISourceChangeRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Stream(Windows.Storage.Streams.IRandomAccessStreamWithContentType* return_value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT get_Author(HSTRING* return_value);
	HRESULT get_Album(HSTRING* return_value);
	HRESULT get_Genre(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_Date(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT get_Rating(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
}

@uuid("6f026d5c-cf75-4c2b-913e-6d7c6c329179")
@WinrtFactory("Windows.Media.PlayTo.VolumeChangeRequestedEventArgs")
interface IVolumeChangeRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Volume(double* return_value);
}

interface CurrentTimeChangeRequestedEventArgs : Windows.Media.PlayTo.ICurrentTimeChangeRequestedEventArgs
{
extern(Windows):
	final Windows.Foundation.TimeSpan Time()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Media.PlayTo.ICurrentTimeChangeRequestedEventArgs)this.asInterface(uuid("99711324-edc7-4bf5-91f6-3c8627db59e5"))).get_Time(&_ret));
		return _ret;
	}
}

interface MuteChangeRequestedEventArgs : Windows.Media.PlayTo.IMuteChangeRequestedEventArgs
{
extern(Windows):
	final bool Mute()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IMuteChangeRequestedEventArgs)this.asInterface(uuid("e4b4f5f6-af1f-4f1e-b437-7da32400e1d4"))).get_Mute(&_ret));
		return _ret;
	}
}

interface PlayToConnection : Windows.Media.PlayTo.IPlayToConnection
{
extern(Windows):
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	final Windows.Media.PlayTo.PlayToConnectionState State()
	{
		Windows.Media.PlayTo.PlayToConnectionState _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToConnection)this.asInterface(uuid("112fbfc8-f235-4fde-8d41-9bf27c9e9a40"))).get_State(&_ret));
		return _ret;
	}
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	final EventRegistrationToken OnStateChanged(void delegate(Windows.Media.PlayTo.PlayToConnection, Windows.Media.PlayTo.PlayToConnectionStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToConnection)this.asInterface(uuid("112fbfc8-f235-4fde-8d41-9bf27c9e9a40"))).add_StateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToConnection, Windows.Media.PlayTo.PlayToConnectionStateChangedEventArgs), Windows.Media.PlayTo.PlayToConnection, Windows.Media.PlayTo.PlayToConnectionStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	final void removeStateChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToConnection)this.asInterface(uuid("112fbfc8-f235-4fde-8d41-9bf27c9e9a40"))).remove_StateChanged(token));
	}
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	final EventRegistrationToken OnTransferred(void delegate(Windows.Media.PlayTo.PlayToConnection, Windows.Media.PlayTo.PlayToConnectionTransferredEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToConnection)this.asInterface(uuid("112fbfc8-f235-4fde-8d41-9bf27c9e9a40"))).add_Transferred(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToConnection, Windows.Media.PlayTo.PlayToConnectionTransferredEventArgs), Windows.Media.PlayTo.PlayToConnection, Windows.Media.PlayTo.PlayToConnectionTransferredEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	final void removeTransferred(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToConnection)this.asInterface(uuid("112fbfc8-f235-4fde-8d41-9bf27c9e9a40"))).remove_Transferred(token));
	}
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	final EventRegistrationToken OnError(void delegate(Windows.Media.PlayTo.PlayToConnection, Windows.Media.PlayTo.PlayToConnectionErrorEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToConnection)this.asInterface(uuid("112fbfc8-f235-4fde-8d41-9bf27c9e9a40"))).add_Error(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToConnection, Windows.Media.PlayTo.PlayToConnectionErrorEventArgs), Windows.Media.PlayTo.PlayToConnection, Windows.Media.PlayTo.PlayToConnectionErrorEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	final void removeError(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToConnection)this.asInterface(uuid("112fbfc8-f235-4fde-8d41-9bf27c9e9a40"))).remove_Error(token));
	}
}

interface PlayToConnectionErrorEventArgs : Windows.Media.PlayTo.IPlayToConnectionErrorEventArgs
{
extern(Windows):
	deprecated("PlayToConnectionErrorEventArgs may be altered or unavailable for releases after Windows 10. Instead, use CastingConnectionErrorOccurredEventArgs.")
	final Windows.Media.PlayTo.PlayToConnectionError Code()
	{
		Windows.Media.PlayTo.PlayToConnectionError _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToConnectionErrorEventArgs)this.asInterface(uuid("bf5eada6-88e6-445f-9d40-d9b9f8939896"))).get_Code(&_ret));
		return _ret;
	}
	deprecated("PlayToConnectionErrorEventArgs may be altered or unavailable for releases after Windows 10. Instead, use CastingConnectionErrorOccurredEventArgs.")
	final wstring Message()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToConnectionErrorEventArgs)this.asInterface(uuid("bf5eada6-88e6-445f-9d40-d9b9f8939896"))).get_Message(&_ret));
		return hstring(_ret).d_str;
	}
}

interface PlayToConnectionStateChangedEventArgs : Windows.Media.PlayTo.IPlayToConnectionStateChangedEventArgs
{
extern(Windows):
	deprecated("PlayToConnectionStateChangedEventArgs may be altered or unavailable for releases after Windows 10.")
	final Windows.Media.PlayTo.PlayToConnectionState PreviousState()
	{
		Windows.Media.PlayTo.PlayToConnectionState _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToConnectionStateChangedEventArgs)this.asInterface(uuid("68c4b50f-0c20-4980-8602-58c62238d423"))).get_PreviousState(&_ret));
		return _ret;
	}
	deprecated("PlayToConnectionStateChangedEventArgs may be altered or unavailable for releases after Windows 10.")
	final Windows.Media.PlayTo.PlayToConnectionState CurrentState()
	{
		Windows.Media.PlayTo.PlayToConnectionState _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToConnectionStateChangedEventArgs)this.asInterface(uuid("68c4b50f-0c20-4980-8602-58c62238d423"))).get_CurrentState(&_ret));
		return _ret;
	}
}

interface PlayToConnectionTransferredEventArgs : Windows.Media.PlayTo.IPlayToConnectionTransferredEventArgs
{
extern(Windows):
	deprecated("PlayToConnectionTransferredEventArgs may be altered or unavailable for releases after Windows 10.")
	final Windows.Media.PlayTo.PlayToSource PreviousSource()
	{
		Windows.Media.PlayTo.PlayToSource _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToConnectionTransferredEventArgs)this.asInterface(uuid("fae3193a-0683-47d9-8df0-18cbb48984d8"))).get_PreviousSource(&_ret));
		return _ret;
	}
	deprecated("PlayToConnectionTransferredEventArgs may be altered or unavailable for releases after Windows 10.")
	final Windows.Media.PlayTo.PlayToSource CurrentSource()
	{
		Windows.Media.PlayTo.PlayToSource _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToConnectionTransferredEventArgs)this.asInterface(uuid("fae3193a-0683-47d9-8df0-18cbb48984d8"))).get_CurrentSource(&_ret));
		return _ret;
	}
}

interface PlayToManager : Windows.Media.PlayTo.IPlayToManager
{
extern(Windows):
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	final EventRegistrationToken OnSourceRequested(void delegate(Windows.Media.PlayTo.PlayToManager, Windows.Media.PlayTo.PlayToSourceRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToManager)this.asInterface(uuid("f56a206e-1b77-42ef-8f0d-b949f8d9b260"))).add_SourceRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToManager, Windows.Media.PlayTo.PlayToSourceRequestedEventArgs), Windows.Media.PlayTo.PlayToManager, Windows.Media.PlayTo.PlayToSourceRequestedEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	final void removeSourceRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToManager)this.asInterface(uuid("f56a206e-1b77-42ef-8f0d-b949f8d9b260"))).remove_SourceRequested(token));
	}
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	final EventRegistrationToken OnSourceSelected(void delegate(Windows.Media.PlayTo.PlayToManager, Windows.Media.PlayTo.PlayToSourceSelectedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToManager)this.asInterface(uuid("f56a206e-1b77-42ef-8f0d-b949f8d9b260"))).add_SourceSelected(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToManager, Windows.Media.PlayTo.PlayToSourceSelectedEventArgs), Windows.Media.PlayTo.PlayToManager, Windows.Media.PlayTo.PlayToSourceSelectedEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	final void removeSourceSelected(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToManager)this.asInterface(uuid("f56a206e-1b77-42ef-8f0d-b949f8d9b260"))).remove_SourceSelected(token));
	}
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	final void DefaultSourceSelection(bool value)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToManager)this.asInterface(uuid("f56a206e-1b77-42ef-8f0d-b949f8d9b260"))).set_DefaultSourceSelection(value));
	}
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	final bool DefaultSourceSelection()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToManager)this.asInterface(uuid("f56a206e-1b77-42ef-8f0d-b949f8d9b260"))).get_DefaultSourceSelection(&_ret));
		return _ret;
	}

	private static Windows.Media.PlayTo.IPlayToManagerStatics _staticInstance;
	public static Windows.Media.PlayTo.IPlayToManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.PlayTo.IPlayToManagerStatics);
		return _staticInstance;
	}
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	static Windows.Media.PlayTo.PlayToManager GetForCurrentView()
	{
		Windows.Media.PlayTo.PlayToManager _ret;
		Debug.OK(staticInstance.abi_GetForCurrentView(&_ret));
		return _ret;
	}
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	static void ShowPlayToUI()
	{
		Debug.OK(staticInstance.abi_ShowPlayToUI());
	}
}

interface PlayToReceiver : Windows.Media.PlayTo.IPlayToReceiver
{
extern(Windows):
	final EventRegistrationToken OnPlayRequested(void delegate(Windows.Media.PlayTo.PlayToReceiver, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).add_PlayRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, IInspectable), Windows.Media.PlayTo.PlayToReceiver, IInspectable)(fn), &tok));
		return tok;
	}
	final void removePlayRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).remove_PlayRequested(token));
	}
	final EventRegistrationToken OnPauseRequested(void delegate(Windows.Media.PlayTo.PlayToReceiver, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).add_PauseRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, IInspectable), Windows.Media.PlayTo.PlayToReceiver, IInspectable)(fn), &tok));
		return tok;
	}
	final void removePauseRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).remove_PauseRequested(token));
	}
	final EventRegistrationToken OnSourceChangeRequested(void delegate(Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.SourceChangeRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).add_SourceChangeRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.SourceChangeRequestedEventArgs), Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.SourceChangeRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSourceChangeRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).remove_SourceChangeRequested(token));
	}
	final EventRegistrationToken OnPlaybackRateChangeRequested(void delegate(Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.PlaybackRateChangeRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).add_PlaybackRateChangeRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.PlaybackRateChangeRequestedEventArgs), Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.PlaybackRateChangeRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePlaybackRateChangeRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).remove_PlaybackRateChangeRequested(token));
	}
	final EventRegistrationToken OnCurrentTimeChangeRequested(void delegate(Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.CurrentTimeChangeRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).add_CurrentTimeChangeRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.CurrentTimeChangeRequestedEventArgs), Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.CurrentTimeChangeRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCurrentTimeChangeRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).remove_CurrentTimeChangeRequested(token));
	}
	final EventRegistrationToken OnMuteChangeRequested(void delegate(Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.MuteChangeRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).add_MuteChangeRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.MuteChangeRequestedEventArgs), Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.MuteChangeRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMuteChangeRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).remove_MuteChangeRequested(token));
	}
	final EventRegistrationToken OnVolumeChangeRequested(void delegate(Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.VolumeChangeRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).add_VolumeChangeRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.VolumeChangeRequestedEventArgs), Windows.Media.PlayTo.PlayToReceiver, Windows.Media.PlayTo.VolumeChangeRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeVolumeChangeRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).remove_VolumeChangeRequested(token));
	}
	final EventRegistrationToken OnTimeUpdateRequested(void delegate(Windows.Media.PlayTo.PlayToReceiver, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).add_TimeUpdateRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, IInspectable), Windows.Media.PlayTo.PlayToReceiver, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeTimeUpdateRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).remove_TimeUpdateRequested(token));
	}
	final EventRegistrationToken OnStopRequested(void delegate(Windows.Media.PlayTo.PlayToReceiver, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).add_StopRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver, IInspectable), Windows.Media.PlayTo.PlayToReceiver, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeStopRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).remove_StopRequested(token));
	}
	final void NotifyVolumeChange(double volume, bool mute)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).abi_NotifyVolumeChange(volume, mute));
	}
	final void NotifyRateChange(double rate)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).abi_NotifyRateChange(rate));
	}
	final void NotifyLoadedMetadata()
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).abi_NotifyLoadedMetadata());
	}
	final void NotifyTimeUpdate(Windows.Foundation.TimeSpan currentTime)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).abi_NotifyTimeUpdate(currentTime));
	}
	final void NotifyDurationChange(Windows.Foundation.TimeSpan duration)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).abi_NotifyDurationChange(duration));
	}
	final void NotifySeeking()
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).abi_NotifySeeking());
	}
	final void NotifySeeked()
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).abi_NotifySeeked());
	}
	final void NotifyPaused()
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).abi_NotifyPaused());
	}
	final void NotifyPlaying()
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).abi_NotifyPlaying());
	}
	final void NotifyEnded()
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).abi_NotifyEnded());
	}
	final void NotifyError()
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).abi_NotifyError());
	}
	final void NotifyStopped()
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).abi_NotifyStopped());
	}
	final wstring FriendlyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).get_FriendlyName(&_ret));
		return hstring(_ret).d_str;
	}
	final void FriendlyName(wstring value)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).set_FriendlyName(hstring(value).handle));
	}
	final void SupportsImage(bool value)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).set_SupportsImage(value));
	}
	final bool SupportsImage()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).get_SupportsImage(&_ret));
		return _ret;
	}
	final void SupportsAudio(bool value)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).set_SupportsAudio(value));
	}
	final bool SupportsAudio()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).get_SupportsAudio(&_ret));
		return _ret;
	}
	final void SupportsVideo(bool value)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).set_SupportsVideo(value));
	}
	final bool SupportsVideo()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).get_SupportsVideo(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IPropertySet Properties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StartAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).abi_StartAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StopAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToReceiver)this.asInterface(uuid("ac15cf47-a162-4aa6-af1b-3aa35f3b9069"))).abi_StopAsync(&_ret));
		return _ret;
	}
	static PlayToReceiver New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PlayToReceiver).abi_ActivateInstance(&ret));
		return cast(PlayToReceiver) ret;
	}
}

interface PlayToSource : Windows.Media.PlayTo.IPlayToSource, Windows.Media.PlayTo.IPlayToSourceWithPreferredSourceUri
{
extern(Windows):
	deprecated("PlayToSource may be altered or unavailable for releases after Windows 10. Instead, use CastingSource.")
	final Windows.Media.PlayTo.PlayToConnection Connection()
	{
		Windows.Media.PlayTo.PlayToConnection _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSource)this.asInterface(uuid("7f138a08-fbb7-4b09-8356-aa5f4e335c31"))).get_Connection(&_ret));
		return _ret;
	}
	deprecated("PlayToSource may be altered or unavailable for releases after Windows 10. Instead, use CastingSource.")
	final Windows.Media.PlayTo.PlayToSource Next()
	{
		Windows.Media.PlayTo.PlayToSource _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSource)this.asInterface(uuid("7f138a08-fbb7-4b09-8356-aa5f4e335c31"))).get_Next(&_ret));
		return _ret;
	}
	deprecated("PlayToSource may be altered or unavailable for releases after Windows 10. Instead, use CastingSource.")
	final void Next(Windows.Media.PlayTo.PlayToSource value)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSource)this.asInterface(uuid("7f138a08-fbb7-4b09-8356-aa5f4e335c31"))).set_Next(value));
	}
	deprecated("PlayToSource may be altered or unavailable for releases after Windows 10. Instead, use CastingSource.")
	final void PlayNext()
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSource)this.asInterface(uuid("7f138a08-fbb7-4b09-8356-aa5f4e335c31"))).abi_PlayNext());
	}
	deprecated("PlayToSourceWithPreferredSourceUri may be altered or unavailable for releases after Windows 10. Instead, use CastingSource.")
	final Windows.Foundation.Uri PreferredSourceUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSourceWithPreferredSourceUri)this.asInterface(uuid("aab253eb-3301-4dc4-afba-b2f2ed9635a0"))).get_PreferredSourceUri(&_ret));
		return _ret;
	}
	deprecated("PlayToSourceWithPreferredSourceUri may be altered or unavailable for releases after Windows 10. Instead, use CastingSource.")
	final void PreferredSourceUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSourceWithPreferredSourceUri)this.asInterface(uuid("aab253eb-3301-4dc4-afba-b2f2ed9635a0"))).set_PreferredSourceUri(value));
	}
}

interface PlayToSourceDeferral : Windows.Media.PlayTo.IPlayToSourceDeferral
{
extern(Windows):
	deprecated("PlayToSourceDeferral may be altered or unavailable for releases after Windows 10.")
	final void Complete()
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSourceDeferral)this.asInterface(uuid("4100891d-278e-4f29-859b-a9e501053e7d"))).abi_Complete());
	}
}

interface PlayToSourceRequest : Windows.Media.PlayTo.IPlayToSourceRequest
{
extern(Windows):
	deprecated("PlayToSourceRequest may be altered or unavailable for releases after Windows 10.")
	final Windows.Foundation.DateTime Deadline()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSourceRequest)this.asInterface(uuid("f8584665-64f4-44a0-ac0d-468d2b8fda83"))).get_Deadline(&_ret));
		return _ret;
	}
	deprecated("PlayToSourceRequest may be altered or unavailable for releases after Windows 10.")
	final void DisplayErrorString(wstring errorString)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSourceRequest)this.asInterface(uuid("f8584665-64f4-44a0-ac0d-468d2b8fda83"))).abi_DisplayErrorString(hstring(errorString).handle));
	}
	deprecated("PlayToSourceRequest may be altered or unavailable for releases after Windows 10.")
	final Windows.Media.PlayTo.PlayToSourceDeferral GetDeferral()
	{
		Windows.Media.PlayTo.PlayToSourceDeferral _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSourceRequest)this.asInterface(uuid("f8584665-64f4-44a0-ac0d-468d2b8fda83"))).abi_GetDeferral(&_ret));
		return _ret;
	}
	deprecated("PlayToSourceRequest may be altered or unavailable for releases after Windows 10.")
	final void SetSource(Windows.Media.PlayTo.PlayToSource value)
	{
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSourceRequest)this.asInterface(uuid("f8584665-64f4-44a0-ac0d-468d2b8fda83"))).abi_SetSource(value));
	}
}

interface PlayToSourceRequestedEventArgs : Windows.Media.PlayTo.IPlayToSourceRequestedEventArgs
{
extern(Windows):
	deprecated("PlayToSourceRequestedEventArgs may be altered or unavailable for releases after Windows 10.")
	final Windows.Media.PlayTo.PlayToSourceRequest SourceRequest()
	{
		Windows.Media.PlayTo.PlayToSourceRequest _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSourceRequestedEventArgs)this.asInterface(uuid("c5cdc330-29df-4ec6-9da9-9fbdfcfc1b3e"))).get_SourceRequest(&_ret));
		return _ret;
	}
}

interface PlayToSourceSelectedEventArgs : Windows.Media.PlayTo.IPlayToSourceSelectedEventArgs
{
extern(Windows):
	deprecated("PlayToSourceSelectedEventArgs may be altered or unavailable for releases after Windows 10.")
	final wstring FriendlyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSourceSelectedEventArgs)this.asInterface(uuid("0c9d8511-5202-4dcb-8c67-abda12bb3c12"))).get_FriendlyName(&_ret));
		return hstring(_ret).d_str;
	}
	deprecated("PlayToSourceSelectedEventArgs may be altered or unavailable for releases after Windows 10.")
	final Windows.Storage.Streams.IRandomAccessStreamWithContentType Icon()
	{
		Windows.Storage.Streams.IRandomAccessStreamWithContentType _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSourceSelectedEventArgs)this.asInterface(uuid("0c9d8511-5202-4dcb-8c67-abda12bb3c12"))).get_Icon(&_ret));
		return _ret;
	}
	deprecated("PlayToSourceSelectedEventArgs may be altered or unavailable for releases after Windows 10.")
	final bool SupportsImage()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSourceSelectedEventArgs)this.asInterface(uuid("0c9d8511-5202-4dcb-8c67-abda12bb3c12"))).get_SupportsImage(&_ret));
		return _ret;
	}
	deprecated("PlayToSourceSelectedEventArgs may be altered or unavailable for releases after Windows 10.")
	final bool SupportsAudio()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSourceSelectedEventArgs)this.asInterface(uuid("0c9d8511-5202-4dcb-8c67-abda12bb3c12"))).get_SupportsAudio(&_ret));
		return _ret;
	}
	deprecated("PlayToSourceSelectedEventArgs may be altered or unavailable for releases after Windows 10.")
	final bool SupportsVideo()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlayToSourceSelectedEventArgs)this.asInterface(uuid("0c9d8511-5202-4dcb-8c67-abda12bb3c12"))).get_SupportsVideo(&_ret));
		return _ret;
	}
}

interface PlaybackRateChangeRequestedEventArgs : Windows.Media.PlayTo.IPlaybackRateChangeRequestedEventArgs
{
extern(Windows):
	final double Rate()
	{
		double _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IPlaybackRateChangeRequestedEventArgs)this.asInterface(uuid("0f5661ae-2c88-4cca-8540-d586095d13a5"))).get_Rate(&_ret));
		return _ret;
	}
}

interface SourceChangeRequestedEventArgs : Windows.Media.PlayTo.ISourceChangeRequestedEventArgs
{
extern(Windows):
	final Windows.Storage.Streams.IRandomAccessStreamWithContentType Stream()
	{
		Windows.Storage.Streams.IRandomAccessStreamWithContentType _ret;
		Debug.OK((cast(Windows.Media.PlayTo.ISourceChangeRequestedEventArgs)this.asInterface(uuid("fb3f3a96-7aa6-4a8b-86e7-54f6c6d34f64"))).get_Stream(&_ret));
		return _ret;
	}
	final wstring Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.PlayTo.ISourceChangeRequestedEventArgs)this.asInterface(uuid("fb3f3a96-7aa6-4a8b-86e7-54f6c6d34f64"))).get_Title(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Author()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.PlayTo.ISourceChangeRequestedEventArgs)this.asInterface(uuid("fb3f3a96-7aa6-4a8b-86e7-54f6c6d34f64"))).get_Author(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Album()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.PlayTo.ISourceChangeRequestedEventArgs)this.asInterface(uuid("fb3f3a96-7aa6-4a8b-86e7-54f6c6d34f64"))).get_Album(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Genre()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.PlayTo.ISourceChangeRequestedEventArgs)this.asInterface(uuid("fb3f3a96-7aa6-4a8b-86e7-54f6c6d34f64"))).get_Genre(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.PlayTo.ISourceChangeRequestedEventArgs)this.asInterface(uuid("fb3f3a96-7aa6-4a8b-86e7-54f6c6d34f64"))).get_Description(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) Date()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.Media.PlayTo.ISourceChangeRequestedEventArgs)this.asInterface(uuid("fb3f3a96-7aa6-4a8b-86e7-54f6c6d34f64"))).get_Date(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Thumbnail()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.Media.PlayTo.ISourceChangeRequestedEventArgs)this.asInterface(uuid("fb3f3a96-7aa6-4a8b-86e7-54f6c6d34f64"))).get_Thumbnail(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) Rating()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK((cast(Windows.Media.PlayTo.ISourceChangeRequestedEventArgs)this.asInterface(uuid("fb3f3a96-7aa6-4a8b-86e7-54f6c6d34f64"))).get_Rating(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK((cast(Windows.Media.PlayTo.ISourceChangeRequestedEventArgs)this.asInterface(uuid("fb3f3a96-7aa6-4a8b-86e7-54f6c6d34f64"))).get_Properties(&_ret));
		return _ret;
	}
}

interface VolumeChangeRequestedEventArgs : Windows.Media.PlayTo.IVolumeChangeRequestedEventArgs
{
extern(Windows):
	final double Volume()
	{
		double _ret;
		Debug.OK((cast(Windows.Media.PlayTo.IVolumeChangeRequestedEventArgs)this.asInterface(uuid("6f026d5c-cf75-4c2b-913e-6d7c6c329179"))).get_Volume(&_ret));
		return _ret;
	}
}

enum PlayToConnectionError
{
	None = 0,
	DeviceNotResponding = 1,
	DeviceError = 2,
	DeviceLocked = 3,
	ProtectedPlaybackFailed = 4
}

enum PlayToConnectionState
{
	Disconnected = 0,
	Connected = 1,
	Rendering = 2
}