module Windows.Media.Editing;

import dwinrt;

@uuid("4b91b3bd-9e21-4266-a9c2-67dd011a2357")
@WinrtFactory("Windows.Media.Editing.BackgroundAudioTrack")
interface IBackgroundAudioTrack : IInspectable
{
extern(Windows):
	HRESULT get_TrimTimeFromStart(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_TrimTimeFromStart(Windows.Foundation.TimeSpan value);
	HRESULT get_TrimTimeFromEnd(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_TrimTimeFromEnd(Windows.Foundation.TimeSpan value);
	HRESULT get_OriginalDuration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_TrimmedDuration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_UserData(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
	HRESULT set_Delay(Windows.Foundation.TimeSpan value);
	HRESULT get_Delay(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Volume(double value);
	HRESULT get_Volume(double* return_value);
	HRESULT abi_Clone(Windows.Media.Editing.BackgroundAudioTrack* return_value);
	HRESULT abi_GetAudioEncodingProperties(Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT get_AudioEffectDefinitions(Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition)* return_value);
}

@uuid("d9b1c0d7-d018-42a8-a559-cb4d9e97e664")
@WinrtFactory("Windows.Media.Editing.BackgroundAudioTrack")
interface IBackgroundAudioTrackStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromEmbeddedAudioTrack(Windows.Media.Editing.EmbeddedAudioTrack embeddedAudioTrack, Windows.Media.Editing.BackgroundAudioTrack* return_value);
	HRESULT abi_CreateFromFileAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Media.Editing.BackgroundAudioTrack)* return_operation);
}

@uuid("55ee5a7a-2d30-3fba-a190-4f1a6454f88f")
@WinrtFactory("Windows.Media.Editing.EmbeddedAudioTrack")
interface IEmbeddedAudioTrack : IInspectable
{
extern(Windows):
	HRESULT abi_GetAudioEncodingProperties(Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
}

@uuid("53f25366-5fba-3ea4-8693-24761811140a")
@WinrtFactory("Windows.Media.Editing.MediaClip")
interface IMediaClip : IInspectable
{
extern(Windows):
	HRESULT get_TrimTimeFromStart(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_TrimTimeFromStart(Windows.Foundation.TimeSpan value);
	HRESULT get_TrimTimeFromEnd(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_TrimTimeFromEnd(Windows.Foundation.TimeSpan value);
	HRESULT get_OriginalDuration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_TrimmedDuration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_UserData(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
	HRESULT abi_Clone(Windows.Media.Editing.MediaClip* return_result);
	HRESULT get_StartTimeInComposition(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_EndTimeInComposition(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_EmbeddedAudioTracks(Windows.Foundation.Collections.IVectorView!(Windows.Media.Editing.EmbeddedAudioTrack)* return_value);
	HRESULT get_SelectedEmbeddedAudioTrackIndex(UINT32* return_value);
	HRESULT set_SelectedEmbeddedAudioTrackIndex(UINT32 value);
	HRESULT set_Volume(double value);
	HRESULT get_Volume(double* return_value);
	HRESULT abi_GetVideoEncodingProperties(Windows.Media.MediaProperties.VideoEncodingProperties* return_value);
	HRESULT get_AudioEffectDefinitions(Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition)* return_value);
	HRESULT get_VideoEffectDefinitions(Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IVideoEffectDefinition)* return_value);
}

@uuid("fa402b68-928f-43c4-bc6e-783a1a359656")
@WinrtFactory("Windows.Media.Editing.MediaClip")
interface IMediaClipStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromColor(Windows.UI.Color color, Windows.Foundation.TimeSpan originalDuration, Windows.Media.Editing.MediaClip* return_value);
	HRESULT abi_CreateFromFileAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Media.Editing.MediaClip)* return_operation);
	HRESULT abi_CreateFromImageFileAsync(Windows.Storage.IStorageFile file, Windows.Foundation.TimeSpan originalDuration, Windows.Foundation.IAsyncOperation!(Windows.Media.Editing.MediaClip)* return_operation);
}

@uuid("5b1dd7b3-854e-4d9b-877d-4774a556cd12")
@WinrtFactory("Windows.Media.Editing.MediaClip")
interface IMediaClipStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromSurface(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface surface, Windows.Foundation.TimeSpan originalDuration, Windows.Media.Editing.MediaClip* return_value);
}

@uuid("2e06e605-dc71-41d6-b837-2d2bc14a2947")
@WinrtFactory("Windows.Media.Editing.MediaComposition")
interface IMediaComposition : IInspectable
{
extern(Windows):
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Clips(Windows.Foundation.Collections.IVector!(Windows.Media.Editing.MediaClip)* return_value);
	HRESULT get_BackgroundAudioTracks(Windows.Foundation.Collections.IVector!(Windows.Media.Editing.BackgroundAudioTrack)* return_value);
	HRESULT get_UserData(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
	HRESULT abi_Clone(Windows.Media.Editing.MediaComposition* return_result);
	HRESULT abi_SaveAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_GetThumbnailAsync(Windows.Foundation.TimeSpan timeFromStart, INT32 scaledWidth, INT32 scaledHeight, Windows.Media.Editing.VideoFramePrecision framePrecision, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.ImageStream)* return_operation);
	HRESULT abi_GetThumbnailsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.TimeSpan) timesFromStart, INT32 scaledWidth, INT32 scaledHeight, Windows.Media.Editing.VideoFramePrecision framePrecision, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Imaging.ImageStream))* return_operation);
	HRESULT abi_RenderToFileAsync(Windows.Storage.IStorageFile destination, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Transcoding.TranscodeFailureReason, double)* return_operation);
	HRESULT abi_RenderToFileWithTrimmingPreferenceAsync(Windows.Storage.IStorageFile destination, Windows.Media.Editing.MediaTrimmingPreference trimmingPreference, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Transcoding.TranscodeFailureReason, double)* return_operation);
	HRESULT abi_RenderToFileWithProfileAsync(Windows.Storage.IStorageFile destination, Windows.Media.Editing.MediaTrimmingPreference trimmingPreference, Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Transcoding.TranscodeFailureReason, double)* return_operation);
	HRESULT abi_CreateDefaultEncodingProfile(Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_GenerateMediaStreamSource(Windows.Media.Core.MediaStreamSource* return_value);
	HRESULT abi_GenerateMediaStreamSourceWithProfile(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, Windows.Media.Core.MediaStreamSource* return_value);
	HRESULT abi_GeneratePreviewMediaStreamSource(INT32 scaledWidth, INT32 scaledHeight, Windows.Media.Core.MediaStreamSource* return_value);
}

@uuid("a59e5372-2366-492c-bec8-e6dfba6d0281")
@WinrtFactory("Windows.Media.Editing.MediaComposition")
interface IMediaComposition2 : IInspectable
{
extern(Windows):
	HRESULT get_OverlayLayers(Windows.Foundation.Collections.IVector!(Windows.Media.Editing.MediaOverlayLayer)* return_value);
}

@uuid("87a08f04-e32a-45ce-8f66-a30df0766224")
@WinrtFactory("Windows.Media.Editing.MediaComposition")
interface IMediaCompositionStatics : IInspectable
{
extern(Windows):
	HRESULT abi_LoadAsync(Windows.Storage.StorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Media.Editing.MediaComposition)* return_operation);
}

@uuid("a902ae5d-7869-4830-8ab1-94dc01c05fa4")
@WinrtFactory("Windows.Media.Editing.MediaOverlay")
interface IMediaOverlay : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Foundation.Rect* return_value);
	HRESULT set_Position(Windows.Foundation.Rect value);
	HRESULT set_Delay(Windows.Foundation.TimeSpan value);
	HRESULT get_Delay(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Opacity(double* return_value);
	HRESULT set_Opacity(double value);
	HRESULT abi_Clone(Windows.Media.Editing.MediaOverlay* return_result);
	HRESULT get_Clip(Windows.Media.Editing.MediaClip* return_value);
	HRESULT get_AudioEnabled(bool* return_value);
	HRESULT set_AudioEnabled(bool value);
}

@uuid("b584828a-6188-4f8f-a2e0-aa552d598e18")
@WinrtFactory("Windows.Media.Editing.MediaOverlay")
interface IMediaOverlayFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Media.Editing.MediaClip clip, Windows.Media.Editing.MediaOverlay* return_mediaOverlay);
	HRESULT abi_CreateWithPositionAndOpacity(Windows.Media.Editing.MediaClip clip, Windows.Foundation.Rect position, double opacity, Windows.Media.Editing.MediaOverlay* return_mediaOverlay);
}

@uuid("a6d9ba57-eeda-46c6-bbe5-e398c84168ac")
@WinrtFactory("Windows.Media.Editing.MediaOverlayLayer")
interface IMediaOverlayLayer : IInspectable
{
extern(Windows):
	HRESULT abi_Clone(Windows.Media.Editing.MediaOverlayLayer* return_result);
	HRESULT get_Overlays(Windows.Foundation.Collections.IVector!(Windows.Media.Editing.MediaOverlay)* return_value);
	HRESULT get_CustomCompositorDefinition(Windows.Media.Effects.IVideoCompositorDefinition* return_value);
}

@uuid("947cb473-a39e-4362-abbf-9f8b5070a062")
@WinrtFactory("Windows.Media.Editing.MediaOverlayLayer")
interface IMediaOverlayLayerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithCompositorDefinition(Windows.Media.Effects.IVideoCompositorDefinition compositorDefinition, Windows.Media.Editing.MediaOverlayLayer* return_mediaOverlayLayer);
}

interface BackgroundAudioTrack : Windows.Media.Editing.IBackgroundAudioTrack
{
extern(Windows):
	final Windows.Foundation.TimeSpan TrimTimeFromStart()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IBackgroundAudioTrack).get_TrimTimeFromStart(&_ret));
		return _ret;
	}
	final void TrimTimeFromStart(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Editing.IBackgroundAudioTrack).set_TrimTimeFromStart(value));
	}
	final Windows.Foundation.TimeSpan TrimTimeFromEnd()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IBackgroundAudioTrack).get_TrimTimeFromEnd(&_ret));
		return _ret;
	}
	final void TrimTimeFromEnd(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Editing.IBackgroundAudioTrack).set_TrimTimeFromEnd(value));
	}
	final Windows.Foundation.TimeSpan OriginalDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IBackgroundAudioTrack).get_OriginalDuration(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan TrimmedDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IBackgroundAudioTrack).get_TrimmedDuration(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) UserData()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IBackgroundAudioTrack).get_UserData(&_ret));
		return _ret;
	}
	final void Delay(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Editing.IBackgroundAudioTrack).set_Delay(value));
	}
	final Windows.Foundation.TimeSpan Delay()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IBackgroundAudioTrack).get_Delay(&_ret));
		return _ret;
	}
	final void Volume(double value)
	{
		Debug.OK(this.as!(Windows.Media.Editing.IBackgroundAudioTrack).set_Volume(value));
	}
	final double Volume()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IBackgroundAudioTrack).get_Volume(&_ret));
		return _ret;
	}
	final Windows.Media.Editing.BackgroundAudioTrack Clone()
	{
		Windows.Media.Editing.BackgroundAudioTrack _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IBackgroundAudioTrack).abi_Clone(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.AudioEncodingProperties GetAudioEncodingProperties()
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IBackgroundAudioTrack).abi_GetAudioEncodingProperties(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) AudioEffectDefinitions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IBackgroundAudioTrack).get_AudioEffectDefinitions(&_ret));
		return _ret;
	}

	private static Windows.Media.Editing.IBackgroundAudioTrackStatics _staticInstance;
	public static Windows.Media.Editing.IBackgroundAudioTrackStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Editing.IBackgroundAudioTrackStatics);
		return _staticInstance;
	}
	static Windows.Media.Editing.BackgroundAudioTrack CreateFromEmbeddedAudioTrack(Windows.Media.Editing.EmbeddedAudioTrack embeddedAudioTrack)
	{
		Windows.Media.Editing.BackgroundAudioTrack _ret;
		Debug.OK(staticInstance.as!(Windows.Media.Editing.IBackgroundAudioTrackStatics).abi_CreateFromEmbeddedAudioTrack(embeddedAudioTrack, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.Editing.BackgroundAudioTrack) CreateFromFileAsync(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Editing.BackgroundAudioTrack) _ret;
		Debug.OK(staticInstance.as!(Windows.Media.Editing.IBackgroundAudioTrackStatics).abi_CreateFromFileAsync(file, &_ret));
		return _ret;
	}
}

interface EmbeddedAudioTrack : Windows.Media.Editing.IEmbeddedAudioTrack
{
extern(Windows):
	final Windows.Media.MediaProperties.AudioEncodingProperties GetAudioEncodingProperties()
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IEmbeddedAudioTrack).abi_GetAudioEncodingProperties(&_ret));
		return _ret;
	}
}

interface MediaClip : Windows.Media.Editing.IMediaClip
{
extern(Windows):
	final Windows.Foundation.TimeSpan TrimTimeFromStart()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).get_TrimTimeFromStart(&_ret));
		return _ret;
	}
	final void TrimTimeFromStart(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).set_TrimTimeFromStart(value));
	}
	final Windows.Foundation.TimeSpan TrimTimeFromEnd()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).get_TrimTimeFromEnd(&_ret));
		return _ret;
	}
	final void TrimTimeFromEnd(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).set_TrimTimeFromEnd(value));
	}
	final Windows.Foundation.TimeSpan OriginalDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).get_OriginalDuration(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan TrimmedDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).get_TrimmedDuration(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) UserData()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).get_UserData(&_ret));
		return _ret;
	}
	final Windows.Media.Editing.MediaClip Clone()
	{
		Windows.Media.Editing.MediaClip _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).abi_Clone(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan StartTimeInComposition()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).get_StartTimeInComposition(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan EndTimeInComposition()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).get_EndTimeInComposition(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Editing.EmbeddedAudioTrack) EmbeddedAudioTracks()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Editing.EmbeddedAudioTrack) _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).get_EmbeddedAudioTracks(&_ret));
		return _ret;
	}
	final UINT32 SelectedEmbeddedAudioTrackIndex()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).get_SelectedEmbeddedAudioTrackIndex(&_ret));
		return _ret;
	}
	final void SelectedEmbeddedAudioTrackIndex(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).set_SelectedEmbeddedAudioTrackIndex(value));
	}
	final void Volume(double value)
	{
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).set_Volume(value));
	}
	final double Volume()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).get_Volume(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.VideoEncodingProperties GetVideoEncodingProperties()
	{
		Windows.Media.MediaProperties.VideoEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).abi_GetVideoEncodingProperties(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) AudioEffectDefinitions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).get_AudioEffectDefinitions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IVideoEffectDefinition) VideoEffectDefinitions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IVideoEffectDefinition) _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaClip).get_VideoEffectDefinitions(&_ret));
		return _ret;
	}

	private static Windows.Media.Editing.IMediaClipStatics _staticInstance;
	public static Windows.Media.Editing.IMediaClipStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Editing.IMediaClipStatics);
		return _staticInstance;
	}
	static Windows.Media.Editing.MediaClip CreateFromColor(Windows.UI.Color color, Windows.Foundation.TimeSpan originalDuration)
	{
		Windows.Media.Editing.MediaClip _ret;
		Debug.OK(staticInstance.as!(Windows.Media.Editing.IMediaClipStatics).abi_CreateFromColor(color, originalDuration, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.Editing.MediaClip) CreateFromFileAsync(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Editing.MediaClip) _ret;
		Debug.OK(staticInstance.as!(Windows.Media.Editing.IMediaClipStatics).abi_CreateFromFileAsync(file, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.Editing.MediaClip) CreateFromImageFileAsync(Windows.Storage.IStorageFile file, Windows.Foundation.TimeSpan originalDuration)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Editing.MediaClip) _ret;
		Debug.OK(staticInstance.as!(Windows.Media.Editing.IMediaClipStatics).abi_CreateFromImageFileAsync(file, originalDuration, &_ret));
		return _ret;
	}
}

interface MediaComposition : Windows.Media.Editing.IMediaComposition, Windows.Media.Editing.IMediaComposition2
{
extern(Windows):
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaComposition).get_Duration(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Editing.MediaClip) Clips()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Editing.MediaClip) _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaComposition).get_Clips(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Editing.BackgroundAudioTrack) BackgroundAudioTracks()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Editing.BackgroundAudioTrack) _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaComposition).get_BackgroundAudioTracks(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) UserData()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaComposition).get_UserData(&_ret));
		return _ret;
	}
	final Windows.Media.Editing.MediaComposition Clone()
	{
		Windows.Media.Editing.MediaComposition _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaComposition).abi_Clone(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SaveAsync(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaComposition).abi_SaveAsync(file, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.ImageStream) GetThumbnailAsync(Windows.Foundation.TimeSpan timeFromStart, INT32 scaledWidth, INT32 scaledHeight, Windows.Media.Editing.VideoFramePrecision framePrecision)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.ImageStream) _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaComposition).abi_GetThumbnailAsync(timeFromStart, scaledWidth, scaledHeight, framePrecision, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Imaging.ImageStream)) GetThumbnailsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.TimeSpan) timesFromStart, INT32 scaledWidth, INT32 scaledHeight, Windows.Media.Editing.VideoFramePrecision framePrecision)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Imaging.ImageStream)) _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaComposition).abi_GetThumbnailsAsync(timesFromStart, scaledWidth, scaledHeight, framePrecision, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Transcoding.TranscodeFailureReason, double) RenderToFileAsync(Windows.Storage.IStorageFile destination)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Transcoding.TranscodeFailureReason, double) _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaComposition).abi_RenderToFileAsync(destination, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Transcoding.TranscodeFailureReason, double) RenderToFileWithTrimmingPreferenceAsync(Windows.Storage.IStorageFile destination, Windows.Media.Editing.MediaTrimmingPreference trimmingPreference)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Transcoding.TranscodeFailureReason, double) _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaComposition).abi_RenderToFileWithTrimmingPreferenceAsync(destination, trimmingPreference, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Transcoding.TranscodeFailureReason, double) RenderToFileWithProfileAsync(Windows.Storage.IStorageFile destination, Windows.Media.Editing.MediaTrimmingPreference trimmingPreference, Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Transcoding.TranscodeFailureReason, double) _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaComposition).abi_RenderToFileWithProfileAsync(destination, trimmingPreference, encodingProfile, &_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.MediaEncodingProfile CreateDefaultEncodingProfile()
	{
		Windows.Media.MediaProperties.MediaEncodingProfile _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaComposition).abi_CreateDefaultEncodingProfile(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MediaStreamSource GenerateMediaStreamSource()
	{
		Windows.Media.Core.MediaStreamSource _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaComposition).abi_GenerateMediaStreamSource(&_ret));
		return _ret;
	}
	final Windows.Media.Core.MediaStreamSource GenerateMediaStreamSourceWithProfile(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile)
	{
		Windows.Media.Core.MediaStreamSource _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaComposition).abi_GenerateMediaStreamSourceWithProfile(encodingProfile, &_ret));
		return _ret;
	}
	final Windows.Media.Core.MediaStreamSource GeneratePreviewMediaStreamSource(INT32 scaledWidth, INT32 scaledHeight)
	{
		Windows.Media.Core.MediaStreamSource _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaComposition).abi_GeneratePreviewMediaStreamSource(scaledWidth, scaledHeight, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Editing.MediaOverlayLayer) OverlayLayers()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Editing.MediaOverlayLayer) _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaComposition2).get_OverlayLayers(&_ret));
		return _ret;
	}

	private static Windows.Media.Editing.IMediaCompositionStatics _staticInstance;
	public static Windows.Media.Editing.IMediaCompositionStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Editing.IMediaCompositionStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.Editing.MediaComposition) LoadAsync(Windows.Storage.StorageFile file)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Editing.MediaComposition) _ret;
		Debug.OK(staticInstance.as!(Windows.Media.Editing.IMediaCompositionStatics).abi_LoadAsync(file, &_ret));
		return _ret;
	}
	static MediaComposition New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MediaComposition).abi_ActivateInstance(&ret));
		return ret.as!(MediaComposition);
	}
}

interface MediaOverlay : Windows.Media.Editing.IMediaOverlay
{
extern(Windows):
	final Windows.Foundation.Rect Position()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaOverlay).get_Position(&_ret));
		return _ret;
	}
	final void Position(Windows.Foundation.Rect value)
	{
		Debug.OK(this.as!(Windows.Media.Editing.IMediaOverlay).set_Position(value));
	}
	final void Delay(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Editing.IMediaOverlay).set_Delay(value));
	}
	final Windows.Foundation.TimeSpan Delay()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaOverlay).get_Delay(&_ret));
		return _ret;
	}
	final double Opacity()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaOverlay).get_Opacity(&_ret));
		return _ret;
	}
	final void Opacity(double value)
	{
		Debug.OK(this.as!(Windows.Media.Editing.IMediaOverlay).set_Opacity(value));
	}
	final Windows.Media.Editing.MediaOverlay Clone()
	{
		Windows.Media.Editing.MediaOverlay _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaOverlay).abi_Clone(&_ret));
		return _ret;
	}
	final Windows.Media.Editing.MediaClip Clip()
	{
		Windows.Media.Editing.MediaClip _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaOverlay).get_Clip(&_ret));
		return _ret;
	}
	final bool AudioEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaOverlay).get_AudioEnabled(&_ret));
		return _ret;
	}
	final void AudioEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Editing.IMediaOverlay).set_AudioEnabled(value));
	}
	static Windows.Media.Editing.MediaOverlay New(Windows.Media.Editing.MediaClip clip)
	{
		auto factory = factory!(Windows.Media.Editing.IMediaOverlayFactory);
		Windows.Media.Editing.MediaOverlay _ret;
		Debug.OK(factory.as!(Windows.Media.Editing.IMediaOverlayFactory).abi_Create(clip, &_ret));
		return _ret;
	}
	static Windows.Media.Editing.MediaOverlay New(Windows.Media.Editing.MediaClip clip, Windows.Foundation.Rect position, double opacity)
	{
		auto factory = factory!(Windows.Media.Editing.IMediaOverlayFactory);
		Windows.Media.Editing.MediaOverlay _ret;
		Debug.OK(factory.as!(Windows.Media.Editing.IMediaOverlayFactory).abi_CreateWithPositionAndOpacity(clip, position, opacity, &_ret));
		return _ret;
	}
}

interface MediaOverlayLayer : Windows.Media.Editing.IMediaOverlayLayer
{
extern(Windows):
	final Windows.Media.Editing.MediaOverlayLayer Clone()
	{
		Windows.Media.Editing.MediaOverlayLayer _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaOverlayLayer).abi_Clone(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Editing.MediaOverlay) Overlays()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Editing.MediaOverlay) _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaOverlayLayer).get_Overlays(&_ret));
		return _ret;
	}
	final Windows.Media.Effects.IVideoCompositorDefinition CustomCompositorDefinition()
	{
		Windows.Media.Effects.IVideoCompositorDefinition _ret;
		Debug.OK(this.as!(Windows.Media.Editing.IMediaOverlayLayer).get_CustomCompositorDefinition(&_ret));
		return _ret;
	}
	static MediaOverlayLayer New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MediaOverlayLayer).abi_ActivateInstance(&ret));
		return ret.as!(MediaOverlayLayer);
	}
	static Windows.Media.Editing.MediaOverlayLayer New(Windows.Media.Effects.IVideoCompositorDefinition compositorDefinition)
	{
		auto factory = factory!(Windows.Media.Editing.IMediaOverlayLayerFactory);
		Windows.Media.Editing.MediaOverlayLayer _ret;
		Debug.OK(factory.as!(Windows.Media.Editing.IMediaOverlayLayerFactory).abi_CreateWithCompositorDefinition(compositorDefinition, &_ret));
		return _ret;
	}
}

enum MediaTrimmingPreference
{
	Fast = 0,
	Precise = 1
}

enum VideoFramePrecision
{
	NearestFrame = 0,
	NearestKeyFrame = 1
}