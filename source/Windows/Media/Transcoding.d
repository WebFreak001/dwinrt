module Windows.Media.Transcoding;

import dwinrt;

@uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b")
@WinrtFactory("Windows.Media.Transcoding.MediaTranscoder")
interface IMediaTranscoder : IInspectable
{
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
extern(Windows):
	HRESULT abi_PrepareMediaStreamSourceTranscodeAsync(Windows.Media.Core.IMediaSource source, Windows.Storage.Streams.IRandomAccessStream destination, Windows.Media.MediaProperties.MediaEncodingProfile profile, Windows.Foundation.IAsyncOperation!(Windows.Media.Transcoding.PrepareTranscodeResult)* return_operation);
	HRESULT set_VideoProcessingAlgorithm(Windows.Media.Transcoding.MediaVideoProcessingAlgorithm value);
	HRESULT get_VideoProcessingAlgorithm(Windows.Media.Transcoding.MediaVideoProcessingAlgorithm* return_value);
}

@uuid("05f25dce-994f-4a34-9d68-97ccce1730d6")
@WinrtFactory("Windows.Media.Transcoding.PrepareTranscodeResult")
interface IPrepareTranscodeResult : IInspectable
{
extern(Windows):
	HRESULT get_CanTranscode(bool* return_value);
	HRESULT get_FailureReason(Windows.Media.Transcoding.TranscodeFailureReason* return_value);
	HRESULT abi_TranscodeAsync(Windows.Foundation.IAsyncActionWithProgress!(double)* return_operation);
}

interface MediaTranscoder : Windows.Media.Transcoding.IMediaTranscoder, Windows.Media.Transcoding.IMediaTranscoder2
{
extern(Windows):
	final void TrimStartTime(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder)this.asInterface(uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b"))).set_TrimStartTime(value));
	}
	final Windows.Foundation.TimeSpan TrimStartTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder)this.asInterface(uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b"))).get_TrimStartTime(&_ret));
		return _ret;
	}
	final void TrimStopTime(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder)this.asInterface(uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b"))).set_TrimStopTime(value));
	}
	final Windows.Foundation.TimeSpan TrimStopTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder)this.asInterface(uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b"))).get_TrimStopTime(&_ret));
		return _ret;
	}
	final void AlwaysReencode(bool value)
	{
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder)this.asInterface(uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b"))).set_AlwaysReencode(value));
	}
	final bool AlwaysReencode()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder)this.asInterface(uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b"))).get_AlwaysReencode(&_ret));
		return _ret;
	}
	final void HardwareAccelerationEnabled(bool value)
	{
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder)this.asInterface(uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b"))).set_HardwareAccelerationEnabled(value));
	}
	final bool HardwareAccelerationEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder)this.asInterface(uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b"))).get_HardwareAccelerationEnabled(&_ret));
		return _ret;
	}
	final void AddAudioEffect(wstring activatableClassId)
	{
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder)this.asInterface(uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b"))).abi_AddAudioEffect(hstring(activatableClassId).handle));
	}
	final void AddAudioEffectWithSettings(wstring activatableClassId, bool effectRequired, Windows.Foundation.Collections.IPropertySet configuration)
	{
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder)this.asInterface(uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b"))).abi_AddAudioEffectWithSettings(hstring(activatableClassId).handle, effectRequired, configuration));
	}
	alias AddAudioEffect = AddAudioEffectWithSettings;
	final void AddVideoEffect(wstring activatableClassId)
	{
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder)this.asInterface(uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b"))).abi_AddVideoEffect(hstring(activatableClassId).handle));
	}
	final void AddVideoEffectWithSettings(wstring activatableClassId, bool effectRequired, Windows.Foundation.Collections.IPropertySet configuration)
	{
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder)this.asInterface(uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b"))).abi_AddVideoEffectWithSettings(hstring(activatableClassId).handle, effectRequired, configuration));
	}
	alias AddVideoEffect = AddVideoEffectWithSettings;
	final void ClearEffects()
	{
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder)this.asInterface(uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b"))).abi_ClearEffects());
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Transcoding.PrepareTranscodeResult) PrepareFileTranscodeAsync(Windows.Storage.IStorageFile source, Windows.Storage.IStorageFile destination, Windows.Media.MediaProperties.MediaEncodingProfile profile)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Transcoding.PrepareTranscodeResult) _ret;
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder)this.asInterface(uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b"))).abi_PrepareFileTranscodeAsync(source, destination, profile, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Transcoding.PrepareTranscodeResult) PrepareStreamTranscodeAsync(Windows.Storage.Streams.IRandomAccessStream source, Windows.Storage.Streams.IRandomAccessStream destination, Windows.Media.MediaProperties.MediaEncodingProfile profile)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Transcoding.PrepareTranscodeResult) _ret;
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder)this.asInterface(uuid("190c99d2-a0aa-4d34-86bc-eed1b12c2f5b"))).abi_PrepareStreamTranscodeAsync(source, destination, profile, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Transcoding.PrepareTranscodeResult) PrepareMediaStreamSourceTranscodeAsync(Windows.Media.Core.IMediaSource source, Windows.Storage.Streams.IRandomAccessStream destination, Windows.Media.MediaProperties.MediaEncodingProfile profile)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Transcoding.PrepareTranscodeResult) _ret;
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder2)this.asInterface(uuid("40531d74-35e0-4f04-8574-ca8bc4e5a082"))).abi_PrepareMediaStreamSourceTranscodeAsync(source, destination, profile, &_ret));
		return _ret;
	}
	final void VideoProcessingAlgorithm(Windows.Media.Transcoding.MediaVideoProcessingAlgorithm value)
	{
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder2)this.asInterface(uuid("40531d74-35e0-4f04-8574-ca8bc4e5a082"))).set_VideoProcessingAlgorithm(value));
	}
	final Windows.Media.Transcoding.MediaVideoProcessingAlgorithm VideoProcessingAlgorithm()
	{
		Windows.Media.Transcoding.MediaVideoProcessingAlgorithm _ret;
		Debug.OK((cast(Windows.Media.Transcoding.IMediaTranscoder2)this.asInterface(uuid("40531d74-35e0-4f04-8574-ca8bc4e5a082"))).get_VideoProcessingAlgorithm(&_ret));
		return _ret;
	}
	static MediaTranscoder New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MediaTranscoder).abi_ActivateInstance(&ret));
		return cast(MediaTranscoder) ret;
	}
}

interface PrepareTranscodeResult : Windows.Media.Transcoding.IPrepareTranscodeResult
{
extern(Windows):
	final bool CanTranscode()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Transcoding.IPrepareTranscodeResult)this.asInterface(uuid("05f25dce-994f-4a34-9d68-97ccce1730d6"))).get_CanTranscode(&_ret));
		return _ret;
	}
	final Windows.Media.Transcoding.TranscodeFailureReason FailureReason()
	{
		Windows.Media.Transcoding.TranscodeFailureReason _ret;
		Debug.OK((cast(Windows.Media.Transcoding.IPrepareTranscodeResult)this.asInterface(uuid("05f25dce-994f-4a34-9d68-97ccce1730d6"))).get_FailureReason(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncActionWithProgress!(double) TranscodeAsync()
	{
		Windows.Foundation.IAsyncActionWithProgress!(double) _ret;
		Debug.OK((cast(Windows.Media.Transcoding.IPrepareTranscodeResult)this.asInterface(uuid("05f25dce-994f-4a34-9d68-97ccce1730d6"))).abi_TranscodeAsync(&_ret));
		return _ret;
	}
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