module Windows.Media.FaceAnalysis;

import dwinrt;

@uuid("8200d454-66bc-34df-9410-e89400195414")
@WinrtFactory("Windows.Media.FaceAnalysis.DetectedFace")
interface IDetectedFace : IInspectable
{
extern(Windows):
	HRESULT get_FaceBox(Windows.Graphics.Imaging.BitmapBounds* return_returnValue);
}

@uuid("16b672dc-fe6f-3117-8d95-c3f04d51630c")
@WinrtFactory("Windows.Media.FaceAnalysis.FaceDetector")
interface IFaceDetector : IInspectable
{
extern(Windows):
	HRESULT abi_DetectFacesAsync(Windows.Graphics.Imaging.SoftwareBitmap image, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.Media.FaceAnalysis.DetectedFace))* return_returnValue);
	HRESULT abi_DetectFacesWithSearchAreaAsync(Windows.Graphics.Imaging.SoftwareBitmap image, Windows.Graphics.Imaging.BitmapBounds searchArea, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.Media.FaceAnalysis.DetectedFace))* return_returnValue);
	HRESULT get_MinDetectableFaceSize(Windows.Graphics.Imaging.BitmapSize* return_returnValue);
	HRESULT set_MinDetectableFaceSize(Windows.Graphics.Imaging.BitmapSize value);
	HRESULT get_MaxDetectableFaceSize(Windows.Graphics.Imaging.BitmapSize* return_returnValue);
	HRESULT set_MaxDetectableFaceSize(Windows.Graphics.Imaging.BitmapSize value);
}

@uuid("bc042d67-9047-33f6-881b-6746c1b218b8")
@WinrtFactory("Windows.Media.FaceAnalysis.FaceDetector")
interface IFaceDetectorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.FaceAnalysis.FaceDetector)* return_returnValue);
	HRESULT abi_GetSupportedBitmapPixelFormats(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Imaging.BitmapPixelFormat)* return_result);
	HRESULT abi_IsBitmapPixelFormatSupported(Windows.Graphics.Imaging.BitmapPixelFormat bitmapPixelFormat, bool* return_result);
	HRESULT get_IsSupported(bool* return_returnValue);
}

@uuid("6ba67d8c-a841-4420-93e6-2420a1884fcf")
@WinrtFactory("Windows.Media.FaceAnalysis.FaceTracker")
interface IFaceTracker : IInspectable
{
extern(Windows):
	HRESULT abi_ProcessNextFrameAsync(Windows.Media.VideoFrame videoFrame, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.Media.FaceAnalysis.DetectedFace))* return_returnValue);
	HRESULT get_MinDetectableFaceSize(Windows.Graphics.Imaging.BitmapSize* return_returnValue);
	HRESULT set_MinDetectableFaceSize(Windows.Graphics.Imaging.BitmapSize value);
	HRESULT get_MaxDetectableFaceSize(Windows.Graphics.Imaging.BitmapSize* return_returnValue);
	HRESULT set_MaxDetectableFaceSize(Windows.Graphics.Imaging.BitmapSize value);
}

@uuid("e9629198-1801-3fa5-932e-31d767af6c4d")
@WinrtFactory("Windows.Media.FaceAnalysis.FaceTracker")
interface IFaceTrackerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.FaceAnalysis.FaceTracker)* return_returnValue);
	HRESULT abi_GetSupportedBitmapPixelFormats(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Imaging.BitmapPixelFormat)* return_result);
	HRESULT abi_IsBitmapPixelFormatSupported(Windows.Graphics.Imaging.BitmapPixelFormat bitmapPixelFormat, bool* return_result);
	HRESULT get_IsSupported(bool* return_returnValue);
}

interface DetectedFace : Windows.Media.FaceAnalysis.IDetectedFace
{
extern(Windows):
	final Windows.Graphics.Imaging.BitmapBounds FaceBox()
	{
		Windows.Graphics.Imaging.BitmapBounds _ret;
		Debug.OK((cast(Windows.Media.FaceAnalysis.IDetectedFace)this.asInterface(uuid("8200d454-66bc-34df-9410-e89400195414"))).get_FaceBox(&_ret));
		return _ret;
	}
}

interface FaceDetector : Windows.Media.FaceAnalysis.IFaceDetector
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.Media.FaceAnalysis.DetectedFace)) DetectFacesAsync(Windows.Graphics.Imaging.SoftwareBitmap image)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.Media.FaceAnalysis.DetectedFace)) _ret;
		Debug.OK((cast(Windows.Media.FaceAnalysis.IFaceDetector)this.asInterface(uuid("16b672dc-fe6f-3117-8d95-c3f04d51630c"))).abi_DetectFacesAsync(image, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.Media.FaceAnalysis.DetectedFace)) DetectFacesWithSearchAreaAsync(Windows.Graphics.Imaging.SoftwareBitmap image, Windows.Graphics.Imaging.BitmapBounds searchArea)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.Media.FaceAnalysis.DetectedFace)) _ret;
		Debug.OK((cast(Windows.Media.FaceAnalysis.IFaceDetector)this.asInterface(uuid("16b672dc-fe6f-3117-8d95-c3f04d51630c"))).abi_DetectFacesWithSearchAreaAsync(image, searchArea, &_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.BitmapSize MinDetectableFaceSize()
	{
		Windows.Graphics.Imaging.BitmapSize _ret;
		Debug.OK((cast(Windows.Media.FaceAnalysis.IFaceDetector)this.asInterface(uuid("16b672dc-fe6f-3117-8d95-c3f04d51630c"))).get_MinDetectableFaceSize(&_ret));
		return _ret;
	}
	final void MinDetectableFaceSize(Windows.Graphics.Imaging.BitmapSize value)
	{
		Debug.OK((cast(Windows.Media.FaceAnalysis.IFaceDetector)this.asInterface(uuid("16b672dc-fe6f-3117-8d95-c3f04d51630c"))).set_MinDetectableFaceSize(value));
	}
	final Windows.Graphics.Imaging.BitmapSize MaxDetectableFaceSize()
	{
		Windows.Graphics.Imaging.BitmapSize _ret;
		Debug.OK((cast(Windows.Media.FaceAnalysis.IFaceDetector)this.asInterface(uuid("16b672dc-fe6f-3117-8d95-c3f04d51630c"))).get_MaxDetectableFaceSize(&_ret));
		return _ret;
	}
	final void MaxDetectableFaceSize(Windows.Graphics.Imaging.BitmapSize value)
	{
		Debug.OK((cast(Windows.Media.FaceAnalysis.IFaceDetector)this.asInterface(uuid("16b672dc-fe6f-3117-8d95-c3f04d51630c"))).set_MaxDetectableFaceSize(value));
	}

	private static Windows.Media.FaceAnalysis.IFaceDetectorStatics _staticInstance;
	public static Windows.Media.FaceAnalysis.IFaceDetectorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.FaceAnalysis.IFaceDetectorStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.FaceAnalysis.FaceDetector) CreateAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.FaceAnalysis.FaceDetector) _ret;
		Debug.OK(staticInstance.abi_CreateAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Imaging.BitmapPixelFormat) GetSupportedBitmapPixelFormats()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Imaging.BitmapPixelFormat) _ret;
		Debug.OK(staticInstance.abi_GetSupportedBitmapPixelFormats(&_ret));
		return _ret;
	}
	static bool IsBitmapPixelFormatSupported(Windows.Graphics.Imaging.BitmapPixelFormat bitmapPixelFormat)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsBitmapPixelFormatSupported(bitmapPixelFormat, &_ret));
		return _ret;
	}
	static bool IsSupported()
	{
		bool _ret;
		Debug.OK(staticInstance.get_IsSupported(&_ret));
		return _ret;
	}
}

interface FaceTracker : Windows.Media.FaceAnalysis.IFaceTracker
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.Media.FaceAnalysis.DetectedFace)) ProcessNextFrameAsync(Windows.Media.VideoFrame videoFrame)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.Media.FaceAnalysis.DetectedFace)) _ret;
		Debug.OK((cast(Windows.Media.FaceAnalysis.IFaceTracker)this.asInterface(uuid("6ba67d8c-a841-4420-93e6-2420a1884fcf"))).abi_ProcessNextFrameAsync(videoFrame, &_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.BitmapSize MinDetectableFaceSize()
	{
		Windows.Graphics.Imaging.BitmapSize _ret;
		Debug.OK((cast(Windows.Media.FaceAnalysis.IFaceTracker)this.asInterface(uuid("6ba67d8c-a841-4420-93e6-2420a1884fcf"))).get_MinDetectableFaceSize(&_ret));
		return _ret;
	}
	final void MinDetectableFaceSize(Windows.Graphics.Imaging.BitmapSize value)
	{
		Debug.OK((cast(Windows.Media.FaceAnalysis.IFaceTracker)this.asInterface(uuid("6ba67d8c-a841-4420-93e6-2420a1884fcf"))).set_MinDetectableFaceSize(value));
	}
	final Windows.Graphics.Imaging.BitmapSize MaxDetectableFaceSize()
	{
		Windows.Graphics.Imaging.BitmapSize _ret;
		Debug.OK((cast(Windows.Media.FaceAnalysis.IFaceTracker)this.asInterface(uuid("6ba67d8c-a841-4420-93e6-2420a1884fcf"))).get_MaxDetectableFaceSize(&_ret));
		return _ret;
	}
	final void MaxDetectableFaceSize(Windows.Graphics.Imaging.BitmapSize value)
	{
		Debug.OK((cast(Windows.Media.FaceAnalysis.IFaceTracker)this.asInterface(uuid("6ba67d8c-a841-4420-93e6-2420a1884fcf"))).set_MaxDetectableFaceSize(value));
	}

	private static Windows.Media.FaceAnalysis.IFaceTrackerStatics _staticInstance;
	public static Windows.Media.FaceAnalysis.IFaceTrackerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.FaceAnalysis.IFaceTrackerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.FaceAnalysis.FaceTracker) CreateAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.FaceAnalysis.FaceTracker) _ret;
		Debug.OK(staticInstance.abi_CreateAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Imaging.BitmapPixelFormat) GetSupportedBitmapPixelFormats()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Imaging.BitmapPixelFormat) _ret;
		Debug.OK(staticInstance.abi_GetSupportedBitmapPixelFormats(&_ret));
		return _ret;
	}
	static bool IsBitmapPixelFormatSupported(Windows.Graphics.Imaging.BitmapPixelFormat bitmapPixelFormat)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsBitmapPixelFormatSupported(bitmapPixelFormat, &_ret));
		return _ret;
	}
	static bool IsSupported()
	{
		bool _ret;
		Debug.OK(staticInstance.get_IsSupported(&_ret));
		return _ret;
	}
}