module Windows.Media.Devices.Core;

import dwinrt;

@uuid("0aa6ed32-6589-49da-afde-594270ca0aac")
@WinrtFactory("Windows.Media.Devices.Core.CameraIntrinsics")
interface ICameraIntrinsics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FocalLength(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT get_PrincipalPoint(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT get_RadialDistortion(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_TangentialDistortion(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT get_ImageWidth(UINT32* return_value);
	HRESULT get_ImageHeight(UINT32* return_value);
	HRESULT abi_ProjectOntoFrame(Windows.Foundation.Numerics.Vector3 coordinate, Windows.Foundation.Point* return_result);
	HRESULT abi_UnprojectAtUnitDepth(Windows.Foundation.Point pixelCoordinate, Windows.Foundation.Numerics.Vector2* return_result);
	HRESULT abi_ProjectManyOntoFrame(UINT32 __coordinatesSize, Windows.Foundation.Numerics.Vector3* coordinates, UINT32 __resultsSize, Windows.Foundation.Point* out_results);
	HRESULT abi_UnprojectPixelsAtUnitDepth(UINT32 __pixelCoordinatesSize, Windows.Foundation.Point* pixelCoordinates, UINT32 __resultsSize, Windows.Foundation.Numerics.Vector2* out_results);
}

@uuid("0cdaa447-0798-4b4d-839f-c5ec414db27a")
@WinrtFactory("Windows.Media.Devices.Core.CameraIntrinsics")
interface ICameraIntrinsics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UndistortedProjectionTransform(Windows.Foundation.Numerics.Matrix4x4* return_value);
	HRESULT abi_DistortPoint(Windows.Foundation.Point input, Windows.Foundation.Point* return_result);
	HRESULT abi_DistortPoints(UINT32 __inputsSize, Windows.Foundation.Point* inputs, UINT32 __resultsSize, Windows.Foundation.Point* out_results);
	HRESULT abi_UndistortPoint(Windows.Foundation.Point input, Windows.Foundation.Point* return_result);
	HRESULT abi_UndistortPoints(UINT32 __inputsSize, Windows.Foundation.Point* inputs, UINT32 __resultsSize, Windows.Foundation.Point* out_results);
}

@uuid("c0ddc486-2132-4a34-a659-9bfe2a055712")
@WinrtFactory("Windows.Media.Devices.Core.CameraIntrinsics")
interface ICameraIntrinsicsFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Numerics.Vector2 focalLength, Windows.Foundation.Numerics.Vector2 principalPoint, Windows.Foundation.Numerics.Vector3 radialDistortion, Windows.Foundation.Numerics.Vector2 tangentialDistortion, UINT32 imageWidth, UINT32 imageHeight, Windows.Media.Devices.Core.CameraIntrinsics* return_result);
}

@uuid("f95d89fb-8af0-4cb0-926d-696866e5046a")
@WinrtFactory("Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper")
interface IDepthCorrelatedCoordinateMapper : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_UnprojectPoint(Windows.Foundation.Point sourcePoint, Windows.Perception.Spatial.SpatialCoordinateSystem targetCoordinateSystem, Windows.Foundation.Numerics.Vector3* return_result);
	HRESULT abi_UnprojectPoints(UINT32 __sourcePointsSize, Windows.Foundation.Point* sourcePoints, Windows.Perception.Spatial.SpatialCoordinateSystem targetCoordinateSystem, UINT32 __resultsSize, Windows.Foundation.Numerics.Vector3* out_results);
	HRESULT abi_MapPoint(Windows.Foundation.Point sourcePoint, Windows.Perception.Spatial.SpatialCoordinateSystem targetCoordinateSystem, Windows.Media.Devices.Core.CameraIntrinsics targetCameraIntrinsics, Windows.Foundation.Point* return_result);
	HRESULT abi_MapPoints(UINT32 __sourcePointsSize, Windows.Foundation.Point* sourcePoints, Windows.Perception.Spatial.SpatialCoordinateSystem targetCoordinateSystem, Windows.Media.Devices.Core.CameraIntrinsics targetCameraIntrinsics, UINT32 __resultsSize, Windows.Foundation.Point* out_results);
}

@uuid("a8ffae60-4e9e-4377-a789-e24c4ae7e544")
@WinrtFactory("Windows.Media.Devices.Core.FrameControlCapabilities")
interface IFrameControlCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Exposure(Windows.Media.Devices.Core.FrameExposureCapabilities* return_value);
	HRESULT get_ExposureCompensation(Windows.Media.Devices.Core.FrameExposureCompensationCapabilities* return_value);
	HRESULT get_IsoSpeed(Windows.Media.Devices.Core.FrameIsoSpeedCapabilities* return_value);
	HRESULT get_Focus(Windows.Media.Devices.Core.FrameFocusCapabilities* return_value);
	HRESULT get_PhotoConfirmationSupported(bool* return_value);
}

@uuid("ce9b0464-4730-440f-bd3e-efe8a8f230a8")
@WinrtFactory("Windows.Media.Devices.Core.FrameControlCapabilities")
interface IFrameControlCapabilities2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Flash(Windows.Media.Devices.Core.FrameFlashCapabilities* return_value);
}

@uuid("c16459d9-baef-4052-9177-48aff2af7522")
@WinrtFactory("Windows.Media.Devices.Core.FrameController")
interface IFrameController : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ExposureControl(Windows.Media.Devices.Core.FrameExposureControl* return_value);
	HRESULT get_ExposureCompensationControl(Windows.Media.Devices.Core.FrameExposureCompensationControl* return_value);
	HRESULT get_IsoSpeedControl(Windows.Media.Devices.Core.FrameIsoSpeedControl* return_value);
	HRESULT get_FocusControl(Windows.Media.Devices.Core.FrameFocusControl* return_value);
	HRESULT get_PhotoConfirmationEnabled(Windows.Foundation.IReference!(bool)* return_value);
	HRESULT set_PhotoConfirmationEnabled(Windows.Foundation.IReference!(bool) value);
}

@uuid("00d3bc75-d87c-485b-8a09-5c358568b427")
@WinrtFactory("Windows.Media.Devices.Core.FrameController")
interface IFrameController2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FlashControl(Windows.Media.Devices.Core.FrameFlashControl* return_value);
}

@uuid("bdbe9ce3-3985-4e72-97c2-0590d61307a1")
@WinrtFactory("Windows.Media.Devices.Core.FrameExposureCapabilities")
interface IFrameExposureCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Min(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Max(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Step(Windows.Foundation.TimeSpan* return_value);
}

@uuid("b988a823-8065-41ee-b04f-722265954500")
@WinrtFactory("Windows.Media.Devices.Core.FrameExposureCompensationCapabilities")
interface IFrameExposureCompensationCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Min(FLOAT* return_value);
	HRESULT get_Max(FLOAT* return_value);
	HRESULT get_Step(FLOAT* return_value);
}

@uuid("e95896c9-f7f9-48ca-8591-a26531cb1578")
@WinrtFactory("Windows.Media.Devices.Core.FrameExposureCompensationControl")
interface IFrameExposureCompensationControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Value(Windows.Foundation.IReference!(FLOAT)* return_value);
	HRESULT set_Value(Windows.Foundation.IReference!(FLOAT) value);
}

@uuid("b1605a61-ffaf-4752-b621-f5b6f117f432")
@WinrtFactory("Windows.Media.Devices.Core.FrameExposureControl")
interface IFrameExposureControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Auto(bool* return_value);
	HRESULT set_Auto(bool value);
	HRESULT get_Value(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_Value(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
}

@uuid("bb9341a2-5ebe-4f62-8223-0e2b05bfbbd0")
@WinrtFactory("Windows.Media.Devices.Core.FrameFlashCapabilities")
interface IFrameFlashCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_RedEyeReductionSupported(bool* return_value);
	HRESULT get_PowerSupported(bool* return_value);
}

@uuid("75d5f6c7-bd45-4fab-9375-45ac04b332c2")
@WinrtFactory("Windows.Media.Devices.Core.FrameFlashControl")
interface IFrameFlashControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Mode(Windows.Media.Devices.Core.FrameFlashMode* return_value);
	HRESULT set_Mode(Windows.Media.Devices.Core.FrameFlashMode value);
	HRESULT get_Auto(bool* return_value);
	HRESULT set_Auto(bool value);
	HRESULT get_RedEyeReduction(bool* return_value);
	HRESULT set_RedEyeReduction(bool value);
	HRESULT get_PowerPercent(FLOAT* return_value);
	HRESULT set_PowerPercent(FLOAT value);
}

@uuid("7b25cd58-01c0-4065-9c40-c1a721425c1a")
@WinrtFactory("Windows.Media.Devices.Core.FrameFocusCapabilities")
interface IFrameFocusCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Min(UINT32* return_value);
	HRESULT get_Max(UINT32* return_value);
	HRESULT get_Step(UINT32* return_value);
}

@uuid("272df1d0-d912-4214-a67b-e38a8d48d8c6")
@WinrtFactory("Windows.Media.Devices.Core.FrameFocusControl")
interface IFrameFocusControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Value(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_Value(Windows.Foundation.IReference!(UINT32) value);
}

@uuid("16bdff61-6df6-4ac9-b92a-9f6ecd1ad2fa")
@WinrtFactory("Windows.Media.Devices.Core.FrameIsoSpeedCapabilities")
interface IFrameIsoSpeedCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Min(UINT32* return_value);
	HRESULT get_Max(UINT32* return_value);
	HRESULT get_Step(UINT32* return_value);
}

@uuid("1a03efed-786a-4c75-a557-7ab9a85f588c")
@WinrtFactory("Windows.Media.Devices.Core.FrameIsoSpeedControl")
interface IFrameIsoSpeedControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Auto(bool* return_value);
	HRESULT set_Auto(bool value);
	HRESULT get_Value(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_Value(Windows.Foundation.IReference!(UINT32) value);
}

@uuid("7fbff880-ed8c-43fd-a7c3-b35809e4229a")
@WinrtFactory("Windows.Media.Devices.Core.VariablePhotoSequenceController")
interface IVariablePhotoSequenceController : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_MaxPhotosPerSecond(FLOAT* return_value);
	HRESULT get_PhotosPerSecondLimit(FLOAT* return_value);
	HRESULT set_PhotosPerSecondLimit(FLOAT value);
	HRESULT abi_GetHighestConcurrentFrameRate(Windows.Media.MediaProperties.IMediaEncodingProperties captureProperties, Windows.Media.MediaProperties.MediaRatio* return_value);
	HRESULT abi_GetCurrentFrameRate(Windows.Media.MediaProperties.MediaRatio* return_value);
	HRESULT get_FrameCapabilities(Windows.Media.Devices.Core.FrameControlCapabilities* return_value);
	HRESULT get_DesiredFrameControllers(Windows.Foundation.Collections.IVector!(Windows.Media.Devices.Core.FrameController)* return_items);
}

interface CameraIntrinsics : Windows.Media.Devices.Core.ICameraIntrinsics, Windows.Media.Devices.Core.ICameraIntrinsics2
{
}

interface DepthCorrelatedCoordinateMapper : Windows.Media.Devices.Core.IDepthCorrelatedCoordinateMapper, Windows.Foundation.IClosable
{
}

interface FrameControlCapabilities : Windows.Media.Devices.Core.IFrameControlCapabilities, Windows.Media.Devices.Core.IFrameControlCapabilities2
{
}

interface FrameController : Windows.Media.Devices.Core.IFrameController, Windows.Media.Devices.Core.IFrameController2
{
}

interface FrameExposureCapabilities : Windows.Media.Devices.Core.IFrameExposureCapabilities
{
}

interface FrameExposureCompensationCapabilities : Windows.Media.Devices.Core.IFrameExposureCompensationCapabilities
{
}

interface FrameExposureCompensationControl : Windows.Media.Devices.Core.IFrameExposureCompensationControl
{
}

interface FrameExposureControl : Windows.Media.Devices.Core.IFrameExposureControl
{
}

interface FrameFlashCapabilities : Windows.Media.Devices.Core.IFrameFlashCapabilities
{
}

interface FrameFlashControl : Windows.Media.Devices.Core.IFrameFlashControl
{
}

interface FrameFocusCapabilities : Windows.Media.Devices.Core.IFrameFocusCapabilities
{
}

interface FrameFocusControl : Windows.Media.Devices.Core.IFrameFocusControl
{
}

interface FrameIsoSpeedCapabilities : Windows.Media.Devices.Core.IFrameIsoSpeedCapabilities
{
}

interface FrameIsoSpeedControl : Windows.Media.Devices.Core.IFrameIsoSpeedControl
{
}

interface VariablePhotoSequenceController : Windows.Media.Devices.Core.IVariablePhotoSequenceController
{
}

enum FrameFlashMode
{
	Disable = 0,
	Enable = 1,
	Global = 2
}