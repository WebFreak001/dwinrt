module Windows.Media.MediaProperties;

import dwinrt;

@uuid("62bc7a16-005c-4b3b-8a0b-0a090e9687f3")
@WinrtFactory("Windows.Media.MediaProperties.AudioEncodingProperties")
interface IAudioEncodingProperties_Base : IInspectable
{
extern(Windows):
	HRESULT set_Bitrate(UINT32 value);
	HRESULT get_Bitrate(UINT32* return_value);
	HRESULT set_ChannelCount(UINT32 value);
	HRESULT get_ChannelCount(UINT32* return_value);
	HRESULT set_SampleRate(UINT32 value);
	HRESULT get_SampleRate(UINT32* return_value);
	HRESULT set_BitsPerSample(UINT32 value);
	HRESULT get_BitsPerSample(UINT32* return_value);
}
@uuid("62bc7a16-005c-4b3b-8a0b-0a090e9687f3")
@WinrtFactory("Windows.Media.MediaProperties.AudioEncodingProperties")
interface IAudioEncodingProperties : IAudioEncodingProperties_Base, Windows.Media.MediaProperties.IMediaEncodingProperties {}

@uuid("c45d54da-80bd-4c23-80d5-72d4a181e894")
@WinrtFactory("Windows.Media.MediaProperties.AudioEncodingProperties")
interface IAudioEncodingProperties2 : IInspectable
{
extern(Windows):
	HRESULT get_IsSpatial(bool* return_value);
}

@uuid("0cad332c-ebe9-4527-b36d-e42a13cf38db")
@WinrtFactory("Windows.Media.MediaProperties.AudioEncodingProperties")
interface IAudioEncodingPropertiesStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAac(UINT32 sampleRate, UINT32 channelCount, UINT32 bitrate, Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT abi_CreateAacAdts(UINT32 sampleRate, UINT32 channelCount, UINT32 bitrate, Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT abi_CreateMp3(UINT32 sampleRate, UINT32 channelCount, UINT32 bitrate, Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT abi_CreatePcm(UINT32 sampleRate, UINT32 channelCount, UINT32 bitsPerSample, Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT abi_CreateWma(UINT32 sampleRate, UINT32 channelCount, UINT32 bitrate, Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
}

@uuid("7489316f-77a0-433d-8ed5-4040280e8665")
@WinrtFactory("Windows.Media.MediaProperties.AudioEncodingProperties")
interface IAudioEncodingPropertiesStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAlac(UINT32 sampleRate, UINT32 channelCount, UINT32 bitsPerSample, Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT abi_CreateFlac(UINT32 sampleRate, UINT32 channelCount, UINT32 bitsPerSample, Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
}

@uuid("98f10d79-13ea-49ff-be70-2673db69702c")
@WinrtFactory("Windows.Media.MediaProperties.AudioEncodingProperties")
interface IAudioEncodingPropertiesWithFormatUserData : IInspectable
{
extern(Windows):
	HRESULT abi_SetFormatUserData(UINT32 __valueSize, ubyte* value);
	HRESULT abi_GetFormatUserData(UINT32* out___valueSize, ubyte** out_value);
}

@uuid("59ac2a57-b32a-479e-8a61-4b7f2e9e7ea0")
@WinrtFactory("Windows.Media.MediaProperties.ContainerEncodingProperties")
interface IContainerEncodingProperties_Base : IInspectable
{
}
@uuid("59ac2a57-b32a-479e-8a61-4b7f2e9e7ea0")
@WinrtFactory("Windows.Media.MediaProperties.ContainerEncodingProperties")
interface IContainerEncodingProperties : IContainerEncodingProperties_Base, Windows.Media.MediaProperties.IMediaEncodingProperties {}

@uuid("38654ca7-846a-4f97-a2e5-c3a15bbf70fd")
@WinrtFactory("Windows.Media.MediaProperties.H264ProfileIds")
interface IH264ProfileIdsStatics : IInspectable
{
extern(Windows):
	HRESULT get_ConstrainedBaseline(INT32* return_value);
	HRESULT get_Baseline(INT32* return_value);
	HRESULT get_Extended(INT32* return_value);
	HRESULT get_Main(INT32* return_value);
	HRESULT get_High(INT32* return_value);
	HRESULT get_High10(INT32* return_value);
	HRESULT get_High422(INT32* return_value);
	HRESULT get_High444(INT32* return_value);
	HRESULT get_StereoHigh(INT32* return_value);
	HRESULT get_MultiviewHigh(INT32* return_value);
}

@uuid("78625635-f331-4189-b1c3-b48d5ae034f1")
@WinrtFactory("Windows.Media.MediaProperties.ImageEncodingProperties")
interface IImageEncodingProperties_Base : IInspectable
{
extern(Windows):
	HRESULT set_Width(UINT32 value);
	HRESULT get_Width(UINT32* return_value);
	HRESULT set_Height(UINT32 value);
	HRESULT get_Height(UINT32* return_value);
}
@uuid("78625635-f331-4189-b1c3-b48d5ae034f1")
@WinrtFactory("Windows.Media.MediaProperties.ImageEncodingProperties")
interface IImageEncodingProperties : IImageEncodingProperties_Base, Windows.Media.MediaProperties.IMediaEncodingProperties {}

@uuid("257c68dc-8b99-439e-aa59-913a36161297")
@WinrtFactory("Windows.Media.MediaProperties.ImageEncodingProperties")
interface IImageEncodingPropertiesStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateJpeg(Windows.Media.MediaProperties.ImageEncodingProperties* return_value);
	HRESULT abi_CreatePng(Windows.Media.MediaProperties.ImageEncodingProperties* return_value);
	HRESULT abi_CreateJpegXR(Windows.Media.MediaProperties.ImageEncodingProperties* return_value);
}

@uuid("f6c25b29-3824-46b0-956e-501329e1be3c")
@WinrtFactory("Windows.Media.MediaProperties.ImageEncodingProperties")
interface IImageEncodingPropertiesStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateUncompressed(Windows.Media.MediaProperties.MediaPixelFormat format, Windows.Media.MediaProperties.ImageEncodingProperties* return_value);
	HRESULT abi_CreateBmp(Windows.Media.MediaProperties.ImageEncodingProperties* return_value);
}

@uuid("e7dbf5a8-1db9-4783-876b-3dfe12acfdb3")
@WinrtFactory("Windows.Media.MediaProperties.MediaEncodingProfile")
interface IMediaEncodingProfile : IInspectable
{
extern(Windows):
	HRESULT set_Audio(Windows.Media.MediaProperties.AudioEncodingProperties value);
	HRESULT get_Audio(Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT set_Video(Windows.Media.MediaProperties.VideoEncodingProperties value);
	HRESULT get_Video(Windows.Media.MediaProperties.VideoEncodingProperties* return_value);
	HRESULT set_Container(Windows.Media.MediaProperties.ContainerEncodingProperties value);
	HRESULT get_Container(Windows.Media.MediaProperties.ContainerEncodingProperties* return_value);
}

@uuid("197f352c-2ede-4a45-a896-817a4854f8fe")
@WinrtFactory("Windows.Media.MediaProperties.MediaEncodingProfile")
interface IMediaEncodingProfileStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateM4a(Windows.Media.MediaProperties.AudioEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_CreateMp3(Windows.Media.MediaProperties.AudioEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_CreateWma(Windows.Media.MediaProperties.AudioEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_CreateMp4(Windows.Media.MediaProperties.VideoEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_CreateWmv(Windows.Media.MediaProperties.VideoEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_CreateFromFileAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Media.MediaProperties.MediaEncodingProfile)* return_operation);
	HRESULT abi_CreateFromStreamAsync(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.IAsyncOperation!(Windows.Media.MediaProperties.MediaEncodingProfile)* return_operation);
}

@uuid("ce8de74f-6af4-4288-8fe2-79adf1f79a43")
@WinrtFactory("Windows.Media.MediaProperties.MediaEncodingProfile")
interface IMediaEncodingProfileStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWav(Windows.Media.MediaProperties.AudioEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_CreateAvi(Windows.Media.MediaProperties.VideoEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
}

@uuid("90dac5aa-cf76-4294-a9ed-1a1420f51f6b")
@WinrtFactory("Windows.Media.MediaProperties.MediaEncodingProfile")
interface IMediaEncodingProfileStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAlac(Windows.Media.MediaProperties.AudioEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_CreateFlac(Windows.Media.MediaProperties.AudioEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_CreateHevc(Windows.Media.MediaProperties.VideoEncodingQuality quality, Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
}

@uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4")
interface IMediaEncodingProperties : IInspectable
{
extern(Windows):
	HRESULT get_Properties(Windows.Media.MediaProperties.MediaPropertySet* return_value);
	HRESULT get_Type(HSTRING* return_value);
	HRESULT set_Subtype(HSTRING value);
	HRESULT get_Subtype(HSTRING* return_value);
}

@uuid("37b6580e-a171-4464-ba5a-53189e48c1c8")
@WinrtFactory("Windows.Media.MediaProperties.MediaEncodingSubtypes")
interface IMediaEncodingSubtypesStatics : IInspectable
{
extern(Windows):
	HRESULT get_Aac(HSTRING* return_value);
	HRESULT get_AacAdts(HSTRING* return_value);
	HRESULT get_Ac3(HSTRING* return_value);
	HRESULT get_AmrNb(HSTRING* return_value);
	HRESULT get_AmrWb(HSTRING* return_value);
	HRESULT get_Argb32(HSTRING* return_value);
	HRESULT get_Asf(HSTRING* return_value);
	HRESULT get_Avi(HSTRING* return_value);
	HRESULT get_Bgra8(HSTRING* return_value);
	HRESULT get_Bmp(HSTRING* return_value);
	HRESULT get_Eac3(HSTRING* return_value);
	HRESULT get_Float(HSTRING* return_value);
	HRESULT get_Gif(HSTRING* return_value);
	HRESULT get_H263(HSTRING* return_value);
	HRESULT get_H264(HSTRING* return_value);
	HRESULT get_H264Es(HSTRING* return_value);
	HRESULT get_Hevc(HSTRING* return_value);
	HRESULT get_HevcEs(HSTRING* return_value);
	HRESULT get_Iyuv(HSTRING* return_value);
	HRESULT get_Jpeg(HSTRING* return_value);
	HRESULT get_JpegXr(HSTRING* return_value);
	HRESULT get_Mjpg(HSTRING* return_value);
	HRESULT get_Mpeg(HSTRING* return_value);
	HRESULT get_Mpeg1(HSTRING* return_value);
	HRESULT get_Mpeg2(HSTRING* return_value);
	HRESULT get_Mp3(HSTRING* return_value);
	HRESULT get_Mpeg4(HSTRING* return_value);
	HRESULT get_Nv12(HSTRING* return_value);
	HRESULT get_Pcm(HSTRING* return_value);
	HRESULT get_Png(HSTRING* return_value);
	HRESULT get_Rgb24(HSTRING* return_value);
	HRESULT get_Rgb32(HSTRING* return_value);
	HRESULT get_Tiff(HSTRING* return_value);
	HRESULT get_Wave(HSTRING* return_value);
	HRESULT get_Wma8(HSTRING* return_value);
	HRESULT get_Wma9(HSTRING* return_value);
	HRESULT get_Wmv3(HSTRING* return_value);
	HRESULT get_Wvc1(HSTRING* return_value);
	HRESULT get_Yuy2(HSTRING* return_value);
	HRESULT get_Yv12(HSTRING* return_value);
}

@uuid("4b7cd23d-42ff-4d33-8531-0626bee4b52d")
@WinrtFactory("Windows.Media.MediaProperties.MediaEncodingSubtypes")
interface IMediaEncodingSubtypesStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_Vp9(HSTRING* return_value);
	HRESULT get_L8(HSTRING* return_value);
	HRESULT get_L16(HSTRING* return_value);
	HRESULT get_D16(HSTRING* return_value);
}

@uuid("ba2414e4-883d-464e-a44f-097da08ef7ff")
@WinrtFactory("Windows.Media.MediaProperties.MediaEncodingSubtypes")
interface IMediaEncodingSubtypesStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_Alac(HSTRING* return_value);
	HRESULT get_Flac(HSTRING* return_value);
}

@uuid("d2d0fee5-8929-401d-ac78-7d357e378163")
@WinrtFactory("Windows.Media.MediaProperties.MediaRatio")
interface IMediaRatio : IInspectable
{
extern(Windows):
	HRESULT set_Numerator(UINT32 value);
	HRESULT get_Numerator(UINT32* return_value);
	HRESULT set_Denominator(UINT32 value);
	HRESULT get_Denominator(UINT32* return_value);
}

@uuid("a461ff85-e57a-4128-9b21-d5331b04235c")
@WinrtFactory("Windows.Media.MediaProperties.Mpeg2ProfileIds")
interface IMpeg2ProfileIdsStatics : IInspectable
{
extern(Windows):
	HRESULT get_Simple(INT32* return_value);
	HRESULT get_Main(INT32* return_value);
	HRESULT get_SignalNoiseRatioScalable(INT32* return_value);
	HRESULT get_SpatiallyScalable(INT32* return_value);
	HRESULT get_High(INT32* return_value);
}

@uuid("76ee6c9a-37c2-4f2a-880a-1282bbb4373d")
@WinrtFactory("Windows.Media.MediaProperties.VideoEncodingProperties")
interface IVideoEncodingProperties_Base : IInspectable
{
extern(Windows):
	HRESULT set_Bitrate(UINT32 value);
	HRESULT get_Bitrate(UINT32* return_value);
	HRESULT set_Width(UINT32 value);
	HRESULT get_Width(UINT32* return_value);
	HRESULT set_Height(UINT32 value);
	HRESULT get_Height(UINT32* return_value);
	HRESULT get_FrameRate(Windows.Media.MediaProperties.MediaRatio* return_value);
	HRESULT get_PixelAspectRatio(Windows.Media.MediaProperties.MediaRatio* return_value);
}
@uuid("76ee6c9a-37c2-4f2a-880a-1282bbb4373d")
@WinrtFactory("Windows.Media.MediaProperties.VideoEncodingProperties")
interface IVideoEncodingProperties : IVideoEncodingProperties_Base, Windows.Media.MediaProperties.IMediaEncodingProperties {}

@uuid("f743a1ef-d465-4290-a94b-ef0f1528f8e3")
@WinrtFactory("Windows.Media.MediaProperties.VideoEncodingProperties")
interface IVideoEncodingProperties2 : IInspectable
{
extern(Windows):
	HRESULT abi_SetFormatUserData(UINT32 __valueSize, ubyte* value);
	HRESULT abi_GetFormatUserData(UINT32* out___valueSize, ubyte** out_value);
	HRESULT set_ProfileId(INT32 value);
	HRESULT get_ProfileId(INT32* return_value);
}

@uuid("386bcdc4-873a-479f-b3eb-56c1fcbec6d7")
@WinrtFactory("Windows.Media.MediaProperties.VideoEncodingProperties")
interface IVideoEncodingProperties3 : IInspectable
{
extern(Windows):
	HRESULT get_StereoscopicVideoPackingMode(Windows.Media.MediaProperties.StereoscopicVideoPackingMode* return_value);
}

@uuid("724ef014-c10c-40f2-9d72-3ee13b45fa8e")
@WinrtFactory("Windows.Media.MediaProperties.VideoEncodingProperties")
interface IVideoEncodingProperties4 : IInspectable
{
extern(Windows):
	HRESULT get_SphericalVideoFrameFormat(Windows.Media.MediaProperties.SphericalVideoFrameFormat* return_value);
}

@uuid("3ce14d44-1dc5-43db-9f38-ebebf90152cb")
@WinrtFactory("Windows.Media.MediaProperties.VideoEncodingProperties")
interface IVideoEncodingPropertiesStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateH264(Windows.Media.MediaProperties.VideoEncodingProperties* return_value);
	HRESULT abi_CreateMpeg2(Windows.Media.MediaProperties.VideoEncodingProperties* return_value);
	HRESULT abi_CreateUncompressed(HSTRING subtype, UINT32 width, UINT32 height, Windows.Media.MediaProperties.VideoEncodingProperties* return_value);
}

@uuid("cf1ebd5d-49fe-4d00-b59a-cfa4dfc51944")
@WinrtFactory("Windows.Media.MediaProperties.VideoEncodingProperties")
interface IVideoEncodingPropertiesStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateHevc(Windows.Media.MediaProperties.VideoEncodingProperties* return_value);
}

interface AudioEncodingProperties : Windows.Media.MediaProperties.IAudioEncodingProperties, Windows.Media.MediaProperties.IMediaEncodingProperties, Windows.Media.MediaProperties.IAudioEncodingPropertiesWithFormatUserData, Windows.Media.MediaProperties.IAudioEncodingProperties2
{
extern(Windows):
	final void Bitrate(UINT32 value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IAudioEncodingProperties)this.asInterface(uuid("62bc7a16-005c-4b3b-8a0b-0a090e9687f3"))).set_Bitrate(value));
	}
	final UINT32 Bitrate()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IAudioEncodingProperties)this.asInterface(uuid("62bc7a16-005c-4b3b-8a0b-0a090e9687f3"))).get_Bitrate(&_ret));
		return _ret;
	}
	final void ChannelCount(UINT32 value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IAudioEncodingProperties)this.asInterface(uuid("62bc7a16-005c-4b3b-8a0b-0a090e9687f3"))).set_ChannelCount(value));
	}
	final UINT32 ChannelCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IAudioEncodingProperties)this.asInterface(uuid("62bc7a16-005c-4b3b-8a0b-0a090e9687f3"))).get_ChannelCount(&_ret));
		return _ret;
	}
	final void SampleRate(UINT32 value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IAudioEncodingProperties)this.asInterface(uuid("62bc7a16-005c-4b3b-8a0b-0a090e9687f3"))).set_SampleRate(value));
	}
	final UINT32 SampleRate()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IAudioEncodingProperties)this.asInterface(uuid("62bc7a16-005c-4b3b-8a0b-0a090e9687f3"))).get_SampleRate(&_ret));
		return _ret;
	}
	final void BitsPerSample(UINT32 value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IAudioEncodingProperties)this.asInterface(uuid("62bc7a16-005c-4b3b-8a0b-0a090e9687f3"))).set_BitsPerSample(value));
	}
	final UINT32 BitsPerSample()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IAudioEncodingProperties)this.asInterface(uuid("62bc7a16-005c-4b3b-8a0b-0a090e9687f3"))).get_BitsPerSample(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.MediaPropertySet Properties()
	{
		Windows.Media.MediaProperties.MediaPropertySet _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProperties)this.asInterface(uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4"))).get_Properties(&_ret));
		return _ret;
	}
	final HSTRING Type()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProperties)this.asInterface(uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4"))).get_Type(&_ret));
		return _ret;
	}
	final void Subtype(HSTRING value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProperties)this.asInterface(uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4"))).set_Subtype(value));
	}
	final HSTRING Subtype()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProperties)this.asInterface(uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4"))).get_Subtype(&_ret));
		return _ret;
	}
	final void SetFormatUserData(UINT32 __valueSize, ubyte* value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IAudioEncodingPropertiesWithFormatUserData)this.asInterface(uuid("98f10d79-13ea-49ff-be70-2673db69702c"))).abi_SetFormatUserData(__valueSize, value));
	}
	final void GetFormatUserData(UINT32* out___valueSize, ubyte** out_value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IAudioEncodingPropertiesWithFormatUserData)this.asInterface(uuid("98f10d79-13ea-49ff-be70-2673db69702c"))).abi_GetFormatUserData(out___valueSize, out_value));
	}
	final bool IsSpatial()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IAudioEncodingProperties2)this.asInterface(uuid("c45d54da-80bd-4c23-80d5-72d4a181e894"))).get_IsSpatial(&_ret));
		return _ret;
	}

	private static Windows.Media.MediaProperties.IAudioEncodingPropertiesStatics _staticInstance;
	public static Windows.Media.MediaProperties.IAudioEncodingPropertiesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.MediaProperties.IAudioEncodingPropertiesStatics);
		return _staticInstance;
	}
	static Windows.Media.MediaProperties.AudioEncodingProperties CreateAac(UINT32 sampleRate, UINT32 channelCount, UINT32 bitrate)
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(staticInstance.abi_CreateAac(sampleRate, channelCount, bitrate, &_ret));
		return _ret;
	}
	static Windows.Media.MediaProperties.AudioEncodingProperties CreateAacAdts(UINT32 sampleRate, UINT32 channelCount, UINT32 bitrate)
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(staticInstance.abi_CreateAacAdts(sampleRate, channelCount, bitrate, &_ret));
		return _ret;
	}
	static Windows.Media.MediaProperties.AudioEncodingProperties CreateMp3(UINT32 sampleRate, UINT32 channelCount, UINT32 bitrate)
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(staticInstance.abi_CreateMp3(sampleRate, channelCount, bitrate, &_ret));
		return _ret;
	}
	static Windows.Media.MediaProperties.AudioEncodingProperties CreatePcm(UINT32 sampleRate, UINT32 channelCount, UINT32 bitsPerSample)
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(staticInstance.abi_CreatePcm(sampleRate, channelCount, bitsPerSample, &_ret));
		return _ret;
	}
	static Windows.Media.MediaProperties.AudioEncodingProperties CreateWma(UINT32 sampleRate, UINT32 channelCount, UINT32 bitrate)
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(staticInstance.abi_CreateWma(sampleRate, channelCount, bitrate, &_ret));
		return _ret;
	}
	static AudioEncodingProperties New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(AudioEncodingProperties).abi_ActivateInstance(&ret));
		return cast(AudioEncodingProperties) ret;
	}
}

interface ContainerEncodingProperties : Windows.Media.MediaProperties.IContainerEncodingProperties, Windows.Media.MediaProperties.IMediaEncodingProperties
{
extern(Windows):
	final Windows.Media.MediaProperties.MediaPropertySet Properties()
	{
		Windows.Media.MediaProperties.MediaPropertySet _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProperties)this.asInterface(uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4"))).get_Properties(&_ret));
		return _ret;
	}
	final HSTRING Type()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProperties)this.asInterface(uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4"))).get_Type(&_ret));
		return _ret;
	}
	final void Subtype(HSTRING value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProperties)this.asInterface(uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4"))).set_Subtype(value));
	}
	final HSTRING Subtype()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProperties)this.asInterface(uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4"))).get_Subtype(&_ret));
		return _ret;
	}
	static ContainerEncodingProperties New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ContainerEncodingProperties).abi_ActivateInstance(&ret));
		return cast(ContainerEncodingProperties) ret;
	}
}

interface H264ProfileIds
{
	private static Windows.Media.MediaProperties.IH264ProfileIdsStatics _staticInstance;
	public static Windows.Media.MediaProperties.IH264ProfileIdsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.MediaProperties.IH264ProfileIdsStatics);
		return _staticInstance;
	}
	static INT32 ConstrainedBaseline()
	{
		INT32 _ret;
		Debug.OK(staticInstance.get_ConstrainedBaseline(&_ret));
		return _ret;
	}
	static INT32 Baseline()
	{
		INT32 _ret;
		Debug.OK(staticInstance.get_Baseline(&_ret));
		return _ret;
	}
	static INT32 Extended()
	{
		INT32 _ret;
		Debug.OK(staticInstance.get_Extended(&_ret));
		return _ret;
	}
	static INT32 Main()
	{
		INT32 _ret;
		Debug.OK(staticInstance.get_Main(&_ret));
		return _ret;
	}
	static INT32 High()
	{
		INT32 _ret;
		Debug.OK(staticInstance.get_High(&_ret));
		return _ret;
	}
	static INT32 High10()
	{
		INT32 _ret;
		Debug.OK(staticInstance.get_High10(&_ret));
		return _ret;
	}
	static INT32 High422()
	{
		INT32 _ret;
		Debug.OK(staticInstance.get_High422(&_ret));
		return _ret;
	}
	static INT32 High444()
	{
		INT32 _ret;
		Debug.OK(staticInstance.get_High444(&_ret));
		return _ret;
	}
	static INT32 StereoHigh()
	{
		INT32 _ret;
		Debug.OK(staticInstance.get_StereoHigh(&_ret));
		return _ret;
	}
	static INT32 MultiviewHigh()
	{
		INT32 _ret;
		Debug.OK(staticInstance.get_MultiviewHigh(&_ret));
		return _ret;
	}
}

interface ImageEncodingProperties : Windows.Media.MediaProperties.IImageEncodingProperties, Windows.Media.MediaProperties.IMediaEncodingProperties
{
extern(Windows):
	final void Width(UINT32 value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IImageEncodingProperties)this.asInterface(uuid("78625635-f331-4189-b1c3-b48d5ae034f1"))).set_Width(value));
	}
	final UINT32 Width()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IImageEncodingProperties)this.asInterface(uuid("78625635-f331-4189-b1c3-b48d5ae034f1"))).get_Width(&_ret));
		return _ret;
	}
	final void Height(UINT32 value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IImageEncodingProperties)this.asInterface(uuid("78625635-f331-4189-b1c3-b48d5ae034f1"))).set_Height(value));
	}
	final UINT32 Height()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IImageEncodingProperties)this.asInterface(uuid("78625635-f331-4189-b1c3-b48d5ae034f1"))).get_Height(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.MediaPropertySet Properties()
	{
		Windows.Media.MediaProperties.MediaPropertySet _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProperties)this.asInterface(uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4"))).get_Properties(&_ret));
		return _ret;
	}
	final HSTRING Type()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProperties)this.asInterface(uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4"))).get_Type(&_ret));
		return _ret;
	}
	final void Subtype(HSTRING value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProperties)this.asInterface(uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4"))).set_Subtype(value));
	}
	final HSTRING Subtype()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProperties)this.asInterface(uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4"))).get_Subtype(&_ret));
		return _ret;
	}

	private static Windows.Media.MediaProperties.IImageEncodingPropertiesStatics _staticInstance;
	public static Windows.Media.MediaProperties.IImageEncodingPropertiesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.MediaProperties.IImageEncodingPropertiesStatics);
		return _staticInstance;
	}
	static Windows.Media.MediaProperties.ImageEncodingProperties CreateJpeg()
	{
		Windows.Media.MediaProperties.ImageEncodingProperties _ret;
		Debug.OK(staticInstance.abi_CreateJpeg(&_ret));
		return _ret;
	}
	static Windows.Media.MediaProperties.ImageEncodingProperties CreatePng()
	{
		Windows.Media.MediaProperties.ImageEncodingProperties _ret;
		Debug.OK(staticInstance.abi_CreatePng(&_ret));
		return _ret;
	}
	static Windows.Media.MediaProperties.ImageEncodingProperties CreateJpegXR()
	{
		Windows.Media.MediaProperties.ImageEncodingProperties _ret;
		Debug.OK(staticInstance.abi_CreateJpegXR(&_ret));
		return _ret;
	}
	static ImageEncodingProperties New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ImageEncodingProperties).abi_ActivateInstance(&ret));
		return cast(ImageEncodingProperties) ret;
	}
}

interface MediaEncodingProfile : Windows.Media.MediaProperties.IMediaEncodingProfile
{
extern(Windows):
	final void Audio(Windows.Media.MediaProperties.AudioEncodingProperties value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProfile)this.asInterface(uuid("e7dbf5a8-1db9-4783-876b-3dfe12acfdb3"))).set_Audio(value));
	}
	final Windows.Media.MediaProperties.AudioEncodingProperties Audio()
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProfile)this.asInterface(uuid("e7dbf5a8-1db9-4783-876b-3dfe12acfdb3"))).get_Audio(&_ret));
		return _ret;
	}
	final void Video(Windows.Media.MediaProperties.VideoEncodingProperties value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProfile)this.asInterface(uuid("e7dbf5a8-1db9-4783-876b-3dfe12acfdb3"))).set_Video(value));
	}
	final Windows.Media.MediaProperties.VideoEncodingProperties Video()
	{
		Windows.Media.MediaProperties.VideoEncodingProperties _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProfile)this.asInterface(uuid("e7dbf5a8-1db9-4783-876b-3dfe12acfdb3"))).get_Video(&_ret));
		return _ret;
	}
	final void Container(Windows.Media.MediaProperties.ContainerEncodingProperties value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProfile)this.asInterface(uuid("e7dbf5a8-1db9-4783-876b-3dfe12acfdb3"))).set_Container(value));
	}
	final Windows.Media.MediaProperties.ContainerEncodingProperties Container()
	{
		Windows.Media.MediaProperties.ContainerEncodingProperties _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProfile)this.asInterface(uuid("e7dbf5a8-1db9-4783-876b-3dfe12acfdb3"))).get_Container(&_ret));
		return _ret;
	}

	private static Windows.Media.MediaProperties.IMediaEncodingProfileStatics _staticInstance;
	public static Windows.Media.MediaProperties.IMediaEncodingProfileStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.MediaProperties.IMediaEncodingProfileStatics);
		return _staticInstance;
	}
	static Windows.Media.MediaProperties.MediaEncodingProfile CreateM4a(Windows.Media.MediaProperties.AudioEncodingQuality quality)
	{
		Windows.Media.MediaProperties.MediaEncodingProfile _ret;
		Debug.OK(staticInstance.abi_CreateM4a(quality, &_ret));
		return _ret;
	}
	static Windows.Media.MediaProperties.MediaEncodingProfile CreateMp3(Windows.Media.MediaProperties.AudioEncodingQuality quality)
	{
		Windows.Media.MediaProperties.MediaEncodingProfile _ret;
		Debug.OK(staticInstance.abi_CreateMp3(quality, &_ret));
		return _ret;
	}
	static Windows.Media.MediaProperties.MediaEncodingProfile CreateWma(Windows.Media.MediaProperties.AudioEncodingQuality quality)
	{
		Windows.Media.MediaProperties.MediaEncodingProfile _ret;
		Debug.OK(staticInstance.abi_CreateWma(quality, &_ret));
		return _ret;
	}
	static Windows.Media.MediaProperties.MediaEncodingProfile CreateMp4(Windows.Media.MediaProperties.VideoEncodingQuality quality)
	{
		Windows.Media.MediaProperties.MediaEncodingProfile _ret;
		Debug.OK(staticInstance.abi_CreateMp4(quality, &_ret));
		return _ret;
	}
	static Windows.Media.MediaProperties.MediaEncodingProfile CreateWmv(Windows.Media.MediaProperties.VideoEncodingQuality quality)
	{
		Windows.Media.MediaProperties.MediaEncodingProfile _ret;
		Debug.OK(staticInstance.abi_CreateWmv(quality, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.MediaProperties.MediaEncodingProfile) CreateFromFileAsync(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.MediaProperties.MediaEncodingProfile) _ret;
		Debug.OK(staticInstance.abi_CreateFromFileAsync(file, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.MediaProperties.MediaEncodingProfile) CreateFromStreamAsync(Windows.Storage.Streams.IRandomAccessStream stream)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.MediaProperties.MediaEncodingProfile) _ret;
		Debug.OK(staticInstance.abi_CreateFromStreamAsync(stream, &_ret));
		return _ret;
	}
	static MediaEncodingProfile New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MediaEncodingProfile).abi_ActivateInstance(&ret));
		return cast(MediaEncodingProfile) ret;
	}
}

interface MediaEncodingSubtypes
{
	private static Windows.Media.MediaProperties.IMediaEncodingSubtypesStatics _staticInstance;
	public static Windows.Media.MediaProperties.IMediaEncodingSubtypesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.MediaProperties.IMediaEncodingSubtypesStatics);
		return _staticInstance;
	}
	static HSTRING Aac()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Aac(&_ret));
		return _ret;
	}
	static HSTRING AacAdts()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AacAdts(&_ret));
		return _ret;
	}
	static HSTRING Ac3()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Ac3(&_ret));
		return _ret;
	}
	static HSTRING AmrNb()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AmrNb(&_ret));
		return _ret;
	}
	static HSTRING AmrWb()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AmrWb(&_ret));
		return _ret;
	}
	static HSTRING Argb32()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Argb32(&_ret));
		return _ret;
	}
	static HSTRING Asf()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Asf(&_ret));
		return _ret;
	}
	static HSTRING Avi()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Avi(&_ret));
		return _ret;
	}
	static HSTRING Bgra8()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Bgra8(&_ret));
		return _ret;
	}
	static HSTRING Bmp()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Bmp(&_ret));
		return _ret;
	}
	static HSTRING Eac3()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Eac3(&_ret));
		return _ret;
	}
	static HSTRING Float()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Float(&_ret));
		return _ret;
	}
	static HSTRING Gif()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Gif(&_ret));
		return _ret;
	}
	static HSTRING H263()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_H263(&_ret));
		return _ret;
	}
	static HSTRING H264()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_H264(&_ret));
		return _ret;
	}
	static HSTRING H264Es()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_H264Es(&_ret));
		return _ret;
	}
	static HSTRING Hevc()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Hevc(&_ret));
		return _ret;
	}
	static HSTRING HevcEs()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HevcEs(&_ret));
		return _ret;
	}
	static HSTRING Iyuv()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Iyuv(&_ret));
		return _ret;
	}
	static HSTRING Jpeg()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Jpeg(&_ret));
		return _ret;
	}
	static HSTRING JpegXr()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_JpegXr(&_ret));
		return _ret;
	}
	static HSTRING Mjpg()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Mjpg(&_ret));
		return _ret;
	}
	static HSTRING Mpeg()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Mpeg(&_ret));
		return _ret;
	}
	static HSTRING Mpeg1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Mpeg1(&_ret));
		return _ret;
	}
	static HSTRING Mpeg2()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Mpeg2(&_ret));
		return _ret;
	}
	static HSTRING Mp3()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Mp3(&_ret));
		return _ret;
	}
	static HSTRING Mpeg4()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Mpeg4(&_ret));
		return _ret;
	}
	static HSTRING Nv12()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Nv12(&_ret));
		return _ret;
	}
	static HSTRING Pcm()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Pcm(&_ret));
		return _ret;
	}
	static HSTRING Png()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Png(&_ret));
		return _ret;
	}
	static HSTRING Rgb24()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Rgb24(&_ret));
		return _ret;
	}
	static HSTRING Rgb32()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Rgb32(&_ret));
		return _ret;
	}
	static HSTRING Tiff()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Tiff(&_ret));
		return _ret;
	}
	static HSTRING Wave()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Wave(&_ret));
		return _ret;
	}
	static HSTRING Wma8()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Wma8(&_ret));
		return _ret;
	}
	static HSTRING Wma9()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Wma9(&_ret));
		return _ret;
	}
	static HSTRING Wmv3()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Wmv3(&_ret));
		return _ret;
	}
	static HSTRING Wvc1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Wvc1(&_ret));
		return _ret;
	}
	static HSTRING Yuy2()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Yuy2(&_ret));
		return _ret;
	}
	static HSTRING Yv12()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Yv12(&_ret));
		return _ret;
	}
}

interface MediaPropertySet : Windows.Foundation.Collections.IMap!(GUID, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(GUID, IInspectable))
{
extern(Windows):
	final  IInspectable Lookup(GUID key)
	{
		 IInspectable _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(GUID, IInspectable))this).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(GUID, IInspectable))this).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(GUID key)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(GUID, IInspectable))this).abi_HasKey(key, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(GUID,  IInspectable) GetView()
	{
		Windows.Foundation.Collections.IMapView!(GUID,	IInspectable) _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(GUID, IInspectable))this).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(GUID key,	 IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(GUID, IInspectable))this).abi_Insert(key, value, &_ret));
		return _ret;
	}
	final void Remove(GUID key)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(GUID, IInspectable))this).abi_Remove(key));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(GUID, IInspectable))this).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(GUID, IInspectable))* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(GUID, IInspectable)))this).abi_First(out_first));
	}
	static MediaPropertySet New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MediaPropertySet).abi_ActivateInstance(&ret));
		return cast(MediaPropertySet) ret;
	}
}

interface MediaRatio : Windows.Media.MediaProperties.IMediaRatio
{
extern(Windows):
	final void Numerator(UINT32 value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaRatio)this.asInterface(uuid("d2d0fee5-8929-401d-ac78-7d357e378163"))).set_Numerator(value));
	}
	final UINT32 Numerator()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaRatio)this.asInterface(uuid("d2d0fee5-8929-401d-ac78-7d357e378163"))).get_Numerator(&_ret));
		return _ret;
	}
	final void Denominator(UINT32 value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaRatio)this.asInterface(uuid("d2d0fee5-8929-401d-ac78-7d357e378163"))).set_Denominator(value));
	}
	final UINT32 Denominator()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaRatio)this.asInterface(uuid("d2d0fee5-8929-401d-ac78-7d357e378163"))).get_Denominator(&_ret));
		return _ret;
	}
}

interface Mpeg2ProfileIds
{
	private static Windows.Media.MediaProperties.IMpeg2ProfileIdsStatics _staticInstance;
	public static Windows.Media.MediaProperties.IMpeg2ProfileIdsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.MediaProperties.IMpeg2ProfileIdsStatics);
		return _staticInstance;
	}
	static INT32 Simple()
	{
		INT32 _ret;
		Debug.OK(staticInstance.get_Simple(&_ret));
		return _ret;
	}
	static INT32 Main()
	{
		INT32 _ret;
		Debug.OK(staticInstance.get_Main(&_ret));
		return _ret;
	}
	static INT32 SignalNoiseRatioScalable()
	{
		INT32 _ret;
		Debug.OK(staticInstance.get_SignalNoiseRatioScalable(&_ret));
		return _ret;
	}
	static INT32 SpatiallyScalable()
	{
		INT32 _ret;
		Debug.OK(staticInstance.get_SpatiallyScalable(&_ret));
		return _ret;
	}
	static INT32 High()
	{
		INT32 _ret;
		Debug.OK(staticInstance.get_High(&_ret));
		return _ret;
	}
}

interface VideoEncodingProperties : Windows.Media.MediaProperties.IVideoEncodingProperties, Windows.Media.MediaProperties.IMediaEncodingProperties, Windows.Media.MediaProperties.IVideoEncodingProperties2, Windows.Media.MediaProperties.IVideoEncodingProperties3, Windows.Media.MediaProperties.IVideoEncodingProperties4
{
extern(Windows):
	final void Bitrate(UINT32 value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IVideoEncodingProperties)this.asInterface(uuid("76ee6c9a-37c2-4f2a-880a-1282bbb4373d"))).set_Bitrate(value));
	}
	final UINT32 Bitrate()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IVideoEncodingProperties)this.asInterface(uuid("76ee6c9a-37c2-4f2a-880a-1282bbb4373d"))).get_Bitrate(&_ret));
		return _ret;
	}
	final void Width(UINT32 value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IVideoEncodingProperties)this.asInterface(uuid("76ee6c9a-37c2-4f2a-880a-1282bbb4373d"))).set_Width(value));
	}
	final UINT32 Width()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IVideoEncodingProperties)this.asInterface(uuid("76ee6c9a-37c2-4f2a-880a-1282bbb4373d"))).get_Width(&_ret));
		return _ret;
	}
	final void Height(UINT32 value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IVideoEncodingProperties)this.asInterface(uuid("76ee6c9a-37c2-4f2a-880a-1282bbb4373d"))).set_Height(value));
	}
	final UINT32 Height()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IVideoEncodingProperties)this.asInterface(uuid("76ee6c9a-37c2-4f2a-880a-1282bbb4373d"))).get_Height(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.MediaRatio FrameRate()
	{
		Windows.Media.MediaProperties.MediaRatio _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IVideoEncodingProperties)this.asInterface(uuid("76ee6c9a-37c2-4f2a-880a-1282bbb4373d"))).get_FrameRate(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.MediaRatio PixelAspectRatio()
	{
		Windows.Media.MediaProperties.MediaRatio _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IVideoEncodingProperties)this.asInterface(uuid("76ee6c9a-37c2-4f2a-880a-1282bbb4373d"))).get_PixelAspectRatio(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.MediaPropertySet Properties()
	{
		Windows.Media.MediaProperties.MediaPropertySet _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProperties)this.asInterface(uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4"))).get_Properties(&_ret));
		return _ret;
	}
	final HSTRING Type()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProperties)this.asInterface(uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4"))).get_Type(&_ret));
		return _ret;
	}
	final void Subtype(HSTRING value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProperties)this.asInterface(uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4"))).set_Subtype(value));
	}
	final HSTRING Subtype()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IMediaEncodingProperties)this.asInterface(uuid("b4002af6-acd4-4e5a-a24b-5d7498a8b8c4"))).get_Subtype(&_ret));
		return _ret;
	}
	final void SetFormatUserData(UINT32 __valueSize, ubyte* value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IVideoEncodingProperties2)this.asInterface(uuid("f743a1ef-d465-4290-a94b-ef0f1528f8e3"))).abi_SetFormatUserData(__valueSize, value));
	}
	final void GetFormatUserData(UINT32* out___valueSize, ubyte** out_value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IVideoEncodingProperties2)this.asInterface(uuid("f743a1ef-d465-4290-a94b-ef0f1528f8e3"))).abi_GetFormatUserData(out___valueSize, out_value));
	}
	final void ProfileId(INT32 value)
	{
		Debug.OK((cast(Windows.Media.MediaProperties.IVideoEncodingProperties2)this.asInterface(uuid("f743a1ef-d465-4290-a94b-ef0f1528f8e3"))).set_ProfileId(value));
	}
	final INT32 ProfileId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IVideoEncodingProperties2)this.asInterface(uuid("f743a1ef-d465-4290-a94b-ef0f1528f8e3"))).get_ProfileId(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.StereoscopicVideoPackingMode StereoscopicVideoPackingMode()
	{
		Windows.Media.MediaProperties.StereoscopicVideoPackingMode _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IVideoEncodingProperties3)this.asInterface(uuid("386bcdc4-873a-479f-b3eb-56c1fcbec6d7"))).get_StereoscopicVideoPackingMode(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.SphericalVideoFrameFormat SphericalVideoFrameFormat()
	{
		Windows.Media.MediaProperties.SphericalVideoFrameFormat _ret;
		Debug.OK((cast(Windows.Media.MediaProperties.IVideoEncodingProperties4)this.asInterface(uuid("724ef014-c10c-40f2-9d72-3ee13b45fa8e"))).get_SphericalVideoFrameFormat(&_ret));
		return _ret;
	}

	private static Windows.Media.MediaProperties.IVideoEncodingPropertiesStatics _staticInstance;
	public static Windows.Media.MediaProperties.IVideoEncodingPropertiesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.MediaProperties.IVideoEncodingPropertiesStatics);
		return _staticInstance;
	}
	static Windows.Media.MediaProperties.VideoEncodingProperties CreateH264()
	{
		Windows.Media.MediaProperties.VideoEncodingProperties _ret;
		Debug.OK(staticInstance.abi_CreateH264(&_ret));
		return _ret;
	}
	static Windows.Media.MediaProperties.VideoEncodingProperties CreateMpeg2()
	{
		Windows.Media.MediaProperties.VideoEncodingProperties _ret;
		Debug.OK(staticInstance.abi_CreateMpeg2(&_ret));
		return _ret;
	}
	static Windows.Media.MediaProperties.VideoEncodingProperties CreateUncompressed(HSTRING subtype, UINT32 width, UINT32 height)
	{
		Windows.Media.MediaProperties.VideoEncodingProperties _ret;
		Debug.OK(staticInstance.abi_CreateUncompressed(subtype, width, height, &_ret));
		return _ret;
	}
	static VideoEncodingProperties New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VideoEncodingProperties).abi_ActivateInstance(&ret));
		return cast(VideoEncodingProperties) ret;
	}
}

enum AudioEncodingQuality
{
	Auto = 0,
	High = 1,
	Medium = 2,
	Low = 3
}

@bitflags
enum MediaMirroringOptions
{
	None = 0x0,
	Horizontal = 0x1,
	Vertical = 0x2
}

enum MediaPixelFormat
{
	Nv12 = 0,
	Bgra8 = 1
}

enum MediaRotation
{
	None = 0,
	Clockwise90Degrees = 1,
	Clockwise180Degrees = 2,
	Clockwise270Degrees = 3
}

enum MediaThumbnailFormat
{
	Bmp = 0,
	Bgra8 = 1
}

enum SphericalVideoFrameFormat
{
	None = 0,
	Unsupported = 1,
	Equirectangular = 2
}

enum StereoscopicVideoPackingMode
{
	None = 0,
	SideBySide = 1,
	TopBottom = 2
}

enum VideoEncodingQuality
{
	Auto = 0,
	HD1080p = 1,
	HD720p = 2,
	Wvga = 3,
	Ntsc = 4,
	Pal = 5,
	Vga = 6,
	Qvga = 7,
	Uhd2160p = 8,
	Uhd4320p = 9
}