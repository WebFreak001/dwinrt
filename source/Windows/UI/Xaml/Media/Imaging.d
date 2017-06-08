module Windows.UI.Xaml.Media.Imaging;

import dwinrt;

@uuid("1abaee23-74ee-4cc7-99ba-b171e3cda61e")
interface DownloadProgressEventHandler
{
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Media.Imaging.DownloadProgressEventArgs e);
}

@uuid("31af3271-e3b4-442d-a341-4c0226b2725b")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.BitmapImage")
interface IBitmapImage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CreateOptions(Windows.UI.Xaml.Media.Imaging.BitmapCreateOptions* return_value);
	HRESULT set_CreateOptions(Windows.UI.Xaml.Media.Imaging.BitmapCreateOptions value);
	HRESULT get_UriSource(Windows.Foundation.Uri* return_value);
	HRESULT set_UriSource(Windows.Foundation.Uri value);
	HRESULT get_DecodePixelWidth(INT32* return_value);
	HRESULT set_DecodePixelWidth(INT32 value);
	HRESULT get_DecodePixelHeight(INT32* return_value);
	HRESULT set_DecodePixelHeight(INT32 value);
	HRESULT add_DownloadProgress(Windows.UI.Xaml.Media.Imaging.DownloadProgressEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_DownloadProgress(EventRegistrationToken token);
	HRESULT add_ImageOpened(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ImageOpened(EventRegistrationToken token);
	HRESULT add_ImageFailed(Windows.UI.Xaml.ExceptionRoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ImageFailed(EventRegistrationToken token);
}

@uuid("1069c1b6-8c9b-4762-be3d-759f5698f2b3")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.BitmapImage")
interface IBitmapImage2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DecodePixelType(Windows.UI.Xaml.Media.Imaging.DecodePixelType* return_value);
	HRESULT set_DecodePixelType(Windows.UI.Xaml.Media.Imaging.DecodePixelType value);
}

@uuid("f1de6f26-3c73-453f-a7ba-9b85c18b3733")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.BitmapImage")
interface IBitmapImage3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsAnimatedBitmap(bool* return_value);
	HRESULT get_IsPlaying(bool* return_value);
	HRESULT get_AutoPlay(bool* return_value);
	HRESULT set_AutoPlay(bool value);
	HRESULT abi_Play();
	HRESULT abi_Stop();
}

@uuid("c9132978-4810-4e5e-8087-03671ee60d85")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.BitmapImage")
interface IBitmapImageFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithUriSource(Windows.Foundation.Uri uriSource, Windows.UI.Xaml.Media.Imaging.BitmapImage* return_instance);
}

@uuid("9e282143-70e8-437c-9fa4-2cbf295cff84")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.BitmapImage")
interface IBitmapImageStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CreateOptionsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_UriSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DecodePixelWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DecodePixelHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("c5f5576a-75af-41a4-b893-8fe91fee2882")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.BitmapImage")
interface IBitmapImageStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DecodePixelTypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2b44e30d-f6d5-4411-a8cd-bf7603c4faa0")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.BitmapImage")
interface IBitmapImageStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsAnimatedBitmapProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsPlayingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AutoPlayProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("23d86411-202f-41b2-8c5b-a8a3b333800b")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.BitmapSource")
interface IBitmapSource : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PixelWidth(INT32* return_value);
	HRESULT get_PixelHeight(INT32* return_value);
	HRESULT abi_SetSource(Windows.Storage.Streams.IRandomAccessStream streamSource);
	HRESULT abi_SetSourceAsync(Windows.Storage.Streams.IRandomAccessStream streamSource, Windows.Foundation.IAsyncAction* return_returnValue);
}

@uuid("e240420e-d4a7-49a4-a0b4-a59fdd77e508")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.BitmapSource")
interface IBitmapSourceFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Imaging.BitmapSource* return_instance);
}

@uuid("9a9c9981-827b-4e51-891b-8a15b511842d")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.BitmapSource")
interface IBitmapSourceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PixelWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PixelHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("7311e0d4-fe94-4e70-9b90-cdd47ac23afb")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.DownloadProgressEventArgs")
interface IDownloadProgressEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Progress(INT32* return_value);
	HRESULT set_Progress(INT32 value);
}

@uuid("500dee81-893c-4c0a-8fec-4678ac717589")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.RenderTargetBitmap")
interface IRenderTargetBitmap : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PixelWidth(INT32* return_value);
	HRESULT get_PixelHeight(INT32* return_value);
	HRESULT abi_RenderAsync(Windows.UI.Xaml.UIElement element, Windows.Foundation.IAsyncAction* return_returnValue);
	HRESULT abi_RenderToSizeAsync(Windows.UI.Xaml.UIElement element, INT32 scaledWidth, INT32 scaledHeight, Windows.Foundation.IAsyncAction* return_returnValue);
	HRESULT abi_GetPixelsAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_returnValue);
}

@uuid("f0a1efee-c131-4d40-9c47-f7d7cf2b077f")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.RenderTargetBitmap")
interface IRenderTargetBitmapStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PixelWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PixelHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d2dd9ed0-d3c5-4056-91b5-b7c1d1e8130e")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.SoftwareBitmapSource")
interface ISoftwareBitmapSource : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetBitmapAsync(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap, Windows.Foundation.IAsyncAction* return_returnValue);
}

@uuid("3ab2212a-ef65-4a5f-bfac-73993e8c12c9")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.SurfaceImageSource")
interface ISurfaceImageSourceFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithDimensions(INT32 pixelWidth, INT32 pixelHeight, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Imaging.SurfaceImageSource* return_instance);
	HRESULT abi_CreateInstanceWithDimensionsAndOpacity(INT32 pixelWidth, INT32 pixelHeight, bool isOpaque, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Imaging.SurfaceImageSource* return_instance);
}

@uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.SvgImageSource")
interface ISvgImageSource : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UriSource(Windows.Foundation.Uri* return_value);
	HRESULT set_UriSource(Windows.Foundation.Uri value);
	HRESULT get_RasterizePixelWidth(double* return_value);
	HRESULT set_RasterizePixelWidth(double value);
	HRESULT get_RasterizePixelHeight(double* return_value);
	HRESULT set_RasterizePixelHeight(double value);
	HRESULT add_Opened(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Media.Imaging.SvgImageSource, Windows.UI.Xaml.Media.Imaging.SvgImageSourceOpenedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_Opened(EventRegistrationToken token);
	HRESULT add_OpenFailed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Media.Imaging.SvgImageSource, Windows.UI.Xaml.Media.Imaging.SvgImageSourceFailedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_OpenFailed(EventRegistrationToken token);
	HRESULT abi_SetSourceAsync(Windows.Storage.Streams.IRandomAccessStream streamSource, Windows.Foundation.IAsyncOperation!(Windows.UI.Xaml.Media.Imaging.SvgImageSourceLoadStatus)* return_returnValue);
}

@uuid("c794e9e7-cf23-4d72-bf1a-dfaa16d8ea52")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.SvgImageSource")
interface ISvgImageSourceFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Imaging.SvgImageSource* return_instance);
	HRESULT abi_CreateInstanceWithUriSource(Windows.Foundation.Uri uriSource, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Imaging.SvgImageSource* return_instance);
}

@uuid("68bb3170-3ccc-4035-ac01-9834543d744e")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.SvgImageSourceFailedEventArgs")
interface ISvgImageSourceFailedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.UI.Xaml.Media.Imaging.SvgImageSourceLoadStatus* return_value);
}

@uuid("9c6638ce-bed1-4aab-acbb-d3e2185d315a")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.SvgImageSource")
interface ISvgImageSourceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UriSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RasterizePixelWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RasterizePixelHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("3ab2212a-bfac-11e0-8a92-69e44724019b")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.VirtualSurfaceImageSource")
interface IVirtualSurfaceImageSourceFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithDimensions(INT32 pixelWidth, INT32 pixelHeight, Windows.UI.Xaml.Media.Imaging.VirtualSurfaceImageSource* return_instance);
	HRESULT abi_CreateInstanceWithDimensionsAndOpacity(INT32 pixelWidth, INT32 pixelHeight, bool isOpaque, Windows.UI.Xaml.Media.Imaging.VirtualSurfaceImageSource* return_instance);
}

@uuid("bf0b7e6f-df7c-4a85-8413-a1216285835c")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.WriteableBitmap")
interface IWriteableBitmap : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PixelBuffer(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT abi_Invalidate();
}

@uuid("5563ebb1-3ef2-42c5-9c6d-1cf5dcc041ff")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.WriteableBitmap")
interface IWriteableBitmapFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithDimensions(INT32 pixelWidth, INT32 pixelHeight, Windows.UI.Xaml.Media.Imaging.WriteableBitmap* return_instance);
}

@uuid("a3d1bb63-38f8-4da3-9fca-fd8128a2cbf9")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.XamlRenderingBackgroundTask")
interface IXamlRenderingBackgroundTaskFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Imaging.XamlRenderingBackgroundTask* return_instance);
}

@uuid("9c2a6997-a908-4711-b4b2-a960db3d8e5a")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.XamlRenderingBackgroundTask")
interface IXamlRenderingBackgroundTaskOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OnRun(Windows.ApplicationModel.Background.IBackgroundTaskInstance taskInstance);
}

interface BitmapImage : Windows.UI.Xaml.Media.Imaging.BitmapSource
{
}

interface BitmapSource : Windows.UI.Xaml.Media.ImageSource
{
}

interface DownloadProgressEventArgs
{
}

interface RenderTargetBitmap : Windows.UI.Xaml.Media.ImageSource
{
}

interface SoftwareBitmapSource : Windows.UI.Xaml.Media.ImageSource
{
}

interface SurfaceImageSource : Windows.UI.Xaml.Media.ImageSource
{
}

interface SvgImageSource : Windows.UI.Xaml.Media.ImageSource
{
}

interface SvgImageSourceFailedEventArgs
{
}

interface SvgImageSourceOpenedEventArgs
{
}

interface VirtualSurfaceImageSource : Windows.UI.Xaml.Media.Imaging.SurfaceImageSource
{
}

interface WriteableBitmap : Windows.UI.Xaml.Media.Imaging.BitmapSource
{
}

interface XamlRenderingBackgroundTask
{
}

@bitflags
enum BitmapCreateOptions
{
	None = 0x0,
	IgnoreImageCache = 0x8
}

enum DecodePixelType
{
	Physical = 0,
	Logical = 1
}

enum SvgImageSourceLoadStatus
{
	Success = 0,
	NetworkError = 1,
	InvalidFormat = 2,
	Other = 3
}