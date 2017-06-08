module Windows.Media.PlayTo;

import dwinrt;

@uuid("99711324-edc7-4bf5-91f6-3c8627db59e5")
@WinrtFactory("Windows.Media.PlayTo.CurrentTimeChangeRequestedEventArgs")
interface ICurrentTimeChangeRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Time(Windows.Foundation.TimeSpan* return_value);
}

@uuid("e4b4f5f6-af1f-4f1e-b437-7da32400e1d4")
@WinrtFactory("Windows.Media.PlayTo.MuteChangeRequestedEventArgs")
interface IMuteChangeRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Mute(bool* return_value);
}

@uuid("112fbfc8-f235-4fde-8d41-9bf27c9e9a40")
@WinrtFactory("Windows.Media.PlayTo.PlayToConnection")
interface IPlayToConnection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	HRESULT get_State(Windows.Media.PlayTo.PlayToConnectionState* return_value);
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	HRESULT add_StateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToConnection*,Windows.Media.PlayTo.PlayToConnectionStateChangedEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	HRESULT remove_StateChanged(EventRegistrationToken token);
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	HRESULT add_Transferred(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToConnection*,Windows.Media.PlayTo.PlayToConnectionTransferredEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	HRESULT remove_Transferred(EventRegistrationToken token);
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	HRESULT add_Error(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToConnection*,Windows.Media.PlayTo.PlayToConnectionErrorEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("PlayToConnection may be altered or unavailable for releases after Windows 10. Instead, use CastingConnection.")
	HRESULT remove_Error(EventRegistrationToken token);
}

@uuid("bf5eada6-88e6-445f-9d40-d9b9f8939896")
@WinrtFactory("Windows.Media.PlayTo.PlayToConnectionErrorEventArgs")
interface IPlayToConnectionErrorEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	HRESULT add_SourceRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToManager*,Windows.Media.PlayTo.PlayToSourceRequestedEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	HRESULT remove_SourceRequested(EventRegistrationToken token);
	deprecated("PlayToManager may be altered or unavailable for releases after Windows 10.")
	HRESULT add_SourceSelected(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToManager*,Windows.Media.PlayTo.PlayToSourceSelectedEventArgs*) handler, EventRegistrationToken* return_token);
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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_PlayRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_PlayRequested(EventRegistrationToken token);
	HRESULT add_PauseRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_PauseRequested(EventRegistrationToken token);
	HRESULT add_SourceChangeRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver*,Windows.Media.PlayTo.SourceChangeRequestedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_SourceChangeRequested(EventRegistrationToken token);
	HRESULT add_PlaybackRateChangeRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver*,Windows.Media.PlayTo.PlaybackRateChangeRequestedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_PlaybackRateChangeRequested(EventRegistrationToken token);
	HRESULT add_CurrentTimeChangeRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver*,Windows.Media.PlayTo.CurrentTimeChangeRequestedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_CurrentTimeChangeRequested(EventRegistrationToken token);
	HRESULT add_MuteChangeRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver*,Windows.Media.PlayTo.MuteChangeRequestedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_MuteChangeRequested(EventRegistrationToken token);
	HRESULT add_VolumeChangeRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver*,Windows.Media.PlayTo.VolumeChangeRequestedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_VolumeChangeRequested(EventRegistrationToken token);
	HRESULT add_TimeUpdateRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_TimeUpdateRequested(EventRegistrationToken token);
	HRESULT add_StopRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.PlayTo.PlayToReceiver*,IInspectable*) handler, EventRegistrationToken* return_token);
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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PlayToSourceDeferral may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_Complete();
}

@uuid("f8584665-64f4-44a0-ac0d-468d2b8fda83")
@WinrtFactory("Windows.Media.PlayTo.PlayToSourceRequest")
interface IPlayToSourceRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PlayToSourceRequestedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_SourceRequest(Windows.Media.PlayTo.PlayToSourceRequest* return_value);
}

@uuid("0c9d8511-5202-4dcb-8c67-abda12bb3c12")
@WinrtFactory("Windows.Media.PlayTo.PlayToSourceSelectedEventArgs")
interface IPlayToSourceSelectedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Rate(double* return_value);
}

@uuid("fb3f3a96-7aa6-4a8b-86e7-54f6c6d34f64")
@WinrtFactory("Windows.Media.PlayTo.SourceChangeRequestedEventArgs")
interface ISourceChangeRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING,IInspectable*)* return_value);
}

@uuid("6f026d5c-cf75-4c2b-913e-6d7c6c329179")
@WinrtFactory("Windows.Media.PlayTo.VolumeChangeRequestedEventArgs")
interface IVolumeChangeRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Volume(double* return_value);
}

interface CurrentTimeChangeRequestedEventArgs
{
}

interface MuteChangeRequestedEventArgs
{
}

interface PlayToConnection
{
}

interface PlayToConnectionErrorEventArgs
{
}

interface PlayToConnectionStateChangedEventArgs
{
}

interface PlayToConnectionTransferredEventArgs
{
}

interface PlayToManager
{
}

interface PlayToReceiver
{
}

interface PlayToSource
{
}

interface PlayToSourceDeferral
{
}

interface PlayToSourceRequest
{
}

interface PlayToSourceRequestedEventArgs
{
}

interface PlayToSourceSelectedEventArgs
{
}

interface PlaybackRateChangeRequestedEventArgs
{
}

interface SourceChangeRequestedEventArgs
{
}

interface VolumeChangeRequestedEventArgs
{
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