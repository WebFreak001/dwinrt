module Windows.Graphics.Imaging;

import dwinrt;

struct BitmapBounds
{
	UINT32 X;
	UINT32 Y;
	UINT32 Width;
	UINT32 Height;
}

struct BitmapPlaneDescription
{
	INT32 StartIndex;
	INT32 Width;
	INT32 Height;
	INT32 Stride;
}

struct BitmapSize
{
	UINT32 Width;
	UINT32 Height;
}

@uuid("a53e04c4-399c-438c-b28f-a63a6b83d1a1")
@WinrtFactory("Windows.Graphics.Imaging.BitmapBuffer")
interface IBitmapBuffer_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetPlaneCount(INT32* return_value);
	HRESULT abi_GetPlaneDescription(INT32 index, Windows.Graphics.Imaging.BitmapPlaneDescription* return_value);
}
@uuid("a53e04c4-399c-438c-b28f-a63a6b83d1a1")
@WinrtFactory("Windows.Graphics.Imaging.BitmapBuffer")
interface IBitmapBuffer : IBitmapBuffer_Base, Windows.Foundation.IMemoryBuffer, Windows.Foundation.IClosable {}

@uuid("400caaf2-c4b0-4392-a3b0-6f6f9ba95cb4")
@WinrtFactory("Windows.Graphics.Imaging.BitmapCodecInformation")
interface IBitmapCodecInformation : IInspectable
{
extern(Windows):
	HRESULT get_CodecId(GUID* return_value);
	HRESULT get_FileExtensions(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_FriendlyName(HSTRING* return_value);
	HRESULT get_MimeTypes(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}

@uuid("acef22ba-1d74-4c91-9dfc-9620745233e6")
@WinrtFactory("Windows.Graphics.Imaging.BitmapDecoder")
interface IBitmapDecoder : IInspectable
{
extern(Windows):
	HRESULT get_BitmapContainerProperties(Windows.Graphics.Imaging.BitmapPropertiesView* return_value);
	HRESULT get_DecoderInformation(Windows.Graphics.Imaging.BitmapCodecInformation* return_value);
	HRESULT get_FrameCount(UINT32* return_value);
	HRESULT abi_GetPreviewAsync(Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.ImageStream)* return_asyncInfo);
	HRESULT abi_GetFrameAsync(UINT32 frameIndex, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapFrame)* return_asyncInfo);
}

@uuid("438ccb26-bcef-4e95-bad6-23a822e58d01")
@WinrtFactory("Windows.Graphics.Imaging.BitmapDecoder")
interface IBitmapDecoderStatics : IInspectable
{
extern(Windows):
	HRESULT get_BmpDecoderId(GUID* return_value);
	HRESULT get_JpegDecoderId(GUID* return_value);
	HRESULT get_PngDecoderId(GUID* return_value);
	HRESULT get_TiffDecoderId(GUID* return_value);
	HRESULT get_GifDecoderId(GUID* return_value);
	HRESULT get_JpegXRDecoderId(GUID* return_value);
	HRESULT get_IcoDecoderId(GUID* return_value);
	HRESULT abi_GetDecoderInformationEnumerator(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Imaging.BitmapCodecInformation)* return_decoderInformationEnumerator);
	HRESULT abi_CreateAsync(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapDecoder)* return_asyncInfo);
	HRESULT abi_CreateWithIdAsync(GUID decoderId, Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapDecoder)* return_asyncInfo);
}

@uuid("2bc468e3-e1f8-4b54-95e8-32919551ce62")
@WinrtFactory("Windows.Graphics.Imaging.BitmapEncoder")
interface IBitmapEncoder : IInspectable
{
extern(Windows):
	HRESULT get_EncoderInformation(Windows.Graphics.Imaging.BitmapCodecInformation* return_value);
	HRESULT get_BitmapProperties(Windows.Graphics.Imaging.BitmapProperties* return_value);
	HRESULT get_BitmapContainerProperties(Windows.Graphics.Imaging.BitmapProperties* return_value);
	HRESULT get_IsThumbnailGenerated(bool* return_value);
	HRESULT set_IsThumbnailGenerated(bool value);
	HRESULT get_GeneratedThumbnailWidth(UINT32* return_value);
	HRESULT set_GeneratedThumbnailWidth(UINT32 value);
	HRESULT get_GeneratedThumbnailHeight(UINT32* return_value);
	HRESULT set_GeneratedThumbnailHeight(UINT32 value);
	HRESULT get_BitmapTransform(Windows.Graphics.Imaging.BitmapTransform* return_value);
	HRESULT abi_SetPixelData(Windows.Graphics.Imaging.BitmapPixelFormat pixelFormat, Windows.Graphics.Imaging.BitmapAlphaMode alphaMode, UINT32 width, UINT32 height, double dpiX, double dpiY, UINT32 __pixelsSize, ubyte* pixels);
	HRESULT abi_GoToNextFrameAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_GoToNextFrameWithEncodingOptionsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue)) encodingOptions, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_FlushAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("a74356a7-a4e4-4eb9-8e40-564de7e1ccb2")
@WinrtFactory("Windows.Graphics.Imaging.BitmapEncoder")
interface IBitmapEncoderStatics : IInspectable
{
extern(Windows):
	HRESULT get_BmpEncoderId(GUID* return_value);
	HRESULT get_JpegEncoderId(GUID* return_value);
	HRESULT get_PngEncoderId(GUID* return_value);
	HRESULT get_TiffEncoderId(GUID* return_value);
	HRESULT get_GifEncoderId(GUID* return_value);
	HRESULT get_JpegXREncoderId(GUID* return_value);
	HRESULT abi_GetEncoderInformationEnumerator(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Imaging.BitmapCodecInformation)* return_encoderInformationEnumerator);
	HRESULT abi_CreateAsync(GUID encoderId, Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapEncoder)* return_asyncInfo);
	HRESULT abi_CreateWithEncodingOptionsAsync(GUID encoderId, Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue)) encodingOptions, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapEncoder)* return_asyncInfo);
	HRESULT abi_CreateForTranscodingAsync(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Graphics.Imaging.BitmapDecoder bitmapDecoder, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapEncoder)* return_asyncInfo);
	HRESULT abi_CreateForInPlacePropertyEncodingAsync(Windows.Graphics.Imaging.BitmapDecoder bitmapDecoder, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapEncoder)* return_asyncInfo);
}

@uuid("686cd241-4330-4c77-ace4-0334968b1768")
@WinrtFactory("Windows.Graphics.Imaging.BitmapEncoder")
interface IBitmapEncoderWithSoftwareBitmap : IInspectable
{
extern(Windows):
	HRESULT abi_SetSoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap bitmap);
}

@uuid("72a49a1c-8081-438d-91bc-94ecfc8185c6")
interface IBitmapFrame : IInspectable
{
extern(Windows):
	HRESULT abi_GetThumbnailAsync(Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.ImageStream)* return_asyncInfo);
	HRESULT get_BitmapProperties(Windows.Graphics.Imaging.BitmapPropertiesView* return_value);
	HRESULT get_BitmapPixelFormat(Windows.Graphics.Imaging.BitmapPixelFormat* return_value);
	HRESULT get_BitmapAlphaMode(Windows.Graphics.Imaging.BitmapAlphaMode* return_value);
	HRESULT get_DpiX(double* return_value);
	HRESULT get_DpiY(double* return_value);
	HRESULT get_PixelWidth(UINT32* return_value);
	HRESULT get_PixelHeight(UINT32* return_value);
	HRESULT get_OrientedPixelWidth(UINT32* return_value);
	HRESULT get_OrientedPixelHeight(UINT32* return_value);
	HRESULT abi_GetPixelDataAsync(Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.PixelDataProvider)* return_asyncInfo);
	HRESULT abi_GetPixelDataTransformedAsync(Windows.Graphics.Imaging.BitmapPixelFormat pixelFormat, Windows.Graphics.Imaging.BitmapAlphaMode alphaMode, Windows.Graphics.Imaging.BitmapTransform transform, Windows.Graphics.Imaging.ExifOrientationMode exifOrientationMode, Windows.Graphics.Imaging.ColorManagementMode colorManagementMode, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.PixelDataProvider)* return_asyncInfo);
}

@uuid("fe287c9a-420c-4963-87ad-691436e08383")
interface IBitmapFrameWithSoftwareBitmap_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetSoftwareBitmapAsync(Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap)* return_value);
	HRESULT abi_GetSoftwareBitmapConvertedAsync(Windows.Graphics.Imaging.BitmapPixelFormat pixelFormat, Windows.Graphics.Imaging.BitmapAlphaMode alphaMode, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap)* return_value);
	HRESULT abi_GetSoftwareBitmapTransformedAsync(Windows.Graphics.Imaging.BitmapPixelFormat pixelFormat, Windows.Graphics.Imaging.BitmapAlphaMode alphaMode, Windows.Graphics.Imaging.BitmapTransform transform, Windows.Graphics.Imaging.ExifOrientationMode exifOrientationMode, Windows.Graphics.Imaging.ColorManagementMode colorManagementMode, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap)* return_value);
}
@uuid("fe287c9a-420c-4963-87ad-691436e08383")
interface IBitmapFrameWithSoftwareBitmap : IBitmapFrameWithSoftwareBitmap_Base, Windows.Graphics.Imaging.IBitmapFrame {}

@uuid("ea9f4f1b-b505-4450-a4d1-e8ca94529d8d")
@WinrtFactory("Windows.Graphics.Imaging.BitmapProperties")
interface IBitmapProperties_Base : IInspectable
{
extern(Windows):
	HRESULT abi_SetPropertiesAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue)) propertiesToSet, Windows.Foundation.IAsyncAction* return_asyncInfo);
}
@uuid("ea9f4f1b-b505-4450-a4d1-e8ca94529d8d")
@WinrtFactory("Windows.Graphics.Imaging.BitmapProperties")
interface IBitmapProperties : IBitmapProperties_Base, Windows.Graphics.Imaging.IBitmapPropertiesView {}

@uuid("7e0fe87a-3a70-48f8-9c55-196cf5a545f5")
interface IBitmapPropertiesView : IInspectable
{
extern(Windows):
	HRESULT abi_GetPropertiesAsync(Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapPropertySet)* return_asyncInfo);
}

@uuid("ae755344-e268-4d35-adcf-e995d31a8d34")
@WinrtFactory("Windows.Graphics.Imaging.BitmapTransform")
interface IBitmapTransform : IInspectable
{
extern(Windows):
	HRESULT get_ScaledWidth(UINT32* return_value);
	HRESULT set_ScaledWidth(UINT32 value);
	HRESULT get_ScaledHeight(UINT32* return_value);
	HRESULT set_ScaledHeight(UINT32 value);
	HRESULT get_InterpolationMode(Windows.Graphics.Imaging.BitmapInterpolationMode* return_value);
	HRESULT set_InterpolationMode(Windows.Graphics.Imaging.BitmapInterpolationMode value);
	HRESULT get_Flip(Windows.Graphics.Imaging.BitmapFlip* return_value);
	HRESULT set_Flip(Windows.Graphics.Imaging.BitmapFlip value);
	HRESULT get_Rotation(Windows.Graphics.Imaging.BitmapRotation* return_value);
	HRESULT set_Rotation(Windows.Graphics.Imaging.BitmapRotation value);
	HRESULT get_Bounds(Windows.Graphics.Imaging.BitmapBounds* return_value);
	HRESULT set_Bounds(Windows.Graphics.Imaging.BitmapBounds value);
}

@uuid("cd8044a9-2443-4000-b0cd-79316c56f589")
@WinrtFactory("Windows.Graphics.Imaging.BitmapTypedValue")
interface IBitmapTypedValue : IInspectable
{
extern(Windows):
	HRESULT get_Value(IInspectable* return_value);
	HRESULT get_Type(Windows.Foundation.PropertyType* return_value);
}

@uuid("92dbb599-ce13-46bb-9545-cb3a3f63eb8b")
@WinrtFactory("Windows.Graphics.Imaging.BitmapTypedValue")
interface IBitmapTypedValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(IInspectable value, Windows.Foundation.PropertyType type, Windows.Graphics.Imaging.BitmapTypedValue* return_bitmapTypedValue);
}

@uuid("dd831f25-185c-4595-9fb9-ccbe6ec18a6f")
@WinrtFactory("Windows.Graphics.Imaging.PixelDataProvider")
interface IPixelDataProvider : IInspectable
{
extern(Windows):
	HRESULT abi_DetachPixelData(UINT32* out___pixelDataSize, ubyte** return_pixelData);
}

@uuid("689e0708-7eef-483f-963f-da938818e073")
@WinrtFactory("Windows.Graphics.Imaging.SoftwareBitmap")
interface ISoftwareBitmap_Base : IInspectable
{
extern(Windows):
	HRESULT get_BitmapPixelFormat(Windows.Graphics.Imaging.BitmapPixelFormat* return_value);
	HRESULT get_BitmapAlphaMode(Windows.Graphics.Imaging.BitmapAlphaMode* return_value);
	HRESULT get_PixelWidth(INT32* return_value);
	HRESULT get_PixelHeight(INT32* return_value);
	HRESULT get_IsReadOnly(bool* return_value);
	HRESULT set_DpiX(double value);
	HRESULT get_DpiX(double* return_value);
	HRESULT set_DpiY(double value);
	HRESULT get_DpiY(double* return_value);
	HRESULT abi_LockBuffer(Windows.Graphics.Imaging.BitmapBufferAccessMode mode, Windows.Graphics.Imaging.BitmapBuffer* return_value);
	HRESULT abi_CopyTo(Windows.Graphics.Imaging.SoftwareBitmap bitmap);
	HRESULT abi_CopyFromBuffer(Windows.Storage.Streams.IBuffer buffer);
	HRESULT abi_CopyToBuffer(Windows.Storage.Streams.IBuffer buffer);
	HRESULT abi_GetReadOnlyView(Windows.Graphics.Imaging.SoftwareBitmap* return_value);
}
@uuid("689e0708-7eef-483f-963f-da938818e073")
@WinrtFactory("Windows.Graphics.Imaging.SoftwareBitmap")
interface ISoftwareBitmap : ISoftwareBitmap_Base, Windows.Foundation.IClosable {}

@uuid("c99feb69-2d62-4d47-a6b3-4fdb6a07fdf8")
@WinrtFactory("Windows.Graphics.Imaging.SoftwareBitmap")
interface ISoftwareBitmapFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Graphics.Imaging.BitmapPixelFormat format, INT32 width, INT32 height, Windows.Graphics.Imaging.SoftwareBitmap* return_value);
	HRESULT abi_CreateWithAlpha(Windows.Graphics.Imaging.BitmapPixelFormat format, INT32 width, INT32 height, Windows.Graphics.Imaging.BitmapAlphaMode alpha, Windows.Graphics.Imaging.SoftwareBitmap* return_value);
}

@uuid("df0385db-672f-4a9d-806e-c2442f343e86")
@WinrtFactory("Windows.Graphics.Imaging.SoftwareBitmap")
interface ISoftwareBitmapStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Copy(Windows.Graphics.Imaging.SoftwareBitmap source, Windows.Graphics.Imaging.SoftwareBitmap* return_value);
	HRESULT abi_Convert(Windows.Graphics.Imaging.SoftwareBitmap source, Windows.Graphics.Imaging.BitmapPixelFormat format, Windows.Graphics.Imaging.SoftwareBitmap* return_value);
	HRESULT abi_ConvertWithAlpha(Windows.Graphics.Imaging.SoftwareBitmap source, Windows.Graphics.Imaging.BitmapPixelFormat format, Windows.Graphics.Imaging.BitmapAlphaMode alpha, Windows.Graphics.Imaging.SoftwareBitmap* return_value);
	HRESULT abi_CreateCopyFromBuffer(Windows.Storage.Streams.IBuffer source, Windows.Graphics.Imaging.BitmapPixelFormat format, INT32 width, INT32 height, Windows.Graphics.Imaging.SoftwareBitmap* return_value);
	HRESULT abi_CreateCopyWithAlphaFromBuffer(Windows.Storage.Streams.IBuffer source, Windows.Graphics.Imaging.BitmapPixelFormat format, INT32 width, INT32 height, Windows.Graphics.Imaging.BitmapAlphaMode alpha, Windows.Graphics.Imaging.SoftwareBitmap* return_value);
	HRESULT abi_CreateCopyFromSurfaceAsync(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface surface, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap)* return_value);
	HRESULT abi_CreateCopyWithAlphaFromSurfaceAsync(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface surface, Windows.Graphics.Imaging.BitmapAlphaMode alpha, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap)* return_value);
}

interface BitmapBuffer : Windows.Graphics.Imaging.IBitmapBuffer, Windows.Foundation.IMemoryBuffer, Windows.Foundation.IClosable
{
extern(Windows):
	final INT32 GetPlaneCount()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapBuffer).abi_GetPlaneCount(&_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.BitmapPlaneDescription GetPlaneDescription(INT32 index)
	{
		Windows.Graphics.Imaging.BitmapPlaneDescription _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapBuffer).abi_GetPlaneDescription(index, &_ret));
		return _ret;
	}
	final Windows.Foundation.IMemoryBufferReference CreateReference()
	{
		Windows.Foundation.IMemoryBufferReference _ret;
		Debug.OK(this.as!(Windows.Foundation.IMemoryBuffer).abi_CreateReference(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface BitmapCodecInformation : Windows.Graphics.Imaging.IBitmapCodecInformation
{
extern(Windows):
	final GUID CodecId()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapCodecInformation).get_CodecId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) FileExtensions()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapCodecInformation).get_FileExtensions(&_ret));
		return _ret;
	}
	final HSTRING FriendlyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapCodecInformation).get_FriendlyName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) MimeTypes()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapCodecInformation).get_MimeTypes(&_ret));
		return _ret;
	}
}

interface BitmapDecoder : Windows.Graphics.Imaging.IBitmapDecoder, Windows.Graphics.Imaging.IBitmapFrame, Windows.Graphics.Imaging.IBitmapFrameWithSoftwareBitmap
{
extern(Windows):
	final Windows.Graphics.Imaging.BitmapPropertiesView BitmapContainerProperties()
	{
		Windows.Graphics.Imaging.BitmapPropertiesView _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapDecoder).get_BitmapContainerProperties(&_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.BitmapCodecInformation DecoderInformation()
	{
		Windows.Graphics.Imaging.BitmapCodecInformation _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapDecoder).get_DecoderInformation(&_ret));
		return _ret;
	}
	final UINT32 FrameCount()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapDecoder).get_FrameCount(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.ImageStream) GetPreviewAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.ImageStream) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapDecoder).abi_GetPreviewAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapFrame) GetFrameAsync(UINT32 frameIndex)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapFrame) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapDecoder).abi_GetFrameAsync(frameIndex, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.ImageStream) GetThumbnailAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.ImageStream) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).abi_GetThumbnailAsync(&_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.BitmapPropertiesView BitmapProperties()
	{
		Windows.Graphics.Imaging.BitmapPropertiesView _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_BitmapProperties(&_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.BitmapPixelFormat BitmapPixelFormat()
	{
		Windows.Graphics.Imaging.BitmapPixelFormat _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_BitmapPixelFormat(&_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.BitmapAlphaMode BitmapAlphaMode()
	{
		Windows.Graphics.Imaging.BitmapAlphaMode _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_BitmapAlphaMode(&_ret));
		return _ret;
	}
	final double DpiX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_DpiX(&_ret));
		return _ret;
	}
	final double DpiY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_DpiY(&_ret));
		return _ret;
	}
	final UINT32 PixelWidth()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_PixelWidth(&_ret));
		return _ret;
	}
	final UINT32 PixelHeight()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_PixelHeight(&_ret));
		return _ret;
	}
	final UINT32 OrientedPixelWidth()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_OrientedPixelWidth(&_ret));
		return _ret;
	}
	final UINT32 OrientedPixelHeight()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_OrientedPixelHeight(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.PixelDataProvider) GetPixelDataAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.PixelDataProvider) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).abi_GetPixelDataAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.PixelDataProvider) GetPixelDataTransformedAsync(Windows.Graphics.Imaging.BitmapPixelFormat pixelFormat, Windows.Graphics.Imaging.BitmapAlphaMode alphaMode, Windows.Graphics.Imaging.BitmapTransform transform, Windows.Graphics.Imaging.ExifOrientationMode exifOrientationMode, Windows.Graphics.Imaging.ColorManagementMode colorManagementMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.PixelDataProvider) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).abi_GetPixelDataTransformedAsync(pixelFormat, alphaMode, transform, exifOrientationMode, colorManagementMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap) GetSoftwareBitmapAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrameWithSoftwareBitmap).abi_GetSoftwareBitmapAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap) GetSoftwareBitmapConvertedAsync(Windows.Graphics.Imaging.BitmapPixelFormat pixelFormat, Windows.Graphics.Imaging.BitmapAlphaMode alphaMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrameWithSoftwareBitmap).abi_GetSoftwareBitmapConvertedAsync(pixelFormat, alphaMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap) GetSoftwareBitmapTransformedAsync(Windows.Graphics.Imaging.BitmapPixelFormat pixelFormat, Windows.Graphics.Imaging.BitmapAlphaMode alphaMode, Windows.Graphics.Imaging.BitmapTransform transform, Windows.Graphics.Imaging.ExifOrientationMode exifOrientationMode, Windows.Graphics.Imaging.ColorManagementMode colorManagementMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrameWithSoftwareBitmap).abi_GetSoftwareBitmapTransformedAsync(pixelFormat, alphaMode, transform, exifOrientationMode, colorManagementMode, &_ret));
		return _ret;
	}

	private static Windows.Graphics.Imaging.IBitmapDecoderStatics _staticInstance;
	public static Windows.Graphics.Imaging.IBitmapDecoderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Graphics.Imaging.IBitmapDecoderStatics);
		return _staticInstance;
	}
	static GUID BmpDecoderId()
	{
		GUID _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapDecoderStatics).get_BmpDecoderId(&_ret));
		return _ret;
	}
	static GUID JpegDecoderId()
	{
		GUID _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapDecoderStatics).get_JpegDecoderId(&_ret));
		return _ret;
	}
	static GUID PngDecoderId()
	{
		GUID _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapDecoderStatics).get_PngDecoderId(&_ret));
		return _ret;
	}
	static GUID TiffDecoderId()
	{
		GUID _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapDecoderStatics).get_TiffDecoderId(&_ret));
		return _ret;
	}
	static GUID GifDecoderId()
	{
		GUID _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapDecoderStatics).get_GifDecoderId(&_ret));
		return _ret;
	}
	static GUID JpegXRDecoderId()
	{
		GUID _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapDecoderStatics).get_JpegXRDecoderId(&_ret));
		return _ret;
	}
	static GUID IcoDecoderId()
	{
		GUID _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapDecoderStatics).get_IcoDecoderId(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Imaging.BitmapCodecInformation) GetDecoderInformationEnumerator()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Imaging.BitmapCodecInformation) _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapDecoderStatics).abi_GetDecoderInformationEnumerator(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapDecoder) CreateAsync(Windows.Storage.Streams.IRandomAccessStream stream)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapDecoder) _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapDecoderStatics).abi_CreateAsync(stream, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapDecoder) CreateWithIdAsync(GUID decoderId, Windows.Storage.Streams.IRandomAccessStream stream)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapDecoder) _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapDecoderStatics).abi_CreateWithIdAsync(decoderId, stream, &_ret));
		return _ret;
	}
}

interface BitmapEncoder : Windows.Graphics.Imaging.IBitmapEncoder, Windows.Graphics.Imaging.IBitmapEncoderWithSoftwareBitmap
{
extern(Windows):
	final Windows.Graphics.Imaging.BitmapCodecInformation EncoderInformation()
	{
		Windows.Graphics.Imaging.BitmapCodecInformation _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapEncoder).get_EncoderInformation(&_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.BitmapProperties BitmapProperties()
	{
		Windows.Graphics.Imaging.BitmapProperties _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapEncoder).get_BitmapProperties(&_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.BitmapProperties BitmapContainerProperties()
	{
		Windows.Graphics.Imaging.BitmapProperties _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapEncoder).get_BitmapContainerProperties(&_ret));
		return _ret;
	}
	final bool IsThumbnailGenerated()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapEncoder).get_IsThumbnailGenerated(&_ret));
		return _ret;
	}
	final void IsThumbnailGenerated(bool value)
	{
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapEncoder).set_IsThumbnailGenerated(value));
	}
	final UINT32 GeneratedThumbnailWidth()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapEncoder).get_GeneratedThumbnailWidth(&_ret));
		return _ret;
	}
	final void GeneratedThumbnailWidth(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapEncoder).set_GeneratedThumbnailWidth(value));
	}
	final UINT32 GeneratedThumbnailHeight()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapEncoder).get_GeneratedThumbnailHeight(&_ret));
		return _ret;
	}
	final void GeneratedThumbnailHeight(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapEncoder).set_GeneratedThumbnailHeight(value));
	}
	final Windows.Graphics.Imaging.BitmapTransform BitmapTransform()
	{
		Windows.Graphics.Imaging.BitmapTransform _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapEncoder).get_BitmapTransform(&_ret));
		return _ret;
	}
	final void SetPixelData(Windows.Graphics.Imaging.BitmapPixelFormat pixelFormat, Windows.Graphics.Imaging.BitmapAlphaMode alphaMode, UINT32 width, UINT32 height, double dpiX, double dpiY, UINT32 __pixelsSize, ubyte* pixels)
	{
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapEncoder).abi_SetPixelData(pixelFormat, alphaMode, width, height, dpiX, dpiY, __pixelsSize, pixels));
	}
	final Windows.Foundation.IAsyncAction GoToNextFrameAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapEncoder).abi_GoToNextFrameAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction GoToNextFrameWithEncodingOptionsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue)) encodingOptions)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapEncoder).abi_GoToNextFrameWithEncodingOptionsAsync(encodingOptions, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction FlushAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapEncoder).abi_FlushAsync(&_ret));
		return _ret;
	}
	final void SetSoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap bitmap)
	{
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapEncoderWithSoftwareBitmap).abi_SetSoftwareBitmap(bitmap));
	}

	private static Windows.Graphics.Imaging.IBitmapEncoderStatics _staticInstance;
	public static Windows.Graphics.Imaging.IBitmapEncoderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Graphics.Imaging.IBitmapEncoderStatics);
		return _staticInstance;
	}
	static GUID BmpEncoderId()
	{
		GUID _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapEncoderStatics).get_BmpEncoderId(&_ret));
		return _ret;
	}
	static GUID JpegEncoderId()
	{
		GUID _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapEncoderStatics).get_JpegEncoderId(&_ret));
		return _ret;
	}
	static GUID PngEncoderId()
	{
		GUID _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapEncoderStatics).get_PngEncoderId(&_ret));
		return _ret;
	}
	static GUID TiffEncoderId()
	{
		GUID _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapEncoderStatics).get_TiffEncoderId(&_ret));
		return _ret;
	}
	static GUID GifEncoderId()
	{
		GUID _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapEncoderStatics).get_GifEncoderId(&_ret));
		return _ret;
	}
	static GUID JpegXREncoderId()
	{
		GUID _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapEncoderStatics).get_JpegXREncoderId(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Imaging.BitmapCodecInformation) GetEncoderInformationEnumerator()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Imaging.BitmapCodecInformation) _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapEncoderStatics).abi_GetEncoderInformationEnumerator(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapEncoder) CreateAsync(GUID encoderId, Windows.Storage.Streams.IRandomAccessStream stream)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapEncoder) _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapEncoderStatics).abi_CreateAsync(encoderId, stream, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapEncoder) CreateWithEncodingOptionsAsync(GUID encoderId, Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue)) encodingOptions)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapEncoder) _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapEncoderStatics).abi_CreateWithEncodingOptionsAsync(encoderId, stream, encodingOptions, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapEncoder) CreateForTranscodingAsync(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Graphics.Imaging.BitmapDecoder bitmapDecoder)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapEncoder) _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapEncoderStatics).abi_CreateForTranscodingAsync(stream, bitmapDecoder, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapEncoder) CreateForInPlacePropertyEncodingAsync(Windows.Graphics.Imaging.BitmapDecoder bitmapDecoder)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapEncoder) _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.IBitmapEncoderStatics).abi_CreateForInPlacePropertyEncodingAsync(bitmapDecoder, &_ret));
		return _ret;
	}
}

interface BitmapFrame : Windows.Graphics.Imaging.IBitmapFrame, Windows.Graphics.Imaging.IBitmapFrameWithSoftwareBitmap
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.ImageStream) GetThumbnailAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.ImageStream) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).abi_GetThumbnailAsync(&_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.BitmapPropertiesView BitmapProperties()
	{
		Windows.Graphics.Imaging.BitmapPropertiesView _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_BitmapProperties(&_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.BitmapPixelFormat BitmapPixelFormat()
	{
		Windows.Graphics.Imaging.BitmapPixelFormat _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_BitmapPixelFormat(&_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.BitmapAlphaMode BitmapAlphaMode()
	{
		Windows.Graphics.Imaging.BitmapAlphaMode _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_BitmapAlphaMode(&_ret));
		return _ret;
	}
	final double DpiX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_DpiX(&_ret));
		return _ret;
	}
	final double DpiY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_DpiY(&_ret));
		return _ret;
	}
	final UINT32 PixelWidth()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_PixelWidth(&_ret));
		return _ret;
	}
	final UINT32 PixelHeight()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_PixelHeight(&_ret));
		return _ret;
	}
	final UINT32 OrientedPixelWidth()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_OrientedPixelWidth(&_ret));
		return _ret;
	}
	final UINT32 OrientedPixelHeight()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).get_OrientedPixelHeight(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.PixelDataProvider) GetPixelDataAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.PixelDataProvider) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).abi_GetPixelDataAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.PixelDataProvider) GetPixelDataTransformedAsync(Windows.Graphics.Imaging.BitmapPixelFormat pixelFormat, Windows.Graphics.Imaging.BitmapAlphaMode alphaMode, Windows.Graphics.Imaging.BitmapTransform transform, Windows.Graphics.Imaging.ExifOrientationMode exifOrientationMode, Windows.Graphics.Imaging.ColorManagementMode colorManagementMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.PixelDataProvider) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrame).abi_GetPixelDataTransformedAsync(pixelFormat, alphaMode, transform, exifOrientationMode, colorManagementMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap) GetSoftwareBitmapAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrameWithSoftwareBitmap).abi_GetSoftwareBitmapAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap) GetSoftwareBitmapConvertedAsync(Windows.Graphics.Imaging.BitmapPixelFormat pixelFormat, Windows.Graphics.Imaging.BitmapAlphaMode alphaMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrameWithSoftwareBitmap).abi_GetSoftwareBitmapConvertedAsync(pixelFormat, alphaMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap) GetSoftwareBitmapTransformedAsync(Windows.Graphics.Imaging.BitmapPixelFormat pixelFormat, Windows.Graphics.Imaging.BitmapAlphaMode alphaMode, Windows.Graphics.Imaging.BitmapTransform transform, Windows.Graphics.Imaging.ExifOrientationMode exifOrientationMode, Windows.Graphics.Imaging.ColorManagementMode colorManagementMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapFrameWithSoftwareBitmap).abi_GetSoftwareBitmapTransformedAsync(pixelFormat, alphaMode, transform, exifOrientationMode, colorManagementMode, &_ret));
		return _ret;
	}
}

interface BitmapProperties : Windows.Graphics.Imaging.IBitmapProperties, Windows.Graphics.Imaging.IBitmapPropertiesView
{
extern(Windows):
	final Windows.Foundation.IAsyncAction SetPropertiesAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue)) propertiesToSet)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapProperties).abi_SetPropertiesAsync(propertiesToSet, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapPropertySet) GetPropertiesAsync(Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapPropertySet) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapPropertiesView).abi_GetPropertiesAsync(propertiesToRetrieve, &_ret));
		return _ret;
	}
}

interface BitmapPropertiesView : Windows.Graphics.Imaging.IBitmapPropertiesView
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapPropertySet) GetPropertiesAsync(Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapPropertySet) _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapPropertiesView).abi_GetPropertiesAsync(propertiesToRetrieve, &_ret));
		return _ret;
	}
}

interface BitmapPropertySet : Windows.Foundation.Collections.IMap!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue))
{
extern(Windows):
	final  Windows.Graphics.Imaging.BitmapTypedValue Lookup(HSTRING key)
	{
		 Windows.Graphics.Imaging.BitmapTypedValue _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue)).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue)).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(HSTRING key)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue)).abi_HasKey(key, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 Windows.Graphics.Imaging.BitmapTypedValue) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  Windows.Graphics.Imaging.BitmapTypedValue) _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue)).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(HSTRING key,	Windows.Graphics.Imaging.BitmapTypedValue value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue)).abi_Insert(key, value, &_ret));
		return _ret;
	}
	final void Remove(HSTRING key)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue)).abi_Remove(key));
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue)).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue))* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Graphics.Imaging.BitmapTypedValue))).abi_First(out_first));
	}
}

interface BitmapTransform : Windows.Graphics.Imaging.IBitmapTransform
{
extern(Windows):
	final UINT32 ScaledWidth()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapTransform).get_ScaledWidth(&_ret));
		return _ret;
	}
	final void ScaledWidth(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapTransform).set_ScaledWidth(value));
	}
	final UINT32 ScaledHeight()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapTransform).get_ScaledHeight(&_ret));
		return _ret;
	}
	final void ScaledHeight(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapTransform).set_ScaledHeight(value));
	}
	final Windows.Graphics.Imaging.BitmapInterpolationMode InterpolationMode()
	{
		Windows.Graphics.Imaging.BitmapInterpolationMode _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapTransform).get_InterpolationMode(&_ret));
		return _ret;
	}
	final void InterpolationMode(Windows.Graphics.Imaging.BitmapInterpolationMode value)
	{
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapTransform).set_InterpolationMode(value));
	}
	final Windows.Graphics.Imaging.BitmapFlip Flip()
	{
		Windows.Graphics.Imaging.BitmapFlip _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapTransform).get_Flip(&_ret));
		return _ret;
	}
	final void Flip(Windows.Graphics.Imaging.BitmapFlip value)
	{
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapTransform).set_Flip(value));
	}
	final Windows.Graphics.Imaging.BitmapRotation Rotation()
	{
		Windows.Graphics.Imaging.BitmapRotation _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapTransform).get_Rotation(&_ret));
		return _ret;
	}
	final void Rotation(Windows.Graphics.Imaging.BitmapRotation value)
	{
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapTransform).set_Rotation(value));
	}
	final Windows.Graphics.Imaging.BitmapBounds Bounds()
	{
		Windows.Graphics.Imaging.BitmapBounds _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapTransform).get_Bounds(&_ret));
		return _ret;
	}
	final void Bounds(Windows.Graphics.Imaging.BitmapBounds value)
	{
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapTransform).set_Bounds(value));
	}
}

interface BitmapTypedValue : Windows.Graphics.Imaging.IBitmapTypedValue
{
extern(Windows):
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapTypedValue).get_Value(&_ret));
		return _ret;
	}
	final Windows.Foundation.PropertyType Type()
	{
		Windows.Foundation.PropertyType _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IBitmapTypedValue).get_Type(&_ret));
		return _ret;
	}
}

interface ImageStream : Windows.Storage.Streams.IRandomAccessStreamWithContentType, Windows.Storage.Streams.IContentTypeProvider, Windows.Storage.Streams.IRandomAccessStream, Windows.Storage.Streams.IOutputStream, Windows.Foundation.IClosable, Windows.Storage.Streams.IInputStream
{
extern(Windows):
	final HSTRING ContentType()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IContentTypeProvider).get_ContentType(&_ret));
		return _ret;
	}
	final ulong Size()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_Size(&_ret));
		return _ret;
	}
	final void Size(ulong value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).set_Size(value));
	}
	final Windows.Storage.Streams.IInputStream GetInputStreamAt(ulong position)
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_GetInputStreamAt(position, &_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream GetOutputStreamAt(ulong position)
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_GetOutputStreamAt(position, &_ret));
		return _ret;
	}
	final ulong Position()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_Position(&_ret));
		return _ret;
	}
	final void Seek(ulong position)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_Seek(position));
	}
	final Windows.Storage.Streams.IRandomAccessStream CloneStream()
	{
		Windows.Storage.Streams.IRandomAccessStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_CloneStream(&_ret));
		return _ret;
	}
	final bool CanRead()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_CanRead(&_ret));
		return _ret;
	}
	final bool CanWrite()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_CanWrite(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) WriteAsync(Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IOutputStream).abi_WriteAsync(buffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) FlushAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IOutputStream).abi_FlushAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) ReadAsync(Windows.Storage.Streams.IBuffer buffer, UINT32 count, Windows.Storage.Streams.InputStreamOptions options)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IInputStream).abi_ReadAsync(buffer, count, options, &_ret));
		return _ret;
	}
}

interface PixelDataProvider : Windows.Graphics.Imaging.IPixelDataProvider
{
extern(Windows):
	final ubyte* DetachPixelData(UINT32* out___pixelDataSize)
	{
		ubyte* _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.IPixelDataProvider).abi_DetachPixelData(out___pixelDataSize, &_ret));
		return _ret;
	}
}

interface SoftwareBitmap : Windows.Graphics.Imaging.ISoftwareBitmap, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Graphics.Imaging.BitmapPixelFormat BitmapPixelFormat()
	{
		Windows.Graphics.Imaging.BitmapPixelFormat _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.ISoftwareBitmap).get_BitmapPixelFormat(&_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.BitmapAlphaMode BitmapAlphaMode()
	{
		Windows.Graphics.Imaging.BitmapAlphaMode _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.ISoftwareBitmap).get_BitmapAlphaMode(&_ret));
		return _ret;
	}
	final INT32 PixelWidth()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.ISoftwareBitmap).get_PixelWidth(&_ret));
		return _ret;
	}
	final INT32 PixelHeight()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.ISoftwareBitmap).get_PixelHeight(&_ret));
		return _ret;
	}
	final bool IsReadOnly()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.ISoftwareBitmap).get_IsReadOnly(&_ret));
		return _ret;
	}
	final void DpiX(double value)
	{
		Debug.OK(this.as!(Windows.Graphics.Imaging.ISoftwareBitmap).set_DpiX(value));
	}
	final double DpiX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.ISoftwareBitmap).get_DpiX(&_ret));
		return _ret;
	}
	final void DpiY(double value)
	{
		Debug.OK(this.as!(Windows.Graphics.Imaging.ISoftwareBitmap).set_DpiY(value));
	}
	final double DpiY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.ISoftwareBitmap).get_DpiY(&_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.BitmapBuffer LockBuffer(Windows.Graphics.Imaging.BitmapBufferAccessMode mode)
	{
		Windows.Graphics.Imaging.BitmapBuffer _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.ISoftwareBitmap).abi_LockBuffer(mode, &_ret));
		return _ret;
	}
	final void CopyTo(Windows.Graphics.Imaging.SoftwareBitmap bitmap)
	{
		Debug.OK(this.as!(Windows.Graphics.Imaging.ISoftwareBitmap).abi_CopyTo(bitmap));
	}
	final void CopyFromBuffer(Windows.Storage.Streams.IBuffer buffer)
	{
		Debug.OK(this.as!(Windows.Graphics.Imaging.ISoftwareBitmap).abi_CopyFromBuffer(buffer));
	}
	final void CopyToBuffer(Windows.Storage.Streams.IBuffer buffer)
	{
		Debug.OK(this.as!(Windows.Graphics.Imaging.ISoftwareBitmap).abi_CopyToBuffer(buffer));
	}
	final Windows.Graphics.Imaging.SoftwareBitmap GetReadOnlyView()
	{
		Windows.Graphics.Imaging.SoftwareBitmap _ret;
		Debug.OK(this.as!(Windows.Graphics.Imaging.ISoftwareBitmap).abi_GetReadOnlyView(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}

	private static Windows.Graphics.Imaging.ISoftwareBitmapStatics _staticInstance;
	public static Windows.Graphics.Imaging.ISoftwareBitmapStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Graphics.Imaging.ISoftwareBitmapStatics);
		return _staticInstance;
	}
	static Windows.Graphics.Imaging.SoftwareBitmap Copy(Windows.Graphics.Imaging.SoftwareBitmap source)
	{
		Windows.Graphics.Imaging.SoftwareBitmap _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.ISoftwareBitmapStatics).abi_Copy(source, &_ret));
		return _ret;
	}
	static Windows.Graphics.Imaging.SoftwareBitmap Convert(Windows.Graphics.Imaging.SoftwareBitmap source, Windows.Graphics.Imaging.BitmapPixelFormat format)
	{
		Windows.Graphics.Imaging.SoftwareBitmap _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.ISoftwareBitmapStatics).abi_Convert(source, format, &_ret));
		return _ret;
	}
	static Windows.Graphics.Imaging.SoftwareBitmap ConvertWithAlpha(Windows.Graphics.Imaging.SoftwareBitmap source, Windows.Graphics.Imaging.BitmapPixelFormat format, Windows.Graphics.Imaging.BitmapAlphaMode alpha)
	{
		Windows.Graphics.Imaging.SoftwareBitmap _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.ISoftwareBitmapStatics).abi_ConvertWithAlpha(source, format, alpha, &_ret));
		return _ret;
	}
	static Windows.Graphics.Imaging.SoftwareBitmap CreateCopyFromBuffer(Windows.Storage.Streams.IBuffer source, Windows.Graphics.Imaging.BitmapPixelFormat format, INT32 width, INT32 height)
	{
		Windows.Graphics.Imaging.SoftwareBitmap _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.ISoftwareBitmapStatics).abi_CreateCopyFromBuffer(source, format, width, height, &_ret));
		return _ret;
	}
	static Windows.Graphics.Imaging.SoftwareBitmap CreateCopyWithAlphaFromBuffer(Windows.Storage.Streams.IBuffer source, Windows.Graphics.Imaging.BitmapPixelFormat format, INT32 width, INT32 height, Windows.Graphics.Imaging.BitmapAlphaMode alpha)
	{
		Windows.Graphics.Imaging.SoftwareBitmap _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.ISoftwareBitmapStatics).abi_CreateCopyWithAlphaFromBuffer(source, format, width, height, alpha, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap) CreateCopyFromSurfaceAsync(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface surface)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap) _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.ISoftwareBitmapStatics).abi_CreateCopyFromSurfaceAsync(surface, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap) CreateCopyWithAlphaFromSurfaceAsync(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface surface, Windows.Graphics.Imaging.BitmapAlphaMode alpha)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap) _ret;
		Debug.OK(staticInstance.as!(Windows.Graphics.Imaging.ISoftwareBitmapStatics).abi_CreateCopyWithAlphaFromSurfaceAsync(surface, alpha, &_ret));
		return _ret;
	}
}

enum BitmapAlphaMode
{
	Premultiplied = 0,
	Straight = 1,
	Ignore = 2
}

enum BitmapBufferAccessMode
{
	Read = 0,
	ReadWrite = 1,
	Write = 2
}

enum BitmapFlip
{
	None = 0,
	Horizontal = 1,
	Vertical = 2
}

enum BitmapInterpolationMode
{
	NearestNeighbor = 0,
	Linear = 1,
	Cubic = 2,
	Fant = 3
}

enum BitmapPixelFormat
{
	Unknown = 0,
	Rgba16 = 12,
	Rgba8 = 30,
	Gray16 = 57,
	Gray8 = 62,
	Bgra8 = 87,
	Nv12 = 103,
	Yuy2 = 107
}

enum BitmapRotation
{
	None = 0,
	Clockwise90Degrees = 1,
	Clockwise180Degrees = 2,
	Clockwise270Degrees = 3
}

enum ColorManagementMode
{
	DoNotColorManage = 0,
	ColorManageToSRgb = 1
}

enum ExifOrientationMode
{
	IgnoreExifOrientation = 0,
	RespectExifOrientation = 1
}

enum JpegSubsamplingMode
{
	Default = 0,
	Y4Cb2Cr0 = 1,
	Y4Cb2Cr2 = 2,
	Y4Cb4Cr4 = 3
}

enum PngFilterMode
{
	Automatic = 0,
	None = 1,
	Sub = 2,
	Up = 3,
	Average = 4,
	Paeth = 5,
	Adaptive = 6
}

enum TiffCompressionMode
{
	Automatic = 0,
	None = 1,
	Ccitt3 = 2,
	Ccitt4 = 3,
	Lzw = 4,
	Rle = 5,
	Zip = 6,
	LzwhDifferencing = 7
}