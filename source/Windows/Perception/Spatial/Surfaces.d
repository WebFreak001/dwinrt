module Windows.Perception.Spatial.Surfaces;

import dwinrt;

@uuid("f8e9ebe7-39b7-3962-bb03-57f56e1fb0a1")
@WinrtFactory("Windows.Perception.Spatial.Surfaces.SpatialSurfaceInfo")
interface ISpatialSurfaceInfo : IInspectable
{
extern(Windows):
	HRESULT get_Id(GUID* return_value);
	HRESULT get_UpdateTime(Windows.Foundation.DateTime* return_value);
	HRESULT abi_TryGetBounds(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Foundation.IReference!(Windows.Perception.Spatial.SpatialBoundingOrientedBox)* return_value);
	HRESULT abi_TryComputeLatestMeshAsync(double maxTrianglesPerCubicMeter, Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.Surfaces.SpatialSurfaceMesh)* return_value);
	HRESULT abi_TryComputeLatestMeshWithOptionsAsync(double maxTrianglesPerCubicMeter, Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshOptions options, Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.Surfaces.SpatialSurfaceMesh)* return_value);
}

@uuid("108f57d9-df0d-3950-a0fd-f972c77c27b4")
@WinrtFactory("Windows.Perception.Spatial.Surfaces.SpatialSurfaceMesh")
interface ISpatialSurfaceMesh : IInspectable
{
extern(Windows):
	HRESULT get_SurfaceInfo(Windows.Perception.Spatial.Surfaces.SpatialSurfaceInfo* return_value);
	HRESULT get_CoordinateSystem(Windows.Perception.Spatial.SpatialCoordinateSystem* return_value);
	HRESULT get_TriangleIndices(Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer* return_value);
	HRESULT get_VertexPositions(Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer* return_value);
	HRESULT get_VertexPositionScale(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_VertexNormals(Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer* return_value);
}

@uuid("93cf59e0-871f-33f8-98b2-03d101458f6f")
@WinrtFactory("Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer")
interface ISpatialSurfaceMeshBuffer : IInspectable
{
extern(Windows):
	HRESULT get_Format(Windows.Graphics.DirectX.DirectXPixelFormat* return_value);
	HRESULT get_Stride(UINT32* return_value);
	HRESULT get_ElementCount(UINT32* return_value);
	HRESULT get_Data(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("d2759f89-3572-3d2d-a10d-5fee9394aa37")
@WinrtFactory("Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshOptions")
interface ISpatialSurfaceMeshOptions : IInspectable
{
extern(Windows):
	HRESULT get_VertexPositionFormat(Windows.Graphics.DirectX.DirectXPixelFormat* return_value);
	HRESULT set_VertexPositionFormat(Windows.Graphics.DirectX.DirectXPixelFormat value);
	HRESULT get_TriangleIndexFormat(Windows.Graphics.DirectX.DirectXPixelFormat* return_value);
	HRESULT set_TriangleIndexFormat(Windows.Graphics.DirectX.DirectXPixelFormat value);
	HRESULT get_VertexNormalFormat(Windows.Graphics.DirectX.DirectXPixelFormat* return_value);
	HRESULT set_VertexNormalFormat(Windows.Graphics.DirectX.DirectXPixelFormat value);
	HRESULT get_IncludeVertexNormals(bool* return_value);
	HRESULT set_IncludeVertexNormals(bool value);
}

@uuid("9b340abf-9781-4505-8935-013575caae5e")
@WinrtFactory("Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshOptions")
interface ISpatialSurfaceMeshOptionsStatics : IInspectable
{
extern(Windows):
	HRESULT get_SupportedVertexPositionFormats(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.DirectX.DirectXPixelFormat)* return_value);
	HRESULT get_SupportedTriangleIndexFormats(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.DirectX.DirectXPixelFormat)* return_value);
	HRESULT get_SupportedVertexNormalFormats(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.DirectX.DirectXPixelFormat)* return_value);
}

@uuid("10b69819-ddca-3483-ac3a-748fe8c86df5")
@WinrtFactory("Windows.Perception.Spatial.Surfaces.SpatialSurfaceObserver")
interface ISpatialSurfaceObserver : IInspectable
{
extern(Windows):
	HRESULT abi_GetObservedSurfaces(Windows.Foundation.Collections.IMapView!(GUID, Windows.Perception.Spatial.Surfaces.SpatialSurfaceInfo)* return_value);
	HRESULT abi_SetBoundingVolume(Windows.Perception.Spatial.SpatialBoundingVolume bounds);
	HRESULT abi_SetBoundingVolumes(Windows.Foundation.Collections.IIterable!(Windows.Perception.Spatial.SpatialBoundingVolume) bounds);
	HRESULT add_ObservedSurfacesChanged(Windows.Foundation.TypedEventHandler!(Windows.Perception.Spatial.Surfaces.SpatialSurfaceObserver, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_ObservedSurfacesChanged(EventRegistrationToken token);
}

@uuid("165951ed-2108-4168-9175-87e027bc9285")
@WinrtFactory("Windows.Perception.Spatial.Surfaces.SpatialSurfaceObserver")
interface ISpatialSurfaceObserverStatics : IInspectable
{
extern(Windows):
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.SpatialPerceptionAccessStatus)* return_result);
}

@uuid("0f534261-c55d-4e6b-a895-a19de69a42e3")
@WinrtFactory("Windows.Perception.Spatial.Surfaces.SpatialSurfaceObserver")
interface ISpatialSurfaceObserverStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_IsSupported(bool* return_value);
}

interface SpatialSurfaceInfo : Windows.Perception.Spatial.Surfaces.ISpatialSurfaceInfo
{
extern(Windows):
	final GUID Id()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceInfo).get_Id(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime UpdateTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceInfo).get_UpdateTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Perception.Spatial.SpatialBoundingOrientedBox) TryGetBounds(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem)
	{
		Windows.Foundation.IReference!(Windows.Perception.Spatial.SpatialBoundingOrientedBox) _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceInfo).abi_TryGetBounds(coordinateSystem, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.Surfaces.SpatialSurfaceMesh) TryComputeLatestMeshAsync(double maxTrianglesPerCubicMeter)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.Surfaces.SpatialSurfaceMesh) _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceInfo).abi_TryComputeLatestMeshAsync(maxTrianglesPerCubicMeter, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.Surfaces.SpatialSurfaceMesh) TryComputeLatestMeshWithOptionsAsync(double maxTrianglesPerCubicMeter, Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.Surfaces.SpatialSurfaceMesh) _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceInfo).abi_TryComputeLatestMeshWithOptionsAsync(maxTrianglesPerCubicMeter, options, &_ret));
		return _ret;
	}
}

interface SpatialSurfaceMesh : Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMesh
{
extern(Windows):
	final Windows.Perception.Spatial.Surfaces.SpatialSurfaceInfo SurfaceInfo()
	{
		Windows.Perception.Spatial.Surfaces.SpatialSurfaceInfo _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMesh).get_SurfaceInfo(&_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.SpatialCoordinateSystem CoordinateSystem()
	{
		Windows.Perception.Spatial.SpatialCoordinateSystem _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMesh).get_CoordinateSystem(&_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer TriangleIndices()
	{
		Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMesh).get_TriangleIndices(&_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer VertexPositions()
	{
		Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMesh).get_VertexPositions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 VertexPositionScale()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMesh).get_VertexPositionScale(&_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer VertexNormals()
	{
		Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMesh).get_VertexNormals(&_ret));
		return _ret;
	}
}

interface SpatialSurfaceMeshBuffer : Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshBuffer
{
extern(Windows):
	final Windows.Graphics.DirectX.DirectXPixelFormat Format()
	{
		Windows.Graphics.DirectX.DirectXPixelFormat _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshBuffer).get_Format(&_ret));
		return _ret;
	}
	final UINT32 Stride()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshBuffer).get_Stride(&_ret));
		return _ret;
	}
	final UINT32 ElementCount()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshBuffer).get_ElementCount(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Data()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshBuffer).get_Data(&_ret));
		return _ret;
	}
}

interface SpatialSurfaceMeshOptions : Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions
{
extern(Windows):
	final Windows.Graphics.DirectX.DirectXPixelFormat VertexPositionFormat()
	{
		Windows.Graphics.DirectX.DirectXPixelFormat _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions).get_VertexPositionFormat(&_ret));
		return _ret;
	}
	final void VertexPositionFormat(Windows.Graphics.DirectX.DirectXPixelFormat value)
	{
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions).set_VertexPositionFormat(value));
	}
	final Windows.Graphics.DirectX.DirectXPixelFormat TriangleIndexFormat()
	{
		Windows.Graphics.DirectX.DirectXPixelFormat _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions).get_TriangleIndexFormat(&_ret));
		return _ret;
	}
	final void TriangleIndexFormat(Windows.Graphics.DirectX.DirectXPixelFormat value)
	{
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions).set_TriangleIndexFormat(value));
	}
	final Windows.Graphics.DirectX.DirectXPixelFormat VertexNormalFormat()
	{
		Windows.Graphics.DirectX.DirectXPixelFormat _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions).get_VertexNormalFormat(&_ret));
		return _ret;
	}
	final void VertexNormalFormat(Windows.Graphics.DirectX.DirectXPixelFormat value)
	{
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions).set_VertexNormalFormat(value));
	}
	final bool IncludeVertexNormals()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions).get_IncludeVertexNormals(&_ret));
		return _ret;
	}
	final void IncludeVertexNormals(bool value)
	{
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions).set_IncludeVertexNormals(value));
	}
}

interface SpatialSurfaceObserver : Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserver
{
extern(Windows):
	final Windows.Foundation.Collections.IMapView!(GUID, Windows.Perception.Spatial.Surfaces.SpatialSurfaceInfo) GetObservedSurfaces()
	{
		Windows.Foundation.Collections.IMapView!(GUID, Windows.Perception.Spatial.Surfaces.SpatialSurfaceInfo) _ret;
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserver).abi_GetObservedSurfaces(&_ret));
		return _ret;
	}
	final void SetBoundingVolume(Windows.Perception.Spatial.SpatialBoundingVolume bounds)
	{
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserver).abi_SetBoundingVolume(bounds));
	}
	final void SetBoundingVolumes(Windows.Foundation.Collections.IIterable!(Windows.Perception.Spatial.SpatialBoundingVolume) bounds)
	{
		Debug.OK(this.as!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserver).abi_SetBoundingVolumes(bounds));
	}
}