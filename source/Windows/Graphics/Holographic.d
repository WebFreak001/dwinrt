module Windows.Graphics.Holographic;

import dwinrt;

struct HolographicAdapterId
{
	UINT32 LowPart;
	INT32 HighPart;
}

struct HolographicStereoTransform
{
	Windows.Foundation.Numerics.Matrix4x4 Left;
	Windows.Foundation.Numerics.Matrix4x4 Right;
}

@uuid("e4e98445-9bed-4980-9ba0-e87680d1cb74")
@WinrtFactory("Windows.Graphics.Holographic.HolographicCamera")
interface IHolographicCamera : IInspectable
{
extern(Windows):
	HRESULT get_RenderTargetSize(Windows.Foundation.Size* return_value);
	HRESULT get_ViewportScaleFactor(double* return_value);
	HRESULT set_ViewportScaleFactor(double value);
	HRESULT get_IsStereo(bool* return_value);
	HRESULT get_Id(UINT32* return_value);
	HRESULT abi_SetNearPlaneDistance(double value);
	HRESULT abi_SetFarPlaneDistance(double value);
}

@uuid("b55b9f1a-ba8c-4f84-ad79-2e7e1e2450f3")
@WinrtFactory("Windows.Graphics.Holographic.HolographicCamera")
interface IHolographicCamera2 : IInspectable
{
extern(Windows):
	HRESULT get_LeftViewportParameters(Windows.Graphics.Holographic.HolographicCameraViewportParameters* return_result);
	HRESULT get_RightViewportParameters(Windows.Graphics.Holographic.HolographicCameraViewportParameters* return_result);
	HRESULT get_Display(Windows.Graphics.Holographic.HolographicDisplay* return_result);
}

@uuid("0d7d7e30-12de-45bd-912b-c7f6561599d1")
@WinrtFactory("Windows.Graphics.Holographic.HolographicCameraPose")
interface IHolographicCameraPose : IInspectable
{
extern(Windows):
	HRESULT get_HolographicCamera(Windows.Graphics.Holographic.HolographicCamera* return_value);
	HRESULT get_Viewport(Windows.Foundation.Rect* return_value);
	HRESULT abi_TryGetViewTransform(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Foundation.IReference!(Windows.Graphics.Holographic.HolographicStereoTransform)* return_value);
	HRESULT get_ProjectionTransform(Windows.Graphics.Holographic.HolographicStereoTransform* return_value);
	HRESULT abi_TryGetCullingFrustum(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Foundation.IReference!(Windows.Perception.Spatial.SpatialBoundingFrustum)* return_value);
	HRESULT abi_TryGetVisibleFrustum(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Foundation.IReference!(Windows.Perception.Spatial.SpatialBoundingFrustum)* return_value);
	HRESULT get_NearPlaneDistance(double* return_value);
	HRESULT get_FarPlaneDistance(double* return_value);
}

@uuid("8eac2ed1-5bf4-4e16-8236-ae0800c11d0d")
@WinrtFactory("Windows.Graphics.Holographic.HolographicCameraRenderingParameters")
interface IHolographicCameraRenderingParameters : IInspectable
{
extern(Windows):
	HRESULT abi_SetFocusPoint(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Foundation.Numerics.Vector3 position);
	HRESULT abi_SetFocusPointWithNormal(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Foundation.Numerics.Vector3 position, Windows.Foundation.Numerics.Vector3 normal);
	HRESULT abi_SetFocusPointWithNormalLinearVelocity(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Foundation.Numerics.Vector3 position, Windows.Foundation.Numerics.Vector3 normal, Windows.Foundation.Numerics.Vector3 linearVelocity);
	HRESULT get_Direct3D11Device(Windows.Graphics.DirectX.Direct3D11.IDirect3DDevice* return_value);
	HRESULT get_Direct3D11BackBuffer(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface* return_value);
}

@uuid("261270e3-b696-4634-94d6-be0681643599")
@WinrtFactory("Windows.Graphics.Holographic.HolographicCameraRenderingParameters")
interface IHolographicCameraRenderingParameters2 : IInspectable
{
extern(Windows):
	HRESULT get_ReprojectionMode(Windows.Graphics.Holographic.HolographicReprojectionMode* return_value);
	HRESULT set_ReprojectionMode(Windows.Graphics.Holographic.HolographicReprojectionMode value);
	HRESULT abi_CommitDirect3D11DepthBuffer(Windows.Graphics.DirectX.Direct3D11.IDirect3DSurface value);
}

@uuid("80cdf3f7-842a-41e1-93ed-5692ab1fbb10")
@WinrtFactory("Windows.Graphics.Holographic.HolographicCameraViewportParameters")
interface IHolographicCameraViewportParameters : IInspectable
{
extern(Windows):
	HRESULT get_HiddenAreaMesh(UINT32* out___valueSize, Windows.Foundation.Numerics.Vector2** return_value);
	HRESULT get_VisibleAreaMesh(UINT32* out___valueSize, Windows.Foundation.Numerics.Vector2** return_value);
}

@uuid("9acea414-1d9f-4090-a388-90c06f6eae9c")
@WinrtFactory("Windows.Graphics.Holographic.HolographicDisplay")
interface IHolographicDisplay : IInspectable
{
extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_MaxViewportSize(Windows.Foundation.Size* return_value);
	HRESULT get_IsStereo(bool* return_value);
	HRESULT get_IsOpaque(bool* return_value);
	HRESULT get_AdapterId(Windows.Graphics.Holographic.HolographicAdapterId* return_value);
	HRESULT get_SpatialLocator(Windows.Perception.Spatial.SpatialLocator* return_value);
}

@uuid("cb374983-e7b0-4841-8355-3ae5b536e9a4")
@WinrtFactory("Windows.Graphics.Holographic.HolographicDisplay")
interface IHolographicDisplayStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Graphics.Holographic.HolographicDisplay* return_result);
}

@uuid("c6988eb6-a8b9-3054-a6eb-d624b6536375")
@WinrtFactory("Windows.Graphics.Holographic.HolographicFrame")
interface IHolographicFrame : IInspectable
{
extern(Windows):
	HRESULT get_AddedCameras(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Holographic.HolographicCamera)* return_value);
	HRESULT get_RemovedCameras(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Holographic.HolographicCamera)* return_value);
	HRESULT abi_GetRenderingParameters(Windows.Graphics.Holographic.HolographicCameraPose cameraPose, Windows.Graphics.Holographic.HolographicCameraRenderingParameters* return_value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_CurrentPrediction(Windows.Graphics.Holographic.HolographicFramePrediction* return_value);
	HRESULT abi_UpdateCurrentPrediction();
	HRESULT abi_PresentUsingCurrentPrediction(Windows.Graphics.Holographic.HolographicFramePresentResult* return_result);
	HRESULT abi_PresentUsingCurrentPredictionWithBehavior(Windows.Graphics.Holographic.HolographicFramePresentWaitBehavior waitBehavior, Windows.Graphics.Holographic.HolographicFramePresentResult* return_result);
	HRESULT abi_WaitForFrameToFinish();
}

@uuid("520f4de1-5c0a-4e79-a81e-6abe02bb2739")
@WinrtFactory("Windows.Graphics.Holographic.HolographicFramePrediction")
interface IHolographicFramePrediction : IInspectable
{
extern(Windows):
	HRESULT get_CameraPoses(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Holographic.HolographicCameraPose)* return_value);
	HRESULT get_Timestamp(Windows.Perception.PerceptionTimestamp* return_value);
}

@uuid("4380dba6-5e78-434f-807c-3433d1efe8b7")
@WinrtFactory("Windows.Graphics.Holographic.HolographicSpace")
interface IHolographicSpace : IInspectable
{
extern(Windows):
	HRESULT get_PrimaryAdapterId(Windows.Graphics.Holographic.HolographicAdapterId* return_value);
	HRESULT abi_SetDirect3D11Device(Windows.Graphics.DirectX.Direct3D11.IDirect3DDevice value);
	HRESULT add_CameraAdded(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Holographic.HolographicSpace, Windows.Graphics.Holographic.HolographicSpaceCameraAddedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_CameraAdded(EventRegistrationToken cookie);
	HRESULT add_CameraRemoved(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Holographic.HolographicSpace, Windows.Graphics.Holographic.HolographicSpaceCameraRemovedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_CameraRemoved(EventRegistrationToken cookie);
	HRESULT abi_CreateNextFrame(Windows.Graphics.Holographic.HolographicFrame* return_value);
}

@uuid("58f1da35-bbb3-3c8f-993d-6c80e7feb99f")
@WinrtFactory("Windows.Graphics.Holographic.HolographicSpaceCameraAddedEventArgs")
interface IHolographicSpaceCameraAddedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Camera(Windows.Graphics.Holographic.HolographicCamera* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("805444a8-f2ae-322e-8da9-836a0a95a4c1")
@WinrtFactory("Windows.Graphics.Holographic.HolographicSpaceCameraRemovedEventArgs")
interface IHolographicSpaceCameraRemovedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Camera(Windows.Graphics.Holographic.HolographicCamera* return_value);
}

@uuid("364e6064-c8f2-3ba1-8391-66b8489e67fd")
@WinrtFactory("Windows.Graphics.Holographic.HolographicSpace")
interface IHolographicSpaceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateForCoreWindow(Windows.UI.Core.CoreWindow window, Windows.Graphics.Holographic.HolographicSpace* return_value);
}

@uuid("0e777088-75fc-48af-8758-0652f6f07c59")
@WinrtFactory("Windows.Graphics.Holographic.HolographicSpace")
interface IHolographicSpaceStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_IsSupported(bool* return_value);
	HRESULT get_IsAvailable(bool* return_value);
	HRESULT add_IsAvailableChanged(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_IsAvailableChanged(EventRegistrationToken token);
}

interface HolographicCamera : Windows.Graphics.Holographic.IHolographicCamera, Windows.Graphics.Holographic.IHolographicCamera2
{
}

interface HolographicCameraPose : Windows.Graphics.Holographic.IHolographicCameraPose
{
}

interface HolographicCameraRenderingParameters : Windows.Graphics.Holographic.IHolographicCameraRenderingParameters, Windows.Graphics.Holographic.IHolographicCameraRenderingParameters2
{
}

interface HolographicCameraViewportParameters : Windows.Graphics.Holographic.IHolographicCameraViewportParameters
{
}

interface HolographicDisplay : Windows.Graphics.Holographic.IHolographicDisplay
{
}

interface HolographicFrame : Windows.Graphics.Holographic.IHolographicFrame
{
}

interface HolographicFramePrediction : Windows.Graphics.Holographic.IHolographicFramePrediction
{
}

interface HolographicSpace : Windows.Graphics.Holographic.IHolographicSpace
{
}

interface HolographicSpaceCameraAddedEventArgs : Windows.Graphics.Holographic.IHolographicSpaceCameraAddedEventArgs
{
}

interface HolographicSpaceCameraRemovedEventArgs : Windows.Graphics.Holographic.IHolographicSpaceCameraRemovedEventArgs
{
}

enum HolographicFramePresentResult
{
	Success = 0,
	DeviceRemoved = 1
}

enum HolographicFramePresentWaitBehavior
{
	WaitForFrameToFinish = 0,
	DoNotWaitForFrameToFinish = 1
}

enum HolographicReprojectionMode
{
	PositionAndOrientation = 0,
	OrientationOnly = 1,
	Disabled = 2
}