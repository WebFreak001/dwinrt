module Windows.Media.Playback;

import dwinrt;

@uuid("856ddbc1-55f7-471f-a0f2-68ac4c904592")
@WinrtFactory("Windows.Media.Playback.BackgroundMediaPlayer")
interface IBackgroundMediaPlayerStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_NewItem(Windows.Media.Playback.MediaPlaybackItem* return_value);
	HRESULT get_OldItem(Windows.Media.Playback.MediaPlaybackItem* return_value);
}

@uuid("1d80a51e-996e-40a9-be48-e66ec90b2b7d")
@WinrtFactory("Windows.Media.Playback.CurrentMediaPlaybackItemChangedEventArgs")
interface ICurrentMediaPlaybackItemChangedEventArgs2 : IInspectable, Windows.Media.Playback.ICurrentMediaPlaybackItemChangedEventArgs
{
extern(Windows):
	HRESULT get_Reason(Windows.Media.Playback.MediaPlaybackItemChangedReason* return_value);
}

@uuid("714be270-0def-4ebc-a489-6b34930e1558")
@WinrtFactory("Windows.Media.Playback.MediaBreak")
interface IMediaBreak : IInspectable
{
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
extern(Windows):
	HRESULT get_MediaBreak(Windows.Media.Playback.MediaBreak* return_value);
}

@uuid("4516e002-18e0-4079-8b5f-d33495c15d2e")
@WinrtFactory("Windows.Media.Playback.MediaBreak")
interface IMediaBreakFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Media.Playback.MediaBreakInsertionMethod insertionMethod, Windows.Media.Playback.MediaBreak* return_result);
	HRESULT abi_CreateWithPresentationPosition(Windows.Media.Playback.MediaBreakInsertionMethod insertionMethod, Windows.Foundation.TimeSpan presentationPosition, Windows.Media.Playback.MediaBreak* return_result);
}

@uuid("a854ddb1-feb4-4d9b-9d97-0fdbe58e5e39")
@WinrtFactory("Windows.Media.Playback.MediaBreakManager")
interface IMediaBreakManager : IInspectable
{
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
extern(Windows):
	HRESULT get_SeekedOverBreaks(Windows.Foundation.Collections.IVectorView!(Windows.Media.Playback.MediaBreak)* return_value);
	HRESULT get_OldPosition(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_NewPosition(Windows.Foundation.TimeSpan* return_value);
}

@uuid("6ee94c05-2f54-4a3e-a3ab-24c3b270b4a3")
@WinrtFactory("Windows.Media.Playback.MediaBreakSkippedEventArgs")
interface IMediaBreakSkippedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_MediaBreak(Windows.Media.Playback.MediaBreak* return_value);
}

@uuid("a87efe71-dfd4-454a-956e-0a4a648395f8")
@WinrtFactory("Windows.Media.Playback.MediaBreakStartedEventArgs")
interface IMediaBreakStartedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_MediaBreak(Windows.Media.Playback.MediaBreak* return_value);
}

@uuid("5c1d0ba7-3856-48b9-8dc6-244bf107bf8c")
interface IMediaEnginePlaybackSource : IInspectable
{
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
extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("e1504433-a2b0-45d4-b9de-5f42ac14a839")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerNextReceivedEventArgs")
interface IMediaPlaybackCommandManagerNextReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("5ceccd1c-c25c-4221-b16c-c3c98ce012d6")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerPauseReceivedEventArgs")
interface IMediaPlaybackCommandManagerPauseReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("9af0004e-578b-4c56-a006-16159d888a48")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerPlayReceivedEventArgs")
interface IMediaPlaybackCommandManagerPlayReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("5591a754-d627-4bdd-a90d-86a015b24902")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerPositionReceivedEventArgs")
interface IMediaPlaybackCommandManagerPositionReceivedEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("18ea3939-4a16-4169-8b05-3eb9f5ff78eb")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerRateReceivedEventArgs")
interface IMediaPlaybackCommandManagerRateReceivedEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("50a05cef-63ee-4a96-b7b5-fee08b9ff90c")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackCommandManagerShuffleReceivedEventArgs")
interface IMediaPlaybackCommandManagerShuffleReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT get_IsShuffleRequested(bool* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("047097d2-e4af-48ab-b283-6929e674ece2")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackItem")
interface IMediaPlaybackItem : IInspectable, Windows.Media.Playback.IMediaPlaybackSource
{
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
interface IMediaPlaybackItem2 : IInspectable, Windows.Media.Playback.IMediaPlaybackItem, Windows.Media.Playback.IMediaPlaybackSource
{
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
interface IMediaPlaybackItem3 : IInspectable, Windows.Media.Playback.IMediaPlaybackItem2, Windows.Media.Playback.IMediaPlaybackItem, Windows.Media.Playback.IMediaPlaybackSource
{
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
extern(Windows):
	HRESULT get_ErrorCode(Windows.Media.Playback.MediaPlaybackItemErrorCode* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("7133fce1-1769-4ff9-a7c1-38d2c4d42360")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackItem")
interface IMediaPlaybackItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Media.Core.MediaSource source, Windows.Media.Playback.MediaPlaybackItem* return_value);
}

@uuid("d77cdf3a-b947-4972-b35d-adfb931a71e6")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackItem")
interface IMediaPlaybackItemFactory2 : IInspectable, Windows.Media.Playback.IMediaPlaybackItemFactory
{
extern(Windows):
	HRESULT abi_CreateWithStartTime(Windows.Media.Core.MediaSource source, Windows.Foundation.TimeSpan startTime, Windows.Media.Playback.MediaPlaybackItem* return_result);
	HRESULT abi_CreateWithStartTimeAndDurationLimit(Windows.Media.Core.MediaSource source, Windows.Foundation.TimeSpan startTime, Windows.Foundation.TimeSpan durationLimit, Windows.Media.Playback.MediaPlaybackItem* return_result);
}

@uuid("7703134a-e9a7-47c3-862c-c656d30683d4")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackItemFailedEventArgs")
interface IMediaPlaybackItemFailedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Item(Windows.Media.Playback.MediaPlaybackItem* return_value);
	HRESULT get_Error(Windows.Media.Playback.MediaPlaybackItemError* return_value);
}

@uuid("cbd9bd82-3037-4fbe-ae8f-39fc39edf4ef")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackItemOpenedEventArgs")
interface IMediaPlaybackItemOpenedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Item(Windows.Media.Playback.MediaPlaybackItem* return_value);
}

@uuid("4b1be7f4-4345-403c-8a67-f5de91df4c86")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackItem")
interface IMediaPlaybackItemStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FindFromMediaSource(Windows.Media.Core.MediaSource source, Windows.Media.Playback.MediaPlaybackItem* return_value);
}

@uuid("7f77ee9c-dc42-4e26-a98d-7850df8ec925")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackList")
interface IMediaPlaybackList : IInspectable, Windows.Media.Playback.IMediaPlaybackSource
{
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
interface IMediaPlaybackList2 : IInspectable, Windows.Media.Playback.IMediaPlaybackList, Windows.Media.Playback.IMediaPlaybackSource
{
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
interface IMediaPlaybackList3 : IInspectable, Windows.Media.Playback.IMediaPlaybackList2, Windows.Media.Playback.IMediaPlaybackList, Windows.Media.Playback.IMediaPlaybackSource
{
extern(Windows):
	HRESULT get_MaxPlayedItemsToKeepOpen(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_MaxPlayedItemsToKeepOpen(Windows.Foundation.IReference!(UINT32) value);
}

@uuid("c32b683d-0407-41ba-8946-8b345a5a5435")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackSession")
interface IMediaPlaybackSession : IInspectable
{
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

@uuid("ef9dc2bc-9317-4696-b051-2bad643177b5")
interface IMediaPlaybackSource : IInspectable
{
}

@uuid("d405b37c-6f0e-4661-b8ee-d487ba9752d5")
@WinrtFactory("Windows.Media.Playback.MediaPlaybackSphericalVideoProjection")
interface IMediaPlaybackSphericalVideoProjection : IInspectable
{
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
extern(Windows):
	HRESULT abi_SetSurfaceSize(Windows.Foundation.Size size);
	HRESULT abi_GetSurface(Windows.UI.Composition.Compositor compositor, Windows.Media.Playback.MediaPlayerSurface* return_result);
}

@uuid("cfe537fd-f86a-4446-bf4d-c8e792b7b4b3")
@WinrtFactory("Windows.Media.Playback.MediaPlayer")
interface IMediaPlayer5 : IInspectable
{
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
extern(Windows):
	HRESULT get_Data(Windows.Foundation.Collections.ValueSet* return_value);
}

@uuid("85a1deda-cab6-4cc0-8be3-6035f4de2591")
@WinrtFactory("Windows.Media.Playback.MediaPlayer")
interface IMediaPlayerEffects : IInspectable
{
extern(Windows):
	HRESULT abi_AddAudioEffect(HSTRING activatableClassId, bool effectOptional, Windows.Foundation.Collections.IPropertySet configuration);
	HRESULT abi_RemoveAllEffects();
}

@uuid("fa419a79-1bbe-46c5-ae1f-8ee69fb3c2c7")
@WinrtFactory("Windows.Media.Playback.MediaPlayer")
interface IMediaPlayerEffects2 : IInspectable
{
extern(Windows):
	HRESULT abi_AddVideoEffect(HSTRING activatableClassId, bool effectOptional, Windows.Foundation.Collections.IPropertySet effectConfiguration);
}

@uuid("2744e9b9-a7e3-4f16-bac4-7914ebc08301")
@WinrtFactory("Windows.Media.Playback.MediaPlayerFailedEventArgs")
interface IMediaPlayerFailedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Error(Windows.Media.Playback.MediaPlayerError* return_value);
	HRESULT get_ExtendedErrorCode(HRESULT* return_value);
	HRESULT get_ErrorMessage(HSTRING* return_value);
}

@uuid("40600d58-3b61-4bb2-989f-fc65608b6cab")
@WinrtFactory("Windows.Media.Playback.MediaPlayerRateChangedEventArgs")
interface IMediaPlayerRateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_NewRate(double* return_value);
}

@uuid("bd4f8897-1423-4c3e-82c5-0fb1af94f715")
@WinrtFactory("Windows.Media.Playback.MediaPlayer")
interface IMediaPlayerSource : IInspectable
{
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
extern(Windows):
	HRESULT get_Source(Windows.Media.Playback.IMediaPlaybackSource* return_value);
	HRESULT set_Source(Windows.Media.Playback.IMediaPlaybackSource value);
}

@uuid("0ed653bc-b736-49c3-830b-764a3845313a")
@WinrtFactory("Windows.Media.Playback.MediaPlayerSurface")
interface IMediaPlayerSurface : IInspectable
{
extern(Windows):
	HRESULT get_CompositionSurface(Windows.UI.Composition.ICompositionSurface* return_value);
	HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value);
	HRESULT get_MediaPlayer(Windows.Media.Playback.MediaPlayer* return_value);
}

@uuid("c4d22f5c-3c1c-4444-b6b9-778b0422d41a")
@WinrtFactory("Windows.Media.Playback.PlaybackMediaMarker")
interface IPlaybackMediaMarker : IInspectable
{
extern(Windows):
	HRESULT get_Time(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_MediaMarkerType(HSTRING* return_value);
	HRESULT get_Text(HSTRING* return_value);
}

@uuid("8c530a78-e0ae-4e1a-a8c8-e23f982a937b")
@WinrtFactory("Windows.Media.Playback.PlaybackMediaMarker")
interface IPlaybackMediaMarkerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromTime(Windows.Foundation.TimeSpan value, Windows.Media.Playback.PlaybackMediaMarker* return_marker);
	HRESULT abi_Create(Windows.Foundation.TimeSpan value, HSTRING mediaMarketType, HSTRING text, Windows.Media.Playback.PlaybackMediaMarker* return_marker);
}

@uuid("578cd1b9-90e2-4e60-abc4-8740b01f6196")
@WinrtFactory("Windows.Media.Playback.PlaybackMediaMarkerReachedEventArgs")
interface IPlaybackMediaMarkerReachedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PlaybackMediaMarker(Windows.Media.Playback.PlaybackMediaMarker* return_value);
}

@uuid("f2810cee-638b-46cf-8817-1d111fe9d8c4")
@WinrtFactory("Windows.Media.Playback.PlaybackMediaMarkerSequence")
interface IPlaybackMediaMarkerSequence : IInspectable, Windows.Foundation.Collections.IIterable!(Windows.Media.Playback.PlaybackMediaMarker)
{
extern(Windows):
	HRESULT get_Size(UINT32* return_value);
	HRESULT abi_Insert(Windows.Media.Playback.PlaybackMediaMarker value);
	HRESULT abi_Clear();
}

@uuid("d1636099-65df-45ae-8cef-dc0b53fdc2bb")
@WinrtFactory("Windows.Media.Playback.TimedMetadataPresentationModeChangedEventArgs")
interface ITimedMetadataPresentationModeChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Track(Windows.Media.Core.TimedMetadataTrack* return_value);
	HRESULT get_OldPresentationMode(Windows.Media.Playback.TimedMetadataTrackPresentationMode* return_value);
	HRESULT get_NewPresentationMode(Windows.Media.Playback.TimedMetadataTrackPresentationMode* return_value);
}

interface BackgroundMediaPlayer
{
}

interface CurrentMediaPlaybackItemChangedEventArgs : Windows.Media.Playback.ICurrentMediaPlaybackItemChangedEventArgs, Windows.Media.Playback.ICurrentMediaPlaybackItemChangedEventArgs2
{
extern(Windows):
	final Windows.Media.Playback.MediaPlaybackItem NewItem()
	{
		Windows.Media.Playback.MediaPlaybackItem _ret;
		Debug.OK(this.as!(Windows.Media.Playback.ICurrentMediaPlaybackItemChangedEventArgs).get_NewItem(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackItem OldItem()
	{
		Windows.Media.Playback.MediaPlaybackItem _ret;
		Debug.OK(this.as!(Windows.Media.Playback.ICurrentMediaPlaybackItemChangedEventArgs).get_OldItem(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackItemChangedReason Reason()
	{
		Windows.Media.Playback.MediaPlaybackItemChangedReason _ret;
		Debug.OK(this.as!(Windows.Media.Playback.ICurrentMediaPlaybackItemChangedEventArgs2).get_Reason(&_ret));
		return _ret;
	}
}

interface MediaBreak : Windows.Media.Playback.IMediaBreak
{
extern(Windows):
	final Windows.Media.Playback.MediaPlaybackList PlaybackList()
	{
		Windows.Media.Playback.MediaPlaybackList _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreak).get_PlaybackList(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) PresentationPosition()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreak).get_PresentationPosition(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaBreakInsertionMethod InsertionMethod()
	{
		Windows.Media.Playback.MediaBreakInsertionMethod _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreak).get_InsertionMethod(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet CustomProperties()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreak).get_CustomProperties(&_ret));
		return _ret;
	}
	final bool CanStart()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreak).get_CanStart(&_ret));
		return _ret;
	}
	final void CanStart(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreak).set_CanStart(value));
	}
}

interface MediaBreakEndedEventArgs : Windows.Media.Playback.IMediaBreakEndedEventArgs
{
extern(Windows):
	final Windows.Media.Playback.MediaBreak MediaBreak()
	{
		Windows.Media.Playback.MediaBreak _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakEndedEventArgs).get_MediaBreak(&_ret));
		return _ret;
	}
}

interface MediaBreakManager : Windows.Media.Playback.IMediaBreakManager
{
extern(Windows):
	final EventRegistrationToken OnBreaksSeekedOver(void delegate(Windows.Media.Playback.MediaBreakManager, Windows.Media.Playback.MediaBreakSeekedOverEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_BreaksSeekedOver(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaBreakManager, Windows.Media.Playback.MediaBreakSeekedOverEventArgs), Windows.Media.Playback.MediaBreakManager, Windows.Media.Playback.MediaBreakSeekedOverEventArgs)(fn), &tok));
		return tok;
	}
	final void removeBreaksSeekedOver(EventRegistrationToken token)
	{
		Debug.OK(remove_BreaksSeekedOver(token));
	}
	final EventRegistrationToken OnBreakStarted(void delegate(Windows.Media.Playback.MediaBreakManager, Windows.Media.Playback.MediaBreakStartedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_BreakStarted(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaBreakManager, Windows.Media.Playback.MediaBreakStartedEventArgs), Windows.Media.Playback.MediaBreakManager, Windows.Media.Playback.MediaBreakStartedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeBreakStarted(EventRegistrationToken token)
	{
		Debug.OK(remove_BreakStarted(token));
	}
	final EventRegistrationToken OnBreakEnded(void delegate(Windows.Media.Playback.MediaBreakManager, Windows.Media.Playback.MediaBreakEndedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_BreakEnded(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaBreakManager, Windows.Media.Playback.MediaBreakEndedEventArgs), Windows.Media.Playback.MediaBreakManager, Windows.Media.Playback.MediaBreakEndedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeBreakEnded(EventRegistrationToken token)
	{
		Debug.OK(remove_BreakEnded(token));
	}
	final EventRegistrationToken OnBreakSkipped(void delegate(Windows.Media.Playback.MediaBreakManager, Windows.Media.Playback.MediaBreakSkippedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_BreakSkipped(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaBreakManager, Windows.Media.Playback.MediaBreakSkippedEventArgs), Windows.Media.Playback.MediaBreakManager, Windows.Media.Playback.MediaBreakSkippedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeBreakSkipped(EventRegistrationToken token)
	{
		Debug.OK(remove_BreakSkipped(token));
	}
	final Windows.Media.Playback.MediaBreak CurrentBreak()
	{
		Windows.Media.Playback.MediaBreak _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakManager).get_CurrentBreak(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackSession PlaybackSession()
	{
		Windows.Media.Playback.MediaPlaybackSession _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakManager).get_PlaybackSession(&_ret));
		return _ret;
	}
	final void PlayBreak(Windows.Media.Playback.MediaBreak value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakManager).abi_PlayBreak(value));
	}
	final void SkipCurrentBreak()
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakManager).abi_SkipCurrentBreak());
	}
}

interface MediaBreakSchedule : Windows.Media.Playback.IMediaBreakSchedule
{
extern(Windows):
	final EventRegistrationToken OnScheduleChanged(void delegate(Windows.Media.Playback.MediaBreakSchedule, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ScheduleChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaBreakSchedule, IInspectable), Windows.Media.Playback.MediaBreakSchedule, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeScheduleChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_ScheduleChanged(token));
	}
	final void InsertMidrollBreak(Windows.Media.Playback.MediaBreak mediaBreak)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakSchedule).abi_InsertMidrollBreak(mediaBreak));
	}
	final void RemoveMidrollBreak(Windows.Media.Playback.MediaBreak mediaBreak)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakSchedule).abi_RemoveMidrollBreak(mediaBreak));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Playback.MediaBreak) MidrollBreaks()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Playback.MediaBreak) _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakSchedule).get_MidrollBreaks(&_ret));
		return _ret;
	}
	final void PrerollBreak(Windows.Media.Playback.MediaBreak value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakSchedule).set_PrerollBreak(value));
	}
	final Windows.Media.Playback.MediaBreak PrerollBreak()
	{
		Windows.Media.Playback.MediaBreak _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakSchedule).get_PrerollBreak(&_ret));
		return _ret;
	}
	final void PostrollBreak(Windows.Media.Playback.MediaBreak value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakSchedule).set_PostrollBreak(value));
	}
	final Windows.Media.Playback.MediaBreak PostrollBreak()
	{
		Windows.Media.Playback.MediaBreak _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakSchedule).get_PostrollBreak(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackItem PlaybackItem()
	{
		Windows.Media.Playback.MediaPlaybackItem _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakSchedule).get_PlaybackItem(&_ret));
		return _ret;
	}
}

interface MediaBreakSeekedOverEventArgs : Windows.Media.Playback.IMediaBreakSeekedOverEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Playback.MediaBreak) SeekedOverBreaks()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Playback.MediaBreak) _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakSeekedOverEventArgs).get_SeekedOverBreaks(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan OldPosition()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakSeekedOverEventArgs).get_OldPosition(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan NewPosition()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakSeekedOverEventArgs).get_NewPosition(&_ret));
		return _ret;
	}
}

interface MediaBreakSkippedEventArgs : Windows.Media.Playback.IMediaBreakSkippedEventArgs
{
extern(Windows):
	final Windows.Media.Playback.MediaBreak MediaBreak()
	{
		Windows.Media.Playback.MediaBreak _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakSkippedEventArgs).get_MediaBreak(&_ret));
		return _ret;
	}
}

interface MediaBreakStartedEventArgs : Windows.Media.Playback.IMediaBreakStartedEventArgs
{
extern(Windows):
	final Windows.Media.Playback.MediaBreak MediaBreak()
	{
		Windows.Media.Playback.MediaBreak _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaBreakStartedEventArgs).get_MediaBreak(&_ret));
		return _ret;
	}
}

interface MediaItemDisplayProperties : Windows.Media.Playback.IMediaItemDisplayProperties
{
extern(Windows):
	final Windows.Media.MediaPlaybackType Type()
	{
		Windows.Media.MediaPlaybackType _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaItemDisplayProperties).get_Type(&_ret));
		return _ret;
	}
	final void Type(Windows.Media.MediaPlaybackType value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaItemDisplayProperties).set_Type(value));
	}
	final Windows.Media.MusicDisplayProperties MusicProperties()
	{
		Windows.Media.MusicDisplayProperties _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaItemDisplayProperties).get_MusicProperties(&_ret));
		return _ret;
	}
	final Windows.Media.VideoDisplayProperties VideoProperties()
	{
		Windows.Media.VideoDisplayProperties _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaItemDisplayProperties).get_VideoProperties(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.RandomAccessStreamReference Thumbnail()
	{
		Windows.Storage.Streams.RandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaItemDisplayProperties).get_Thumbnail(&_ret));
		return _ret;
	}
	final void Thumbnail(Windows.Storage.Streams.RandomAccessStreamReference value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaItemDisplayProperties).set_Thumbnail(value));
	}
	final void ClearAll()
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaItemDisplayProperties).abi_ClearAll());
	}
}

interface MediaPlaybackAudioTrackList : Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.AudioTrack), Windows.Foundation.Collections.IIterable!(Windows.Media.Core.AudioTrack), Windows.Media.Core.ISingleSelectMediaTrackList
{
extern(Windows):
	final void GetAt(uint index, Windows.Media.Core.AudioTrack* out_item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.AudioTrack)).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.AudioTrack)).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Media.Core.AudioTrack value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.AudioTrack)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Media.Core.AudioTrack* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.AudioTrack)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Media.Core.AudioTrack)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Media.Core.AudioTrack)).abi_First(out_first));
	}
	final EventRegistrationToken OnSelectedIndexChanged(void delegate(Windows.Media.Core.ISingleSelectMediaTrackList, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SelectedIndexChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.ISingleSelectMediaTrackList, IInspectable), Windows.Media.Core.ISingleSelectMediaTrackList, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeSelectedIndexChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_SelectedIndexChanged(token));
	}
	final void SelectedIndex(INT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ISingleSelectMediaTrackList).set_SelectedIndex(value));
	}
	final INT32 SelectedIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Media.Core.ISingleSelectMediaTrackList).get_SelectedIndex(&_ret));
		return _ret;
	}
}

interface MediaPlaybackCommandManager : Windows.Media.Playback.IMediaPlaybackCommandManager
{
extern(Windows):
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManager).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManager).set_IsEnabled(value));
	}
	final Windows.Media.Playback.MediaPlayer MediaPlayer()
	{
		Windows.Media.Playback.MediaPlayer _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManager).get_MediaPlayer(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior PlayBehavior()
	{
		Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManager).get_PlayBehavior(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior PauseBehavior()
	{
		Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManager).get_PauseBehavior(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior NextBehavior()
	{
		Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManager).get_NextBehavior(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior PreviousBehavior()
	{
		Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManager).get_PreviousBehavior(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior FastForwardBehavior()
	{
		Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManager).get_FastForwardBehavior(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior RewindBehavior()
	{
		Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManager).get_RewindBehavior(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior ShuffleBehavior()
	{
		Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManager).get_ShuffleBehavior(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior AutoRepeatModeBehavior()
	{
		Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManager).get_AutoRepeatModeBehavior(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior PositionBehavior()
	{
		Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManager).get_PositionBehavior(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior RateBehavior()
	{
		Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManager).get_RateBehavior(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnPlayReceived(void delegate(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerPlayReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PlayReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerPlayReceivedEventArgs), Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerPlayReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePlayReceived(EventRegistrationToken token)
	{
		Debug.OK(remove_PlayReceived(token));
	}
	final EventRegistrationToken OnPauseReceived(void delegate(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerPauseReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PauseReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerPauseReceivedEventArgs), Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerPauseReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePauseReceived(EventRegistrationToken token)
	{
		Debug.OK(remove_PauseReceived(token));
	}
	final EventRegistrationToken OnNextReceived(void delegate(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerNextReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_NextReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerNextReceivedEventArgs), Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerNextReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeNextReceived(EventRegistrationToken token)
	{
		Debug.OK(remove_NextReceived(token));
	}
	final EventRegistrationToken OnPreviousReceived(void delegate(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerPreviousReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PreviousReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerPreviousReceivedEventArgs), Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerPreviousReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePreviousReceived(EventRegistrationToken token)
	{
		Debug.OK(remove_PreviousReceived(token));
	}
	final EventRegistrationToken OnFastForwardReceived(void delegate(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerFastForwardReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_FastForwardReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerFastForwardReceivedEventArgs), Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerFastForwardReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeFastForwardReceived(EventRegistrationToken token)
	{
		Debug.OK(remove_FastForwardReceived(token));
	}
	final EventRegistrationToken OnRewindReceived(void delegate(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerRewindReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_RewindReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerRewindReceivedEventArgs), Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerRewindReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRewindReceived(EventRegistrationToken token)
	{
		Debug.OK(remove_RewindReceived(token));
	}
	final EventRegistrationToken OnShuffleReceived(void delegate(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerShuffleReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ShuffleReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerShuffleReceivedEventArgs), Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerShuffleReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeShuffleReceived(EventRegistrationToken token)
	{
		Debug.OK(remove_ShuffleReceived(token));
	}
	final EventRegistrationToken OnAutoRepeatModeReceived(void delegate(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_AutoRepeatModeReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs), Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAutoRepeatModeReceived(EventRegistrationToken token)
	{
		Debug.OK(remove_AutoRepeatModeReceived(token));
	}
	final EventRegistrationToken OnPositionReceived(void delegate(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerPositionReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PositionReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerPositionReceivedEventArgs), Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerPositionReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePositionReceived(EventRegistrationToken token)
	{
		Debug.OK(remove_PositionReceived(token));
	}
	final EventRegistrationToken OnRateReceived(void delegate(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerRateReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_RateReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerRateReceivedEventArgs), Windows.Media.Playback.MediaPlaybackCommandManager, Windows.Media.Playback.MediaPlaybackCommandManagerRateReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRateReceived(EventRegistrationToken token)
	{
		Debug.OK(remove_RateReceived(token));
	}
}

interface MediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs : Windows.Media.Playback.IMediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs).set_Handled(value));
	}
	final Windows.Media.MediaPlaybackAutoRepeatMode AutoRepeatMode()
	{
		Windows.Media.MediaPlaybackAutoRepeatMode _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs).get_AutoRepeatMode(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface MediaPlaybackCommandManagerCommandBehavior : Windows.Media.Playback.IMediaPlaybackCommandManagerCommandBehavior
{
extern(Windows):
	final Windows.Media.Playback.MediaPlaybackCommandManager CommandManager()
	{
		Windows.Media.Playback.MediaPlaybackCommandManager _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerCommandBehavior).get_CommandManager(&_ret));
		return _ret;
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerCommandBehavior).get_IsEnabled(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaCommandEnablingRule EnablingRule()
	{
		Windows.Media.Playback.MediaCommandEnablingRule _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerCommandBehavior).get_EnablingRule(&_ret));
		return _ret;
	}
	final void EnablingRule(Windows.Media.Playback.MediaCommandEnablingRule value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerCommandBehavior).set_EnablingRule(value));
	}
	final EventRegistrationToken OnIsEnabledChanged(void delegate(Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_IsEnabledChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior, IInspectable), Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeIsEnabledChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_IsEnabledChanged(token));
	}
}

interface MediaPlaybackCommandManagerFastForwardReceivedEventArgs : Windows.Media.Playback.IMediaPlaybackCommandManagerFastForwardReceivedEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerFastForwardReceivedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerFastForwardReceivedEventArgs).set_Handled(value));
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerFastForwardReceivedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface MediaPlaybackCommandManagerNextReceivedEventArgs : Windows.Media.Playback.IMediaPlaybackCommandManagerNextReceivedEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerNextReceivedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerNextReceivedEventArgs).set_Handled(value));
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerNextReceivedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface MediaPlaybackCommandManagerPauseReceivedEventArgs : Windows.Media.Playback.IMediaPlaybackCommandManagerPauseReceivedEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerPauseReceivedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerPauseReceivedEventArgs).set_Handled(value));
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerPauseReceivedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface MediaPlaybackCommandManagerPlayReceivedEventArgs : Windows.Media.Playback.IMediaPlaybackCommandManagerPlayReceivedEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerPlayReceivedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerPlayReceivedEventArgs).set_Handled(value));
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerPlayReceivedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface MediaPlaybackCommandManagerPositionReceivedEventArgs : Windows.Media.Playback.IMediaPlaybackCommandManagerPositionReceivedEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerPositionReceivedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerPositionReceivedEventArgs).set_Handled(value));
	}
	final Windows.Foundation.TimeSpan Position()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerPositionReceivedEventArgs).get_Position(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerPositionReceivedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface MediaPlaybackCommandManagerPreviousReceivedEventArgs : Windows.Media.Playback.IMediaPlaybackCommandManagerPreviousReceivedEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerPreviousReceivedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerPreviousReceivedEventArgs).set_Handled(value));
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerPreviousReceivedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface MediaPlaybackCommandManagerRateReceivedEventArgs : Windows.Media.Playback.IMediaPlaybackCommandManagerRateReceivedEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerRateReceivedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerRateReceivedEventArgs).set_Handled(value));
	}
	final double PlaybackRate()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerRateReceivedEventArgs).get_PlaybackRate(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerRateReceivedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface MediaPlaybackCommandManagerRewindReceivedEventArgs : Windows.Media.Playback.IMediaPlaybackCommandManagerRewindReceivedEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerRewindReceivedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerRewindReceivedEventArgs).set_Handled(value));
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerRewindReceivedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface MediaPlaybackCommandManagerShuffleReceivedEventArgs : Windows.Media.Playback.IMediaPlaybackCommandManagerShuffleReceivedEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerShuffleReceivedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerShuffleReceivedEventArgs).set_Handled(value));
	}
	final bool IsShuffleRequested()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerShuffleReceivedEventArgs).get_IsShuffleRequested(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackCommandManagerShuffleReceivedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface MediaPlaybackItem : Windows.Media.Playback.IMediaPlaybackItem, Windows.Media.Playback.IMediaPlaybackSource, Windows.Media.Playback.IMediaPlaybackItem2, Windows.Media.Playback.IMediaPlaybackItem3
{
extern(Windows):
	final EventRegistrationToken OnAudioTracksChanged(void delegate(Windows.Media.Playback.MediaPlaybackItem, Windows.Foundation.Collections.IVectorChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_AudioTracksChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackItem, Windows.Foundation.Collections.IVectorChangedEventArgs), Windows.Media.Playback.MediaPlaybackItem, Windows.Foundation.Collections.IVectorChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAudioTracksChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_AudioTracksChanged(token));
	}
	final EventRegistrationToken OnVideoTracksChanged(void delegate(Windows.Media.Playback.MediaPlaybackItem, Windows.Foundation.Collections.IVectorChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_VideoTracksChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackItem, Windows.Foundation.Collections.IVectorChangedEventArgs), Windows.Media.Playback.MediaPlaybackItem, Windows.Foundation.Collections.IVectorChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeVideoTracksChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_VideoTracksChanged(token));
	}
	final EventRegistrationToken OnTimedMetadataTracksChanged(void delegate(Windows.Media.Playback.MediaPlaybackItem, Windows.Foundation.Collections.IVectorChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TimedMetadataTracksChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackItem, Windows.Foundation.Collections.IVectorChangedEventArgs), Windows.Media.Playback.MediaPlaybackItem, Windows.Foundation.Collections.IVectorChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTimedMetadataTracksChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_TimedMetadataTracksChanged(token));
	}
	final Windows.Media.Core.MediaSource Source()
	{
		Windows.Media.Core.MediaSource _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItem).get_Source(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackAudioTrackList AudioTracks()
	{
		Windows.Media.Playback.MediaPlaybackAudioTrackList _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItem).get_AudioTracks(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackVideoTrackList VideoTracks()
	{
		Windows.Media.Playback.MediaPlaybackVideoTrackList _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItem).get_VideoTracks(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackTimedMetadataTrackList TimedMetadataTracks()
	{
		Windows.Media.Playback.MediaPlaybackTimedMetadataTrackList _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItem).get_TimedMetadataTracks(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaBreakSchedule BreakSchedule()
	{
		Windows.Media.Playback.MediaBreakSchedule _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItem2).get_BreakSchedule(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan StartTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItem2).get_StartTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) DurationLimit()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItem2).get_DurationLimit(&_ret));
		return _ret;
	}
	final bool CanSkip()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItem2).get_CanSkip(&_ret));
		return _ret;
	}
	final void CanSkip(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItem2).set_CanSkip(value));
	}
	final Windows.Media.Playback.MediaItemDisplayProperties GetDisplayProperties()
	{
		Windows.Media.Playback.MediaItemDisplayProperties _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItem2).abi_GetDisplayProperties(&_ret));
		return _ret;
	}
	final void ApplyDisplayProperties(Windows.Media.Playback.MediaItemDisplayProperties value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItem2).abi_ApplyDisplayProperties(value));
	}
	final bool IsDisabledInPlaybackList()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItem3).get_IsDisabledInPlaybackList(&_ret));
		return _ret;
	}
	final void IsDisabledInPlaybackList(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItem3).set_IsDisabledInPlaybackList(value));
	}
	final double TotalDownloadProgress()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItem3).get_TotalDownloadProgress(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.AutoLoadedDisplayPropertyKind AutoLoadedDisplayProperties()
	{
		Windows.Media.Playback.AutoLoadedDisplayPropertyKind _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItem3).get_AutoLoadedDisplayProperties(&_ret));
		return _ret;
	}
	final void AutoLoadedDisplayProperties(Windows.Media.Playback.AutoLoadedDisplayPropertyKind value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItem3).set_AutoLoadedDisplayProperties(value));
	}
}

interface MediaPlaybackItemError : Windows.Media.Playback.IMediaPlaybackItemError
{
extern(Windows):
	final Windows.Media.Playback.MediaPlaybackItemErrorCode ErrorCode()
	{
		Windows.Media.Playback.MediaPlaybackItemErrorCode _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItemError).get_ErrorCode(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItemError).get_ExtendedError(&_ret));
		return _ret;
	}
}

interface MediaPlaybackItemFailedEventArgs : Windows.Media.Playback.IMediaPlaybackItemFailedEventArgs
{
extern(Windows):
	final Windows.Media.Playback.MediaPlaybackItem Item()
	{
		Windows.Media.Playback.MediaPlaybackItem _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItemFailedEventArgs).get_Item(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackItemError Error()
	{
		Windows.Media.Playback.MediaPlaybackItemError _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItemFailedEventArgs).get_Error(&_ret));
		return _ret;
	}
}

interface MediaPlaybackItemOpenedEventArgs : Windows.Media.Playback.IMediaPlaybackItemOpenedEventArgs
{
extern(Windows):
	final Windows.Media.Playback.MediaPlaybackItem Item()
	{
		Windows.Media.Playback.MediaPlaybackItem _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackItemOpenedEventArgs).get_Item(&_ret));
		return _ret;
	}
}

interface MediaPlaybackList : Windows.Media.Playback.IMediaPlaybackList, Windows.Media.Playback.IMediaPlaybackSource, Windows.Media.Playback.IMediaPlaybackList2, Windows.Media.Playback.IMediaPlaybackList3
{
extern(Windows):
	final EventRegistrationToken OnItemFailed(void delegate(Windows.Media.Playback.MediaPlaybackList, Windows.Media.Playback.MediaPlaybackItemFailedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ItemFailed(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackList, Windows.Media.Playback.MediaPlaybackItemFailedEventArgs), Windows.Media.Playback.MediaPlaybackList, Windows.Media.Playback.MediaPlaybackItemFailedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeItemFailed(EventRegistrationToken token)
	{
		Debug.OK(remove_ItemFailed(token));
	}
	final EventRegistrationToken OnCurrentItemChanged(void delegate(Windows.Media.Playback.MediaPlaybackList, Windows.Media.Playback.CurrentMediaPlaybackItemChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CurrentItemChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackList, Windows.Media.Playback.CurrentMediaPlaybackItemChangedEventArgs), Windows.Media.Playback.MediaPlaybackList, Windows.Media.Playback.CurrentMediaPlaybackItemChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCurrentItemChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_CurrentItemChanged(token));
	}
	final EventRegistrationToken OnItemOpened(void delegate(Windows.Media.Playback.MediaPlaybackList, Windows.Media.Playback.MediaPlaybackItemOpenedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ItemOpened(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackList, Windows.Media.Playback.MediaPlaybackItemOpenedEventArgs), Windows.Media.Playback.MediaPlaybackList, Windows.Media.Playback.MediaPlaybackItemOpenedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeItemOpened(EventRegistrationToken token)
	{
		Debug.OK(remove_ItemOpened(token));
	}
	final Windows.Foundation.Collections.IObservableVector!(Windows.Media.Playback.MediaPlaybackItem) Items()
	{
		Windows.Foundation.Collections.IObservableVector!(Windows.Media.Playback.MediaPlaybackItem) _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList).get_Items(&_ret));
		return _ret;
	}
	final bool AutoRepeatEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList).get_AutoRepeatEnabled(&_ret));
		return _ret;
	}
	final void AutoRepeatEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList).set_AutoRepeatEnabled(value));
	}
	final bool ShuffleEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList).get_ShuffleEnabled(&_ret));
		return _ret;
	}
	final void ShuffleEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList).set_ShuffleEnabled(value));
	}
	final Windows.Media.Playback.MediaPlaybackItem CurrentItem()
	{
		Windows.Media.Playback.MediaPlaybackItem _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList).get_CurrentItem(&_ret));
		return _ret;
	}
	final UINT32 CurrentItemIndex()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList).get_CurrentItemIndex(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackItem MoveNext()
	{
		Windows.Media.Playback.MediaPlaybackItem _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList).abi_MoveNext(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackItem MovePrevious()
	{
		Windows.Media.Playback.MediaPlaybackItem _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList).abi_MovePrevious(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackItem MoveTo(UINT32 itemIndex)
	{
		Windows.Media.Playback.MediaPlaybackItem _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList).abi_MoveTo(itemIndex, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) MaxPrefetchTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList2).get_MaxPrefetchTime(&_ret));
		return _ret;
	}
	final void MaxPrefetchTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList2).set_MaxPrefetchTime(value));
	}
	final Windows.Media.Playback.MediaPlaybackItem StartingItem()
	{
		Windows.Media.Playback.MediaPlaybackItem _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList2).get_StartingItem(&_ret));
		return _ret;
	}
	final void StartingItem(Windows.Media.Playback.MediaPlaybackItem value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList2).set_StartingItem(value));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Playback.MediaPlaybackItem) ShuffledItems()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Playback.MediaPlaybackItem) _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList2).get_ShuffledItems(&_ret));
		return _ret;
	}
	final void SetShuffledItems(Windows.Foundation.Collections.IIterable!(Windows.Media.Playback.MediaPlaybackItem) value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList2).abi_SetShuffledItems(value));
	}
	final Windows.Foundation.IReference!(UINT32) MaxPlayedItemsToKeepOpen()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList3).get_MaxPlayedItemsToKeepOpen(&_ret));
		return _ret;
	}
	final void MaxPlayedItemsToKeepOpen(Windows.Foundation.IReference!(UINT32) value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackList3).set_MaxPlayedItemsToKeepOpen(value));
	}
}

interface MediaPlaybackSession : Windows.Media.Playback.IMediaPlaybackSession, Windows.Media.Playback.IMediaPlaybackSession2
{
extern(Windows):
	final EventRegistrationToken OnPlaybackStateChanged(void delegate(Windows.Media.Playback.MediaPlaybackSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PlaybackStateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable), Windows.Media.Playback.MediaPlaybackSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removePlaybackStateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_PlaybackStateChanged(token));
	}
	final EventRegistrationToken OnPlaybackRateChanged(void delegate(Windows.Media.Playback.MediaPlaybackSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PlaybackRateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable), Windows.Media.Playback.MediaPlaybackSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removePlaybackRateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_PlaybackRateChanged(token));
	}
	final EventRegistrationToken OnSeekCompleted(void delegate(Windows.Media.Playback.MediaPlaybackSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SeekCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable), Windows.Media.Playback.MediaPlaybackSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeSeekCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_SeekCompleted(token));
	}
	final EventRegistrationToken OnBufferingStarted(void delegate(Windows.Media.Playback.MediaPlaybackSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_BufferingStarted(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable), Windows.Media.Playback.MediaPlaybackSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeBufferingStarted(EventRegistrationToken token)
	{
		Debug.OK(remove_BufferingStarted(token));
	}
	final EventRegistrationToken OnBufferingEnded(void delegate(Windows.Media.Playback.MediaPlaybackSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_BufferingEnded(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable), Windows.Media.Playback.MediaPlaybackSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeBufferingEnded(EventRegistrationToken token)
	{
		Debug.OK(remove_BufferingEnded(token));
	}
	final EventRegistrationToken OnBufferingProgressChanged(void delegate(Windows.Media.Playback.MediaPlaybackSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_BufferingProgressChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable), Windows.Media.Playback.MediaPlaybackSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeBufferingProgressChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_BufferingProgressChanged(token));
	}
	final EventRegistrationToken OnDownloadProgressChanged(void delegate(Windows.Media.Playback.MediaPlaybackSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DownloadProgressChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable), Windows.Media.Playback.MediaPlaybackSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeDownloadProgressChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_DownloadProgressChanged(token));
	}
	final EventRegistrationToken OnNaturalDurationChanged(void delegate(Windows.Media.Playback.MediaPlaybackSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_NaturalDurationChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable), Windows.Media.Playback.MediaPlaybackSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeNaturalDurationChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_NaturalDurationChanged(token));
	}
	final EventRegistrationToken OnPositionChanged(void delegate(Windows.Media.Playback.MediaPlaybackSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PositionChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable), Windows.Media.Playback.MediaPlaybackSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removePositionChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_PositionChanged(token));
	}
	final EventRegistrationToken OnNaturalVideoSizeChanged(void delegate(Windows.Media.Playback.MediaPlaybackSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_NaturalVideoSizeChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable), Windows.Media.Playback.MediaPlaybackSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeNaturalVideoSizeChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_NaturalVideoSizeChanged(token));
	}
	final Windows.Media.Playback.MediaPlayer MediaPlayer()
	{
		Windows.Media.Playback.MediaPlayer _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).get_MediaPlayer(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan NaturalDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).get_NaturalDuration(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Position()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).get_Position(&_ret));
		return _ret;
	}
	final void Position(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).set_Position(value));
	}
	final Windows.Media.Playback.MediaPlaybackState PlaybackState()
	{
		Windows.Media.Playback.MediaPlaybackState _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).get_PlaybackState(&_ret));
		return _ret;
	}
	final bool CanSeek()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).get_CanSeek(&_ret));
		return _ret;
	}
	final bool CanPause()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).get_CanPause(&_ret));
		return _ret;
	}
	final bool IsProtected()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).get_IsProtected(&_ret));
		return _ret;
	}
	final double PlaybackRate()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).get_PlaybackRate(&_ret));
		return _ret;
	}
	final void PlaybackRate(double value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).set_PlaybackRate(value));
	}
	final double BufferingProgress()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).get_BufferingProgress(&_ret));
		return _ret;
	}
	final double DownloadProgress()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).get_DownloadProgress(&_ret));
		return _ret;
	}
	final UINT32 NaturalVideoHeight()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).get_NaturalVideoHeight(&_ret));
		return _ret;
	}
	final UINT32 NaturalVideoWidth()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).get_NaturalVideoWidth(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect NormalizedSourceRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).get_NormalizedSourceRect(&_ret));
		return _ret;
	}
	final void NormalizedSourceRect(Windows.Foundation.Rect value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).set_NormalizedSourceRect(value));
	}
	final Windows.Media.MediaProperties.StereoscopicVideoPackingMode StereoscopicVideoPackingMode()
	{
		Windows.Media.MediaProperties.StereoscopicVideoPackingMode _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).get_StereoscopicVideoPackingMode(&_ret));
		return _ret;
	}
	final void StereoscopicVideoPackingMode(Windows.Media.MediaProperties.StereoscopicVideoPackingMode value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession).set_StereoscopicVideoPackingMode(value));
	}
	final EventRegistrationToken OnBufferedRangesChanged(void delegate(Windows.Media.Playback.MediaPlaybackSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_BufferedRangesChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable), Windows.Media.Playback.MediaPlaybackSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeBufferedRangesChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_BufferedRangesChanged(token));
	}
	final EventRegistrationToken OnPlayedRangesChanged(void delegate(Windows.Media.Playback.MediaPlaybackSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PlayedRangesChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable), Windows.Media.Playback.MediaPlaybackSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removePlayedRangesChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_PlayedRangesChanged(token));
	}
	final EventRegistrationToken OnSeekableRangesChanged(void delegate(Windows.Media.Playback.MediaPlaybackSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SeekableRangesChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable), Windows.Media.Playback.MediaPlaybackSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeSeekableRangesChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_SeekableRangesChanged(token));
	}
	final EventRegistrationToken OnSupportedPlaybackRatesChanged(void delegate(Windows.Media.Playback.MediaPlaybackSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SupportedPlaybackRatesChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackSession, IInspectable), Windows.Media.Playback.MediaPlaybackSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeSupportedPlaybackRatesChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_SupportedPlaybackRatesChanged(token));
	}
	final Windows.Media.Playback.MediaPlaybackSphericalVideoProjection SphericalVideoProjection()
	{
		Windows.Media.Playback.MediaPlaybackSphericalVideoProjection _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession2).get_SphericalVideoProjection(&_ret));
		return _ret;
	}
	final bool IsMirroring()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession2).get_IsMirroring(&_ret));
		return _ret;
	}
	final void IsMirroring(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession2).set_IsMirroring(value));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaTimeRange) GetBufferedRanges()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaTimeRange) _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession2).abi_GetBufferedRanges(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaTimeRange) GetPlayedRanges()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaTimeRange) _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession2).abi_GetPlayedRanges(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaTimeRange) GetSeekableRanges()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaTimeRange) _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession2).abi_GetSeekableRanges(&_ret));
		return _ret;
	}
	final bool IsSupportedPlaybackRateRange(double rate1, double rate2)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSession2).abi_IsSupportedPlaybackRateRange(rate1, rate2, &_ret));
		return _ret;
	}
}

interface MediaPlaybackSphericalVideoProjection : Windows.Media.Playback.IMediaPlaybackSphericalVideoProjection
{
extern(Windows):
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSphericalVideoProjection).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSphericalVideoProjection).set_IsEnabled(value));
	}
	final Windows.Media.MediaProperties.SphericalVideoFrameFormat FrameFormat()
	{
		Windows.Media.MediaProperties.SphericalVideoFrameFormat _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSphericalVideoProjection).get_FrameFormat(&_ret));
		return _ret;
	}
	final void FrameFormat(Windows.Media.MediaProperties.SphericalVideoFrameFormat value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSphericalVideoProjection).set_FrameFormat(value));
	}
	final double HorizontalFieldOfViewInDegrees()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSphericalVideoProjection).get_HorizontalFieldOfViewInDegrees(&_ret));
		return _ret;
	}
	final void HorizontalFieldOfViewInDegrees(double value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSphericalVideoProjection).set_HorizontalFieldOfViewInDegrees(value));
	}
	final Windows.Foundation.Numerics.Quaternion ViewOrientation()
	{
		Windows.Foundation.Numerics.Quaternion _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSphericalVideoProjection).get_ViewOrientation(&_ret));
		return _ret;
	}
	final void ViewOrientation(Windows.Foundation.Numerics.Quaternion value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSphericalVideoProjection).set_ViewOrientation(value));
	}
	final Windows.Media.Playback.SphericalVideoProjectionMode ProjectionMode()
	{
		Windows.Media.Playback.SphericalVideoProjectionMode _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSphericalVideoProjection).get_ProjectionMode(&_ret));
		return _ret;
	}
	final void ProjectionMode(Windows.Media.Playback.SphericalVideoProjectionMode value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackSphericalVideoProjection).set_ProjectionMode(value));
	}
}

interface MediaPlaybackTimedMetadataTrackList : Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.TimedMetadataTrack), Windows.Foundation.Collections.IIterable!(Windows.Media.Core.TimedMetadataTrack), Windows.Media.Playback.IMediaPlaybackTimedMetadataTrackList
{
extern(Windows):
	final void GetAt(uint index, Windows.Media.Core.TimedMetadataTrack* out_item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.TimedMetadataTrack)).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.TimedMetadataTrack)).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Media.Core.TimedMetadataTrack value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.TimedMetadataTrack)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Media.Core.TimedMetadataTrack* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.TimedMetadataTrack)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Media.Core.TimedMetadataTrack)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Media.Core.TimedMetadataTrack)).abi_First(out_first));
	}
	final EventRegistrationToken OnPresentationModeChanged(void delegate(Windows.Media.Playback.MediaPlaybackTimedMetadataTrackList, Windows.Media.Playback.TimedMetadataPresentationModeChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PresentationModeChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlaybackTimedMetadataTrackList, Windows.Media.Playback.TimedMetadataPresentationModeChangedEventArgs), Windows.Media.Playback.MediaPlaybackTimedMetadataTrackList, Windows.Media.Playback.TimedMetadataPresentationModeChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePresentationModeChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_PresentationModeChanged(token));
	}
	final Windows.Media.Playback.TimedMetadataTrackPresentationMode GetPresentationMode(UINT32 index)
	{
		Windows.Media.Playback.TimedMetadataTrackPresentationMode _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackTimedMetadataTrackList).abi_GetPresentationMode(index, &_ret));
		return _ret;
	}
	final void SetPresentationMode(UINT32 index, Windows.Media.Playback.TimedMetadataTrackPresentationMode value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlaybackTimedMetadataTrackList).abi_SetPresentationMode(index, value));
	}
}

interface MediaPlaybackVideoTrackList : Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.VideoTrack), Windows.Foundation.Collections.IIterable!(Windows.Media.Core.VideoTrack), Windows.Media.Core.ISingleSelectMediaTrackList
{
extern(Windows):
	final void GetAt(uint index, Windows.Media.Core.VideoTrack* out_item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.VideoTrack)).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.VideoTrack)).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Media.Core.VideoTrack value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.VideoTrack)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Media.Core.VideoTrack* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.VideoTrack)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Media.Core.VideoTrack)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Media.Core.VideoTrack)).abi_First(out_first));
	}
	final EventRegistrationToken OnSelectedIndexChanged(void delegate(Windows.Media.Core.ISingleSelectMediaTrackList, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SelectedIndexChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.ISingleSelectMediaTrackList, IInspectable), Windows.Media.Core.ISingleSelectMediaTrackList, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeSelectedIndexChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_SelectedIndexChanged(token));
	}
	final void SelectedIndex(INT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ISingleSelectMediaTrackList).set_SelectedIndex(value));
	}
	final INT32 SelectedIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Media.Core.ISingleSelectMediaTrackList).get_SelectedIndex(&_ret));
		return _ret;
	}
}

interface MediaPlayer : Windows.Media.Playback.IMediaPlayer, Windows.Media.Playback.IMediaPlayerSource, Windows.Media.Playback.IMediaPlayerSource2, Windows.Media.Playback.IMediaPlayer2, Windows.Media.Playback.IMediaPlayerEffects, Windows.Foundation.IClosable, Windows.Media.Playback.IMediaPlayer3, Windows.Media.Playback.IMediaPlayer4, Windows.Media.Playback.IMediaPlayerEffects2, Windows.Media.Playback.IMediaPlayer5
{
extern(Windows):
	final bool AutoPlay()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).get_AutoPlay(&_ret));
		return _ret;
	}
	final void AutoPlay(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).set_AutoPlay(value));
	}
	deprecated("Use PlaybackSession.NaturalDuration instead of NaturalDuration.	 For more info, see MSDN.")
	final Windows.Foundation.TimeSpan NaturalDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).get_NaturalDuration(&_ret));
		return _ret;
	}
	deprecated("Use PlaybackSession.Position instead of Position.  For more info, see MSDN.")
	final Windows.Foundation.TimeSpan Position()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).get_Position(&_ret));
		return _ret;
	}
	deprecated("Use PlaybackSession.Position instead of Position.  For more info, see MSDN.")
	final void Position(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).set_Position(value));
	}
	deprecated("Use PlaybackSession.BufferingProgress instead of BufferingProgress.	 For more info, see MSDN.")
	final double BufferingProgress()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).get_BufferingProgress(&_ret));
		return _ret;
	}
	deprecated("Use PlaybackSession.State instead of CurrentState.	For more info, see MSDN.")
	final Windows.Media.Playback.MediaPlayerState CurrentState()
	{
		Windows.Media.Playback.MediaPlayerState _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).get_CurrentState(&_ret));
		return _ret;
	}
	deprecated("Use PlaybackSession.CanSeek instead of CanSeek.	 For more info, see MSDN.")
	final bool CanSeek()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).get_CanSeek(&_ret));
		return _ret;
	}
	deprecated("Use PlaybackSession.CanPause instead of CanPause.  For more info, see MSDN.")
	final bool CanPause()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).get_CanPause(&_ret));
		return _ret;
	}
	final bool IsLoopingEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).get_IsLoopingEnabled(&_ret));
		return _ret;
	}
	final void IsLoopingEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).set_IsLoopingEnabled(value));
	}
	deprecated("Use PlaybackSession.IsProtected instead of IsProtected.	 For more info, see MSDN.")
	final bool IsProtected()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).get_IsProtected(&_ret));
		return _ret;
	}
	final bool IsMuted()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).get_IsMuted(&_ret));
		return _ret;
	}
	final void IsMuted(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).set_IsMuted(value));
	}
	deprecated("Use PlaybackSession.PlaybackRate instead of PlaybackRate.  For more info, see MSDN.")
	final double PlaybackRate()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).get_PlaybackRate(&_ret));
		return _ret;
	}
	deprecated("Use PlaybackSession.PlaybackRate instead of PlaybackRate.  For more info, see MSDN.")
	final void PlaybackRate(double value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).set_PlaybackRate(value));
	}
	final double Volume()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).get_Volume(&_ret));
		return _ret;
	}
	final void Volume(double value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).set_Volume(value));
	}
	deprecated("Use media tracks on MediaPlaybackItem instead of PlaybackMediaMarkers.	For more info, see MSDN.")
	final Windows.Media.Playback.PlaybackMediaMarkerSequence PlaybackMediaMarkers()
	{
		Windows.Media.Playback.PlaybackMediaMarkerSequence _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).get_PlaybackMediaMarkers(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnMediaOpened(void delegate(Windows.Media.Playback.MediaPlayer, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MediaOpened(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable), Windows.Media.Playback.MediaPlayer, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeMediaOpened(EventRegistrationToken token)
	{
		Debug.OK(remove_MediaOpened(token));
	}
	final EventRegistrationToken OnMediaEnded(void delegate(Windows.Media.Playback.MediaPlayer, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MediaEnded(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable), Windows.Media.Playback.MediaPlayer, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeMediaEnded(EventRegistrationToken token)
	{
		Debug.OK(remove_MediaEnded(token));
	}
	final EventRegistrationToken OnMediaFailed(void delegate(Windows.Media.Playback.MediaPlayer, Windows.Media.Playback.MediaPlayerFailedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MediaFailed(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, Windows.Media.Playback.MediaPlayerFailedEventArgs), Windows.Media.Playback.MediaPlayer, Windows.Media.Playback.MediaPlayerFailedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMediaFailed(EventRegistrationToken token)
	{
		Debug.OK(remove_MediaFailed(token));
	}
	deprecated("Use PlaybackSession.PlaybackStateChanged instead of CurrentStateChanged.  For more info, see MSDN.")
	final EventRegistrationToken OnCurrentStateChanged(void delegate(Windows.Media.Playback.MediaPlayer, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CurrentStateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable), Windows.Media.Playback.MediaPlayer, IInspectable)(fn), &tok));
		return tok;
	}
	deprecated("Use PlaybackSession.PlaybackStateChanged instead of CurrentStateChanged.  For more info, see MSDN.")
	final void removeCurrentStateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_CurrentStateChanged(token));
	}
	deprecated("Use media tracks on MediaPlaybackItem instead of PlaybackMediaMarkers.	For more info, see MSDN.")
	final EventRegistrationToken OnPlaybackMediaMarkerReached(void delegate(Windows.Media.Playback.MediaPlayer, Windows.Media.Playback.PlaybackMediaMarkerReachedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PlaybackMediaMarkerReached(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, Windows.Media.Playback.PlaybackMediaMarkerReachedEventArgs), Windows.Media.Playback.MediaPlayer, Windows.Media.Playback.PlaybackMediaMarkerReachedEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("Use media tracks on MediaPlaybackItem instead of PlaybackMediaMarkers.	For more info, see MSDN.")
	final void removePlaybackMediaMarkerReached(EventRegistrationToken token)
	{
		Debug.OK(remove_PlaybackMediaMarkerReached(token));
	}
	deprecated("Use PlaybackSession.PlaybackRateChanged instead of MediaPlayerRateChanged.	For more info, see MSDN.")
	final EventRegistrationToken OnMediaPlayerRateChanged(void delegate(Windows.Media.Playback.MediaPlayer, Windows.Media.Playback.MediaPlayerRateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MediaPlayerRateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, Windows.Media.Playback.MediaPlayerRateChangedEventArgs), Windows.Media.Playback.MediaPlayer, Windows.Media.Playback.MediaPlayerRateChangedEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("Use PlaybackSession.PlaybackRateChanged instead of MediaPlayerRateChanged.	For more info, see MSDN.")
	final void removeMediaPlayerRateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_MediaPlayerRateChanged(token));
	}
	final EventRegistrationToken OnVolumeChanged(void delegate(Windows.Media.Playback.MediaPlayer, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_VolumeChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable), Windows.Media.Playback.MediaPlayer, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeVolumeChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_VolumeChanged(token));
	}
	deprecated("Use PlaybackSession.SeekCompleted instead of SeekCompleted.	 For more info, see MSDN.")
	final EventRegistrationToken OnSeekCompleted(void delegate(Windows.Media.Playback.MediaPlayer, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SeekCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable), Windows.Media.Playback.MediaPlayer, IInspectable)(fn), &tok));
		return tok;
	}
	deprecated("Use PlaybackSession.SeekCompleted instead of SeekCompleted.	 For more info, see MSDN.")
	final void removeSeekCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_SeekCompleted(token));
	}
	deprecated("Use PlaybackSession.BufferingStarted instead of BufferingStarted.  For more info, see MSDN.")
	final EventRegistrationToken OnBufferingStarted(void delegate(Windows.Media.Playback.MediaPlayer, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_BufferingStarted(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable), Windows.Media.Playback.MediaPlayer, IInspectable)(fn), &tok));
		return tok;
	}
	deprecated("Use PlaybackSession.BufferingStarted instead of BufferingStarted.  For more info, see MSDN.")
	final void removeBufferingStarted(EventRegistrationToken token)
	{
		Debug.OK(remove_BufferingStarted(token));
	}
	deprecated("Use PlaybackSession.BufferingEnded instead of BufferingEnded.  For more info, see MSDN.")
	final EventRegistrationToken OnBufferingEnded(void delegate(Windows.Media.Playback.MediaPlayer, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_BufferingEnded(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable), Windows.Media.Playback.MediaPlayer, IInspectable)(fn), &tok));
		return tok;
	}
	deprecated("Use PlaybackSession.BufferingEnded instead of BufferingEnded.  For more info, see MSDN.")
	final void removeBufferingEnded(EventRegistrationToken token)
	{
		Debug.OK(remove_BufferingEnded(token));
	}
	final void Play()
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).abi_Play());
	}
	final void Pause()
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).abi_Pause());
	}
	deprecated("Use Source instead of SetUriSource.	 For more info, see MSDN.")
	final void SetUriSource(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer).abi_SetUriSource(value));
	}
	final Windows.Media.Protection.MediaProtectionManager ProtectionManager()
	{
		Windows.Media.Protection.MediaProtectionManager _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerSource).get_ProtectionManager(&_ret));
		return _ret;
	}
	final void ProtectionManager(Windows.Media.Protection.MediaProtectionManager value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerSource).set_ProtectionManager(value));
	}
	deprecated("Use Source instead of SetFileSource.  For more info, see MSDN.")
	final void SetFileSource(Windows.Storage.IStorageFile file)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerSource).abi_SetFileSource(file));
	}
	deprecated("Use Source instead of SetStreamSource.	For more info, see MSDN.")
	final void SetStreamSource(Windows.Storage.Streams.IRandomAccessStream stream)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerSource).abi_SetStreamSource(stream));
	}
	deprecated("Use Source instead of SetMediaSource.  For more info, see MSDN.")
	final void SetMediaSource(Windows.Media.Core.IMediaSource source)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerSource).abi_SetMediaSource(source));
	}
	final Windows.Media.Playback.IMediaPlaybackSource Source()
	{
		Windows.Media.Playback.IMediaPlaybackSource _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerSource2).get_Source(&_ret));
		return _ret;
	}
	final void Source(Windows.Media.Playback.IMediaPlaybackSource value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerSource2).set_Source(value));
	}
	final Windows.Media.SystemMediaTransportControls SystemMediaTransportControls()
	{
		Windows.Media.SystemMediaTransportControls _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer2).get_SystemMediaTransportControls(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlayerAudioCategory AudioCategory()
	{
		Windows.Media.Playback.MediaPlayerAudioCategory _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer2).get_AudioCategory(&_ret));
		return _ret;
	}
	final void AudioCategory(Windows.Media.Playback.MediaPlayerAudioCategory value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer2).set_AudioCategory(value));
	}
	final Windows.Media.Playback.MediaPlayerAudioDeviceType AudioDeviceType()
	{
		Windows.Media.Playback.MediaPlayerAudioDeviceType _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer2).get_AudioDeviceType(&_ret));
		return _ret;
	}
	final void AudioDeviceType(Windows.Media.Playback.MediaPlayerAudioDeviceType value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer2).set_AudioDeviceType(value));
	}
	final void AddAudioEffect(HSTRING activatableClassId, bool effectOptional, Windows.Foundation.Collections.IPropertySet configuration)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerEffects).abi_AddAudioEffect(activatableClassId, effectOptional, configuration));
	}
	final void RemoveAllEffects()
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerEffects).abi_RemoveAllEffects());
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final EventRegistrationToken OnIsMutedChanged(void delegate(Windows.Media.Playback.MediaPlayer, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_IsMutedChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable), Windows.Media.Playback.MediaPlayer, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeIsMutedChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_IsMutedChanged(token));
	}
	final EventRegistrationToken OnSourceChanged(void delegate(Windows.Media.Playback.MediaPlayer, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SourceChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable), Windows.Media.Playback.MediaPlayer, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeSourceChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_SourceChanged(token));
	}
	final double AudioBalance()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).get_AudioBalance(&_ret));
		return _ret;
	}
	final void AudioBalance(double value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).set_AudioBalance(value));
	}
	final bool RealTimePlayback()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).get_RealTimePlayback(&_ret));
		return _ret;
	}
	final void RealTimePlayback(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).set_RealTimePlayback(value));
	}
	final Windows.Media.Playback.StereoscopicVideoRenderMode StereoscopicVideoRenderMode()
	{
		Windows.Media.Playback.StereoscopicVideoRenderMode _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).get_StereoscopicVideoRenderMode(&_ret));
		return _ret;
	}
	final void StereoscopicVideoRenderMode(Windows.Media.Playback.StereoscopicVideoRenderMode value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).set_StereoscopicVideoRenderMode(value));
	}
	final Windows.Media.Playback.MediaBreakManager BreakManager()
	{
		Windows.Media.Playback.MediaBreakManager _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).get_BreakManager(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackCommandManager CommandManager()
	{
		Windows.Media.Playback.MediaPlaybackCommandManager _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).get_CommandManager(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DeviceInformation AudioDevice()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).get_AudioDevice(&_ret));
		return _ret;
	}
	final void AudioDevice(Windows.Devices.Enumeration.DeviceInformation value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).set_AudioDevice(value));
	}
	final Windows.Media.MediaTimelineController TimelineController()
	{
		Windows.Media.MediaTimelineController _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).get_TimelineController(&_ret));
		return _ret;
	}
	final void TimelineController(Windows.Media.MediaTimelineController value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).set_TimelineController(value));
	}
	final Windows.Foundation.TimeSpan TimelineControllerPositionOffset()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).get_TimelineControllerPositionOffset(&_ret));
		return _ret;
	}
	final void TimelineControllerPositionOffset(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).set_TimelineControllerPositionOffset(value));
	}
	final Windows.Media.Playback.MediaPlaybackSession PlaybackSession()
	{
		Windows.Media.Playback.MediaPlaybackSession _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).get_PlaybackSession(&_ret));
		return _ret;
	}
	final void StepForwardOneFrame()
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).abi_StepForwardOneFrame());
	}
	final void StepBackwardOneFrame()
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).abi_StepBackwardOneFrame());
	}
	final Windows.Media.Casting.CastingSource GetAsCastingSource()
	{
		Windows.Media.Casting.CastingSource _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer3).abi_GetAsCastingSource(&_ret));
		return _ret;
	}
	final void SetSurfaceSize(Windows.Foundation.Size size)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer4).abi_SetSurfaceSize(size));
	}
	final Windows.Media.Playback.MediaPlayerSurface GetSurface(Windows.UI.Composition.Compositor compositor)
	{
		Windows.Media.Playback.MediaPlayerSurface _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer4).abi_GetSurface(compositor, &_ret));
		return _ret;
	}
	final void AddVideoEffect(HSTRING activatableClassId, bool effectOptional, Windows.Foundation.Collections.IPropertySet effectConfiguration)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerEffects2).abi_AddVideoEffect(activatableClassId, effectOptional, effectConfiguration));
	}
	final EventRegistrationToken OnVideoFrameAvailable(void delegate(Windows.Media.Playback.MediaPlayer, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_VideoFrameAvailable(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Playback.MediaPlayer, IInspectable), Windows.Media.Playback.MediaPlayer, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeVideoFrameAvailable(EventRegistrationToken token)
	{
		Debug.OK(remove_VideoFrameAvailable(token));
	}
	final bool IsVideoFrameServerEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer5).get_IsVideoFrameServerEnabled(&_ret));
		return _ret;
	}
	final void IsVideoFrameServerEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer5).set_IsVideoFrameServerEnabled(value));
	}
	final void CopyFrameToVideoSurface(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface destination)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer5).abi_CopyFrameToVideoSurface(destination));
	}
	final void CopyFrameToVideoSurfaceWithTargetRectangle(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface destination, Windows.Foundation.Rect targetRectangle)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer5).abi_CopyFrameToVideoSurfaceWithTargetRectangle(destination, targetRectangle));
	}
	final void CopyFrameToStereoscopicVideoSurfaces(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface destinationLeftEye, Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface destinationRightEye)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayer5).abi_CopyFrameToStereoscopicVideoSurfaces(destinationLeftEye, destinationRightEye));
	}
}

interface MediaPlayerDataReceivedEventArgs : Windows.Media.Playback.IMediaPlayerDataReceivedEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.ValueSet Data()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerDataReceivedEventArgs).get_Data(&_ret));
		return _ret;
	}
}

interface MediaPlayerFailedEventArgs : Windows.Media.Playback.IMediaPlayerFailedEventArgs
{
extern(Windows):
	final Windows.Media.Playback.MediaPlayerError Error()
	{
		Windows.Media.Playback.MediaPlayerError _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerFailedEventArgs).get_Error(&_ret));
		return _ret;
	}
	final HRESULT ExtendedErrorCode()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerFailedEventArgs).get_ExtendedErrorCode(&_ret));
		return _ret;
	}
	final HSTRING ErrorMessage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerFailedEventArgs).get_ErrorMessage(&_ret));
		return _ret;
	}
}

interface MediaPlayerRateChangedEventArgs : Windows.Media.Playback.IMediaPlayerRateChangedEventArgs
{
extern(Windows):
	final double NewRate()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerRateChangedEventArgs).get_NewRate(&_ret));
		return _ret;
	}
}

interface MediaPlayerSurface : Windows.Media.Playback.IMediaPlayerSurface, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.UI.Composition.ICompositionSurface CompositionSurface()
	{
		Windows.UI.Composition.ICompositionSurface _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerSurface).get_CompositionSurface(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.Compositor Compositor()
	{
		Windows.UI.Composition.Compositor _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerSurface).get_Compositor(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlayer MediaPlayer()
	{
		Windows.Media.Playback.MediaPlayer _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IMediaPlayerSurface).get_MediaPlayer(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface PlaybackMediaMarker : Windows.Media.Playback.IPlaybackMediaMarker
{
extern(Windows):
	final Windows.Foundation.TimeSpan Time()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IPlaybackMediaMarker).get_Time(&_ret));
		return _ret;
	}
	final HSTRING MediaMarkerType()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IPlaybackMediaMarker).get_MediaMarkerType(&_ret));
		return _ret;
	}
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IPlaybackMediaMarker).get_Text(&_ret));
		return _ret;
	}
}

interface PlaybackMediaMarkerReachedEventArgs : Windows.Media.Playback.IPlaybackMediaMarkerReachedEventArgs
{
extern(Windows):
	final Windows.Media.Playback.PlaybackMediaMarker PlaybackMediaMarker()
	{
		Windows.Media.Playback.PlaybackMediaMarker _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IPlaybackMediaMarkerReachedEventArgs).get_PlaybackMediaMarker(&_ret));
		return _ret;
	}
}

interface PlaybackMediaMarkerSequence : Windows.Media.Playback.IPlaybackMediaMarkerSequence, Windows.Foundation.Collections.IIterable!(Windows.Media.Playback.PlaybackMediaMarker)
{
extern(Windows):
	final UINT32 Size()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Playback.IPlaybackMediaMarkerSequence).get_Size(&_ret));
		return _ret;
	}
	final void Insert(Windows.Media.Playback.PlaybackMediaMarker value)
	{
		Debug.OK(this.as!(Windows.Media.Playback.IPlaybackMediaMarkerSequence).abi_Insert(value));
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Media.Playback.IPlaybackMediaMarkerSequence).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Media.Playback.PlaybackMediaMarker)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Media.Playback.PlaybackMediaMarker)).abi_First(out_first));
	}
}

interface TimedMetadataPresentationModeChangedEventArgs : Windows.Media.Playback.ITimedMetadataPresentationModeChangedEventArgs
{
extern(Windows):
	final Windows.Media.Core.TimedMetadataTrack Track()
	{
		Windows.Media.Core.TimedMetadataTrack _ret;
		Debug.OK(this.as!(Windows.Media.Playback.ITimedMetadataPresentationModeChangedEventArgs).get_Track(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.TimedMetadataTrackPresentationMode OldPresentationMode()
	{
		Windows.Media.Playback.TimedMetadataTrackPresentationMode _ret;
		Debug.OK(this.as!(Windows.Media.Playback.ITimedMetadataPresentationModeChangedEventArgs).get_OldPresentationMode(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.TimedMetadataTrackPresentationMode NewPresentationMode()
	{
		Windows.Media.Playback.TimedMetadataTrackPresentationMode _ret;
		Debug.OK(this.as!(Windows.Media.Playback.ITimedMetadataPresentationModeChangedEventArgs).get_NewPresentationMode(&_ret));
		return _ret;
	}
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