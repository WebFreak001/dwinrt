module Windows.Media.Transcoding;

import dwinrt;

@uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b")
@WinrtFactory("Windows.Media.Transcoding.MediaTranscoder")
interface IMediaTranscoder : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_TrimStartTime(Windows.Foundation.TimeSpan value);
	HRESULT get_TrimStartTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_TrimStopTime(Windows.Foundation.TimeSpan value);
	HRESULT get_TrimStopTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_AlwaysReencode(bool value);
	HRESULT get_AlwaysReencode(bool* return_value);
	HRESULT set_HardwareAccelerationEnabled(bool value);
	HRESULT get_HardwareAccelerationEnabled(bool* return_value);
	HRESULT abi_AddAudioEffect(HSTRING activatableClassId);
	HRESULT abi_AddAudioEffectWithSettings(HSTRING activatableClassId, bool effectRequired, Windows.Foundation.Collections.IPropertySet configuration);
	HRESULT abi_AddVideoEffect(HSTRING activatableClassId);
	HRESULT abi_AddVideoEffectWithSettings(HSTRING activatableClassId, bool effectRequired, Windows.Foundation.Collections.IPropertySet configuration);
	HRESULT abi_ClearEffects();
	HRESULT abi_PrepareFileTranscodeAsync(Windows.Storage.IStorageFile source, Windows.Storage.IStorageFile destination, Windows.Media.MediaProperties.MediaEncodingProfile profile, Windows.Foundation.IAsyncOperation!(Windows.Media.Transcoding.PrepareTranscodeResult)* return_operation);
	HRESULT abi_PrepareStreamTranscodeAsync(Windows.Storage.Streams.IRandomAccessStream source, Windows.Storage.Streams.IRandomAccessStream destination, Windows.Media.MediaProperties.MediaEncodingProfile profile, Windows.Foundation.IAsyncOperation!(Windows.Media.Transcoding.PrepareTranscodeResult)* return_operation);
}

@uuid("40531d74-35e0-4f04-8574-ca8bc4e5a082")
@WinrtFactory("Windows.Media.Transcoding.MediaTranscoder")
interface IMediaTranscoder2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_PrepareMediaStreamSourceTranscodeAsync(Windows.Media.Core.IMediaSource source, Windows.Storage.Streams.IRandomAccessStream destination, Windows.Media.MediaProperties.MediaEncodingProfile profile, Windows.Foundation.IAsyncOperation!(Windows.Media.Transcoding.PrepareTranscodeResult)* return_operation);
	HRESULT set_VideoProcessingAlgorithm(Windows.Media.Transcoding.MediaVideoProcessingAlgorithm value);
	HRESULT get_VideoProcessingAlgorithm(Windows.Media.Transcoding.MediaVideoProcessingAlgorithm* return_value);
}

@uuid("05f25dce-994f-4a34-9d68-97ccce1730d6")
@WinrtFactory("Windows.Media.Transcoding.PrepareTranscodeResult")
interface IPrepareTranscodeResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CanTranscode(bool* return_value);
	HRESULT get_FailureReason(Windows.Media.Transcoding.TranscodeFailureReason* return_value);
	HRESULT abi_TranscodeAsync(Windows.Foundation.IAsyncActionWithProgress!(double)* return_operation);
}

interface MediaTranscoder
{
}

interface PrepareTranscodeResult
{
}

enum MediaVideoProcessingAlgorithm
{
	Default = 0,
	MrfCrf444 = 1
}

enum TranscodeFailureReason
{
	None = 0,
	Unknown = 1,
	InvalidProfile = 2,
	CodecNotFound = 3
}