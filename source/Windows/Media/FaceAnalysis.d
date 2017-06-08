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
}

interface FaceDetector : Windows.Media.FaceAnalysis.IFaceDetector
{
}

interface FaceTracker : Windows.Media.FaceAnalysis.IFaceTracker
{
}