module Windows.Devices.Perception;

import dwinrt;

@uuid("08c03978-437a-4d97-a663-fd3195600249")
@WinrtFactory("Windows.Devices.Perception.KnownCameraIntrinsicsProperties")
interface IKnownCameraIntrinsicsPropertiesStatics : IInspectable
{
extern(Windows):
	deprecated("KnownCameraIntrinsicsProperties may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_FocalLength(HSTRING* return_value);
	deprecated("KnownCameraIntrinsicsProperties may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_PrincipalPoint(HSTRING* return_value);
	deprecated("KnownCameraIntrinsicsProperties may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_RadialDistortion(HSTRING* return_value);
	deprecated("KnownCameraIntrinsicsProperties may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_TangentialDistortion(HSTRING* return_value);
}

@uuid("5df1cca2-01f8-4a87-b859-d5e5b7e1de4b")
@WinrtFactory("Windows.Devices.Perception.KnownPerceptionColorFrameSourceProperties")
interface IKnownPerceptionColorFrameSourcePropertiesStatics : IInspectable
{
extern(Windows):
	deprecated("KnownPerceptionColorFrameSourceProperties may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_Exposure(HSTRING* return_value);
	deprecated("KnownPerceptionColorFrameSourceProperties may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_AutoExposureEnabled(HSTRING* return_value);
	deprecated("KnownPerceptionColorFrameSourceProperties may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_ExposureCompensation(HSTRING* return_value);
}

@uuid("5df1cca2-01f8-4a87-b859-d5e5b7e1de4a")
@WinrtFactory("Windows.Devices.Perception.KnownPerceptionDepthFrameSourceProperties")
interface IKnownPerceptionDepthFrameSourcePropertiesStatics : IInspectable
{
extern(Windows):
	deprecated("KnownPerceptionDepthFrameSourceProperties may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.DepthMediaFrame instead.")
	HRESULT get_MinDepth(HSTRING* return_value);
	deprecated("KnownPerceptionDepthFrameSourceProperties may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.DepthMediaFrame instead.")
	HRESULT get_MaxDepth(HSTRING* return_value);
}

@uuid("5df1cca2-01f8-4a87-b859-d5e5b7e1de47")
@WinrtFactory("Windows.Devices.Perception.KnownPerceptionFrameSourceProperties")
interface IKnownPerceptionFrameSourcePropertiesStatics : IInspectable
{
extern(Windows):
	deprecated("KnownPerceptionFrameSourceProperties may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceInformation instead.")
	HRESULT get_Id(HSTRING* return_value);
	deprecated("KnownPerceptionFrameSourceProperties may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceInformation instead.")
	HRESULT get_PhysicalDeviceIds(HSTRING* return_value);
	deprecated("KnownPerceptionFrameSourceProperties may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceInformation instead.")
	HRESULT get_FrameKind(HSTRING* return_value);
	deprecated("KnownPerceptionFrameSourceProperties may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceInformation instead.")
	HRESULT get_DeviceModelVersion(HSTRING* return_value);
	deprecated("KnownPerceptionFrameSourceProperties may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceInformation instead.")
	HRESULT get_EnclosureLocation(HSTRING* return_value);
}

@uuid("a9c86871-05dc-4a4d-8a5c-a4ecf26bbc46")
@WinrtFactory("Windows.Devices.Perception.KnownPerceptionFrameSourceProperties")
interface IKnownPerceptionFrameSourcePropertiesStatics2 : IInspectable
{
extern(Windows):
	deprecated("KnownPerceptionFrameSourceProperties may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("5df1cca2-01f8-4a87-b859-d5e5b7e1de49")
@WinrtFactory("Windows.Devices.Perception.KnownPerceptionInfraredFrameSourceProperties")
interface IKnownPerceptionInfraredFrameSourcePropertiesStatics : IInspectable
{
extern(Windows):
	deprecated("KnownPerceptionInfraredFrameSourceProperties.Exposure may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.ExposureControl instead.")
	HRESULT get_Exposure(HSTRING* return_value);
	deprecated("KnownPerceptionInfraredFrameSourceProperties.AutoExposureEnabled may be unavailable after Windows Creator Update.  Use Windows.Media.Devices.ExposureControl.Auto instead.")
	HRESULT get_AutoExposureEnabled(HSTRING* return_value);
	deprecated("KnownPerceptionInfraredFrameSourceProperties.ExposureCompensation may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.ExposureCompensationControl instead.")
	HRESULT get_ExposureCompensation(HSTRING* return_value);
	deprecated("KnownPerceptionInfraredFrameSourceProperties.ActiveIlluminationEnabled may be unavailable after Windows Creator Update.	 Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_ActiveIlluminationEnabled(HSTRING* return_value);
	deprecated("KnownPerceptionInfraredFrameSourceProperties.AmbientSubtractionEnabled may be unavailable after Windows Creator Update.	 Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_AmbientSubtractionEnabled(HSTRING* return_value);
	deprecated("KnownPerceptionInfraredFrameSourceProperties.StructureLightPatternEnabled may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_StructureLightPatternEnabled(HSTRING* return_value);
	deprecated("KnownPerceptionInfraredFrameSourceProperties.InterleavedIlluminationEnabled may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_InterleavedIlluminationEnabled(HSTRING* return_value);
}

@uuid("5df1cca2-01f8-4a87-b859-d5e5b7e1de48")
@WinrtFactory("Windows.Devices.Perception.KnownPerceptionVideoFrameSourceProperties")
interface IKnownPerceptionVideoFrameSourcePropertiesStatics : IInspectable
{
extern(Windows):
	deprecated("KnownPerceptionVideoFrameSourceProperties may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_VideoProfile(HSTRING* return_value);
	deprecated("KnownPerceptionVideoFrameSourceProperties may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_SupportedVideoProfiles(HSTRING* return_value);
	deprecated("KnownPerceptionVideoFrameSourceProperties may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_AvailableVideoProfiles(HSTRING* return_value);
	deprecated("KnownPerceptionVideoFrameSourceProperties may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_IsMirrored(HSTRING* return_value);
	deprecated("KnownPerceptionVideoFrameSourceProperties may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_CameraIntrinsics(HSTRING* return_value);
}

@uuid("8f08e2e7-5a76-43e3-a13a-da3d91a9ef98")
@WinrtFactory("Windows.Devices.Perception.KnownPerceptionVideoProfileProperties")
interface IKnownPerceptionVideoProfilePropertiesStatics : IInspectable
{
extern(Windows):
	deprecated("KnownPerceptionVideoProfileProperties may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_BitmapPixelFormat(HSTRING* return_value);
	deprecated("KnownPerceptionVideoProfileProperties may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_BitmapAlphaMode(HSTRING* return_value);
	deprecated("KnownPerceptionVideoProfileProperties may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_Width(HSTRING* return_value);
	deprecated("KnownPerceptionVideoProfileProperties may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_Height(HSTRING* return_value);
	deprecated("KnownPerceptionVideoProfileProperties may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_FrameDuration(HSTRING* return_value);
}

@uuid("fe621549-2cbf-4f94-9861-f817ea317747")
@WinrtFactory("Windows.Devices.Perception.PerceptionColorFrame")
interface IPerceptionColorFrame : IInspectable
{
extern(Windows):
	deprecated("PerceptionColorFrame may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.VideoMediaFrame instead.")
	HRESULT get_VideoFrame(Windows.Media.VideoFrame* return_value);
}

@uuid("8fad02d5-86f7-4d8d-b966-5a3761ba9f59")
@WinrtFactory("Windows.Devices.Perception.PerceptionColorFrameArrivedEventArgs")
interface IPerceptionColorFrameArrivedEventArgs : IInspectable
{
extern(Windows):
	deprecated("PerceptionColorFrameArrivedEventArgs may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs instead.")
	HRESULT get_RelativeTime(Windows.Foundation.TimeSpan* return_value);
	deprecated("PerceptionColorFrameArrivedEventArgs may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs instead.")
	HRESULT abi_TryOpenFrame(Windows.Devices.Perception.PerceptionColorFrame* return_result);
}

@uuid("7650f56e-b9f5-461b-83ad-f222af2aaadc")
@WinrtFactory("Windows.Devices.Perception.PerceptionColorFrameReader")
interface IPerceptionColorFrameReader : IInspectable
{
extern(Windows):
	deprecated("PerceptionColorFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT add_FrameArrived(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameReader, Windows.Devices.Perception.PerceptionColorFrameArrivedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT remove_FrameArrived(EventRegistrationToken token);
	deprecated("PerceptionColorFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT get_Source(Windows.Devices.Perception.PerceptionColorFrameSource* return_value);
	deprecated("PerceptionColorFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT get_IsPaused(bool* return_value);
	deprecated("PerceptionColorFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT set_IsPaused(bool value);
	deprecated("PerceptionColorFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT abi_TryReadLatestFrame(Windows.Devices.Perception.PerceptionColorFrame* return_result);
}

@uuid("dc6dba7c-0b58-468d-9ca1-6db04cc0477c")
@WinrtFactory("Windows.Devices.Perception.PerceptionColorFrameSource")
interface IPerceptionColorFrameSource : IInspectable
{
extern(Windows):
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_AvailableChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSource, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_AvailableChanged(EventRegistrationToken token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_ActiveChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSource, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_ActiveChanged(EventRegistrationToken token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_PropertiesChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSource, Windows.Devices.Perception.PerceptionFrameSourcePropertiesChangedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_PropertiesChanged(EventRegistrationToken token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_VideoProfileChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSource, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_VideoProfileChanged(EventRegistrationToken token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_CameraIntrinsicsChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSource, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_CameraIntrinsicsChanged(EventRegistrationToken token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_Id(HSTRING* return_value);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_DisplayName(HSTRING* return_value);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_DeviceKind(HSTRING* return_value);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_Available(bool* return_value);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_Active(bool* return_value);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_IsControlled(bool* return_value);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_SupportedVideoProfiles(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile)* return_value);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_AvailableVideoProfiles(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile)* return_value);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_VideoProfile(Windows.Devices.Perception.PerceptionVideoProfile* return_value);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_CameraIntrinsics(Windows.Media.Devices.Core.CameraIntrinsics* return_value);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_AcquireControlSession(Windows.Devices.Perception.PerceptionControlSession* return_value);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_CanControlIndependentlyFrom(HSTRING targetId, bool* return_result);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_IsCorrelatedWith(HSTRING targetId, bool* return_result);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_TryGetTransformTo(HSTRING targetId, Windows.Foundation.Numerics.Matrix4x4* out_result, bool* return_hasResult);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_TryGetDepthCorrelatedCameraIntrinsicsAsync(Windows.Devices.Perception.PerceptionDepthFrameSource correlatedDepthFrameSource, Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCameraIntrinsics)* return_result);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_TryGetDepthCorrelatedCoordinateMapperAsync(HSTRING targetSourceId, Windows.Devices.Perception.PerceptionDepthFrameSource correlatedDepthFrameSource, Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCoordinateMapper)* return_result);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_TrySetVideoProfileAsync(Windows.Devices.Perception.PerceptionControlSession controlSession, Windows.Devices.Perception.PerceptionVideoProfile profile, Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeResult)* return_result);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_OpenReader(Windows.Devices.Perception.PerceptionColorFrameReader* return_result);
}

@uuid("f88008e5-5631-45ed-ad98-8c6aa04cfb91")
@WinrtFactory("Windows.Devices.Perception.PerceptionColorFrameSource")
interface IPerceptionColorFrameSource2 : IInspectable
{
extern(Windows):
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("d16bf4e6-da24-442c-bbd5-55549b5b94f3")
@WinrtFactory("Windows.Devices.Perception.PerceptionColorFrameSourceAddedEventArgs")
interface IPerceptionColorFrameSourceAddedEventArgs : IInspectable
{
extern(Windows):
	deprecated("PerceptionColorFrameSourceAddedEventArgs may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_FrameSource(Windows.Devices.Perception.PerceptionColorFrameSource* return_value);
}

@uuid("d277fa69-eb4c-42ef-ba4f-288f615c93c1")
@WinrtFactory("Windows.Devices.Perception.PerceptionColorFrameSourceRemovedEventArgs")
interface IPerceptionColorFrameSourceRemovedEventArgs : IInspectable
{
extern(Windows):
	deprecated("PerceptionColorFrameSourceRemovedEventArgs may be unavailable after Windows Creator Update.	 Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_FrameSource(Windows.Devices.Perception.PerceptionColorFrameSource* return_value);
}

@uuid("5df3cca2-01f8-4a87-b859-d5e5b7e1de49")
@WinrtFactory("Windows.Devices.Perception.PerceptionColorFrameSource")
interface IPerceptionColorFrameSourceStatics : IInspectable
{
extern(Windows):
	deprecated("PerceptionColorFrameSource.CreateWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceInformation.CreateWatcher instead.")
	HRESULT abi_CreateWatcher(Windows.Devices.Perception.PerceptionColorFrameSourceWatcher* return_watcher);
	deprecated("PerceptionColorFrameSource.FindAllAsync may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceInformation.FindAllAsync instead.")
	HRESULT abi_FindAllAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionColorFrameSource))* return_result);
	deprecated("PerceptionColorFrameSource.FromIdAsync may be unavailable after Windows Creator Update.	 Use Windows.Devices.Enumeration.DeviceInformation.FromIdAsync instead.")
	HRESULT abi_FromIdAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionColorFrameSource)* return_result);
	deprecated("PerceptionColorFrameSource.RequestAccessAsync may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourceAccessStatus)* return_result);
}

@uuid("96bd1392-e667-40c4-89f9-1462dea6a9cc")
@WinrtFactory("Windows.Devices.Perception.PerceptionColorFrameSourceWatcher")
interface IPerceptionColorFrameSourceWatcher : IInspectable
{
extern(Windows):
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_SourceAdded(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSourceWatcher, Windows.Devices.Perception.PerceptionColorFrameSourceAddedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_SourceAdded(EventRegistrationToken token);
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_SourceRemoved(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSourceWatcher, Windows.Devices.Perception.PerceptionColorFrameSourceRemovedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_SourceRemoved(EventRegistrationToken token);
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_Stopped(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSourceWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_Stopped(EventRegistrationToken token);
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_EnumerationCompleted(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSourceWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_EnumerationCompleted(EventRegistrationToken token);
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT get_Status(Windows.Devices.Enumeration.DeviceWatcherStatus* return_value);
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT abi_Start();
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT abi_Stop();
}

@uuid("99998653-5a3d-417f-9239-f1889e548b48")
@WinrtFactory("Windows.Devices.Perception.PerceptionControlSession")
interface IPerceptionControlSession : IInspectable
{
extern(Windows):
	deprecated("PerceptionControlSession may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT add_ControlLost(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionControlSession, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionControlSession may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT remove_ControlLost(EventRegistrationToken token);
	deprecated("PerceptionControlSession may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT abi_TrySetPropertyAsync(HSTRING name, IInspectable value, Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeResult)* return_result);
}

@uuid("6548ca01-86de-5be1-6582-807fcf4c95cf")
@WinrtFactory("Windows.Devices.Perception.PerceptionDepthCorrelatedCameraIntrinsics")
interface IPerceptionDepthCorrelatedCameraIntrinsics : IInspectable
{
extern(Windows):
	deprecated("PerceptionDepthCorrelatedCameraIntrinsics may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper instead.")
	HRESULT abi_UnprojectPixelAtCorrelatedDepth(Windows.Foundation.Point pixelCoordinate, Windows.Devices.Perception.PerceptionDepthFrame depthFrame, Windows.Foundation.Numerics.Vector3* return_result);
	deprecated("PerceptionDepthCorrelatedCameraIntrinsics may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper instead.")
	HRESULT abi_UnprojectPixelsAtCorrelatedDepth(UINT32 __sourceCoordinatesSize, Windows.Foundation.Point* sourceCoordinates, Windows.Devices.Perception.PerceptionDepthFrame depthFrame, UINT32 __resultsSize, Windows.Foundation.Numerics.Vector3* out_results);
	deprecated("PerceptionDepthCorrelatedCameraIntrinsics may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper instead.")
	HRESULT abi_UnprojectRegionPixelsAtCorrelatedDepthAsync(Windows.Foundation.Rect region, Windows.Devices.Perception.PerceptionDepthFrame depthFrame, UINT32 __resultsSize, Windows.Foundation.Numerics.Vector3* out_results, Windows.Foundation.IAsyncAction* return_result);
	deprecated("PerceptionDepthCorrelatedCameraIntrinsics may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper instead.")
	HRESULT abi_UnprojectAllPixelsAtCorrelatedDepthAsync(Windows.Devices.Perception.PerceptionDepthFrame depthFrame, UINT32 __resultsSize, Windows.Foundation.Numerics.Vector3* out_results, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("5b4d9d1d-b5f6-469c-b8c2-b97a45e6863b")
@WinrtFactory("Windows.Devices.Perception.PerceptionDepthCorrelatedCoordinateMapper")
interface IPerceptionDepthCorrelatedCoordinateMapper : IInspectable
{
extern(Windows):
	deprecated("PerceptionDepthCorrelatedCoordinateMapper may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper instead.")
	HRESULT abi_MapPixelToTarget(Windows.Foundation.Point sourcePixelCoordinate, Windows.Devices.Perception.PerceptionDepthFrame depthFrame, Windows.Foundation.Point* return_result);
	deprecated("PerceptionDepthCorrelatedCoordinateMapper may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper instead.")
	HRESULT abi_MapPixelsToTarget(UINT32 __sourceCoordinatesSize, Windows.Foundation.Point* sourceCoordinates, Windows.Devices.Perception.PerceptionDepthFrame depthFrame, UINT32 __resultsSize, Windows.Foundation.Point* out_results);
	deprecated("PerceptionDepthCorrelatedCoordinateMapper may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper instead.")
	HRESULT abi_MapRegionOfPixelsToTargetAsync(Windows.Foundation.Rect region, Windows.Devices.Perception.PerceptionDepthFrame depthFrame, UINT32 __targetCoordinatesSize, Windows.Foundation.Point* out_targetCoordinates, Windows.Foundation.IAsyncAction* return_result);
	deprecated("PerceptionDepthCorrelatedCoordinateMapper may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper instead.")
	HRESULT abi_MapAllPixelsToTargetAsync(Windows.Devices.Perception.PerceptionDepthFrame depthFrame, UINT32 __targetCoordinatesSize, Windows.Foundation.Point* out_targetCoordinates, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("a37b81fc-9906-4ffd-9161-0024b360b657")
@WinrtFactory("Windows.Devices.Perception.PerceptionDepthFrame")
interface IPerceptionDepthFrame : IInspectable
{
extern(Windows):
	deprecated("PerceptionDepthFrame may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.DepthMediaFrame instead.")
	HRESULT get_VideoFrame(Windows.Media.VideoFrame* return_value);
}

@uuid("443d25b2-b282-4637-9173-ac978435c985")
@WinrtFactory("Windows.Devices.Perception.PerceptionDepthFrameArrivedEventArgs")
interface IPerceptionDepthFrameArrivedEventArgs : IInspectable
{
extern(Windows):
	deprecated("PerceptionDepthFrameArrivedEventArgs may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs instead.")
	HRESULT get_RelativeTime(Windows.Foundation.TimeSpan* return_value);
	deprecated("PerceptionDepthFrameArrivedEventArgs may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs instead.")
	HRESULT abi_TryOpenFrame(Windows.Devices.Perception.PerceptionDepthFrame* return_result);
}

@uuid("b1a3c09f-299b-4612-a4f7-270f25a096ec")
@WinrtFactory("Windows.Devices.Perception.PerceptionDepthFrameReader")
interface IPerceptionDepthFrameReader : IInspectable
{
extern(Windows):
	deprecated("PerceptionDepthFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT add_FrameArrived(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameReader, Windows.Devices.Perception.PerceptionDepthFrameArrivedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT remove_FrameArrived(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT get_Source(Windows.Devices.Perception.PerceptionDepthFrameSource* return_value);
	deprecated("PerceptionDepthFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT get_IsPaused(bool* return_value);
	deprecated("PerceptionDepthFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT set_IsPaused(bool value);
	deprecated("PerceptionDepthFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT abi_TryReadLatestFrame(Windows.Devices.Perception.PerceptionDepthFrame* return_result);
}

@uuid("79d433d6-47fb-4df1-bfc9-f01d40bd9942")
@WinrtFactory("Windows.Devices.Perception.PerceptionDepthFrameSource")
interface IPerceptionDepthFrameSource : IInspectable
{
extern(Windows):
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_AvailableChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSource, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_AvailableChanged(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_ActiveChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSource, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_ActiveChanged(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_PropertiesChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSource, Windows.Devices.Perception.PerceptionFrameSourcePropertiesChangedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_PropertiesChanged(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_VideoProfileChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSource, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_VideoProfileChanged(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_CameraIntrinsicsChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSource, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_CameraIntrinsicsChanged(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_Id(HSTRING* return_value);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_DisplayName(HSTRING* return_value);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_DeviceKind(HSTRING* return_value);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_Available(bool* return_value);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_Active(bool* return_value);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_IsControlled(bool* return_value);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_SupportedVideoProfiles(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile)* return_value);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_AvailableVideoProfiles(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile)* return_value);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_VideoProfile(Windows.Devices.Perception.PerceptionVideoProfile* return_value);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_CameraIntrinsics(Windows.Media.Devices.Core.CameraIntrinsics* return_value);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_AcquireControlSession(Windows.Devices.Perception.PerceptionControlSession* return_result);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_CanControlIndependentlyFrom(HSTRING targetId, bool* return_result);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_IsCorrelatedWith(HSTRING targetId, bool* return_result);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_TryGetTransformTo(HSTRING targetId, Windows.Foundation.Numerics.Matrix4x4* out_result, bool* return_hasResult);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_TryGetDepthCorrelatedCameraIntrinsicsAsync(Windows.Devices.Perception.PerceptionDepthFrameSource target, Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCameraIntrinsics)* return_result);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_TryGetDepthCorrelatedCoordinateMapperAsync(HSTRING targetId, Windows.Devices.Perception.PerceptionDepthFrameSource depthFrameSourceToMapWith, Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCoordinateMapper)* return_result);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_TrySetVideoProfileAsync(Windows.Devices.Perception.PerceptionControlSession controlSession, Windows.Devices.Perception.PerceptionVideoProfile profile, Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeResult)* return_result);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_OpenReader(Windows.Devices.Perception.PerceptionDepthFrameReader* return_result);
}

@uuid("e3d23d2e-6e2c-4e6d-91d9-704cd8dff79d")
@WinrtFactory("Windows.Devices.Perception.PerceptionDepthFrameSource")
interface IPerceptionDepthFrameSource2 : IInspectable
{
extern(Windows):
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("93a48168-8bf8-45d2-a2f8-4ac0931cc7a6")
@WinrtFactory("Windows.Devices.Perception.PerceptionDepthFrameSourceAddedEventArgs")
interface IPerceptionDepthFrameSourceAddedEventArgs : IInspectable
{
extern(Windows):
	deprecated("PerceptionDepthFrameSourceAddedEventArgs may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_FrameSource(Windows.Devices.Perception.PerceptionDepthFrameSource* return_value);
}

@uuid("a0c0cc4d-e96c-4d81-86dd-38b95e49c6df")
@WinrtFactory("Windows.Devices.Perception.PerceptionDepthFrameSourceRemovedEventArgs")
interface IPerceptionDepthFrameSourceRemovedEventArgs : IInspectable
{
extern(Windows):
	deprecated("PerceptionDepthFrameSourceRemovedEventArgs may be unavailable after Windows Creator Update.	 Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_FrameSource(Windows.Devices.Perception.PerceptionDepthFrameSource* return_value);
}

@uuid("5df3cca2-01f8-4a87-b859-d5e5b7e1de48")
@WinrtFactory("Windows.Devices.Perception.PerceptionDepthFrameSource")
interface IPerceptionDepthFrameSourceStatics : IInspectable
{
extern(Windows):
	deprecated("PerceptionDepthFrameSource.CreateWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceInformation.CreateWatcher instead.")
	HRESULT abi_CreateWatcher(Windows.Devices.Perception.PerceptionDepthFrameSourceWatcher* return_watcher);
	deprecated("PerceptionDepthFrameSource.FindAllAsync may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceInformation.FindAllAsync instead.")
	HRESULT abi_FindAllAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionDepthFrameSource))* return_result);
	deprecated("PerceptionDepthFrameSource.FromIdAsync may be unavailable after Windows Creator Update.	 Use Windows.Devices.Enumeration.DeviceInformation.FromIdAsync instead.")
	HRESULT abi_FromIdAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthFrameSource)* return_result);
	deprecated("PerceptionDepthFrameSource.RequestAccessAsync may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourceAccessStatus)* return_result);
}

@uuid("780e96d1-8d02-4d2b-ada4-5ba624a0eb10")
@WinrtFactory("Windows.Devices.Perception.PerceptionDepthFrameSourceWatcher")
interface IPerceptionDepthFrameSourceWatcher : IInspectable
{
extern(Windows):
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_SourceAdded(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSourceWatcher, Windows.Devices.Perception.PerceptionDepthFrameSourceAddedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_SourceAdded(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_SourceRemoved(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSourceWatcher, Windows.Devices.Perception.PerceptionDepthFrameSourceRemovedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_SourceRemoved(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_Stopped(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSourceWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_Stopped(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_EnumerationCompleted(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSourceWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_EnumerationCompleted(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT get_Status(Windows.Devices.Enumeration.DeviceWatcherStatus* return_value);
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT abi_Start();
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT abi_Stop();
}

@uuid("6c68e068-bcf1-4ecc-b891-7625d1244b6b")
@WinrtFactory("Windows.Devices.Perception.PerceptionFrameSourcePropertiesChangedEventArgs")
interface IPerceptionFrameSourcePropertiesChangedEventArgs : IInspectable
{
extern(Windows):
	deprecated("PerceptionFrameSourcePropertiesChangedEventArgs may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_CollectionChange(Windows.Foundation.Collections.CollectionChange* return_value);
	deprecated("PerceptionFrameSourcePropertiesChangedEventArgs may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_Key(HSTRING* return_value);
}

@uuid("1e33390a-3c90-4d22-b898-f42bba6418ff")
@WinrtFactory("Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeResult")
interface IPerceptionFrameSourcePropertyChangeResult : IInspectable
{
extern(Windows):
	deprecated("PerceptionFrameSourcePropertyChangeResult may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_Status(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeStatus* return_value);
	deprecated("PerceptionFrameSourcePropertyChangeResult may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_NewValue(IInspectable* return_value);
}

@uuid("b0886276-849e-4c7a-8ae6-b56064532153")
@WinrtFactory("Windows.Devices.Perception.PerceptionInfraredFrame")
interface IPerceptionInfraredFrame : IInspectable
{
extern(Windows):
	deprecated("PerceptionInfraredFrame may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.InfraredMediaFrame instead.")
	HRESULT get_VideoFrame(Windows.Media.VideoFrame* return_value);
}

@uuid("9f77fac7-b4bd-4857-9d50-be8ef075daef")
@WinrtFactory("Windows.Devices.Perception.PerceptionInfraredFrameArrivedEventArgs")
interface IPerceptionInfraredFrameArrivedEventArgs : IInspectable
{
extern(Windows):
	deprecated("PerceptionInfraredFrameArrivedEventArgs may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs instead.")
	HRESULT get_RelativeTime(Windows.Foundation.TimeSpan* return_value);
	deprecated("PerceptionInfraredFrameArrivedEventArgs may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs instead.")
	HRESULT abi_TryOpenFrame(Windows.Devices.Perception.PerceptionInfraredFrame* return_result);
}

@uuid("7960ce18-d39b-4fc8-a04a-929734c6756c")
@WinrtFactory("Windows.Devices.Perception.PerceptionInfraredFrameReader")
interface IPerceptionInfraredFrameReader : IInspectable
{
extern(Windows):
	deprecated("PerceptionInfraredFrameReader may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT add_FrameArrived(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameReader, Windows.Devices.Perception.PerceptionInfraredFrameArrivedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameReader may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT remove_FrameArrived(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameReader may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT get_Source(Windows.Devices.Perception.PerceptionInfraredFrameSource* return_value);
	deprecated("PerceptionInfraredFrameReader may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT get_IsPaused(bool* return_value);
	deprecated("PerceptionInfraredFrameReader may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT set_IsPaused(bool value);
	deprecated("PerceptionInfraredFrameReader may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT abi_TryReadLatestFrame(Windows.Devices.Perception.PerceptionInfraredFrame* return_result);
}

@uuid("55b08742-1808-494e-9e30-9d2a7be8f700")
@WinrtFactory("Windows.Devices.Perception.PerceptionInfraredFrameSource")
interface IPerceptionInfraredFrameSource : IInspectable
{
extern(Windows):
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_AvailableChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSource, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_AvailableChanged(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_ActiveChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSource, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_ActiveChanged(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_PropertiesChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSource, Windows.Devices.Perception.PerceptionFrameSourcePropertiesChangedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_PropertiesChanged(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_VideoProfileChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSource, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_VideoProfileChanged(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_CameraIntrinsicsChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSource, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_CameraIntrinsicsChanged(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_Id(HSTRING* return_value);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_DisplayName(HSTRING* return_value);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_DeviceKind(HSTRING* return_value);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_Available(bool* return_value);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_Active(bool* return_value);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_IsControlled(bool* return_value);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_SupportedVideoProfiles(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile)* return_value);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_AvailableVideoProfiles(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile)* return_value);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_VideoProfile(Windows.Devices.Perception.PerceptionVideoProfile* return_value);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_CameraIntrinsics(Windows.Media.Devices.Core.CameraIntrinsics* return_value);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_AcquireControlSession(Windows.Devices.Perception.PerceptionControlSession* return_result);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_CanControlIndependentlyFrom(HSTRING targetId, bool* return_result);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_IsCorrelatedWith(HSTRING targetId, bool* return_result);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_TryGetTransformTo(HSTRING targetId, Windows.Foundation.Numerics.Matrix4x4* out_result, bool* return_hasResult);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_TryGetDepthCorrelatedCameraIntrinsicsAsync(Windows.Devices.Perception.PerceptionDepthFrameSource target, Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCameraIntrinsics)* return_result);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_TryGetDepthCorrelatedCoordinateMapperAsync(HSTRING targetId, Windows.Devices.Perception.PerceptionDepthFrameSource depthFrameSourceToMapWith, Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCoordinateMapper)* return_result);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_TrySetVideoProfileAsync(Windows.Devices.Perception.PerceptionControlSession controlSession, Windows.Devices.Perception.PerceptionVideoProfile profile, Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeResult)* return_result);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT abi_OpenReader(Windows.Devices.Perception.PerceptionInfraredFrameReader* return_result);
}

@uuid("dcd4d798-4b0b-4300-8d85-410817faa032")
@WinrtFactory("Windows.Devices.Perception.PerceptionInfraredFrameSource")
interface IPerceptionInfraredFrameSource2 : IInspectable
{
extern(Windows):
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("6d334120-95ce-4660-907a-d98035aa2b7c")
@WinrtFactory("Windows.Devices.Perception.PerceptionInfraredFrameSourceAddedEventArgs")
interface IPerceptionInfraredFrameSourceAddedEventArgs : IInspectable
{
extern(Windows):
	deprecated("PerceptionInfraredFrameSourceAddedEventArgs may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_FrameSource(Windows.Devices.Perception.PerceptionInfraredFrameSource* return_value);
}

@uuid("ea1a8071-7a70-4a61-af94-07303853f695")
@WinrtFactory("Windows.Devices.Perception.PerceptionInfraredFrameSourceRemovedEventArgs")
interface IPerceptionInfraredFrameSourceRemovedEventArgs : IInspectable
{
extern(Windows):
	deprecated("PerceptionInfraredFrameSourceRemovedEventArgs may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_FrameSource(Windows.Devices.Perception.PerceptionInfraredFrameSource* return_value);
}

@uuid("5df3cca2-01f8-4a87-b859-d5e5b7e1de47")
@WinrtFactory("Windows.Devices.Perception.PerceptionInfraredFrameSource")
interface IPerceptionInfraredFrameSourceStatics : IInspectable
{
extern(Windows):
	deprecated("PerceptionInfraredFrameSource.CreateWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceInformation.CreateWatcher instead.")
	HRESULT abi_CreateWatcher(Windows.Devices.Perception.PerceptionInfraredFrameSourceWatcher* return_watcher);
	deprecated("PerceptionInfraredFrameSource.FindAllAsync may be unavailable after Windows Creator Update.	 Use Windows.Devices.Enumeration.DeviceInformation.FindAllAsync instead.")
	HRESULT abi_FindAllAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionInfraredFrameSource))* return_result);
	deprecated("PerceptionInfraredFrameSource.FromIdAsync may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceInformation.FromIdAsync instead.")
	HRESULT abi_FromIdAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionInfraredFrameSource)* return_result);
	deprecated("PerceptionInfraredFrameSource.RequestAccessAsync may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourceAccessStatus)* return_result);
}

@uuid("383cff99-d70c-444d-a8b0-720c2e66fe3b")
@WinrtFactory("Windows.Devices.Perception.PerceptionInfraredFrameSourceWatcher")
interface IPerceptionInfraredFrameSourceWatcher : IInspectable
{
extern(Windows):
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_SourceAdded(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSourceWatcher, Windows.Devices.Perception.PerceptionInfraredFrameSourceAddedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_SourceAdded(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_SourceRemoved(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSourceWatcher, Windows.Devices.Perception.PerceptionInfraredFrameSourceRemovedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_SourceRemoved(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_Stopped(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSourceWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_Stopped(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_EnumerationCompleted(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSourceWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_EnumerationCompleted(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT get_Status(Windows.Devices.Enumeration.DeviceWatcherStatus* return_value);
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT abi_Start();
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT abi_Stop();
}

@uuid("75763ea3-011a-470e-8225-6f05ade25648")
@WinrtFactory("Windows.Devices.Perception.PerceptionVideoProfile")
interface IPerceptionVideoProfile : IInspectable
{
extern(Windows):
	deprecated("PerceptionVideoProfile may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameFormat instead.")
	HRESULT get_BitmapPixelFormat(Windows.Graphics.Imaging.BitmapPixelFormat* return_value);
	deprecated("PerceptionVideoProfile may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameFormat instead.")
	HRESULT get_BitmapAlphaMode(Windows.Graphics.Imaging.BitmapAlphaMode* return_value);
	deprecated("PerceptionVideoProfile may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameFormat instead.")
	HRESULT get_Width(INT32* return_value);
	deprecated("PerceptionVideoProfile may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameFormat instead.")
	HRESULT get_Height(INT32* return_value);
	deprecated("PerceptionVideoProfile may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameFormat instead.")
	HRESULT get_FrameDuration(Windows.Foundation.TimeSpan* return_value);
	deprecated("PerceptionVideoProfile may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameFormat instead.")
	HRESULT abi_IsEqual(Windows.Devices.Perception.PerceptionVideoProfile other, bool* return_result);
}

interface KnownCameraIntrinsicsProperties
{
}

interface KnownPerceptionColorFrameSourceProperties
{
}

interface KnownPerceptionDepthFrameSourceProperties
{
}

interface KnownPerceptionFrameSourceProperties
{
}

interface KnownPerceptionInfraredFrameSourceProperties
{
}

interface KnownPerceptionVideoFrameSourceProperties
{
}

interface KnownPerceptionVideoProfileProperties
{
}

interface PerceptionColorFrame : Windows.Devices.Perception.IPerceptionColorFrame, Windows.Foundation.IClosable
{
extern(Windows):
	deprecated("PerceptionColorFrame may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.VideoMediaFrame instead.")
	final Windows.Media.VideoFrame VideoFrame()
	{
		Windows.Media.VideoFrame _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrame).get_VideoFrame(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface PerceptionColorFrameArrivedEventArgs : Windows.Devices.Perception.IPerceptionColorFrameArrivedEventArgs
{
extern(Windows):
	deprecated("PerceptionColorFrameArrivedEventArgs may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs instead.")
	final Windows.Foundation.TimeSpan RelativeTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameArrivedEventArgs).get_RelativeTime(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameArrivedEventArgs may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs instead.")
	final Windows.Devices.Perception.PerceptionColorFrame TryOpenFrame()
	{
		Windows.Devices.Perception.PerceptionColorFrame _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameArrivedEventArgs).abi_TryOpenFrame(&_ret));
		return _ret;
	}
}

interface PerceptionColorFrameReader : Windows.Devices.Perception.IPerceptionColorFrameReader, Windows.Foundation.IClosable
{
extern(Windows):
	deprecated("PerceptionColorFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	final Windows.Devices.Perception.PerceptionColorFrameSource Source()
	{
		Windows.Devices.Perception.PerceptionColorFrameSource _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameReader).get_Source(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	final bool IsPaused()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameReader).get_IsPaused(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	final void IsPaused(bool value)
	{
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameReader).set_IsPaused(value));
	}
	deprecated("PerceptionColorFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	final Windows.Devices.Perception.PerceptionColorFrame TryReadLatestFrame()
	{
		Windows.Devices.Perception.PerceptionColorFrame _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameReader).abi_TryReadLatestFrame(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface PerceptionColorFrameSource : Windows.Devices.Perception.IPerceptionColorFrameSource, Windows.Devices.Perception.IPerceptionColorFrameSource2
{
extern(Windows):
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).get_Id(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).get_DisplayName(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final HSTRING DeviceKind()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).get_DeviceKind(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool Available()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).get_Available(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool Active()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).get_Active(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool IsControlled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).get_IsControlled(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).get_Properties(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile) SupportedVideoProfiles()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).get_SupportedVideoProfiles(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile) AvailableVideoProfiles()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).get_AvailableVideoProfiles(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Devices.Perception.PerceptionVideoProfile VideoProfile()
	{
		Windows.Devices.Perception.PerceptionVideoProfile _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).get_VideoProfile(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Media.Devices.Core.CameraIntrinsics CameraIntrinsics()
	{
		Windows.Media.Devices.Core.CameraIntrinsics _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).get_CameraIntrinsics(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Devices.Perception.PerceptionControlSession AcquireControlSession()
	{
		Windows.Devices.Perception.PerceptionControlSession _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).abi_AcquireControlSession(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool CanControlIndependentlyFrom(HSTRING targetId)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).abi_CanControlIndependentlyFrom(targetId, &_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool IsCorrelatedWith(HSTRING targetId)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).abi_IsCorrelatedWith(targetId, &_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool TryGetTransformTo(HSTRING targetId, Windows.Foundation.Numerics.Matrix4x4* out_result)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).abi_TryGetTransformTo(targetId, out_result, &_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCameraIntrinsics) TryGetDepthCorrelatedCameraIntrinsicsAsync(Windows.Devices.Perception.PerceptionDepthFrameSource correlatedDepthFrameSource)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCameraIntrinsics) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).abi_TryGetDepthCorrelatedCameraIntrinsicsAsync(correlatedDepthFrameSource, &_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCoordinateMapper) TryGetDepthCorrelatedCoordinateMapperAsync(HSTRING targetSourceId, Windows.Devices.Perception.PerceptionDepthFrameSource correlatedDepthFrameSource)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCoordinateMapper) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).abi_TryGetDepthCorrelatedCoordinateMapperAsync(targetSourceId, correlatedDepthFrameSource, &_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeResult) TrySetVideoProfileAsync(Windows.Devices.Perception.PerceptionControlSession controlSession, Windows.Devices.Perception.PerceptionVideoProfile profile)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).abi_TrySetVideoProfileAsync(controlSession, profile, &_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Devices.Perception.PerceptionColorFrameReader OpenReader()
	{
		Windows.Devices.Perception.PerceptionColorFrameReader _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource).abi_OpenReader(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSource2).get_DeviceId(&_ret));
		return _ret;
	}
}

interface PerceptionColorFrameSourceAddedEventArgs : Windows.Devices.Perception.IPerceptionColorFrameSourceAddedEventArgs
{
extern(Windows):
	deprecated("PerceptionColorFrameSourceAddedEventArgs may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	final Windows.Devices.Perception.PerceptionColorFrameSource FrameSource()
	{
		Windows.Devices.Perception.PerceptionColorFrameSource _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSourceAddedEventArgs).get_FrameSource(&_ret));
		return _ret;
	}
}

interface PerceptionColorFrameSourceRemovedEventArgs : Windows.Devices.Perception.IPerceptionColorFrameSourceRemovedEventArgs
{
extern(Windows):
	deprecated("PerceptionColorFrameSourceRemovedEventArgs may be unavailable after Windows Creator Update.	 Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	final Windows.Devices.Perception.PerceptionColorFrameSource FrameSource()
	{
		Windows.Devices.Perception.PerceptionColorFrameSource _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSourceRemovedEventArgs).get_FrameSource(&_ret));
		return _ret;
	}
}

interface PerceptionColorFrameSourceWatcher : Windows.Devices.Perception.IPerceptionColorFrameSourceWatcher
{
extern(Windows):
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	final Windows.Devices.Enumeration.DeviceWatcherStatus Status()
	{
		Windows.Devices.Enumeration.DeviceWatcherStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSourceWatcher).get_Status(&_ret));
		return _ret;
	}
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	final void Start()
	{
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSourceWatcher).abi_Start());
	}
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionColorFrameSourceWatcher).abi_Stop());
	}
}

interface PerceptionControlSession : Windows.Devices.Perception.IPerceptionControlSession, Windows.Foundation.IClosable
{
extern(Windows):
	deprecated("PerceptionControlSession may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeResult) TrySetPropertyAsync(HSTRING name, IInspectable value)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionControlSession).abi_TrySetPropertyAsync(name, value, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface PerceptionDepthCorrelatedCameraIntrinsics : Windows.Devices.Perception.IPerceptionDepthCorrelatedCameraIntrinsics
{
extern(Windows):
	deprecated("PerceptionDepthCorrelatedCameraIntrinsics may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper instead.")
	final Windows.Foundation.Numerics.Vector3 UnprojectPixelAtCorrelatedDepth(Windows.Foundation.Point pixelCoordinate, Windows.Devices.Perception.PerceptionDepthFrame depthFrame)
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthCorrelatedCameraIntrinsics).abi_UnprojectPixelAtCorrelatedDepth(pixelCoordinate, depthFrame, &_ret));
		return _ret;
	}
	deprecated("PerceptionDepthCorrelatedCameraIntrinsics may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper instead.")
	final void UnprojectPixelsAtCorrelatedDepth(UINT32 __sourceCoordinatesSize, Windows.Foundation.Point* sourceCoordinates, Windows.Devices.Perception.PerceptionDepthFrame depthFrame, UINT32 __resultsSize, Windows.Foundation.Numerics.Vector3* out_results)
	{
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthCorrelatedCameraIntrinsics).abi_UnprojectPixelsAtCorrelatedDepth(__sourceCoordinatesSize, sourceCoordinates, depthFrame, __resultsSize, out_results));
	}
	deprecated("PerceptionDepthCorrelatedCameraIntrinsics may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper instead.")
	final Windows.Foundation.IAsyncAction UnprojectRegionPixelsAtCorrelatedDepthAsync(Windows.Foundation.Rect region, Windows.Devices.Perception.PerceptionDepthFrame depthFrame, UINT32 __resultsSize, Windows.Foundation.Numerics.Vector3* out_results)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthCorrelatedCameraIntrinsics).abi_UnprojectRegionPixelsAtCorrelatedDepthAsync(region, depthFrame, __resultsSize, out_results, &_ret));
		return _ret;
	}
	deprecated("PerceptionDepthCorrelatedCameraIntrinsics may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper instead.")
	final Windows.Foundation.IAsyncAction UnprojectAllPixelsAtCorrelatedDepthAsync(Windows.Devices.Perception.PerceptionDepthFrame depthFrame, UINT32 __resultsSize, Windows.Foundation.Numerics.Vector3* out_results)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthCorrelatedCameraIntrinsics).abi_UnprojectAllPixelsAtCorrelatedDepthAsync(depthFrame, __resultsSize, out_results, &_ret));
		return _ret;
	}
}

interface PerceptionDepthCorrelatedCoordinateMapper : Windows.Devices.Perception.IPerceptionDepthCorrelatedCoordinateMapper
{
extern(Windows):
	deprecated("PerceptionDepthCorrelatedCoordinateMapper may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper instead.")
	final Windows.Foundation.Point MapPixelToTarget(Windows.Foundation.Point sourcePixelCoordinate, Windows.Devices.Perception.PerceptionDepthFrame depthFrame)
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthCorrelatedCoordinateMapper).abi_MapPixelToTarget(sourcePixelCoordinate, depthFrame, &_ret));
		return _ret;
	}
	deprecated("PerceptionDepthCorrelatedCoordinateMapper may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper instead.")
	final void MapPixelsToTarget(UINT32 __sourceCoordinatesSize, Windows.Foundation.Point* sourceCoordinates, Windows.Devices.Perception.PerceptionDepthFrame depthFrame, UINT32 __resultsSize, Windows.Foundation.Point* out_results)
	{
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthCorrelatedCoordinateMapper).abi_MapPixelsToTarget(__sourceCoordinatesSize, sourceCoordinates, depthFrame, __resultsSize, out_results));
	}
	deprecated("PerceptionDepthCorrelatedCoordinateMapper may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper instead.")
	final Windows.Foundation.IAsyncAction MapRegionOfPixelsToTargetAsync(Windows.Foundation.Rect region, Windows.Devices.Perception.PerceptionDepthFrame depthFrame, UINT32 __targetCoordinatesSize, Windows.Foundation.Point* out_targetCoordinates)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthCorrelatedCoordinateMapper).abi_MapRegionOfPixelsToTargetAsync(region, depthFrame, __targetCoordinatesSize, out_targetCoordinates, &_ret));
		return _ret;
	}
	deprecated("PerceptionDepthCorrelatedCoordinateMapper may be unavailable after Windows Creator Update.	Use Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper instead.")
	final Windows.Foundation.IAsyncAction MapAllPixelsToTargetAsync(Windows.Devices.Perception.PerceptionDepthFrame depthFrame, UINT32 __targetCoordinatesSize, Windows.Foundation.Point* out_targetCoordinates)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthCorrelatedCoordinateMapper).abi_MapAllPixelsToTargetAsync(depthFrame, __targetCoordinatesSize, out_targetCoordinates, &_ret));
		return _ret;
	}
}

interface PerceptionDepthFrame : Windows.Devices.Perception.IPerceptionDepthFrame, Windows.Foundation.IClosable
{
extern(Windows):
	deprecated("PerceptionDepthFrame may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.DepthMediaFrame instead.")
	final Windows.Media.VideoFrame VideoFrame()
	{
		Windows.Media.VideoFrame _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrame).get_VideoFrame(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface PerceptionDepthFrameArrivedEventArgs : Windows.Devices.Perception.IPerceptionDepthFrameArrivedEventArgs
{
extern(Windows):
	deprecated("PerceptionDepthFrameArrivedEventArgs may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs instead.")
	final Windows.Foundation.TimeSpan RelativeTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameArrivedEventArgs).get_RelativeTime(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameArrivedEventArgs may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs instead.")
	final Windows.Devices.Perception.PerceptionDepthFrame TryOpenFrame()
	{
		Windows.Devices.Perception.PerceptionDepthFrame _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameArrivedEventArgs).abi_TryOpenFrame(&_ret));
		return _ret;
	}
}

interface PerceptionDepthFrameReader : Windows.Devices.Perception.IPerceptionDepthFrameReader, Windows.Foundation.IClosable
{
extern(Windows):
	deprecated("PerceptionDepthFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	final Windows.Devices.Perception.PerceptionDepthFrameSource Source()
	{
		Windows.Devices.Perception.PerceptionDepthFrameSource _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameReader).get_Source(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	final bool IsPaused()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameReader).get_IsPaused(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	final void IsPaused(bool value)
	{
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameReader).set_IsPaused(value));
	}
	deprecated("PerceptionDepthFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	final Windows.Devices.Perception.PerceptionDepthFrame TryReadLatestFrame()
	{
		Windows.Devices.Perception.PerceptionDepthFrame _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameReader).abi_TryReadLatestFrame(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface PerceptionDepthFrameSource : Windows.Devices.Perception.IPerceptionDepthFrameSource, Windows.Devices.Perception.IPerceptionDepthFrameSource2
{
extern(Windows):
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).get_Id(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).get_DisplayName(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final HSTRING DeviceKind()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).get_DeviceKind(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool Available()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).get_Available(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool Active()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).get_Active(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool IsControlled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).get_IsControlled(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).get_Properties(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile) SupportedVideoProfiles()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).get_SupportedVideoProfiles(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile) AvailableVideoProfiles()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).get_AvailableVideoProfiles(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Devices.Perception.PerceptionVideoProfile VideoProfile()
	{
		Windows.Devices.Perception.PerceptionVideoProfile _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).get_VideoProfile(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Media.Devices.Core.CameraIntrinsics CameraIntrinsics()
	{
		Windows.Media.Devices.Core.CameraIntrinsics _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).get_CameraIntrinsics(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Devices.Perception.PerceptionControlSession AcquireControlSession()
	{
		Windows.Devices.Perception.PerceptionControlSession _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).abi_AcquireControlSession(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool CanControlIndependentlyFrom(HSTRING targetId)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).abi_CanControlIndependentlyFrom(targetId, &_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool IsCorrelatedWith(HSTRING targetId)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).abi_IsCorrelatedWith(targetId, &_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool TryGetTransformTo(HSTRING targetId, Windows.Foundation.Numerics.Matrix4x4* out_result)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).abi_TryGetTransformTo(targetId, out_result, &_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCameraIntrinsics) TryGetDepthCorrelatedCameraIntrinsicsAsync(Windows.Devices.Perception.PerceptionDepthFrameSource target)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCameraIntrinsics) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).abi_TryGetDepthCorrelatedCameraIntrinsicsAsync(target, &_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCoordinateMapper) TryGetDepthCorrelatedCoordinateMapperAsync(HSTRING targetId, Windows.Devices.Perception.PerceptionDepthFrameSource depthFrameSourceToMapWith)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCoordinateMapper) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).abi_TryGetDepthCorrelatedCoordinateMapperAsync(targetId, depthFrameSourceToMapWith, &_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeResult) TrySetVideoProfileAsync(Windows.Devices.Perception.PerceptionControlSession controlSession, Windows.Devices.Perception.PerceptionVideoProfile profile)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).abi_TrySetVideoProfileAsync(controlSession, profile, &_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Devices.Perception.PerceptionDepthFrameReader OpenReader()
	{
		Windows.Devices.Perception.PerceptionDepthFrameReader _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource).abi_OpenReader(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSource2).get_DeviceId(&_ret));
		return _ret;
	}
}

interface PerceptionDepthFrameSourceAddedEventArgs : Windows.Devices.Perception.IPerceptionDepthFrameSourceAddedEventArgs
{
extern(Windows):
	deprecated("PerceptionDepthFrameSourceAddedEventArgs may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	final Windows.Devices.Perception.PerceptionDepthFrameSource FrameSource()
	{
		Windows.Devices.Perception.PerceptionDepthFrameSource _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSourceAddedEventArgs).get_FrameSource(&_ret));
		return _ret;
	}
}

interface PerceptionDepthFrameSourceRemovedEventArgs : Windows.Devices.Perception.IPerceptionDepthFrameSourceRemovedEventArgs
{
extern(Windows):
	deprecated("PerceptionDepthFrameSourceRemovedEventArgs may be unavailable after Windows Creator Update.	 Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	final Windows.Devices.Perception.PerceptionDepthFrameSource FrameSource()
	{
		Windows.Devices.Perception.PerceptionDepthFrameSource _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSourceRemovedEventArgs).get_FrameSource(&_ret));
		return _ret;
	}
}

interface PerceptionDepthFrameSourceWatcher : Windows.Devices.Perception.IPerceptionDepthFrameSourceWatcher
{
extern(Windows):
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	final Windows.Devices.Enumeration.DeviceWatcherStatus Status()
	{
		Windows.Devices.Enumeration.DeviceWatcherStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSourceWatcher).get_Status(&_ret));
		return _ret;
	}
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	final void Start()
	{
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSourceWatcher).abi_Start());
	}
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionDepthFrameSourceWatcher).abi_Stop());
	}
}

interface PerceptionFrameSourcePropertiesChangedEventArgs : Windows.Devices.Perception.IPerceptionFrameSourcePropertiesChangedEventArgs
{
extern(Windows):
	deprecated("PerceptionFrameSourcePropertiesChangedEventArgs may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	final Windows.Foundation.Collections.CollectionChange CollectionChange()
	{
		Windows.Foundation.Collections.CollectionChange _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionFrameSourcePropertiesChangedEventArgs).get_CollectionChange(&_ret));
		return _ret;
	}
	deprecated("PerceptionFrameSourcePropertiesChangedEventArgs may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	final HSTRING Key()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionFrameSourcePropertiesChangedEventArgs).get_Key(&_ret));
		return _ret;
	}
}

interface PerceptionFrameSourcePropertyChangeResult : Windows.Devices.Perception.IPerceptionFrameSourcePropertyChangeResult
{
extern(Windows):
	deprecated("PerceptionFrameSourcePropertyChangeResult may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	final Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeStatus Status()
	{
		Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionFrameSourcePropertyChangeResult).get_Status(&_ret));
		return _ret;
	}
	deprecated("PerceptionFrameSourcePropertyChangeResult may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	final IInspectable NewValue()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionFrameSourcePropertyChangeResult).get_NewValue(&_ret));
		return _ret;
	}
}

interface PerceptionInfraredFrame : Windows.Devices.Perception.IPerceptionInfraredFrame, Windows.Foundation.IClosable
{
extern(Windows):
	deprecated("PerceptionInfraredFrame may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.InfraredMediaFrame instead.")
	final Windows.Media.VideoFrame VideoFrame()
	{
		Windows.Media.VideoFrame _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrame).get_VideoFrame(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface PerceptionInfraredFrameArrivedEventArgs : Windows.Devices.Perception.IPerceptionInfraredFrameArrivedEventArgs
{
extern(Windows):
	deprecated("PerceptionInfraredFrameArrivedEventArgs may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs instead.")
	final Windows.Foundation.TimeSpan RelativeTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameArrivedEventArgs).get_RelativeTime(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameArrivedEventArgs may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.MediaFrameArrivedEventArgs instead.")
	final Windows.Devices.Perception.PerceptionInfraredFrame TryOpenFrame()
	{
		Windows.Devices.Perception.PerceptionInfraredFrame _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameArrivedEventArgs).abi_TryOpenFrame(&_ret));
		return _ret;
	}
}

interface PerceptionInfraredFrameReader : Windows.Devices.Perception.IPerceptionInfraredFrameReader, Windows.Foundation.IClosable
{
extern(Windows):
	deprecated("PerceptionInfraredFrameReader may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	final Windows.Devices.Perception.PerceptionInfraredFrameSource Source()
	{
		Windows.Devices.Perception.PerceptionInfraredFrameSource _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameReader).get_Source(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameReader may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	final bool IsPaused()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameReader).get_IsPaused(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameReader may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	final void IsPaused(bool value)
	{
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameReader).set_IsPaused(value));
	}
	deprecated("PerceptionInfraredFrameReader may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	final Windows.Devices.Perception.PerceptionInfraredFrame TryReadLatestFrame()
	{
		Windows.Devices.Perception.PerceptionInfraredFrame _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameReader).abi_TryReadLatestFrame(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface PerceptionInfraredFrameSource : Windows.Devices.Perception.IPerceptionInfraredFrameSource, Windows.Devices.Perception.IPerceptionInfraredFrameSource2
{
extern(Windows):
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).get_Id(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).get_DisplayName(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final HSTRING DeviceKind()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).get_DeviceKind(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool Available()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).get_Available(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool Active()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).get_Active(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool IsControlled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).get_IsControlled(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).get_Properties(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile) SupportedVideoProfiles()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).get_SupportedVideoProfiles(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile) AvailableVideoProfiles()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.PerceptionVideoProfile) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).get_AvailableVideoProfiles(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Devices.Perception.PerceptionVideoProfile VideoProfile()
	{
		Windows.Devices.Perception.PerceptionVideoProfile _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).get_VideoProfile(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Media.Devices.Core.CameraIntrinsics CameraIntrinsics()
	{
		Windows.Media.Devices.Core.CameraIntrinsics _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).get_CameraIntrinsics(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Devices.Perception.PerceptionControlSession AcquireControlSession()
	{
		Windows.Devices.Perception.PerceptionControlSession _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).abi_AcquireControlSession(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool CanControlIndependentlyFrom(HSTRING targetId)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).abi_CanControlIndependentlyFrom(targetId, &_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool IsCorrelatedWith(HSTRING targetId)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).abi_IsCorrelatedWith(targetId, &_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final bool TryGetTransformTo(HSTRING targetId, Windows.Foundation.Numerics.Matrix4x4* out_result)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).abi_TryGetTransformTo(targetId, out_result, &_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCameraIntrinsics) TryGetDepthCorrelatedCameraIntrinsicsAsync(Windows.Devices.Perception.PerceptionDepthFrameSource target)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCameraIntrinsics) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).abi_TryGetDepthCorrelatedCameraIntrinsicsAsync(target, &_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCoordinateMapper) TryGetDepthCorrelatedCoordinateMapperAsync(HSTRING targetId, Windows.Devices.Perception.PerceptionDepthFrameSource depthFrameSourceToMapWith)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionDepthCorrelatedCoordinateMapper) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).abi_TryGetDepthCorrelatedCoordinateMapperAsync(targetId, depthFrameSourceToMapWith, &_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeResult) TrySetVideoProfileAsync(Windows.Devices.Perception.PerceptionControlSession controlSession, Windows.Devices.Perception.PerceptionVideoProfile profile)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).abi_TrySetVideoProfileAsync(controlSession, profile, &_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final Windows.Devices.Perception.PerceptionInfraredFrameReader OpenReader()
	{
		Windows.Devices.Perception.PerceptionInfraredFrameReader _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource).abi_OpenReader(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSource2).get_DeviceId(&_ret));
		return _ret;
	}
}

interface PerceptionInfraredFrameSourceAddedEventArgs : Windows.Devices.Perception.IPerceptionInfraredFrameSourceAddedEventArgs
{
extern(Windows):
	deprecated("PerceptionInfraredFrameSourceAddedEventArgs may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	final Windows.Devices.Perception.PerceptionInfraredFrameSource FrameSource()
	{
		Windows.Devices.Perception.PerceptionInfraredFrameSource _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSourceAddedEventArgs).get_FrameSource(&_ret));
		return _ret;
	}
}

interface PerceptionInfraredFrameSourceRemovedEventArgs : Windows.Devices.Perception.IPerceptionInfraredFrameSourceRemovedEventArgs
{
extern(Windows):
	deprecated("PerceptionInfraredFrameSourceRemovedEventArgs may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	final Windows.Devices.Perception.PerceptionInfraredFrameSource FrameSource()
	{
		Windows.Devices.Perception.PerceptionInfraredFrameSource _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSourceRemovedEventArgs).get_FrameSource(&_ret));
		return _ret;
	}
}

interface PerceptionInfraredFrameSourceWatcher : Windows.Devices.Perception.IPerceptionInfraredFrameSourceWatcher
{
extern(Windows):
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	final Windows.Devices.Enumeration.DeviceWatcherStatus Status()
	{
		Windows.Devices.Enumeration.DeviceWatcherStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSourceWatcher).get_Status(&_ret));
		return _ret;
	}
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	final void Start()
	{
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSourceWatcher).abi_Start());
	}
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionInfraredFrameSourceWatcher).abi_Stop());
	}
}

interface PerceptionVideoProfile : Windows.Devices.Perception.IPerceptionVideoProfile
{
extern(Windows):
	deprecated("PerceptionVideoProfile may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameFormat instead.")
	final Windows.Graphics.Imaging.BitmapPixelFormat BitmapPixelFormat()
	{
		Windows.Graphics.Imaging.BitmapPixelFormat _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionVideoProfile).get_BitmapPixelFormat(&_ret));
		return _ret;
	}
	deprecated("PerceptionVideoProfile may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameFormat instead.")
	final Windows.Graphics.Imaging.BitmapAlphaMode BitmapAlphaMode()
	{
		Windows.Graphics.Imaging.BitmapAlphaMode _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionVideoProfile).get_BitmapAlphaMode(&_ret));
		return _ret;
	}
	deprecated("PerceptionVideoProfile may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameFormat instead.")
	final INT32 Width()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionVideoProfile).get_Width(&_ret));
		return _ret;
	}
	deprecated("PerceptionVideoProfile may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameFormat instead.")
	final INT32 Height()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionVideoProfile).get_Height(&_ret));
		return _ret;
	}
	deprecated("PerceptionVideoProfile may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameFormat instead.")
	final Windows.Foundation.TimeSpan FrameDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionVideoProfile).get_FrameDuration(&_ret));
		return _ret;
	}
	deprecated("PerceptionVideoProfile may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameFormat instead.")
	final bool IsEqual(Windows.Devices.Perception.PerceptionVideoProfile other)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Perception.IPerceptionVideoProfile).abi_IsEqual(other, &_ret));
		return _ret;
	}
}

enum PerceptionFrameSourceAccessStatus
{
	Unspecified = 0,
	Allowed = 1,
	DeniedByUser = 2,
	DeniedBySystem = 3
}

enum PerceptionFrameSourcePropertyChangeStatus
{
	Unknown = 0,
	Accepted = 1,
	LostControl = 2,
	PropertyNotSupported = 3,
	PropertyReadOnly = 4,
	ValueOutOfRange = 5
}