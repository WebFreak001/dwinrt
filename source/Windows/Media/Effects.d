module Windows.Media.Effects;

import dwinrt;

@uuid("8f85c271-038d-4393-8298-540110608eef")
@WinrtFactory("Windows.Media.Effects.AudioCaptureEffectsManager")
interface IAudioCaptureEffectsManager : IInspectable
{
extern(Windows):
	HRESULT add_AudioCaptureEffectsChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Effects.AudioCaptureEffectsManager, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_AudioCaptureEffectsChanged(EventRegistrationToken token);
	HRESULT abi_GetAudioCaptureEffects(Windows.Foundation.Collections.IVectorView!(Windows.Media.Effects.AudioEffect)* return_effects);
}

@uuid("34aafa51-9207-4055-be93-6e5734a86ae4")
@WinrtFactory("Windows.Media.Effects.AudioEffect")
interface IAudioEffect : IInspectable
{
extern(Windows):
	HRESULT get_AudioEffectType(Windows.Media.Effects.AudioEffectType* return_value);
}

@uuid("e4d7f974-7d80-4f73-9089-e31c9db9c294")
interface IAudioEffectDefinition : IInspectable
{
extern(Windows):
	HRESULT get_ActivatableClassId(HSTRING* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IPropertySet* return_value);
}

@uuid("8e1da646-e705-45ed-8a2b-fc4e4f405a97")
@WinrtFactory("Windows.Media.Effects.AudioEffectDefinition")
interface IAudioEffectDefinitionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING activatableClassId, Windows.Media.Effects.AudioEffectDefinition* return_value);
	HRESULT abi_CreateWithProperties(HSTRING activatableClassId, Windows.Foundation.Collections.IPropertySet props, Windows.Media.Effects.AudioEffectDefinition* return_value);
}

@uuid("66406c04-86fa-47cc-a315-f489d8c3fe10")
@WinrtFactory("Windows.Media.Effects.AudioEffectsManager")
interface IAudioEffectsManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAudioRenderEffectsManager(HSTRING deviceId, Windows.Media.Render.AudioRenderCategory category, Windows.Media.Effects.AudioRenderEffectsManager* return_value);
	HRESULT abi_CreateAudioRenderEffectsManagerWithMode(HSTRING deviceId, Windows.Media.Render.AudioRenderCategory category, Windows.Media.AudioProcessing mode, Windows.Media.Effects.AudioRenderEffectsManager* return_value);
	HRESULT abi_CreateAudioCaptureEffectsManager(HSTRING deviceId, Windows.Media.Capture.MediaCategory category, Windows.Media.Effects.AudioCaptureEffectsManager* return_value);
	HRESULT abi_CreateAudioCaptureEffectsManagerWithMode(HSTRING deviceId, Windows.Media.Capture.MediaCategory category, Windows.Media.AudioProcessing mode, Windows.Media.Effects.AudioCaptureEffectsManager* return_value);
}

@uuid("4dc98966-8751-42b2-bfcb-39ca7864bd47")
@WinrtFactory("Windows.Media.Effects.AudioRenderEffectsManager")
interface IAudioRenderEffectsManager : IInspectable
{
extern(Windows):
	HRESULT add_AudioRenderEffectsChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Effects.AudioRenderEffectsManager, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_AudioRenderEffectsChanged(EventRegistrationToken token);
	HRESULT abi_GetAudioRenderEffects(Windows.Foundation.Collections.IVectorView!(Windows.Media.Effects.AudioEffect)* return_effects);
}

@uuid("a844cd09-5ecc-44b3-bb4e-1db07287139c")
@WinrtFactory("Windows.Media.Effects.AudioRenderEffectsManager")
interface IAudioRenderEffectsManager2 : IInspectable
{
extern(Windows):
	deprecated("Not supported starting in windows 10")
	HRESULT get_EffectsProviderThumbnail(Windows.Storage.Streams.IRandomAccessStreamWithContentType* return_value);
	deprecated("Not supported starting in windows 10")
	HRESULT get_EffectsProviderSettingsLabel(HSTRING* return_value);
	deprecated("Not supported starting in windows 10")
	HRESULT abi_ShowSettingsUI();
}

@uuid("8c062c53-6bc0-48b8-a99a-4b41550f1359")
interface IBasicAudioEffect : IInspectable
{
extern(Windows):
	HRESULT get_UseInputFrameForOutput(bool* return_value);
	HRESULT get_SupportedEncodingProperties(Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaProperties.AudioEncodingProperties)* return_value);
	HRESULT abi_SetEncodingProperties(Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties);
	HRESULT abi_ProcessFrame(Windows.Media.Effects.ProcessAudioFrameContext context);
	HRESULT abi_Close(Windows.Media.Effects.MediaEffectClosedReason reason);
	HRESULT abi_DiscardQueuedFrames();
}

@uuid("8262c7ef-b360-40be-949b-2ff42ff35693")
interface IBasicVideoEffect : IInspectable
{
extern(Windows):
	HRESULT get_IsReadOnly(bool* return_value);
	HRESULT get_SupportedMemoryTypes(Windows.Media.Effects.MediaMemoryTypes* return_value);
	HRESULT get_TimeIndependent(bool* return_value);
	HRESULT get_SupportedEncodingProperties(Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaProperties.VideoEncodingProperties)* return_value);
	HRESULT abi_SetEncodingProperties(Windows.Media.MediaProperties.VideoEncodingProperties encodingProperties, Windows.Graphics.DirectX.Direct3D11.IDirect3DDevice device);
	HRESULT abi_ProcessFrame(Windows.Media.Effects.ProcessVideoFrameContext context);
	HRESULT abi_Close(Windows.Media.Effects.MediaEffectClosedReason reason);
	HRESULT abi_DiscardQueuedFrames();
}

@uuid("6c30024b-f514-4278-a5f7-b9188049d110")
@WinrtFactory("Windows.Media.Effects.CompositeVideoFrameContext")
interface ICompositeVideoFrameContext : IInspectable
{
extern(Windows):
	HRESULT get_SurfacesToOverlay(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface)* return_value);
	HRESULT get_BackgroundFrame(Windows.Media.VideoFrame* return_value);
	HRESULT get_OutputFrame(Windows.Media.VideoFrame* return_value);
	HRESULT abi_GetOverlayForSurface(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface surfaceToOverlay, Windows.Media.Editing.MediaOverlay* return_value);
}

@uuid("4cd92946-1222-4a27-a586-fb3e20273255")
@WinrtFactory("Windows.Media.Effects.ProcessAudioFrameContext")
interface IProcessAudioFrameContext : IInspectable
{
extern(Windows):
	HRESULT get_InputFrame(Windows.Media.AudioFrame* return_value);
	HRESULT get_OutputFrame(Windows.Media.AudioFrame* return_value);
}

@uuid("276f0e2b-6461-401e-ba78-0fdad6114eec")
@WinrtFactory("Windows.Media.Effects.ProcessVideoFrameContext")
interface IProcessVideoFrameContext : IInspectable
{
extern(Windows):
	HRESULT get_InputFrame(Windows.Media.VideoFrame* return_value);
	HRESULT get_OutputFrame(Windows.Media.VideoFrame* return_value);
}

@uuid("8510b43e-420c-420f-96c7-7c98bba1fc55")
interface IVideoCompositor : IInspectable
{
extern(Windows):
	HRESULT get_TimeIndependent(bool* return_value);
	HRESULT abi_SetEncodingProperties(Windows.Media.MediaProperties.VideoEncodingProperties backgroundProperties, Windows.Graphics.DirectX.Direct3D11.IDirect3DDevice device);
	HRESULT abi_CompositeFrame(Windows.Media.Effects.CompositeVideoFrameContext context);
	HRESULT abi_Close(Windows.Media.Effects.MediaEffectClosedReason reason);
	HRESULT abi_DiscardQueuedFrames();
}

@uuid("7946b8d0-2010-4ae3-9ab2-2cef42edd4d2")
interface IVideoCompositorDefinition : IInspectable
{
extern(Windows):
	HRESULT get_ActivatableClassId(HSTRING* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IPropertySet* return_value);
}

@uuid("4366fd10-68b8-4d52-89b6-02a968cca899")
@WinrtFactory("Windows.Media.Effects.VideoCompositorDefinition")
interface IVideoCompositorDefinitionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING activatableClassId, Windows.Media.Effects.VideoCompositorDefinition* return_value);
	HRESULT abi_CreateWithProperties(HSTRING activatableClassId, Windows.Foundation.Collections.IPropertySet props, Windows.Media.Effects.VideoCompositorDefinition* return_value);
}

@uuid("39f38cf0-8d0f-4f3e-84fc-2d46a5297943")
interface IVideoEffectDefinition : IInspectable
{
extern(Windows):
	HRESULT get_ActivatableClassId(HSTRING* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IPropertySet* return_value);
}

@uuid("81439b4e-6e33-428f-9d21-b5aafef7617c")
@WinrtFactory("Windows.Media.Effects.VideoEffectDefinition")
interface IVideoEffectDefinitionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING activatableClassId, Windows.Media.Effects.VideoEffectDefinition* return_value);
	HRESULT abi_CreateWithProperties(HSTRING activatableClassId, Windows.Foundation.Collections.IPropertySet props, Windows.Media.Effects.VideoEffectDefinition* return_value);
}

@uuid("9664bb6a-1ea6-4aa6-8074-abe8851ecae2")
@WinrtFactory("Windows.Media.Effects.VideoTransformEffectDefinition")
interface IVideoTransformEffectDefinition : IInspectable
{
extern(Windows):
	HRESULT get_PaddingColor(Windows.UI.Color* return_value);
	HRESULT set_PaddingColor(Windows.UI.Color value);
	HRESULT get_OutputSize(Windows.Foundation.Size* return_value);
	HRESULT set_OutputSize(Windows.Foundation.Size value);
	HRESULT get_CropRectangle(Windows.Foundation.Rect* return_value);
	HRESULT set_CropRectangle(Windows.Foundation.Rect value);
	HRESULT get_Rotation(Windows.Media.MediaProperties.MediaRotation* return_value);
	HRESULT set_Rotation(Windows.Media.MediaProperties.MediaRotation value);
	HRESULT get_Mirror(Windows.Media.MediaProperties.MediaMirroringOptions* return_value);
	HRESULT set_Mirror(Windows.Media.MediaProperties.MediaMirroringOptions value);
	HRESULT set_ProcessingAlgorithm(Windows.Media.Transcoding.MediaVideoProcessingAlgorithm value);
	HRESULT get_ProcessingAlgorithm(Windows.Media.Transcoding.MediaVideoProcessingAlgorithm* return_value);
}

interface AudioCaptureEffectsManager : Windows.Media.Effects.IAudioCaptureEffectsManager
{
extern(Windows):
	final void removeAudioCaptureEffectsChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_AudioCaptureEffectsChanged(token));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Effects.AudioEffect) GetAudioCaptureEffects()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Effects.AudioEffect) _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IAudioCaptureEffectsManager).abi_GetAudioCaptureEffects(&_ret));
		return _ret;
	}
}

interface AudioEffect : Windows.Media.Effects.IAudioEffect
{
extern(Windows):
	final Windows.Media.Effects.AudioEffectType AudioEffectType()
	{
		Windows.Media.Effects.AudioEffectType _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IAudioEffect).get_AudioEffectType(&_ret));
		return _ret;
	}
}

interface AudioEffectDefinition : Windows.Media.Effects.IAudioEffectDefinition
{
extern(Windows):
	final HSTRING ActivatableClassId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IAudioEffectDefinition).get_ActivatableClassId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IPropertySet Properties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IAudioEffectDefinition).get_Properties(&_ret));
		return _ret;
	}
}

interface AudioEffectsManager
{
}

interface AudioRenderEffectsManager : Windows.Media.Effects.IAudioRenderEffectsManager, Windows.Media.Effects.IAudioRenderEffectsManager2
{
extern(Windows):
	final void removeAudioRenderEffectsChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_AudioRenderEffectsChanged(token));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Effects.AudioEffect) GetAudioRenderEffects()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Effects.AudioEffect) _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IAudioRenderEffectsManager).abi_GetAudioRenderEffects(&_ret));
		return _ret;
	}
	deprecated("Not supported starting in windows 10")
	final Windows.Storage.Streams.IRandomAccessStreamWithContentType EffectsProviderThumbnail()
	{
		Windows.Storage.Streams.IRandomAccessStreamWithContentType _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IAudioRenderEffectsManager2).get_EffectsProviderThumbnail(&_ret));
		return _ret;
	}
	deprecated("Not supported starting in windows 10")
	final HSTRING EffectsProviderSettingsLabel()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IAudioRenderEffectsManager2).get_EffectsProviderSettingsLabel(&_ret));
		return _ret;
	}
	deprecated("Not supported starting in windows 10")
	final void ShowSettingsUI()
	{
		Debug.OK(this.as!(Windows.Media.Effects.IAudioRenderEffectsManager2).abi_ShowSettingsUI());
	}
}

interface CompositeVideoFrameContext : Windows.Media.Effects.ICompositeVideoFrameContext
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface) SurfacesToOverlay()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface) _ret;
		Debug.OK(this.as!(Windows.Media.Effects.ICompositeVideoFrameContext).get_SurfacesToOverlay(&_ret));
		return _ret;
	}
	final Windows.Media.VideoFrame BackgroundFrame()
	{
		Windows.Media.VideoFrame _ret;
		Debug.OK(this.as!(Windows.Media.Effects.ICompositeVideoFrameContext).get_BackgroundFrame(&_ret));
		return _ret;
	}
	final Windows.Media.VideoFrame OutputFrame()
	{
		Windows.Media.VideoFrame _ret;
		Debug.OK(this.as!(Windows.Media.Effects.ICompositeVideoFrameContext).get_OutputFrame(&_ret));
		return _ret;
	}
	final Windows.Media.Editing.MediaOverlay GetOverlayForSurface(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface surfaceToOverlay)
	{
		Windows.Media.Editing.MediaOverlay _ret;
		Debug.OK(this.as!(Windows.Media.Effects.ICompositeVideoFrameContext).abi_GetOverlayForSurface(surfaceToOverlay, &_ret));
		return _ret;
	}
}

interface ProcessAudioFrameContext : Windows.Media.Effects.IProcessAudioFrameContext
{
extern(Windows):
	final Windows.Media.AudioFrame InputFrame()
	{
		Windows.Media.AudioFrame _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IProcessAudioFrameContext).get_InputFrame(&_ret));
		return _ret;
	}
	final Windows.Media.AudioFrame OutputFrame()
	{
		Windows.Media.AudioFrame _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IProcessAudioFrameContext).get_OutputFrame(&_ret));
		return _ret;
	}
}

interface ProcessVideoFrameContext : Windows.Media.Effects.IProcessVideoFrameContext
{
extern(Windows):
	final Windows.Media.VideoFrame InputFrame()
	{
		Windows.Media.VideoFrame _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IProcessVideoFrameContext).get_InputFrame(&_ret));
		return _ret;
	}
	final Windows.Media.VideoFrame OutputFrame()
	{
		Windows.Media.VideoFrame _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IProcessVideoFrameContext).get_OutputFrame(&_ret));
		return _ret;
	}
}

interface VideoCompositorDefinition : Windows.Media.Effects.IVideoCompositorDefinition
{
extern(Windows):
	final HSTRING ActivatableClassId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IVideoCompositorDefinition).get_ActivatableClassId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IPropertySet Properties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IVideoCompositorDefinition).get_Properties(&_ret));
		return _ret;
	}
}

interface VideoEffectDefinition : Windows.Media.Effects.IVideoEffectDefinition
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

interface VideoTransformEffectDefinition : Windows.Media.Effects.IVideoEffectDefinition, Windows.Media.Effects.IVideoTransformEffectDefinition
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
	final Windows.UI.Color PaddingColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IVideoTransformEffectDefinition).get_PaddingColor(&_ret));
		return _ret;
	}
	final void PaddingColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.Media.Effects.IVideoTransformEffectDefinition).set_PaddingColor(value));
	}
	final Windows.Foundation.Size OutputSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IVideoTransformEffectDefinition).get_OutputSize(&_ret));
		return _ret;
	}
	final void OutputSize(Windows.Foundation.Size value)
	{
		Debug.OK(this.as!(Windows.Media.Effects.IVideoTransformEffectDefinition).set_OutputSize(value));
	}
	final Windows.Foundation.Rect CropRectangle()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IVideoTransformEffectDefinition).get_CropRectangle(&_ret));
		return _ret;
	}
	final void CropRectangle(Windows.Foundation.Rect value)
	{
		Debug.OK(this.as!(Windows.Media.Effects.IVideoTransformEffectDefinition).set_CropRectangle(value));
	}
	final Windows.Media.MediaProperties.MediaRotation Rotation()
	{
		Windows.Media.MediaProperties.MediaRotation _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IVideoTransformEffectDefinition).get_Rotation(&_ret));
		return _ret;
	}
	final void Rotation(Windows.Media.MediaProperties.MediaRotation value)
	{
		Debug.OK(this.as!(Windows.Media.Effects.IVideoTransformEffectDefinition).set_Rotation(value));
	}
	final Windows.Media.MediaProperties.MediaMirroringOptions Mirror()
	{
		Windows.Media.MediaProperties.MediaMirroringOptions _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IVideoTransformEffectDefinition).get_Mirror(&_ret));
		return _ret;
	}
	final void Mirror(Windows.Media.MediaProperties.MediaMirroringOptions value)
	{
		Debug.OK(this.as!(Windows.Media.Effects.IVideoTransformEffectDefinition).set_Mirror(value));
	}
	final void ProcessingAlgorithm(Windows.Media.Transcoding.MediaVideoProcessingAlgorithm value)
	{
		Debug.OK(this.as!(Windows.Media.Effects.IVideoTransformEffectDefinition).set_ProcessingAlgorithm(value));
	}
	final Windows.Media.Transcoding.MediaVideoProcessingAlgorithm ProcessingAlgorithm()
	{
		Windows.Media.Transcoding.MediaVideoProcessingAlgorithm _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IVideoTransformEffectDefinition).get_ProcessingAlgorithm(&_ret));
		return _ret;
	}
}

enum AudioEffectType
{
	Other = 0,
	AcousticEchoCancellation = 1,
	NoiseSuppression = 2,
	AutomaticGainControl = 3,
	BeamForming = 4,
	ConstantToneRemoval = 5,
	Equalizer = 6,
	LoudnessEqualizer = 7,
	BassBoost = 8,
	VirtualSurround = 9,
	VirtualHeadphones = 10,
	SpeakerFill = 11,
	RoomCorrection = 12,
	BassManagement = 13,
	EnvironmentalEffects = 14,
	SpeakerProtection = 15,
	SpeakerCompensation = 16,
	DynamicRangeCompression = 17
}

enum MediaEffectClosedReason
{
	Done = 0,
	UnknownError = 1,
	UnsupportedEncodingFormat = 2,
	EffectCurrentlyUnloaded = 3
}

enum MediaMemoryTypes
{
	Gpu = 0,
	Cpu = 1,
	GpuAndCpu = 2
}