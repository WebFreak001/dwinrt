module Windows.Media.Streaming.Adaptive;

import dwinrt;

@uuid("4c7332ef-d39f-4396-b4d9-043957a7c964")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSource")
interface IAdaptiveMediaSource : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsLive(bool* return_value);
	HRESULT get_DesiredLiveOffset(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_DesiredLiveOffset(Windows.Foundation.TimeSpan value);
	HRESULT get_InitialBitrate(UINT32* return_value);
	HRESULT set_InitialBitrate(UINT32 value);
	HRESULT get_CurrentDownloadBitrate(UINT32* return_value);
	HRESULT get_CurrentPlaybackBitrate(UINT32* return_value);
	HRESULT get_AvailableBitrates(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_DesiredMinBitrate(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_DesiredMinBitrate(Windows.Foundation.IReference!(UINT32) value);
	HRESULT get_DesiredMaxBitrate(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_DesiredMaxBitrate(Windows.Foundation.IReference!(UINT32) value);
	HRESULT get_AudioOnlyPlayback(bool* return_value);
	HRESULT get_InboundBitsPerSecond(UINT64* return_value);
	HRESULT get_InboundBitsPerSecondWindow(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_InboundBitsPerSecondWindow(Windows.Foundation.TimeSpan value);
	HRESULT add_DownloadBitrateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource*,Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadBitrateChangedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_DownloadBitrateChanged(EventRegistrationToken token);
	HRESULT add_PlaybackBitrateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource*,Windows.Media.Streaming.Adaptive.AdaptiveMediaSourcePlaybackBitrateChangedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_PlaybackBitrateChanged(EventRegistrationToken token);
	HRESULT add_DownloadRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource*,Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadRequestedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_DownloadRequested(EventRegistrationToken token);
	HRESULT add_DownloadCompleted(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource*,Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadCompletedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_DownloadCompleted(EventRegistrationToken token);
	HRESULT add_DownloadFailed(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource*,Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadFailedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_DownloadFailed(EventRegistrationToken token);
}

@uuid("17890342-6760-4bb9-a58a-f7aa98b08c0e")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSource")
interface IAdaptiveMediaSource2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AdvancedSettings(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceAdvancedSettings* return_value);
}

@uuid("ba7023fd-c334-461b-a36e-c99f54f7174a")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSource")
interface IAdaptiveMediaSource3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MinLiveOffset(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_MaxSeekableWindowSize(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_DesiredSeekableWindowSize(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_DesiredSeekableWindowSize(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT get_Diagnostics(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnostics* return_value);
	HRESULT abi_GetCorrelatedTimes(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCorrelatedTimes* return_value);
}

@uuid("55db1680-1aeb-47dc-aa08-9a11610ba45a")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceAdvancedSettings")
interface IAdaptiveMediaSourceAdvancedSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AllSegmentsIndependent(bool* return_value);
	HRESULT set_AllSegmentsIndependent(bool value);
	HRESULT get_DesiredBitrateHeadroomRatio(Windows.Foundation.IReference!(double)* return_value);
	HRESULT set_DesiredBitrateHeadroomRatio(Windows.Foundation.IReference!(double) value);
	HRESULT get_BitrateDowngradeTriggerRatio(Windows.Foundation.IReference!(double)* return_value);
	HRESULT set_BitrateDowngradeTriggerRatio(Windows.Foundation.IReference!(double) value);
}

@uuid("05108787-e032-48e1-ab8d-002b0b3051df")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCorrelatedTimes")
interface IAdaptiveMediaSourceCorrelatedTimes : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Position(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_PresentationTimeStamp(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_ProgramDateTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
}

@uuid("4686b6b2-800f-4e31-9093-76d4782013e7")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationResult")
interface IAdaptiveMediaSourceCreationResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationStatus* return_value);
	HRESULT get_MediaSource(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource* return_value);
	HRESULT get_HttpResponseMessage(Windows.Web.Http.HttpResponseMessage* return_value);
}

@uuid("1c3243bf-1c44-404b-a201-df45ac7898e8")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationResult")
interface IAdaptiveMediaSourceCreationResult2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("3af64f06-6d9c-494a-b7a9-b3a5dee6ad68")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnosticAvailableEventArgs")
interface IAdaptiveMediaSourceDiagnosticAvailableEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DiagnosticType(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnosticType* return_value);
	HRESULT get_RequestId(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT get_Position(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_SegmentId(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT get_ResourceType(Windows.Foundation.IReference!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceResourceType)* return_value);
	HRESULT get_ResourceUri(Windows.Foundation.Uri* return_value);
	HRESULT get_ResourceByteRangeOffset(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT get_ResourceByteRangeLength(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT get_Bitrate(Windows.Foundation.IReference!(UINT32)* return_value);
}

@uuid("9b24ee68-962e-448c-aebf-b29b56098e23")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnostics")
interface IAdaptiveMediaSourceDiagnostics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_DiagnosticAvailable(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnostics*,Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnosticAvailableEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_DiagnosticAvailable(EventRegistrationToken token);
}

@uuid("670c0a44-e04e-4eff-816a-17399f78f4ba")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadBitrateChangedEventArgs")
interface IAdaptiveMediaSourceDownloadBitrateChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OldValue(UINT32* return_value);
	HRESULT get_NewValue(UINT32* return_value);
}

@uuid("f3f1f444-96ae-4de0-b540-2b3246e6968c")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadBitrateChangedEventArgs")
interface IAdaptiveMediaSourceDownloadBitrateChangedEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Reason(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadBitrateChangedReason* return_value);
}

@uuid("19240dc3-5b37-4a1a-8970-d621cb6ca83b")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadCompletedEventArgs")
interface IAdaptiveMediaSourceDownloadCompletedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ResourceType(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceResourceType* return_value);
	HRESULT get_ResourceUri(Windows.Foundation.Uri* return_value);
	HRESULT get_ResourceByteRangeOffset(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT get_ResourceByteRangeLength(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT get_HttpResponseMessage(Windows.Web.Http.HttpResponseMessage* return_value);
}

@uuid("704744c4-964a-40e4-af95-9177dd6dfa00")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadCompletedEventArgs")
interface IAdaptiveMediaSourceDownloadCompletedEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RequestId(INT32* return_value);
	HRESULT get_Statistics(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadStatistics* return_value);
	HRESULT get_Position(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
}

@uuid("37739048-f4ab-40a4-b135-c6dfd8bd7ff1")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadFailedEventArgs")
interface IAdaptiveMediaSourceDownloadFailedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ResourceType(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceResourceType* return_value);
	HRESULT get_ResourceUri(Windows.Foundation.Uri* return_value);
	HRESULT get_ResourceByteRangeOffset(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT get_ResourceByteRangeLength(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT get_HttpResponseMessage(Windows.Web.Http.HttpResponseMessage* return_value);
}

@uuid("70919568-967c-4986-90c5-c6fc4b31e2d8")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadFailedEventArgs")
interface IAdaptiveMediaSourceDownloadFailedEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RequestId(INT32* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
	HRESULT get_Statistics(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadStatistics* return_value);
	HRESULT get_Position(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
}

@uuid("05c68f64-fa20-4dbd-9821-4bf4c9bf77ab")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadRequestedDeferral")
interface IAdaptiveMediaSourceDownloadRequestedDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

@uuid("c83fdffd-44a9-47a2-bf96-03398b4bfaaf")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadRequestedEventArgs")
interface IAdaptiveMediaSourceDownloadRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ResourceType(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceResourceType* return_value);
	HRESULT get_ResourceUri(Windows.Foundation.Uri* return_value);
	HRESULT get_ResourceByteRangeOffset(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT get_ResourceByteRangeLength(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT get_Result(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadResult* return_value);
	HRESULT abi_GetDeferral(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadRequestedDeferral* return_deferral);
}

@uuid("b37d8bfe-aa44-4d82-825b-611de3bcfecb")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadRequestedEventArgs")
interface IAdaptiveMediaSourceDownloadRequestedEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RequestId(INT32* return_value);
	HRESULT get_Position(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
}

@uuid("f4afdc73-bcee-4a6a-9f0a-fec41e2339b0")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadResult")
interface IAdaptiveMediaSourceDownloadResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ResourceUri(Windows.Foundation.Uri* return_value);
	HRESULT set_ResourceUri(Windows.Foundation.Uri value);
	HRESULT get_InputStream(Windows.Storage.Streams.IInputStream* return_value);
	HRESULT set_InputStream(Windows.Storage.Streams.IInputStream value);
	HRESULT get_Buffer(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_Buffer(Windows.Storage.Streams.IBuffer value);
	HRESULT get_ContentType(HSTRING* return_value);
	HRESULT set_ContentType(HSTRING value);
	HRESULT get_ExtendedStatus(UINT32* return_value);
	HRESULT set_ExtendedStatus(UINT32 value);
}

@uuid("15552cb7-7b80-4ac4-8660-a4b97f7c70f0")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadResult")
interface IAdaptiveMediaSourceDownloadResult2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ResourceByteRangeOffset(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT set_ResourceByteRangeOffset(Windows.Foundation.IReference!(UINT64) value);
	HRESULT get_ResourceByteRangeLength(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT set_ResourceByteRangeLength(Windows.Foundation.IReference!(UINT64) value);
}

@uuid("a306cefb-e96a-4dff-a9b8-1ae08c01ae98")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadStatistics")
interface IAdaptiveMediaSourceDownloadStatistics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContentBytesReceivedCount(UINT64* return_value);
	HRESULT get_TimeToHeadersReceived(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_TimeToFirstByteReceived(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_TimeToLastByteReceived(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
}

@uuid("23a29f6d-7dda-4a51-87a9-6fa8c5b292be")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourcePlaybackBitrateChangedEventArgs")
interface IAdaptiveMediaSourcePlaybackBitrateChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OldValue(UINT32* return_value);
	HRESULT get_NewValue(UINT32* return_value);
	HRESULT get_AudioOnly(bool* return_value);
}

@uuid("50a6bd5d-66ef-4cd3-9579-9e660507dc3f")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSource")
interface IAdaptiveMediaSourceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_IsContentTypeSupported(HSTRING contentType, bool* return_result);
	HRESULT abi_CreateFromUriAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationResult)* return_result);
	HRESULT abi_CreateFromUriWithDownloaderAsync(Windows.Foundation.Uri uri, Windows.Web.Http.HttpClient httpClient, Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationResult)* return_result);
	HRESULT abi_CreateFromStreamAsync(Windows.Storage.Streams.IInputStream stream, Windows.Foundation.Uri uri, HSTRING contentType, Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationResult)* return_result);
	HRESULT abi_CreateFromStreamWithDownloaderAsync(Windows.Storage.Streams.IInputStream stream, Windows.Foundation.Uri uri, HSTRING contentType, Windows.Web.Http.HttpClient httpClient, Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationResult)* return_result);
}

interface AdaptiveMediaSource
{
}

interface AdaptiveMediaSourceAdvancedSettings
{
}

interface AdaptiveMediaSourceCorrelatedTimes
{
}

interface AdaptiveMediaSourceCreationResult
{
}

interface AdaptiveMediaSourceDiagnosticAvailableEventArgs
{
}

interface AdaptiveMediaSourceDiagnostics
{
}

interface AdaptiveMediaSourceDownloadBitrateChangedEventArgs
{
}

interface AdaptiveMediaSourceDownloadCompletedEventArgs
{
}

interface AdaptiveMediaSourceDownloadFailedEventArgs
{
}

interface AdaptiveMediaSourceDownloadRequestedDeferral
{
}

interface AdaptiveMediaSourceDownloadRequestedEventArgs
{
}

interface AdaptiveMediaSourceDownloadResult
{
}

interface AdaptiveMediaSourceDownloadStatistics
{
}

interface AdaptiveMediaSourcePlaybackBitrateChangedEventArgs
{
}

enum AdaptiveMediaSourceCreationStatus
{
	Success = 0,
	ManifestDownloadFailure = 1,
	ManifestParseFailure = 2,
	UnsupportedManifestContentType = 3,
	UnsupportedManifestVersion = 4,
	UnsupportedManifestProfile = 5,
	UnknownFailure = 6
}

enum AdaptiveMediaSourceDiagnosticType
{
	ManifestUnchangedUponReload = 0,
	ManifestMismatchUponReload = 1,
	ManifestSignaledEndOfLiveEventUponReload = 2,
	MediaSegmentSkipped = 3,
	ResourceNotFound = 4,
	ResourceTimedOut = 5,
	ResourceParsingError = 6,
	BitrateDisabled = 7
}

enum AdaptiveMediaSourceDownloadBitrateChangedReason
{
	SufficientInboundBitsPerSecond = 0,
	InsufficientInboundBitsPerSecond = 1,
	LowBufferLevel = 2,
	PositionChanged = 3,
	TrackSelectionChanged = 4,
	DesiredBitratesChanged = 5,
	ErrorInPreviousBitrate = 6
}

enum AdaptiveMediaSourceResourceType
{
	Manifest = 0,
	InitializationSegment = 1,
	MediaSegment = 2,
	Key = 3,
	InitializationVector = 4
}