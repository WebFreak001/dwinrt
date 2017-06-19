module Windows.Media;

import dwinrt;

struct MediaTimeRange
{
	Windows.Foundation.TimeSpan Start;
	Windows.Foundation.TimeSpan End;
}

@uuid("35175827-724b-4c6a-b130-f6537f9ae0d0")
@WinrtFactory("Windows.Media.AudioBuffer")
interface IAudioBuffer_Base : IInspectable
{
extern(Windows):
	HRESULT get_Capacity(UINT32* return_value);
	HRESULT get_Length(UINT32* return_value);
	HRESULT set_Length(UINT32 value);
}
@uuid("35175827-724b-4c6a-b130-f6537f9ae0d0")
@WinrtFactory("Windows.Media.AudioBuffer")
interface IAudioBuffer : IAudioBuffer_Base, Windows.Foundation.IMemoryBuffer, Windows.Foundation.IClosable {}

@uuid("e36ac304-aab2-4277-9ed0-43cedf8e29c6")
@WinrtFactory("Windows.Media.AudioFrame")
interface IAudioFrame_Base : IInspectable
{
extern(Windows):
	HRESULT abi_LockBuffer(Windows.Media.AudioBufferAccessMode mode, Windows.Media.AudioBuffer* return_value);
}
@uuid("e36ac304-aab2-4277-9ed0-43cedf8e29c6")
@WinrtFactory("Windows.Media.AudioFrame")
interface IAudioFrame : IAudioFrame_Base, Windows.Media.IMediaFrame, Windows.Foundation.IClosable {}

@uuid("91a90ade-2422-40a6-b9ad-30d02404317d")
@WinrtFactory("Windows.Media.AudioFrame")
interface IAudioFrameFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(UINT32 capacity, Windows.Media.AudioFrame* return_value);
}

@uuid("ea137efa-d852-438e-882b-c990109a78f4")
@WinrtFactory("Windows.Media.AutoRepeatModeChangeRequestedEventArgs")
interface IAutoRepeatModeChangeRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_RequestedAutoRepeatMode(Windows.Media.MediaPlaybackAutoRepeatMode* return_value);
}

@uuid("cd0bc7ef-54e7-411f-9933-f0e98b0a96d2")
@WinrtFactory("Windows.Media.ImageDisplayProperties")
interface IImageDisplayProperties : IInspectable
{
extern(Windows):
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_Subtitle(HSTRING* return_value);
	HRESULT set_Subtitle(HSTRING value);
}

@uuid("98f1fbe1-7a8d-42cb-b6fe-8fe698264f13")
@WinrtFactory("Windows.Media.MediaControl")
interface IMediaControl : IInspectable
{
extern(Windows):
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT add_SoundLevelChanged(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT remove_SoundLevelChanged(EventRegistrationToken cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT add_PlayPressed(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT remove_PlayPressed(EventRegistrationToken cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT add_PausePressed(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT remove_PausePressed(EventRegistrationToken cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT add_StopPressed(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT remove_StopPressed(EventRegistrationToken cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT add_PlayPauseTogglePressed(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT remove_PlayPauseTogglePressed(EventRegistrationToken cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT add_RecordPressed(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT remove_RecordPressed(EventRegistrationToken cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT add_NextTrackPressed(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT remove_NextTrackPressed(EventRegistrationToken cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT add_PreviousTrackPressed(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT remove_PreviousTrackPressed(EventRegistrationToken cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT add_FastForwardPressed(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT remove_FastForwardPressed(EventRegistrationToken cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT add_RewindPressed(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT remove_RewindPressed(EventRegistrationToken cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT add_ChannelUpPressed(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT remove_ChannelUpPressed(EventRegistrationToken cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT add_ChannelDownPressed(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT remove_ChannelDownPressed(EventRegistrationToken cookie);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT get_SoundLevel(Windows.Media.SoundLevel* return_value);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT set_TrackName(HSTRING value);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT get_TrackName(HSTRING* return_value);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT set_ArtistName(HSTRING value);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT get_ArtistName(HSTRING* return_value);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT set_IsPlaying(bool value);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT get_IsPlaying(bool* return_value);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT set_AlbumArt(Windows.Foundation.Uri value);
	deprecated("MediaControl may be altered or unavailable for releases after Windows 8.1. Instead, use SystemMediaTransportControls.")
	HRESULT get_AlbumArt(Windows.Foundation.Uri* return_value);
}

@uuid("07915118-45df-442b-8a3f-f7826a6370ab")
interface IMediaExtension : IInspectable
{
extern(Windows):
	HRESULT abi_SetProperties(Windows.Foundation.Collections.IPropertySet configuration);
}

@uuid("4a25eaf5-242d-4dfb-97f4-69b7c42576ff")
@WinrtFactory("Windows.Media.MediaExtensionManager")
interface IMediaExtensionManager : IInspectable
{
extern(Windows):
	HRESULT abi_RegisterSchemeHandler(HSTRING activatableClassId, HSTRING scheme);
	HRESULT abi_RegisterSchemeHandlerWithSettings(HSTRING activatableClassId, HSTRING scheme, Windows.Foundation.Collections.IPropertySet configuration);
	HRESULT abi_RegisterByteStreamHandler(HSTRING activatableClassId, HSTRING fileExtension, HSTRING mimeType);
	HRESULT abi_RegisterByteStreamHandlerWithSettings(HSTRING activatableClassId, HSTRING fileExtension, HSTRING mimeType, Windows.Foundation.Collections.IPropertySet configuration);
	HRESULT abi_RegisterAudioDecoder(HSTRING activatableClassId, GUID inputSubtype, GUID outputSubtype);
	HRESULT abi_RegisterAudioDecoderWithSettings(HSTRING activatableClassId, GUID inputSubtype, GUID outputSubtype, Windows.Foundation.Collections.IPropertySet configuration);
	HRESULT abi_RegisterAudioEncoder(HSTRING activatableClassId, GUID inputSubtype, GUID outputSubtype);
	HRESULT abi_RegisterAudioEncoderWithSettings(HSTRING activatableClassId, GUID inputSubtype, GUID outputSubtype, Windows.Foundation.Collections.IPropertySet configuration);
	HRESULT abi_RegisterVideoDecoder(HSTRING activatableClassId, GUID inputSubtype, GUID outputSubtype);
	HRESULT abi_RegisterVideoDecoderWithSettings(HSTRING activatableClassId, GUID inputSubtype, GUID outputSubtype, Windows.Foundation.Collections.IPropertySet configuration);
	HRESULT abi_RegisterVideoEncoder(HSTRING activatableClassId, GUID inputSubtype, GUID outputSubtype);
	HRESULT abi_RegisterVideoEncoderWithSettings(HSTRING activatableClassId, GUID inputSubtype, GUID outputSubtype, Windows.Foundation.Collections.IPropertySet configuration);
}

@uuid("5bcebf47-4043-4fed-acaf-54ec29dfb1f7")
@WinrtFactory("Windows.Media.MediaExtensionManager")
interface IMediaExtensionManager2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_RegisterMediaExtensionForAppService(Windows.Media.IMediaExtension extension, Windows.ApplicationModel.AppService.AppServiceConnection connection);
}
@uuid("5bcebf47-4043-4fed-acaf-54ec29dfb1f7")
@WinrtFactory("Windows.Media.MediaExtensionManager")
interface IMediaExtensionManager2 : IMediaExtensionManager2_Base, Windows.Media.IMediaExtensionManager {}

@uuid("bfb52f8c-5943-47d8-8e10-05308aa5fbd0")
interface IMediaFrame_Base : IInspectable
{
extern(Windows):
	HRESULT get_Type(HSTRING* return_value);
	HRESULT get_IsReadOnly(bool* return_value);
	HRESULT set_RelativeTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT get_RelativeTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_SystemRelativeTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT get_SystemRelativeTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_Duration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT get_Duration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_IsDiscontinuous(bool value);
	HRESULT get_IsDiscontinuous(bool* return_value);
	HRESULT get_ExtendedProperties(Windows.Foundation.Collections.IPropertySet* return_value);
}
@uuid("bfb52f8c-5943-47d8-8e10-05308aa5fbd0")
interface IMediaFrame : IMediaFrame_Base, Windows.Foundation.IClosable {}

@uuid("1803def8-dca5-4b6f-9c20-e3d3c0643625")
interface IMediaMarker : IInspectable
{
extern(Windows):
	HRESULT get_Time(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_MediaMarkerType(HSTRING* return_value);
	HRESULT get_Text(HSTRING* return_value);
}

@uuid("bb198040-482f-4743-8832-45853821ece0")
@WinrtFactory("Windows.Media.MediaMarkerTypes")
interface IMediaMarkerTypesStatics : IInspectable
{
extern(Windows):
	HRESULT get_Bookmark(HSTRING* return_value);
}

@uuid("afeab189-f8dd-466e-aa10-920b52353fdf")
interface IMediaMarkers : IInspectable
{
extern(Windows):
	HRESULT get_Markers(Windows.Foundation.Collections.IVectorView!(Windows.Media.IMediaMarker)* return_value);
}

@uuid("eb8564ac-a351-4f4e-b4f0-9bf2408993db")
@WinrtFactory("Windows.Media.MediaProcessingTriggerDetails")
interface IMediaProcessingTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_Arguments(Windows.Foundation.Collections.ValueSet* return_value);
}

@uuid("8ed361f3-0b78-4360-bf71-0c841999ea1b")
@WinrtFactory("Windows.Media.MediaTimelineController")
interface IMediaTimelineController : IInspectable
{
extern(Windows):
	HRESULT abi_Start();
	HRESULT abi_Resume();
	HRESULT abi_Pause();
	HRESULT get_Position(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Position(Windows.Foundation.TimeSpan value);
	HRESULT get_ClockRate(double* return_value);
	HRESULT set_ClockRate(double value);
	HRESULT get_State(Windows.Media.MediaTimelineControllerState* return_value);
	HRESULT add_PositionChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.MediaTimelineController, IInspectable) positionChangedEventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_PositionChanged(EventRegistrationToken eventCookie);
	HRESULT add_StateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.MediaTimelineController, IInspectable) stateChangedEventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_StateChanged(EventRegistrationToken eventCookie);
}

@uuid("ef74ea38-9e72-4df9-8355-6e90c81bbadd")
@WinrtFactory("Windows.Media.MediaTimelineController")
interface IMediaTimelineController2 : IInspectable
{
extern(Windows):
	HRESULT get_Duration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_Duration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT get_IsLoopingEnabled(bool* return_value);
	HRESULT set_IsLoopingEnabled(bool value);
	HRESULT add_Failed(Windows.Foundation.TypedEventHandler!(Windows.Media.MediaTimelineController, Windows.Media.MediaTimelineControllerFailedEventArgs) eventHandler, EventRegistrationToken* return_token);
	HRESULT remove_Failed(EventRegistrationToken token);
	HRESULT add_Ended(Windows.Foundation.TypedEventHandler!(Windows.Media.MediaTimelineController, IInspectable) eventHandler, EventRegistrationToken* return_token);
	HRESULT remove_Ended(EventRegistrationToken token);
}

@uuid("8821f81d-3e77-43fb-be26-4fc87a044834")
@WinrtFactory("Windows.Media.MediaTimelineControllerFailedEventArgs")
interface IMediaTimelineControllerFailedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("6bbf0c59-d0a0-4d26-92a0-f978e1d18e7b")
@WinrtFactory("Windows.Media.MusicDisplayProperties")
interface IMusicDisplayProperties : IInspectable
{
extern(Windows):
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_AlbumArtist(HSTRING* return_value);
	HRESULT set_AlbumArtist(HSTRING value);
	HRESULT get_Artist(HSTRING* return_value);
	HRESULT set_Artist(HSTRING value);
}

@uuid("00368462-97d3-44b9-b00f-008afcefaf18")
@WinrtFactory("Windows.Media.MusicDisplayProperties")
interface IMusicDisplayProperties2 : IInspectable
{
extern(Windows):
	HRESULT get_AlbumTitle(HSTRING* return_value);
	HRESULT set_AlbumTitle(HSTRING value);
	HRESULT get_TrackNumber(UINT32* return_value);
	HRESULT set_TrackNumber(UINT32 value);
	HRESULT get_Genres(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("4db51ac1-0681-4e8c-9401-b8159d9eefc7")
@WinrtFactory("Windows.Media.MusicDisplayProperties")
interface IMusicDisplayProperties3 : IInspectable
{
extern(Windows):
	HRESULT get_AlbumTrackCount(UINT32* return_value);
	HRESULT set_AlbumTrackCount(UINT32 value);
}

@uuid("b4493f88-eb28-4961-9c14-335e44f3e125")
@WinrtFactory("Windows.Media.PlaybackPositionChangeRequestedEventArgs")
interface IPlaybackPositionChangeRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_RequestedPlaybackPosition(Windows.Foundation.TimeSpan* return_value);
}

@uuid("2ce2c41f-3cd6-4f77-9ba7-eb27c26a2140")
@WinrtFactory("Windows.Media.PlaybackRateChangeRequestedEventArgs")
interface IPlaybackRateChangeRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_RequestedPlaybackRate(double* return_value);
}

@uuid("49b593fe-4fd0-4666-a314-c0e01940d302")
@WinrtFactory("Windows.Media.ShuffleEnabledChangeRequestedEventArgs")
interface IShuffleEnabledChangeRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_RequestedShuffleEnabled(bool* return_value);
}

@uuid("99fa3ff4-1742-42a6-902e-087d41f965ec")
@WinrtFactory("Windows.Media.SystemMediaTransportControls")
interface ISystemMediaTransportControls : IInspectable
{
extern(Windows):
	HRESULT get_PlaybackStatus(Windows.Media.MediaPlaybackStatus* return_value);
	HRESULT set_PlaybackStatus(Windows.Media.MediaPlaybackStatus value);
	HRESULT get_DisplayUpdater(Windows.Media.SystemMediaTransportControlsDisplayUpdater* return_value);
	HRESULT get_SoundLevel(Windows.Media.SoundLevel* return_value);
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT set_IsEnabled(bool value);
	HRESULT get_IsPlayEnabled(bool* return_value);
	HRESULT set_IsPlayEnabled(bool value);
	HRESULT get_IsStopEnabled(bool* return_value);
	HRESULT set_IsStopEnabled(bool value);
	HRESULT get_IsPauseEnabled(bool* return_value);
	HRESULT set_IsPauseEnabled(bool value);
	HRESULT get_IsRecordEnabled(bool* return_value);
	HRESULT set_IsRecordEnabled(bool value);
	HRESULT get_IsFastForwardEnabled(bool* return_value);
	HRESULT set_IsFastForwardEnabled(bool value);
	HRESULT get_IsRewindEnabled(bool* return_value);
	HRESULT set_IsRewindEnabled(bool value);
	HRESULT get_IsPreviousEnabled(bool* return_value);
	HRESULT set_IsPreviousEnabled(bool value);
	HRESULT get_IsNextEnabled(bool* return_value);
	HRESULT set_IsNextEnabled(bool value);
	HRESULT get_IsChannelUpEnabled(bool* return_value);
	HRESULT set_IsChannelUpEnabled(bool value);
	HRESULT get_IsChannelDownEnabled(bool* return_value);
	HRESULT set_IsChannelDownEnabled(bool value);
	HRESULT add_ButtonPressed(Windows.Foundation.TypedEventHandler!(Windows.Media.SystemMediaTransportControls, Windows.Media.SystemMediaTransportControlsButtonPressedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ButtonPressed(EventRegistrationToken token);
	HRESULT add_PropertyChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.SystemMediaTransportControls, Windows.Media.SystemMediaTransportControlsPropertyChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PropertyChanged(EventRegistrationToken token);
}

@uuid("ea98d2f6-7f3c-4af2-a586-72889808efb1")
@WinrtFactory("Windows.Media.SystemMediaTransportControls")
interface ISystemMediaTransportControls2 : IInspectable
{
extern(Windows):
	HRESULT get_AutoRepeatMode(Windows.Media.MediaPlaybackAutoRepeatMode* return_value);
	HRESULT set_AutoRepeatMode(Windows.Media.MediaPlaybackAutoRepeatMode value);
	HRESULT get_ShuffleEnabled(bool* return_value);
	HRESULT set_ShuffleEnabled(bool value);
	HRESULT get_PlaybackRate(double* return_value);
	HRESULT set_PlaybackRate(double value);
	HRESULT abi_UpdateTimelineProperties(Windows.Media.SystemMediaTransportControlsTimelineProperties timelineProperties);
	HRESULT add_PlaybackPositionChangeRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.SystemMediaTransportControls, Windows.Media.PlaybackPositionChangeRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PlaybackPositionChangeRequested(EventRegistrationToken token);
	HRESULT add_PlaybackRateChangeRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.SystemMediaTransportControls, Windows.Media.PlaybackRateChangeRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PlaybackRateChangeRequested(EventRegistrationToken token);
	HRESULT add_ShuffleEnabledChangeRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.SystemMediaTransportControls, Windows.Media.ShuffleEnabledChangeRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ShuffleEnabledChangeRequested(EventRegistrationToken token);
	HRESULT add_AutoRepeatModeChangeRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.SystemMediaTransportControls, Windows.Media.AutoRepeatModeChangeRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AutoRepeatModeChangeRequested(EventRegistrationToken token);
}

@uuid("b7f47116-a56f-4dc8-9e11-92031f4a87c2")
@WinrtFactory("Windows.Media.SystemMediaTransportControlsButtonPressedEventArgs")
interface ISystemMediaTransportControlsButtonPressedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Button(Windows.Media.SystemMediaTransportControlsButton* return_value);
}

@uuid("8abbc53e-fa55-4ecf-ad8e-c984e5dd1550")
@WinrtFactory("Windows.Media.SystemMediaTransportControlsDisplayUpdater")
interface ISystemMediaTransportControlsDisplayUpdater : IInspectable
{
extern(Windows):
	HRESULT get_Type(Windows.Media.MediaPlaybackType* return_value);
	HRESULT set_Type(Windows.Media.MediaPlaybackType value);
	HRESULT get_AppMediaId(HSTRING* return_value);
	HRESULT set_AppMediaId(HSTRING value);
	HRESULT get_Thumbnail(Windows.Storage.Streams.RandomAccessStreamReference* return_value);
	HRESULT set_Thumbnail(Windows.Storage.Streams.RandomAccessStreamReference value);
	HRESULT get_MusicProperties(Windows.Media.MusicDisplayProperties* return_value);
	HRESULT get_VideoProperties(Windows.Media.VideoDisplayProperties* return_value);
	HRESULT get_ImageProperties(Windows.Media.ImageDisplayProperties* return_value);
	HRESULT abi_CopyFromFileAsync(Windows.Media.MediaPlaybackType type, Windows.Storage.StorageFile source, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_ClearAll();
	HRESULT abi_Update();
}

@uuid("d0ca0936-339b-4cb3-8eeb-737607f56e08")
@WinrtFactory("Windows.Media.SystemMediaTransportControlsPropertyChangedEventArgs")
interface ISystemMediaTransportControlsPropertyChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Property(Windows.Media.SystemMediaTransportControlsProperty* return_value);
}

@uuid("43ba380a-eca4-4832-91ab-d415fae484c6")
@WinrtFactory("Windows.Media.SystemMediaTransportControls")
interface ISystemMediaTransportControlsStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.Media.SystemMediaTransportControls* return_mediaControl);
}

@uuid("5125316a-c3a2-475b-8507-93534dc88f15")
@WinrtFactory("Windows.Media.SystemMediaTransportControlsTimelineProperties")
interface ISystemMediaTransportControlsTimelineProperties : IInspectable
{
extern(Windows):
	HRESULT get_StartTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_StartTime(Windows.Foundation.TimeSpan value);
	HRESULT get_EndTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_EndTime(Windows.Foundation.TimeSpan value);
	HRESULT get_MinSeekTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_MinSeekTime(Windows.Foundation.TimeSpan value);
	HRESULT get_MaxSeekTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_MaxSeekTime(Windows.Foundation.TimeSpan value);
	HRESULT get_Position(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Position(Windows.Foundation.TimeSpan value);
}

@uuid("5609fdb1-5d2d-4872-8170-45dee5bc2f5c")
@WinrtFactory("Windows.Media.VideoDisplayProperties")
interface IVideoDisplayProperties : IInspectable
{
extern(Windows):
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_Subtitle(HSTRING* return_value);
	HRESULT set_Subtitle(HSTRING value);
}

@uuid("b410e1ce-ab52-41ab-a486-cc10fab152f9")
@WinrtFactory("Windows.Media.VideoDisplayProperties")
interface IVideoDisplayProperties2 : IInspectable
{
extern(Windows):
	HRESULT get_Genres(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("1fcda5e8-baf1-4521-980c-3bcebb44cf38")
@WinrtFactory("Windows.Media.VideoEffects")
interface IVideoEffectsStatics : IInspectable
{
extern(Windows):
	HRESULT get_VideoStabilization(HSTRING* return_value);
}

@uuid("0cc06625-90fc-4c92-bd95-7ded21819d1c")
@WinrtFactory("Windows.Media.VideoFrame")
interface IVideoFrame_Base : IInspectable
{
extern(Windows):
	HRESULT get_SoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap* return_value);
	HRESULT abi_CopyToAsync(Windows.Media.VideoFrame frame, Windows.Foundation.IAsyncAction* return_value);
	HRESULT get_Direct3DSurface(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface* return_value);
}
@uuid("0cc06625-90fc-4c92-bd95-7ded21819d1c")
@WinrtFactory("Windows.Media.VideoFrame")
interface IVideoFrame : IVideoFrame_Base, Windows.Media.IMediaFrame, Windows.Foundation.IClosable {}

@uuid("014b6d69-2228-4c92-92ff-50c380d3e776")
@WinrtFactory("Windows.Media.VideoFrame")
interface IVideoFrameFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Graphics.Imaging.BitmapPixelFormat format, INT32 width, INT32 height, Windows.Media.VideoFrame* return_value);
	HRESULT abi_CreateWithAlpha(Windows.Graphics.Imaging.BitmapPixelFormat format, INT32 width, INT32 height, Windows.Graphics.Imaging.BitmapAlphaMode alpha, Windows.Media.VideoFrame* return_value);
}

interface AudioBuffer : Windows.Media.IAudioBuffer, Windows.Foundation.IMemoryBuffer, Windows.Foundation.IClosable
{
extern(Windows):
	final UINT32 Capacity()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.IAudioBuffer).get_Capacity(&_ret));
		return _ret;
	}
	final UINT32 Length()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.IAudioBuffer).get_Length(&_ret));
		return _ret;
	}
	final void Length(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.IAudioBuffer).set_Length(value));
	}
	final Windows.Foundation.IMemoryBufferReference CreateReference()
	{
		Windows.Foundation.IMemoryBufferReference _ret;
		Debug.OK(this.as!(Windows.Foundation.IMemoryBuffer).abi_CreateReference(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface AudioFrame : Windows.Media.IAudioFrame, Windows.Media.IMediaFrame, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Media.AudioBuffer LockBuffer(Windows.Media.AudioBufferAccessMode mode)
	{
		Windows.Media.AudioBuffer _ret;
		Debug.OK(this.as!(Windows.Media.IAudioFrame).abi_LockBuffer(mode, &_ret));
		return _ret;
	}
	final HSTRING Type()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.IMediaFrame).get_Type(&_ret));
		return _ret;
	}
	final bool IsReadOnly()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.IMediaFrame).get_IsReadOnly(&_ret));
		return _ret;
	}
	final void RelativeTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.Media.IMediaFrame).set_RelativeTime(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) RelativeTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.IMediaFrame).get_RelativeTime(&_ret));
		return _ret;
	}
	final void SystemRelativeTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.Media.IMediaFrame).set_SystemRelativeTime(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) SystemRelativeTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.IMediaFrame).get_SystemRelativeTime(&_ret));
		return _ret;
	}
	final void Duration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.Media.IMediaFrame).set_Duration(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Duration()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.IMediaFrame).get_Duration(&_ret));
		return _ret;
	}
	final void IsDiscontinuous(bool value)
	{
		Debug.OK(this.as!(Windows.Media.IMediaFrame).set_IsDiscontinuous(value));
	}
	final bool IsDiscontinuous()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.IMediaFrame).get_IsDiscontinuous(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IPropertySet ExtendedProperties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK(this.as!(Windows.Media.IMediaFrame).get_ExtendedProperties(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface AutoRepeatModeChangeRequestedEventArgs : Windows.Media.IAutoRepeatModeChangeRequestedEventArgs
{
extern(Windows):
	final Windows.Media.MediaPlaybackAutoRepeatMode RequestedAutoRepeatMode()
	{
		Windows.Media.MediaPlaybackAutoRepeatMode _ret;
		Debug.OK(this.as!(Windows.Media.IAutoRepeatModeChangeRequestedEventArgs).get_RequestedAutoRepeatMode(&_ret));
		return _ret;
	}
}

interface ImageDisplayProperties : Windows.Media.IImageDisplayProperties
{
extern(Windows):
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.IImageDisplayProperties).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.IImageDisplayProperties).set_Title(value));
	}
	final HSTRING Subtitle()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.IImageDisplayProperties).get_Subtitle(&_ret));
		return _ret;
	}
	final void Subtitle(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.IImageDisplayProperties).set_Subtitle(value));
	}
}

interface MediaControl
{
}

interface MediaExtensionManager : Windows.Media.IMediaExtensionManager, Windows.Media.IMediaExtensionManager2
{
extern(Windows):
	final void RegisterSchemeHandler(HSTRING activatableClassId, HSTRING scheme)
	{
		Debug.OK(this.as!(Windows.Media.IMediaExtensionManager).abi_RegisterSchemeHandler(activatableClassId, scheme));
	}
	final void RegisterSchemeHandlerWithSettings(HSTRING activatableClassId, HSTRING scheme, Windows.Foundation.Collections.IPropertySet configuration)
	{
		Debug.OK(this.as!(Windows.Media.IMediaExtensionManager).abi_RegisterSchemeHandlerWithSettings(activatableClassId, scheme, configuration));
	}
	final void RegisterByteStreamHandler(HSTRING activatableClassId, HSTRING fileExtension, HSTRING mimeType)
	{
		Debug.OK(this.as!(Windows.Media.IMediaExtensionManager).abi_RegisterByteStreamHandler(activatableClassId, fileExtension, mimeType));
	}
	final void RegisterByteStreamHandlerWithSettings(HSTRING activatableClassId, HSTRING fileExtension, HSTRING mimeType, Windows.Foundation.Collections.IPropertySet configuration)
	{
		Debug.OK(this.as!(Windows.Media.IMediaExtensionManager).abi_RegisterByteStreamHandlerWithSettings(activatableClassId, fileExtension, mimeType, configuration));
	}
	final void RegisterAudioDecoder(HSTRING activatableClassId, GUID inputSubtype, GUID outputSubtype)
	{
		Debug.OK(this.as!(Windows.Media.IMediaExtensionManager).abi_RegisterAudioDecoder(activatableClassId, inputSubtype, outputSubtype));
	}
	final void RegisterAudioDecoderWithSettings(HSTRING activatableClassId, GUID inputSubtype, GUID outputSubtype, Windows.Foundation.Collections.IPropertySet configuration)
	{
		Debug.OK(this.as!(Windows.Media.IMediaExtensionManager).abi_RegisterAudioDecoderWithSettings(activatableClassId, inputSubtype, outputSubtype, configuration));
	}
	final void RegisterAudioEncoder(HSTRING activatableClassId, GUID inputSubtype, GUID outputSubtype)
	{
		Debug.OK(this.as!(Windows.Media.IMediaExtensionManager).abi_RegisterAudioEncoder(activatableClassId, inputSubtype, outputSubtype));
	}
	final void RegisterAudioEncoderWithSettings(HSTRING activatableClassId, GUID inputSubtype, GUID outputSubtype, Windows.Foundation.Collections.IPropertySet configuration)
	{
		Debug.OK(this.as!(Windows.Media.IMediaExtensionManager).abi_RegisterAudioEncoderWithSettings(activatableClassId, inputSubtype, outputSubtype, configuration));
	}
	final void RegisterVideoDecoder(HSTRING activatableClassId, GUID inputSubtype, GUID outputSubtype)
	{
		Debug.OK(this.as!(Windows.Media.IMediaExtensionManager).abi_RegisterVideoDecoder(activatableClassId, inputSubtype, outputSubtype));
	}
	final void RegisterVideoDecoderWithSettings(HSTRING activatableClassId, GUID inputSubtype, GUID outputSubtype, Windows.Foundation.Collections.IPropertySet configuration)
	{
		Debug.OK(this.as!(Windows.Media.IMediaExtensionManager).abi_RegisterVideoDecoderWithSettings(activatableClassId, inputSubtype, outputSubtype, configuration));
	}
	final void RegisterVideoEncoder(HSTRING activatableClassId, GUID inputSubtype, GUID outputSubtype)
	{
		Debug.OK(this.as!(Windows.Media.IMediaExtensionManager).abi_RegisterVideoEncoder(activatableClassId, inputSubtype, outputSubtype));
	}
	final void RegisterVideoEncoderWithSettings(HSTRING activatableClassId, GUID inputSubtype, GUID outputSubtype, Windows.Foundation.Collections.IPropertySet configuration)
	{
		Debug.OK(this.as!(Windows.Media.IMediaExtensionManager).abi_RegisterVideoEncoderWithSettings(activatableClassId, inputSubtype, outputSubtype, configuration));
	}
	final void RegisterMediaExtensionForAppService(Windows.Media.IMediaExtension extension, Windows.ApplicationModel.AppService.AppServiceConnection connection)
	{
		Debug.OK(this.as!(Windows.Media.IMediaExtensionManager2).abi_RegisterMediaExtensionForAppService(extension, connection));
	}
}

interface MediaMarkerTypes
{
}

interface MediaProcessingTriggerDetails : Windows.Media.IMediaProcessingTriggerDetails
{
extern(Windows):
	final Windows.Foundation.Collections.ValueSet Arguments()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK(this.as!(Windows.Media.IMediaProcessingTriggerDetails).get_Arguments(&_ret));
		return _ret;
	}
}

interface MediaTimelineController : Windows.Media.IMediaTimelineController, Windows.Media.IMediaTimelineController2
{
extern(Windows):
	final void Start()
	{
		Debug.OK(this.as!(Windows.Media.IMediaTimelineController).abi_Start());
	}
	final void Resume()
	{
		Debug.OK(this.as!(Windows.Media.IMediaTimelineController).abi_Resume());
	}
	final void Pause()
	{
		Debug.OK(this.as!(Windows.Media.IMediaTimelineController).abi_Pause());
	}
	final Windows.Foundation.TimeSpan Position()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.IMediaTimelineController).get_Position(&_ret));
		return _ret;
	}
	final void Position(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.IMediaTimelineController).set_Position(value));
	}
	final double ClockRate()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.IMediaTimelineController).get_ClockRate(&_ret));
		return _ret;
	}
	final void ClockRate(double value)
	{
		Debug.OK(this.as!(Windows.Media.IMediaTimelineController).set_ClockRate(value));
	}
	final Windows.Media.MediaTimelineControllerState State()
	{
		Windows.Media.MediaTimelineControllerState _ret;
		Debug.OK(this.as!(Windows.Media.IMediaTimelineController).get_State(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnPositionChanged(void delegate(Windows.Media.MediaTimelineController, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PositionChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.MediaTimelineController, IInspectable), Windows.Media.MediaTimelineController, IInspectable)(fn), &tok));
		return tok;
	}
	final void removePositionChanged(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_PositionChanged(eventCookie));
	}
	final EventRegistrationToken OnStateChanged(void delegate(Windows.Media.MediaTimelineController, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_StateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.MediaTimelineController, IInspectable), Windows.Media.MediaTimelineController, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeStateChanged(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_StateChanged(eventCookie));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Duration()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.IMediaTimelineController2).get_Duration(&_ret));
		return _ret;
	}
	final void Duration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.Media.IMediaTimelineController2).set_Duration(value));
	}
	final bool IsLoopingEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.IMediaTimelineController2).get_IsLoopingEnabled(&_ret));
		return _ret;
	}
	final void IsLoopingEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.IMediaTimelineController2).set_IsLoopingEnabled(value));
	}
	final EventRegistrationToken OnFailed(void delegate(Windows.Media.MediaTimelineController, Windows.Media.MediaTimelineControllerFailedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Failed(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.MediaTimelineController, Windows.Media.MediaTimelineControllerFailedEventArgs), Windows.Media.MediaTimelineController, Windows.Media.MediaTimelineControllerFailedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeFailed(EventRegistrationToken token)
	{
		Debug.OK(remove_Failed(token));
	}
	final EventRegistrationToken OnEnded(void delegate(Windows.Media.MediaTimelineController, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Ended(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.MediaTimelineController, IInspectable), Windows.Media.MediaTimelineController, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeEnded(EventRegistrationToken token)
	{
		Debug.OK(remove_Ended(token));
	}
}

interface MediaTimelineControllerFailedEventArgs : Windows.Media.IMediaTimelineControllerFailedEventArgs
{
extern(Windows):
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Media.IMediaTimelineControllerFailedEventArgs).get_ExtendedError(&_ret));
		return _ret;
	}
}

interface MusicDisplayProperties : Windows.Media.IMusicDisplayProperties, Windows.Media.IMusicDisplayProperties2, Windows.Media.IMusicDisplayProperties3
{
extern(Windows):
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.IMusicDisplayProperties).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.IMusicDisplayProperties).set_Title(value));
	}
	final HSTRING AlbumArtist()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.IMusicDisplayProperties).get_AlbumArtist(&_ret));
		return _ret;
	}
	final void AlbumArtist(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.IMusicDisplayProperties).set_AlbumArtist(value));
	}
	final HSTRING Artist()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.IMusicDisplayProperties).get_Artist(&_ret));
		return _ret;
	}
	final void Artist(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.IMusicDisplayProperties).set_Artist(value));
	}
	final HSTRING AlbumTitle()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.IMusicDisplayProperties2).get_AlbumTitle(&_ret));
		return _ret;
	}
	final void AlbumTitle(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.IMusicDisplayProperties2).set_AlbumTitle(value));
	}
	final UINT32 TrackNumber()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.IMusicDisplayProperties2).get_TrackNumber(&_ret));
		return _ret;
	}
	final void TrackNumber(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.IMusicDisplayProperties2).set_TrackNumber(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Genres()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Media.IMusicDisplayProperties2).get_Genres(&_ret));
		return _ret;
	}
	final UINT32 AlbumTrackCount()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.IMusicDisplayProperties3).get_AlbumTrackCount(&_ret));
		return _ret;
	}
	final void AlbumTrackCount(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.IMusicDisplayProperties3).set_AlbumTrackCount(value));
	}
}

interface PlaybackPositionChangeRequestedEventArgs : Windows.Media.IPlaybackPositionChangeRequestedEventArgs
{
extern(Windows):
	final Windows.Foundation.TimeSpan RequestedPlaybackPosition()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.IPlaybackPositionChangeRequestedEventArgs).get_RequestedPlaybackPosition(&_ret));
		return _ret;
	}
}

interface PlaybackRateChangeRequestedEventArgs : Windows.Media.IPlaybackRateChangeRequestedEventArgs
{
extern(Windows):
	final double RequestedPlaybackRate()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.IPlaybackRateChangeRequestedEventArgs).get_RequestedPlaybackRate(&_ret));
		return _ret;
	}
}

interface ShuffleEnabledChangeRequestedEventArgs : Windows.Media.IShuffleEnabledChangeRequestedEventArgs
{
extern(Windows):
	final bool RequestedShuffleEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.IShuffleEnabledChangeRequestedEventArgs).get_RequestedShuffleEnabled(&_ret));
		return _ret;
	}
}

interface SystemMediaTransportControls : Windows.Media.ISystemMediaTransportControls, Windows.Media.ISystemMediaTransportControls2
{
extern(Windows):
	final Windows.Media.MediaPlaybackStatus PlaybackStatus()
	{
		Windows.Media.MediaPlaybackStatus _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).get_PlaybackStatus(&_ret));
		return _ret;
	}
	final void PlaybackStatus(Windows.Media.MediaPlaybackStatus value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).set_PlaybackStatus(value));
	}
	final Windows.Media.SystemMediaTransportControlsDisplayUpdater DisplayUpdater()
	{
		Windows.Media.SystemMediaTransportControlsDisplayUpdater _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).get_DisplayUpdater(&_ret));
		return _ret;
	}
	final Windows.Media.SoundLevel SoundLevel()
	{
		Windows.Media.SoundLevel _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).get_SoundLevel(&_ret));
		return _ret;
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).set_IsEnabled(value));
	}
	final bool IsPlayEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).get_IsPlayEnabled(&_ret));
		return _ret;
	}
	final void IsPlayEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).set_IsPlayEnabled(value));
	}
	final bool IsStopEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).get_IsStopEnabled(&_ret));
		return _ret;
	}
	final void IsStopEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).set_IsStopEnabled(value));
	}
	final bool IsPauseEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).get_IsPauseEnabled(&_ret));
		return _ret;
	}
	final void IsPauseEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).set_IsPauseEnabled(value));
	}
	final bool IsRecordEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).get_IsRecordEnabled(&_ret));
		return _ret;
	}
	final void IsRecordEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).set_IsRecordEnabled(value));
	}
	final bool IsFastForwardEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).get_IsFastForwardEnabled(&_ret));
		return _ret;
	}
	final void IsFastForwardEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).set_IsFastForwardEnabled(value));
	}
	final bool IsRewindEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).get_IsRewindEnabled(&_ret));
		return _ret;
	}
	final void IsRewindEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).set_IsRewindEnabled(value));
	}
	final bool IsPreviousEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).get_IsPreviousEnabled(&_ret));
		return _ret;
	}
	final void IsPreviousEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).set_IsPreviousEnabled(value));
	}
	final bool IsNextEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).get_IsNextEnabled(&_ret));
		return _ret;
	}
	final void IsNextEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).set_IsNextEnabled(value));
	}
	final bool IsChannelUpEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).get_IsChannelUpEnabled(&_ret));
		return _ret;
	}
	final void IsChannelUpEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).set_IsChannelUpEnabled(value));
	}
	final bool IsChannelDownEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).get_IsChannelDownEnabled(&_ret));
		return _ret;
	}
	final void IsChannelDownEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls).set_IsChannelDownEnabled(value));
	}
	final EventRegistrationToken OnButtonPressed(void delegate(Windows.Media.SystemMediaTransportControls, Windows.Media.SystemMediaTransportControlsButtonPressedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ButtonPressed(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.SystemMediaTransportControls, Windows.Media.SystemMediaTransportControlsButtonPressedEventArgs), Windows.Media.SystemMediaTransportControls, Windows.Media.SystemMediaTransportControlsButtonPressedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeButtonPressed(EventRegistrationToken token)
	{
		Debug.OK(remove_ButtonPressed(token));
	}
	final EventRegistrationToken OnPropertyChanged(void delegate(Windows.Media.SystemMediaTransportControls, Windows.Media.SystemMediaTransportControlsPropertyChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PropertyChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.SystemMediaTransportControls, Windows.Media.SystemMediaTransportControlsPropertyChangedEventArgs), Windows.Media.SystemMediaTransportControls, Windows.Media.SystemMediaTransportControlsPropertyChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePropertyChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_PropertyChanged(token));
	}
	final Windows.Media.MediaPlaybackAutoRepeatMode AutoRepeatMode()
	{
		Windows.Media.MediaPlaybackAutoRepeatMode _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls2).get_AutoRepeatMode(&_ret));
		return _ret;
	}
	final void AutoRepeatMode(Windows.Media.MediaPlaybackAutoRepeatMode value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls2).set_AutoRepeatMode(value));
	}
	final bool ShuffleEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls2).get_ShuffleEnabled(&_ret));
		return _ret;
	}
	final void ShuffleEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls2).set_ShuffleEnabled(value));
	}
	final double PlaybackRate()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls2).get_PlaybackRate(&_ret));
		return _ret;
	}
	final void PlaybackRate(double value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls2).set_PlaybackRate(value));
	}
	final void UpdateTimelineProperties(Windows.Media.SystemMediaTransportControlsTimelineProperties timelineProperties)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControls2).abi_UpdateTimelineProperties(timelineProperties));
	}
	final EventRegistrationToken OnPlaybackPositionChangeRequested(void delegate(Windows.Media.SystemMediaTransportControls, Windows.Media.PlaybackPositionChangeRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PlaybackPositionChangeRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.SystemMediaTransportControls, Windows.Media.PlaybackPositionChangeRequestedEventArgs), Windows.Media.SystemMediaTransportControls, Windows.Media.PlaybackPositionChangeRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePlaybackPositionChangeRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_PlaybackPositionChangeRequested(token));
	}
	final EventRegistrationToken OnPlaybackRateChangeRequested(void delegate(Windows.Media.SystemMediaTransportControls, Windows.Media.PlaybackRateChangeRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PlaybackRateChangeRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.SystemMediaTransportControls, Windows.Media.PlaybackRateChangeRequestedEventArgs), Windows.Media.SystemMediaTransportControls, Windows.Media.PlaybackRateChangeRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePlaybackRateChangeRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_PlaybackRateChangeRequested(token));
	}
	final EventRegistrationToken OnShuffleEnabledChangeRequested(void delegate(Windows.Media.SystemMediaTransportControls, Windows.Media.ShuffleEnabledChangeRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ShuffleEnabledChangeRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.SystemMediaTransportControls, Windows.Media.ShuffleEnabledChangeRequestedEventArgs), Windows.Media.SystemMediaTransportControls, Windows.Media.ShuffleEnabledChangeRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeShuffleEnabledChangeRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_ShuffleEnabledChangeRequested(token));
	}
	final EventRegistrationToken OnAutoRepeatModeChangeRequested(void delegate(Windows.Media.SystemMediaTransportControls, Windows.Media.AutoRepeatModeChangeRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_AutoRepeatModeChangeRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.SystemMediaTransportControls, Windows.Media.AutoRepeatModeChangeRequestedEventArgs), Windows.Media.SystemMediaTransportControls, Windows.Media.AutoRepeatModeChangeRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAutoRepeatModeChangeRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_AutoRepeatModeChangeRequested(token));
	}
}

interface SystemMediaTransportControlsButtonPressedEventArgs : Windows.Media.ISystemMediaTransportControlsButtonPressedEventArgs
{
extern(Windows):
	final Windows.Media.SystemMediaTransportControlsButton Button()
	{
		Windows.Media.SystemMediaTransportControlsButton _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsButtonPressedEventArgs).get_Button(&_ret));
		return _ret;
	}
}

interface SystemMediaTransportControlsDisplayUpdater : Windows.Media.ISystemMediaTransportControlsDisplayUpdater
{
extern(Windows):
	final Windows.Media.MediaPlaybackType Type()
	{
		Windows.Media.MediaPlaybackType _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsDisplayUpdater).get_Type(&_ret));
		return _ret;
	}
	final void Type(Windows.Media.MediaPlaybackType value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsDisplayUpdater).set_Type(value));
	}
	final HSTRING AppMediaId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsDisplayUpdater).get_AppMediaId(&_ret));
		return _ret;
	}
	final void AppMediaId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsDisplayUpdater).set_AppMediaId(value));
	}
	final Windows.Storage.Streams.RandomAccessStreamReference Thumbnail()
	{
		Windows.Storage.Streams.RandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsDisplayUpdater).get_Thumbnail(&_ret));
		return _ret;
	}
	final void Thumbnail(Windows.Storage.Streams.RandomAccessStreamReference value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsDisplayUpdater).set_Thumbnail(value));
	}
	final Windows.Media.MusicDisplayProperties MusicProperties()
	{
		Windows.Media.MusicDisplayProperties _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsDisplayUpdater).get_MusicProperties(&_ret));
		return _ret;
	}
	final Windows.Media.VideoDisplayProperties VideoProperties()
	{
		Windows.Media.VideoDisplayProperties _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsDisplayUpdater).get_VideoProperties(&_ret));
		return _ret;
	}
	final Windows.Media.ImageDisplayProperties ImageProperties()
	{
		Windows.Media.ImageDisplayProperties _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsDisplayUpdater).get_ImageProperties(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) CopyFromFileAsync(Windows.Media.MediaPlaybackType type, Windows.Storage.StorageFile source)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsDisplayUpdater).abi_CopyFromFileAsync(type, source, &_ret));
		return _ret;
	}
	final void ClearAll()
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsDisplayUpdater).abi_ClearAll());
	}
	final void Update()
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsDisplayUpdater).abi_Update());
	}
}

interface SystemMediaTransportControlsPropertyChangedEventArgs : Windows.Media.ISystemMediaTransportControlsPropertyChangedEventArgs
{
extern(Windows):
	final Windows.Media.SystemMediaTransportControlsProperty Property()
	{
		Windows.Media.SystemMediaTransportControlsProperty _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsPropertyChangedEventArgs).get_Property(&_ret));
		return _ret;
	}
}

interface SystemMediaTransportControlsTimelineProperties : Windows.Media.ISystemMediaTransportControlsTimelineProperties
{
extern(Windows):
	final Windows.Foundation.TimeSpan StartTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsTimelineProperties).get_StartTime(&_ret));
		return _ret;
	}
	final void StartTime(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsTimelineProperties).set_StartTime(value));
	}
	final Windows.Foundation.TimeSpan EndTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsTimelineProperties).get_EndTime(&_ret));
		return _ret;
	}
	final void EndTime(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsTimelineProperties).set_EndTime(value));
	}
	final Windows.Foundation.TimeSpan MinSeekTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsTimelineProperties).get_MinSeekTime(&_ret));
		return _ret;
	}
	final void MinSeekTime(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsTimelineProperties).set_MinSeekTime(value));
	}
	final Windows.Foundation.TimeSpan MaxSeekTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsTimelineProperties).get_MaxSeekTime(&_ret));
		return _ret;
	}
	final void MaxSeekTime(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsTimelineProperties).set_MaxSeekTime(value));
	}
	final Windows.Foundation.TimeSpan Position()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsTimelineProperties).get_Position(&_ret));
		return _ret;
	}
	final void Position(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.ISystemMediaTransportControlsTimelineProperties).set_Position(value));
	}
}

interface VideoDisplayProperties : Windows.Media.IVideoDisplayProperties, Windows.Media.IVideoDisplayProperties2
{
extern(Windows):
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.IVideoDisplayProperties).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.IVideoDisplayProperties).set_Title(value));
	}
	final HSTRING Subtitle()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.IVideoDisplayProperties).get_Subtitle(&_ret));
		return _ret;
	}
	final void Subtitle(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.IVideoDisplayProperties).set_Subtitle(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Genres()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Media.IVideoDisplayProperties2).get_Genres(&_ret));
		return _ret;
	}
}

interface VideoEffects
{
}

interface VideoFrame : Windows.Media.IVideoFrame, Windows.Media.IMediaFrame, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Graphics.Imaging.SoftwareBitmap SoftwareBitmap()
	{
		Windows.Graphics.Imaging.SoftwareBitmap _ret;
		Debug.OK(this.as!(Windows.Media.IVideoFrame).get_SoftwareBitmap(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction CopyToAsync(Windows.Media.VideoFrame frame)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.IVideoFrame).abi_CopyToAsync(frame, &_ret));
		return _ret;
	}
	final Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface Direct3DSurface()
	{
		Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface _ret;
		Debug.OK(this.as!(Windows.Media.IVideoFrame).get_Direct3DSurface(&_ret));
		return _ret;
	}
	final HSTRING Type()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.IMediaFrame).get_Type(&_ret));
		return _ret;
	}
	final bool IsReadOnly()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.IMediaFrame).get_IsReadOnly(&_ret));
		return _ret;
	}
	final void RelativeTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.Media.IMediaFrame).set_RelativeTime(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) RelativeTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.IMediaFrame).get_RelativeTime(&_ret));
		return _ret;
	}
	final void SystemRelativeTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.Media.IMediaFrame).set_SystemRelativeTime(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) SystemRelativeTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.IMediaFrame).get_SystemRelativeTime(&_ret));
		return _ret;
	}
	final void Duration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.Media.IMediaFrame).set_Duration(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Duration()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.IMediaFrame).get_Duration(&_ret));
		return _ret;
	}
	final void IsDiscontinuous(bool value)
	{
		Debug.OK(this.as!(Windows.Media.IMediaFrame).set_IsDiscontinuous(value));
	}
	final bool IsDiscontinuous()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.IMediaFrame).get_IsDiscontinuous(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IPropertySet ExtendedProperties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK(this.as!(Windows.Media.IMediaFrame).get_ExtendedProperties(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

enum AudioBufferAccessMode
{
	Read = 0,
	ReadWrite = 1,
	Write = 2
}

enum AudioProcessing
{
	Default = 0,
	Raw = 1
}

enum MediaPlaybackAutoRepeatMode
{
	None = 0,
	Track = 1,
	List = 2
}

enum MediaPlaybackStatus
{
	Closed = 0,
	Changing = 1,
	Stopped = 2,
	Playing = 3,
	Paused = 4
}

enum MediaPlaybackType
{
	Unknown = 0,
	Music = 1,
	Video = 2,
	Image = 3
}

enum MediaTimelineControllerState
{
	Paused = 0,
	Running = 1,
	Stalled = 2,
	Error = 3
}

enum SoundLevel
{
	Muted = 0,
	Low = 1,
	Full = 2
}

enum SystemMediaTransportControlsButton
{
	Play = 0,
	Pause = 1,
	Stop = 2,
	Record = 3,
	FastForward = 4,
	Rewind = 5,
	Next = 6,
	Previous = 7,
	ChannelUp = 8,
	ChannelDown = 9
}

enum SystemMediaTransportControlsProperty
{
	SoundLevel = 0
}