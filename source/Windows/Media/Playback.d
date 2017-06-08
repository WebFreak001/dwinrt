module Windows.Media.Playback;

import dwinrt;

@uuid("856ddbc1-55f7-471f-a0f2-68ac4c904592")
@WinrtFactory("Windows.Media.Playback.BackgroundMediaPlayer")
interface IBackgroundMediaPlayerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("Use MediaPlayer instead of BackgroundMediaPlayer.  For more info, see MSDN.")
	HRESULT get_Current(Windows.Media.Playback.MediaPlayer* return_player);
	deprecated("Use MediaPlayer instead of BackgroundMediaPlayer.  For more info, see MSDN.")
	HRESULT add_MessageReceivedFromBackground(Windows.Foundation.EventHandler!(Windows.Media.Playback.MediaPlayerDataReceivedEventArgs) value, EventRegistrationToken* return_token);
	deprecated("Use MediaPlayer instead of BackgroundMediaPlayer.  For more info, see MSDN.")
	HRESULT remove_MessageReceivedFromBackground(EventRegistrationToken token);
	deprecated("Use MediaPlayer instead of BackgroundMediaPlayer.  For more info, see MSDN.")
	HRESULT add_MessageReceivedFromForeground(Windows.Foundation.EventHandler!(Windows.Media.Playback.MediaPlayerDataReceivedEventArgs) value, EventRegistrationToken* return_token);
	deprecated("Use MediaPlayer instead of BackgroundMediaPlayer.  For more info, see MSDN.")
	HRESULT remove_MessageReceivedFromForeground(EventRegistrationToken token);
	deprecated("Use MediaPlayer instead of BackgroundMediaPlayer.  For more info, see MSDN.")
	HRESULT abi_SendMessageToBackground(Windows.Foundation.Collections.ValueSet value);
	deprecated("Use MediaPlayer instead of BackgroundMediaPlayer.  For more info, see MSDN.")
	HRESULT abi_SendMessageToForeground(Windows.Foundation.Collections.ValueSet value);
	deprecated("Use MediaPlayer instead of BackgroundMediaPlayer.  For more info, see MSDN.")
	HRESULT abi_IsMediaPlaying(bool* return_isMediaPlaying);
	deprecated("Use MediaPlayer instead of BackgroundMediaPlayer.  For more info, see MSDN.")
	HRESULT abi_Shutdown();
}

@uuid("1743a892-5c43-4a15-967a-572d2d0f26c6")
@WinrtFactory("Windows.Media.Playback.CurrentMediaPlaybackItemChangedEventArgs")
interface ICurrentMediaPlaybackItemChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NewItem(Windows.Media.Playback.MediaPlaybackItem* return_value);
	HRESULT get_OldItem(Windows.Media.Playback.MediaPlaybackItem* return_value);
}

@uuid("1d80a51e-996e-40a9-be48-e66ec90b2b7d")
@WinrtFactory("Windows.Media.Playback.CurrentMediaPlaybackItemChangedEventArgs")
interface ICurrentMediaPlaybackItemChangedEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Reason(Windows.Media.Playback.MediaPlaybackItemChangedReason* return_value);
}

@uuid("714be270-0def-4ebc-a489-6b34930e1558")
@WinrtFactory("Windows.Media.Playback.MediaBreak")
interface IMediaBreak : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PlaybackList(Windows.Media.Playback.MediaPlaybackList* return_value);
	HRESULT get_PresentationPosition(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_InsertionMethod(Windows.Media.Playback.MediaBreakInsertionMethod* return_value);
	HRESULT get_CustomProperties(Windows.Foundation.Collections.ValueSet* return_value);
	HRESULT get_CanStart(bool* return_value);
	HRESULT set_CanStart(bool value);
}

@uuid("32b93276-1c5d-4fee-8732-236dc3a88580")
@WinrtFactory("Windows.Media.Playback.MediaBreakEndedEventArgs")
interface IMediaBreakEndedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MediaBreak(Windows.Media.Playback.MediaBreak* return_value);
}

@uuid("4516e002-18e0-4079-8b5f-d33495c15d2e")
@WinrtFactory("Windows.Media.Playback.MediaBreak")
interface IMediaBreakFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Media.Playback.MediaBreakInsertionMethod insertionMethod, Windows.Media.Playback.MediaBreak* return_result);
	HRESULT abi_CreateWithPresentationPosition(Windows.Media.Playback.MediaBreakInsertionMethod insertionMethod, Windows.Foundation.TimeSpan presentationPosition, Windows.Media.Playback.MediaBreak* return_result);
}

@uuid("a854ddb1-feb4-4d9b-9d97-0fdbe58e5e39")
@WinrtFactory("Windows.Media.Playback.MediaBreakManager")
interface IMediaBreakManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_BreaksSeekedOver(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaBreakManager, Windows.Media.Playback.MediaBreakSeekedOverEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_BreaksSeekedOver(EventRegistrationToken token);
	HRESULT add_BreakStarted(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaBreakManager, Windows.Media.Playback.MediaBreakStartedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_BreakStarted(EventRegistrationToken token);
	HRESULT add_BreakEnded(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaBreakManager, Windows.Media.Playback.MediaBreakEndedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_BreakEnded(EventRegistrationToken token);
	HRESULT add_BreakSkipped(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaBreakManager, Windows.Media.Playback.MediaBreakSkippedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_BreakSkipped(EventRegistrationToken token);
	HRESULT get_CurrentBreak(Windows.Media.Playback.MediaBreak* return_value);
	HRESULT get_PlaybackSession(Windows.Media.Playback.MediaPlaybackSession* return_value);
	HRESULT abi_PlayBreak(Windows.Media.Playback.MediaBreak value);
	HRESULT abi_SkipCurrentBreak();
}

@uuid("a19a5813-98b6-41d8-83da-f971d22b7bba")
@WinrtFactory("Windows.Media.Playback.MediaBreakSchedule")
interface IMediaBreakSchedule : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ScheduleChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaBreakSchedule, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_ScheduleChanged(EventRegistrationToken token);
	HRESULT abi_InsertMidrollBreak(Windows.Media.Playback.MediaBreak mediaBreak);
	HRESULT abi_RemoveMidrollBreak(Windows.Media.Playback.MediaBreak mediaBreak);
	HRESULT get_MidrollBreaks(Windows.Foundation.Collections.IVectorView!(Windows.Media.Playback.MediaBreak)* return_value);
	HRESULT set_PrerollBreak(Windows.Media.Playback.MediaBreak value);
	HRESULT get_PrerollBreak(Windows.Media.Playback.MediaBreak* return_value);
	HRESULT set_PostrollBreak(Windows.Media.Playback.MediaBreak value);
	HRESULT get_PostrollBreak(Windows.Media.Playback.MediaBreak* return_value);
	HRESULT get_PlaybackItem(Windows.Media.Playback.MediaPlaybackItem* return_value);
}

@uuid("e5aa6746-0606-4492-b9d3-c3c8fde0a4ea")
@WinrtFactory("Windows.Media.Playback.MediaBreakSeekedOverEventArgs")
interface IMediaBreakSeekedOverEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SeekedOverBreaks(Windows.Foundation.Collections.IVectorView!(Windows.Media.Playback.MediaBreak)* return_value);
	HRESULT get_OldPosition(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_NewPosition(Windows.Foundation.TimeSpan* return_value);
}

@uuid("6ee94c05-2f54-4a3e-a3ab-24c3b270b4a3")
@WinrtFactory("Windows.Media.Playback.MediaBreakSkippedEventArgs")
interface IMediaBreakSkippedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MediaBreak(Windows.Media.Playback.MediaBreak* return_value);
}

@uuid("a87efe71-dfd4-454a-956e-0a4a648395f8")
@WinrtFactory("Windows.Media.Playback.MediaBreakStartedEventArgs")
interface IMediaBreakStartedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MediaBreak(Windows.Media.Playback.MediaBreak* return_value);
}

@uuid("5c1d0ba7-3856-48b9-8dc6-244bf107bf8c")
interface IMediaEnginePlaybackSource : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("Use MediaPlayer instead of MediaEngine. For more info, see MSDN.")
	HRESULT get_CurrentItem(Windows.Media.Playback.MediaPlaybackItem* return_value);
	deprecated("Use MediaPlayer instead of MediaEngine. For more info, see MSDN.")
	HRESULT abi_SetPlaybackSource(Windows.Media.Playback.IMediaPlaybackSource source);
}

@uuid("1e3c1b48-7097-4384-a217-c1291dfa8c16")
@WinrtFactory("Windows.Media.Playback.MediaItemDisplayProperties")
interface IMediaItemDisplayProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Type(Windows.Media.MediaPlaybackType* return_value);
	HRESULT set_Type(Windows.Media.MediaPlaybackType value);
	HRESULT get_MusicProperties(Windows.Media.MusicDisplayProperties* return_value);
	HRESULT get_VideoProperties(Windows.Media.VideoDisplayProperties* return_value);
	HRESULT get_Thumbnail(Windows.Storage.Streams.RandomAccessStreamReference* return_value);
	HRESULT set_Thumbnail(Windows.Storage.Streams.RandomAccessStreamReference value);
	HRESULT abi_ClearAll();
}

@uuid("5acee5a6-5cb6-4a5a-8521-cc86b1c1ed37")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManager")
interface IMediaPlaybackCommandManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT set_IsEnabled(bool value);
	HRESULT get_MediaPlayer(Windows.Media.Playback.MediaPlayer* return_value);
	HRESULT get_PlayBehavior(Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior* return_value);
	HRESULT get_PauseBehavior(Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior* return_value);
	HRESULT get_NextBehavior(Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior* return_value);
	HRESULT get_PreviousBehavior(Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior* return_value);
	HRESULT get_FastForwardBehavior(Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior* return_value);
	HRESULT get_RewindBehavior(Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior* return_value);
	HRESULT get_ShuffleBehavior(Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior* return_value);
	HRESULT get_AutoRepeatModeBehavior(Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior* return_value);
	HRESULT get_PositionBehavior(Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior* return_value);
	HRESULT get_RateBehavior(Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior* return_value);
	HRESULT add_PlayReceived(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerPlayReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PlayReceived(EventRegistrationToken token);
	HRESULT add_PauseReceived(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerPauseReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PauseReceived(EventRegistrationToken token);
	HRESULT add_NextReceived(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerNextReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_NextReceived(EventRegistrationToken token);
	HRESULT add_PreviousReceived(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerPreviousReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PreviousReceived(EventRegistrationToken token);
	HRESULT add_FastForwardReceived(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerFastForwardReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_FastForwardReceived(EventRegistrationToken token);
	HRESULT add_RewindReceived(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerRewindReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RewindReceived(EventRegistrationToken token);
	HRESULT add_ShuffleReceived(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerShuffleReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ShuffleReceived(EventRegistrationToken token);
	HRESULT add_AutoRepeatModeReceived(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AutoRepeatModeReceived(EventRegistrationToken token);
	HRESULT add_PositionReceived(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerPositionReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PositionReceived(EventRegistrationToken token);
	HRESULT add_RateReceived(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerRateReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RateReceived(EventRegistrationToken token);
}

@uuid("3d6f4f23-5230-4411-a0e9-bad94c2a045c")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs")
interface IMediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT get_AutoRepeatMode(Windows.Media.MediaPlaybackAutoRepeatMode* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("786c1e78-ce78-4a10-afd6-843fcbb90c2e")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior")
interface IMediaPlaybackCommandManagerCommandBehavior : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CommandManager(Windows.Media.Playback.MediaPlaybackCommandManager* return_value);
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT get_EnablingRule(Windows.Media.Playback.MediaCommandEnablingRule* return_value);
	HRESULT set_EnablingRule(Windows.Media.Playback.MediaCommandEnablingRule value);
	HRESULT add_IsEnabledChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_IsEnabledChanged(EventRegistrationToken token);
}

@uuid("30f064d9-b491-4d0a-bc21-3098bd1332e9")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerFastForwardReceivedEventArgs")
interface IMediaPlaybackCommandManagerFastForwardReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("e1504433-a2b0-45d4-b9de-5f42ac14a839")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerNextReceivedEventArgs")
interface IMediaPlaybackCommandManagerNextReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("5ceccd1c-c25c-4221-b16c-c3c98ce012d6")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerPauseReceivedEventArgs")
interface IMediaPlaybackCommandManagerPauseReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("9af0004e-578b-4c56-a006-16159d888a48")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerPlayReceivedEventArgs")
interface IMediaPlaybackCommandManagerPlayReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("5591a754-d627-4bdd-a90d-86a015b24902")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerPositionReceivedEventArgs")
interface IMediaPlaybackCommandManagerPositionReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT get_Position(Windows.Foundation.TimeSpan* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("525e3081-4632-4f76-99b1-d771623f6287")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerPreviousReceivedEventArgs")
interface IMediaPlaybackCommandManagerPreviousReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("18ea3939-4a16-4169-8b05-3eb9f5ff78eb")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerRateReceivedEventArgs")
interface IMediaPlaybackCommandManagerRateReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT get_PlaybackRate(double* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("9f085947-a3c0-425d-aaef-97ba7898b141")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerRewindReceivedEventArgs")
interface IMediaPlaybackCommandManagerRewindReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("50a05cef-63ee-4a96-b7b5-fee08b9ff90c")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerShuffleReceivedEventArgs")
interface IMediaPlaybackCommandManagerShuffleReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT get_IsShuffleRequested(bool* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("047097d2-e4af-48ab-b283-6929e674ece2")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackItem")
interface IMediaPlaybackItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_AudioTracksChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackItem, Windows.Foundation.Collections.IVectorChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AudioTracksChanged(EventRegistrationToken token);
	HRESULT add_VideoTracksChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackItem, Windows.Foundation.Collections.IVectorChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_VideoTracksChanged(EventRegistrationToken token);
	HRESULT add_TimedMetadataTracksChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackItem, Windows.Foundation.Collections.IVectorChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_TimedMetadataTracksChanged(EventRegistrationToken token);
	HRESULT get_Source(Windows.Media.Core.MediaSource* return_value);
	HRESULT get_AudioTracks(Windows.Media.Playback.MediaPlaybackAudioTrackList* return_value);
	HRESULT get_VideoTracks(Windows.Media.Playback.MediaPlaybackVideoTrackList* return_value);
	HRESULT get_TimedMetadataTracks(Windows.Media.Playback.MediaPlaybackTimedMetadataTrackList* return_value);
}

@uuid("d859d171-d7ef-4b81-ac1f-f40493cbb091")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackItem")
interface IMediaPlaybackItem2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BreakSchedule(Windows.Media.Playback.MediaBreakSchedule* return_value);
	HRESULT get_StartTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_DurationLimit(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_CanSkip(bool* return_value);
	HRESULT set_CanSkip(bool value);
	HRESULT abi_GetDisplayProperties(Windows.Media.Playback.MediaItemDisplayProperties* return_value);
	HRESULT abi_ApplyDisplayProperties(Windows.Media.Playback.MediaItemDisplayProperties value);
}

@uuid("0d328220-b80a-4d09-9ff8-f87094a1c831")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackItem")
interface IMediaPlaybackItem3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsDisabledInPlaybackList(bool* return_value);
	HRESULT set_IsDisabledInPlaybackList(bool value);
	HRESULT get_TotalDownloadProgress(double* return_value);
	HRESULT get_AutoLoadedDisplayProperties(Windows.Media.Playback.AutoLoadedDisplayPropertyKind* return_value);
	HRESULT set_AutoLoadedDisplayProperties(Windows.Media.Playback.AutoLoadedDisplayPropertyKind value);
}

@uuid("69fbef2b-dcd6-4df9-a450-dbf4c6f1c2c2")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackItemError")
interface IMediaPlaybackItemError : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ErrorCode(Windows.Media.Playback.MediaPlaybackItemErrorCode* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("7133fce1-1769-4ff9-a7c1-38d2c4d42360")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackItem")
interface IMediaPlaybackItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Media.Core.MediaSource source, Windows.Media.Playback.MediaPlaybackItem* return_value);
}

@uuid("d77cdf3a-b947-4972-b35d-adfb931a71e6")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackItem")
interface IMediaPlaybackItemFactory2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWithStartTime(Windows.Media.Core.MediaSource source, Windows.Foundation.TimeSpan startTime, Windows.Media.Playback.MediaPlaybackItem* return_result);
	HRESULT abi_CreateWithStartTimeAndDurationLimit(Windows.Media.Core.MediaSource source, Windows.Foundation.TimeSpan startTime, Windows.Foundation.TimeSpan durationLimit, Windows.Media.Playback.MediaPlaybackItem* return_result);
}

@uuid("7703134a-e9a7-47c3-862c-c656d30683d4")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackItemFailedEventArgs")
interface IMediaPlaybackItemFailedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Item(Windows.Media.Playback.MediaPlaybackItem* return_value);
	HRESULT get_Error(Windows.Media.Playback.MediaPlaybackItemError* return_value);
}

@uuid("cbd9bd82-3037-4fbe-ae8f-39fc39edf4ef")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackItemOpenedEventArgs")
interface IMediaPlaybackItemOpenedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Item(Windows.Media.Playback.MediaPlaybackItem* return_value);
}

@uuid("4b1be7f4-4345-403c-8a67-f5de91df4c86")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackItem")
interface IMediaPlaybackItemStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FindFromMediaSource(Windows.Media.Core.MediaSource source, Windows.Media.Playback.MediaPlaybackItem* return_value);
}

@uuid("7f77ee9c-dc42-4e26-a98d-7850df8ec925")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackList")
interface IMediaPlaybackList : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ItemFailed(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackList, Windows.Media.Playback.MediaPlaybackItemFailedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ItemFailed(EventRegistrationToken token);
	HRESULT add_CurrentItemChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackList, Windows.Media.Playback.CurrentMediaPlaybackItemChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CurrentItemChanged(EventRegistrationToken token);
	HRESULT add_ItemOpened(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackList, Windows.Media.Playback.MediaPlaybackItemOpenedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ItemOpened(EventRegistrationToken token);
	HRESULT get_Items(Windows.Foundation.Collections.IObservableVector!(Windows.Media.Playback.MediaPlaybackItem)* return_value);
	HRESULT get_AutoRepeatEnabled(bool* return_value);
	HRESULT set_AutoRepeatEnabled(bool value);
	HRESULT get_ShuffleEnabled(bool* return_value);
	HRESULT set_ShuffleEnabled(bool value);
	HRESULT get_CurrentItem(Windows.Media.Playback.MediaPlaybackItem* return_value);
	HRESULT get_CurrentItemIndex(UINT32* return_value);
	HRESULT abi_MoveNext(Windows.Media.Playback.MediaPlaybackItem* return_item);
	HRESULT abi_MovePrevious(Windows.Media.Playback.MediaPlaybackItem* return_item);
	HRESULT abi_MoveTo(UINT32 itemIndex, Windows.Media.Playback.MediaPlaybackItem* return_item);
}

@uuid("0e09b478-600a-4274-a14b-0b6723d0f48b")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackList")
interface IMediaPlaybackList2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxPrefetchTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_MaxPrefetchTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT get_StartingItem(Windows.Media.Playback.MediaPlaybackItem* return_value);
	HRESULT set_StartingItem(Windows.Media.Playback.MediaPlaybackItem value);
	HRESULT get_ShuffledItems(Windows.Foundation.Collections.IVectorView!(Windows.Media.Playback.MediaPlaybackItem)* return_value);
	HRESULT abi_SetShuffledItems(Windows.Foundation.Collections.IIterable!(Windows.Media.Playback.MediaPlaybackItem) value);
}

@uuid("dd24bba9-bc47-4463-aa90-c18b7e5ffde1")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackList")
interface IMediaPlaybackList3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxPlayedItemsToKeepOpen(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_MaxPlayedItemsToKeepOpen(Windows.Foundation.IReference!(UINT32) value);
}

@uuid("c32b683d-0407-41ba-8946-8b345a5a5435")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackSession")
interface IMediaPlaybackSession : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_PlaybackStateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_PlaybackStateChanged(EventRegistrationToken token);
	HRESULT add_PlaybackRateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_PlaybackRateChanged(EventRegistrationToken token);
	HRESULT add_SeekCompleted(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_SeekCompleted(EventRegistrationToken token);
	HRESULT add_BufferingStarted(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_BufferingStarted(EventRegistrationToken token);
	HRESULT add_BufferingEnded(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_BufferingEnded(EventRegistrationToken token);
	HRESULT add_BufferingProgressChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_BufferingProgressChanged(EventRegistrationToken token);
	HRESULT add_DownloadProgressChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_DownloadProgressChanged(EventRegistrationToken token);
	HRESULT add_NaturalDurationChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_NaturalDurationChanged(EventRegistrationToken token);
	HRESULT add_PositionChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_PositionChanged(EventRegistrationToken token);
	HRESULT add_NaturalVideoSizeChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_NaturalVideoSizeChanged(EventRegistrationToken token);
	HRESULT get_MediaPlayer(Windows.Media.Playback.MediaPlayer* return_value);
	HRESULT get_NaturalDuration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Position(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Position(Windows.Foundation.TimeSpan value);
	HRESULT get_PlaybackState(Windows.Media.Playback.MediaPlaybackState* return_value);
	HRESULT get_CanSeek(bool* return_value);
	HRESULT get_CanPause(bool* return_value);
	HRESULT get_IsProtected(bool* return_value);
	HRESULT get_PlaybackRate(double* return_value);
	HRESULT set_PlaybackRate(double value);
	HRESULT get_BufferingProgress(double* return_value);
	HRESULT get_DownloadProgress(double* return_value);
	HRESULT get_NaturalVideoHeight(UINT32* return_value);
	HRESULT get_NaturalVideoWidth(UINT32* return_value);
	HRESULT get_NormalizedSourceRect(Windows.Foundation.Rect* return_value);
	HRESULT set_NormalizedSourceRect(Windows.Foundation.Rect value);
	HRESULT get_StereoscopicVideoPackingMode(Windows.Media.MediaProperties.StereoscopicVideoPackingMode* return_value);
	HRESULT set_StereoscopicVideoPackingMode(Windows.Media.MediaProperties.StereoscopicVideoPackingMode value);
}

@uuid("f8ba7c79-1fc8-4097-ad70-c0fa18cc0050")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackSession")
interface IMediaPlaybackSession2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_BufferedRangesChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_BufferedRangesChanged(EventRegistrationToken token);
	HRESULT add_PlayedRangesChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_PlayedRangesChanged(EventRegistrationToken token);
	HRESULT add_SeekableRangesChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_SeekableRangesChanged(EventRegistrationToken token);
	HRESULT add_SupportedPlaybackRatesChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_SupportedPlaybackRatesChanged(EventRegistrationToken token);
	HRESULT get_SphericalVideoProjection(Windows.Media.Playback.MediaPlaybackSphericalVideoProjection* return_value);
	HRESULT get_IsMirroring(bool* return_value);
	HRESULT set_IsMirroring(bool value);
	HRESULT abi_GetBufferedRanges(Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaTimeRange)* return_value);
	HRESULT abi_GetPlayedRanges(Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaTimeRange)* return_value);
	HRESULT abi_GetSeekableRanges(Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaTimeRange)* return_value);
	HRESULT abi_IsSupportedPlaybackRateRange(double rate1, double rate2, bool* return_value);
}

@uuid("d405b37c-6f0e-4661-b8ee-d487ba9752d5")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackSphericalVideoProjection")
interface IMediaPlaybackSphericalVideoProjection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT set_IsEnabled(bool value);
	HRESULT get_FrameFormat(Windows.Media.MediaProperties.SphericalVideoFrameFormat* return_value);
	HRESULT set_FrameFormat(Windows.Media.MediaProperties.SphericalVideoFrameFormat value);
	HRESULT get_HorizontalFieldOfViewInDegrees(double* return_value);
	HRESULT set_HorizontalFieldOfViewInDegrees(double value);
	HRESULT get_ViewOrientation(Windows.Foundation.Numerics.Quaternion* return_value);
	HRESULT set_ViewOrientation(Windows.Foundation.Numerics.Quaternion value);
	HRESULT get_ProjectionMode(Windows.Media.Playback.SphericalVideoProjectionMode* return_value);
	HRESULT set_ProjectionMode(Windows.Media.Playback.SphericalVideoProjectionMode value);
}

@uuid("72b41319-bbfb-46a3-9372-9c9c744b9438")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackTimedMetadataTrackList")
interface IMediaPlaybackTimedMetadataTrackList : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_PresentationModeChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackTimedMetadataTrackList, Windows.Media.Playback.TimedMetadataPresentationModeChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PresentationModeChanged(EventRegistrationToken token);
	HRESULT abi_GetPresentationMode(UINT32 index, Windows.Media.Playback.TimedMetadataTrackPresentationMode* return_value);
	HRESULT abi_SetPresentationMode(UINT32 index, Windows.Media.Playback.TimedMetadataTrackPresentationMode value);
}

@uuid("381a83cb-6fff-499b-8d64-2885dfc1249e")
@WinrtFactory("Windows.Media.Playback.MediaPlayer")
interface IMediaPlayer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AutoPlay(bool* return_value);
	HRESULT set_AutoPlay(bool value);
	deprecated("Use PlaybackSession.NaturalDuration instead of NaturalDuration.	 For more info, see MSDN.")
	HRESULT get_NaturalDuration(Windows.Foundation.TimeSpan* return_value);
	deprecated("Use PlaybackSession.Position instead of Position.  For more info, see MSDN.")
	HRESULT get_Position(Windows.Foundation.TimeSpan* return_value);
	deprecated("Use PlaybackSession.Position instead of Position.  For more info, see MSDN.")
	HRESULT set_Position(Windows.Foundation.TimeSpan value);
	deprecated("Use PlaybackSession.BufferingProgress instead of BufferingProgress.	 For more info, see MSDN.")
	HRESULT get_BufferingProgress(double* return_value);
	deprecated("Use PlaybackSession.State instead of CurrentState.	For more info, see MSDN.")
	HRESULT get_CurrentState(Windows.Media.Playback.MediaPlayerState* return_value);
	deprecated("Use PlaybackSession.CanSeek instead of CanSeek.	 For more info, see MSDN.")
	HRESULT get_CanSeek(bool* return_value);
	deprecated("Use PlaybackSession.CanPause instead of CanPause.  For more info, see MSDN.")
	HRESULT get_CanPause(bool* return_value);
	HRESULT get_IsLoopingEnabled(bool* return_value);
	HRESULT set_IsLoopingEnabled(bool value);
	deprecated("Use PlaybackSession.IsProtected instead of IsProtected.	 For more info, see MSDN.")
	HRESULT get_IsProtected(bool* return_value);
	HRESULT get_IsMuted(bool* return_value);
	HRESULT set_IsMuted(bool value);
	deprecated("Use PlaybackSession.PlaybackRate instead of PlaybackRate.  For more info, see MSDN.")
	HRESULT get_PlaybackRate(double* return_value);
	deprecated("Use PlaybackSession.PlaybackRate instead of PlaybackRate.  For more info, see MSDN.")
	HRESULT set_PlaybackRate(double value);
	HRESULT get_Volume(double* return_value);
	HRESULT set_Volume(double value);
	deprecated("Use media tracks on MediaPlaybackItem instead of PlaybackMediaMarkers.	For more info, see MSDN.")
	HRESULT get_PlaybackMediaMarkers(Windows.Media.Playback.PlaybackMediaMarkerSequence* return_value);
	HRESULT add_MediaOpened(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_MediaOpened(EventRegistrationToken token);
	HRESULT add_MediaEnded(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_MediaEnded(EventRegistrationToken token);
	HRESULT add_MediaFailed(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, Windows.Media.Playback.MediaPlayerFailedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_MediaFailed(EventRegistrationToken token);
	deprecated("Use PlaybackSession.PlaybackStateChanged instead of CurrentStateChanged.  For more info, see MSDN.")
	HRESULT add_CurrentStateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable) value, EventRegistrationToken* return_token);
	deprecated("Use PlaybackSession.PlaybackStateChanged instead of CurrentStateChanged.  For more info, see MSDN.")
	HRESULT remove_CurrentStateChanged(EventRegistrationToken token);
	deprecated("Use media tracks on MediaPlaybackItem instead of PlaybackMediaMarkers.	For more info, see MSDN.")
	HRESULT add_PlaybackMediaMarkerReached(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, Windows.Media.Playback.PlaybackMediaMarkerReachedEventArgs) value, EventRegistrationToken* return_token);
	deprecated("Use media tracks on MediaPlaybackItem instead of PlaybackMediaMarkers.	For more info, see MSDN.")
	HRESULT remove_PlaybackMediaMarkerReached(EventRegistrationToken token);
	deprecated("Use PlaybackSession.PlaybackRateChanged instead of MediaPlayerRateChanged.	For more info, see MSDN.")
	HRESULT add_MediaPlayerRateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, Windows.Media.Playback.MediaPlayerRateChangedEventArgs) value, EventRegistrationToken* return_token);
	deprecated("Use PlaybackSession.PlaybackRateChanged instead of MediaPlayerRateChanged.	For more info, see MSDN.")
	HRESULT remove_MediaPlayerRateChanged(EventRegistrationToken token);
	HRESULT add_VolumeChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_VolumeChanged(EventRegistrationToken token);
	deprecated("Use PlaybackSession.SeekCompleted instead of SeekCompleted.	 For more info, see MSDN.")
	HRESULT add_SeekCompleted(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable) value, EventRegistrationToken* return_token);
	deprecated("Use PlaybackSession.SeekCompleted instead of SeekCompleted.	 For more info, see MSDN.")
	HRESULT remove_SeekCompleted(EventRegistrationToken token);
	deprecated("Use PlaybackSession.BufferingStarted instead of BufferingStarted.  For more info, see MSDN.")
	HRESULT add_BufferingStarted(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable) value, EventRegistrationToken* return_token);
	deprecated("Use PlaybackSession.BufferingStarted instead of BufferingStarted.  For more info, see MSDN.")
	HRESULT remove_BufferingStarted(EventRegistrationToken token);
	deprecated("Use PlaybackSession.BufferingEnded instead of BufferingEnded.  For more info, see MSDN.")
	HRESULT add_BufferingEnded(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable) value, EventRegistrationToken* return_token);
	deprecated("Use PlaybackSession.BufferingEnded instead of BufferingEnded.  For more info, see MSDN.")
	HRESULT remove_BufferingEnded(EventRegistrationToken token);
	HRESULT abi_Play();
	HRESULT abi_Pause();
	deprecated("Use Source instead of SetUriSource.	 For more info, see MSDN.")
	HRESULT abi_SetUriSource(Windows.Foundation.Uri value);
}

@uuid("3c841218-2123-4fc5-9082-2f883f77bdf5")
@WinrtFactory("Windows.Media.Playback.MediaPlayer")
interface IMediaPlayer2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SystemMediaTransportControls(Windows.Media.SystemMediaTransportControls* return_value);
	HRESULT get_AudioCategory(Windows.Media.Playback.MediaPlayerAudioCategory* return_value);
	HRESULT set_AudioCategory(Windows.Media.Playback.MediaPlayerAudioCategory value);
	HRESULT get_AudioDeviceType(Windows.Media.Playback.MediaPlayerAudioDeviceType* return_value);
	HRESULT set_AudioDeviceType(Windows.Media.Playback.MediaPlayerAudioDeviceType value);
}

@uuid("ee0660da-031b-4feb-bd9b-92e0a0a8d299")
@WinrtFactory("Windows.Media.Playback.MediaPlayer")
interface IMediaPlayer3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_IsMutedChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_IsMutedChanged(EventRegistrationToken token);
	HRESULT add_SourceChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_SourceChanged(EventRegistrationToken token);
	HRESULT get_AudioBalance(double* return_value);
	HRESULT set_AudioBalance(double value);
	HRESULT get_RealTimePlayback(bool* return_value);
	HRESULT set_RealTimePlayback(bool value);
	HRESULT get_StereoscopicVideoRenderMode(Windows.Media.Playback.StereoscopicVideoRenderMode* return_value);
	HRESULT set_StereoscopicVideoRenderMode(Windows.Media.Playback.StereoscopicVideoRenderMode value);
	HRESULT get_BreakManager(Windows.Media.Playback.MediaBreakManager* return_value);
	HRESULT get_CommandManager(Windows.Media.Playback.MediaPlaybackCommandManager* return_value);
	HRESULT get_AudioDevice(Windows.Devices.Enumeration.DeviceInformation* return_value);
	HRESULT set_AudioDevice(Windows.Devices.Enumeration.DeviceInformation value);
	HRESULT get_TimelineController(Windows.Media.MediaTimelineController* return_value);
	HRESULT set_TimelineController(Windows.Media.MediaTimelineController value);
	HRESULT get_TimelineControllerPositionOffset(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_TimelineControllerPositionOffset(Windows.Foundation.TimeSpan value);
	HRESULT get_PlaybackSession(Windows.Media.Playback.MediaPlaybackSession* return_value);
	HRESULT abi_StepForwardOneFrame();
	HRESULT abi_StepBackwardOneFrame();
	HRESULT abi_GetAsCastingSource(Windows.Media.Casting.CastingSource* return_returnValue);
}

@uuid("80035db0-7448-4770-afcf-2a57450914c5")
@WinrtFactory("Windows.Media.Playback.MediaPlayer")
interface IMediaPlayer4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetSurfaceSize(Windows.Foundation.Size size);
	HRESULT abi_GetSurface(Windows.UI.Composition.Compositor compositor, Windows.Media.Playback.MediaPlayerSurface* return_result);
}

@uuid("cfe537fd-f86a-4446-bf4d-c8e792b7b4b3")
@WinrtFactory("Windows.Media.Playback.MediaPlayer")
interface IMediaPlayer5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_VideoFrameAvailable(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_VideoFrameAvailable(EventRegistrationToken token);
	HRESULT get_IsVideoFrameServerEnabled(bool* return_value);
	HRESULT set_IsVideoFrameServerEnabled(bool value);
	HRESULT abi_CopyFrameToVideoSurface(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface destination);
	HRESULT abi_CopyFrameToVideoSurfaceWithTargetRectangle(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface destination, Windows.Foundation.Rect targetRectangle);
	HRESULT abi_CopyFrameToStereoscopicVideoSurfaces(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface destinationLeftEye, Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface destinationRightEye);
}

@uuid("c75a9405-c801-412a-835b-83fc0e622a8e")
@WinrtFactory("Windows.Media.Playback.MediaPlayerDataReceivedEventArgs")
interface IMediaPlayerDataReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Data(Windows.Foundation.Collections.ValueSet* return_value);
}

@uuid("85a1deda-cab6-4cc0-8be3-6035f4de2591")
@WinrtFactory("Windows.Media.Playback.MediaPlayer")
interface IMediaPlayerEffects : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddAudioEffect(HSTRING activatableClassId, bool effectOptional, Windows.Foundation.Collections.IPropertySet configuration);
	HRESULT abi_RemoveAllEffects();
}

@uuid("fa419a79-1bbe-46c5-ae1f-8ee69fb3c2c7")
@WinrtFactory("Windows.Media.Playback.MediaPlayer")
interface IMediaPlayerEffects2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddVideoEffect(HSTRING activatableClassId, bool effectOptional, Windows.Foundation.Collections.IPropertySet effectConfiguration);
}

@uuid("2744e9b9-a7e3-4f16-bac4-7914ebc08301")
@WinrtFactory("Windows.Media.Playback.MediaPlayerFailedEventArgs")
interface IMediaPlayerFailedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Error(Windows.Media.Playback.MediaPlayerError* return_value);
	HRESULT get_ExtendedErrorCode(HRESULT* return_value);
	HRESULT get_ErrorMessage(HSTRING* return_value);
}

@uuid("40600d58-3b61-4bb2-989f-fc65608b6cab")
@WinrtFactory("Windows.Media.Playback.MediaPlayerRateChangedEventArgs")
interface IMediaPlayerRateChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NewRate(double* return_value);
}

@uuid("bd4f8897-1423-4c3e-82c5-0fb1af94f715")
@WinrtFactory("Windows.Media.Playback.MediaPlayer")
interface IMediaPlayerSource : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ProtectionManager(Windows.Media.Protection.MediaProtectionManager* return_value);
	HRESULT set_ProtectionManager(Windows.Media.Protection.MediaProtectionManager value);
	deprecated("Use Source instead of SetFileSource.  For more info, see MSDN.")
	HRESULT abi_SetFileSource(Windows.Storage.IStorageFile file);
	deprecated("Use Source instead of SetStreamSource.	For more info, see MSDN.")
	HRESULT abi_SetStreamSource(Windows.Storage.Streams.IRandomAccessStream stream);
	deprecated("Use Source instead of SetMediaSource.  For more info, see MSDN.")
	HRESULT abi_SetMediaSource(Windows.Media.Core.IMediaSource source);
}

@uuid("82449b9f-7322-4c0b-b03b-3e69a48260c5")
@WinrtFactory("Windows.Media.Playback.MediaPlayer")
interface IMediaPlayerSource2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Source(Windows.Media.Playback.IMediaPlaybackSource* return_value);
	HRESULT set_Source(Windows.Media.Playback.IMediaPlaybackSource value);
}

@uuid("0ed653bc-b736-49c3-830b-764a3845313a")
@WinrtFactory("Windows.Media.Playback.MediaPlayerSurface")
interface IMediaPlayerSurface : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CompositionSurface(Windows.UI.Composition.ICompositionSurface* return_value);
	HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value);
	HRESULT get_MediaPlayer(Windows.Media.Playback.MediaPlayer* return_value);
}

@uuid("c4d22f5c-3c1c-4444-b6b9-778b0422d41a")
@WinrtFactory("Windows.Media.Playback.PlaybackMediaMarker")
interface IPlaybackMediaMarker : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Time(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_MediaMarkerType(HSTRING* return_value);
	HRESULT get_Text(HSTRING* return_value);
}

@uuid("8c530a78-e0ae-4e1a-a8c8-e23f982a937b")
@WinrtFactory("Windows.Media.Playback.PlaybackMediaMarker")
interface IPlaybackMediaMarkerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFromTime(Windows.Foundation.TimeSpan value, Windows.Media.Playback.PlaybackMediaMarker* return_marker);
	HRESULT abi_Create(Windows.Foundation.TimeSpan value, HSTRING mediaMarketType, HSTRING text, Windows.Media.Playback.PlaybackMediaMarker* return_marker);
}

@uuid("578cd1b9-90e2-4e60-abc4-8740b01f6196")
@WinrtFactory("Windows.Media.Playback.PlaybackMediaMarkerReachedEventArgs")
interface IPlaybackMediaMarkerReachedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PlaybackMediaMarker(Windows.Media.Playback.PlaybackMediaMarker* return_value);
}

@uuid("f2810cee-638b-46cf-8817-1d111fe9d8c4")
@WinrtFactory("Windows.Media.Playback.PlaybackMediaMarkerSequence")
interface IPlaybackMediaMarkerSequence : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Size(UINT32* return_value);
	HRESULT abi_Insert(Windows.Media.Playback.PlaybackMediaMarker value);
	HRESULT abi_Clear();
}

@uuid("d1636099-65df-45ae-8cef-dc0b53fdc2bb")
@WinrtFactory("Windows.Media.Playback.TimedMetadataPresentationModeChangedEventArgs")
interface ITimedMetadataPresentationModeChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Track(Windows.Media.Core.TimedMetadataTrack* return_value);
	HRESULT get_OldPresentationMode(Windows.Media.Playback.TimedMetadataTrackPresentationMode* return_value);
	HRESULT get_NewPresentationMode(Windows.Media.Playback.TimedMetadataTrackPresentationMode* return_value);
}

interface CurrentMediaPlaybackItemChangedEventArgs
{
}

interface MediaBreak
{
}

interface MediaBreakEndedEventArgs
{
}

interface MediaBreakManager
{
}

interface MediaBreakSchedule
{
}

interface MediaBreakSeekedOverEventArgs
{
}

interface MediaBreakSkippedEventArgs
{
}

interface MediaBreakStartedEventArgs
{
}

interface MediaItemDisplayProperties
{
}

interface MediaPlaybackAudioTrackList
{
}

interface MediaPlaybackCommandManager
{
}

interface MediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs
{
}

interface MediaPlaybackCommandManagerCommandBehavior
{
}

interface MediaPlaybackCommandManagerFastForwardReceivedEventArgs
{
}

interface MediaPlaybackCommandManagerNextReceivedEventArgs
{
}

interface MediaPlaybackCommandManagerPauseReceivedEventArgs
{
}

interface MediaPlaybackCommandManagerPlayReceivedEventArgs
{
}

interface MediaPlaybackCommandManagerPositionReceivedEventArgs
{
}

interface MediaPlaybackCommandManagerPreviousReceivedEventArgs
{
}

interface MediaPlaybackCommandManagerRateReceivedEventArgs
{
}

interface MediaPlaybackCommandManagerRewindReceivedEventArgs
{
}

interface MediaPlaybackCommandManagerShuffleReceivedEventArgs
{
}

interface MediaPlaybackItem
{
}

interface MediaPlaybackItemError
{
}

interface MediaPlaybackItemFailedEventArgs
{
}

interface MediaPlaybackItemOpenedEventArgs
{
}

interface MediaPlaybackList
{
}

interface MediaPlaybackSession
{
}

interface MediaPlaybackSphericalVideoProjection
{
}

interface MediaPlaybackTimedMetadataTrackList
{
}

interface MediaPlaybackVideoTrackList
{
}

interface MediaPlayer
{
}

interface MediaPlayerDataReceivedEventArgs
{
}

interface MediaPlayerFailedEventArgs
{
}

interface MediaPlayerRateChangedEventArgs
{
}

interface MediaPlayerSurface
{
}

interface PlaybackMediaMarker
{
}

interface PlaybackMediaMarkerReachedEventArgs
{
}

interface PlaybackMediaMarkerSequence
{
}

interface TimedMetadataPresentationModeChangedEventArgs
{
}

enum AutoLoadedDisplayPropertyKind
{
	None = 0,
	MusicOrVideo = 1,
	Music = 2,
	Video = 3
}

enum FailedMediaStreamKind
{
	Unknown = 0,
	Audio = 1,
	Video = 2
}

enum MediaBreakInsertionMethod
{
	Interrupt = 0,
	Replace = 1
}

enum MediaCommandEnablingRule
{
	Auto = 0,
	Always = 1,
	Never = 2
}

enum MediaPlaybackItemChangedReason
{
	InitialItem = 0,
	EndOfStream = 1,
	Error = 2,
	AppRequested = 3
}

enum MediaPlaybackItemErrorCode
{
	None = 0,
	Aborted = 1,
	NetworkError = 2,
	DecodeError = 3,
	SourceNotSupportedError = 4,
	EncryptionError = 5
}

enum MediaPlaybackState
{
	None = 0,
	Opening = 1,
	Buffering = 2,
	Playing = 3,
	Paused = 4
}

enum MediaPlayerAudioCategory
{
	Other = 0,
	Communications = 3,
	Alerts = 4,
	SoundEffects = 5,
	GameEffects = 6,
	GameMedia = 7,
	GameChat = 8,
	Speech = 9,
	Movie = 10,
	Media = 11
}

enum MediaPlayerAudioDeviceType
{
	Console = 0,
	Multimedia = 1,
	Communications = 2
}

enum MediaPlayerError
{
	Unknown = 0,
	Aborted = 1,
	NetworkError = 2,
	DecodingError = 3,
	SourceNotSupported = 4
}

enum MediaPlayerState
{
	Closed = 0,
	Opening = 1,
	Buffering = 2,
	Playing = 3,
	Paused = 4,
	Stopped = 5
}

enum SphericalVideoProjectionMode
{
	Spherical = 0,
	Flat = 1
}

enum StereoscopicVideoRenderMode
{
	Mono = 0,
	Stereo = 1
}

enum TimedMetadataTrackPresentationMode
{
	Disabled = 0,
	Hidden = 1,
	ApplicationPresented = 2,
	PlatformPresented = 3
}