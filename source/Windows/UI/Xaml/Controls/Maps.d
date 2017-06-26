module Windows.UI.Xaml.Controls.Maps;

import dwinrt;

struct MapZoomLevelRange
{
	double Min;
	double Max;
}

@uuid("65da384a-2db1-4be1-b155-3d0c9ecf4799")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.CustomMapTileDataSource")
interface ICustomMapTileDataSource : IInspectable
{
extern(Windows):
	HRESULT add_BitmapRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.CustomMapTileDataSource, Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequestedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_BitmapRequested(EventRegistrationToken token);
}

@uuid("c8477947-c955-4f22-9444-a1d8d744af11")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.CustomMapTileDataSource")
interface ICustomMapTileDataSourceFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Maps.CustomMapTileDataSource* return_instance);
}

@uuid("9d03cb5c-fd79-4795-87be-7e54ca0b37d0")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.HttpMapTileDataSource")
interface IHttpMapTileDataSource : IInspectable
{
extern(Windows):
	HRESULT get_UriFormatString(HSTRING* return_value);
	HRESULT set_UriFormatString(HSTRING value);
	HRESULT get_AdditionalRequestHeaders(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
	HRESULT get_AllowCaching(bool* return_value);
	HRESULT set_AllowCaching(bool value);
	HRESULT add_UriRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.HttpMapTileDataSource, Windows.UI.Xaml.Controls.Maps.MapTileUriRequestedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_UriRequested(EventRegistrationToken token);
}

@uuid("53b4b107-84dc-4291-89f8-6d0bb612a055")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.HttpMapTileDataSource")
interface IHttpMapTileDataSourceFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Maps.HttpMapTileDataSource* return_instance);
	HRESULT abi_CreateInstanceWithUriFormatString(HSTRING uriFormatString, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Maps.HttpMapTileDataSource* return_instance);
}

@uuid("616257b5-9108-4f12-8bf4-bb3c8f6274e5")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.LocalMapTileDataSource")
interface ILocalMapTileDataSource : IInspectable
{
extern(Windows):
	HRESULT get_UriFormatString(HSTRING* return_value);
	HRESULT set_UriFormatString(HSTRING value);
	HRESULT add_UriRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.LocalMapTileDataSource, Windows.UI.Xaml.Controls.Maps.MapTileUriRequestedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_UriRequested(EventRegistrationToken token);
}

@uuid("c5cfe9fc-72ac-4839-8a0d-011f24693c79")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.LocalMapTileDataSource")
interface ILocalMapTileDataSourceFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Maps.LocalMapTileDataSource* return_instance);
	HRESULT abi_CreateInstanceWithUriFormatString(HSTRING uriFormatString, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Maps.LocalMapTileDataSource* return_instance);
}

@uuid("daa080da-b7f4-422c-a618-bbaa7c1d814c")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapActualCameraChangedEventArgs")
interface IMapActualCameraChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Camera(Windows.UI.Xaml.Controls.Maps.MapCamera* return_value);
}

@uuid("7ba4c7e5-10dc-455a-9d04-1d72fb6d9b93")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapActualCameraChangedEventArgs")
interface IMapActualCameraChangedEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_ChangeReason(Windows.UI.Xaml.Controls.Maps.MapCameraChangeReason* return_value);
}

@uuid("6b0dbed6-93f7-4682-8de5-a47a1cc7a945")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapActualCameraChangingEventArgs")
interface IMapActualCameraChangingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Camera(Windows.UI.Xaml.Controls.Maps.MapCamera* return_value);
}

@uuid("f2867897-40ac-4e8a-a927-510f3846a47e")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapActualCameraChangingEventArgs")
interface IMapActualCameraChangingEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_ChangeReason(Windows.UI.Xaml.Controls.Maps.MapCameraChangeReason* return_value);
}

@uuid("1694259d-0ae2-4f42-a02e-292ca835d39d")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapBillboard")
interface IMapBillboard : IInspectable
{
extern(Windows):
	HRESULT get_Location(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT set_Location(Windows.Devices.Geolocation.Geopoint value);
	HRESULT get_NormalizedAnchorPoint(Windows.Foundation.Point* return_value);
	HRESULT set_NormalizedAnchorPoint(Windows.Foundation.Point value);
	HRESULT get_Image(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_Image(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_CollisionBehaviorDesired(Windows.UI.Xaml.Controls.Maps.MapElementCollisionBehavior* return_value);
	HRESULT set_CollisionBehaviorDesired(Windows.UI.Xaml.Controls.Maps.MapElementCollisionBehavior value);
	HRESULT get_ReferenceCamera(Windows.UI.Xaml.Controls.Maps.MapCamera* return_value);
}

@uuid("be45a4c5-8f09-4b86-ae28-783740eb8b31")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapBillboard")
interface IMapBillboardFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceFromCamera(Windows.UI.Xaml.Controls.Maps.MapCamera camera, Windows.UI.Xaml.Controls.Maps.MapBillboard* return_instance);
}

@uuid("fdf839fe-e1f7-4fb0-8887-7da68c647333")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapBillboard")
interface IMapBillboardStatics : IInspectable
{
extern(Windows):
	HRESULT get_LocationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_NormalizedAnchorPointProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CollisionBehaviorDesiredProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("53a6b623-c0f8-4d8b-ad1e-a59598ea840b")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapCamera")
interface IMapCamera : IInspectable
{
extern(Windows):
	HRESULT get_Location(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT set_Location(Windows.Devices.Geolocation.Geopoint value);
	HRESULT get_Heading(double* return_value);
	HRESULT set_Heading(double value);
	HRESULT get_Pitch(double* return_value);
	HRESULT set_Pitch(double value);
	HRESULT get_Roll(double* return_value);
	HRESULT set_Roll(double value);
	HRESULT get_FieldOfView(double* return_value);
	HRESULT set_FieldOfView(double value);
}

@uuid("ea3b0f16-83af-4ace-8e71-10ad9f1e9e7f")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapCamera")
interface IMapCameraFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithLocation(Windows.Devices.Geolocation.Geopoint location, Windows.UI.Xaml.Controls.Maps.MapCamera* return_instance);
	HRESULT abi_CreateInstanceWithLocationAndHeading(Windows.Devices.Geolocation.Geopoint location, double headingInDegrees, Windows.UI.Xaml.Controls.Maps.MapCamera* return_instance);
	HRESULT abi_CreateInstanceWithLocationHeadingAndPitch(Windows.Devices.Geolocation.Geopoint location, double headingInDegrees, double pitchInDegrees, Windows.UI.Xaml.Controls.Maps.MapCamera* return_instance);
	HRESULT abi_CreateInstanceWithLocationHeadingPitchRollAndFieldOfView(Windows.Devices.Geolocation.Geopoint location, double headingInDegrees, double pitchInDegrees, double rollInDegrees, double fieldOfViewInDegrees, Windows.UI.Xaml.Controls.Maps.MapCamera* return_instance);
}

@uuid("fdd1b423-c961-4df2-bb57-82ee0f0bb591")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapContextRequestedEventArgs")
interface IMapContextRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_Location(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_MapElements(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Controls.Maps.MapElement)* return_value);
}

@uuid("42d0b851-5256-4747-9e6c-0d11e966141e")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControl")
interface IMapControl : IInspectable
{
extern(Windows):
	HRESULT get_Center(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT set_Center(Windows.Devices.Geolocation.Geopoint value);
	HRESULT get_Children(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject)* return_value);
	HRESULT get_ColorScheme(Windows.UI.Xaml.Controls.Maps.MapColorScheme* return_value);
	HRESULT set_ColorScheme(Windows.UI.Xaml.Controls.Maps.MapColorScheme value);
	HRESULT get_DesiredPitch(double* return_value);
	HRESULT set_DesiredPitch(double value);
	HRESULT get_Heading(double* return_value);
	HRESULT set_Heading(double value);
	HRESULT get_LandmarksVisible(bool* return_value);
	HRESULT set_LandmarksVisible(bool value);
	HRESULT get_LoadingStatus(Windows.UI.Xaml.Controls.Maps.MapLoadingStatus* return_value);
	HRESULT get_MapServiceToken(HSTRING* return_value);
	HRESULT set_MapServiceToken(HSTRING value);
	HRESULT get_MaxZoomLevel(double* return_value);
	HRESULT get_MinZoomLevel(double* return_value);
	HRESULT get_PedestrianFeaturesVisible(bool* return_value);
	HRESULT set_PedestrianFeaturesVisible(bool value);
	HRESULT get_Pitch(double* return_value);
	HRESULT get_Style(Windows.UI.Xaml.Controls.Maps.MapStyle* return_value);
	HRESULT set_Style(Windows.UI.Xaml.Controls.Maps.MapStyle value);
	HRESULT get_TrafficFlowVisible(bool* return_value);
	HRESULT set_TrafficFlowVisible(bool value);
	HRESULT get_TransformOrigin(Windows.Foundation.Point* return_value);
	HRESULT set_TransformOrigin(Windows.Foundation.Point value);
	HRESULT get_WatermarkMode(Windows.UI.Xaml.Controls.Maps.MapWatermarkMode* return_value);
	HRESULT set_WatermarkMode(Windows.UI.Xaml.Controls.Maps.MapWatermarkMode value);
	HRESULT get_ZoomLevel(double* return_value);
	HRESULT set_ZoomLevel(double value);
	HRESULT get_MapElements(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.Maps.MapElement)* return_value);
	HRESULT get_Routes(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.Maps.MapRouteView)* return_value);
	HRESULT get_TileSources(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.Maps.MapTileSource)* return_value);
	HRESULT add_CenterChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_CenterChanged(EventRegistrationToken token);
	HRESULT add_HeadingChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_HeadingChanged(EventRegistrationToken token);
	HRESULT add_LoadingStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_LoadingStatusChanged(EventRegistrationToken token);
	HRESULT add_MapDoubleTapped(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapInputEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_MapDoubleTapped(EventRegistrationToken token);
	HRESULT add_MapHolding(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapInputEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_MapHolding(EventRegistrationToken token);
	HRESULT add_MapTapped(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapInputEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_MapTapped(EventRegistrationToken token);
	HRESULT add_PitchChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_PitchChanged(EventRegistrationToken token);
	HRESULT add_TransformOriginChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_TransformOriginChanged(EventRegistrationToken token);
	HRESULT add_ZoomLevelChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_ZoomLevelChanged(EventRegistrationToken token);
	HRESULT abi_FindMapElementsAtOffset(Windows.Foundation.Point offset, Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Controls.Maps.MapElement)* return_returnValue);
	HRESULT abi_GetLocationFromOffset(Windows.Foundation.Point offset, Windows.Devices.Geolocation.Geopoint* out_location);
	HRESULT abi_GetOffsetFromLocation(Windows.Devices.Geolocation.Geopoint location, Windows.Foundation.Point* out_offset);
	HRESULT abi_IsLocationInView(Windows.Devices.Geolocation.Geopoint location, bool* out_isInView);
	HRESULT abi_TrySetViewBoundsAsync(Windows.Devices.Geolocation.GeoboundingBox bounds, Windows.Foundation.IReference!(Windows.UI.Xaml.Thickness) margin, Windows.UI.Xaml.Controls.Maps.MapAnimationKind animation, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
	HRESULT abi_TrySetViewWithCenterAsync(Windows.Devices.Geolocation.Geopoint center, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
	HRESULT abi_TrySetViewWithCenterAndZoomAsync(Windows.Devices.Geolocation.Geopoint center, Windows.Foundation.IReference!(double) zoomLevel, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
	HRESULT abi_TrySetViewWithCenterZoomHeadingAndPitchAsync(Windows.Devices.Geolocation.Geopoint center, Windows.Foundation.IReference!(double) zoomLevel, Windows.Foundation.IReference!(double) heading, Windows.Foundation.IReference!(double) desiredPitch, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
	HRESULT abi_TrySetViewWithCenterZoomHeadingPitchAndAnimationAsync(Windows.Devices.Geolocation.Geopoint center, Windows.Foundation.IReference!(double) zoomLevel, Windows.Foundation.IReference!(double) heading, Windows.Foundation.IReference!(double) desiredPitch, Windows.UI.Xaml.Controls.Maps.MapAnimationKind animation, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
}

@uuid("e1fd644d-96ec-4065-b0f0-75281da3654d")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControl")
interface IMapControl2 : IInspectable
{
extern(Windows):
	HRESULT get_BusinessLandmarksVisible(bool* return_value);
	HRESULT set_BusinessLandmarksVisible(bool value);
	HRESULT get_TransitFeaturesVisible(bool* return_value);
	HRESULT set_TransitFeaturesVisible(bool value);
	HRESULT get_PanInteractionMode(Windows.UI.Xaml.Controls.Maps.MapPanInteractionMode* return_value);
	HRESULT set_PanInteractionMode(Windows.UI.Xaml.Controls.Maps.MapPanInteractionMode value);
	HRESULT get_RotateInteractionMode(Windows.UI.Xaml.Controls.Maps.MapInteractionMode* return_value);
	HRESULT set_RotateInteractionMode(Windows.UI.Xaml.Controls.Maps.MapInteractionMode value);
	HRESULT get_TiltInteractionMode(Windows.UI.Xaml.Controls.Maps.MapInteractionMode* return_value);
	HRESULT set_TiltInteractionMode(Windows.UI.Xaml.Controls.Maps.MapInteractionMode value);
	HRESULT get_ZoomInteractionMode(Windows.UI.Xaml.Controls.Maps.MapInteractionMode* return_value);
	HRESULT set_ZoomInteractionMode(Windows.UI.Xaml.Controls.Maps.MapInteractionMode value);
	HRESULT get_Is3DSupported(bool* return_value);
	HRESULT get_IsStreetsideSupported(bool* return_value);
	HRESULT get_Scene(Windows.UI.Xaml.Controls.Maps.MapScene* return_value);
	HRESULT set_Scene(Windows.UI.Xaml.Controls.Maps.MapScene value);
	HRESULT get_ActualCamera(Windows.UI.Xaml.Controls.Maps.MapCamera* return_value);
	HRESULT get_TargetCamera(Windows.UI.Xaml.Controls.Maps.MapCamera* return_value);
	HRESULT get_CustomExperience(Windows.UI.Xaml.Controls.Maps.MapCustomExperience* return_value);
	HRESULT set_CustomExperience(Windows.UI.Xaml.Controls.Maps.MapCustomExperience value);
	HRESULT add_MapElementClick(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapElementClickEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_MapElementClick(EventRegistrationToken token);
	HRESULT add_MapElementPointerEntered(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapElementPointerEnteredEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_MapElementPointerEntered(EventRegistrationToken token);
	HRESULT add_MapElementPointerExited(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapElementPointerExitedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_MapElementPointerExited(EventRegistrationToken token);
	HRESULT add_ActualCameraChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapActualCameraChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_ActualCameraChanged(EventRegistrationToken token);
	HRESULT add_ActualCameraChanging(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapActualCameraChangingEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_ActualCameraChanging(EventRegistrationToken token);
	HRESULT add_TargetCameraChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapTargetCameraChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TargetCameraChanged(EventRegistrationToken token);
	HRESULT add_CustomExperienceChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapCustomExperienceChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_CustomExperienceChanged(EventRegistrationToken token);
	HRESULT abi_StartContinuousRotate(double rateInDegreesPerSecond);
	HRESULT abi_StopContinuousRotate();
	HRESULT abi_StartContinuousTilt(double rateInDegreesPerSecond);
	HRESULT abi_StopContinuousTilt();
	HRESULT abi_StartContinuousZoom(double rateOfChangePerSecond);
	HRESULT abi_StopContinuousZoom();
	HRESULT abi_TryRotateAsync(double degrees, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
	HRESULT abi_TryRotateToAsync(double angleInDegrees, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
	HRESULT abi_TryTiltAsync(double degrees, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
	HRESULT abi_TryTiltToAsync(double angleInDegrees, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
	HRESULT abi_TryZoomInAsync(Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
	HRESULT abi_TryZoomOutAsync(Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
	HRESULT abi_TryZoomToAsync(double zoomLevel, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
	HRESULT abi_TrySetSceneAsync(Windows.UI.Xaml.Controls.Maps.MapScene scene, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
	HRESULT abi_TrySetSceneWithAnimationAsync(Windows.UI.Xaml.Controls.Maps.MapScene scene, Windows.UI.Xaml.Controls.Maps.MapAnimationKind animationKind, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
}

@uuid("586328f8-8cdd-40ae-9338-af2a7be845e5")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControl")
interface IMapControl3 : IInspectable
{
extern(Windows):
	HRESULT add_MapRightTapped(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapRightTappedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_MapRightTapped(EventRegistrationToken token);
}

@uuid("068f132a-1817-466d-b7ce-419b3f8e248b")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControl")
interface IMapControl4 : IInspectable
{
extern(Windows):
	HRESULT get_BusinessLandmarksEnabled(bool* return_value);
	HRESULT set_BusinessLandmarksEnabled(bool value);
	HRESULT get_TransitFeaturesEnabled(bool* return_value);
	HRESULT set_TransitFeaturesEnabled(bool value);
	HRESULT abi_GetVisibleRegion(Windows.UI.Xaml.Controls.Maps.MapVisibleRegionKind region, Windows.Devices.Geolocation.Geopath* return_returnValue);
}

@uuid("dd9b0ffd-7823-46a2-82c9-65ddac4f365f")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControl")
interface IMapControl5 : IInspectable
{
extern(Windows):
	HRESULT get_MapProjection(Windows.UI.Xaml.Controls.Maps.MapProjection* return_value);
	HRESULT set_MapProjection(Windows.UI.Xaml.Controls.Maps.MapProjection value);
	HRESULT get_StyleSheet(Windows.UI.Xaml.Controls.Maps.MapStyleSheet* return_value);
	HRESULT set_StyleSheet(Windows.UI.Xaml.Controls.Maps.MapStyleSheet value);
	HRESULT get_ViewPadding(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_ViewPadding(Windows.UI.Xaml.Thickness value);
	HRESULT add_MapContextRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapContextRequestedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_MapContextRequested(EventRegistrationToken token);
	HRESULT abi_FindMapElementsAtOffsetWithRadius(Windows.Foundation.Point offset, double radius, Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Controls.Maps.MapElement)* return_returnValue);
	HRESULT abi_GetLocationFromOffsetWithReferenceSystem(Windows.Foundation.Point offset, Windows.Devices.Geolocation.AltitudeReferenceSystem desiredReferenceSystem, Windows.Devices.Geolocation.Geopoint* out_location);
	HRESULT abi_StartContinuousPan(double horizontalPixelsPerSecond, double verticalPixelsPerSecond);
	HRESULT abi_StopContinuousPan();
	HRESULT abi_TryPanAsync(double horizontalPixels, double verticalPixels, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
	HRESULT abi_TryPanToAsync(Windows.Devices.Geolocation.Geopoint location, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
}

@uuid("5e464922-4a1a-4797-beb7-5cf7754cb867")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkClickEventArgs")
interface IMapControlBusinessLandmarkClickEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_LocalLocations(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocation)* return_value);
}

@uuid("5e4081a6-ea98-4f95-8caf-5b42696ff504")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkPointerEnteredEventArgs")
interface IMapControlBusinessLandmarkPointerEnteredEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_LocalLocations(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocation)* return_value);
}

@uuid("2bb52caf-f24a-46d0-b463-65f719731057")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkPointerExitedEventArgs")
interface IMapControlBusinessLandmarkPointerExitedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_LocalLocations(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocation)* return_value);
}

@uuid("59ab8ae7-f184-4ab1-b0b0-35c8bf0654b2")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkRightTappedEventArgs")
interface IMapControlBusinessLandmarkRightTappedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_LocalLocations(Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocation)* return_value);
}

@uuid("8bb0f09c-14ab-486c-9de5-5a5def0205a2")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControlDataHelper")
interface IMapControlDataHelper : IInspectable
{
extern(Windows):
	HRESULT add_BusinessLandmarkClick(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkClickEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_BusinessLandmarkClick(EventRegistrationToken token);
	HRESULT add_TransitFeatureClick(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlTransitFeatureClickEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TransitFeatureClick(EventRegistrationToken token);
	HRESULT add_BusinessLandmarkRightTapped(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkRightTappedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_BusinessLandmarkRightTapped(EventRegistrationToken token);
	HRESULT add_TransitFeatureRightTapped(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlTransitFeatureRightTappedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TransitFeatureRightTapped(EventRegistrationToken token);
}

@uuid("59ce429e-562f-4c21-a674-0f11decf0fb3")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControlDataHelper")
interface IMapControlDataHelper2 : IInspectable
{
extern(Windows):
	HRESULT add_BusinessLandmarkPointerEntered(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkPointerEnteredEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_BusinessLandmarkPointerEntered(EventRegistrationToken token);
	HRESULT add_TransitFeaturePointerEntered(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlTransitFeaturePointerEnteredEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TransitFeaturePointerEntered(EventRegistrationToken token);
	HRESULT add_BusinessLandmarkPointerExited(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkPointerExitedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_BusinessLandmarkPointerExited(EventRegistrationToken token);
	HRESULT add_TransitFeaturePointerExited(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlTransitFeaturePointerExitedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TransitFeaturePointerExited(EventRegistrationToken token);
}

@uuid("3b70aa8e-02ef-469c-bbaf-dc2158d4289b")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControlDataHelper")
interface IMapControlDataHelperFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(Windows.UI.Xaml.Controls.Maps.MapControl map, Windows.UI.Xaml.Controls.Maps.MapControlDataHelper* return_instance);
}

@uuid("c2c61795-2147-4f0a-942a-5493a85de807")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControl")
interface IMapControlStatics : IInspectable
{
extern(Windows):
	HRESULT get_CenterProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ChildrenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ColorSchemeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DesiredPitchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeadingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LandmarksVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LoadingStatusProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MapServiceTokenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PedestrianFeaturesVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PitchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TrafficFlowVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TransformOriginProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_WatermarkModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ZoomLevelProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MapElementsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RoutesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TileSourcesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LocationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetLocation(Windows.UI.Xaml.DependencyObject element, Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT abi_SetLocation(Windows.UI.Xaml.DependencyObject element, Windows.Devices.Geolocation.Geopoint value);
	HRESULT get_NormalizedAnchorPointProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetNormalizedAnchorPoint(Windows.UI.Xaml.DependencyObject element, Windows.Foundation.Point* return_value);
	HRESULT abi_SetNormalizedAnchorPoint(Windows.UI.Xaml.DependencyObject element, Windows.Foundation.Point value);
}

@uuid("04852b93-b446-4d31-9752-1ec69a5996ae")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControl")
interface IMapControlStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_BusinessLandmarksVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TransitFeaturesVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PanInteractionModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RotateInteractionModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TiltInteractionModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ZoomInteractionModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_Is3DSupportedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsStreetsideSupportedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SceneProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("fe785d97-5d13-4fa1-bf1d-84061768c183")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControl")
interface IMapControlStatics4 : IInspectable
{
extern(Windows):
	HRESULT get_BusinessLandmarksEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TransitFeaturesEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("09626f00-b7dd-4189-a7f7-830c412deea3")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControl")
interface IMapControlStatics5 : IInspectable
{
extern(Windows):
	HRESULT get_MapProjectionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StyleSheetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ViewPaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("76179969-b765-4622-b08a-3072745a4541")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControlTransitFeatureClickEventArgs")
interface IMapControlTransitFeatureClickEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_Location(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_TransitProperties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
}

@uuid("73911a4e-ec4f-479e-94a1-36e081d0d897")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControlTransitFeaturePointerEnteredEventArgs")
interface IMapControlTransitFeaturePointerEnteredEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_Location(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_TransitProperties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
}

@uuid("6a11258d-448d-44e7-bc69-d13d497154e9")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControlTransitFeaturePointerExitedEventArgs")
interface IMapControlTransitFeaturePointerExitedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_Location(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_TransitProperties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
}

@uuid("aea1cc49-a729-4eae-a59a-3ec9a125a028")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapControlTransitFeatureRightTappedEventArgs")
interface IMapControlTransitFeatureRightTappedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_Location(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_TransitProperties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
}

@uuid("64592866-14a3-4e5f-8883-8e9c500eeede")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapCustomExperience")
interface IMapCustomExperience : IInspectable
{
}

@uuid("b9e6fb9b-8fc1-4042-ac34-a61b38bb7514")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapCustomExperienceChangedEventArgs")
interface IMapCustomExperienceChangedEventArgs : IInspectable
{
}

@uuid("7a403fb5-a1b1-4e7f-921e-3e6b8d8ebed6")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapCustomExperience")
interface IMapCustomExperienceFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Maps.MapCustomExperience* return_instance);
}

@uuid("d61fc4df-b245-47f2-9ac2-43c058b1c903")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapElement")
interface IMapElement : IInspectable
{
extern(Windows):
	HRESULT get_ZIndex(INT32* return_value);
	HRESULT set_ZIndex(INT32 value);
	HRESULT get_Visible(bool* return_value);
	HRESULT set_Visible(bool value);
}

@uuid("6619f261-fba6-4964-a7ff-f1af63ab9cb0")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapElement")
interface IMapElement2 : IInspectable
{
extern(Windows):
	HRESULT get_MapTabIndex(INT32* return_value);
	HRESULT set_MapTabIndex(INT32 value);
}

@uuid("40168a11-d080-4519-99a1-3149fb8999d0")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapElementClickEventArgs")
interface IMapElementClickEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_Location(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_MapElements(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.Maps.MapElement)* return_value);
}

@uuid("4a30d007-0bd6-47a5-860b-7e7cf5f0c573")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapElement")
interface IMapElementFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Maps.MapElement* return_instance);
}

@uuid("ab85dd4e-91d7-4b31-8f0a-d390c7d3a2ef")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapElementPointerEnteredEventArgs")
interface IMapElementPointerEnteredEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_Location(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_MapElement(Windows.UI.Xaml.Controls.Maps.MapElement* return_value);
}

@uuid("c1a45af9-60c9-4679-9119-20abc75d931f")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapElementPointerExitedEventArgs")
interface IMapElementPointerExitedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_Location(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT get_MapElement(Windows.UI.Xaml.Controls.Maps.MapElement* return_value);
}

@uuid("e8c71cf2-bfef-4b49-8e99-41b5e3789fd2")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapElement")
interface IMapElementStatics : IInspectable
{
extern(Windows):
	HRESULT get_ZIndexProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9bf72f30-80fe-4f30-bcc1-fa894050f676")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapElement")
interface IMapElementStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_MapTabIndexProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d2096872-23d9-4a2b-8be0-69f3a85482ab")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapIcon")
interface IMapIcon : IInspectable
{
extern(Windows):
	HRESULT get_Location(Windows.Devices.Geolocation.Geopoint* return_value);
	HRESULT set_Location(Windows.Devices.Geolocation.Geopoint value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_NormalizedAnchorPoint(Windows.Foundation.Point* return_value);
	HRESULT set_NormalizedAnchorPoint(Windows.Foundation.Point value);
	HRESULT get_Image(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_Image(Windows.Storage.Streams.IRandomAccessStreamReference value);
}

@uuid("611254b9-d8aa-4bbd-a316-badf06911d63")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapIcon")
interface IMapIcon2 : IInspectable
{
extern(Windows):
	HRESULT get_CollisionBehaviorDesired(Windows.UI.Xaml.Controls.Maps.MapElementCollisionBehavior* return_value);
	HRESULT set_CollisionBehaviorDesired(Windows.UI.Xaml.Controls.Maps.MapElementCollisionBehavior value);
}

@uuid("dcbc9e56-1190-4b5d-9e56-e5b6724aa328")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapIcon")
interface IMapIconStatics : IInspectable
{
extern(Windows):
	HRESULT get_LocationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TitleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_NormalizedAnchorPointProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ff4c306a-cf76-46ab-a12f-b603b986c696")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapIcon")
interface IMapIconStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_CollisionBehaviorDesiredProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9fc503a0-a8a2-4394-92e9-2247764f2f49")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapInputEventArgs")
interface IMapInputEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_Location(Windows.Devices.Geolocation.Geopoint* return_value);
}

@uuid("94c2c4d3-b335-42c5-b660-e6a07ec3bddc")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapItemsControl")
interface IMapItemsControl : IInspectable
{
extern(Windows):
	HRESULT get_ItemsSource(IInspectable* return_value);
	HRESULT set_ItemsSource(IInspectable value);
	HRESULT get_Items(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject)* return_value);
	HRESULT get_ItemTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_ItemTemplate(Windows.UI.Xaml.DataTemplate value);
}

@uuid("33a859c7-789b-425c-8a0a-32385896cb4a")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapItemsControl")
interface IMapItemsControlStatics : IInspectable
{
extern(Windows):
	HRESULT get_ItemsSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("abda2285-4926-4c3a-a5f9-19df7f69db3d")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapPolygon")
interface IMapPolygon : IInspectable
{
extern(Windows):
	HRESULT get_Path(Windows.Devices.Geolocation.Geopath* return_value);
	HRESULT set_Path(Windows.Devices.Geolocation.Geopath value);
	HRESULT get_StrokeColor(Windows.UI.Color* return_value);
	HRESULT set_StrokeColor(Windows.UI.Color value);
	HRESULT get_StrokeThickness(double* return_value);
	HRESULT set_StrokeThickness(double value);
	HRESULT get_StrokeDashed(bool* return_value);
	HRESULT set_StrokeDashed(bool value);
	HRESULT get_FillColor(Windows.UI.Color* return_value);
	HRESULT set_FillColor(Windows.UI.Color value);
}

@uuid("96c8a11e-636b-4018-9c2e-acc9122a01b2")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapPolygon")
interface IMapPolygon2 : IInspectable
{
extern(Windows):
	HRESULT get_Paths(Windows.Foundation.Collections.IVector!(Windows.Devices.Geolocation.Geopath)* return_value);
}

@uuid("37f573be-097b-424c-87cc-2ee042fda6d2")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapPolygon")
interface IMapPolygonStatics : IInspectable
{
extern(Windows):
	HRESULT get_PathProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StrokeThicknessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StrokeDashedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("fbad24a2-24df-4a86-8ffa-0f8f4d9ec17d")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapPolyline")
interface IMapPolyline : IInspectable
{
extern(Windows):
	HRESULT get_Path(Windows.Devices.Geolocation.Geopath* return_value);
	HRESULT set_Path(Windows.Devices.Geolocation.Geopath value);
	HRESULT get_StrokeColor(Windows.UI.Color* return_value);
	HRESULT set_StrokeColor(Windows.UI.Color value);
	HRESULT get_StrokeThickness(double* return_value);
	HRESULT set_StrokeThickness(double value);
	HRESULT get_StrokeDashed(bool* return_value);
	HRESULT set_StrokeDashed(bool value);
}

@uuid("61fde44b-1ddf-4303-b809-ec87f58ad065")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapPolyline")
interface IMapPolylineStatics : IInspectable
{
extern(Windows):
	HRESULT get_PathProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StrokeDashedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("20943171-6fe8-40a6-ad0e-297379b575a7")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapRightTappedEventArgs")
interface IMapRightTappedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_Location(Windows.Devices.Geolocation.Geopoint* return_value);
}

@uuid("740eaec5-bacc-41e1-a67e-dd6513832049")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapRouteView")
interface IMapRouteView : IInspectable
{
extern(Windows):
	HRESULT get_RouteColor(Windows.UI.Color* return_value);
	HRESULT set_RouteColor(Windows.UI.Color value);
	HRESULT get_OutlineColor(Windows.UI.Color* return_value);
	HRESULT set_OutlineColor(Windows.UI.Color value);
	HRESULT get_Route(Windows.Services.Maps.MapRoute* return_value);
}

@uuid("f083addf-0066-4628-82fe-ea78c23cec1e")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapRouteView")
interface IMapRouteViewFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithMapRoute(Windows.Services.Maps.MapRoute route, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Maps.MapRouteView* return_instance);
}

@uuid("8bba10a9-50e7-482c-9789-c688b178ac24")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapScene")
interface IMapScene : IInspectable
{
extern(Windows):
	HRESULT get_TargetCamera(Windows.UI.Xaml.Controls.Maps.MapCamera* return_value);
	HRESULT add_TargetCameraChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapScene, Windows.UI.Xaml.Controls.Maps.MapTargetCameraChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TargetCameraChanged(EventRegistrationToken token);
}

@uuid("03e4ad6c-86ec-44d9-9597-fb75b7deba0a")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapScene")
interface IMapSceneStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromBoundingBox(Windows.Devices.Geolocation.GeoboundingBox bounds, Windows.UI.Xaml.Controls.Maps.MapScene* return_returnValue);
	HRESULT abi_CreateFromBoundingBoxWithHeadingAndPitch(Windows.Devices.Geolocation.GeoboundingBox bounds, double headingInDegrees, double pitchInDegrees, Windows.UI.Xaml.Controls.Maps.MapScene* return_returnValue);
	HRESULT abi_CreateFromCamera(Windows.UI.Xaml.Controls.Maps.MapCamera camera, Windows.UI.Xaml.Controls.Maps.MapScene* return_returnValue);
	HRESULT abi_CreateFromLocation(Windows.Devices.Geolocation.Geopoint location, Windows.UI.Xaml.Controls.Maps.MapScene* return_returnValue);
	HRESULT abi_CreateFromLocationWithHeadingAndPitch(Windows.Devices.Geolocation.Geopoint location, double headingInDegrees, double pitchInDegrees, Windows.UI.Xaml.Controls.Maps.MapScene* return_returnValue);
	HRESULT abi_CreateFromLocationAndRadius(Windows.Devices.Geolocation.Geopoint location, double radiusInMeters, Windows.UI.Xaml.Controls.Maps.MapScene* return_returnValue);
	HRESULT abi_CreateFromLocationAndRadiusWithHeadingAndPitch(Windows.Devices.Geolocation.Geopoint location, double radiusInMeters, double headingInDegrees, double pitchInDegrees, Windows.UI.Xaml.Controls.Maps.MapScene* return_returnValue);
	HRESULT abi_CreateFromLocations(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) locations, Windows.UI.Xaml.Controls.Maps.MapScene* return_returnValue);
	HRESULT abi_CreateFromLocationsWithHeadingAndPitch(Windows.Foundation.Collections.IIterable!(Windows.Devices.Geolocation.Geopoint) locations, double headingInDegrees, double pitchInDegrees, Windows.UI.Xaml.Controls.Maps.MapScene* return_returnValue);
}

@uuid("ae54b2bf-8991-42ed-8d58-20473deede1d")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapStyleSheet")
interface IMapStyleSheet : IInspectable
{
}

@uuid("abbd00ad-0a1c-4335-82f4-61d936aa197d")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapStyleSheet")
interface IMapStyleSheetStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Aerial(Windows.UI.Xaml.Controls.Maps.MapStyleSheet* return_returnValue);
	HRESULT abi_AerialWithOverlay(Windows.UI.Xaml.Controls.Maps.MapStyleSheet* return_returnValue);
	HRESULT abi_RoadLight(Windows.UI.Xaml.Controls.Maps.MapStyleSheet* return_returnValue);
	HRESULT abi_RoadDark(Windows.UI.Xaml.Controls.Maps.MapStyleSheet* return_returnValue);
	HRESULT abi_RoadHighContrastLight(Windows.UI.Xaml.Controls.Maps.MapStyleSheet* return_returnValue);
	HRESULT abi_RoadHighContrastDark(Windows.UI.Xaml.Controls.Maps.MapStyleSheet* return_returnValue);
	HRESULT abi_Combine(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Controls.Maps.MapStyleSheet) styleSheets, Windows.UI.Xaml.Controls.Maps.MapStyleSheet* return_returnValue);
	HRESULT abi_ParseFromJson(HSTRING styleAsJson, Windows.UI.Xaml.Controls.Maps.MapStyleSheet* return_returnValue);
	HRESULT abi_TryParseFromJson(HSTRING styleAsJson, Windows.UI.Xaml.Controls.Maps.MapStyleSheet* out_styleSheet, bool* return_returnValue);
}

@uuid("dbf00472-e953-4fa8-97d0-ea86359057cf")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapTargetCameraChangedEventArgs")
interface IMapTargetCameraChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Camera(Windows.UI.Xaml.Controls.Maps.MapCamera* return_value);
}

@uuid("97c0b332-f2b6-460b-8d91-ac020a2383dd")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapTargetCameraChangedEventArgs")
interface IMapTargetCameraChangedEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_ChangeReason(Windows.UI.Xaml.Controls.Maps.MapCameraChangeReason* return_value);
}

@uuid("46733fbc-d89d-472b-b5f6-d7066b0584f4")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequest")
interface IMapTileBitmapRequest : IInspectable
{
extern(Windows):
	HRESULT get_PixelData(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_PixelData(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT abi_GetDeferral(Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequestDeferral* return_returnValue);
}

@uuid("fe370542-a4ac-4efa-9665-0490b0cafdd2")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequestDeferral")
interface IMapTileBitmapRequestDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("337f691d-9b02-4aa2-8b1e-cc4d91719bf3")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequestedEventArgs")
interface IMapTileBitmapRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_X(INT32* return_value);
	HRESULT get_Y(INT32* return_value);
	HRESULT get_ZoomLevel(INT32* return_value);
	HRESULT get_Request(Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequest* return_value);
}

@uuid("c03d9f5e-be1f-4c69-9969-79467a513c38")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapTileDataSource")
interface IMapTileDataSource : IInspectable
{
}

@uuid("a3920fbd-e446-4648-a74d-fd2c5d557c06")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapTileDataSource")
interface IMapTileDataSourceFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Maps.MapTileDataSource* return_instance);
}

@uuid("88a76e4e-2fdf-4567-9255-1100519c8d62")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapTileSource")
interface IMapTileSource : IInspectable
{
extern(Windows):
	HRESULT get_DataSource(Windows.UI.Xaml.Controls.Maps.MapTileDataSource* return_value);
	HRESULT set_DataSource(Windows.UI.Xaml.Controls.Maps.MapTileDataSource value);
	HRESULT get_Layer(Windows.UI.Xaml.Controls.Maps.MapTileLayer* return_value);
	HRESULT set_Layer(Windows.UI.Xaml.Controls.Maps.MapTileLayer value);
	HRESULT get_ZoomLevelRange(Windows.UI.Xaml.Controls.Maps.MapZoomLevelRange* return_value);
	HRESULT set_ZoomLevelRange(Windows.UI.Xaml.Controls.Maps.MapZoomLevelRange value);
	HRESULT get_Bounds(Windows.Devices.Geolocation.GeoboundingBox* return_value);
	HRESULT set_Bounds(Windows.Devices.Geolocation.GeoboundingBox value);
	HRESULT get_AllowOverstretch(bool* return_value);
	HRESULT set_AllowOverstretch(bool value);
	HRESULT get_IsFadingEnabled(bool* return_value);
	HRESULT set_IsFadingEnabled(bool value);
	HRESULT get_IsTransparencyEnabled(bool* return_value);
	HRESULT set_IsTransparencyEnabled(bool value);
	HRESULT get_IsRetryEnabled(bool* return_value);
	HRESULT set_IsRetryEnabled(bool value);
	HRESULT get_ZIndex(INT32* return_value);
	HRESULT set_ZIndex(INT32 value);
	HRESULT get_TilePixelSize(INT32* return_value);
	HRESULT set_TilePixelSize(INT32 value);
	HRESULT get_Visible(bool* return_value);
	HRESULT set_Visible(bool value);
}

@uuid("cd7f811f-77fa-482b-9d34-71d31d465c48")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapTileSource")
interface IMapTileSourceFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Maps.MapTileSource* return_instance);
	HRESULT abi_CreateInstanceWithDataSource(Windows.UI.Xaml.Controls.Maps.MapTileDataSource dataSource, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Maps.MapTileSource* return_instance);
	HRESULT abi_CreateInstanceWithDataSourceAndZoomRange(Windows.UI.Xaml.Controls.Maps.MapTileDataSource dataSource, Windows.UI.Xaml.Controls.Maps.MapZoomLevelRange zoomLevelRange, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Maps.MapTileSource* return_instance);
	HRESULT abi_CreateInstanceWithDataSourceZoomRangeAndBounds(Windows.UI.Xaml.Controls.Maps.MapTileDataSource dataSource, Windows.UI.Xaml.Controls.Maps.MapZoomLevelRange zoomLevelRange, Windows.Devices.Geolocation.GeoboundingBox bounds, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Maps.MapTileSource* return_instance);
	HRESULT abi_CreateInstanceWithDataSourceZoomRangeBoundsAndTileSize(Windows.UI.Xaml.Controls.Maps.MapTileDataSource dataSource, Windows.UI.Xaml.Controls.Maps.MapZoomLevelRange zoomLevelRange, Windows.Devices.Geolocation.GeoboundingBox bounds, INT32 tileSizeInPixels, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Maps.MapTileSource* return_instance);
}

@uuid("93fcc93c-7035-4603-99b1-e659921b6093")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapTileSource")
interface IMapTileSourceStatics : IInspectable
{
extern(Windows):
	HRESULT get_DataSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LayerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ZoomLevelRangeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BoundsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AllowOverstretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsFadingEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsTransparencyEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsRetryEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ZIndexProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TilePixelSizeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("17402335-3127-45b8-87a7-99f87d4e2745")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapTileUriRequest")
interface IMapTileUriRequest : IInspectable
{
extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT set_Uri(Windows.Foundation.Uri value);
	HRESULT abi_GetDeferral(Windows.UI.Xaml.Controls.Maps.MapTileUriRequestDeferral* return_returnValue);
}

@uuid("c117ade0-bf3e-4c51-8faa-4b593cf68eb2")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapTileUriRequestDeferral")
interface IMapTileUriRequestDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("d2147b43-1bbf-4b98-8dd3-b7834e407e0d")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.MapTileUriRequestedEventArgs")
interface IMapTileUriRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_X(INT32* return_value);
	HRESULT get_Y(INT32* return_value);
	HRESULT get_ZoomLevel(INT32* return_value);
	HRESULT get_Request(Windows.UI.Xaml.Controls.Maps.MapTileUriRequest* return_value);
}

@uuid("a558aec9-e30c-46c8-8116-484691675558")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.StreetsideExperience")
interface IStreetsideExperience : IInspectable
{
extern(Windows):
	HRESULT get_AddressTextVisible(bool* return_value);
	HRESULT set_AddressTextVisible(bool value);
	HRESULT get_CursorVisible(bool* return_value);
	HRESULT set_CursorVisible(bool value);
	HRESULT get_OverviewMapVisible(bool* return_value);
	HRESULT set_OverviewMapVisible(bool value);
	HRESULT get_StreetLabelsVisible(bool* return_value);
	HRESULT set_StreetLabelsVisible(bool value);
	HRESULT get_ExitButtonVisible(bool* return_value);
	HRESULT set_ExitButtonVisible(bool value);
	HRESULT get_ZoomButtonsVisible(bool* return_value);
	HRESULT set_ZoomButtonsVisible(bool value);
}

@uuid("7a5bcf3c-649e-4342-9995-68a6cf5961a7")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.StreetsideExperience")
interface IStreetsideExperienceFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithPanorama(Windows.UI.Xaml.Controls.Maps.StreetsidePanorama panorama, Windows.UI.Xaml.Controls.Maps.StreetsideExperience* return_instance);
	HRESULT abi_CreateInstanceWithPanoramaHeadingPitchAndFieldOfView(Windows.UI.Xaml.Controls.Maps.StreetsidePanorama panorama, double headingInDegrees, double pitchInDegrees, double fieldOfViewInDegrees, Windows.UI.Xaml.Controls.Maps.StreetsideExperience* return_instance);
}

@uuid("6fe00fd8-ad60-4664-b539-b1069f16c5af")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.StreetsidePanorama")
interface IStreetsidePanorama : IInspectable
{
extern(Windows):
	HRESULT get_Location(Windows.Devices.Geolocation.Geopoint* return_value);
}

@uuid("d3b47f69-54b3-4ec5-b2a0-4f8204576507")
@WinrtFactory("Windows.UI.Xaml.Controls.Maps.StreetsidePanorama")
interface IStreetsidePanoramaStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FindNearbyWithLocationAsync(Windows.Devices.Geolocation.Geopoint location, Windows.Foundation.IAsyncOperation!(Windows.UI.Xaml.Controls.Maps.StreetsidePanorama)* return_returnValue);
	HRESULT abi_FindNearbyWithLocationAndRadiusAsync(Windows.Devices.Geolocation.Geopoint location, double radiusInMeters, Windows.Foundation.IAsyncOperation!(Windows.UI.Xaml.Controls.Maps.StreetsidePanorama)* return_returnValue);
}

interface CustomMapTileDataSource : Windows.UI.Xaml.Controls.Maps.MapTileDataSource, Windows.UI.Xaml.Controls.Maps.ICustomMapTileDataSource
{
extern(Windows):
	final EventRegistrationToken OnBitmapRequested(void delegate(Windows.UI.Xaml.Controls.Maps.CustomMapTileDataSource, Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_BitmapRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.CustomMapTileDataSource, Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequestedEventArgs), Windows.UI.Xaml.Controls.Maps.CustomMapTileDataSource, Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeBitmapRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_BitmapRequested(token));
	}
}
@makable!(CustomMapTileDataSource, CustomMapTileDataSource, Windows.UI.Xaml.Controls.Maps.ICustomMapTileDataSourceFactory)
class CustomMapTileDataSourceT(Base) : AgileObject!Base, CustomMapTileDataSource
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT add_BitmapRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.CustomMapTileDataSource, Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequestedEventArgs) value, EventRegistrationToken* return_token) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.ICustomMapTileDataSource).add_BitmapRequested(value, return_token); }
	override HRESULT remove_BitmapRequested(EventRegistrationToken token) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.ICustomMapTileDataSource).remove_BitmapRequested(token); }

	this() {}
	IInspectable m_inner;
}

interface HttpMapTileDataSource : Windows.UI.Xaml.Controls.Maps.MapTileDataSource, Windows.UI.Xaml.Controls.Maps.IHttpMapTileDataSource
{
extern(Windows):
	final HSTRING UriFormatString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IHttpMapTileDataSource).get_UriFormatString(&_ret));
		return _ret;
	}
	final void UriFormatString(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IHttpMapTileDataSource).set_UriFormatString(value));
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) AdditionalRequestHeaders()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IHttpMapTileDataSource).get_AdditionalRequestHeaders(&_ret));
		return _ret;
	}
	final bool AllowCaching()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IHttpMapTileDataSource).get_AllowCaching(&_ret));
		return _ret;
	}
	final void AllowCaching(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IHttpMapTileDataSource).set_AllowCaching(value));
	}
	final EventRegistrationToken OnUriRequested(void delegate(Windows.UI.Xaml.Controls.Maps.HttpMapTileDataSource, Windows.UI.Xaml.Controls.Maps.MapTileUriRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_UriRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.HttpMapTileDataSource, Windows.UI.Xaml.Controls.Maps.MapTileUriRequestedEventArgs), Windows.UI.Xaml.Controls.Maps.HttpMapTileDataSource, Windows.UI.Xaml.Controls.Maps.MapTileUriRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUriRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_UriRequested(token));
	}
}
@makable!(HttpMapTileDataSource, HttpMapTileDataSource, Windows.UI.Xaml.Controls.Maps.IHttpMapTileDataSourceFactory)
class HttpMapTileDataSourceT(Base) : AgileObject!Base, HttpMapTileDataSource
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_UriFormatString(HSTRING* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IHttpMapTileDataSource).get_UriFormatString(return_value); }
	override HRESULT set_UriFormatString(HSTRING value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IHttpMapTileDataSource).set_UriFormatString(value); }
	override HRESULT get_AdditionalRequestHeaders(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IHttpMapTileDataSource).get_AdditionalRequestHeaders(return_value); }
	override HRESULT get_AllowCaching(bool* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IHttpMapTileDataSource).get_AllowCaching(return_value); }
	override HRESULT set_AllowCaching(bool value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IHttpMapTileDataSource).set_AllowCaching(value); }
	override HRESULT add_UriRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.HttpMapTileDataSource, Windows.UI.Xaml.Controls.Maps.MapTileUriRequestedEventArgs) value, EventRegistrationToken* return_token) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IHttpMapTileDataSource).add_UriRequested(value, return_token); }
	override HRESULT remove_UriRequested(EventRegistrationToken token) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IHttpMapTileDataSource).remove_UriRequested(token); }

	this() {}
	IInspectable m_inner;
}

interface LocalMapTileDataSource : Windows.UI.Xaml.Controls.Maps.MapTileDataSource, Windows.UI.Xaml.Controls.Maps.ILocalMapTileDataSource
{
extern(Windows):
	final HSTRING UriFormatString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.ILocalMapTileDataSource).get_UriFormatString(&_ret));
		return _ret;
	}
	final void UriFormatString(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.ILocalMapTileDataSource).set_UriFormatString(value));
	}
	final EventRegistrationToken OnUriRequested(void delegate(Windows.UI.Xaml.Controls.Maps.LocalMapTileDataSource, Windows.UI.Xaml.Controls.Maps.MapTileUriRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_UriRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.LocalMapTileDataSource, Windows.UI.Xaml.Controls.Maps.MapTileUriRequestedEventArgs), Windows.UI.Xaml.Controls.Maps.LocalMapTileDataSource, Windows.UI.Xaml.Controls.Maps.MapTileUriRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUriRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_UriRequested(token));
	}
}
@makable!(LocalMapTileDataSource, LocalMapTileDataSource, Windows.UI.Xaml.Controls.Maps.ILocalMapTileDataSourceFactory)
class LocalMapTileDataSourceT(Base) : AgileObject!Base, LocalMapTileDataSource
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_UriFormatString(HSTRING* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.ILocalMapTileDataSource).get_UriFormatString(return_value); }
	override HRESULT set_UriFormatString(HSTRING value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.ILocalMapTileDataSource).set_UriFormatString(value); }
	override HRESULT add_UriRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.LocalMapTileDataSource, Windows.UI.Xaml.Controls.Maps.MapTileUriRequestedEventArgs) value, EventRegistrationToken* return_token) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.ILocalMapTileDataSource).add_UriRequested(value, return_token); }
	override HRESULT remove_UriRequested(EventRegistrationToken token) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.ILocalMapTileDataSource).remove_UriRequested(token); }

	this() {}
	IInspectable m_inner;
}

interface MapActualCameraChangedEventArgs : Windows.UI.Xaml.Controls.Maps.IMapActualCameraChangedEventArgs, Windows.UI.Xaml.Controls.Maps.IMapActualCameraChangedEventArgs2
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Maps.MapCamera Camera()
	{
		Windows.UI.Xaml.Controls.Maps.MapCamera _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapActualCameraChangedEventArgs).get_Camera(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Maps.MapCameraChangeReason ChangeReason()
	{
		Windows.UI.Xaml.Controls.Maps.MapCameraChangeReason _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapActualCameraChangedEventArgs2).get_ChangeReason(&_ret));
		return _ret;
	}
}

interface MapActualCameraChangingEventArgs : Windows.UI.Xaml.Controls.Maps.IMapActualCameraChangingEventArgs, Windows.UI.Xaml.Controls.Maps.IMapActualCameraChangingEventArgs2
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Maps.MapCamera Camera()
	{
		Windows.UI.Xaml.Controls.Maps.MapCamera _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapActualCameraChangingEventArgs).get_Camera(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Maps.MapCameraChangeReason ChangeReason()
	{
		Windows.UI.Xaml.Controls.Maps.MapCameraChangeReason _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapActualCameraChangingEventArgs2).get_ChangeReason(&_ret));
		return _ret;
	}
}

interface MapBillboard : Windows.UI.Xaml.Controls.Maps.MapElement, Windows.UI.Xaml.Controls.Maps.IMapBillboard
{
extern(Windows):
	final Windows.Devices.Geolocation.Geopoint Location()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapBillboard).get_Location(&_ret));
		return _ret;
	}
	final void Location(Windows.Devices.Geolocation.Geopoint value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapBillboard).set_Location(value));
	}
	final Windows.Foundation.Point NormalizedAnchorPoint()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapBillboard).get_NormalizedAnchorPoint(&_ret));
		return _ret;
	}
	final void NormalizedAnchorPoint(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapBillboard).set_NormalizedAnchorPoint(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Image()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapBillboard).get_Image(&_ret));
		return _ret;
	}
	final void Image(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapBillboard).set_Image(value));
	}
	final Windows.UI.Xaml.Controls.Maps.MapElementCollisionBehavior CollisionBehaviorDesired()
	{
		Windows.UI.Xaml.Controls.Maps.MapElementCollisionBehavior _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapBillboard).get_CollisionBehaviorDesired(&_ret));
		return _ret;
	}
	final void CollisionBehaviorDesired(Windows.UI.Xaml.Controls.Maps.MapElementCollisionBehavior value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapBillboard).set_CollisionBehaviorDesired(value));
	}
	final Windows.UI.Xaml.Controls.Maps.MapCamera ReferenceCamera()
	{
		Windows.UI.Xaml.Controls.Maps.MapCamera _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapBillboard).get_ReferenceCamera(&_ret));
		return _ret;
	}
}

interface MapCamera : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Maps.IMapCamera
{
extern(Windows):
	final Windows.Devices.Geolocation.Geopoint Location()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapCamera).get_Location(&_ret));
		return _ret;
	}
	final void Location(Windows.Devices.Geolocation.Geopoint value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapCamera).set_Location(value));
	}
	final double Heading()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapCamera).get_Heading(&_ret));
		return _ret;
	}
	final void Heading(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapCamera).set_Heading(value));
	}
	final double Pitch()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapCamera).get_Pitch(&_ret));
		return _ret;
	}
	final void Pitch(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapCamera).set_Pitch(value));
	}
	final double Roll()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapCamera).get_Roll(&_ret));
		return _ret;
	}
	final void Roll(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapCamera).set_Roll(value));
	}
	final double FieldOfView()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapCamera).get_FieldOfView(&_ret));
		return _ret;
	}
	final void FieldOfView(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapCamera).set_FieldOfView(value));
	}
}

interface MapContextRequestedEventArgs : Windows.UI.Xaml.Controls.Maps.IMapContextRequestedEventArgs
{
extern(Windows):
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapContextRequestedEventArgs).get_Position(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geopoint Location()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapContextRequestedEventArgs).get_Location(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Controls.Maps.MapElement) MapElements()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Controls.Maps.MapElement) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapContextRequestedEventArgs).get_MapElements(&_ret));
		return _ret;
	}
}

interface MapControl : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.Maps.IMapControl, Windows.UI.Xaml.Controls.Maps.IMapControl2, Windows.UI.Xaml.Controls.Maps.IMapControl3, Windows.UI.Xaml.Controls.Maps.IMapControl4, Windows.UI.Xaml.Controls.Maps.IMapControl5
{
extern(Windows):
	final Windows.Devices.Geolocation.Geopoint Center()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_Center(&_ret));
		return _ret;
	}
	final void Center(Windows.Devices.Geolocation.Geopoint value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).set_Center(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject) Children()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_Children(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Maps.MapColorScheme ColorScheme()
	{
		Windows.UI.Xaml.Controls.Maps.MapColorScheme _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_ColorScheme(&_ret));
		return _ret;
	}
	final void ColorScheme(Windows.UI.Xaml.Controls.Maps.MapColorScheme value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).set_ColorScheme(value));
	}
	final double DesiredPitch()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_DesiredPitch(&_ret));
		return _ret;
	}
	final void DesiredPitch(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).set_DesiredPitch(value));
	}
	final double Heading()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_Heading(&_ret));
		return _ret;
	}
	final void Heading(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).set_Heading(value));
	}
	final bool LandmarksVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_LandmarksVisible(&_ret));
		return _ret;
	}
	final void LandmarksVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).set_LandmarksVisible(value));
	}
	final Windows.UI.Xaml.Controls.Maps.MapLoadingStatus LoadingStatus()
	{
		Windows.UI.Xaml.Controls.Maps.MapLoadingStatus _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_LoadingStatus(&_ret));
		return _ret;
	}
	final HSTRING MapServiceToken()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_MapServiceToken(&_ret));
		return _ret;
	}
	final void MapServiceToken(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).set_MapServiceToken(value));
	}
	final double MaxZoomLevel()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_MaxZoomLevel(&_ret));
		return _ret;
	}
	final double MinZoomLevel()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_MinZoomLevel(&_ret));
		return _ret;
	}
	final bool PedestrianFeaturesVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_PedestrianFeaturesVisible(&_ret));
		return _ret;
	}
	final void PedestrianFeaturesVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).set_PedestrianFeaturesVisible(value));
	}
	final double Pitch()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_Pitch(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Maps.MapStyle Style()
	{
		Windows.UI.Xaml.Controls.Maps.MapStyle _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_Style(&_ret));
		return _ret;
	}
	final void Style(Windows.UI.Xaml.Controls.Maps.MapStyle value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).set_Style(value));
	}
	final bool TrafficFlowVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_TrafficFlowVisible(&_ret));
		return _ret;
	}
	final void TrafficFlowVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).set_TrafficFlowVisible(value));
	}
	final Windows.Foundation.Point TransformOrigin()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_TransformOrigin(&_ret));
		return _ret;
	}
	final void TransformOrigin(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).set_TransformOrigin(value));
	}
	final Windows.UI.Xaml.Controls.Maps.MapWatermarkMode WatermarkMode()
	{
		Windows.UI.Xaml.Controls.Maps.MapWatermarkMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_WatermarkMode(&_ret));
		return _ret;
	}
	final void WatermarkMode(Windows.UI.Xaml.Controls.Maps.MapWatermarkMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).set_WatermarkMode(value));
	}
	final double ZoomLevel()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_ZoomLevel(&_ret));
		return _ret;
	}
	final void ZoomLevel(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).set_ZoomLevel(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.Maps.MapElement) MapElements()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.Maps.MapElement) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_MapElements(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.Maps.MapRouteView) Routes()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.Maps.MapRouteView) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_Routes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.Maps.MapTileSource) TileSources()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.Maps.MapTileSource) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).get_TileSources(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnCenterChanged(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CenterChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable), Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeCenterChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_CenterChanged(token));
	}
	final EventRegistrationToken OnHeadingChanged(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HeadingChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable), Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeHeadingChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_HeadingChanged(token));
	}
	final EventRegistrationToken OnLoadingStatusChanged(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_LoadingStatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable), Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeLoadingStatusChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_LoadingStatusChanged(token));
	}
	final EventRegistrationToken OnMapDoubleTapped(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapInputEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MapDoubleTapped(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapInputEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapInputEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMapDoubleTapped(EventRegistrationToken token)
	{
		Debug.OK(remove_MapDoubleTapped(token));
	}
	final EventRegistrationToken OnMapHolding(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapInputEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MapHolding(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapInputEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapInputEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMapHolding(EventRegistrationToken token)
	{
		Debug.OK(remove_MapHolding(token));
	}
	final EventRegistrationToken OnMapTapped(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapInputEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MapTapped(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapInputEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapInputEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMapTapped(EventRegistrationToken token)
	{
		Debug.OK(remove_MapTapped(token));
	}
	final EventRegistrationToken OnPitchChanged(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PitchChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable), Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable)(fn), &tok));
		return tok;
	}
	final void removePitchChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_PitchChanged(token));
	}
	final EventRegistrationToken OnTransformOriginChanged(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TransformOriginChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable), Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeTransformOriginChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_TransformOriginChanged(token));
	}
	final EventRegistrationToken OnZoomLevelChanged(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ZoomLevelChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable), Windows.UI.Xaml.Controls.Maps.MapControl, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeZoomLevelChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_ZoomLevelChanged(token));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Controls.Maps.MapElement) FindMapElementsAtOffset(Windows.Foundation.Point offset)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Controls.Maps.MapElement) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).abi_FindMapElementsAtOffset(offset, &_ret));
		return _ret;
	}
	final void GetLocationFromOffset(Windows.Foundation.Point offset, Windows.Devices.Geolocation.Geopoint* out_location)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).abi_GetLocationFromOffset(offset, out_location));
	}
	final void GetOffsetFromLocation(Windows.Devices.Geolocation.Geopoint location, Windows.Foundation.Point* out_offset)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).abi_GetOffsetFromLocation(location, out_offset));
	}
	final void IsLocationInView(Windows.Devices.Geolocation.Geopoint location, bool* out_isInView)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).abi_IsLocationInView(location, out_isInView));
	}
	final Windows.Foundation.IAsyncOperation!(bool) TrySetViewBoundsAsync(Windows.Devices.Geolocation.GeoboundingBox bounds, Windows.Foundation.IReference!(Windows.UI.Xaml.Thickness) margin, Windows.UI.Xaml.Controls.Maps.MapAnimationKind animation)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).abi_TrySetViewBoundsAsync(bounds, margin, animation, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TrySetViewWithCenterAsync(Windows.Devices.Geolocation.Geopoint center)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).abi_TrySetViewWithCenterAsync(center, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TrySetViewWithCenterAndZoomAsync(Windows.Devices.Geolocation.Geopoint center, Windows.Foundation.IReference!(double) zoomLevel)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).abi_TrySetViewWithCenterAndZoomAsync(center, zoomLevel, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TrySetViewWithCenterZoomHeadingAndPitchAsync(Windows.Devices.Geolocation.Geopoint center, Windows.Foundation.IReference!(double) zoomLevel, Windows.Foundation.IReference!(double) heading, Windows.Foundation.IReference!(double) desiredPitch)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).abi_TrySetViewWithCenterZoomHeadingAndPitchAsync(center, zoomLevel, heading, desiredPitch, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TrySetViewWithCenterZoomHeadingPitchAndAnimationAsync(Windows.Devices.Geolocation.Geopoint center, Windows.Foundation.IReference!(double) zoomLevel, Windows.Foundation.IReference!(double) heading, Windows.Foundation.IReference!(double) desiredPitch, Windows.UI.Xaml.Controls.Maps.MapAnimationKind animation)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl).abi_TrySetViewWithCenterZoomHeadingPitchAndAnimationAsync(center, zoomLevel, heading, desiredPitch, animation, &_ret));
		return _ret;
	}
	final bool BusinessLandmarksVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).get_BusinessLandmarksVisible(&_ret));
		return _ret;
	}
	final void BusinessLandmarksVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).set_BusinessLandmarksVisible(value));
	}
	final bool TransitFeaturesVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).get_TransitFeaturesVisible(&_ret));
		return _ret;
	}
	final void TransitFeaturesVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).set_TransitFeaturesVisible(value));
	}
	final Windows.UI.Xaml.Controls.Maps.MapPanInteractionMode PanInteractionMode()
	{
		Windows.UI.Xaml.Controls.Maps.MapPanInteractionMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).get_PanInteractionMode(&_ret));
		return _ret;
	}
	final void PanInteractionMode(Windows.UI.Xaml.Controls.Maps.MapPanInteractionMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).set_PanInteractionMode(value));
	}
	final Windows.UI.Xaml.Controls.Maps.MapInteractionMode RotateInteractionMode()
	{
		Windows.UI.Xaml.Controls.Maps.MapInteractionMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).get_RotateInteractionMode(&_ret));
		return _ret;
	}
	final void RotateInteractionMode(Windows.UI.Xaml.Controls.Maps.MapInteractionMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).set_RotateInteractionMode(value));
	}
	final Windows.UI.Xaml.Controls.Maps.MapInteractionMode TiltInteractionMode()
	{
		Windows.UI.Xaml.Controls.Maps.MapInteractionMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).get_TiltInteractionMode(&_ret));
		return _ret;
	}
	final void TiltInteractionMode(Windows.UI.Xaml.Controls.Maps.MapInteractionMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).set_TiltInteractionMode(value));
	}
	final Windows.UI.Xaml.Controls.Maps.MapInteractionMode ZoomInteractionMode()
	{
		Windows.UI.Xaml.Controls.Maps.MapInteractionMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).get_ZoomInteractionMode(&_ret));
		return _ret;
	}
	final void ZoomInteractionMode(Windows.UI.Xaml.Controls.Maps.MapInteractionMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).set_ZoomInteractionMode(value));
	}
	final bool Is3DSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).get_Is3DSupported(&_ret));
		return _ret;
	}
	final bool IsStreetsideSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).get_IsStreetsideSupported(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Maps.MapScene Scene()
	{
		Windows.UI.Xaml.Controls.Maps.MapScene _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).get_Scene(&_ret));
		return _ret;
	}
	final void Scene(Windows.UI.Xaml.Controls.Maps.MapScene value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).set_Scene(value));
	}
	final Windows.UI.Xaml.Controls.Maps.MapCamera ActualCamera()
	{
		Windows.UI.Xaml.Controls.Maps.MapCamera _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).get_ActualCamera(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Maps.MapCamera TargetCamera()
	{
		Windows.UI.Xaml.Controls.Maps.MapCamera _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).get_TargetCamera(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Maps.MapCustomExperience CustomExperience()
	{
		Windows.UI.Xaml.Controls.Maps.MapCustomExperience _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).get_CustomExperience(&_ret));
		return _ret;
	}
	final void CustomExperience(Windows.UI.Xaml.Controls.Maps.MapCustomExperience value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).set_CustomExperience(value));
	}
	final EventRegistrationToken OnMapElementClick(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapElementClickEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MapElementClick(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapElementClickEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapElementClickEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMapElementClick(EventRegistrationToken token)
	{
		Debug.OK(remove_MapElementClick(token));
	}
	final EventRegistrationToken OnMapElementPointerEntered(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapElementPointerEnteredEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MapElementPointerEntered(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapElementPointerEnteredEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapElementPointerEnteredEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMapElementPointerEntered(EventRegistrationToken token)
	{
		Debug.OK(remove_MapElementPointerEntered(token));
	}
	final EventRegistrationToken OnMapElementPointerExited(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapElementPointerExitedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MapElementPointerExited(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapElementPointerExitedEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapElementPointerExitedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMapElementPointerExited(EventRegistrationToken token)
	{
		Debug.OK(remove_MapElementPointerExited(token));
	}
	final EventRegistrationToken OnActualCameraChanged(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapActualCameraChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ActualCameraChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapActualCameraChangedEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapActualCameraChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeActualCameraChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_ActualCameraChanged(token));
	}
	final EventRegistrationToken OnActualCameraChanging(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapActualCameraChangingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ActualCameraChanging(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapActualCameraChangingEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapActualCameraChangingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeActualCameraChanging(EventRegistrationToken token)
	{
		Debug.OK(remove_ActualCameraChanging(token));
	}
	final EventRegistrationToken OnTargetCameraChanged(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapTargetCameraChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TargetCameraChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapTargetCameraChangedEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapTargetCameraChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTargetCameraChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_TargetCameraChanged(token));
	}
	final EventRegistrationToken OnCustomExperienceChanged(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapCustomExperienceChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CustomExperienceChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapCustomExperienceChangedEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapCustomExperienceChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCustomExperienceChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_CustomExperienceChanged(token));
	}
	final void StartContinuousRotate(double rateInDegreesPerSecond)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).abi_StartContinuousRotate(rateInDegreesPerSecond));
	}
	final void StopContinuousRotate()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).abi_StopContinuousRotate());
	}
	final void StartContinuousTilt(double rateInDegreesPerSecond)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).abi_StartContinuousTilt(rateInDegreesPerSecond));
	}
	final void StopContinuousTilt()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).abi_StopContinuousTilt());
	}
	final void StartContinuousZoom(double rateOfChangePerSecond)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).abi_StartContinuousZoom(rateOfChangePerSecond));
	}
	final void StopContinuousZoom()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).abi_StopContinuousZoom());
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryRotateAsync(double degrees)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).abi_TryRotateAsync(degrees, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryRotateToAsync(double angleInDegrees)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).abi_TryRotateToAsync(angleInDegrees, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryTiltAsync(double degrees)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).abi_TryTiltAsync(degrees, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryTiltToAsync(double angleInDegrees)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).abi_TryTiltToAsync(angleInDegrees, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryZoomInAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).abi_TryZoomInAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryZoomOutAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).abi_TryZoomOutAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryZoomToAsync(double zoomLevel)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).abi_TryZoomToAsync(zoomLevel, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TrySetSceneAsync(Windows.UI.Xaml.Controls.Maps.MapScene scene)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).abi_TrySetSceneAsync(scene, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TrySetSceneWithAnimationAsync(Windows.UI.Xaml.Controls.Maps.MapScene scene, Windows.UI.Xaml.Controls.Maps.MapAnimationKind animationKind)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl2).abi_TrySetSceneWithAnimationAsync(scene, animationKind, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnMapRightTapped(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapRightTappedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MapRightTapped(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapRightTappedEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapRightTappedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMapRightTapped(EventRegistrationToken token)
	{
		Debug.OK(remove_MapRightTapped(token));
	}
	final bool BusinessLandmarksEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl4).get_BusinessLandmarksEnabled(&_ret));
		return _ret;
	}
	final void BusinessLandmarksEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl4).set_BusinessLandmarksEnabled(value));
	}
	final bool TransitFeaturesEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl4).get_TransitFeaturesEnabled(&_ret));
		return _ret;
	}
	final void TransitFeaturesEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl4).set_TransitFeaturesEnabled(value));
	}
	final Windows.Devices.Geolocation.Geopath GetVisibleRegion(Windows.UI.Xaml.Controls.Maps.MapVisibleRegionKind region)
	{
		Windows.Devices.Geolocation.Geopath _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl4).abi_GetVisibleRegion(region, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Maps.MapProjection MapProjection()
	{
		Windows.UI.Xaml.Controls.Maps.MapProjection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl5).get_MapProjection(&_ret));
		return _ret;
	}
	final void MapProjection(Windows.UI.Xaml.Controls.Maps.MapProjection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl5).set_MapProjection(value));
	}
	final Windows.UI.Xaml.Controls.Maps.MapStyleSheet StyleSheet()
	{
		Windows.UI.Xaml.Controls.Maps.MapStyleSheet _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl5).get_StyleSheet(&_ret));
		return _ret;
	}
	final void StyleSheet(Windows.UI.Xaml.Controls.Maps.MapStyleSheet value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl5).set_StyleSheet(value));
	}
	final Windows.UI.Xaml.Thickness ViewPadding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl5).get_ViewPadding(&_ret));
		return _ret;
	}
	final void ViewPadding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl5).set_ViewPadding(value));
	}
	final EventRegistrationToken OnMapContextRequested(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapContextRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MapContextRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapContextRequestedEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapContextRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMapContextRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_MapContextRequested(token));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Controls.Maps.MapElement) FindMapElementsAtOffsetWithRadius(Windows.Foundation.Point offset, double radius)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Controls.Maps.MapElement) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl5).abi_FindMapElementsAtOffsetWithRadius(offset, radius, &_ret));
		return _ret;
	}
	final void GetLocationFromOffsetWithReferenceSystem(Windows.Foundation.Point offset, Windows.Devices.Geolocation.AltitudeReferenceSystem desiredReferenceSystem, Windows.Devices.Geolocation.Geopoint* out_location)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl5).abi_GetLocationFromOffsetWithReferenceSystem(offset, desiredReferenceSystem, out_location));
	}
	final void StartContinuousPan(double horizontalPixelsPerSecond, double verticalPixelsPerSecond)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl5).abi_StartContinuousPan(horizontalPixelsPerSecond, verticalPixelsPerSecond));
	}
	final void StopContinuousPan()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl5).abi_StopContinuousPan());
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryPanAsync(double horizontalPixels, double verticalPixels)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl5).abi_TryPanAsync(horizontalPixels, verticalPixels, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryPanToAsync(Windows.Devices.Geolocation.Geopoint location)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControl5).abi_TryPanToAsync(location, &_ret));
		return _ret;
	}
}

interface MapControlBusinessLandmarkClickEventArgs : Windows.UI.Xaml.Controls.Maps.IMapControlBusinessLandmarkClickEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocation) LocalLocations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocation) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControlBusinessLandmarkClickEventArgs).get_LocalLocations(&_ret));
		return _ret;
	}
}

interface MapControlBusinessLandmarkPointerEnteredEventArgs : Windows.UI.Xaml.Controls.Maps.IMapControlBusinessLandmarkPointerEnteredEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocation) LocalLocations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocation) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControlBusinessLandmarkPointerEnteredEventArgs).get_LocalLocations(&_ret));
		return _ret;
	}
}

interface MapControlBusinessLandmarkPointerExitedEventArgs : Windows.UI.Xaml.Controls.Maps.IMapControlBusinessLandmarkPointerExitedEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocation) LocalLocations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocation) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControlBusinessLandmarkPointerExitedEventArgs).get_LocalLocations(&_ret));
		return _ret;
	}
}

interface MapControlBusinessLandmarkRightTappedEventArgs : Windows.UI.Xaml.Controls.Maps.IMapControlBusinessLandmarkRightTappedEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocation) LocalLocations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.Maps.LocalSearch.LocalLocation) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControlBusinessLandmarkRightTappedEventArgs).get_LocalLocations(&_ret));
		return _ret;
	}
}

interface MapControlDataHelper : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Maps.IMapControlDataHelper, Windows.UI.Xaml.Controls.Maps.IMapControlDataHelper2
{
extern(Windows):
	final EventRegistrationToken OnBusinessLandmarkClick(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkClickEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_BusinessLandmarkClick(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkClickEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkClickEventArgs)(fn), &tok));
		return tok;
	}
	final void removeBusinessLandmarkClick(EventRegistrationToken token)
	{
		Debug.OK(remove_BusinessLandmarkClick(token));
	}
	final EventRegistrationToken OnTransitFeatureClick(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlTransitFeatureClickEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TransitFeatureClick(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlTransitFeatureClickEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlTransitFeatureClickEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTransitFeatureClick(EventRegistrationToken token)
	{
		Debug.OK(remove_TransitFeatureClick(token));
	}
	final EventRegistrationToken OnBusinessLandmarkRightTapped(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkRightTappedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_BusinessLandmarkRightTapped(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkRightTappedEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkRightTappedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeBusinessLandmarkRightTapped(EventRegistrationToken token)
	{
		Debug.OK(remove_BusinessLandmarkRightTapped(token));
	}
	final EventRegistrationToken OnTransitFeatureRightTapped(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlTransitFeatureRightTappedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TransitFeatureRightTapped(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlTransitFeatureRightTappedEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlTransitFeatureRightTappedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTransitFeatureRightTapped(EventRegistrationToken token)
	{
		Debug.OK(remove_TransitFeatureRightTapped(token));
	}
	final EventRegistrationToken OnBusinessLandmarkPointerEntered(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkPointerEnteredEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_BusinessLandmarkPointerEntered(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkPointerEnteredEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkPointerEnteredEventArgs)(fn), &tok));
		return tok;
	}
	final void removeBusinessLandmarkPointerEntered(EventRegistrationToken token)
	{
		Debug.OK(remove_BusinessLandmarkPointerEntered(token));
	}
	final EventRegistrationToken OnTransitFeaturePointerEntered(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlTransitFeaturePointerEnteredEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TransitFeaturePointerEntered(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlTransitFeaturePointerEnteredEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlTransitFeaturePointerEnteredEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTransitFeaturePointerEntered(EventRegistrationToken token)
	{
		Debug.OK(remove_TransitFeaturePointerEntered(token));
	}
	final EventRegistrationToken OnBusinessLandmarkPointerExited(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkPointerExitedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_BusinessLandmarkPointerExited(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkPointerExitedEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkPointerExitedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeBusinessLandmarkPointerExited(EventRegistrationToken token)
	{
		Debug.OK(remove_BusinessLandmarkPointerExited(token));
	}
	final EventRegistrationToken OnTransitFeaturePointerExited(void delegate(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlTransitFeaturePointerExitedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TransitFeaturePointerExited(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlTransitFeaturePointerExitedEventArgs), Windows.UI.Xaml.Controls.Maps.MapControl, Windows.UI.Xaml.Controls.Maps.MapControlTransitFeaturePointerExitedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTransitFeaturePointerExited(EventRegistrationToken token)
	{
		Debug.OK(remove_TransitFeaturePointerExited(token));
	}
}

interface MapControlTransitFeatureClickEventArgs : Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeatureClickEventArgs
{
extern(Windows):
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeatureClickEventArgs).get_DisplayName(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geopoint Location()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeatureClickEventArgs).get_Location(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) TransitProperties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeatureClickEventArgs).get_TransitProperties(&_ret));
		return _ret;
	}
}

interface MapControlTransitFeaturePointerEnteredEventArgs : Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeaturePointerEnteredEventArgs
{
extern(Windows):
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeaturePointerEnteredEventArgs).get_DisplayName(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geopoint Location()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeaturePointerEnteredEventArgs).get_Location(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) TransitProperties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeaturePointerEnteredEventArgs).get_TransitProperties(&_ret));
		return _ret;
	}
}

interface MapControlTransitFeaturePointerExitedEventArgs : Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeaturePointerExitedEventArgs
{
extern(Windows):
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeaturePointerExitedEventArgs).get_DisplayName(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geopoint Location()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeaturePointerExitedEventArgs).get_Location(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) TransitProperties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeaturePointerExitedEventArgs).get_TransitProperties(&_ret));
		return _ret;
	}
}

interface MapControlTransitFeatureRightTappedEventArgs : Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeatureRightTappedEventArgs
{
extern(Windows):
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeatureRightTappedEventArgs).get_DisplayName(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geopoint Location()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeatureRightTappedEventArgs).get_Location(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) TransitProperties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeatureRightTappedEventArgs).get_TransitProperties(&_ret));
		return _ret;
	}
}

interface MapCustomExperience : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Maps.IMapCustomExperience
{
}
@makable!(MapCustomExperience, MapCustomExperience, Windows.UI.Xaml.Controls.Maps.IMapCustomExperienceFactory)
class MapCustomExperienceT(Base) : AgileObject!Base, MapCustomExperience
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}

	this() {}
	IInspectable m_inner;
}

interface MapCustomExperienceChangedEventArgs : Windows.UI.Xaml.Controls.Maps.IMapCustomExperienceChangedEventArgs
{
}

interface MapElement : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Maps.IMapElement, Windows.UI.Xaml.Controls.Maps.IMapElement2
{
extern(Windows):
	final INT32 ZIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapElement).get_ZIndex(&_ret));
		return _ret;
	}
	final void ZIndex(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapElement).set_ZIndex(value));
	}
	final bool Visible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapElement).get_Visible(&_ret));
		return _ret;
	}
	final void Visible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapElement).set_Visible(value));
	}
	final INT32 MapTabIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapElement2).get_MapTabIndex(&_ret));
		return _ret;
	}
	final void MapTabIndex(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapElement2).set_MapTabIndex(value));
	}
}
@makable!(MapElement, MapElement, Windows.UI.Xaml.Controls.Maps.IMapElementFactory)
class MapElementT(Base) : AgileObject!Base, MapElement
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_ZIndex(INT32* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapElement).get_ZIndex(return_value); }
	override HRESULT set_ZIndex(INT32 value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapElement).set_ZIndex(value); }
	override HRESULT get_Visible(bool* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapElement).get_Visible(return_value); }
	override HRESULT set_Visible(bool value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapElement).set_Visible(value); }

	override HRESULT get_MapTabIndex(INT32* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapElement2).get_MapTabIndex(return_value); }
	override HRESULT set_MapTabIndex(INT32 value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapElement2).set_MapTabIndex(value); }

	this() {}
	IInspectable m_inner;
}

interface MapElementClickEventArgs : Windows.UI.Xaml.Controls.Maps.IMapElementClickEventArgs
{
extern(Windows):
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapElementClickEventArgs).get_Position(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geopoint Location()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapElementClickEventArgs).get_Location(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.Maps.MapElement) MapElements()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.Maps.MapElement) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapElementClickEventArgs).get_MapElements(&_ret));
		return _ret;
	}
}

interface MapElementPointerEnteredEventArgs : Windows.UI.Xaml.Controls.Maps.IMapElementPointerEnteredEventArgs
{
extern(Windows):
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapElementPointerEnteredEventArgs).get_Position(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geopoint Location()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapElementPointerEnteredEventArgs).get_Location(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Maps.MapElement MapElement()
	{
		Windows.UI.Xaml.Controls.Maps.MapElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapElementPointerEnteredEventArgs).get_MapElement(&_ret));
		return _ret;
	}
}

interface MapElementPointerExitedEventArgs : Windows.UI.Xaml.Controls.Maps.IMapElementPointerExitedEventArgs
{
extern(Windows):
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapElementPointerExitedEventArgs).get_Position(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geopoint Location()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapElementPointerExitedEventArgs).get_Location(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Maps.MapElement MapElement()
	{
		Windows.UI.Xaml.Controls.Maps.MapElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapElementPointerExitedEventArgs).get_MapElement(&_ret));
		return _ret;
	}
}

interface MapIcon : Windows.UI.Xaml.Controls.Maps.MapElement, Windows.UI.Xaml.Controls.Maps.IMapIcon, Windows.UI.Xaml.Controls.Maps.IMapIcon2
{
extern(Windows):
	final Windows.Devices.Geolocation.Geopoint Location()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapIcon).get_Location(&_ret));
		return _ret;
	}
	final void Location(Windows.Devices.Geolocation.Geopoint value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapIcon).set_Location(value));
	}
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapIcon).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapIcon).set_Title(value));
	}
	final Windows.Foundation.Point NormalizedAnchorPoint()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapIcon).get_NormalizedAnchorPoint(&_ret));
		return _ret;
	}
	final void NormalizedAnchorPoint(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapIcon).set_NormalizedAnchorPoint(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Image()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapIcon).get_Image(&_ret));
		return _ret;
	}
	final void Image(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapIcon).set_Image(value));
	}
	final Windows.UI.Xaml.Controls.Maps.MapElementCollisionBehavior CollisionBehaviorDesired()
	{
		Windows.UI.Xaml.Controls.Maps.MapElementCollisionBehavior _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapIcon2).get_CollisionBehaviorDesired(&_ret));
		return _ret;
	}
	final void CollisionBehaviorDesired(Windows.UI.Xaml.Controls.Maps.MapElementCollisionBehavior value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapIcon2).set_CollisionBehaviorDesired(value));
	}
}

interface MapInputEventArgs : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Maps.IMapInputEventArgs
{
extern(Windows):
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapInputEventArgs).get_Position(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geopoint Location()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapInputEventArgs).get_Location(&_ret));
		return _ret;
	}
}

interface MapItemsControl : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Maps.IMapItemsControl
{
extern(Windows):
	final IInspectable ItemsSource()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapItemsControl).get_ItemsSource(&_ret));
		return _ret;
	}
	final void ItemsSource(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapItemsControl).set_ItemsSource(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject) Items()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapItemsControl).get_Items(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DataTemplate ItemTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapItemsControl).get_ItemTemplate(&_ret));
		return _ret;
	}
	final void ItemTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapItemsControl).set_ItemTemplate(value));
	}
}

interface MapPolygon : Windows.UI.Xaml.Controls.Maps.MapElement, Windows.UI.Xaml.Controls.Maps.IMapPolygon, Windows.UI.Xaml.Controls.Maps.IMapPolygon2
{
extern(Windows):
	final Windows.Devices.Geolocation.Geopath Path()
	{
		Windows.Devices.Geolocation.Geopath _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolygon).get_Path(&_ret));
		return _ret;
	}
	final void Path(Windows.Devices.Geolocation.Geopath value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolygon).set_Path(value));
	}
	final Windows.UI.Color StrokeColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolygon).get_StrokeColor(&_ret));
		return _ret;
	}
	final void StrokeColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolygon).set_StrokeColor(value));
	}
	final double StrokeThickness()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolygon).get_StrokeThickness(&_ret));
		return _ret;
	}
	final void StrokeThickness(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolygon).set_StrokeThickness(value));
	}
	final bool StrokeDashed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolygon).get_StrokeDashed(&_ret));
		return _ret;
	}
	final void StrokeDashed(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolygon).set_StrokeDashed(value));
	}
	final Windows.UI.Color FillColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolygon).get_FillColor(&_ret));
		return _ret;
	}
	final void FillColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolygon).set_FillColor(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Devices.Geolocation.Geopath) Paths()
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.Geolocation.Geopath) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolygon2).get_Paths(&_ret));
		return _ret;
	}
}

interface MapPolyline : Windows.UI.Xaml.Controls.Maps.MapElement, Windows.UI.Xaml.Controls.Maps.IMapPolyline
{
extern(Windows):
	final Windows.Devices.Geolocation.Geopath Path()
	{
		Windows.Devices.Geolocation.Geopath _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolyline).get_Path(&_ret));
		return _ret;
	}
	final void Path(Windows.Devices.Geolocation.Geopath value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolyline).set_Path(value));
	}
	final Windows.UI.Color StrokeColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolyline).get_StrokeColor(&_ret));
		return _ret;
	}
	final void StrokeColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolyline).set_StrokeColor(value));
	}
	final double StrokeThickness()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolyline).get_StrokeThickness(&_ret));
		return _ret;
	}
	final void StrokeThickness(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolyline).set_StrokeThickness(value));
	}
	final bool StrokeDashed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolyline).get_StrokeDashed(&_ret));
		return _ret;
	}
	final void StrokeDashed(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapPolyline).set_StrokeDashed(value));
	}
}

interface MapRightTappedEventArgs : Windows.UI.Xaml.Controls.Maps.IMapRightTappedEventArgs
{
extern(Windows):
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapRightTappedEventArgs).get_Position(&_ret));
		return _ret;
	}
	final Windows.Devices.Geolocation.Geopoint Location()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapRightTappedEventArgs).get_Location(&_ret));
		return _ret;
	}
}

interface MapRouteView : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Maps.IMapRouteView
{
extern(Windows):
	final Windows.UI.Color RouteColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapRouteView).get_RouteColor(&_ret));
		return _ret;
	}
	final void RouteColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapRouteView).set_RouteColor(value));
	}
	final Windows.UI.Color OutlineColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapRouteView).get_OutlineColor(&_ret));
		return _ret;
	}
	final void OutlineColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapRouteView).set_OutlineColor(value));
	}
	final Windows.Services.Maps.MapRoute Route()
	{
		Windows.Services.Maps.MapRoute _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapRouteView).get_Route(&_ret));
		return _ret;
	}
}
@makable!(MapRouteView, MapRouteView, Windows.UI.Xaml.Controls.Maps.IMapRouteViewFactory)
class MapRouteViewT(Base) : AgileObject!Base, MapRouteView
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_RouteColor(Windows.UI.Color* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapRouteView).get_RouteColor(return_value); }
	override HRESULT set_RouteColor(Windows.UI.Color value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapRouteView).set_RouteColor(value); }
	override HRESULT get_OutlineColor(Windows.UI.Color* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapRouteView).get_OutlineColor(return_value); }
	override HRESULT set_OutlineColor(Windows.UI.Color value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapRouteView).set_OutlineColor(value); }
	override HRESULT get_Route(Windows.Services.Maps.MapRoute* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapRouteView).get_Route(return_value); }

	this() {}
	IInspectable m_inner;
}

interface MapScene : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Maps.IMapScene
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Maps.MapCamera TargetCamera()
	{
		Windows.UI.Xaml.Controls.Maps.MapCamera _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapScene).get_TargetCamera(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnTargetCameraChanged(void delegate(Windows.UI.Xaml.Controls.Maps.MapScene, Windows.UI.Xaml.Controls.Maps.MapTargetCameraChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TargetCameraChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Maps.MapScene, Windows.UI.Xaml.Controls.Maps.MapTargetCameraChangedEventArgs), Windows.UI.Xaml.Controls.Maps.MapScene, Windows.UI.Xaml.Controls.Maps.MapTargetCameraChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTargetCameraChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_TargetCameraChanged(token));
	}
}

interface MapStyleSheet : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Maps.IMapStyleSheet
{
}

interface MapTargetCameraChangedEventArgs : Windows.UI.Xaml.Controls.Maps.IMapTargetCameraChangedEventArgs, Windows.UI.Xaml.Controls.Maps.IMapTargetCameraChangedEventArgs2
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Maps.MapCamera Camera()
	{
		Windows.UI.Xaml.Controls.Maps.MapCamera _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTargetCameraChangedEventArgs).get_Camera(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Maps.MapCameraChangeReason ChangeReason()
	{
		Windows.UI.Xaml.Controls.Maps.MapCameraChangeReason _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTargetCameraChangedEventArgs2).get_ChangeReason(&_ret));
		return _ret;
	}
}

interface MapTileBitmapRequest : Windows.UI.Xaml.Controls.Maps.IMapTileBitmapRequest
{
extern(Windows):
	final Windows.Storage.Streams.IRandomAccessStreamReference PixelData()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileBitmapRequest).get_PixelData(&_ret));
		return _ret;
	}
	final void PixelData(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileBitmapRequest).set_PixelData(value));
	}
	final Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequestDeferral GetDeferral()
	{
		Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequestDeferral _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileBitmapRequest).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface MapTileBitmapRequestDeferral : Windows.UI.Xaml.Controls.Maps.IMapTileBitmapRequestDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileBitmapRequestDeferral).abi_Complete());
	}
}

interface MapTileBitmapRequestedEventArgs : Windows.UI.Xaml.Controls.Maps.IMapTileBitmapRequestedEventArgs
{
extern(Windows):
	final INT32 X()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileBitmapRequestedEventArgs).get_X(&_ret));
		return _ret;
	}
	final INT32 Y()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileBitmapRequestedEventArgs).get_Y(&_ret));
		return _ret;
	}
	final INT32 ZoomLevel()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileBitmapRequestedEventArgs).get_ZoomLevel(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequest Request()
	{
		Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequest _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileBitmapRequestedEventArgs).get_Request(&_ret));
		return _ret;
	}
}

interface MapTileDataSource : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Maps.IMapTileDataSource
{
}
@makable!(MapTileDataSource, MapTileDataSource, Windows.UI.Xaml.Controls.Maps.IMapTileDataSourceFactory)
class MapTileDataSourceT(Base) : AgileObject!Base, MapTileDataSource
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}

	this() {}
	IInspectable m_inner;
}

interface MapTileSource : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Maps.IMapTileSource
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Maps.MapTileDataSource DataSource()
	{
		Windows.UI.Xaml.Controls.Maps.MapTileDataSource _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_DataSource(&_ret));
		return _ret;
	}
	final void DataSource(Windows.UI.Xaml.Controls.Maps.MapTileDataSource value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_DataSource(value));
	}
	final Windows.UI.Xaml.Controls.Maps.MapTileLayer Layer()
	{
		Windows.UI.Xaml.Controls.Maps.MapTileLayer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_Layer(&_ret));
		return _ret;
	}
	final void Layer(Windows.UI.Xaml.Controls.Maps.MapTileLayer value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_Layer(value));
	}
	final Windows.UI.Xaml.Controls.Maps.MapZoomLevelRange ZoomLevelRange()
	{
		Windows.UI.Xaml.Controls.Maps.MapZoomLevelRange _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_ZoomLevelRange(&_ret));
		return _ret;
	}
	final void ZoomLevelRange(Windows.UI.Xaml.Controls.Maps.MapZoomLevelRange value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_ZoomLevelRange(value));
	}
	final Windows.Devices.Geolocation.GeoboundingBox Bounds()
	{
		Windows.Devices.Geolocation.GeoboundingBox _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_Bounds(&_ret));
		return _ret;
	}
	final void Bounds(Windows.Devices.Geolocation.GeoboundingBox value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_Bounds(value));
	}
	final bool AllowOverstretch()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_AllowOverstretch(&_ret));
		return _ret;
	}
	final void AllowOverstretch(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_AllowOverstretch(value));
	}
	final bool IsFadingEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_IsFadingEnabled(&_ret));
		return _ret;
	}
	final void IsFadingEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_IsFadingEnabled(value));
	}
	final bool IsTransparencyEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_IsTransparencyEnabled(&_ret));
		return _ret;
	}
	final void IsTransparencyEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_IsTransparencyEnabled(value));
	}
	final bool IsRetryEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_IsRetryEnabled(&_ret));
		return _ret;
	}
	final void IsRetryEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_IsRetryEnabled(value));
	}
	final INT32 ZIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_ZIndex(&_ret));
		return _ret;
	}
	final void ZIndex(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_ZIndex(value));
	}
	final INT32 TilePixelSize()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_TilePixelSize(&_ret));
		return _ret;
	}
	final void TilePixelSize(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_TilePixelSize(value));
	}
	final bool Visible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_Visible(&_ret));
		return _ret;
	}
	final void Visible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_Visible(value));
	}
}
@makable!(MapTileSource, MapTileSource, Windows.UI.Xaml.Controls.Maps.IMapTileSourceFactory)
class MapTileSourceT(Base) : AgileObject!Base, MapTileSource
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_DataSource(Windows.UI.Xaml.Controls.Maps.MapTileDataSource* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_DataSource(return_value); }
	override HRESULT set_DataSource(Windows.UI.Xaml.Controls.Maps.MapTileDataSource value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_DataSource(value); }
	override HRESULT get_Layer(Windows.UI.Xaml.Controls.Maps.MapTileLayer* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_Layer(return_value); }
	override HRESULT set_Layer(Windows.UI.Xaml.Controls.Maps.MapTileLayer value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_Layer(value); }
	override HRESULT get_ZoomLevelRange(Windows.UI.Xaml.Controls.Maps.MapZoomLevelRange* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_ZoomLevelRange(return_value); }
	override HRESULT set_ZoomLevelRange(Windows.UI.Xaml.Controls.Maps.MapZoomLevelRange value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_ZoomLevelRange(value); }
	override HRESULT get_Bounds(Windows.Devices.Geolocation.GeoboundingBox* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_Bounds(return_value); }
	override HRESULT set_Bounds(Windows.Devices.Geolocation.GeoboundingBox value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_Bounds(value); }
	override HRESULT get_AllowOverstretch(bool* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_AllowOverstretch(return_value); }
	override HRESULT set_AllowOverstretch(bool value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_AllowOverstretch(value); }
	override HRESULT get_IsFadingEnabled(bool* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_IsFadingEnabled(return_value); }
	override HRESULT set_IsFadingEnabled(bool value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_IsFadingEnabled(value); }
	override HRESULT get_IsTransparencyEnabled(bool* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_IsTransparencyEnabled(return_value); }
	override HRESULT set_IsTransparencyEnabled(bool value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_IsTransparencyEnabled(value); }
	override HRESULT get_IsRetryEnabled(bool* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_IsRetryEnabled(return_value); }
	override HRESULT set_IsRetryEnabled(bool value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_IsRetryEnabled(value); }
	override HRESULT get_ZIndex(INT32* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_ZIndex(return_value); }
	override HRESULT set_ZIndex(INT32 value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_ZIndex(value); }
	override HRESULT get_TilePixelSize(INT32* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_TilePixelSize(return_value); }
	override HRESULT set_TilePixelSize(INT32 value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_TilePixelSize(value); }
	override HRESULT get_Visible(bool* return_value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).get_Visible(return_value); }
	override HRESULT set_Visible(bool value) { return m_inner.as!(Windows.UI.Xaml.Controls.Maps.IMapTileSource).set_Visible(value); }

	this() {}
	IInspectable m_inner;
}

interface MapTileUriRequest : Windows.UI.Xaml.Controls.Maps.IMapTileUriRequest
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileUriRequest).get_Uri(&_ret));
		return _ret;
	}
	final void Uri(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileUriRequest).set_Uri(value));
	}
	final Windows.UI.Xaml.Controls.Maps.MapTileUriRequestDeferral GetDeferral()
	{
		Windows.UI.Xaml.Controls.Maps.MapTileUriRequestDeferral _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileUriRequest).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface MapTileUriRequestDeferral : Windows.UI.Xaml.Controls.Maps.IMapTileUriRequestDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileUriRequestDeferral).abi_Complete());
	}
}

interface MapTileUriRequestedEventArgs : Windows.UI.Xaml.Controls.Maps.IMapTileUriRequestedEventArgs
{
extern(Windows):
	final INT32 X()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileUriRequestedEventArgs).get_X(&_ret));
		return _ret;
	}
	final INT32 Y()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileUriRequestedEventArgs).get_Y(&_ret));
		return _ret;
	}
	final INT32 ZoomLevel()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileUriRequestedEventArgs).get_ZoomLevel(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Maps.MapTileUriRequest Request()
	{
		Windows.UI.Xaml.Controls.Maps.MapTileUriRequest _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IMapTileUriRequestedEventArgs).get_Request(&_ret));
		return _ret;
	}
}

interface StreetsideExperience : Windows.UI.Xaml.Controls.Maps.MapCustomExperience, Windows.UI.Xaml.Controls.Maps.IStreetsideExperience
{
extern(Windows):
	final bool AddressTextVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IStreetsideExperience).get_AddressTextVisible(&_ret));
		return _ret;
	}
	final void AddressTextVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IStreetsideExperience).set_AddressTextVisible(value));
	}
	final bool CursorVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IStreetsideExperience).get_CursorVisible(&_ret));
		return _ret;
	}
	final void CursorVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IStreetsideExperience).set_CursorVisible(value));
	}
	final bool OverviewMapVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IStreetsideExperience).get_OverviewMapVisible(&_ret));
		return _ret;
	}
	final void OverviewMapVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IStreetsideExperience).set_OverviewMapVisible(value));
	}
	final bool StreetLabelsVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IStreetsideExperience).get_StreetLabelsVisible(&_ret));
		return _ret;
	}
	final void StreetLabelsVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IStreetsideExperience).set_StreetLabelsVisible(value));
	}
	final bool ExitButtonVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IStreetsideExperience).get_ExitButtonVisible(&_ret));
		return _ret;
	}
	final void ExitButtonVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IStreetsideExperience).set_ExitButtonVisible(value));
	}
	final bool ZoomButtonsVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IStreetsideExperience).get_ZoomButtonsVisible(&_ret));
		return _ret;
	}
	final void ZoomButtonsVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IStreetsideExperience).set_ZoomButtonsVisible(value));
	}
}

interface StreetsidePanorama : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Maps.IStreetsidePanorama
{
extern(Windows):
	final Windows.Devices.Geolocation.Geopoint Location()
	{
		Windows.Devices.Geolocation.Geopoint _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Maps.IStreetsidePanorama).get_Location(&_ret));
		return _ret;
	}
}

enum MapAnimationKind
{
	Default = 0,
	None = 1,
	Linear = 2,
	Bow = 3
}

enum MapCameraChangeReason
{
	System = 0,
	UserInteraction = 1,
	Programmatic = 2
}

enum MapColorScheme
{
	Light = 0,
	Dark = 1
}

enum MapElementCollisionBehavior
{
	Hide = 0,
	RemainVisible = 1
}

enum MapInteractionMode
{
	Auto = 0,
	Disabled = 1,
	GestureOnly = 2,
	PointerAndKeyboard = 2,
	ControlOnly = 3,
	GestureAndControl = 4,
	PointerKeyboardAndControl = 4,
	PointerOnly = 5
}

enum MapLoadingStatus
{
	Loading = 0,
	Loaded = 1,
	DataUnavailable = 2
}

enum MapPanInteractionMode
{
	Auto = 0,
	Disabled = 1
}

enum MapProjection
{
	WebMercator = 0,
	Globe = 1
}

enum MapStyle
{
	None = 0,
	Road = 1,
	Aerial = 2,
	AerialWithRoads = 3,
	Terrain = 4,
	Aerial3D = 5,
	Aerial3DWithRoads = 6,
	Custom = 7
}

enum MapTileLayer
{
	LabelOverlay = 0,
	RoadOverlay = 1,
	AreaOverlay = 2,
	BackgroundOverlay = 3,
	BackgroundReplacement = 4
}

enum MapVisibleRegionKind
{
	Near = 0,
	Full = 1
}

enum MapWatermarkMode
{
	Automatic = 0,
	On = 1
}