module Windows.Media.Streaming.Adaptive;

import dwinrt;

@uuid("4c7332ef-d39f-4396-b4d9-043957a7c964")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSource")
interface IAdaptiveMediaSource : IInspectable
{
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
	HRESULT add_DownloadBitrateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadBitrateChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DownloadBitrateChanged(EventRegistrationToken token);
	HRESULT add_PlaybackBitrateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourcePlaybackBitrateChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PlaybackBitrateChanged(EventRegistrationToken token);
	HRESULT add_DownloadRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DownloadRequested(EventRegistrationToken token);
	HRESULT add_DownloadCompleted(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadCompletedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DownloadCompleted(EventRegistrationToken token);
	HRESULT add_DownloadFailed(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadFailedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DownloadFailed(EventRegistrationToken token);
}

@uuid("17890342-6760-4bb9-a58a-f7aa98b08c0e")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSource")
interface IAdaptiveMediaSource2 : IInspectable
{
extern(Windows):
	HRESULT get_AdvancedSettings(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceAdvancedSettings* return_value);
}

@uuid("ba7023fd-c334-461b-a36e-c99f54f7174a")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSource")
interface IAdaptiveMediaSource3 : IInspectable
{
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
extern(Windows):
	HRESULT get_Position(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_PresentationTimeStamp(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_ProgramDateTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
}

@uuid("4686b6b2-800f-4e31-9093-76d4782013e7")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationResult")
interface IAdaptiveMediaSourceCreationResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationStatus* return_value);
	HRESULT get_MediaSource(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource* return_value);
	HRESULT get_HttpResponseMessage(Windows.Web.Http.HttpResponseMessage* return_value);
}

@uuid("1c3243bf-1c44-404b-a201-df45ac7898e8")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationResult")
interface IAdaptiveMediaSourceCreationResult2 : IInspectable
{
extern(Windows):
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("3af64f06-6d9c-494a-b7a9-b3a5dee6ad68")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnosticAvailableEventArgs")
interface IAdaptiveMediaSourceDiagnosticAvailableEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT add_DiagnosticAvailable(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnostics, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnosticAvailableEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DiagnosticAvailable(EventRegistrationToken token);
}

@uuid("670c0a44-e04e-4eff-816a-17399f78f4ba")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadBitrateChangedEventArgs")
interface IAdaptiveMediaSourceDownloadBitrateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_OldValue(UINT32* return_value);
	HRESULT get_NewValue(UINT32* return_value);
}

@uuid("f3f1f444-96ae-4de0-b540-2b3246e6968c")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadBitrateChangedEventArgs")
interface IAdaptiveMediaSourceDownloadBitrateChangedEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_Reason(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadBitrateChangedReason* return_value);
}

@uuid("19240dc3-5b37-4a1a-8970-d621cb6ca83b")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadCompletedEventArgs")
interface IAdaptiveMediaSourceDownloadCompletedEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT get_RequestId(INT32* return_value);
	HRESULT get_Statistics(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadStatistics* return_value);
	HRESULT get_Position(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
}

@uuid("37739048-f4ab-40a4-b135-c6dfd8bd7ff1")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadFailedEventArgs")
interface IAdaptiveMediaSourceDownloadFailedEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("c83fdffd-44a9-47a2-bf96-03398b4bfaaf")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadRequestedEventArgs")
interface IAdaptiveMediaSourceDownloadRequestedEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT get_RequestId(INT32* return_value);
	HRESULT get_Position(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
}

@uuid("f4afdc73-bcee-4a6a-9f0a-fec41e2339b0")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadResult")
interface IAdaptiveMediaSourceDownloadResult : IInspectable
{
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
extern(Windows):
	HRESULT get_OldValue(UINT32* return_value);
	HRESULT get_NewValue(UINT32* return_value);
	HRESULT get_AudioOnly(bool* return_value);
}

@uuid("50a6bd5d-66ef-4cd3-9579-9e660507dc3f")
@WinrtFactory("Windows.Media.Streaming.Adaptive.AdaptiveMediaSource")
interface IAdaptiveMediaSourceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_IsContentTypeSupported(HSTRING contentType, bool* return_result);
	HRESULT abi_CreateFromUriAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationResult)* return_result);
	HRESULT abi_CreateFromUriWithDownloaderAsync(Windows.Foundation.Uri uri, Windows.Web.Http.HttpClient httpClient, Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationResult)* return_result);
	HRESULT abi_CreateFromStreamAsync(Windows.Storage.Streams.IInputStream stream, Windows.Foundation.Uri uri, HSTRING contentType, Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationResult)* return_result);
	HRESULT abi_CreateFromStreamWithDownloaderAsync(Windows.Storage.Streams.IInputStream stream, Windows.Foundation.Uri uri, HSTRING contentType, Windows.Web.Http.HttpClient httpClient, Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationResult)* return_result);
}

interface AdaptiveMediaSource : Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource, Windows.Media.Core.IMediaSource, Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource2, Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource3, Windows.Foundation.IClosable
{
extern(Windows):
	final bool IsLive()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource).get_IsLive(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan DesiredLiveOffset()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource).get_DesiredLiveOffset(&_ret));
		return _ret;
	}
	final void DesiredLiveOffset(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource).set_DesiredLiveOffset(value));
	}
	final UINT32 InitialBitrate()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource).get_InitialBitrate(&_ret));
		return _ret;
	}
	final void InitialBitrate(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource).set_InitialBitrate(value));
	}
	final UINT32 CurrentDownloadBitrate()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource).get_CurrentDownloadBitrate(&_ret));
		return _ret;
	}
	final UINT32 CurrentPlaybackBitrate()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource).get_CurrentPlaybackBitrate(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(UINT32) AvailableBitrates()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource).get_AvailableBitrates(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) DesiredMinBitrate()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource).get_DesiredMinBitrate(&_ret));
		return _ret;
	}
	final void DesiredMinBitrate(Windows.Foundation.IReference!(UINT32) value)
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource).set_DesiredMinBitrate(value));
	}
	final Windows.Foundation.IReference!(UINT32) DesiredMaxBitrate()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource).get_DesiredMaxBitrate(&_ret));
		return _ret;
	}
	final void DesiredMaxBitrate(Windows.Foundation.IReference!(UINT32) value)
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource).set_DesiredMaxBitrate(value));
	}
	final bool AudioOnlyPlayback()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource).get_AudioOnlyPlayback(&_ret));
		return _ret;
	}
	final UINT64 InboundBitsPerSecond()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource).get_InboundBitsPerSecond(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan InboundBitsPerSecondWindow()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource).get_InboundBitsPerSecondWindow(&_ret));
		return _ret;
	}
	final void InboundBitsPerSecondWindow(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource).set_InboundBitsPerSecondWindow(value));
	}
	final EventRegistrationToken OnDownloadBitrateChanged(void delegate(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadBitrateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DownloadBitrateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadBitrateChangedEventArgs), Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadBitrateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDownloadBitrateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_DownloadBitrateChanged(token));
	}
	final EventRegistrationToken OnPlaybackBitrateChanged(void delegate(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourcePlaybackBitrateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PlaybackBitrateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourcePlaybackBitrateChangedEventArgs), Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourcePlaybackBitrateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePlaybackBitrateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_PlaybackBitrateChanged(token));
	}
	final EventRegistrationToken OnDownloadRequested(void delegate(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DownloadRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadRequestedEventArgs), Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDownloadRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_DownloadRequested(token));
	}
	final EventRegistrationToken OnDownloadCompleted(void delegate(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DownloadCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadCompletedEventArgs), Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDownloadCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_DownloadCompleted(token));
	}
	final EventRegistrationToken OnDownloadFailed(void delegate(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadFailedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DownloadFailed(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadFailedEventArgs), Windows.Media.Streaming.Adaptive.AdaptiveMediaSource, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadFailedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDownloadFailed(EventRegistrationToken token)
	{
		Debug.OK(remove_DownloadFailed(token));
	}
	final Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceAdvancedSettings AdvancedSettings()
	{
		Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceAdvancedSettings _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource2).get_AdvancedSettings(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) MinLiveOffset()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource3).get_MinLiveOffset(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) MaxSeekableWindowSize()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource3).get_MaxSeekableWindowSize(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) DesiredSeekableWindowSize()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource3).get_DesiredSeekableWindowSize(&_ret));
		return _ret;
	}
	final void DesiredSeekableWindowSize(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource3).set_DesiredSeekableWindowSize(value));
	}
	final Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnostics Diagnostics()
	{
		Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnostics _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource3).get_Diagnostics(&_ret));
		return _ret;
	}
	final Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCorrelatedTimes GetCorrelatedTimes()
	{
		Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCorrelatedTimes _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource3).abi_GetCorrelatedTimes(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface AdaptiveMediaSourceAdvancedSettings : Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceAdvancedSettings
{
extern(Windows):
	final bool AllSegmentsIndependent()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceAdvancedSettings).get_AllSegmentsIndependent(&_ret));
		return _ret;
	}
	final void AllSegmentsIndependent(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceAdvancedSettings).set_AllSegmentsIndependent(value));
	}
	final Windows.Foundation.IReference!(double) DesiredBitrateHeadroomRatio()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceAdvancedSettings).get_DesiredBitrateHeadroomRatio(&_ret));
		return _ret;
	}
	final void DesiredBitrateHeadroomRatio(Windows.Foundation.IReference!(double) value)
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceAdvancedSettings).set_DesiredBitrateHeadroomRatio(value));
	}
	final Windows.Foundation.IReference!(double) BitrateDowngradeTriggerRatio()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceAdvancedSettings).get_BitrateDowngradeTriggerRatio(&_ret));
		return _ret;
	}
	final void BitrateDowngradeTriggerRatio(Windows.Foundation.IReference!(double) value)
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceAdvancedSettings).set_BitrateDowngradeTriggerRatio(value));
	}
}

interface AdaptiveMediaSourceCorrelatedTimes : Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceCorrelatedTimes
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Position()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceCorrelatedTimes).get_Position(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) PresentationTimeStamp()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceCorrelatedTimes).get_PresentationTimeStamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ProgramDateTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceCorrelatedTimes).get_ProgramDateTime(&_ret));
		return _ret;
	}
}

interface AdaptiveMediaSourceCreationResult : Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceCreationResult, Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceCreationResult2
{
extern(Windows):
	final Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationStatus Status()
	{
		Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationStatus _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceCreationResult).get_Status(&_ret));
		return _ret;
	}
	final Windows.Media.Streaming.Adaptive.AdaptiveMediaSource MediaSource()
	{
		Windows.Media.Streaming.Adaptive.AdaptiveMediaSource _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceCreationResult).get_MediaSource(&_ret));
		return _ret;
	}
	final Windows.Web.Http.HttpResponseMessage HttpResponseMessage()
	{
		Windows.Web.Http.HttpResponseMessage _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceCreationResult).get_HttpResponseMessage(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceCreationResult2).get_ExtendedError(&_ret));
		return _ret;
	}
}

interface AdaptiveMediaSourceDiagnosticAvailableEventArgs : Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDiagnosticAvailableEventArgs
{
extern(Windows):
	final Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnosticType DiagnosticType()
	{
		Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnosticType _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDiagnosticAvailableEventArgs).get_DiagnosticType(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(INT32) RequestId()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDiagnosticAvailableEventArgs).get_RequestId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Position()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDiagnosticAvailableEventArgs).get_Position(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT64) SegmentId()
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDiagnosticAvailableEventArgs).get_SegmentId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceResourceType) ResourceType()
	{
		Windows.Foundation.IReference!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceResourceType) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDiagnosticAvailableEventArgs).get_ResourceType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri ResourceUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDiagnosticAvailableEventArgs).get_ResourceUri(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT64) ResourceByteRangeOffset()
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDiagnosticAvailableEventArgs).get_ResourceByteRangeOffset(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT64) ResourceByteRangeLength()
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDiagnosticAvailableEventArgs).get_ResourceByteRangeLength(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) Bitrate()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDiagnosticAvailableEventArgs).get_Bitrate(&_ret));
		return _ret;
	}
}

interface AdaptiveMediaSourceDiagnostics : Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDiagnostics
{
extern(Windows):
	final EventRegistrationToken OnDiagnosticAvailable(void delegate(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnostics, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnosticAvailableEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DiagnosticAvailable(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnostics, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnosticAvailableEventArgs), Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnostics, Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnosticAvailableEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDiagnosticAvailable(EventRegistrationToken token)
	{
		Debug.OK(remove_DiagnosticAvailable(token));
	}
}

interface AdaptiveMediaSourceDownloadBitrateChangedEventArgs : Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadBitrateChangedEventArgs, Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadBitrateChangedEventArgs2
{
extern(Windows):
	final UINT32 OldValue()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadBitrateChangedEventArgs).get_OldValue(&_ret));
		return _ret;
	}
	final UINT32 NewValue()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadBitrateChangedEventArgs).get_NewValue(&_ret));
		return _ret;
	}
	final Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadBitrateChangedReason Reason()
	{
		Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadBitrateChangedReason _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadBitrateChangedEventArgs2).get_Reason(&_ret));
		return _ret;
	}
}

interface AdaptiveMediaSourceDownloadCompletedEventArgs : Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadCompletedEventArgs, Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadCompletedEventArgs2
{
extern(Windows):
	final Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceResourceType ResourceType()
	{
		Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceResourceType _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadCompletedEventArgs).get_ResourceType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri ResourceUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadCompletedEventArgs).get_ResourceUri(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT64) ResourceByteRangeOffset()
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadCompletedEventArgs).get_ResourceByteRangeOffset(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT64) ResourceByteRangeLength()
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadCompletedEventArgs).get_ResourceByteRangeLength(&_ret));
		return _ret;
	}
	final Windows.Web.Http.HttpResponseMessage HttpResponseMessage()
	{
		Windows.Web.Http.HttpResponseMessage _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadCompletedEventArgs).get_HttpResponseMessage(&_ret));
		return _ret;
	}
	final INT32 RequestId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadCompletedEventArgs2).get_RequestId(&_ret));
		return _ret;
	}
	final Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadStatistics Statistics()
	{
		Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadStatistics _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadCompletedEventArgs2).get_Statistics(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Position()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadCompletedEventArgs2).get_Position(&_ret));
		return _ret;
	}
}

interface AdaptiveMediaSourceDownloadFailedEventArgs : Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadFailedEventArgs, Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadFailedEventArgs2
{
extern(Windows):
	final Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceResourceType ResourceType()
	{
		Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceResourceType _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadFailedEventArgs).get_ResourceType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri ResourceUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadFailedEventArgs).get_ResourceUri(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT64) ResourceByteRangeOffset()
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadFailedEventArgs).get_ResourceByteRangeOffset(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT64) ResourceByteRangeLength()
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadFailedEventArgs).get_ResourceByteRangeLength(&_ret));
		return _ret;
	}
	final Windows.Web.Http.HttpResponseMessage HttpResponseMessage()
	{
		Windows.Web.Http.HttpResponseMessage _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadFailedEventArgs).get_HttpResponseMessage(&_ret));
		return _ret;
	}
	final INT32 RequestId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadFailedEventArgs2).get_RequestId(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadFailedEventArgs2).get_ExtendedError(&_ret));
		return _ret;
	}
	final Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadStatistics Statistics()
	{
		Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadStatistics _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadFailedEventArgs2).get_Statistics(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Position()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadFailedEventArgs2).get_Position(&_ret));
		return _ret;
	}
}

interface AdaptiveMediaSourceDownloadRequestedDeferral : Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadRequestedDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadRequestedDeferral).abi_Complete());
	}
}

interface AdaptiveMediaSourceDownloadRequestedEventArgs : Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadRequestedEventArgs, Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadRequestedEventArgs2
{
extern(Windows):
	final Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceResourceType ResourceType()
	{
		Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceResourceType _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadRequestedEventArgs).get_ResourceType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri ResourceUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadRequestedEventArgs).get_ResourceUri(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT64) ResourceByteRangeOffset()
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadRequestedEventArgs).get_ResourceByteRangeOffset(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT64) ResourceByteRangeLength()
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadRequestedEventArgs).get_ResourceByteRangeLength(&_ret));
		return _ret;
	}
	final Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadResult Result()
	{
		Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadResult _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadRequestedEventArgs).get_Result(&_ret));
		return _ret;
	}
	final Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadRequestedDeferral GetDeferral()
	{
		Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadRequestedDeferral _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadRequestedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
	final INT32 RequestId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadRequestedEventArgs2).get_RequestId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Position()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadRequestedEventArgs2).get_Position(&_ret));
		return _ret;
	}
}

interface AdaptiveMediaSourceDownloadResult : Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult, Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult2
{
extern(Windows):
	final Windows.Foundation.Uri ResourceUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult).get_ResourceUri(&_ret));
		return _ret;
	}
	final void ResourceUri(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult).set_ResourceUri(value));
	}
	final Windows.Storage.Streams.IInputStream InputStream()
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult).get_InputStream(&_ret));
		return _ret;
	}
	final void InputStream(Windows.Storage.Streams.IInputStream value)
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult).set_InputStream(value));
	}
	final Windows.Storage.Streams.IBuffer Buffer()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult).get_Buffer(&_ret));
		return _ret;
	}
	final void Buffer(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult).set_Buffer(value));
	}
	final HSTRING ContentType()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult).get_ContentType(&_ret));
		return _ret;
	}
	final void ContentType(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult).set_ContentType(value));
	}
	final UINT32 ExtendedStatus()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult).get_ExtendedStatus(&_ret));
		return _ret;
	}
	final void ExtendedStatus(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult).set_ExtendedStatus(value));
	}
	final Windows.Foundation.IReference!(UINT64) ResourceByteRangeOffset()
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult2).get_ResourceByteRangeOffset(&_ret));
		return _ret;
	}
	final void ResourceByteRangeOffset(Windows.Foundation.IReference!(UINT64) value)
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult2).set_ResourceByteRangeOffset(value));
	}
	final Windows.Foundation.IReference!(UINT64) ResourceByteRangeLength()
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult2).get_ResourceByteRangeLength(&_ret));
		return _ret;
	}
	final void ResourceByteRangeLength(Windows.Foundation.IReference!(UINT64) value)
	{
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult2).set_ResourceByteRangeLength(value));
	}
}

interface AdaptiveMediaSourceDownloadStatistics : Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadStatistics
{
extern(Windows):
	final UINT64 ContentBytesReceivedCount()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadStatistics).get_ContentBytesReceivedCount(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) TimeToHeadersReceived()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadStatistics).get_TimeToHeadersReceived(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) TimeToFirstByteReceived()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadStatistics).get_TimeToFirstByteReceived(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) TimeToLastByteReceived()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadStatistics).get_TimeToLastByteReceived(&_ret));
		return _ret;
	}
}

interface AdaptiveMediaSourcePlaybackBitrateChangedEventArgs : Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourcePlaybackBitrateChangedEventArgs
{
extern(Windows):
	final UINT32 OldValue()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourcePlaybackBitrateChangedEventArgs).get_OldValue(&_ret));
		return _ret;
	}
	final UINT32 NewValue()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourcePlaybackBitrateChangedEventArgs).get_NewValue(&_ret));
		return _ret;
	}
	final bool AudioOnly()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourcePlaybackBitrateChangedEventArgs).get_AudioOnly(&_ret));
		return _ret;
	}
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