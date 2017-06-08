module Windows.Media.Editing;

import dwinrt;

@uuid("4b91b3bd-9e21-4266-a9c2-67dd011a2357")
@WinrtFactory("Windows.Media.Editing.BackgroundAudioTrack")
interface IBackgroundAudioTrack : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFromEmbeddedAudioTrack(Windows.Media.Editing.EmbeddedAudioTrack embeddedAudioTrack, Windows.Media.Editing.BackgroundAudioTrack* return_value);
	HRESULT abi_CreateFromFileAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Media.Editing.BackgroundAudioTrack)* return_operation);
}

@uuid("55ee5a7a-2d30-3fba-a190-4f1a6454f88f")
@WinrtFactory("Windows.Media.Editing.EmbeddedAudioTrack")
interface IEmbeddedAudioTrack : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetAudioEncodingProperties(Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
}

@uuid("53f25366-5fba-3ea4-8693-24761811140a")
@WinrtFactory("Windows.Media.Editing.MediaClip")
interface IMediaClip : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFromColor(Windows.UI.Color color, Windows.Foundation.TimeSpan originalDuration, Windows.Media.Editing.MediaClip* return_value);
	HRESULT abi_CreateFromFileAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Media.Editing.MediaClip)* return_operation);
	HRESULT abi_CreateFromImageFileAsync(Windows.Storage.IStorageFile file, Windows.Foundation.TimeSpan originalDuration, Windows.Foundation.IAsyncOperation!(Windows.Media.Editing.MediaClip)* return_operation);
}

@uuid("5b1dd7b3-854e-4d9b-877d-4774a556cd12")
@WinrtFactory("Windows.Media.Editing.MediaClip")
interface IMediaClipStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFromSurface(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface surface, Windows.Foundation.TimeSpan originalDuration, Windows.Media.Editing.MediaClip* return_value);
}

@uuid("2e06e605-dc71-41d6-b837-2d2bc14a2947")
@WinrtFactory("Windows.Media.Editing.MediaComposition")
interface IMediaComposition : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OverlayLayers(Windows.Foundation.Collections.IVector!(Windows.Media.Editing.MediaOverlayLayer)* return_value);
}

@uuid("87a08f04-e32a-45ce-8f66-a30df0766224")
@WinrtFactory("Windows.Media.Editing.MediaComposition")
interface IMediaCompositionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_LoadAsync(Windows.Storage.StorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Media.Editing.MediaComposition)* return_operation);
}

@uuid("a902ae5d-7869-4830-8ab1-94dc01c05fa4")
@WinrtFactory("Windows.Media.Editing.MediaOverlay")
interface IMediaOverlay : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Media.Editing.MediaClip clip, Windows.Media.Editing.MediaOverlay* return_mediaOverlay);
	HRESULT abi_CreateWithPositionAndOpacity(Windows.Media.Editing.MediaClip clip, Windows.Foundation.Rect position, double opacity, Windows.Media.Editing.MediaOverlay* return_mediaOverlay);
}

@uuid("a6d9ba57-eeda-46c6-bbe5-e398c84168ac")
@WinrtFactory("Windows.Media.Editing.MediaOverlayLayer")
interface IMediaOverlayLayer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Clone(Windows.Media.Editing.MediaOverlayLayer* return_result);
	HRESULT get_Overlays(Windows.Foundation.Collections.IVector!(Windows.Media.Editing.MediaOverlay)* return_value);
	HRESULT get_CustomCompositorDefinition(Windows.Media.Effects.IVideoCompositorDefinition* return_value);
}

@uuid("947cb473-a39e-4362-abbf-9f8b5070a062")
@WinrtFactory("Windows.Media.Editing.MediaOverlayLayer")
interface IMediaOverlayLayerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWithCompositorDefinition(Windows.Media.Effects.IVideoCompositorDefinition compositorDefinition, Windows.Media.Editing.MediaOverlayLayer* return_mediaOverlayLayer);
}

interface BackgroundAudioTrack : Windows.Media.Editing.IBackgroundAudioTrack
{
}

interface EmbeddedAudioTrack : Windows.Media.Editing.IEmbeddedAudioTrack
{
}

interface MediaClip : Windows.Media.Editing.IMediaClip
{
}

interface MediaComposition : Windows.Media.Editing.IMediaComposition, Windows.Media.Editing.IMediaComposition2
{
}

interface MediaOverlay : Windows.Media.Editing.IMediaOverlay
{
}

interface MediaOverlayLayer : Windows.Media.Editing.IMediaOverlayLayer
{
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