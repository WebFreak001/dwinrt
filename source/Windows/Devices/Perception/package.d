module Windows.Devices.Perception;

import dwinrt;

@uuid("08c03978-437a-4d97-a663-fd3195600249")
@WinrtFactory("Windows.Devices.Perception.KnownCameraIntrinsicsProperties")
interface IKnownCameraIntrinsicsPropertiesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("KnownPerceptionFrameSourceProperties may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("5df1cca2-01f8-4a87-b859-d5e5b7e1de49")
@WinrtFactory("Windows.Devices.Perception.KnownPerceptionInfraredFrameSourceProperties")
interface IKnownPerceptionInfraredFrameSourcePropertiesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionColorFrame may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.VideoMediaFrame instead.")
	HRESULT get_VideoFrame(Windows.Media.VideoFrame* return_value);
}

@uuid("8fad02d5-86f7-4d8d-b966-5a3761ba9f59")
@WinrtFactory("Windows.Devices.Perception.PerceptionColorFrameArrivedEventArgs")
interface IPerceptionColorFrameArrivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionColorFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT add_FrameArrived(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameReader*,Windows.Devices.Perception.PerceptionColorFrameArrivedEventArgs*) handler, EventRegistrationToken* return_token);
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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_AvailableChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSource*,IInspectable*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_AvailableChanged(EventRegistrationToken token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_ActiveChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSource*,IInspectable*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_ActiveChanged(EventRegistrationToken token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_PropertiesChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSource*,Windows.Devices.Perception.PerceptionFrameSourcePropertiesChangedEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_PropertiesChanged(EventRegistrationToken token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_VideoProfileChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSource*,IInspectable*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_VideoProfileChanged(EventRegistrationToken token);
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_CameraIntrinsicsChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSource*,IInspectable*) handler, EventRegistrationToken* return_token);
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
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING,IInspectable*)* return_value);
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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionColorFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("d16bf4e6-da24-442c-bbd5-55549b5b94f3")
@WinrtFactory("Windows.Devices.Perception.PerceptionColorFrameSourceAddedEventArgs")
interface IPerceptionColorFrameSourceAddedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionColorFrameSourceAddedEventArgs may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_FrameSource(Windows.Devices.Perception.PerceptionColorFrameSource* return_value);
}

@uuid("d277fa69-eb4c-42ef-ba4f-288f615c93c1")
@WinrtFactory("Windows.Devices.Perception.PerceptionColorFrameSourceRemovedEventArgs")
interface IPerceptionColorFrameSourceRemovedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionColorFrameSourceRemovedEventArgs may be unavailable after Windows Creator Update.	 Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_FrameSource(Windows.Devices.Perception.PerceptionColorFrameSource* return_value);
}

@uuid("5df3cca2-01f8-4a87-b859-d5e5b7e1de49")
@WinrtFactory("Windows.Devices.Perception.PerceptionColorFrameSource")
interface IPerceptionColorFrameSourceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_SourceAdded(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSourceWatcher*,Windows.Devices.Perception.PerceptionColorFrameSourceAddedEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_SourceAdded(EventRegistrationToken token);
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_SourceRemoved(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSourceWatcher*,Windows.Devices.Perception.PerceptionColorFrameSourceRemovedEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_SourceRemoved(EventRegistrationToken token);
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_Stopped(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSourceWatcher*,IInspectable*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_Stopped(EventRegistrationToken token);
	deprecated("PerceptionColorFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_EnumerationCompleted(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionColorFrameSourceWatcher*,IInspectable*) handler, EventRegistrationToken* return_token);
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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionControlSession may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT add_ControlLost(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionControlSession*,IInspectable*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionControlSession may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT remove_ControlLost(EventRegistrationToken token);
	deprecated("PerceptionControlSession may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT abi_TrySetPropertyAsync(HSTRING name, IInspectable value, Windows.Foundation.IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeResult)* return_result);
}

@uuid("6548ca01-86de-5be1-6582-807fcf4c95cf")
@WinrtFactory("Windows.Devices.Perception.PerceptionDepthCorrelatedCameraIntrinsics")
interface IPerceptionDepthCorrelatedCameraIntrinsics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionDepthFrame may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.DepthMediaFrame instead.")
	HRESULT get_VideoFrame(Windows.Media.VideoFrame* return_value);
}

@uuid("443d25b2-b282-4637-9173-ac978435c985")
@WinrtFactory("Windows.Devices.Perception.PerceptionDepthFrameArrivedEventArgs")
interface IPerceptionDepthFrameArrivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionDepthFrameReader may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT add_FrameArrived(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameReader*,Windows.Devices.Perception.PerceptionDepthFrameArrivedEventArgs*) handler, EventRegistrationToken* return_token);
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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_AvailableChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSource*,IInspectable*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_AvailableChanged(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_ActiveChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSource*,IInspectable*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_ActiveChanged(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_PropertiesChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSource*,Windows.Devices.Perception.PerceptionFrameSourcePropertiesChangedEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_PropertiesChanged(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_VideoProfileChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSource*,IInspectable*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_VideoProfileChanged(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_CameraIntrinsicsChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSource*,IInspectable*) handler, EventRegistrationToken* return_token);
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
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING,IInspectable*)* return_value);
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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionDepthFrameSource may be unavailable after Windows Creator Update.	 Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("93a48168-8bf8-45d2-a2f8-4ac0931cc7a6")
@WinrtFactory("Windows.Devices.Perception.PerceptionDepthFrameSourceAddedEventArgs")
interface IPerceptionDepthFrameSourceAddedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionDepthFrameSourceAddedEventArgs may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_FrameSource(Windows.Devices.Perception.PerceptionDepthFrameSource* return_value);
}

@uuid("a0c0cc4d-e96c-4d81-86dd-38b95e49c6df")
@WinrtFactory("Windows.Devices.Perception.PerceptionDepthFrameSourceRemovedEventArgs")
interface IPerceptionDepthFrameSourceRemovedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionDepthFrameSourceRemovedEventArgs may be unavailable after Windows Creator Update.	 Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_FrameSource(Windows.Devices.Perception.PerceptionDepthFrameSource* return_value);
}

@uuid("5df3cca2-01f8-4a87-b859-d5e5b7e1de48")
@WinrtFactory("Windows.Devices.Perception.PerceptionDepthFrameSource")
interface IPerceptionDepthFrameSourceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_SourceAdded(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSourceWatcher*,Windows.Devices.Perception.PerceptionDepthFrameSourceAddedEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_SourceAdded(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_SourceRemoved(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSourceWatcher*,Windows.Devices.Perception.PerceptionDepthFrameSourceRemovedEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_SourceRemoved(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_Stopped(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSourceWatcher*,IInspectable*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_Stopped(EventRegistrationToken token);
	deprecated("PerceptionDepthFrameSourceWatcher may be unavailable after Windows Creator Update.	Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_EnumerationCompleted(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionDepthFrameSourceWatcher*,IInspectable*) handler, EventRegistrationToken* return_token);
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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionInfraredFrame may be unavailable after Windows Creator Update.  Use Windows.Media.Capture.Frames.InfraredMediaFrame instead.")
	HRESULT get_VideoFrame(Windows.Media.VideoFrame* return_value);
}

@uuid("9f77fac7-b4bd-4857-9d50-be8ef075daef")
@WinrtFactory("Windows.Devices.Perception.PerceptionInfraredFrameArrivedEventArgs")
interface IPerceptionInfraredFrameArrivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionInfraredFrameReader may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameReader instead.")
	HRESULT add_FrameArrived(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameReader*,Windows.Devices.Perception.PerceptionInfraredFrameArrivedEventArgs*) handler, EventRegistrationToken* return_token);
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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_AvailableChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSource*,IInspectable*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_AvailableChanged(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_ActiveChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSource*,IInspectable*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_ActiveChanged(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_PropertiesChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSource*,Windows.Devices.Perception.PerceptionFrameSourcePropertiesChangedEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_PropertiesChanged(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_VideoProfileChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSource*,IInspectable*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT remove_VideoProfileChanged(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT add_CameraIntrinsicsChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSource*,IInspectable*) handler, EventRegistrationToken* return_token);
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
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING,IInspectable*)* return_value);
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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionInfraredFrameSource may be unavailable after Windows Creator Update.	Use Windows.Media.Capture.Frames.MediaFrameSource instead.")
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("6d334120-95ce-4660-907a-d98035aa2b7c")
@WinrtFactory("Windows.Devices.Perception.PerceptionInfraredFrameSourceAddedEventArgs")
interface IPerceptionInfraredFrameSourceAddedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionInfraredFrameSourceAddedEventArgs may be unavailable after Windows Creator Update.  Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_FrameSource(Windows.Devices.Perception.PerceptionInfraredFrameSource* return_value);
}

@uuid("ea1a8071-7a70-4a61-af94-07303853f695")
@WinrtFactory("Windows.Devices.Perception.PerceptionInfraredFrameSourceRemovedEventArgs")
interface IPerceptionInfraredFrameSourceRemovedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionInfraredFrameSourceRemovedEventArgs may be unavailable after Windows Creator Update.	Please refer to Windows.Media.Capture.Frames APIs on MSDN.")
	HRESULT get_FrameSource(Windows.Devices.Perception.PerceptionInfraredFrameSource* return_value);
}

@uuid("5df3cca2-01f8-4a87-b859-d5e5b7e1de47")
@WinrtFactory("Windows.Devices.Perception.PerceptionInfraredFrameSource")
interface IPerceptionInfraredFrameSourceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_SourceAdded(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSourceWatcher*,Windows.Devices.Perception.PerceptionInfraredFrameSourceAddedEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_SourceAdded(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_SourceRemoved(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSourceWatcher*,Windows.Devices.Perception.PerceptionInfraredFrameSourceRemovedEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_SourceRemoved(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_Stopped(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSourceWatcher*,IInspectable*) handler, EventRegistrationToken* return_token);
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT remove_Stopped(EventRegistrationToken token);
	deprecated("PerceptionInfraredFrameSourceWatcher may be unavailable after Windows Creator Update.  Use Windows.Devices.Enumeration.DeviceWatcher instead.")
	HRESULT add_EnumerationCompleted(Windows.Foundation.TypedEventHandler!(Windows.Devices.Perception.PerceptionInfraredFrameSourceWatcher*,IInspectable*) handler, EventRegistrationToken* return_token);
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
	mixin(generateRTMethods!(typeof(this)));

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

interface PerceptionColorFrame
{
}

interface PerceptionColorFrameArrivedEventArgs
{
}

interface PerceptionColorFrameReader
{
}

interface PerceptionColorFrameSource
{
}

interface PerceptionColorFrameSourceAddedEventArgs
{
}

interface PerceptionColorFrameSourceRemovedEventArgs
{
}

interface PerceptionColorFrameSourceWatcher
{
}

interface PerceptionControlSession
{
}

interface PerceptionDepthCorrelatedCameraIntrinsics
{
}

interface PerceptionDepthCorrelatedCoordinateMapper
{
}

interface PerceptionDepthFrame
{
}

interface PerceptionDepthFrameArrivedEventArgs
{
}

interface PerceptionDepthFrameReader
{
}

interface PerceptionDepthFrameSource
{
}

interface PerceptionDepthFrameSourceAddedEventArgs
{
}

interface PerceptionDepthFrameSourceRemovedEventArgs
{
}

interface PerceptionDepthFrameSourceWatcher
{
}

interface PerceptionFrameSourcePropertiesChangedEventArgs
{
}

interface PerceptionFrameSourcePropertyChangeResult
{
}

interface PerceptionInfraredFrame
{
}

interface PerceptionInfraredFrameArrivedEventArgs
{
}

interface PerceptionInfraredFrameReader
{
}

interface PerceptionInfraredFrameSource
{
}

interface PerceptionInfraredFrameSourceAddedEventArgs
{
}

interface PerceptionInfraredFrameSourceRemovedEventArgs
{
}

interface PerceptionInfraredFrameSourceWatcher
{
}

interface PerceptionVideoProfile
{
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