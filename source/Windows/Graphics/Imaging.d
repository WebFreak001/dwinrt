module Windows.Graphics.Imaging;

import dwinrt;

@uuid("a53e04c4-399c-438c-b28f-a63a6b83d1a1")
@WinrtFactory("Windows.Graphics.Imaging.BitmapBuffer")
interface IBitmapBuffer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetPlaneCount(INT32* return_value);
	HRESULT abi_GetPlaneDescription(INT32 index, Windows.Graphics.Imaging.BitmapPlaneDescription* return_value);
}

@uuid("400caaf2-c4b0-4392-a3b0-6f6f9ba95cb4")
@WinrtFactory("Windows.Graphics.Imaging.BitmapCodecInformation")
interface IBitmapCodecInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	HRESULT abi_SetPixelData(Windows.Graphics.Imaging.BitmapPixelFormat pixelFormat, Windows.Graphics.Imaging.BitmapAlphaMode alphaMode, UINT32 width, UINT32 height, double dpiX, double dpiY, UINT32 __pixelsSize, BYTE* pixels);
	HRESULT abi_GoToNextFrameAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_GoToNextFrameWithEncodingOptionsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING,Windows.Graphics.Imaging.BitmapTypedValue*)) encodingOptions, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_FlushAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("a74356a7-a4e4-4eb9-8e40-564de7e1ccb2")
@WinrtFactory("Windows.Graphics.Imaging.BitmapEncoder")
interface IBitmapEncoderStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BmpEncoderId(GUID* return_value);
	HRESULT get_JpegEncoderId(GUID* return_value);
	HRESULT get_PngEncoderId(GUID* return_value);
	HRESULT get_TiffEncoderId(GUID* return_value);
	HRESULT get_GifEncoderId(GUID* return_value);
	HRESULT get_JpegXREncoderId(GUID* return_value);
	HRESULT abi_GetEncoderInformationEnumerator(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Imaging.BitmapCodecInformation)* return_encoderInformationEnumerator);
	HRESULT abi_CreateAsync(GUID encoderId, Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapEncoder)* return_asyncInfo);
	HRESULT abi_CreateWithEncodingOptionsAsync(GUID encoderId, Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING,Windows.Graphics.Imaging.BitmapTypedValue*)) encodingOptions, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapEncoder)* return_asyncInfo);
	HRESULT abi_CreateForTranscodingAsync(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Graphics.Imaging.BitmapDecoder bitmapDecoder, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapEncoder)* return_asyncInfo);
	HRESULT abi_CreateForInPlacePropertyEncodingAsync(Windows.Graphics.Imaging.BitmapDecoder bitmapDecoder, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapEncoder)* return_asyncInfo);
}

@uuid("686cd241-4330-4c77-ace4-0334968b1768")
@WinrtFactory("Windows.Graphics.Imaging.BitmapEncoder")
interface IBitmapEncoderWithSoftwareBitmap : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetSoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap bitmap);
}

@uuid("72a49a1c-8081-438d-91bc-94ecfc8185c6")
interface IBitmapFrame : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
interface IBitmapFrameWithSoftwareBitmap : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetSoftwareBitmapAsync(Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap)* return_value);
	HRESULT abi_GetSoftwareBitmapConvertedAsync(Windows.Graphics.Imaging.BitmapPixelFormat pixelFormat, Windows.Graphics.Imaging.BitmapAlphaMode alphaMode, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap)* return_value);
	HRESULT abi_GetSoftwareBitmapTransformedAsync(Windows.Graphics.Imaging.BitmapPixelFormat pixelFormat, Windows.Graphics.Imaging.BitmapAlphaMode alphaMode, Windows.Graphics.Imaging.BitmapTransform transform, Windows.Graphics.Imaging.ExifOrientationMode exifOrientationMode, Windows.Graphics.Imaging.ColorManagementMode colorManagementMode, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap)* return_value);
}

@uuid("ea9f4f1b-b505-4450-a4d1-e8ca94529d8d")
@WinrtFactory("Windows.Graphics.Imaging.BitmapProperties")
interface IBitmapProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetPropertiesAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING,Windows.Graphics.Imaging.BitmapTypedValue*)) propertiesToSet, Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("7e0fe87a-3a70-48f8-9c55-196cf5a545f5")
interface IBitmapPropertiesView : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetPropertiesAsync(Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.BitmapPropertySet)* return_asyncInfo);
}

@uuid("ae755344-e268-4d35-adcf-e995d31a8d34")
@WinrtFactory("Windows.Graphics.Imaging.BitmapTransform")
interface IBitmapTransform : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Value(IInspectable* return_value);
	HRESULT get_Type(Windows.Foundation.PropertyType* return_value);
}

@uuid("92dbb599-ce13-46bb-9545-cb3a3f63eb8b")
@WinrtFactory("Windows.Graphics.Imaging.BitmapTypedValue")
interface IBitmapTypedValueFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(IInspectable value, Windows.Foundation.PropertyType type, Windows.Graphics.Imaging.BitmapTypedValue* return_bitmapTypedValue);
}

@uuid("dd831f25-185c-4595-9fb9-ccbe6ec18a6f")
@WinrtFactory("Windows.Graphics.Imaging.PixelDataProvider")
interface IPixelDataProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_DetachPixelData(UINT32* out___pixelDataSize, BYTE** return_pixelData);
}

@uuid("689e0708-7eef-483f-963f-da938818e073")
@WinrtFactory("Windows.Graphics.Imaging.SoftwareBitmap")
interface ISoftwareBitmap : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("c99feb69-2d62-4d47-a6b3-4fdb6a07fdf8")
@WinrtFactory("Windows.Graphics.Imaging.SoftwareBitmap")
interface ISoftwareBitmapFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Graphics.Imaging.BitmapPixelFormat format, INT32 width, INT32 height, Windows.Graphics.Imaging.SoftwareBitmap* return_value);
	HRESULT abi_CreateWithAlpha(Windows.Graphics.Imaging.BitmapPixelFormat format, INT32 width, INT32 height, Windows.Graphics.Imaging.BitmapAlphaMode alpha, Windows.Graphics.Imaging.SoftwareBitmap* return_value);
}

@uuid("df0385db-672f-4a9d-806e-c2442f343e86")
@WinrtFactory("Windows.Graphics.Imaging.SoftwareBitmap")
interface ISoftwareBitmapStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Copy(Windows.Graphics.Imaging.SoftwareBitmap source, Windows.Graphics.Imaging.SoftwareBitmap* return_value);
	HRESULT abi_Convert(Windows.Graphics.Imaging.SoftwareBitmap source, Windows.Graphics.Imaging.BitmapPixelFormat format, Windows.Graphics.Imaging.SoftwareBitmap* return_value);
	HRESULT abi_ConvertWithAlpha(Windows.Graphics.Imaging.SoftwareBitmap source, Windows.Graphics.Imaging.BitmapPixelFormat format, Windows.Graphics.Imaging.BitmapAlphaMode alpha, Windows.Graphics.Imaging.SoftwareBitmap* return_value);
	HRESULT abi_CreateCopyFromBuffer(Windows.Storage.Streams.IBuffer source, Windows.Graphics.Imaging.BitmapPixelFormat format, INT32 width, INT32 height, Windows.Graphics.Imaging.SoftwareBitmap* return_value);
	HRESULT abi_CreateCopyWithAlphaFromBuffer(Windows.Storage.Streams.IBuffer source, Windows.Graphics.Imaging.BitmapPixelFormat format, INT32 width, INT32 height, Windows.Graphics.Imaging.BitmapAlphaMode alpha, Windows.Graphics.Imaging.SoftwareBitmap* return_value);
	HRESULT abi_CreateCopyFromSurfaceAsync(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface surface, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap)* return_value);
	HRESULT abi_CreateCopyWithAlphaFromSurfaceAsync(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface surface, Windows.Graphics.Imaging.BitmapAlphaMode alpha, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Imaging.SoftwareBitmap)* return_value);
}

interface BitmapBuffer
{
}

interface BitmapCodecInformation
{
}

interface BitmapDecoder
{
}

interface BitmapEncoder
{
}

interface BitmapFrame
{
}

interface BitmapProperties
{
}

interface BitmapPropertiesView
{
}

interface BitmapPropertySet
{
}

interface BitmapTransform
{
}

interface BitmapTypedValue
{
}

interface ImageStream
{
}

interface PixelDataProvider
{
}

interface SoftwareBitmap
{
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