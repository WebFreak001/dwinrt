module Windows.UI.Xaml.Media.Imaging;

import dwinrt;

@uuid("1abaee23-74ee-4cc7-99ba-b171e3cda61e")
interface DownloadProgressEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Media.Imaging.DownloadProgressEventArgs e);
}

@uuid("31af3271-e3b4-442d-a341-4c0226b2725b")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.BitmapImage")
interface IBitmapImage : IInspectable
{
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
extern(Windows):
	HRESULT get_DecodePixelType(Windows.UI.Xaml.Media.Imaging.DecodePixelType* return_value);
	HRESULT set_DecodePixelType(Windows.UI.Xaml.Media.Imaging.DecodePixelType value);
}

@uuid("f1de6f26-3c73-453f-a7ba-9b85c18b3733")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.BitmapImage")
interface IBitmapImage3 : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstanceWithUriSource(Windows.Foundation.Uri uriSource, Windows.UI.Xaml.Media.Imaging.BitmapImage* return_instance);
}

@uuid("9e282143-70e8-437c-9fa4-2cbf295cff84")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.BitmapImage")
interface IBitmapImageStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_DecodePixelTypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2b44e30d-f6d5-4411-a8cd-bf7603c4faa0")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.BitmapImage")
interface IBitmapImageStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_IsAnimatedBitmapProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsPlayingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AutoPlayProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("23d86411-202f-41b2-8c5b-a8a3b333800b")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.BitmapSource")
interface IBitmapSource : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Imaging.BitmapSource* return_instance);
}

@uuid("9a9c9981-827b-4e51-891b-8a15b511842d")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.BitmapSource")
interface IBitmapSourceStatics : IInspectable
{
extern(Windows):
	HRESULT get_PixelWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PixelHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("7311e0d4-fe94-4e70-9b90-cdd47ac23afb")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.DownloadProgressEventArgs")
interface IDownloadProgressEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Progress(INT32* return_value);
	HRESULT set_Progress(INT32 value);
}

@uuid("500dee81-893c-4c0a-8fec-4678ac717589")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.RenderTargetBitmap")
interface IRenderTargetBitmap : IInspectable
{
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
extern(Windows):
	HRESULT get_PixelWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PixelHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d2dd9ed0-d3c5-4056-91b5-b7c1d1e8130e")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.SoftwareBitmapSource")
interface ISoftwareBitmapSource : IInspectable
{
extern(Windows):
	HRESULT abi_SetBitmapAsync(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap, Windows.Foundation.IAsyncAction* return_returnValue);
}

@uuid("62f7d416-c714-4c4c-8273-f839bc58135c")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.SurfaceImageSource")
interface ISurfaceImageSource : IInspectable
{
}

@uuid("3ab2212a-ef65-4a5f-bfac-73993e8c12c9")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.SurfaceImageSource")
interface ISurfaceImageSourceFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithDimensions(INT32 pixelWidth, INT32 pixelHeight, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Imaging.SurfaceImageSource* return_instance);
	HRESULT abi_CreateInstanceWithDimensionsAndOpacity(INT32 pixelWidth, INT32 pixelHeight, bool isOpaque, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Imaging.SurfaceImageSource* return_instance);
}

@uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.SvgImageSource")
interface ISvgImageSource : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Imaging.SvgImageSource* return_instance);
	HRESULT abi_CreateInstanceWithUriSource(Windows.Foundation.Uri uriSource, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Imaging.SvgImageSource* return_instance);
}

@uuid("68bb3170-3ccc-4035-ac01-9834543d744e")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.SvgImageSourceFailedEventArgs")
interface ISvgImageSourceFailedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.UI.Xaml.Media.Imaging.SvgImageSourceLoadStatus* return_value);
}

@uuid("85ef4c16-748e-4008-95c7-6a23dd7316db")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.SvgImageSourceOpenedEventArgs")
interface ISvgImageSourceOpenedEventArgs : IInspectable
{
}

@uuid("9c6638ce-bed1-4aab-acbb-d3e2185d315a")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.SvgImageSource")
interface ISvgImageSourceStatics : IInspectable
{
extern(Windows):
	HRESULT get_UriSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RasterizePixelWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RasterizePixelHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4a711fea-bfac-11e0-a06a-9de44724019b")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.VirtualSurfaceImageSource")
interface IVirtualSurfaceImageSource : IInspectable
{
}

@uuid("3ab2212a-bfac-11e0-8a92-69e44724019b")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.VirtualSurfaceImageSource")
interface IVirtualSurfaceImageSourceFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithDimensions(INT32 pixelWidth, INT32 pixelHeight, Windows.UI.Xaml.Media.Imaging.VirtualSurfaceImageSource* return_instance);
	HRESULT abi_CreateInstanceWithDimensionsAndOpacity(INT32 pixelWidth, INT32 pixelHeight, bool isOpaque, Windows.UI.Xaml.Media.Imaging.VirtualSurfaceImageSource* return_instance);
}

@uuid("bf0b7e6f-df7c-4a85-8413-a1216285835c")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.WriteableBitmap")
interface IWriteableBitmap : IInspectable
{
extern(Windows):
	HRESULT get_PixelBuffer(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT abi_Invalidate();
}

@uuid("5563ebb1-3ef2-42c5-9c6d-1cf5dcc041ff")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.WriteableBitmap")
interface IWriteableBitmapFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithDimensions(INT32 pixelWidth, INT32 pixelHeight, Windows.UI.Xaml.Media.Imaging.WriteableBitmap* return_instance);
}

@uuid("5d5fe9aa-533e-44b8-a975-fc5f1e3bff52")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.XamlRenderingBackgroundTask")
interface IXamlRenderingBackgroundTask : IInspectable
{
}

@uuid("a3d1bb63-38f8-4da3-9fca-fd8128a2cbf9")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.XamlRenderingBackgroundTask")
interface IXamlRenderingBackgroundTaskFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Imaging.XamlRenderingBackgroundTask* return_instance);
}

@uuid("9c2a6997-a908-4711-b4b2-a960db3d8e5a")
@WinrtFactory("Windows.UI.Xaml.Media.Imaging.XamlRenderingBackgroundTask")
interface IXamlRenderingBackgroundTaskOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_OnRun(Windows.ApplicationModel.Background.IBackgroundTaskInstance taskInstance);
}

interface BitmapImage : Windows.UI.Xaml.Media.Imaging.BitmapSource, Windows.UI.Xaml.Media.Imaging.IBitmapImage, Windows.UI.Xaml.Media.Imaging.IBitmapImage2, Windows.UI.Xaml.Media.Imaging.IBitmapImage3
{
extern(Windows):
	final Windows.UI.Xaml.Media.Imaging.BitmapCreateOptions CreateOptions()
	{
		Windows.UI.Xaml.Media.Imaging.BitmapCreateOptions _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage)this.asInterface(uuid("31af3271-e3b4-442d-a341-4c0226b2725b"))).get_CreateOptions(&_ret));
		return _ret;
	}
	final void CreateOptions(Windows.UI.Xaml.Media.Imaging.BitmapCreateOptions value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage)this.asInterface(uuid("31af3271-e3b4-442d-a341-4c0226b2725b"))).set_CreateOptions(value));
	}
	final Windows.Foundation.Uri UriSource()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage)this.asInterface(uuid("31af3271-e3b4-442d-a341-4c0226b2725b"))).get_UriSource(&_ret));
		return _ret;
	}
	final void UriSource(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage)this.asInterface(uuid("31af3271-e3b4-442d-a341-4c0226b2725b"))).set_UriSource(value));
	}
	final INT32 DecodePixelWidth()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage)this.asInterface(uuid("31af3271-e3b4-442d-a341-4c0226b2725b"))).get_DecodePixelWidth(&_ret));
		return _ret;
	}
	final void DecodePixelWidth(INT32 value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage)this.asInterface(uuid("31af3271-e3b4-442d-a341-4c0226b2725b"))).set_DecodePixelWidth(value));
	}
	final INT32 DecodePixelHeight()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage)this.asInterface(uuid("31af3271-e3b4-442d-a341-4c0226b2725b"))).get_DecodePixelHeight(&_ret));
		return _ret;
	}
	final void DecodePixelHeight(INT32 value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage)this.asInterface(uuid("31af3271-e3b4-442d-a341-4c0226b2725b"))).set_DecodePixelHeight(value));
	}
	final EventRegistrationToken OnDownloadProgress(void delegate(IInspectable, Windows.UI.Xaml.Media.Imaging.DownloadProgressEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage)this.asInterface(uuid("31af3271-e3b4-442d-a341-4c0226b2725b"))).add_DownloadProgress(event!(Windows.UI.Xaml.Media.Imaging.DownloadProgressEventHandler, IInspectable, Windows.UI.Xaml.Media.Imaging.DownloadProgressEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDownloadProgress(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage)this.asInterface(uuid("31af3271-e3b4-442d-a341-4c0226b2725b"))).remove_DownloadProgress(token));
	}
	final EventRegistrationToken OnImageOpened(void delegate(IInspectable, Windows.UI.Xaml.RoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage)this.asInterface(uuid("31af3271-e3b4-442d-a341-4c0226b2725b"))).add_ImageOpened(event!(Windows.UI.Xaml.RoutedEventHandler, IInspectable, Windows.UI.Xaml.RoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeImageOpened(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage)this.asInterface(uuid("31af3271-e3b4-442d-a341-4c0226b2725b"))).remove_ImageOpened(token));
	}
	final EventRegistrationToken OnImageFailed(void delegate(IInspectable, Windows.UI.Xaml.ExceptionRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage)this.asInterface(uuid("31af3271-e3b4-442d-a341-4c0226b2725b"))).add_ImageFailed(event!(Windows.UI.Xaml.ExceptionRoutedEventHandler, IInspectable, Windows.UI.Xaml.ExceptionRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeImageFailed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage)this.asInterface(uuid("31af3271-e3b4-442d-a341-4c0226b2725b"))).remove_ImageFailed(token));
	}
	final Windows.UI.Xaml.Media.Imaging.DecodePixelType DecodePixelType()
	{
		Windows.UI.Xaml.Media.Imaging.DecodePixelType _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage2)this.asInterface(uuid("1069c1b6-8c9b-4762-be3d-759f5698f2b3"))).get_DecodePixelType(&_ret));
		return _ret;
	}
	final void DecodePixelType(Windows.UI.Xaml.Media.Imaging.DecodePixelType value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage2)this.asInterface(uuid("1069c1b6-8c9b-4762-be3d-759f5698f2b3"))).set_DecodePixelType(value));
	}
	final bool IsAnimatedBitmap()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage3)this.asInterface(uuid("f1de6f26-3c73-453f-a7ba-9b85c18b3733"))).get_IsAnimatedBitmap(&_ret));
		return _ret;
	}
	final bool IsPlaying()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage3)this.asInterface(uuid("f1de6f26-3c73-453f-a7ba-9b85c18b3733"))).get_IsPlaying(&_ret));
		return _ret;
	}
	final bool AutoPlay()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage3)this.asInterface(uuid("f1de6f26-3c73-453f-a7ba-9b85c18b3733"))).get_AutoPlay(&_ret));
		return _ret;
	}
	final void AutoPlay(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage3)this.asInterface(uuid("f1de6f26-3c73-453f-a7ba-9b85c18b3733"))).set_AutoPlay(value));
	}
	final void Play()
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage3)this.asInterface(uuid("f1de6f26-3c73-453f-a7ba-9b85c18b3733"))).abi_Play());
	}
	final void Stop()
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImage3)this.asInterface(uuid("f1de6f26-3c73-453f-a7ba-9b85c18b3733"))).abi_Stop());
	}

	private static Windows.UI.Xaml.Media.Imaging.IBitmapImageStatics _staticInstance;
	public static Windows.UI.Xaml.Media.Imaging.IBitmapImageStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.Imaging.IBitmapImageStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty CreateOptionsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CreateOptionsProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty UriSourceProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_UriSourceProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty DecodePixelWidthProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DecodePixelWidthProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty DecodePixelHeightProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DecodePixelHeightProperty(&_ret));
		return _ret;
	}
	static BitmapImage New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(BitmapImage).abi_ActivateInstance(&ret));
		return cast(BitmapImage) ret;
	}
	static Windows.UI.Xaml.Media.Imaging.BitmapImage New(Windows.Foundation.Uri uriSource)
	{
		auto factory = factory!(Windows.UI.Xaml.Media.Imaging.IBitmapImageFactory);
		Windows.UI.Xaml.Media.Imaging.BitmapImage _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapImageFactory)factory.asInterface(uuid("c9132978-4810-4e5e-8087-03671ee60d85"))).abi_CreateInstanceWithUriSource(uriSource, &_ret));
		return _ret;
	}
}

interface BitmapSource : Windows.UI.Xaml.Media.ImageSource, Windows.UI.Xaml.Media.Imaging.IBitmapSource
{
extern(Windows):
	final INT32 PixelWidth()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapSource)this.asInterface(uuid("23d86411-202f-41b2-8c5b-a8a3b333800b"))).get_PixelWidth(&_ret));
		return _ret;
	}
	final INT32 PixelHeight()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapSource)this.asInterface(uuid("23d86411-202f-41b2-8c5b-a8a3b333800b"))).get_PixelHeight(&_ret));
		return _ret;
	}
	final void SetSource(Windows.Storage.Streams.IRandomAccessStream streamSource)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapSource)this.asInterface(uuid("23d86411-202f-41b2-8c5b-a8a3b333800b"))).abi_SetSource(streamSource));
	}
	final Windows.Foundation.IAsyncAction SetSourceAsync(Windows.Storage.Streams.IRandomAccessStream streamSource)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IBitmapSource)this.asInterface(uuid("23d86411-202f-41b2-8c5b-a8a3b333800b"))).abi_SetSourceAsync(streamSource, &_ret));
		return _ret;
	}

	private static Windows.UI.Xaml.Media.Imaging.IBitmapSourceStatics _staticInstance;
	public static Windows.UI.Xaml.Media.Imaging.IBitmapSourceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.Imaging.IBitmapSourceStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty PixelWidthProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PixelWidthProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty PixelHeightProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PixelHeightProperty(&_ret));
		return _ret;
	}
	static BitmapSource New()
	{
		IInspectable outer, inner;
		BitmapSource ret;
		Debug.OK(activationFactory!(BitmapSource, Windows.UI.Xaml.Media.Imaging.IBitmapSourceFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(BitmapSource, BitmapSource, Windows.UI.Xaml.Media.Imaging.IBitmapSourceFactory)
class BitmapSourceT(Base) : AgileObject!Base, BitmapSource
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_PixelWidth(INT32* return_value) { return (cast(Windows.UI.Xaml.Media.Imaging.IBitmapSource)m_inner.asInterface(uuid("23d86411-202f-41b2-8c5b-a8a3b333800b"))).get_PixelWidth(return_value); }
	override HRESULT get_PixelHeight(INT32* return_value) { return (cast(Windows.UI.Xaml.Media.Imaging.IBitmapSource)m_inner.asInterface(uuid("23d86411-202f-41b2-8c5b-a8a3b333800b"))).get_PixelHeight(return_value); }
	override HRESULT abi_SetSource(Windows.Storage.Streams.IRandomAccessStream streamSource) { return (cast(Windows.UI.Xaml.Media.Imaging.IBitmapSource)m_inner.asInterface(uuid("23d86411-202f-41b2-8c5b-a8a3b333800b"))).abi_SetSource(streamSource); }
	override HRESULT abi_SetSourceAsync(Windows.Storage.Streams.IRandomAccessStream streamSource, Windows.Foundation.IAsyncAction* return_returnValue) { return (cast(Windows.UI.Xaml.Media.Imaging.IBitmapSource)m_inner.asInterface(uuid("23d86411-202f-41b2-8c5b-a8a3b333800b"))).abi_SetSourceAsync(streamSource, return_returnValue); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface DownloadProgressEventArgs : Windows.UI.Xaml.Media.Imaging.IDownloadProgressEventArgs
{
extern(Windows):
	final INT32 Progress()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IDownloadProgressEventArgs)this.asInterface(uuid("7311e0d4-fe94-4e70-9b90-cdd47ac23afb"))).get_Progress(&_ret));
		return _ret;
	}
	final void Progress(INT32 value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IDownloadProgressEventArgs)this.asInterface(uuid("7311e0d4-fe94-4e70-9b90-cdd47ac23afb"))).set_Progress(value));
	}
}

interface RenderTargetBitmap : Windows.UI.Xaml.Media.ImageSource, Windows.UI.Xaml.Media.Imaging.IRenderTargetBitmap
{
extern(Windows):
	final INT32 PixelWidth()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IRenderTargetBitmap)this.asInterface(uuid("500dee81-893c-4c0a-8fec-4678ac717589"))).get_PixelWidth(&_ret));
		return _ret;
	}
	final INT32 PixelHeight()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IRenderTargetBitmap)this.asInterface(uuid("500dee81-893c-4c0a-8fec-4678ac717589"))).get_PixelHeight(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction RenderAsync(Windows.UI.Xaml.UIElement element)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IRenderTargetBitmap)this.asInterface(uuid("500dee81-893c-4c0a-8fec-4678ac717589"))).abi_RenderAsync(element, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction RenderToSizeAsync(Windows.UI.Xaml.UIElement element, INT32 scaledWidth, INT32 scaledHeight)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IRenderTargetBitmap)this.asInterface(uuid("500dee81-893c-4c0a-8fec-4678ac717589"))).abi_RenderToSizeAsync(element, scaledWidth, scaledHeight, &_ret));
		return _ret;
	}
	alias RenderAsync = RenderToSizeAsync;
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) GetPixelsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IRenderTargetBitmap)this.asInterface(uuid("500dee81-893c-4c0a-8fec-4678ac717589"))).abi_GetPixelsAsync(&_ret));
		return _ret;
	}

	private static Windows.UI.Xaml.Media.Imaging.IRenderTargetBitmapStatics _staticInstance;
	public static Windows.UI.Xaml.Media.Imaging.IRenderTargetBitmapStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.Imaging.IRenderTargetBitmapStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty PixelWidthProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PixelWidthProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty PixelHeightProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PixelHeightProperty(&_ret));
		return _ret;
	}
	static RenderTargetBitmap New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(RenderTargetBitmap).abi_ActivateInstance(&ret));
		return cast(RenderTargetBitmap) ret;
	}
}

interface SoftwareBitmapSource : Windows.UI.Xaml.Media.ImageSource, Windows.UI.Xaml.Media.Imaging.ISoftwareBitmapSource, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Foundation.IAsyncAction SetBitmapAsync(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.ISoftwareBitmapSource)this.asInterface(uuid("d2dd9ed0-d3c5-4056-91b5-b7c1d1e8130e"))).abi_SetBitmapAsync(softwareBitmap, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	static SoftwareBitmapSource New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SoftwareBitmapSource).abi_ActivateInstance(&ret));
		return cast(SoftwareBitmapSource) ret;
	}
}

interface SurfaceImageSource : Windows.UI.Xaml.Media.ImageSource, Windows.UI.Xaml.Media.Imaging.ISurfaceImageSource
{
}
@makable!(SurfaceImageSource, SurfaceImageSource, Windows.UI.Xaml.Media.Imaging.ISurfaceImageSourceFactory)
class SurfaceImageSourceT(Base) : AgileObject!Base, SurfaceImageSource
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface SvgImageSource : Windows.UI.Xaml.Media.ImageSource, Windows.UI.Xaml.Media.Imaging.ISvgImageSource
{
extern(Windows):
	final Windows.Foundation.Uri UriSource()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)this.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).get_UriSource(&_ret));
		return _ret;
	}
	final void UriSource(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)this.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).set_UriSource(value));
	}
	final double RasterizePixelWidth()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)this.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).get_RasterizePixelWidth(&_ret));
		return _ret;
	}
	final void RasterizePixelWidth(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)this.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).set_RasterizePixelWidth(value));
	}
	final double RasterizePixelHeight()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)this.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).get_RasterizePixelHeight(&_ret));
		return _ret;
	}
	final void RasterizePixelHeight(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)this.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).set_RasterizePixelHeight(value));
	}
	final EventRegistrationToken OnOpened(void delegate(Windows.UI.Xaml.Media.Imaging.SvgImageSource, Windows.UI.Xaml.Media.Imaging.SvgImageSourceOpenedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)this.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).add_Opened(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Media.Imaging.SvgImageSource, Windows.UI.Xaml.Media.Imaging.SvgImageSourceOpenedEventArgs), Windows.UI.Xaml.Media.Imaging.SvgImageSource, Windows.UI.Xaml.Media.Imaging.SvgImageSourceOpenedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeOpened(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)this.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).remove_Opened(token));
	}
	final EventRegistrationToken OnOpenFailed(void delegate(Windows.UI.Xaml.Media.Imaging.SvgImageSource, Windows.UI.Xaml.Media.Imaging.SvgImageSourceFailedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)this.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).add_OpenFailed(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Media.Imaging.SvgImageSource, Windows.UI.Xaml.Media.Imaging.SvgImageSourceFailedEventArgs), Windows.UI.Xaml.Media.Imaging.SvgImageSource, Windows.UI.Xaml.Media.Imaging.SvgImageSourceFailedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeOpenFailed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)this.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).remove_OpenFailed(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.UI.Xaml.Media.Imaging.SvgImageSourceLoadStatus) SetSourceAsync(Windows.Storage.Streams.IRandomAccessStream streamSource)
	{
		Windows.Foundation.IAsyncOperation!(Windows.UI.Xaml.Media.Imaging.SvgImageSourceLoadStatus) _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)this.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).abi_SetSourceAsync(streamSource, &_ret));
		return _ret;
	}

	private static Windows.UI.Xaml.Media.Imaging.ISvgImageSourceStatics _staticInstance;
	public static Windows.UI.Xaml.Media.Imaging.ISvgImageSourceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.Imaging.ISvgImageSourceStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty UriSourceProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_UriSourceProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty RasterizePixelWidthProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_RasterizePixelWidthProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty RasterizePixelHeightProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_RasterizePixelHeightProperty(&_ret));
		return _ret;
	}
	static SvgImageSource New()
	{
		IInspectable outer, inner;
		SvgImageSource ret;
		Debug.OK(activationFactory!(SvgImageSource, Windows.UI.Xaml.Media.Imaging.ISvgImageSourceFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(SvgImageSource, SvgImageSource, Windows.UI.Xaml.Media.Imaging.ISvgImageSourceFactory)
class SvgImageSourceT(Base) : AgileObject!Base, SvgImageSource
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_UriSource(Windows.Foundation.Uri* return_value) { return (cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)m_inner.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).get_UriSource(return_value); }
	override HRESULT set_UriSource(Windows.Foundation.Uri value) { return (cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)m_inner.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).set_UriSource(value); }
	override HRESULT get_RasterizePixelWidth(double* return_value) { return (cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)m_inner.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).get_RasterizePixelWidth(return_value); }
	override HRESULT set_RasterizePixelWidth(double value) { return (cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)m_inner.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).set_RasterizePixelWidth(value); }
	override HRESULT get_RasterizePixelHeight(double* return_value) { return (cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)m_inner.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).get_RasterizePixelHeight(return_value); }
	override HRESULT set_RasterizePixelHeight(double value) { return (cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)m_inner.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).set_RasterizePixelHeight(value); }
	override HRESULT add_Opened(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Media.Imaging.SvgImageSource, Windows.UI.Xaml.Media.Imaging.SvgImageSourceOpenedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)m_inner.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).add_Opened(value, return_token); }
	override HRESULT remove_Opened(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)m_inner.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).remove_Opened(token); }
	override HRESULT add_OpenFailed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Media.Imaging.SvgImageSource, Windows.UI.Xaml.Media.Imaging.SvgImageSourceFailedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)m_inner.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).add_OpenFailed(value, return_token); }
	override HRESULT remove_OpenFailed(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)m_inner.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).remove_OpenFailed(token); }
	override HRESULT abi_SetSourceAsync(Windows.Storage.Streams.IRandomAccessStream streamSource, Windows.Foundation.IAsyncOperation!(Windows.UI.Xaml.Media.Imaging.SvgImageSourceLoadStatus)* return_returnValue) { return (cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSource)m_inner.asInterface(uuid("03e1cec3-0ca8-4a4e-8d7c-c808a0838586"))).abi_SetSourceAsync(streamSource, return_returnValue); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface SvgImageSourceFailedEventArgs : Windows.UI.Xaml.Media.Imaging.ISvgImageSourceFailedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Media.Imaging.SvgImageSourceLoadStatus Status()
	{
		Windows.UI.Xaml.Media.Imaging.SvgImageSourceLoadStatus _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.ISvgImageSourceFailedEventArgs)this.asInterface(uuid("68bb3170-3ccc-4035-ac01-9834543d744e"))).get_Status(&_ret));
		return _ret;
	}
}

interface SvgImageSourceOpenedEventArgs : Windows.UI.Xaml.Media.Imaging.ISvgImageSourceOpenedEventArgs
{
}

interface VirtualSurfaceImageSource : Windows.UI.Xaml.Media.Imaging.SurfaceImageSource, Windows.UI.Xaml.Media.Imaging.IVirtualSurfaceImageSource
{
	static Windows.UI.Xaml.Media.Imaging.VirtualSurfaceImageSource New(INT32 pixelWidth, INT32 pixelHeight)
	{
		auto factory = factory!(Windows.UI.Xaml.Media.Imaging.IVirtualSurfaceImageSourceFactory);
		Windows.UI.Xaml.Media.Imaging.VirtualSurfaceImageSource _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IVirtualSurfaceImageSourceFactory)factory.asInterface(uuid("3ab2212a-bfac-11e0-8a92-69e44724019b"))).abi_CreateInstanceWithDimensions(pixelWidth, pixelHeight, &_ret));
		return _ret;
	}
	static Windows.UI.Xaml.Media.Imaging.VirtualSurfaceImageSource New(INT32 pixelWidth, INT32 pixelHeight, bool isOpaque)
	{
		auto factory = factory!(Windows.UI.Xaml.Media.Imaging.IVirtualSurfaceImageSourceFactory);
		Windows.UI.Xaml.Media.Imaging.VirtualSurfaceImageSource _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IVirtualSurfaceImageSourceFactory)factory.asInterface(uuid("3ab2212a-bfac-11e0-8a92-69e44724019b"))).abi_CreateInstanceWithDimensionsAndOpacity(pixelWidth, pixelHeight, isOpaque, &_ret));
		return _ret;
	}
}

interface WriteableBitmap : Windows.UI.Xaml.Media.Imaging.BitmapSource, Windows.UI.Xaml.Media.Imaging.IWriteableBitmap
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer PixelBuffer()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IWriteableBitmap)this.asInterface(uuid("bf0b7e6f-df7c-4a85-8413-a1216285835c"))).get_PixelBuffer(&_ret));
		return _ret;
	}
	final void Invalidate()
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IWriteableBitmap)this.asInterface(uuid("bf0b7e6f-df7c-4a85-8413-a1216285835c"))).abi_Invalidate());
	}
	static Windows.UI.Xaml.Media.Imaging.WriteableBitmap New(INT32 pixelWidth, INT32 pixelHeight)
	{
		auto factory = factory!(Windows.UI.Xaml.Media.Imaging.IWriteableBitmapFactory);
		Windows.UI.Xaml.Media.Imaging.WriteableBitmap _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IWriteableBitmapFactory)factory.asInterface(uuid("5563ebb1-3ef2-42c5-9c6d-1cf5dcc041ff"))).abi_CreateInstanceWithDimensions(pixelWidth, pixelHeight, &_ret));
		return _ret;
	}
}

interface XamlRenderingBackgroundTask : Windows.UI.Xaml.Media.Imaging.IXamlRenderingBackgroundTask, Windows.UI.Xaml.Media.Imaging.IXamlRenderingBackgroundTaskOverrides
{
	static XamlRenderingBackgroundTask New()
	{
		IInspectable outer, inner;
		XamlRenderingBackgroundTask ret;
		Debug.OK(activationFactory!(XamlRenderingBackgroundTask, Windows.UI.Xaml.Media.Imaging.IXamlRenderingBackgroundTaskFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(XamlRenderingBackgroundTask, XamlRenderingBackgroundTask, Windows.UI.Xaml.Media.Imaging.IXamlRenderingBackgroundTaskFactory)
class XamlRenderingBackgroundTaskT(Base) : AgileObject!Base, XamlRenderingBackgroundTask
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_OnRun(Windows.ApplicationModel.Background.IBackgroundTaskInstance taskInstance) { this.OnRun(taskInstance); return S_OK; }
	void OnRun(Windows.ApplicationModel.Background.IBackgroundTaskInstance taskInstance) { Debug.OK((cast(Windows.UI.Xaml.Media.Imaging.IXamlRenderingBackgroundTaskOverrides)m_inner.asInterface(uuid("9c2a6997-a908-4711-b4b2-a960db3d8e5a"))).abi_OnRun(taskInstance)); }

	this() {}
	IInspectable m_inner;
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