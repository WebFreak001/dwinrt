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
interface ISpatialSurfaceObserverStatics2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_IsSupported(bool* return_value);
}
@uuid("0f534261-c55d-4e6b-a895-a19de69a42e3")
@WinrtFactory("Windows.Perception.Spatial.Surfaces.SpatialSurfaceObserver")
interface ISpatialSurfaceObserverStatics2 : ISpatialSurfaceObserverStatics2_Base, Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserverStatics {}

interface SpatialSurfaceInfo : Windows.Perception.Spatial.Surfaces.ISpatialSurfaceInfo
{
extern(Windows):
	final GUID Id()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceInfo)this.asInterface(uuid("f8e9ebe7-39b7-3962-bb03-57f56e1fb0a1"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime UpdateTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceInfo)this.asInterface(uuid("f8e9ebe7-39b7-3962-bb03-57f56e1fb0a1"))).get_UpdateTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Perception.Spatial.SpatialBoundingOrientedBox) TryGetBounds(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem)
	{
		Windows.Foundation.IReference!(Windows.Perception.Spatial.SpatialBoundingOrientedBox) _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceInfo)this.asInterface(uuid("f8e9ebe7-39b7-3962-bb03-57f56e1fb0a1"))).abi_TryGetBounds(coordinateSystem, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.Surfaces.SpatialSurfaceMesh) TryComputeLatestMeshAsync(double maxTrianglesPerCubicMeter)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.Surfaces.SpatialSurfaceMesh) _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceInfo)this.asInterface(uuid("f8e9ebe7-39b7-3962-bb03-57f56e1fb0a1"))).abi_TryComputeLatestMeshAsync(maxTrianglesPerCubicMeter, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.Surfaces.SpatialSurfaceMesh) TryComputeLatestMeshWithOptionsAsync(double maxTrianglesPerCubicMeter, Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.Surfaces.SpatialSurfaceMesh) _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceInfo)this.asInterface(uuid("f8e9ebe7-39b7-3962-bb03-57f56e1fb0a1"))).abi_TryComputeLatestMeshWithOptionsAsync(maxTrianglesPerCubicMeter, options, &_ret));
		return _ret;
	}
	alias TryComputeLatestMeshAsync = TryComputeLatestMeshWithOptionsAsync;
}

interface SpatialSurfaceMesh : Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMesh
{
extern(Windows):
	final Windows.Perception.Spatial.Surfaces.SpatialSurfaceInfo SurfaceInfo()
	{
		Windows.Perception.Spatial.Surfaces.SpatialSurfaceInfo _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMesh)this.asInterface(uuid("108f57d9-df0d-3950-a0fd-f972c77c27b4"))).get_SurfaceInfo(&_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.SpatialCoordinateSystem CoordinateSystem()
	{
		Windows.Perception.Spatial.SpatialCoordinateSystem _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMesh)this.asInterface(uuid("108f57d9-df0d-3950-a0fd-f972c77c27b4"))).get_CoordinateSystem(&_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer TriangleIndices()
	{
		Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMesh)this.asInterface(uuid("108f57d9-df0d-3950-a0fd-f972c77c27b4"))).get_TriangleIndices(&_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer VertexPositions()
	{
		Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMesh)this.asInterface(uuid("108f57d9-df0d-3950-a0fd-f972c77c27b4"))).get_VertexPositions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 VertexPositionScale()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMesh)this.asInterface(uuid("108f57d9-df0d-3950-a0fd-f972c77c27b4"))).get_VertexPositionScale(&_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer VertexNormals()
	{
		Windows.Perception.Spatial.Surfaces.SpatialSurfaceMeshBuffer _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMesh)this.asInterface(uuid("108f57d9-df0d-3950-a0fd-f972c77c27b4"))).get_VertexNormals(&_ret));
		return _ret;
	}
}

interface SpatialSurfaceMeshBuffer : Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshBuffer
{
extern(Windows):
	final Windows.Graphics.DirectX.DirectXPixelFormat Format()
	{
		Windows.Graphics.DirectX.DirectXPixelFormat _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshBuffer)this.asInterface(uuid("93cf59e0-871f-33f8-98b2-03d101458f6f"))).get_Format(&_ret));
		return _ret;
	}
	final UINT32 Stride()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshBuffer)this.asInterface(uuid("93cf59e0-871f-33f8-98b2-03d101458f6f"))).get_Stride(&_ret));
		return _ret;
	}
	final UINT32 ElementCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshBuffer)this.asInterface(uuid("93cf59e0-871f-33f8-98b2-03d101458f6f"))).get_ElementCount(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Data()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshBuffer)this.asInterface(uuid("93cf59e0-871f-33f8-98b2-03d101458f6f"))).get_Data(&_ret));
		return _ret;
	}
}

interface SpatialSurfaceMeshOptions : Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions
{
extern(Windows):
	final Windows.Graphics.DirectX.DirectXPixelFormat VertexPositionFormat()
	{
		Windows.Graphics.DirectX.DirectXPixelFormat _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions)this.asInterface(uuid("d2759f89-3572-3d2d-a10d-5fee9394aa37"))).get_VertexPositionFormat(&_ret));
		return _ret;
	}
	final void VertexPositionFormat(Windows.Graphics.DirectX.DirectXPixelFormat value)
	{
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions)this.asInterface(uuid("d2759f89-3572-3d2d-a10d-5fee9394aa37"))).set_VertexPositionFormat(value));
	}
	final Windows.Graphics.DirectX.DirectXPixelFormat TriangleIndexFormat()
	{
		Windows.Graphics.DirectX.DirectXPixelFormat _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions)this.asInterface(uuid("d2759f89-3572-3d2d-a10d-5fee9394aa37"))).get_TriangleIndexFormat(&_ret));
		return _ret;
	}
	final void TriangleIndexFormat(Windows.Graphics.DirectX.DirectXPixelFormat value)
	{
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions)this.asInterface(uuid("d2759f89-3572-3d2d-a10d-5fee9394aa37"))).set_TriangleIndexFormat(value));
	}
	final Windows.Graphics.DirectX.DirectXPixelFormat VertexNormalFormat()
	{
		Windows.Graphics.DirectX.DirectXPixelFormat _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions)this.asInterface(uuid("d2759f89-3572-3d2d-a10d-5fee9394aa37"))).get_VertexNormalFormat(&_ret));
		return _ret;
	}
	final void VertexNormalFormat(Windows.Graphics.DirectX.DirectXPixelFormat value)
	{
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions)this.asInterface(uuid("d2759f89-3572-3d2d-a10d-5fee9394aa37"))).set_VertexNormalFormat(value));
	}
	final bool IncludeVertexNormals()
	{
		bool _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions)this.asInterface(uuid("d2759f89-3572-3d2d-a10d-5fee9394aa37"))).get_IncludeVertexNormals(&_ret));
		return _ret;
	}
	final void IncludeVertexNormals(bool value)
	{
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptions)this.asInterface(uuid("d2759f89-3572-3d2d-a10d-5fee9394aa37"))).set_IncludeVertexNormals(value));
	}

	private static Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptionsStatics _staticInstance;
	public static Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptionsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceMeshOptionsStatics);
		return _staticInstance;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Graphics.DirectX.DirectXPixelFormat) SupportedVertexPositionFormats()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Graphics.DirectX.DirectXPixelFormat) _ret;
		Debug.OK(staticInstance.get_SupportedVertexPositionFormats(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Graphics.DirectX.DirectXPixelFormat) SupportedTriangleIndexFormats()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Graphics.DirectX.DirectXPixelFormat) _ret;
		Debug.OK(staticInstance.get_SupportedTriangleIndexFormats(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Graphics.DirectX.DirectXPixelFormat) SupportedVertexNormalFormats()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Graphics.DirectX.DirectXPixelFormat) _ret;
		Debug.OK(staticInstance.get_SupportedVertexNormalFormats(&_ret));
		return _ret;
	}
	static SpatialSurfaceMeshOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SpatialSurfaceMeshOptions).abi_ActivateInstance(&ret));
		return cast(SpatialSurfaceMeshOptions) ret;
	}
}

interface SpatialSurfaceObserver : Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserver
{
extern(Windows):
	final Windows.Foundation.Collections.IMapView!(GUID, Windows.Perception.Spatial.Surfaces.SpatialSurfaceInfo) GetObservedSurfaces()
	{
		Windows.Foundation.Collections.IMapView!(GUID, Windows.Perception.Spatial.Surfaces.SpatialSurfaceInfo) _ret;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserver)this.asInterface(uuid("10b69819-ddca-3483-ac3a-748fe8c86df5"))).abi_GetObservedSurfaces(&_ret));
		return _ret;
	}
	final void SetBoundingVolume(Windows.Perception.Spatial.SpatialBoundingVolume bounds)
	{
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserver)this.asInterface(uuid("10b69819-ddca-3483-ac3a-748fe8c86df5"))).abi_SetBoundingVolume(bounds));
	}
	final void SetBoundingVolumes(Windows.Foundation.Collections.IIterable!(Windows.Perception.Spatial.SpatialBoundingVolume) bounds)
	{
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserver)this.asInterface(uuid("10b69819-ddca-3483-ac3a-748fe8c86df5"))).abi_SetBoundingVolumes(bounds));
	}
	final EventRegistrationToken OnObservedSurfacesChanged(void delegate(Windows.Perception.Spatial.Surfaces.SpatialSurfaceObserver, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserver)this.asInterface(uuid("10b69819-ddca-3483-ac3a-748fe8c86df5"))).add_ObservedSurfacesChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Perception.Spatial.Surfaces.SpatialSurfaceObserver, IInspectable), Windows.Perception.Spatial.Surfaces.SpatialSurfaceObserver, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeObservedSurfacesChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserver)this.asInterface(uuid("10b69819-ddca-3483-ac3a-748fe8c86df5"))).remove_ObservedSurfacesChanged(token));
	}

	private static Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserverStatics _staticInstance;
	public static Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserverStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Perception.Spatial.Surfaces.ISpatialSurfaceObserverStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.SpatialPerceptionAccessStatus) RequestAccessAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.SpatialPerceptionAccessStatus) _ret;
		Debug.OK(staticInstance.abi_RequestAccessAsync(&_ret));
		return _ret;
	}
	static SpatialSurfaceObserver New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SpatialSurfaceObserver).abi_ActivateInstance(&ret));
		return cast(SpatialSurfaceObserver) ret;
	}
}