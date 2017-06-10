module Windows.Media.Core;

import dwinrt;

struct MseTimeRange
{
	Windows.Foundation.TimeSpan Start;
	Windows.Foundation.TimeSpan End;
}

struct TimedTextDouble
{
	double Value;
	Windows.Media.Core.TimedTextUnit Unit;
}

struct TimedTextPadding
{
	double Before;
	double After;
	double Start;
	double End;
	Windows.Media.Core.TimedTextUnit Unit;
}

struct TimedTextPoint
{
	double X;
	double Y;
	Windows.Media.Core.TimedTextUnit Unit;
}

struct TimedTextSize
{
	double Height;
	double Width;
	Windows.Media.Core.TimedTextUnit Unit;
}

@uuid("1e3692e4-4027-4847-a70b-df1d9a2a7b04")
@WinrtFactory("Windows.Media.Core.AudioStreamDescriptor")
interface IAudioStreamDescriptor : IInspectable
{
extern(Windows):
	HRESULT get_EncodingProperties(Windows.Media.MediaProperties.AudioEncodingProperties* return_encodingProperties);
}

@uuid("2e68f1f6-a448-497b-8840-85082665acf9")
@WinrtFactory("Windows.Media.Core.AudioStreamDescriptor")
interface IAudioStreamDescriptor2 : IInspectable
{
extern(Windows):
	HRESULT set_LeadingEncoderPadding(Windows.Foundation.IReference!(UINT32) value);
	HRESULT get_LeadingEncoderPadding(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_TrailingEncoderPadding(Windows.Foundation.IReference!(UINT32) value);
	HRESULT get_TrailingEncoderPadding(Windows.Foundation.IReference!(UINT32)* return_value);
}

@uuid("4a86ce9e-4cb1-4380-8e0c-83504b7f5bf3")
@WinrtFactory("Windows.Media.Core.AudioStreamDescriptor")
interface IAudioStreamDescriptorFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties, Windows.Media.Core.AudioStreamDescriptor* return_result);
}

@uuid("f23b6e77-3ef7-40de-b943-068b1321701d")
@WinrtFactory("Windows.Media.Core.AudioTrack")
interface IAudioTrack : IInspectable
{
extern(Windows):
	HRESULT add_OpenFailed(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.AudioTrack, Windows.Media.Core.AudioTrackOpenFailedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_OpenFailed(EventRegistrationToken token);
	HRESULT abi_GetEncodingProperties(Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT get_PlaybackItem(Windows.Media.Playback.MediaPlaybackItem* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_SupportInfo(Windows.Media.Core.AudioTrackSupportInfo* return_value);
}

@uuid("eeddb9b9-bb7c-4112-bf76-9384676f824b")
@WinrtFactory("Windows.Media.Core.AudioTrackOpenFailedEventArgs")
interface IAudioTrackOpenFailedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("178beff7-cc39-44a6-b951-4a5653f073fa")
@WinrtFactory("Windows.Media.Core.AudioTrackSupportInfo")
interface IAudioTrackSupportInfo : IInspectable
{
extern(Windows):
	HRESULT get_DecoderStatus(Windows.Media.Core.MediaDecoderStatus* return_value);
	HRESULT get_Degradation(Windows.Media.Core.AudioDecoderDegradation* return_value);
	HRESULT get_DegradationReason(Windows.Media.Core.AudioDecoderDegradationReason* return_value);
	HRESULT get_MediaSourceStatus(Windows.Media.Core.MediaSourceStatus* return_value);
}

@uuid("72a98001-d38a-4c0a-8fa6-75cddaf4664c")
@WinrtFactory("Windows.Media.Core.ChapterCue")
interface IChapterCue : IInspectable
{
extern(Windows):
	HRESULT set_Title(HSTRING value);
	HRESULT get_Title(HSTRING* return_value);
}

@uuid("51e89f85-ea97-499c-86ac-4ce5e73f3a42")
@WinrtFactory("Windows.Media.Core.CodecInfo")
interface ICodecInfo : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.Media.Core.CodecKind* return_value);
	HRESULT get_Category(Windows.Media.Core.CodecCategory* return_value);
	HRESULT get_Subtypes(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_IsTrusted(bool* return_value);
}

@uuid("222a953a-af61-4e04-808a-a4634e2f3ac4")
@WinrtFactory("Windows.Media.Core.CodecQuery")
interface ICodecQuery : IInspectable
{
extern(Windows):
	HRESULT abi_FindAllAsync(Windows.Media.Core.CodecKind kind, Windows.Media.Core.CodecCategory category, HSTRING subType, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.CodecInfo))* return_value);
}

@uuid("a66ac4f2-888b-4224-8cf6-2a8d4eb02382")
@WinrtFactory("Windows.Media.Core.CodecSubtypes")
interface ICodecSubtypesStatics : IInspectable
{
extern(Windows):
	HRESULT get_VideoFormatDV25(HSTRING* return_value);
	HRESULT get_VideoFormatDV50(HSTRING* return_value);
	HRESULT get_VideoFormatDvc(HSTRING* return_value);
	HRESULT get_VideoFormatDvh1(HSTRING* return_value);
	HRESULT get_VideoFormatDvhD(HSTRING* return_value);
	HRESULT get_VideoFormatDvsd(HSTRING* return_value);
	HRESULT get_VideoFormatDvsl(HSTRING* return_value);
	HRESULT get_VideoFormatH263(HSTRING* return_value);
	HRESULT get_VideoFormatH264(HSTRING* return_value);
	HRESULT get_VideoFormatH265(HSTRING* return_value);
	HRESULT get_VideoFormatH264ES(HSTRING* return_value);
	HRESULT get_VideoFormatHevc(HSTRING* return_value);
	HRESULT get_VideoFormatHevcES(HSTRING* return_value);
	HRESULT get_VideoFormatM4S2(HSTRING* return_value);
	HRESULT get_VideoFormatMjpg(HSTRING* return_value);
	HRESULT get_VideoFormatMP43(HSTRING* return_value);
	HRESULT get_VideoFormatMP4S(HSTRING* return_value);
	HRESULT get_VideoFormatMP4V(HSTRING* return_value);
	HRESULT get_VideoFormatMpeg2(HSTRING* return_value);
	HRESULT get_VideoFormatVP80(HSTRING* return_value);
	HRESULT get_VideoFormatVP90(HSTRING* return_value);
	HRESULT get_VideoFormatMpg1(HSTRING* return_value);
	HRESULT get_VideoFormatMss1(HSTRING* return_value);
	HRESULT get_VideoFormatMss2(HSTRING* return_value);
	HRESULT get_VideoFormatWmv1(HSTRING* return_value);
	HRESULT get_VideoFormatWmv2(HSTRING* return_value);
	HRESULT get_VideoFormatWmv3(HSTRING* return_value);
	HRESULT get_VideoFormatWvc1(HSTRING* return_value);
	HRESULT get_VideoFormat420O(HSTRING* return_value);
	HRESULT get_AudioFormatAac(HSTRING* return_value);
	HRESULT get_AudioFormatAdts(HSTRING* return_value);
	HRESULT get_AudioFormatAlac(HSTRING* return_value);
	HRESULT get_AudioFormatAmrNB(HSTRING* return_value);
	HRESULT get_AudioFormatAmrWB(HSTRING* return_value);
	HRESULT get_AudioFormatAmrWP(HSTRING* return_value);
	HRESULT get_AudioFormatDolbyAC3(HSTRING* return_value);
	HRESULT get_AudioFormatDolbyAC3Spdif(HSTRING* return_value);
	HRESULT get_AudioFormatDolbyDDPlus(HSTRING* return_value);
	HRESULT get_AudioFormatDrm(HSTRING* return_value);
	HRESULT get_AudioFormatDts(HSTRING* return_value);
	HRESULT get_AudioFormatFlac(HSTRING* return_value);
	HRESULT get_AudioFormatFloat(HSTRING* return_value);
	HRESULT get_AudioFormatMP3(HSTRING* return_value);
	HRESULT get_AudioFormatMPeg(HSTRING* return_value);
	HRESULT get_AudioFormatMsp1(HSTRING* return_value);
	HRESULT get_AudioFormatOpus(HSTRING* return_value);
	HRESULT get_AudioFormatPcm(HSTRING* return_value);
	HRESULT get_AudioFormatWmaSpdif(HSTRING* return_value);
	HRESULT get_AudioFormatWMAudioLossless(HSTRING* return_value);
	HRESULT get_AudioFormatWMAudioV8(HSTRING* return_value);
	HRESULT get_AudioFormatWMAudioV9(HSTRING* return_value);
}

@uuid("7c7f676d-1fbc-4e2d-9a87-ee38bd1dc637")
@WinrtFactory("Windows.Media.Core.DataCue")
interface IDataCue : IInspectable
{
extern(Windows):
	HRESULT set_Data(Windows.Storage.Streams.IBuffer value);
	HRESULT get_Data(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("bc561b15-95f2-49e8-96f1-8dd5dac68d93")
@WinrtFactory("Windows.Media.Core.DataCue")
interface IDataCue2 : IInspectable
{
extern(Windows):
	HRESULT get_Properties(Windows.Foundation.Collections.PropertySet* return_value);
}

@uuid("19918426-c65b-46ba-85f8-13880576c90a")
@WinrtFactory("Windows.Media.Core.FaceDetectedEventArgs")
interface IFaceDetectedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ResultFrame(Windows.Media.Core.FaceDetectionEffectFrame* return_value);
}

@uuid("ae15ebd2-0542-42a9-bc90-f283a29f46c1")
@WinrtFactory("Windows.Media.Core.FaceDetectionEffect")
interface IFaceDetectionEffect : IInspectable
{
extern(Windows):
	HRESULT set_Enabled(bool value);
	HRESULT get_Enabled(bool* return_value);
	HRESULT set_DesiredDetectionInterval(Windows.Foundation.TimeSpan value);
	HRESULT get_DesiredDetectionInterval(Windows.Foundation.TimeSpan* return_value);
	HRESULT add_FaceDetected(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.FaceDetectionEffect, Windows.Media.Core.FaceDetectedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_FaceDetected(EventRegistrationToken cookie);
}

@uuid("43dca081-b848-4f33-b702-1fd2624fb016")
@WinrtFactory("Windows.Media.Core.FaceDetectionEffectDefinition")
interface IFaceDetectionEffectDefinition : IInspectable
{
extern(Windows):
	HRESULT set_DetectionMode(Windows.Media.Core.FaceDetectionMode value);
	HRESULT get_DetectionMode(Windows.Media.Core.FaceDetectionMode* return_value);
	HRESULT set_SynchronousDetectionEnabled(bool value);
	HRESULT get_SynchronousDetectionEnabled(bool* return_value);
}

@uuid("8ab08993-5dc8-447b-a247-5270bd802ece")
@WinrtFactory("Windows.Media.Core.FaceDetectionEffectFrame")
interface IFaceDetectionEffectFrame : IInspectable
{
extern(Windows):
	HRESULT get_DetectedFaces(Windows.Foundation.Collections.IVectorView!(Windows.Media.FaceAnalysis.DetectedFace)* return_value);
}

@uuid("55f1a7ae-d957-4dc9-9d1c-8553a82a7d99")
@WinrtFactory("Windows.Media.Core.HighDynamicRangeControl")
interface IHighDynamicRangeControl : IInspectable
{
extern(Windows):
	HRESULT set_Enabled(bool value);
	HRESULT get_Enabled(bool* return_value);
}

@uuid("0f57806b-253b-4119-bb40-3a90e51384f7")
@WinrtFactory("Windows.Media.Core.HighDynamicRangeOutput")
interface IHighDynamicRangeOutput : IInspectable
{
extern(Windows):
	HRESULT get_Certainty(double* return_value);
	HRESULT get_FrameControllers(Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.Core.FrameController)* return_value);
}

@uuid("52828282-367b-440b-9116-3c84570dd270")
@WinrtFactory("Windows.Media.Core.ImageCue")
interface IImageCue : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Media.Core.TimedTextPoint* return_value);
	HRESULT set_Position(Windows.Media.Core.TimedTextPoint value);
	HRESULT get_Extent(Windows.Media.Core.TimedTextSize* return_value);
	HRESULT set_Extent(Windows.Media.Core.TimedTextSize value);
	HRESULT set_SoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap value);
	HRESULT get_SoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap* return_value);
}

@uuid("2b7e40aa-de07-424f-83f1-f1de46c4fa2e")
@WinrtFactory("Windows.Media.Core.MediaBinder")
interface IMediaBinder : IInspectable
{
extern(Windows):
	HRESULT add_Binding(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MediaBinder, Windows.Media.Core.MediaBindingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Binding(EventRegistrationToken token);
	HRESULT get_Token(HSTRING* return_value);
	HRESULT set_Token(HSTRING value);
	HRESULT get_Source(Windows.Media.Core.MediaSource* return_value);
}

@uuid("b61cb25a-1b6d-4630-a86d-2f0837f712e5")
@WinrtFactory("Windows.Media.Core.MediaBindingEventArgs")
interface IMediaBindingEventArgs : IInspectable
{
extern(Windows):
	HRESULT add_Canceled(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MediaBindingEventArgs, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Canceled(EventRegistrationToken token);
	HRESULT get_MediaBinder(Windows.Media.Core.MediaBinder* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_deferral);
	HRESULT abi_SetUri(Windows.Foundation.Uri uri);
	HRESULT abi_SetStream(Windows.Storage.Streams.IRandomAccessStream stream, HSTRING contentType);
	HRESULT abi_SetStreamReference(Windows.Storage.Streams.IRandomAccessStreamReference stream, HSTRING contentType);
}

@uuid("0464cceb-bb5a-482f-b8ba-f0284c696567")
@WinrtFactory("Windows.Media.Core.MediaBindingEventArgs")
interface IMediaBindingEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT abi_SetAdaptiveMediaSource(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource mediaSource);
	HRESULT abi_SetStorageFile(Windows.Storage.IStorageFile file);
}

@uuid("c7d15e5d-59dc-431f-a0ee-27744323b36d")
interface IMediaCue : IInspectable
{
extern(Windows):
	HRESULT set_StartTime(Windows.Foundation.TimeSpan value);
	HRESULT get_StartTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Duration(Windows.Foundation.TimeSpan value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Id(HSTRING value);
	HRESULT get_Id(HSTRING* return_value);
}

@uuid("d12f47f7-5fa4-4e68-9fe5-32160dcee57e")
@WinrtFactory("Windows.Media.Core.MediaCueEventArgs")
interface IMediaCueEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Cue(Windows.Media.Core.IMediaCue* return_value);
}

@uuid("e7bfb599-a09d-4c21-bcdf-20af4f86b3d9")
interface IMediaSource : IInspectable
{
}

@uuid("2eb61048-655f-4c37-b813-b4e45dfa0abe")
@WinrtFactory("Windows.Media.Core.MediaSource")
interface IMediaSource2 : IInspectable
{
extern(Windows):
	HRESULT add_OpenOperationCompleted(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MediaSource, Windows.Media.Core.MediaSourceOpenOperationCompletedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_OpenOperationCompleted(EventRegistrationToken token);
	HRESULT get_CustomProperties(Windows.Foundation.Collections.ValueSet* return_value);
	HRESULT get_Duration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_IsOpen(bool* return_value);
	HRESULT get_ExternalTimedTextSources(Windows.Foundation.Collections.IObservableVector!(Windows.Media.Core.TimedTextSource)* return_value);
	HRESULT get_ExternalTimedMetadataTracks(Windows.Foundation.Collections.IObservableVector!(Windows.Media.Core.TimedMetadataTrack)* return_value);
}

@uuid("b59f0d9b-4b6e-41ed-bbb4-7c7509a994ad")
@WinrtFactory("Windows.Media.Core.MediaSource")
interface IMediaSource3 : IInspectable
{
extern(Windows):
	HRESULT add_StateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MediaSource, Windows.Media.Core.MediaSourceStateChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_StateChanged(EventRegistrationToken token);
	HRESULT get_State(Windows.Media.Core.MediaSourceState* return_value);
	HRESULT abi_Reset();
}

@uuid("bdafad57-8eff-4c63-85a6-84de0ae3e4f2")
@WinrtFactory("Windows.Media.Core.MediaSource")
interface IMediaSource4 : IInspectable
{
extern(Windows):
	HRESULT get_AdaptiveMediaSource(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource* return_value);
	HRESULT get_MediaStreamSource(Windows.Media.Core.MediaStreamSource* return_value);
	HRESULT get_MseStreamSource(Windows.Media.Core.MseStreamSource* return_value);
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT abi_OpenAsync(Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("5c0a8965-37c5-4e9d-8d21-1cdee90cecc6")
@WinrtFactory("Windows.Media.Core.MediaSourceError")
interface IMediaSourceError : IInspectable
{
extern(Windows):
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("fc682ceb-e281-477c-a8e0-1acd654114c8")
@WinrtFactory("Windows.Media.Core.MediaSourceOpenOperationCompletedEventArgs")
interface IMediaSourceOpenOperationCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Error(Windows.Media.Core.MediaSourceError* return_value);
}

@uuid("0a30af82-9071-4bac-bc39-ca2a93b717a9")
@WinrtFactory("Windows.Media.Core.MediaSourceStateChangedEventArgs")
interface IMediaSourceStateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_OldState(Windows.Media.Core.MediaSourceState* return_value);
	HRESULT get_NewState(Windows.Media.Core.MediaSourceState* return_value);
}

@uuid("f77d6fa4-4652-410e-b1d8-e9a5e245a45c")
@WinrtFactory("Windows.Media.Core.MediaSource")
interface IMediaSourceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromAdaptiveMediaSource(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource mediaSource, Windows.Media.Core.MediaSource* return_result);
	HRESULT abi_CreateFromMediaStreamSource(Windows.Media.Core.MediaStreamSource mediaSource, Windows.Media.Core.MediaSource* return_result);
	HRESULT abi_CreateFromMseStreamSource(Windows.Media.Core.MseStreamSource mediaSource, Windows.Media.Core.MediaSource* return_result);
	HRESULT abi_CreateFromIMediaSource(Windows.Media.Core.IMediaSource mediaSource, Windows.Media.Core.MediaSource* return_result);
	HRESULT abi_CreateFromStorageFile(Windows.Storage.IStorageFile file, Windows.Media.Core.MediaSource* return_result);
	HRESULT abi_CreateFromStream(Windows.Storage.Streams.IRandomAccessStream stream, HSTRING contentType, Windows.Media.Core.MediaSource* return_result);
	HRESULT abi_CreateFromStreamReference(Windows.Storage.Streams.IRandomAccessStreamReference stream, HSTRING contentType, Windows.Media.Core.MediaSource* return_result);
	HRESULT abi_CreateFromUri(Windows.Foundation.Uri uri, Windows.Media.Core.MediaSource* return_result);
}

@uuid("eee161a4-7f13-4896-b8cb-df0de5bcb9f1")
@WinrtFactory("Windows.Media.Core.MediaSource")
interface IMediaSourceStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromMediaBinder(Windows.Media.Core.MediaBinder binder, Windows.Media.Core.MediaSource* return_result);
}

@uuid("80f16e6e-92f7-451e-97d2-afd80742da70")
interface IMediaStreamDescriptor : IInspectable
{
extern(Windows):
	HRESULT get_IsSelected(bool* return_selected);
	HRESULT set_Name(HSTRING value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Language(HSTRING value);
	HRESULT get_Language(HSTRING* return_value);
}

@uuid("5c8db627-4b80-4361-9837-6cb7481ad9d6")
@WinrtFactory("Windows.Media.Core.MediaStreamSample")
interface IMediaStreamSample : IInspectable
{
extern(Windows):
	HRESULT add_Processed(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MediaStreamSample, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Processed(EventRegistrationToken token);
	HRESULT get_Buffer(Windows.Storage.Streams.Buffer* return_value);
	HRESULT get_Timestamp(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_ExtendedProperties(Windows.Media.Core.MediaStreamSamplePropertySet* return_value);
	HRESULT get_Protection(Windows.Media.Core.MediaStreamSampleProtectionProperties* return_value);
	HRESULT set_DecodeTimestamp(Windows.Foundation.TimeSpan value);
	HRESULT get_DecodeTimestamp(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Duration(Windows.Foundation.TimeSpan value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_KeyFrame(bool value);
	HRESULT get_KeyFrame(bool* return_value);
	HRESULT set_Discontinuous(bool value);
	HRESULT get_Discontinuous(bool* return_value);
}

@uuid("4eb88292-ecdf-493e-841d-dd4add7caca2")
@WinrtFactory("Windows.Media.Core.MediaStreamSampleProtectionProperties")
interface IMediaStreamSampleProtectionProperties : IInspectable
{
extern(Windows):
	HRESULT abi_SetKeyIdentifier(UINT32 __valueSize, BYTE* value);
	HRESULT abi_GetKeyIdentifier(UINT32* out___valueSize, BYTE** out_value);
	HRESULT abi_SetInitializationVector(UINT32 __valueSize, BYTE* value);
	HRESULT abi_GetInitializationVector(UINT32* out___valueSize, BYTE** out_value);
	HRESULT abi_SetSubSampleMapping(UINT32 __valueSize, BYTE* value);
	HRESULT abi_GetSubSampleMapping(UINT32* out___valueSize, BYTE** out_value);
}

@uuid("dfdf218f-a6cf-4579-be41-73dd941ad972")
@WinrtFactory("Windows.Media.Core.MediaStreamSample")
interface IMediaStreamSampleStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromBuffer(Windows.Storage.Streams.IBuffer buffer, Windows.Foundation.TimeSpan timestamp, Windows.Media.Core.MediaStreamSample* return_value);
	HRESULT abi_CreateFromStreamAsync(Windows.Storage.Streams.IInputStream stream, UINT32 count, Windows.Foundation.TimeSpan timestamp, Windows.Foundation.IAsyncOperation!(Windows.Media.Core.MediaStreamSample)* return_value);
}

@uuid("3712d543-45eb-4138-aa62-c01e26f3843f")
@WinrtFactory("Windows.Media.Core.MediaStreamSource")
interface IMediaStreamSource : IInspectable
{
extern(Windows):
	HRESULT add_Closed(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MediaStreamSource, Windows.Media.Core.MediaStreamSourceClosedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Closed(EventRegistrationToken token);
	HRESULT add_Starting(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MediaStreamSource, Windows.Media.Core.MediaStreamSourceStartingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Starting(EventRegistrationToken token);
	HRESULT add_Paused(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MediaStreamSource, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Paused(EventRegistrationToken token);
	HRESULT add_SampleRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MediaStreamSource, Windows.Media.Core.MediaStreamSourceSampleRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SampleRequested(EventRegistrationToken token);
	HRESULT add_SwitchStreamsRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MediaStreamSource, Windows.Media.Core.MediaStreamSourceSwitchStreamsRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SwitchStreamsRequested(EventRegistrationToken token);
	HRESULT abi_NotifyError(Windows.Media.Core.MediaStreamSourceErrorStatus errorStatus);
	HRESULT abi_AddStreamDescriptor(Windows.Media.Core.IMediaStreamDescriptor descriptor);
	HRESULT set_MediaProtectionManager(Windows.Media.Protection.MediaProtectionManager value);
	HRESULT get_MediaProtectionManager(Windows.Media.Protection.MediaProtectionManager* return_value);
	HRESULT set_Duration(Windows.Foundation.TimeSpan value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_CanSeek(bool value);
	HRESULT get_CanSeek(bool* return_value);
	HRESULT set_BufferTime(Windows.Foundation.TimeSpan value);
	HRESULT get_BufferTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT abi_SetBufferedRange(Windows.Foundation.TimeSpan startOffset, Windows.Foundation.TimeSpan endOffset);
	HRESULT get_MusicProperties(Windows.Storage.FileProperties.MusicProperties* return_value);
	HRESULT get_VideoProperties(Windows.Storage.FileProperties.VideoProperties* return_value);
	HRESULT set_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT abi_AddProtectionKey(Windows.Media.Core.IMediaStreamDescriptor streamDescriptor, UINT32 __keyIdentifierSize, BYTE* keyIdentifier, UINT32 __licenseDataSize, BYTE* licenseData);
}

@uuid("ec55d0ad-2e6a-4f74-adbb-b562d1533849")
@WinrtFactory("Windows.Media.Core.MediaStreamSource")
interface IMediaStreamSource2 : IInspectable
{
extern(Windows):
	HRESULT add_SampleRendered(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MediaStreamSource, Windows.Media.Core.MediaStreamSourceSampleRenderedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SampleRendered(EventRegistrationToken token);
}

@uuid("6a2a2746-3ddd-4ddf-a121-94045ecf9440")
@WinrtFactory("Windows.Media.Core.MediaStreamSource")
interface IMediaStreamSource3 : IInspectable
{
extern(Windows):
	HRESULT set_MaxSupportedPlaybackRate(Windows.Foundation.IReference!(double) value);
	HRESULT get_MaxSupportedPlaybackRate(Windows.Foundation.IReference!(double)* return_value);
}

@uuid("cd8c7eb2-4816-4e24-88f0-491ef7386406")
@WinrtFactory("Windows.Media.Core.MediaStreamSourceClosedEventArgs")
interface IMediaStreamSourceClosedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.Media.Core.MediaStreamSourceClosedRequest* return_value);
}

@uuid("907c00e9-18a3-4951-887a-2c1eebd5c69e")
@WinrtFactory("Windows.Media.Core.MediaStreamSourceClosedRequest")
interface IMediaStreamSourceClosedRequest : IInspectable
{
extern(Windows):
	HRESULT get_Reason(Windows.Media.Core.MediaStreamSourceClosedReason* return_value);
}

@uuid("ef77e0d9-d158-4b7a-863f-203342fbfd41")
@WinrtFactory("Windows.Media.Core.MediaStreamSource")
interface IMediaStreamSourceFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromDescriptor(Windows.Media.Core.IMediaStreamDescriptor descriptor, Windows.Media.Core.MediaStreamSource* return_result);
	HRESULT abi_CreateFromDescriptors(Windows.Media.Core.IMediaStreamDescriptor descriptor, Windows.Media.Core.IMediaStreamDescriptor descriptor2, Windows.Media.Core.MediaStreamSource* return_result);
}

@uuid("9d697b05-d4f2-4c7a-9dfe-8d6cd0b3ee84")
@WinrtFactory("Windows.Media.Core.MediaStreamSourceSampleRenderedEventArgs")
interface IMediaStreamSourceSampleRenderedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_SampleLag(Windows.Foundation.TimeSpan* return_value);
}

@uuid("4db341a9-3501-4d9b-83f9-8f235c822532")
@WinrtFactory("Windows.Media.Core.MediaStreamSourceSampleRequest")
interface IMediaStreamSourceSampleRequest : IInspectable
{
extern(Windows):
	HRESULT get_StreamDescriptor(Windows.Media.Core.IMediaStreamDescriptor* return_value);
	HRESULT abi_GetDeferral(Windows.Media.Core.MediaStreamSourceSampleRequestDeferral* return_deferral);
	HRESULT set_Sample(Windows.Media.Core.MediaStreamSample value);
	HRESULT get_Sample(Windows.Media.Core.MediaStreamSample* return_value);
	HRESULT abi_ReportSampleProgress(UINT32 progress);
}

@uuid("7895cc02-f982-43c8-9d16-c62d999319be")
@WinrtFactory("Windows.Media.Core.MediaStreamSourceSampleRequestDeferral")
interface IMediaStreamSourceSampleRequestDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("10f9bb9e-71c5-492f-847f-0da1f35e81f8")
@WinrtFactory("Windows.Media.Core.MediaStreamSourceSampleRequestedEventArgs")
interface IMediaStreamSourceSampleRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.Media.Core.MediaStreamSourceSampleRequest* return_value);
}

@uuid("f41468f2-c274-4940-a5bb-28a572452fa7")
@WinrtFactory("Windows.Media.Core.MediaStreamSourceStartingEventArgs")
interface IMediaStreamSourceStartingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.Media.Core.MediaStreamSourceStartingRequest* return_value);
}

@uuid("2a9093e4-35c4-4b1b-a791-0d99db56dd1d")
@WinrtFactory("Windows.Media.Core.MediaStreamSourceStartingRequest")
interface IMediaStreamSourceStartingRequest : IInspectable
{
extern(Windows):
	HRESULT get_StartPosition(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT abi_GetDeferral(Windows.Media.Core.MediaStreamSourceStartingRequestDeferral* return_deferral);
	HRESULT abi_SetActualStartPosition(Windows.Foundation.TimeSpan position);
}

@uuid("3f1356a5-6340-4dc4-9910-068ed9f598f8")
@WinrtFactory("Windows.Media.Core.MediaStreamSourceStartingRequestDeferral")
interface IMediaStreamSourceStartingRequestDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("41b8808e-38a9-4ec3-9ba0-b69b85501e90")
@WinrtFactory("Windows.Media.Core.MediaStreamSourceSwitchStreamsRequest")
interface IMediaStreamSourceSwitchStreamsRequest : IInspectable
{
extern(Windows):
	HRESULT get_OldStreamDescriptor(Windows.Media.Core.IMediaStreamDescriptor* return_value);
	HRESULT get_NewStreamDescriptor(Windows.Media.Core.IMediaStreamDescriptor* return_value);
	HRESULT abi_GetDeferral(Windows.Media.Core.MediaStreamSourceSwitchStreamsRequestDeferral* return_deferral);
}

@uuid("bee3d835-a505-4f9a-b943-2b8cb1b4bbd9")
@WinrtFactory("Windows.Media.Core.MediaStreamSourceSwitchStreamsRequestDeferral")
interface IMediaStreamSourceSwitchStreamsRequestDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("42202b72-6ea1-4677-981e-350a0da412aa")
@WinrtFactory("Windows.Media.Core.MediaStreamSourceSwitchStreamsRequestedEventArgs")
interface IMediaStreamSourceSwitchStreamsRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.Media.Core.MediaStreamSourceSwitchStreamsRequest* return_value);
}

@uuid("03e1fafc-c931-491a-b46b-c10ee8c256b7")
interface IMediaTrack : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Language(HSTRING* return_value);
	HRESULT get_TrackKind(Windows.Media.Core.MediaTrackKind* return_value);
	HRESULT set_Label(HSTRING value);
	HRESULT get_Label(HSTRING* return_value);
}

@uuid("0c1aa3e3-df8d-4079-a3fe-6849184b4e2f")
@WinrtFactory("Windows.Media.Core.MseSourceBuffer")
interface IMseSourceBuffer : IInspectable
{
extern(Windows):
	HRESULT add_UpdateStarting(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MseSourceBuffer, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_UpdateStarting(EventRegistrationToken token);
	HRESULT add_Updated(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MseSourceBuffer, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Updated(EventRegistrationToken token);
	HRESULT add_UpdateEnded(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MseSourceBuffer, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_UpdateEnded(EventRegistrationToken token);
	HRESULT add_ErrorOccurred(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MseSourceBuffer, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_ErrorOccurred(EventRegistrationToken token);
	HRESULT add_Aborted(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MseSourceBuffer, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Aborted(EventRegistrationToken token);
	HRESULT get_Mode(Windows.Media.Core.MseAppendMode* return_value);
	HRESULT set_Mode(Windows.Media.Core.MseAppendMode value);
	HRESULT get_IsUpdating(bool* return_value);
	HRESULT get_Buffered(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.MseTimeRange)* return_value);
	HRESULT get_TimestampOffset(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_TimestampOffset(Windows.Foundation.TimeSpan value);
	HRESULT get_AppendWindowStart(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_AppendWindowStart(Windows.Foundation.TimeSpan value);
	HRESULT get_AppendWindowEnd(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_AppendWindowEnd(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT abi_AppendBuffer(Windows.Storage.Streams.IBuffer buffer);
	HRESULT abi_AppendStream(Windows.Storage.Streams.IInputStream stream);
	HRESULT abi_AppendStreamMaxSize(Windows.Storage.Streams.IInputStream stream, UINT64 maxSize);
	HRESULT abi_Abort();
	HRESULT abi_Remove(Windows.Foundation.TimeSpan start, Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) end);
}

@uuid("95fae8e7-a8e7-4ebf-8927-145e940ba511")
@WinrtFactory("Windows.Media.Core.MseSourceBufferList")
interface IMseSourceBufferList : IInspectable
{
extern(Windows):
	HRESULT add_SourceBufferAdded(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MseSourceBufferList, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_SourceBufferAdded(EventRegistrationToken token);
	HRESULT add_SourceBufferRemoved(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MseSourceBufferList, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_SourceBufferRemoved(EventRegistrationToken token);
	HRESULT get_Buffers(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.MseSourceBuffer)* return_value);
}

@uuid("b0b4198d-02f4-4923-88dd-81bc3f360ffa")
@WinrtFactory("Windows.Media.Core.MseStreamSource")
interface IMseStreamSource : IInspectable
{
extern(Windows):
	HRESULT add_Opened(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MseStreamSource, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Opened(EventRegistrationToken token);
	HRESULT add_Ended(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MseStreamSource, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Ended(EventRegistrationToken token);
	HRESULT add_Closed(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.MseStreamSource, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Closed(EventRegistrationToken token);
	HRESULT get_SourceBuffers(Windows.Media.Core.MseSourceBufferList* return_value);
	HRESULT get_ActiveSourceBuffers(Windows.Media.Core.MseSourceBufferList* return_value);
	HRESULT get_ReadyState(Windows.Media.Core.MseReadyState* return_value);
	HRESULT get_Duration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_Duration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT abi_AddSourceBuffer(HSTRING mimeType, Windows.Media.Core.MseSourceBuffer* return_buffer);
	HRESULT abi_RemoveSourceBuffer(Windows.Media.Core.MseSourceBuffer buffer);
	HRESULT abi_EndOfStream(Windows.Media.Core.MseEndOfStreamStatus status);
}

@uuid("465c679d-d570-43ce-ba21-0bff5f3fbd0a")
@WinrtFactory("Windows.Media.Core.MseStreamSource")
interface IMseStreamSourceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_IsContentTypeSupported(HSTRING contentType, bool* return_value);
}

@uuid("c04ba319-ca41-4813-bffd-7b08b0ed2557")
@WinrtFactory("Windows.Media.Core.SceneAnalysisEffect")
interface ISceneAnalysisEffect : IInspectable
{
extern(Windows):
	HRESULT get_HighDynamicRangeAnalyzer(Windows.Media.Core.HighDynamicRangeControl* return_value);
	HRESULT set_DesiredAnalysisInterval(Windows.Foundation.TimeSpan value);
	HRESULT get_DesiredAnalysisInterval(Windows.Foundation.TimeSpan* return_value);
	HRESULT add_SceneAnalyzed(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.SceneAnalysisEffect, Windows.Media.Core.SceneAnalyzedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_SceneAnalyzed(EventRegistrationToken cookie);
}

@uuid("d8b10e4c-7fd9-42e1-85eb-6572c297c987")
@WinrtFactory("Windows.Media.Core.SceneAnalysisEffectFrame")
interface ISceneAnalysisEffectFrame : IInspectable
{
extern(Windows):
	HRESULT get_FrameControlValues(Windows.Media.Capture.CapturedFrameControlValues* return_value);
	HRESULT get_HighDynamicRange(Windows.Media.Core.HighDynamicRangeOutput* return_value);
}

@uuid("146b9588-2851-45e4-ad55-44cf8df8db4d")
@WinrtFactory("Windows.Media.Core.SceneAnalyzedEventArgs")
interface ISceneAnalyzedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ResultFrame(Windows.Media.Core.SceneAnalysisEffectFrame* return_value);
}

@uuid("77206f1f-c34f-494f-8077-2bad9ff4ecf1")
interface ISingleSelectMediaTrackList : IInspectable
{
extern(Windows):
	HRESULT add_SelectedIndexChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.ISingleSelectMediaTrackList, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_SelectedIndexChanged(EventRegistrationToken token);
	HRESULT set_SelectedIndex(INT32 value);
	HRESULT get_SelectedIndex(INT32* return_value);
}

@uuid("aee254dc-1725-4bad-8043-a98499b017a2")
@WinrtFactory("Windows.Media.Core.SpeechCue")
interface ISpeechCue : IInspectable
{
extern(Windows):
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
	HRESULT get_StartPositionInInput(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_StartPositionInInput(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_EndPositionInInput(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_EndPositionInInput(Windows.Foundation.IReference!(INT32) value);
}

@uuid("9e6aed9e-f67a-49a9-b330-cf03b0e9cf07")
@WinrtFactory("Windows.Media.Core.TimedMetadataTrack")
interface ITimedMetadataTrack : IInspectable
{
extern(Windows):
	HRESULT add_CueEntered(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.TimedMetadataTrack, Windows.Media.Core.MediaCueEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CueEntered(EventRegistrationToken token);
	HRESULT add_CueExited(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.TimedMetadataTrack, Windows.Media.Core.MediaCueEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CueExited(EventRegistrationToken token);
	HRESULT add_TrackFailed(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.TimedMetadataTrack, Windows.Media.Core.TimedMetadataTrackFailedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_TrackFailed(EventRegistrationToken token);
	HRESULT get_Cues(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.IMediaCue)* return_value);
	HRESULT get_ActiveCues(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.IMediaCue)* return_value);
	HRESULT get_TimedMetadataKind(Windows.Media.Core.TimedMetadataKind* return_value);
	HRESULT get_DispatchType(HSTRING* return_value);
	HRESULT abi_AddCue(Windows.Media.Core.IMediaCue cue);
	HRESULT abi_RemoveCue(Windows.Media.Core.IMediaCue cue);
}

@uuid("21b4b648-9f9d-40ba-a8f3-1a92753aef0b")
@WinrtFactory("Windows.Media.Core.TimedMetadataTrack")
interface ITimedMetadataTrack2 : IInspectable
{
extern(Windows):
	HRESULT get_PlaybackItem(Windows.Media.Playback.MediaPlaybackItem* return_value);
	HRESULT get_Name(HSTRING* return_value);
}

@uuid("b3767915-4114-4819-b9d9-dd76089e72f8")
@WinrtFactory("Windows.Media.Core.TimedMetadataTrackError")
interface ITimedMetadataTrackError : IInspectable
{
extern(Windows):
	HRESULT get_ErrorCode(Windows.Media.Core.TimedMetadataTrackErrorCode* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("8dd57611-97b3-4e1f-852c-0f482c81ad26")
@WinrtFactory("Windows.Media.Core.TimedMetadataTrack")
interface ITimedMetadataTrackFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING id, HSTRING language, Windows.Media.Core.TimedMetadataKind kind, Windows.Media.Core.TimedMetadataTrack* return_value);
}

@uuid("a57fc9d1-6789-4d4d-b07f-84b4f31acb70")
@WinrtFactory("Windows.Media.Core.TimedMetadataTrackFailedEventArgs")
interface ITimedMetadataTrackFailedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Error(Windows.Media.Core.TimedMetadataTrackError* return_value);
}

@uuid("3b7f2024-f74e-4ade-93c5-219da05b6856")
interface ITimedMetadataTrackProvider : IInspectable
{
extern(Windows):
	HRESULT get_TimedMetadataTracks(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.TimedMetadataTrack)* return_value);
}

@uuid("51c79e51-3b86-494d-b359-bb2ea7aca9a9")
@WinrtFactory("Windows.Media.Core.TimedTextCue")
interface ITimedTextCue : IInspectable
{
extern(Windows):
	HRESULT get_CueRegion(Windows.Media.Core.TimedTextRegion* return_value);
	HRESULT set_CueRegion(Windows.Media.Core.TimedTextRegion value);
	HRESULT get_CueStyle(Windows.Media.Core.TimedTextStyle* return_value);
	HRESULT set_CueStyle(Windows.Media.Core.TimedTextStyle value);
	HRESULT get_Lines(Windows.Foundation.Collections.IVector!(Windows.Media.Core.TimedTextLine)* return_value);
}

@uuid("978d7ce2-7308-4c66-be50-65777289f5df")
@WinrtFactory("Windows.Media.Core.TimedTextLine")
interface ITimedTextLine : IInspectable
{
extern(Windows):
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
	HRESULT get_Subformats(Windows.Foundation.Collections.IVector!(Windows.Media.Core.TimedTextSubformat)* return_value);
}

@uuid("1ed0881f-8a06-4222-9f59-b21bf40124b4")
@WinrtFactory("Windows.Media.Core.TimedTextRegion")
interface ITimedTextRegion : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_Position(Windows.Media.Core.TimedTextPoint* return_value);
	HRESULT set_Position(Windows.Media.Core.TimedTextPoint value);
	HRESULT get_Extent(Windows.Media.Core.TimedTextSize* return_value);
	HRESULT set_Extent(Windows.Media.Core.TimedTextSize value);
	HRESULT get_Background(Windows.UI.Color* return_value);
	HRESULT set_Background(Windows.UI.Color value);
	HRESULT get_WritingMode(Windows.Media.Core.TimedTextWritingMode* return_value);
	HRESULT set_WritingMode(Windows.Media.Core.TimedTextWritingMode value);
	HRESULT get_DisplayAlignment(Windows.Media.Core.TimedTextDisplayAlignment* return_value);
	HRESULT set_DisplayAlignment(Windows.Media.Core.TimedTextDisplayAlignment value);
	HRESULT get_LineHeight(Windows.Media.Core.TimedTextDouble* return_value);
	HRESULT set_LineHeight(Windows.Media.Core.TimedTextDouble value);
	HRESULT get_IsOverflowClipped(bool* return_value);
	HRESULT set_IsOverflowClipped(bool value);
	HRESULT get_Padding(Windows.Media.Core.TimedTextPadding* return_value);
	HRESULT set_Padding(Windows.Media.Core.TimedTextPadding value);
	HRESULT get_TextWrapping(Windows.Media.Core.TimedTextWrapping* return_value);
	HRESULT set_TextWrapping(Windows.Media.Core.TimedTextWrapping value);
	HRESULT get_ZIndex(INT32* return_value);
	HRESULT set_ZIndex(INT32 value);
	HRESULT get_ScrollMode(Windows.Media.Core.TimedTextScrollMode* return_value);
	HRESULT set_ScrollMode(Windows.Media.Core.TimedTextScrollMode value);
}

@uuid("c4ed9ba6-101f-404d-a949-82f33fcd93b7")
@WinrtFactory("Windows.Media.Core.TimedTextSource")
interface ITimedTextSource : IInspectable
{
extern(Windows):
	HRESULT add_Resolved(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.TimedTextSource, Windows.Media.Core.TimedTextSourceResolveResultEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Resolved(EventRegistrationToken token);
}

@uuid("48907c9c-dcd8-4c33-9ad3-6cdce7b1c566")
@WinrtFactory("Windows.Media.Core.TimedTextSourceResolveResultEventArgs")
interface ITimedTextSourceResolveResultEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Error(Windows.Media.Core.TimedMetadataTrackError* return_value);
	HRESULT get_Tracks(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.TimedMetadataTrack)* return_value);
}

@uuid("7e311853-9aba-4ac4-bb98-2fb176c3bfdd")
@WinrtFactory("Windows.Media.Core.TimedTextSource")
interface ITimedTextSourceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromStream(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Media.Core.TimedTextSource* return_value);
	HRESULT abi_CreateFromUri(Windows.Foundation.Uri uri, Windows.Media.Core.TimedTextSource* return_value);
	HRESULT abi_CreateFromStreamWithLanguage(Windows.Storage.Streams.IRandomAccessStream stream, HSTRING defaultLanguage, Windows.Media.Core.TimedTextSource* return_value);
	HRESULT abi_CreateFromUriWithLanguage(Windows.Foundation.Uri uri, HSTRING defaultLanguage, Windows.Media.Core.TimedTextSource* return_value);
}

@uuid("b66b7602-923e-43fa-9633-587075812db5")
@WinrtFactory("Windows.Media.Core.TimedTextSource")
interface ITimedTextSourceStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromStreamWithIndex(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Storage.Streams.IRandomAccessStream indexStream, Windows.Media.Core.TimedTextSource* return_result);
	HRESULT abi_CreateFromUriWithIndex(Windows.Foundation.Uri uri, Windows.Foundation.Uri indexUri, Windows.Media.Core.TimedTextSource* return_result);
	HRESULT abi_CreateFromStreamWithIndexAndLanguage(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Storage.Streams.IRandomAccessStream indexStream, HSTRING defaultLanguage, Windows.Media.Core.TimedTextSource* return_result);
	HRESULT abi_CreateFromUriWithIndexAndLanguage(Windows.Foundation.Uri uri, Windows.Foundation.Uri indexUri, HSTRING defaultLanguage, Windows.Media.Core.TimedTextSource* return_result);
}

@uuid("1bb2384d-a825-40c2-a7f5-281eaedf3b55")
@WinrtFactory("Windows.Media.Core.TimedTextStyle")
interface ITimedTextStyle : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_FontFamily(HSTRING* return_value);
	HRESULT set_FontFamily(HSTRING value);
	HRESULT get_FontSize(Windows.Media.Core.TimedTextDouble* return_value);
	HRESULT set_FontSize(Windows.Media.Core.TimedTextDouble value);
	HRESULT get_FontWeight(Windows.Media.Core.TimedTextWeight* return_value);
	HRESULT set_FontWeight(Windows.Media.Core.TimedTextWeight value);
	HRESULT get_Foreground(Windows.UI.Color* return_value);
	HRESULT set_Foreground(Windows.UI.Color value);
	HRESULT get_Background(Windows.UI.Color* return_value);
	HRESULT set_Background(Windows.UI.Color value);
	HRESULT get_IsBackgroundAlwaysShown(bool* return_value);
	HRESULT set_IsBackgroundAlwaysShown(bool value);
	HRESULT get_FlowDirection(Windows.Media.Core.TimedTextFlowDirection* return_value);
	HRESULT set_FlowDirection(Windows.Media.Core.TimedTextFlowDirection value);
	HRESULT get_LineAlignment(Windows.Media.Core.TimedTextLineAlignment* return_value);
	HRESULT set_LineAlignment(Windows.Media.Core.TimedTextLineAlignment value);
	HRESULT get_OutlineColor(Windows.UI.Color* return_value);
	HRESULT set_OutlineColor(Windows.UI.Color value);
	HRESULT get_OutlineThickness(Windows.Media.Core.TimedTextDouble* return_value);
	HRESULT set_OutlineThickness(Windows.Media.Core.TimedTextDouble value);
	HRESULT get_OutlineRadius(Windows.Media.Core.TimedTextDouble* return_value);
	HRESULT set_OutlineRadius(Windows.Media.Core.TimedTextDouble value);
}

@uuid("655f492d-6111-4787-89cc-686fece57e14")
@WinrtFactory("Windows.Media.Core.TimedTextStyle")
interface ITimedTextStyle2 : IInspectable
{
extern(Windows):
	HRESULT get_FontStyle(Windows.Media.Core.TimedTextFontStyle* return_value);
	HRESULT set_FontStyle(Windows.Media.Core.TimedTextFontStyle value);
	HRESULT get_IsUnderlineEnabled(bool* return_value);
	HRESULT set_IsUnderlineEnabled(bool value);
	HRESULT get_IsLineThroughEnabled(bool* return_value);
	HRESULT set_IsLineThroughEnabled(bool value);
	HRESULT get_IsOverlineEnabled(bool* return_value);
	HRESULT set_IsOverlineEnabled(bool value);
}

@uuid("d713502f-3261-4722-a0c2-b937b2390f14")
@WinrtFactory("Windows.Media.Core.TimedTextSubformat")
interface ITimedTextSubformat : IInspectable
{
extern(Windows):
	HRESULT get_StartIndex(INT32* return_value);
	HRESULT set_StartIndex(INT32 value);
	HRESULT get_Length(INT32* return_value);
	HRESULT set_Length(INT32 value);
	HRESULT get_SubformatStyle(Windows.Media.Core.TimedTextStyle* return_value);
	HRESULT set_SubformatStyle(Windows.Media.Core.TimedTextStyle value);
}

@uuid("0808a650-9698-4e57-877b-bd7cb2ee0f8a")
@WinrtFactory("Windows.Media.Core.VideoStabilizationEffect")
interface IVideoStabilizationEffect : IInspectable
{
extern(Windows):
	HRESULT set_Enabled(bool value);
	HRESULT get_Enabled(bool* return_value);
	HRESULT add_EnabledChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.VideoStabilizationEffect, Windows.Media.Core.VideoStabilizationEffectEnabledChangedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_EnabledChanged(EventRegistrationToken cookie);
	HRESULT abi_GetRecommendedStreamConfiguration(Windows.Media.Devices.VideoDeviceController controller, Windows.Media.MediaProperties.VideoEncodingProperties desiredProperties, Windows.Media.Capture.VideoStreamConfiguration* return_value);
}

@uuid("187eff28-67bb-4713-b900-4168da164529")
@WinrtFactory("Windows.Media.Core.VideoStabilizationEffectEnabledChangedEventArgs")
interface IVideoStabilizationEffectEnabledChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reason(Windows.Media.Core.VideoStabilizationEffectEnabledChangedReason* return_value);
}

@uuid("12ee0d55-9c2b-4440-8057-2c7a90f0cbec")
@WinrtFactory("Windows.Media.Core.VideoStreamDescriptor")
interface IVideoStreamDescriptor : IInspectable
{
extern(Windows):
	HRESULT get_EncodingProperties(Windows.Media.MediaProperties.VideoEncodingProperties* return_encodingProperties);
}

@uuid("494ef6d1-bb75-43d2-9e5e-7b79a3afced4")
@WinrtFactory("Windows.Media.Core.VideoStreamDescriptor")
interface IVideoStreamDescriptorFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Media.MediaProperties.VideoEncodingProperties encodingProperties, Windows.Media.Core.VideoStreamDescriptor* return_result);
}

@uuid("99f3b7f3-e298-4396-bb6a-a51be6a2a20a")
@WinrtFactory("Windows.Media.Core.VideoTrack")
interface IVideoTrack : IInspectable
{
extern(Windows):
	HRESULT add_OpenFailed(Windows.Foundation.TypedEventHandler!(Windows.Media.Core.VideoTrack, Windows.Media.Core.VideoTrackOpenFailedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_OpenFailed(EventRegistrationToken token);
	HRESULT abi_GetEncodingProperties(Windows.Media.MediaProperties.VideoEncodingProperties* return_value);
	HRESULT get_PlaybackItem(Windows.Media.Playback.MediaPlaybackItem* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_SupportInfo(Windows.Media.Core.VideoTrackSupportInfo* return_value);
}

@uuid("7679e231-04f9-4c82-a4ee-8602c8bb4754")
@WinrtFactory("Windows.Media.Core.VideoTrackOpenFailedEventArgs")
interface IVideoTrackOpenFailedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("4bb534a0-fc5f-450d-8ff0-778d590486de")
@WinrtFactory("Windows.Media.Core.VideoTrackSupportInfo")
interface IVideoTrackSupportInfo : IInspectable
{
extern(Windows):
	HRESULT get_DecoderStatus(Windows.Media.Core.MediaDecoderStatus* return_value);
	HRESULT get_MediaSourceStatus(Windows.Media.Core.MediaSourceStatus* return_value);
}

interface AudioStreamDescriptor : Windows.Media.Core.IAudioStreamDescriptor, Windows.Media.Core.IMediaStreamDescriptor, Windows.Media.Core.IAudioStreamDescriptor2
{
extern(Windows):
	final Windows.Media.MediaProperties.AudioEncodingProperties EncodingProperties()
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Core.IAudioStreamDescriptor).get_EncodingProperties(&_ret));
		return _ret;
	}
	final bool IsSelected()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamDescriptor).get_IsSelected(&_ret));
		return _ret;
	}
	final void Name(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamDescriptor).set_Name(value));
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamDescriptor).get_Name(&_ret));
		return _ret;
	}
	final void Language(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamDescriptor).set_Language(value));
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamDescriptor).get_Language(&_ret));
		return _ret;
	}
	final void LeadingEncoderPadding(Windows.Foundation.IReference!(UINT32) value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IAudioStreamDescriptor2).set_LeadingEncoderPadding(value));
	}
	final Windows.Foundation.IReference!(UINT32) LeadingEncoderPadding()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Core.IAudioStreamDescriptor2).get_LeadingEncoderPadding(&_ret));
		return _ret;
	}
	final void TrailingEncoderPadding(Windows.Foundation.IReference!(UINT32) value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IAudioStreamDescriptor2).set_TrailingEncoderPadding(value));
	}
	final Windows.Foundation.IReference!(UINT32) TrailingEncoderPadding()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Core.IAudioStreamDescriptor2).get_TrailingEncoderPadding(&_ret));
		return _ret;
	}
}

interface AudioTrack : Windows.Media.Core.IMediaTrack, Windows.Media.Core.IAudioTrack
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaTrack).get_Id(&_ret));
		return _ret;
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaTrack).get_Language(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MediaTrackKind TrackKind()
	{
		Windows.Media.Core.MediaTrackKind _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaTrack).get_TrackKind(&_ret));
		return _ret;
	}
	final void Label(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaTrack).set_Label(value));
	}
	final HSTRING Label()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaTrack).get_Label(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.AudioEncodingProperties GetEncodingProperties()
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Core.IAudioTrack).abi_GetEncodingProperties(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackItem PlaybackItem()
	{
		Windows.Media.Playback.MediaPlaybackItem _ret;
		Debug.OK(this.as!(Windows.Media.Core.IAudioTrack).get_PlaybackItem(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IAudioTrack).get_Name(&_ret));
		return _ret;
	}
	final Windows.Media.Core.AudioTrackSupportInfo SupportInfo()
	{
		Windows.Media.Core.AudioTrackSupportInfo _ret;
		Debug.OK(this.as!(Windows.Media.Core.IAudioTrack).get_SupportInfo(&_ret));
		return _ret;
	}
}

interface AudioTrackOpenFailedEventArgs : Windows.Media.Core.IAudioTrackOpenFailedEventArgs
{
extern(Windows):
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Media.Core.IAudioTrackOpenFailedEventArgs).get_ExtendedError(&_ret));
		return _ret;
	}
}

interface AudioTrackSupportInfo : Windows.Media.Core.IAudioTrackSupportInfo
{
extern(Windows):
	final Windows.Media.Core.MediaDecoderStatus DecoderStatus()
	{
		Windows.Media.Core.MediaDecoderStatus _ret;
		Debug.OK(this.as!(Windows.Media.Core.IAudioTrackSupportInfo).get_DecoderStatus(&_ret));
		return _ret;
	}
	final Windows.Media.Core.AudioDecoderDegradation Degradation()
	{
		Windows.Media.Core.AudioDecoderDegradation _ret;
		Debug.OK(this.as!(Windows.Media.Core.IAudioTrackSupportInfo).get_Degradation(&_ret));
		return _ret;
	}
	final Windows.Media.Core.AudioDecoderDegradationReason DegradationReason()
	{
		Windows.Media.Core.AudioDecoderDegradationReason _ret;
		Debug.OK(this.as!(Windows.Media.Core.IAudioTrackSupportInfo).get_DegradationReason(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MediaSourceStatus MediaSourceStatus()
	{
		Windows.Media.Core.MediaSourceStatus _ret;
		Debug.OK(this.as!(Windows.Media.Core.IAudioTrackSupportInfo).get_MediaSourceStatus(&_ret));
		return _ret;
	}
}

interface ChapterCue : Windows.Media.Core.IChapterCue, Windows.Media.Core.IMediaCue
{
extern(Windows):
	final void Title(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IChapterCue).set_Title(value));
	}
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IChapterCue).get_Title(&_ret));
		return _ret;
	}
	final void StartTime(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).set_StartTime(value));
	}
	final Windows.Foundation.TimeSpan StartTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).get_StartTime(&_ret));
		return _ret;
	}
	final void Duration(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).set_Duration(value));
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).get_Duration(&_ret));
		return _ret;
	}
	final void Id(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).set_Id(value));
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).get_Id(&_ret));
		return _ret;
	}
}

interface CodecInfo : Windows.Media.Core.ICodecInfo
{
extern(Windows):
	final Windows.Media.Core.CodecKind Kind()
	{
		Windows.Media.Core.CodecKind _ret;
		Debug.OK(this.as!(Windows.Media.Core.ICodecInfo).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Media.Core.CodecCategory Category()
	{
		Windows.Media.Core.CodecCategory _ret;
		Debug.OK(this.as!(Windows.Media.Core.ICodecInfo).get_Category(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Subtypes()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Media.Core.ICodecInfo).get_Subtypes(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.ICodecInfo).get_DisplayName(&_ret));
		return _ret;
	}
	final bool IsTrusted()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.ICodecInfo).get_IsTrusted(&_ret));
		return _ret;
	}
}

interface CodecQuery : Windows.Media.Core.ICodecQuery
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.CodecInfo)) FindAllAsync(Windows.Media.Core.CodecKind kind, Windows.Media.Core.CodecCategory category, HSTRING subType)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.CodecInfo)) _ret;
		Debug.OK(this.as!(Windows.Media.Core.ICodecQuery).abi_FindAllAsync(kind, category, subType, &_ret));
		return _ret;
	}
}

interface CodecSubtypes
{
}

interface DataCue : Windows.Media.Core.IDataCue, Windows.Media.Core.IMediaCue, Windows.Media.Core.IDataCue2
{
extern(Windows):
	final void Data(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IDataCue).set_Data(value));
	}
	final Windows.Storage.Streams.IBuffer Data()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Media.Core.IDataCue).get_Data(&_ret));
		return _ret;
	}
	final void StartTime(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).set_StartTime(value));
	}
	final Windows.Foundation.TimeSpan StartTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).get_StartTime(&_ret));
		return _ret;
	}
	final void Duration(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).set_Duration(value));
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).get_Duration(&_ret));
		return _ret;
	}
	final void Id(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).set_Id(value));
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).get_Id(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.PropertySet Properties()
	{
		Windows.Foundation.Collections.PropertySet _ret;
		Debug.OK(this.as!(Windows.Media.Core.IDataCue2).get_Properties(&_ret));
		return _ret;
	}
}

interface FaceDetectedEventArgs : Windows.Media.Core.IFaceDetectedEventArgs
{
extern(Windows):
	final Windows.Media.Core.FaceDetectionEffectFrame ResultFrame()
	{
		Windows.Media.Core.FaceDetectionEffectFrame _ret;
		Debug.OK(this.as!(Windows.Media.Core.IFaceDetectedEventArgs).get_ResultFrame(&_ret));
		return _ret;
	}
}

interface FaceDetectionEffect : Windows.Media.Core.IFaceDetectionEffect, Windows.Media.IMediaExtension
{
extern(Windows):
	final void Enabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IFaceDetectionEffect).set_Enabled(value));
	}
	final bool Enabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.IFaceDetectionEffect).get_Enabled(&_ret));
		return _ret;
	}
	final void DesiredDetectionInterval(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IFaceDetectionEffect).set_DesiredDetectionInterval(value));
	}
	final Windows.Foundation.TimeSpan DesiredDetectionInterval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IFaceDetectionEffect).get_DesiredDetectionInterval(&_ret));
		return _ret;
	}
	final void SetProperties(Windows.Foundation.Collections.IPropertySet configuration)
	{
		Debug.OK(this.as!(Windows.Media.IMediaExtension).abi_SetProperties(configuration));
	}
}

interface FaceDetectionEffectDefinition : Windows.Media.Effects.IVideoEffectDefinition, Windows.Media.Core.IFaceDetectionEffectDefinition
{
extern(Windows):
	final HSTRING ActivatableClassId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IVideoEffectDefinition).get_ActivatableClassId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IPropertySet Properties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IVideoEffectDefinition).get_Properties(&_ret));
		return _ret;
	}
	final void DetectionMode(Windows.Media.Core.FaceDetectionMode value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IFaceDetectionEffectDefinition).set_DetectionMode(value));
	}
	final Windows.Media.Core.FaceDetectionMode DetectionMode()
	{
		Windows.Media.Core.FaceDetectionMode _ret;
		Debug.OK(this.as!(Windows.Media.Core.IFaceDetectionEffectDefinition).get_DetectionMode(&_ret));
		return _ret;
	}
	final void SynchronousDetectionEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IFaceDetectionEffectDefinition).set_SynchronousDetectionEnabled(value));
	}
	final bool SynchronousDetectionEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.IFaceDetectionEffectDefinition).get_SynchronousDetectionEnabled(&_ret));
		return _ret;
	}
}

interface FaceDetectionEffectFrame : Windows.Media.Core.IFaceDetectionEffectFrame, Windows.Media.IMediaFrame, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.FaceAnalysis.DetectedFace) DetectedFaces()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.FaceAnalysis.DetectedFace) _ret;
		Debug.OK(this.as!(Windows.Media.Core.IFaceDetectionEffectFrame).get_DetectedFaces(&_ret));
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

interface HighDynamicRangeControl : Windows.Media.Core.IHighDynamicRangeControl
{
extern(Windows):
	final void Enabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IHighDynamicRangeControl).set_Enabled(value));
	}
	final bool Enabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.IHighDynamicRangeControl).get_Enabled(&_ret));
		return _ret;
	}
}

interface HighDynamicRangeOutput : Windows.Media.Core.IHighDynamicRangeOutput
{
extern(Windows):
	final double Certainty()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Core.IHighDynamicRangeOutput).get_Certainty(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.Core.FrameController) FrameControllers()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.Core.FrameController) _ret;
		Debug.OK(this.as!(Windows.Media.Core.IHighDynamicRangeOutput).get_FrameControllers(&_ret));
		return _ret;
	}
}

interface ImageCue : Windows.Media.Core.IImageCue, Windows.Media.Core.IMediaCue
{
extern(Windows):
	final Windows.Media.Core.TimedTextPoint Position()
	{
		Windows.Media.Core.TimedTextPoint _ret;
		Debug.OK(this.as!(Windows.Media.Core.IImageCue).get_Position(&_ret));
		return _ret;
	}
	final void Position(Windows.Media.Core.TimedTextPoint value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IImageCue).set_Position(value));
	}
	final Windows.Media.Core.TimedTextSize Extent()
	{
		Windows.Media.Core.TimedTextSize _ret;
		Debug.OK(this.as!(Windows.Media.Core.IImageCue).get_Extent(&_ret));
		return _ret;
	}
	final void Extent(Windows.Media.Core.TimedTextSize value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IImageCue).set_Extent(value));
	}
	final void SoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IImageCue).set_SoftwareBitmap(value));
	}
	final Windows.Graphics.Imaging.SoftwareBitmap SoftwareBitmap()
	{
		Windows.Graphics.Imaging.SoftwareBitmap _ret;
		Debug.OK(this.as!(Windows.Media.Core.IImageCue).get_SoftwareBitmap(&_ret));
		return _ret;
	}
	final void StartTime(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).set_StartTime(value));
	}
	final Windows.Foundation.TimeSpan StartTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).get_StartTime(&_ret));
		return _ret;
	}
	final void Duration(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).set_Duration(value));
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).get_Duration(&_ret));
		return _ret;
	}
	final void Id(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).set_Id(value));
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).get_Id(&_ret));
		return _ret;
	}
}

interface MediaBinder : Windows.Media.Core.IMediaBinder
{
extern(Windows):
	final HSTRING Token()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaBinder).get_Token(&_ret));
		return _ret;
	}
	final void Token(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaBinder).set_Token(value));
	}
	final Windows.Media.Core.MediaSource Source()
	{
		Windows.Media.Core.MediaSource _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaBinder).get_Source(&_ret));
		return _ret;
	}
}

interface MediaBindingEventArgs : Windows.Media.Core.IMediaBindingEventArgs, Windows.Media.Core.IMediaBindingEventArgs2
{
extern(Windows):
	final Windows.Media.Core.MediaBinder MediaBinder()
	{
		Windows.Media.Core.MediaBinder _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaBindingEventArgs).get_MediaBinder(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaBindingEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
	final void SetUri(Windows.Foundation.Uri uri)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaBindingEventArgs).abi_SetUri(uri));
	}
	final void SetStream(Windows.Storage.Streams.IRandomAccessStream stream, HSTRING contentType)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaBindingEventArgs).abi_SetStream(stream, contentType));
	}
	final void SetStreamReference(Windows.Storage.Streams.IRandomAccessStreamReference stream, HSTRING contentType)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaBindingEventArgs).abi_SetStreamReference(stream, contentType));
	}
	final void SetAdaptiveMediaSource(Windows.Media.Streaming.Adaptive.AdaptiveMediaSource mediaSource)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaBindingEventArgs2).abi_SetAdaptiveMediaSource(mediaSource));
	}
	final void SetStorageFile(Windows.Storage.IStorageFile file)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaBindingEventArgs2).abi_SetStorageFile(file));
	}
}

interface MediaCueEventArgs : Windows.Media.Core.IMediaCueEventArgs
{
extern(Windows):
	final Windows.Media.Core.IMediaCue Cue()
	{
		Windows.Media.Core.IMediaCue _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaCueEventArgs).get_Cue(&_ret));
		return _ret;
	}
}

interface MediaSource : Windows.Media.Core.IMediaSource2, Windows.Foundation.IClosable, Windows.Media.Playback.IMediaPlaybackSource, Windows.Media.Core.IMediaSource3, Windows.Media.Core.IMediaSource4
{
extern(Windows):
	final Windows.Foundation.Collections.ValueSet CustomProperties()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaSource2).get_CustomProperties(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Duration()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaSource2).get_Duration(&_ret));
		return _ret;
	}
	final bool IsOpen()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaSource2).get_IsOpen(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IObservableVector!(Windows.Media.Core.TimedTextSource) ExternalTimedTextSources()
	{
		Windows.Foundation.Collections.IObservableVector!(Windows.Media.Core.TimedTextSource) _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaSource2).get_ExternalTimedTextSources(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IObservableVector!(Windows.Media.Core.TimedMetadataTrack) ExternalTimedMetadataTracks()
	{
		Windows.Foundation.Collections.IObservableVector!(Windows.Media.Core.TimedMetadataTrack) _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaSource2).get_ExternalTimedMetadataTracks(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Media.Core.MediaSourceState State()
	{
		Windows.Media.Core.MediaSourceState _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaSource3).get_State(&_ret));
		return _ret;
	}
	final void Reset()
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaSource3).abi_Reset());
	}
	final Windows.Media.Streaming.Adaptive.AdaptiveMediaSource AdaptiveMediaSource()
	{
		Windows.Media.Streaming.Adaptive.AdaptiveMediaSource _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaSource4).get_AdaptiveMediaSource(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MediaStreamSource MediaStreamSource()
	{
		Windows.Media.Core.MediaStreamSource _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaSource4).get_MediaStreamSource(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MseStreamSource MseStreamSource()
	{
		Windows.Media.Core.MseStreamSource _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaSource4).get_MseStreamSource(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaSource4).get_Uri(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction OpenAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaSource4).abi_OpenAsync(&_ret));
		return _ret;
	}
}

interface MediaSourceError : Windows.Media.Core.IMediaSourceError
{
extern(Windows):
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaSourceError).get_ExtendedError(&_ret));
		return _ret;
	}
}

interface MediaSourceOpenOperationCompletedEventArgs : Windows.Media.Core.IMediaSourceOpenOperationCompletedEventArgs
{
extern(Windows):
	final Windows.Media.Core.MediaSourceError Error()
	{
		Windows.Media.Core.MediaSourceError _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaSourceOpenOperationCompletedEventArgs).get_Error(&_ret));
		return _ret;
	}
}

interface MediaSourceStateChangedEventArgs : Windows.Media.Core.IMediaSourceStateChangedEventArgs
{
extern(Windows):
	final Windows.Media.Core.MediaSourceState OldState()
	{
		Windows.Media.Core.MediaSourceState _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaSourceStateChangedEventArgs).get_OldState(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MediaSourceState NewState()
	{
		Windows.Media.Core.MediaSourceState _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaSourceStateChangedEventArgs).get_NewState(&_ret));
		return _ret;
	}
}

interface MediaStreamSample : Windows.Media.Core.IMediaStreamSample
{
extern(Windows):
	final Windows.Storage.Streams.Buffer Buffer()
	{
		Windows.Storage.Streams.Buffer _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSample).get_Buffer(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSample).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MediaStreamSamplePropertySet ExtendedProperties()
	{
		Windows.Media.Core.MediaStreamSamplePropertySet _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSample).get_ExtendedProperties(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MediaStreamSampleProtectionProperties Protection()
	{
		Windows.Media.Core.MediaStreamSampleProtectionProperties _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSample).get_Protection(&_ret));
		return _ret;
	}
	final void DecodeTimestamp(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSample).set_DecodeTimestamp(value));
	}
	final Windows.Foundation.TimeSpan DecodeTimestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSample).get_DecodeTimestamp(&_ret));
		return _ret;
	}
	final void Duration(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSample).set_Duration(value));
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSample).get_Duration(&_ret));
		return _ret;
	}
	final void KeyFrame(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSample).set_KeyFrame(value));
	}
	final bool KeyFrame()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSample).get_KeyFrame(&_ret));
		return _ret;
	}
	final void Discontinuous(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSample).set_Discontinuous(value));
	}
	final bool Discontinuous()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSample).get_Discontinuous(&_ret));
		return _ret;
	}
}

interface MediaStreamSamplePropertySet : Windows.Foundation.Collections.IMap!(GUID, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(GUID, IInspectable))
{
}

interface MediaStreamSampleProtectionProperties : Windows.Media.Core.IMediaStreamSampleProtectionProperties
{
extern(Windows):
	final void SetKeyIdentifier(UINT32 __valueSize, BYTE* value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSampleProtectionProperties).abi_SetKeyIdentifier(__valueSize, value));
	}
	final void GetKeyIdentifier(UINT32* out___valueSize, BYTE** out_value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSampleProtectionProperties).abi_GetKeyIdentifier(out___valueSize, out_value));
	}
	final void SetInitializationVector(UINT32 __valueSize, BYTE* value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSampleProtectionProperties).abi_SetInitializationVector(__valueSize, value));
	}
	final void GetInitializationVector(UINT32* out___valueSize, BYTE** out_value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSampleProtectionProperties).abi_GetInitializationVector(out___valueSize, out_value));
	}
	final void SetSubSampleMapping(UINT32 __valueSize, BYTE* value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSampleProtectionProperties).abi_SetSubSampleMapping(__valueSize, value));
	}
	final void GetSubSampleMapping(UINT32* out___valueSize, BYTE** out_value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSampleProtectionProperties).abi_GetSubSampleMapping(out___valueSize, out_value));
	}
}

interface MediaStreamSource : Windows.Media.Core.IMediaStreamSource, Windows.Media.Core.IMediaSource, Windows.Media.Core.IMediaStreamSource2, Windows.Media.Core.IMediaStreamSource3
{
extern(Windows):
	final void NotifyError(Windows.Media.Core.MediaStreamSourceErrorStatus errorStatus)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource).abi_NotifyError(errorStatus));
	}
	final void AddStreamDescriptor(Windows.Media.Core.IMediaStreamDescriptor descriptor)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource).abi_AddStreamDescriptor(descriptor));
	}
	final void MediaProtectionManager(Windows.Media.Protection.MediaProtectionManager value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource).set_MediaProtectionManager(value));
	}
	final Windows.Media.Protection.MediaProtectionManager MediaProtectionManager()
	{
		Windows.Media.Protection.MediaProtectionManager _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource).get_MediaProtectionManager(&_ret));
		return _ret;
	}
	final void Duration(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource).set_Duration(value));
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource).get_Duration(&_ret));
		return _ret;
	}
	final void CanSeek(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource).set_CanSeek(value));
	}
	final bool CanSeek()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource).get_CanSeek(&_ret));
		return _ret;
	}
	final void BufferTime(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource).set_BufferTime(value));
	}
	final Windows.Foundation.TimeSpan BufferTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource).get_BufferTime(&_ret));
		return _ret;
	}
	final void SetBufferedRange(Windows.Foundation.TimeSpan startOffset, Windows.Foundation.TimeSpan endOffset)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource).abi_SetBufferedRange(startOffset, endOffset));
	}
	final Windows.Storage.FileProperties.MusicProperties MusicProperties()
	{
		Windows.Storage.FileProperties.MusicProperties _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource).get_MusicProperties(&_ret));
		return _ret;
	}
	final Windows.Storage.FileProperties.VideoProperties VideoProperties()
	{
		Windows.Storage.FileProperties.VideoProperties _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource).get_VideoProperties(&_ret));
		return _ret;
	}
	final void Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource).set_Thumbnail(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Thumbnail()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource).get_Thumbnail(&_ret));
		return _ret;
	}
	final void AddProtectionKey(Windows.Media.Core.IMediaStreamDescriptor streamDescriptor, UINT32 __keyIdentifierSize, BYTE* keyIdentifier, UINT32 __licenseDataSize, BYTE* licenseData)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource).abi_AddProtectionKey(streamDescriptor, __keyIdentifierSize, keyIdentifier, __licenseDataSize, licenseData));
	}
	final void MaxSupportedPlaybackRate(Windows.Foundation.IReference!(double) value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource3).set_MaxSupportedPlaybackRate(value));
	}
	final Windows.Foundation.IReference!(double) MaxSupportedPlaybackRate()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSource3).get_MaxSupportedPlaybackRate(&_ret));
		return _ret;
	}
}

interface MediaStreamSourceClosedEventArgs : Windows.Media.Core.IMediaStreamSourceClosedEventArgs
{
extern(Windows):
	final Windows.Media.Core.MediaStreamSourceClosedRequest Request()
	{
		Windows.Media.Core.MediaStreamSourceClosedRequest _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceClosedEventArgs).get_Request(&_ret));
		return _ret;
	}
}

interface MediaStreamSourceClosedRequest : Windows.Media.Core.IMediaStreamSourceClosedRequest
{
extern(Windows):
	final Windows.Media.Core.MediaStreamSourceClosedReason Reason()
	{
		Windows.Media.Core.MediaStreamSourceClosedReason _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceClosedRequest).get_Reason(&_ret));
		return _ret;
	}
}

interface MediaStreamSourceSampleRenderedEventArgs : Windows.Media.Core.IMediaStreamSourceSampleRenderedEventArgs
{
extern(Windows):
	final Windows.Foundation.TimeSpan SampleLag()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceSampleRenderedEventArgs).get_SampleLag(&_ret));
		return _ret;
	}
}

interface MediaStreamSourceSampleRequest : Windows.Media.Core.IMediaStreamSourceSampleRequest
{
extern(Windows):
	final Windows.Media.Core.IMediaStreamDescriptor StreamDescriptor()
	{
		Windows.Media.Core.IMediaStreamDescriptor _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceSampleRequest).get_StreamDescriptor(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MediaStreamSourceSampleRequestDeferral GetDeferral()
	{
		Windows.Media.Core.MediaStreamSourceSampleRequestDeferral _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceSampleRequest).abi_GetDeferral(&_ret));
		return _ret;
	}
	final void Sample(Windows.Media.Core.MediaStreamSample value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceSampleRequest).set_Sample(value));
	}
	final Windows.Media.Core.MediaStreamSample Sample()
	{
		Windows.Media.Core.MediaStreamSample _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceSampleRequest).get_Sample(&_ret));
		return _ret;
	}
	final void ReportSampleProgress(UINT32 progress)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceSampleRequest).abi_ReportSampleProgress(progress));
	}
}

interface MediaStreamSourceSampleRequestDeferral : Windows.Media.Core.IMediaStreamSourceSampleRequestDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceSampleRequestDeferral).abi_Complete());
	}
}

interface MediaStreamSourceSampleRequestedEventArgs : Windows.Media.Core.IMediaStreamSourceSampleRequestedEventArgs
{
extern(Windows):
	final Windows.Media.Core.MediaStreamSourceSampleRequest Request()
	{
		Windows.Media.Core.MediaStreamSourceSampleRequest _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceSampleRequestedEventArgs).get_Request(&_ret));
		return _ret;
	}
}

interface MediaStreamSourceStartingEventArgs : Windows.Media.Core.IMediaStreamSourceStartingEventArgs
{
extern(Windows):
	final Windows.Media.Core.MediaStreamSourceStartingRequest Request()
	{
		Windows.Media.Core.MediaStreamSourceStartingRequest _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceStartingEventArgs).get_Request(&_ret));
		return _ret;
	}
}

interface MediaStreamSourceStartingRequest : Windows.Media.Core.IMediaStreamSourceStartingRequest
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) StartPosition()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceStartingRequest).get_StartPosition(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MediaStreamSourceStartingRequestDeferral GetDeferral()
	{
		Windows.Media.Core.MediaStreamSourceStartingRequestDeferral _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceStartingRequest).abi_GetDeferral(&_ret));
		return _ret;
	}
	final void SetActualStartPosition(Windows.Foundation.TimeSpan position)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceStartingRequest).abi_SetActualStartPosition(position));
	}
}

interface MediaStreamSourceStartingRequestDeferral : Windows.Media.Core.IMediaStreamSourceStartingRequestDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceStartingRequestDeferral).abi_Complete());
	}
}

interface MediaStreamSourceSwitchStreamsRequest : Windows.Media.Core.IMediaStreamSourceSwitchStreamsRequest
{
extern(Windows):
	final Windows.Media.Core.IMediaStreamDescriptor OldStreamDescriptor()
	{
		Windows.Media.Core.IMediaStreamDescriptor _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceSwitchStreamsRequest).get_OldStreamDescriptor(&_ret));
		return _ret;
	}
	final Windows.Media.Core.IMediaStreamDescriptor NewStreamDescriptor()
	{
		Windows.Media.Core.IMediaStreamDescriptor _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceSwitchStreamsRequest).get_NewStreamDescriptor(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MediaStreamSourceSwitchStreamsRequestDeferral GetDeferral()
	{
		Windows.Media.Core.MediaStreamSourceSwitchStreamsRequestDeferral _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceSwitchStreamsRequest).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface MediaStreamSourceSwitchStreamsRequestDeferral : Windows.Media.Core.IMediaStreamSourceSwitchStreamsRequestDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceSwitchStreamsRequestDeferral).abi_Complete());
	}
}

interface MediaStreamSourceSwitchStreamsRequestedEventArgs : Windows.Media.Core.IMediaStreamSourceSwitchStreamsRequestedEventArgs
{
extern(Windows):
	final Windows.Media.Core.MediaStreamSourceSwitchStreamsRequest Request()
	{
		Windows.Media.Core.MediaStreamSourceSwitchStreamsRequest _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamSourceSwitchStreamsRequestedEventArgs).get_Request(&_ret));
		return _ret;
	}
}

interface MseSourceBuffer : Windows.Media.Core.IMseSourceBuffer
{
extern(Windows):
	final Windows.Media.Core.MseAppendMode Mode()
	{
		Windows.Media.Core.MseAppendMode _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMseSourceBuffer).get_Mode(&_ret));
		return _ret;
	}
	final void Mode(Windows.Media.Core.MseAppendMode value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMseSourceBuffer).set_Mode(value));
	}
	final bool IsUpdating()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMseSourceBuffer).get_IsUpdating(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.MseTimeRange) Buffered()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.MseTimeRange) _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMseSourceBuffer).get_Buffered(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan TimestampOffset()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMseSourceBuffer).get_TimestampOffset(&_ret));
		return _ret;
	}
	final void TimestampOffset(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMseSourceBuffer).set_TimestampOffset(value));
	}
	final Windows.Foundation.TimeSpan AppendWindowStart()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMseSourceBuffer).get_AppendWindowStart(&_ret));
		return _ret;
	}
	final void AppendWindowStart(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMseSourceBuffer).set_AppendWindowStart(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) AppendWindowEnd()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMseSourceBuffer).get_AppendWindowEnd(&_ret));
		return _ret;
	}
	final void AppendWindowEnd(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMseSourceBuffer).set_AppendWindowEnd(value));
	}
	final void AppendBuffer(Windows.Storage.Streams.IBuffer buffer)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMseSourceBuffer).abi_AppendBuffer(buffer));
	}
	final void AppendStream(Windows.Storage.Streams.IInputStream stream)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMseSourceBuffer).abi_AppendStream(stream));
	}
	final void AppendStreamMaxSize(Windows.Storage.Streams.IInputStream stream, UINT64 maxSize)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMseSourceBuffer).abi_AppendStreamMaxSize(stream, maxSize));
	}
	final void Abort()
	{
		Debug.OK(this.as!(Windows.Media.Core.IMseSourceBuffer).abi_Abort());
	}
	final void Remove(Windows.Foundation.TimeSpan start, Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) end)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMseSourceBuffer).abi_Remove(start, end));
	}
}

interface MseSourceBufferList : Windows.Media.Core.IMseSourceBufferList
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.MseSourceBuffer) Buffers()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.MseSourceBuffer) _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMseSourceBufferList).get_Buffers(&_ret));
		return _ret;
	}
}

interface MseStreamSource : Windows.Media.Core.IMseStreamSource, Windows.Media.Core.IMediaSource
{
extern(Windows):
	final Windows.Media.Core.MseSourceBufferList SourceBuffers()
	{
		Windows.Media.Core.MseSourceBufferList _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMseStreamSource).get_SourceBuffers(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MseSourceBufferList ActiveSourceBuffers()
	{
		Windows.Media.Core.MseSourceBufferList _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMseStreamSource).get_ActiveSourceBuffers(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MseReadyState ReadyState()
	{
		Windows.Media.Core.MseReadyState _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMseStreamSource).get_ReadyState(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Duration()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMseStreamSource).get_Duration(&_ret));
		return _ret;
	}
	final void Duration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMseStreamSource).set_Duration(value));
	}
	final Windows.Media.Core.MseSourceBuffer AddSourceBuffer(HSTRING mimeType)
	{
		Windows.Media.Core.MseSourceBuffer _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMseStreamSource).abi_AddSourceBuffer(mimeType, &_ret));
		return _ret;
	}
	final void RemoveSourceBuffer(Windows.Media.Core.MseSourceBuffer buffer)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMseStreamSource).abi_RemoveSourceBuffer(buffer));
	}
	final void EndOfStream(Windows.Media.Core.MseEndOfStreamStatus status)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMseStreamSource).abi_EndOfStream(status));
	}
}

interface SceneAnalysisEffect : Windows.Media.Core.ISceneAnalysisEffect, Windows.Media.IMediaExtension
{
extern(Windows):
	final Windows.Media.Core.HighDynamicRangeControl HighDynamicRangeAnalyzer()
	{
		Windows.Media.Core.HighDynamicRangeControl _ret;
		Debug.OK(this.as!(Windows.Media.Core.ISceneAnalysisEffect).get_HighDynamicRangeAnalyzer(&_ret));
		return _ret;
	}
	final void DesiredAnalysisInterval(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ISceneAnalysisEffect).set_DesiredAnalysisInterval(value));
	}
	final Windows.Foundation.TimeSpan DesiredAnalysisInterval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.ISceneAnalysisEffect).get_DesiredAnalysisInterval(&_ret));
		return _ret;
	}
	final void SetProperties(Windows.Foundation.Collections.IPropertySet configuration)
	{
		Debug.OK(this.as!(Windows.Media.IMediaExtension).abi_SetProperties(configuration));
	}
}

interface SceneAnalysisEffectDefinition : Windows.Media.Effects.IVideoEffectDefinition
{
extern(Windows):
	final HSTRING ActivatableClassId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IVideoEffectDefinition).get_ActivatableClassId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IPropertySet Properties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IVideoEffectDefinition).get_Properties(&_ret));
		return _ret;
	}
}

interface SceneAnalysisEffectFrame : Windows.Media.Core.ISceneAnalysisEffectFrame, Windows.Media.IMediaFrame, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Media.Capture.CapturedFrameControlValues FrameControlValues()
	{
		Windows.Media.Capture.CapturedFrameControlValues _ret;
		Debug.OK(this.as!(Windows.Media.Core.ISceneAnalysisEffectFrame).get_FrameControlValues(&_ret));
		return _ret;
	}
	final Windows.Media.Core.HighDynamicRangeOutput HighDynamicRange()
	{
		Windows.Media.Core.HighDynamicRangeOutput _ret;
		Debug.OK(this.as!(Windows.Media.Core.ISceneAnalysisEffectFrame).get_HighDynamicRange(&_ret));
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

interface SceneAnalyzedEventArgs : Windows.Media.Core.ISceneAnalyzedEventArgs
{
extern(Windows):
	final Windows.Media.Core.SceneAnalysisEffectFrame ResultFrame()
	{
		Windows.Media.Core.SceneAnalysisEffectFrame _ret;
		Debug.OK(this.as!(Windows.Media.Core.ISceneAnalyzedEventArgs).get_ResultFrame(&_ret));
		return _ret;
	}
}

interface SpeechCue : Windows.Media.Core.ISpeechCue, Windows.Media.Core.IMediaCue
{
extern(Windows):
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.ISpeechCue).get_Text(&_ret));
		return _ret;
	}
	final void Text(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ISpeechCue).set_Text(value));
	}
	final Windows.Foundation.IReference!(INT32) StartPositionInInput()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.Media.Core.ISpeechCue).get_StartPositionInInput(&_ret));
		return _ret;
	}
	final void StartPositionInInput(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ISpeechCue).set_StartPositionInInput(value));
	}
	final Windows.Foundation.IReference!(INT32) EndPositionInInput()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.Media.Core.ISpeechCue).get_EndPositionInInput(&_ret));
		return _ret;
	}
	final void EndPositionInInput(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ISpeechCue).set_EndPositionInInput(value));
	}
	final void StartTime(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).set_StartTime(value));
	}
	final Windows.Foundation.TimeSpan StartTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).get_StartTime(&_ret));
		return _ret;
	}
	final void Duration(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).set_Duration(value));
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).get_Duration(&_ret));
		return _ret;
	}
	final void Id(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).set_Id(value));
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).get_Id(&_ret));
		return _ret;
	}
}

interface TimedMetadataTrack : Windows.Media.Core.ITimedMetadataTrack, Windows.Media.Core.IMediaTrack, Windows.Media.Core.ITimedMetadataTrack2
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.IMediaCue) Cues()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.IMediaCue) _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedMetadataTrack).get_Cues(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.IMediaCue) ActiveCues()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.IMediaCue) _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedMetadataTrack).get_ActiveCues(&_ret));
		return _ret;
	}
	final Windows.Media.Core.TimedMetadataKind TimedMetadataKind()
	{
		Windows.Media.Core.TimedMetadataKind _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedMetadataTrack).get_TimedMetadataKind(&_ret));
		return _ret;
	}
	final HSTRING DispatchType()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedMetadataTrack).get_DispatchType(&_ret));
		return _ret;
	}
	final void AddCue(Windows.Media.Core.IMediaCue cue)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedMetadataTrack).abi_AddCue(cue));
	}
	final void RemoveCue(Windows.Media.Core.IMediaCue cue)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedMetadataTrack).abi_RemoveCue(cue));
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaTrack).get_Id(&_ret));
		return _ret;
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaTrack).get_Language(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MediaTrackKind TrackKind()
	{
		Windows.Media.Core.MediaTrackKind _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaTrack).get_TrackKind(&_ret));
		return _ret;
	}
	final void Label(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaTrack).set_Label(value));
	}
	final HSTRING Label()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaTrack).get_Label(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackItem PlaybackItem()
	{
		Windows.Media.Playback.MediaPlaybackItem _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedMetadataTrack2).get_PlaybackItem(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedMetadataTrack2).get_Name(&_ret));
		return _ret;
	}
}

interface TimedMetadataTrackError : Windows.Media.Core.ITimedMetadataTrackError
{
extern(Windows):
	final Windows.Media.Core.TimedMetadataTrackErrorCode ErrorCode()
	{
		Windows.Media.Core.TimedMetadataTrackErrorCode _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedMetadataTrackError).get_ErrorCode(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedMetadataTrackError).get_ExtendedError(&_ret));
		return _ret;
	}
}

interface TimedMetadataTrackFailedEventArgs : Windows.Media.Core.ITimedMetadataTrackFailedEventArgs
{
extern(Windows):
	final Windows.Media.Core.TimedMetadataTrackError Error()
	{
		Windows.Media.Core.TimedMetadataTrackError _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedMetadataTrackFailedEventArgs).get_Error(&_ret));
		return _ret;
	}
}

interface TimedTextCue : Windows.Media.Core.ITimedTextCue, Windows.Media.Core.IMediaCue
{
extern(Windows):
	final Windows.Media.Core.TimedTextRegion CueRegion()
	{
		Windows.Media.Core.TimedTextRegion _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextCue).get_CueRegion(&_ret));
		return _ret;
	}
	final void CueRegion(Windows.Media.Core.TimedTextRegion value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextCue).set_CueRegion(value));
	}
	final Windows.Media.Core.TimedTextStyle CueStyle()
	{
		Windows.Media.Core.TimedTextStyle _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextCue).get_CueStyle(&_ret));
		return _ret;
	}
	final void CueStyle(Windows.Media.Core.TimedTextStyle value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextCue).set_CueStyle(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Core.TimedTextLine) Lines()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Core.TimedTextLine) _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextCue).get_Lines(&_ret));
		return _ret;
	}
	final void StartTime(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).set_StartTime(value));
	}
	final Windows.Foundation.TimeSpan StartTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).get_StartTime(&_ret));
		return _ret;
	}
	final void Duration(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).set_Duration(value));
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).get_Duration(&_ret));
		return _ret;
	}
	final void Id(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).set_Id(value));
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaCue).get_Id(&_ret));
		return _ret;
	}
}

interface TimedTextLine : Windows.Media.Core.ITimedTextLine
{
extern(Windows):
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextLine).get_Text(&_ret));
		return _ret;
	}
	final void Text(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextLine).set_Text(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Core.TimedTextSubformat) Subformats()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Core.TimedTextSubformat) _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextLine).get_Subformats(&_ret));
		return _ret;
	}
}

interface TimedTextRegion : Windows.Media.Core.ITimedTextRegion
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).get_Name(&_ret));
		return _ret;
	}
	final void Name(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).set_Name(value));
	}
	final Windows.Media.Core.TimedTextPoint Position()
	{
		Windows.Media.Core.TimedTextPoint _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).get_Position(&_ret));
		return _ret;
	}
	final void Position(Windows.Media.Core.TimedTextPoint value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).set_Position(value));
	}
	final Windows.Media.Core.TimedTextSize Extent()
	{
		Windows.Media.Core.TimedTextSize _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).get_Extent(&_ret));
		return _ret;
	}
	final void Extent(Windows.Media.Core.TimedTextSize value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).set_Extent(value));
	}
	final Windows.UI.Color Background()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).get_Background(&_ret));
		return _ret;
	}
	final void Background(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).set_Background(value));
	}
	final Windows.Media.Core.TimedTextWritingMode WritingMode()
	{
		Windows.Media.Core.TimedTextWritingMode _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).get_WritingMode(&_ret));
		return _ret;
	}
	final void WritingMode(Windows.Media.Core.TimedTextWritingMode value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).set_WritingMode(value));
	}
	final Windows.Media.Core.TimedTextDisplayAlignment DisplayAlignment()
	{
		Windows.Media.Core.TimedTextDisplayAlignment _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).get_DisplayAlignment(&_ret));
		return _ret;
	}
	final void DisplayAlignment(Windows.Media.Core.TimedTextDisplayAlignment value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).set_DisplayAlignment(value));
	}
	final Windows.Media.Core.TimedTextDouble LineHeight()
	{
		Windows.Media.Core.TimedTextDouble _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).get_LineHeight(&_ret));
		return _ret;
	}
	final void LineHeight(Windows.Media.Core.TimedTextDouble value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).set_LineHeight(value));
	}
	final bool IsOverflowClipped()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).get_IsOverflowClipped(&_ret));
		return _ret;
	}
	final void IsOverflowClipped(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).set_IsOverflowClipped(value));
	}
	final Windows.Media.Core.TimedTextPadding Padding()
	{
		Windows.Media.Core.TimedTextPadding _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).get_Padding(&_ret));
		return _ret;
	}
	final void Padding(Windows.Media.Core.TimedTextPadding value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).set_Padding(value));
	}
	final Windows.Media.Core.TimedTextWrapping TextWrapping()
	{
		Windows.Media.Core.TimedTextWrapping _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).get_TextWrapping(&_ret));
		return _ret;
	}
	final void TextWrapping(Windows.Media.Core.TimedTextWrapping value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).set_TextWrapping(value));
	}
	final INT32 ZIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).get_ZIndex(&_ret));
		return _ret;
	}
	final void ZIndex(INT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).set_ZIndex(value));
	}
	final Windows.Media.Core.TimedTextScrollMode ScrollMode()
	{
		Windows.Media.Core.TimedTextScrollMode _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).get_ScrollMode(&_ret));
		return _ret;
	}
	final void ScrollMode(Windows.Media.Core.TimedTextScrollMode value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextRegion).set_ScrollMode(value));
	}
}

interface TimedTextSource : Windows.Media.Core.ITimedTextSource
{
}

interface TimedTextSourceResolveResultEventArgs : Windows.Media.Core.ITimedTextSourceResolveResultEventArgs
{
extern(Windows):
	final Windows.Media.Core.TimedMetadataTrackError Error()
	{
		Windows.Media.Core.TimedMetadataTrackError _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextSourceResolveResultEventArgs).get_Error(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.TimedMetadataTrack) Tracks()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.TimedMetadataTrack) _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextSourceResolveResultEventArgs).get_Tracks(&_ret));
		return _ret;
	}
}

interface TimedTextStyle : Windows.Media.Core.ITimedTextStyle, Windows.Media.Core.ITimedTextStyle2
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).get_Name(&_ret));
		return _ret;
	}
	final void Name(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).set_Name(value));
	}
	final HSTRING FontFamily()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).get_FontFamily(&_ret));
		return _ret;
	}
	final void FontFamily(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).set_FontFamily(value));
	}
	final Windows.Media.Core.TimedTextDouble FontSize()
	{
		Windows.Media.Core.TimedTextDouble _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).get_FontSize(&_ret));
		return _ret;
	}
	final void FontSize(Windows.Media.Core.TimedTextDouble value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).set_FontSize(value));
	}
	final Windows.Media.Core.TimedTextWeight FontWeight()
	{
		Windows.Media.Core.TimedTextWeight _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).get_FontWeight(&_ret));
		return _ret;
	}
	final void FontWeight(Windows.Media.Core.TimedTextWeight value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).set_FontWeight(value));
	}
	final Windows.UI.Color Foreground()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).get_Foreground(&_ret));
		return _ret;
	}
	final void Foreground(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).set_Foreground(value));
	}
	final Windows.UI.Color Background()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).get_Background(&_ret));
		return _ret;
	}
	final void Background(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).set_Background(value));
	}
	final bool IsBackgroundAlwaysShown()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).get_IsBackgroundAlwaysShown(&_ret));
		return _ret;
	}
	final void IsBackgroundAlwaysShown(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).set_IsBackgroundAlwaysShown(value));
	}
	final Windows.Media.Core.TimedTextFlowDirection FlowDirection()
	{
		Windows.Media.Core.TimedTextFlowDirection _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).get_FlowDirection(&_ret));
		return _ret;
	}
	final void FlowDirection(Windows.Media.Core.TimedTextFlowDirection value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).set_FlowDirection(value));
	}
	final Windows.Media.Core.TimedTextLineAlignment LineAlignment()
	{
		Windows.Media.Core.TimedTextLineAlignment _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).get_LineAlignment(&_ret));
		return _ret;
	}
	final void LineAlignment(Windows.Media.Core.TimedTextLineAlignment value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).set_LineAlignment(value));
	}
	final Windows.UI.Color OutlineColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).get_OutlineColor(&_ret));
		return _ret;
	}
	final void OutlineColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).set_OutlineColor(value));
	}
	final Windows.Media.Core.TimedTextDouble OutlineThickness()
	{
		Windows.Media.Core.TimedTextDouble _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).get_OutlineThickness(&_ret));
		return _ret;
	}
	final void OutlineThickness(Windows.Media.Core.TimedTextDouble value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).set_OutlineThickness(value));
	}
	final Windows.Media.Core.TimedTextDouble OutlineRadius()
	{
		Windows.Media.Core.TimedTextDouble _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).get_OutlineRadius(&_ret));
		return _ret;
	}
	final void OutlineRadius(Windows.Media.Core.TimedTextDouble value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle).set_OutlineRadius(value));
	}
	final Windows.Media.Core.TimedTextFontStyle FontStyle()
	{
		Windows.Media.Core.TimedTextFontStyle _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle2).get_FontStyle(&_ret));
		return _ret;
	}
	final void FontStyle(Windows.Media.Core.TimedTextFontStyle value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle2).set_FontStyle(value));
	}
	final bool IsUnderlineEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle2).get_IsUnderlineEnabled(&_ret));
		return _ret;
	}
	final void IsUnderlineEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle2).set_IsUnderlineEnabled(value));
	}
	final bool IsLineThroughEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle2).get_IsLineThroughEnabled(&_ret));
		return _ret;
	}
	final void IsLineThroughEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle2).set_IsLineThroughEnabled(value));
	}
	final bool IsOverlineEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle2).get_IsOverlineEnabled(&_ret));
		return _ret;
	}
	final void IsOverlineEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextStyle2).set_IsOverlineEnabled(value));
	}
}

interface TimedTextSubformat : Windows.Media.Core.ITimedTextSubformat
{
extern(Windows):
	final INT32 StartIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextSubformat).get_StartIndex(&_ret));
		return _ret;
	}
	final void StartIndex(INT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextSubformat).set_StartIndex(value));
	}
	final INT32 Length()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextSubformat).get_Length(&_ret));
		return _ret;
	}
	final void Length(INT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextSubformat).set_Length(value));
	}
	final Windows.Media.Core.TimedTextStyle SubformatStyle()
	{
		Windows.Media.Core.TimedTextStyle _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextSubformat).get_SubformatStyle(&_ret));
		return _ret;
	}
	final void SubformatStyle(Windows.Media.Core.TimedTextStyle value)
	{
		Debug.OK(this.as!(Windows.Media.Core.ITimedTextSubformat).set_SubformatStyle(value));
	}
}

interface VideoStabilizationEffect : Windows.Media.Core.IVideoStabilizationEffect, Windows.Media.IMediaExtension
{
extern(Windows):
	final void Enabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IVideoStabilizationEffect).set_Enabled(value));
	}
	final bool Enabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.IVideoStabilizationEffect).get_Enabled(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.VideoStreamConfiguration GetRecommendedStreamConfiguration(Windows.Media.Devices.VideoDeviceController controller, Windows.Media.MediaProperties.VideoEncodingProperties desiredProperties)
	{
		Windows.Media.Capture.VideoStreamConfiguration _ret;
		Debug.OK(this.as!(Windows.Media.Core.IVideoStabilizationEffect).abi_GetRecommendedStreamConfiguration(controller, desiredProperties, &_ret));
		return _ret;
	}
	final void SetProperties(Windows.Foundation.Collections.IPropertySet configuration)
	{
		Debug.OK(this.as!(Windows.Media.IMediaExtension).abi_SetProperties(configuration));
	}
}

interface VideoStabilizationEffectDefinition : Windows.Media.Effects.IVideoEffectDefinition
{
extern(Windows):
	final HSTRING ActivatableClassId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IVideoEffectDefinition).get_ActivatableClassId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IPropertySet Properties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IVideoEffectDefinition).get_Properties(&_ret));
		return _ret;
	}
}

interface VideoStabilizationEffectEnabledChangedEventArgs : Windows.Media.Core.IVideoStabilizationEffectEnabledChangedEventArgs
{
extern(Windows):
	final Windows.Media.Core.VideoStabilizationEffectEnabledChangedReason Reason()
	{
		Windows.Media.Core.VideoStabilizationEffectEnabledChangedReason _ret;
		Debug.OK(this.as!(Windows.Media.Core.IVideoStabilizationEffectEnabledChangedEventArgs).get_Reason(&_ret));
		return _ret;
	}
}

interface VideoStreamDescriptor : Windows.Media.Core.IVideoStreamDescriptor, Windows.Media.Core.IMediaStreamDescriptor
{
extern(Windows):
	final Windows.Media.MediaProperties.VideoEncodingProperties EncodingProperties()
	{
		Windows.Media.MediaProperties.VideoEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Core.IVideoStreamDescriptor).get_EncodingProperties(&_ret));
		return _ret;
	}
	final bool IsSelected()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamDescriptor).get_IsSelected(&_ret));
		return _ret;
	}
	final void Name(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamDescriptor).set_Name(value));
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamDescriptor).get_Name(&_ret));
		return _ret;
	}
	final void Language(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamDescriptor).set_Language(value));
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaStreamDescriptor).get_Language(&_ret));
		return _ret;
	}
}

interface VideoTrack : Windows.Media.Core.IMediaTrack, Windows.Media.Core.IVideoTrack
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaTrack).get_Id(&_ret));
		return _ret;
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaTrack).get_Language(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MediaTrackKind TrackKind()
	{
		Windows.Media.Core.MediaTrackKind _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaTrack).get_TrackKind(&_ret));
		return _ret;
	}
	final void Label(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Core.IMediaTrack).set_Label(value));
	}
	final HSTRING Label()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IMediaTrack).get_Label(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.VideoEncodingProperties GetEncodingProperties()
	{
		Windows.Media.MediaProperties.VideoEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Core.IVideoTrack).abi_GetEncodingProperties(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackItem PlaybackItem()
	{
		Windows.Media.Playback.MediaPlaybackItem _ret;
		Debug.OK(this.as!(Windows.Media.Core.IVideoTrack).get_PlaybackItem(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Core.IVideoTrack).get_Name(&_ret));
		return _ret;
	}
	final Windows.Media.Core.VideoTrackSupportInfo SupportInfo()
	{
		Windows.Media.Core.VideoTrackSupportInfo _ret;
		Debug.OK(this.as!(Windows.Media.Core.IVideoTrack).get_SupportInfo(&_ret));
		return _ret;
	}
}

interface VideoTrackOpenFailedEventArgs : Windows.Media.Core.IVideoTrackOpenFailedEventArgs
{
extern(Windows):
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Media.Core.IVideoTrackOpenFailedEventArgs).get_ExtendedError(&_ret));
		return _ret;
	}
}

interface VideoTrackSupportInfo : Windows.Media.Core.IVideoTrackSupportInfo
{
extern(Windows):
	final Windows.Media.Core.MediaDecoderStatus DecoderStatus()
	{
		Windows.Media.Core.MediaDecoderStatus _ret;
		Debug.OK(this.as!(Windows.Media.Core.IVideoTrackSupportInfo).get_DecoderStatus(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MediaSourceStatus MediaSourceStatus()
	{
		Windows.Media.Core.MediaSourceStatus _ret;
		Debug.OK(this.as!(Windows.Media.Core.IVideoTrackSupportInfo).get_MediaSourceStatus(&_ret));
		return _ret;
	}
}

enum AudioDecoderDegradation
{
	None = 0,
	DownmixTo2Channels = 1,
	DownmixTo6Channels = 2,
	DownmixTo8Channels = 3
}

enum AudioDecoderDegradationReason
{
	None = 0,
	LicensingRequirement = 1,
	SpatialAudioNotSupported = 2
}

enum CodecCategory
{
	Encoder = 0,
	Decoder = 1
}

enum CodecKind
{
	Audio = 0,
	Video = 1
}

enum FaceDetectionMode
{
	HighPerformance = 0,
	Balanced = 1,
	HighQuality = 2
}

enum MediaDecoderStatus
{
	FullySupported = 0,
	UnsupportedSubtype = 1,
	UnsupportedEncoderProperties = 2,
	Degraded = 3
}

enum MediaSourceState
{
	Initial = 0,
	Opening = 1,
	Opened = 2,
	Failed = 3,
	Closed = 4
}

enum MediaSourceStatus
{
	FullySupported = 0,
	Unknown = 1
}

enum MediaStreamSourceClosedReason
{
	Done = 0,
	UnknownError = 1,
	AppReportedError = 2,
	UnsupportedProtectionSystem = 3,
	ProtectionSystemFailure = 4,
	UnsupportedEncodingFormat = 5,
	MissingSampleRequestedEventHandler = 6
}

enum MediaStreamSourceErrorStatus
{
	Other = 0,
	OutOfMemory = 1,
	FailedToOpenFile = 2,
	FailedToConnectToServer = 3,
	ConnectionToServerLost = 4,
	UnspecifiedNetworkError = 5,
	DecodeError = 6,
	UnsupportedMediaFormat = 7
}

enum MediaTrackKind
{
	Audio = 0,
	Video = 1,
	TimedMetadata = 2
}

enum MseAppendMode
{
	Segments = 0,
	Sequence = 1
}

enum MseEndOfStreamStatus
{
	Success = 0,
	NetworkError = 1,
	DecodeError = 2,
	UnknownError = 3
}

enum MseReadyState
{
	Closed = 0,
	Open = 1,
	Ended = 2
}

enum TimedMetadataKind
{
	Caption = 0,
	Chapter = 1,
	Custom = 2,
	Data = 3,
	Description = 4,
	Subtitle = 5,
	ImageSubtitle = 6,
	Speech = 7
}

enum TimedMetadataTrackErrorCode
{
	None = 0,
	DataFormatError = 1,
	NetworkError = 2,
	InternalError = 3
}

enum TimedTextDisplayAlignment
{
	Before = 0,
	After = 1,
	Center = 2
}

enum TimedTextFlowDirection
{
	LeftToRight = 0,
	RightToLeft = 1
}

enum TimedTextFontStyle
{
	Normal = 0,
	Oblique = 1,
	Italic = 2
}

enum TimedTextLineAlignment
{
	Start = 0,
	End = 1,
	Center = 2
}

enum TimedTextScrollMode
{
	Popon = 0,
	Rollup = 1
}

enum TimedTextUnit
{
	Pixels = 0,
	Percentage = 1
}

enum TimedTextWeight
{
	Normal = 400,
	Bold = 700
}

enum TimedTextWrapping
{
	NoWrap = 0,
	Wrap = 1
}

enum TimedTextWritingMode
{
	LeftRightTopBottom = 0,
	RightLeftTopBottom = 1,
	TopBottomRightLeft = 2,
	TopBottomLeftRight = 3,
	LeftRight = 4,
	RightLeft = 5,
	TopBottom = 6
}

enum VideoStabilizationEffectEnabledChangedReason
{
	Programmatic = 0,
	PixelRateTooHigh = 1,
	RunningSlowly = 2
}