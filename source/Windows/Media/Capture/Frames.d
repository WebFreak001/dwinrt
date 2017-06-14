module Windows.Media.Capture.Frames;

import dwinrt;

@uuid("b5b153c7-9b84-4062-b79c-a365b2596854")
@WinrtFactory("Windows.Media.Capture.Frames.BufferMediaFrame")
interface IBufferMediaFrame : IInspectable
{
extern(Windows):
	HRESULT get_FrameReference(Windows.Media.Capture.Frames.MediaFrameReference* return_value);
	HRESULT get_Buffer(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("47135e4f-8549-45c0-925b-80d35efdb10a")
@WinrtFactory("Windows.Media.Capture.Frames.DepthMediaFrame")
interface IDepthMediaFrame : IInspectable
{
extern(Windows):
	HRESULT get_FrameReference(Windows.Media.Capture.Frames.MediaFrameReference* return_value);
	HRESULT get_VideoMediaFrame(Windows.Media.Capture.Frames.VideoMediaFrame* return_value);
	HRESULT get_DepthFormat(Windows.Media.Capture.Frames.DepthMediaFrameFormat* return_value);
	HRESULT abi_TryCreateCoordinateMapper(Windows.Media.Devices.Core.CameraIntrinsics cameraIntrinsics, Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper* return_value);
}

@uuid("6cca473d-c4a4-4176-b0cd-33eae3b35aa3")
@WinrtFactory("Windows.Media.Capture.Frames.DepthMediaFrame")
interface IDepthMediaFrame2 : IInspectable
{
extern(Windows):
	HRESULT get_MaxReliableDepth(UINT32* return_value);
	HRESULT get_MinReliableDepth(UINT32* return_value);
}

@uuid("c312cf40-d729-453e-8780-2e04f140d28e")
@WinrtFactory("Windows.Media.Capture.Frames.DepthMediaFrameFormat")
interface IDepthMediaFrameFormat : IInspectable
{
extern(Windows):
	HRESULT get_VideoFormat(Windows.Media.Capture.Frames.VideoMediaFrameFormat* return_value);
	HRESULT get_DepthScaleInMeters(double* return_value);
}

@uuid("3fd13503-004b-4f0e-91ac-465299b41658")
@WinrtFactory("Windows.Media.Capture.Frames.InfraredMediaFrame")
interface IInfraredMediaFrame : IInspectable
{
extern(Windows):
	HRESULT get_FrameReference(Windows.Media.Capture.Frames.MediaFrameReference* return_value);
	HRESULT get_VideoMediaFrame(Windows.Media.Capture.Frames.VideoMediaFrame* return_value);
	HRESULT get_IsIlluminated(bool* return_value);
}

@uuid("0b430add-a490-4435-ada1-9affd55239f7")
@WinrtFactory("Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs")
interface IMediaFrameArrivedEventArgs : IInspectable
{
}

@uuid("71902b4e-b279-4a97-a9db-bd5a2fb78f39")
@WinrtFactory("Windows.Media.Capture.Frames.MediaFrameFormat")
interface IMediaFrameFormat : IInspectable
{
extern(Windows):
	HRESULT get_MajorType(HSTRING* return_value);
	HRESULT get_Subtype(HSTRING* return_value);
	HRESULT get_FrameRate(Windows.Media.MediaProperties.MediaRatio* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(GUID, IInspectable)* return_value);
	HRESULT get_VideoFormat(Windows.Media.Capture.Frames.VideoMediaFrameFormat* return_value);
}

@uuid("e4c94395-2028-48ed-90b0-d1c1b162e24c")
@WinrtFactory("Windows.Media.Capture.Frames.MediaFrameReader")
interface IMediaFrameReader_Base : IInspectable
{
extern(Windows):
	HRESULT add_FrameArrived(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.Frames.MediaFrameReader, Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_FrameArrived(EventRegistrationToken token);
	HRESULT abi_TryAcquireLatestFrame(Windows.Media.Capture.Frames.MediaFrameReference* return_value);
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameReaderStartStatus)* return_operation);
	HRESULT abi_StopAsync(Windows.Foundation.IAsyncAction* return_action);
}
interface IMediaFrameReader : IMediaFrameReader_Base, Windows.Foundation.IClosable {}

@uuid("f6b88641-f0dc-4044-8dc9-961cedd05bad")
@WinrtFactory("Windows.Media.Capture.Frames.MediaFrameReference")
interface IMediaFrameReference_Base : IInspectable
{
extern(Windows):
	HRESULT get_SourceKind(Windows.Media.Capture.Frames.MediaFrameSourceKind* return_value);
	HRESULT get_Format(Windows.Media.Capture.Frames.MediaFrameFormat* return_value);
	HRESULT get_SystemRelativeTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(GUID, IInspectable)* return_value);
	HRESULT get_BufferMediaFrame(Windows.Media.Capture.Frames.BufferMediaFrame* return_value);
	HRESULT get_VideoMediaFrame(Windows.Media.Capture.Frames.VideoMediaFrame* return_value);
	HRESULT get_CoordinateSystem(Windows.Perception.Spatial.SpatialCoordinateSystem* return_value);
}
interface IMediaFrameReference : IMediaFrameReference_Base, Windows.Foundation.IClosable {}

@uuid("d6782953-90db-46a8-8add-2aa884a8d253")
@WinrtFactory("Windows.Media.Capture.Frames.MediaFrameSource")
interface IMediaFrameSource : IInspectable
{
extern(Windows):
	HRESULT get_Info(Windows.Media.Capture.Frames.MediaFrameSourceInfo* return_value);
	HRESULT get_Controller(Windows.Media.Capture.Frames.MediaFrameSourceController* return_value);
	HRESULT get_SupportedFormats(Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.Frames.MediaFrameFormat)* return_value);
	HRESULT get_CurrentFormat(Windows.Media.Capture.Frames.MediaFrameFormat* return_value);
	HRESULT abi_SetFormatAsync(Windows.Media.Capture.Frames.MediaFrameFormat format, Windows.Foundation.IAsyncAction* return_value);
	HRESULT add_FormatChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.Frames.MediaFrameSource, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_FormatChanged(EventRegistrationToken token);
	HRESULT abi_TryGetCameraIntrinsics(Windows.Media.Capture.Frames.MediaFrameFormat format, Windows.Media.Devices.Core.CameraIntrinsics* return_value);
}

@uuid("6d076635-316d-4b8f-b7b6-eeb04a8c6525")
@WinrtFactory("Windows.Media.Capture.Frames.MediaFrameSourceController")
interface IMediaFrameSourceController : IInspectable
{
extern(Windows):
	HRESULT abi_GetPropertyAsync(HSTRING propertyId, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameSourceGetPropertyResult)* return_value);
	HRESULT abi_SetPropertyAsync(HSTRING propertyId, IInspectable propertyValue, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameSourceSetPropertyStatus)* return_value);
	HRESULT get_VideoDeviceController(Windows.Media.Devices.VideoDeviceController* return_value);
}

@uuid("efc49fd4-fcf2-4a03-b4e4-ac9628739bee")
@WinrtFactory("Windows.Media.Capture.Frames.MediaFrameSourceController")
interface IMediaFrameSourceController2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetPropertyByExtendedIdAsync(UINT32 __extendedPropertyIdSize, BYTE* extendedPropertyId, Windows.Foundation.IReference!(UINT32) maxPropertyValueSize, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameSourceGetPropertyResult)* return_operation);
	HRESULT abi_SetPropertyByExtendedIdAsync(UINT32 __extendedPropertyIdSize, BYTE* extendedPropertyId, UINT32 __propertyValueSize, BYTE* propertyValue, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameSourceSetPropertyStatus)* return_operation);
}

@uuid("088616c2-3a64-4bd5-bd2b-e7c898d2f37a")
@WinrtFactory("Windows.Media.Capture.Frames.MediaFrameSourceGetPropertyResult")
interface IMediaFrameSourceGetPropertyResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Media.Capture.Frames.MediaFrameSourceGetPropertyStatus* return_value);
	HRESULT get_Value(IInspectable* return_value);
}

@uuid("7f605b87-4832-4b5f-ae3d-412faab37d34")
@WinrtFactory("Windows.Media.Capture.Frames.MediaFrameSourceGroup")
interface IMediaFrameSourceGroup : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_SourceInfos(Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.Frames.MediaFrameSourceInfo)* return_value);
}

@uuid("1c48bfc5-436f-4508-94cf-d5d8b7326445")
@WinrtFactory("Windows.Media.Capture.Frames.MediaFrameSourceGroup")
interface IMediaFrameSourceGroupStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FindAllAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.Frames.MediaFrameSourceGroup))* return_value);
	HRESULT abi_FromIdAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameSourceGroup)* return_value);
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
}

@uuid("87bdc9cd-4601-408f-91cf-038318cd0af3")
@WinrtFactory("Windows.Media.Capture.Frames.MediaFrameSourceInfo")
interface IMediaFrameSourceInfo : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_MediaStreamType(Windows.Media.Capture.MediaStreamType* return_value);
	HRESULT get_SourceKind(Windows.Media.Capture.Frames.MediaFrameSourceKind* return_value);
	HRESULT get_SourceGroup(Windows.Media.Capture.Frames.MediaFrameSourceGroup* return_value);
	HRESULT get_DeviceInformation(Windows.Devices.Enumeration.DeviceInformation* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(GUID, IInspectable)* return_value);
	HRESULT get_CoordinateSystem(Windows.Perception.Spatial.SpatialCoordinateSystem* return_value);
}

@uuid("63115e01-cf51-48fd-aab0-6d693eb48127")
@WinrtFactory("Windows.Media.Capture.Frames.MultiSourceMediaFrameArrivedEventArgs")
interface IMultiSourceMediaFrameArrivedEventArgs : IInspectable
{
}

@uuid("8d144402-f763-488d-98f2-b437bcf075e7")
@WinrtFactory("Windows.Media.Capture.Frames.MultiSourceMediaFrameReader")
interface IMultiSourceMediaFrameReader_Base : IInspectable
{
extern(Windows):
	HRESULT add_FrameArrived(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.Frames.MultiSourceMediaFrameReader, Windows.Media.Capture.Frames.MultiSourceMediaFrameArrivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_FrameArrived(EventRegistrationToken token);
	HRESULT abi_TryAcquireLatestFrame(Windows.Media.Capture.Frames.MultiSourceMediaFrameReference* return_value);
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MultiSourceMediaFrameReaderStartStatus)* return_operation);
	HRESULT abi_StopAsync(Windows.Foundation.IAsyncAction* return_action);
}
interface IMultiSourceMediaFrameReader : IMultiSourceMediaFrameReader_Base, Windows.Foundation.IClosable {}

@uuid("21964b1a-7fe2-44d6-92e5-298e6d2810e9")
@WinrtFactory("Windows.Media.Capture.Frames.MultiSourceMediaFrameReference")
interface IMultiSourceMediaFrameReference_Base : IInspectable
{
extern(Windows):
	HRESULT abi_TryGetFrameReferenceBySourceId(HSTRING sourceId, Windows.Media.Capture.Frames.MediaFrameReference* return_value);
}
interface IMultiSourceMediaFrameReference : IMultiSourceMediaFrameReference_Base, Windows.Foundation.IClosable {}

@uuid("00dd4ccb-32bd-4fe1-a013-7cc13cf5dbcf")
@WinrtFactory("Windows.Media.Capture.Frames.VideoMediaFrame")
interface IVideoMediaFrame : IInspectable
{
extern(Windows):
	HRESULT get_FrameReference(Windows.Media.Capture.Frames.MediaFrameReference* return_value);
	HRESULT get_VideoFormat(Windows.Media.Capture.Frames.VideoMediaFrameFormat* return_value);
	HRESULT get_SoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap* return_value);
	HRESULT get_Direct3DSurface(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface* return_value);
	HRESULT get_CameraIntrinsics(Windows.Media.Devices.Core.CameraIntrinsics* return_value);
	HRESULT get_InfraredMediaFrame(Windows.Media.Capture.Frames.InfraredMediaFrame* return_value);
	HRESULT get_DepthMediaFrame(Windows.Media.Capture.Frames.DepthMediaFrame* return_value);
	HRESULT abi_GetVideoFrame(Windows.Media.VideoFrame* return_value);
}

@uuid("46027fc0-d71b-45c7-8f14-6d9a0ae604e4")
@WinrtFactory("Windows.Media.Capture.Frames.VideoMediaFrameFormat")
interface IVideoMediaFrameFormat : IInspectable
{
extern(Windows):
	HRESULT get_MediaFrameFormat(Windows.Media.Capture.Frames.MediaFrameFormat* return_value);
	HRESULT get_DepthFormat(Windows.Media.Capture.Frames.DepthMediaFrameFormat* return_value);
	HRESULT get_Width(UINT32* return_value);
	HRESULT get_Height(UINT32* return_value);
}

interface BufferMediaFrame : Windows.Media.Capture.Frames.IBufferMediaFrame
{
extern(Windows):
	final Windows.Media.Capture.Frames.MediaFrameReference FrameReference()
	{
		Windows.Media.Capture.Frames.MediaFrameReference _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IBufferMediaFrame).get_FrameReference(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Buffer()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IBufferMediaFrame).get_Buffer(&_ret));
		return _ret;
	}
}

interface DepthMediaFrame : Windows.Media.Capture.Frames.IDepthMediaFrame, Windows.Media.Capture.Frames.IDepthMediaFrame2
{
extern(Windows):
	final Windows.Media.Capture.Frames.MediaFrameReference FrameReference()
	{
		Windows.Media.Capture.Frames.MediaFrameReference _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IDepthMediaFrame).get_FrameReference(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.Frames.VideoMediaFrame VideoMediaFrame()
	{
		Windows.Media.Capture.Frames.VideoMediaFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IDepthMediaFrame).get_VideoMediaFrame(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.Frames.DepthMediaFrameFormat DepthFormat()
	{
		Windows.Media.Capture.Frames.DepthMediaFrameFormat _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IDepthMediaFrame).get_DepthFormat(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper TryCreateCoordinateMapper(Windows.Media.Devices.Core.CameraIntrinsics cameraIntrinsics, Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem)
	{
		Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IDepthMediaFrame).abi_TryCreateCoordinateMapper(cameraIntrinsics, coordinateSystem, &_ret));
		return _ret;
	}
	final UINT32 MaxReliableDepth()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IDepthMediaFrame2).get_MaxReliableDepth(&_ret));
		return _ret;
	}
	final UINT32 MinReliableDepth()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IDepthMediaFrame2).get_MinReliableDepth(&_ret));
		return _ret;
	}
}

interface DepthMediaFrameFormat : Windows.Media.Capture.Frames.IDepthMediaFrameFormat
{
extern(Windows):
	final Windows.Media.Capture.Frames.VideoMediaFrameFormat VideoFormat()
	{
		Windows.Media.Capture.Frames.VideoMediaFrameFormat _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IDepthMediaFrameFormat).get_VideoFormat(&_ret));
		return _ret;
	}
	final double DepthScaleInMeters()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IDepthMediaFrameFormat).get_DepthScaleInMeters(&_ret));
		return _ret;
	}
}

interface InfraredMediaFrame : Windows.Media.Capture.Frames.IInfraredMediaFrame
{
extern(Windows):
	final Windows.Media.Capture.Frames.MediaFrameReference FrameReference()
	{
		Windows.Media.Capture.Frames.MediaFrameReference _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IInfraredMediaFrame).get_FrameReference(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.Frames.VideoMediaFrame VideoMediaFrame()
	{
		Windows.Media.Capture.Frames.VideoMediaFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IInfraredMediaFrame).get_VideoMediaFrame(&_ret));
		return _ret;
	}
	final bool IsIlluminated()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IInfraredMediaFrame).get_IsIlluminated(&_ret));
		return _ret;
	}
}

interface MediaFrameArrivedEventArgs : Windows.Media.Capture.Frames.IMediaFrameArrivedEventArgs
{
}

interface MediaFrameFormat : Windows.Media.Capture.Frames.IMediaFrameFormat
{
extern(Windows):
	final HSTRING MajorType()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameFormat).get_MajorType(&_ret));
		return _ret;
	}
	final HSTRING Subtype()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameFormat).get_Subtype(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.MediaRatio FrameRate()
	{
		Windows.Media.MediaProperties.MediaRatio _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameFormat).get_FrameRate(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(GUID, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(GUID, IInspectable) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameFormat).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.Frames.VideoMediaFrameFormat VideoFormat()
	{
		Windows.Media.Capture.Frames.VideoMediaFrameFormat _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameFormat).get_VideoFormat(&_ret));
		return _ret;
	}
}

interface MediaFrameReader : Windows.Media.Capture.Frames.IMediaFrameReader, Windows.Foundation.IClosable
{
extern(Windows):
	final EventRegistrationToken OnFrameArrived(void delegate(Windows.Media.Capture.Frames.MediaFrameReader, Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_FrameArrived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.Frames.MediaFrameReader, Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs), Windows.Media.Capture.Frames.MediaFrameReader, Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeFrameArrived(EventRegistrationToken token)
	{
		Debug.OK(remove_FrameArrived(token));
	}
	final Windows.Media.Capture.Frames.MediaFrameReference TryAcquireLatestFrame()
	{
		Windows.Media.Capture.Frames.MediaFrameReference _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameReader).abi_TryAcquireLatestFrame(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameReaderStartStatus) StartAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameReaderStartStatus) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameReader).abi_StartAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StopAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameReader).abi_StopAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface MediaFrameReference : Windows.Media.Capture.Frames.IMediaFrameReference, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Media.Capture.Frames.MediaFrameSourceKind SourceKind()
	{
		Windows.Media.Capture.Frames.MediaFrameSourceKind _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameReference).get_SourceKind(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.Frames.MediaFrameFormat Format()
	{
		Windows.Media.Capture.Frames.MediaFrameFormat _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameReference).get_Format(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) SystemRelativeTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameReference).get_SystemRelativeTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameReference).get_Duration(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(GUID, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(GUID, IInspectable) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameReference).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.Frames.BufferMediaFrame BufferMediaFrame()
	{
		Windows.Media.Capture.Frames.BufferMediaFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameReference).get_BufferMediaFrame(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.Frames.VideoMediaFrame VideoMediaFrame()
	{
		Windows.Media.Capture.Frames.VideoMediaFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameReference).get_VideoMediaFrame(&_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.SpatialCoordinateSystem CoordinateSystem()
	{
		Windows.Perception.Spatial.SpatialCoordinateSystem _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameReference).get_CoordinateSystem(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface MediaFrameSource : Windows.Media.Capture.Frames.IMediaFrameSource
{
extern(Windows):
	final Windows.Media.Capture.Frames.MediaFrameSourceInfo Info()
	{
		Windows.Media.Capture.Frames.MediaFrameSourceInfo _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSource).get_Info(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.Frames.MediaFrameSourceController Controller()
	{
		Windows.Media.Capture.Frames.MediaFrameSourceController _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSource).get_Controller(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.Frames.MediaFrameFormat) SupportedFormats()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.Frames.MediaFrameFormat) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSource).get_SupportedFormats(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.Frames.MediaFrameFormat CurrentFormat()
	{
		Windows.Media.Capture.Frames.MediaFrameFormat _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSource).get_CurrentFormat(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetFormatAsync(Windows.Media.Capture.Frames.MediaFrameFormat format)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSource).abi_SetFormatAsync(format, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnFormatChanged(void delegate(Windows.Media.Capture.Frames.MediaFrameSource, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_FormatChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.Frames.MediaFrameSource, IInspectable), Windows.Media.Capture.Frames.MediaFrameSource, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeFormatChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_FormatChanged(token));
	}
	final Windows.Media.Devices.Core.CameraIntrinsics TryGetCameraIntrinsics(Windows.Media.Capture.Frames.MediaFrameFormat format)
	{
		Windows.Media.Devices.Core.CameraIntrinsics _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSource).abi_TryGetCameraIntrinsics(format, &_ret));
		return _ret;
	}
}

interface MediaFrameSourceController : Windows.Media.Capture.Frames.IMediaFrameSourceController, Windows.Media.Capture.Frames.IMediaFrameSourceController2
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameSourceGetPropertyResult) GetPropertyAsync(HSTRING propertyId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameSourceGetPropertyResult) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceController).abi_GetPropertyAsync(propertyId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameSourceSetPropertyStatus) SetPropertyAsync(HSTRING propertyId, IInspectable propertyValue)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameSourceSetPropertyStatus) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceController).abi_SetPropertyAsync(propertyId, propertyValue, &_ret));
		return _ret;
	}
	final Windows.Media.Devices.VideoDeviceController VideoDeviceController()
	{
		Windows.Media.Devices.VideoDeviceController _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceController).get_VideoDeviceController(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameSourceGetPropertyResult) GetPropertyByExtendedIdAsync(UINT32 __extendedPropertyIdSize, BYTE* extendedPropertyId, Windows.Foundation.IReference!(UINT32) maxPropertyValueSize)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameSourceGetPropertyResult) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceController2).abi_GetPropertyByExtendedIdAsync(__extendedPropertyIdSize, extendedPropertyId, maxPropertyValueSize, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameSourceSetPropertyStatus) SetPropertyByExtendedIdAsync(UINT32 __extendedPropertyIdSize, BYTE* extendedPropertyId, UINT32 __propertyValueSize, BYTE* propertyValue)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameSourceSetPropertyStatus) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceController2).abi_SetPropertyByExtendedIdAsync(__extendedPropertyIdSize, extendedPropertyId, __propertyValueSize, propertyValue, &_ret));
		return _ret;
	}
}

interface MediaFrameSourceGetPropertyResult : Windows.Media.Capture.Frames.IMediaFrameSourceGetPropertyResult
{
extern(Windows):
	final Windows.Media.Capture.Frames.MediaFrameSourceGetPropertyStatus Status()
	{
		Windows.Media.Capture.Frames.MediaFrameSourceGetPropertyStatus _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceGetPropertyResult).get_Status(&_ret));
		return _ret;
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceGetPropertyResult).get_Value(&_ret));
		return _ret;
	}
}

interface MediaFrameSourceGroup : Windows.Media.Capture.Frames.IMediaFrameSourceGroup
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceGroup).get_Id(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceGroup).get_DisplayName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.Frames.MediaFrameSourceInfo) SourceInfos()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.Frames.MediaFrameSourceInfo) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceGroup).get_SourceInfos(&_ret));
		return _ret;
	}
}

interface MediaFrameSourceInfo : Windows.Media.Capture.Frames.IMediaFrameSourceInfo
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceInfo).get_Id(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.MediaStreamType MediaStreamType()
	{
		Windows.Media.Capture.MediaStreamType _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceInfo).get_MediaStreamType(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.Frames.MediaFrameSourceKind SourceKind()
	{
		Windows.Media.Capture.Frames.MediaFrameSourceKind _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceInfo).get_SourceKind(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.Frames.MediaFrameSourceGroup SourceGroup()
	{
		Windows.Media.Capture.Frames.MediaFrameSourceGroup _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceInfo).get_SourceGroup(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DeviceInformation DeviceInformation()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceInfo).get_DeviceInformation(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(GUID, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(GUID, IInspectable) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceInfo).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.SpatialCoordinateSystem CoordinateSystem()
	{
		Windows.Perception.Spatial.SpatialCoordinateSystem _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMediaFrameSourceInfo).get_CoordinateSystem(&_ret));
		return _ret;
	}
}

interface MultiSourceMediaFrameArrivedEventArgs : Windows.Media.Capture.Frames.IMultiSourceMediaFrameArrivedEventArgs
{
}

interface MultiSourceMediaFrameReader : Windows.Media.Capture.Frames.IMultiSourceMediaFrameReader, Windows.Foundation.IClosable
{
extern(Windows):
	final EventRegistrationToken OnFrameArrived(void delegate(Windows.Media.Capture.Frames.MultiSourceMediaFrameReader, Windows.Media.Capture.Frames.MultiSourceMediaFrameArrivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_FrameArrived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.Frames.MultiSourceMediaFrameReader, Windows.Media.Capture.Frames.MultiSourceMediaFrameArrivedEventArgs), Windows.Media.Capture.Frames.MultiSourceMediaFrameReader, Windows.Media.Capture.Frames.MultiSourceMediaFrameArrivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeFrameArrived(EventRegistrationToken token)
	{
		Debug.OK(remove_FrameArrived(token));
	}
	final Windows.Media.Capture.Frames.MultiSourceMediaFrameReference TryAcquireLatestFrame()
	{
		Windows.Media.Capture.Frames.MultiSourceMediaFrameReference _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMultiSourceMediaFrameReader).abi_TryAcquireLatestFrame(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MultiSourceMediaFrameReaderStartStatus) StartAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MultiSourceMediaFrameReaderStartStatus) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMultiSourceMediaFrameReader).abi_StartAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StopAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMultiSourceMediaFrameReader).abi_StopAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface MultiSourceMediaFrameReference : Windows.Media.Capture.Frames.IMultiSourceMediaFrameReference, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Media.Capture.Frames.MediaFrameReference TryGetFrameReferenceBySourceId(HSTRING sourceId)
	{
		Windows.Media.Capture.Frames.MediaFrameReference _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IMultiSourceMediaFrameReference).abi_TryGetFrameReferenceBySourceId(sourceId, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface VideoMediaFrame : Windows.Media.Capture.Frames.IVideoMediaFrame
{
extern(Windows):
	final Windows.Media.Capture.Frames.MediaFrameReference FrameReference()
	{
		Windows.Media.Capture.Frames.MediaFrameReference _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IVideoMediaFrame).get_FrameReference(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.Frames.VideoMediaFrameFormat VideoFormat()
	{
		Windows.Media.Capture.Frames.VideoMediaFrameFormat _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IVideoMediaFrame).get_VideoFormat(&_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.SoftwareBitmap SoftwareBitmap()
	{
		Windows.Graphics.Imaging.SoftwareBitmap _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IVideoMediaFrame).get_SoftwareBitmap(&_ret));
		return _ret;
	}
	final Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface Direct3DSurface()
	{
		Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IVideoMediaFrame).get_Direct3DSurface(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.Core.CameraIntrinsics CameraIntrinsics()
	{
		Windows.Media.Devices.Core.CameraIntrinsics _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IVideoMediaFrame).get_CameraIntrinsics(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.Frames.InfraredMediaFrame InfraredMediaFrame()
	{
		Windows.Media.Capture.Frames.InfraredMediaFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IVideoMediaFrame).get_InfraredMediaFrame(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.Frames.DepthMediaFrame DepthMediaFrame()
	{
		Windows.Media.Capture.Frames.DepthMediaFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IVideoMediaFrame).get_DepthMediaFrame(&_ret));
		return _ret;
	}
	final Windows.Media.VideoFrame GetVideoFrame()
	{
		Windows.Media.VideoFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IVideoMediaFrame).abi_GetVideoFrame(&_ret));
		return _ret;
	}
}

interface VideoMediaFrameFormat : Windows.Media.Capture.Frames.IVideoMediaFrameFormat
{
extern(Windows):
	final Windows.Media.Capture.Frames.MediaFrameFormat MediaFrameFormat()
	{
		Windows.Media.Capture.Frames.MediaFrameFormat _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IVideoMediaFrameFormat).get_MediaFrameFormat(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.Frames.DepthMediaFrameFormat DepthFormat()
	{
		Windows.Media.Capture.Frames.DepthMediaFrameFormat _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IVideoMediaFrameFormat).get_DepthFormat(&_ret));
		return _ret;
	}
	final UINT32 Width()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IVideoMediaFrameFormat).get_Width(&_ret));
		return _ret;
	}
	final UINT32 Height()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Frames.IVideoMediaFrameFormat).get_Height(&_ret));
		return _ret;
	}
}

enum MediaFrameReaderStartStatus
{
	Success = 0,
	UnknownFailure = 1,
	DeviceNotAvailable = 2,
	OutputFormatNotSupported = 3,
	ExclusiveControlNotAvailable = 4
}

enum MediaFrameSourceGetPropertyStatus
{
	Success = 0,
	UnknownFailure = 1,
	NotSupported = 2,
	DeviceNotAvailable = 3,
	MaxPropertyValueSizeTooSmall = 4,
	MaxPropertyValueSizeRequired = 5
}

enum MediaFrameSourceKind
{
	Custom = 0,
	Color = 1,
	Infrared = 2,
	Depth = 3
}

enum MediaFrameSourceSetPropertyStatus
{
	Success = 0,
	UnknownFailure = 1,
	NotSupported = 2,
	InvalidValue = 3,
	DeviceNotAvailable = 4,
	NotInControl = 5
}

enum MultiSourceMediaFrameReaderStartStatus
{
	Success = 0,
	NotSupported = 1,
	InsufficientResources = 2,
	DeviceNotAvailable = 3,
	UnknownFailure = 4
}