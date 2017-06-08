module Windows.UI.Xaml.Media;

import dwinrt;

struct Matrix
{
	double M11;
	double M12;
	double M21;
	double M22;
	double OffsetX;
	double OffsetY;
}

@uuid("08e9a257-ae05-489b-8839-28c6225d2349")
interface RateChangedRoutedEventHandler
{
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Media.RateChangedRoutedEventArgs e);
}

@uuid("72e2fa9c-6dea-4cbe-a159-06ce95fbeced")
interface TimelineMarkerRoutedEventHandler
{
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Media.TimelineMarkerRoutedEventArgs e);
}

@uuid("07940c5f-63fb-4469-91be-f1097c168052")
@WinrtFactory("Windows.UI.Xaml.Media.ArcSegment")
interface IArcSegment : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Point(Windows.Foundation.Point* return_value);
	HRESULT set_Point(Windows.Foundation.Point value);
	HRESULT get_Size(Windows.Foundation.Size* return_value);
	HRESULT set_Size(Windows.Foundation.Size value);
	HRESULT get_RotationAngle(double* return_value);
	HRESULT set_RotationAngle(double value);
	HRESULT get_IsLargeArc(bool* return_value);
	HRESULT set_IsLargeArc(bool value);
	HRESULT get_SweepDirection(Windows.UI.Xaml.Media.SweepDirection* return_value);
	HRESULT set_SweepDirection(Windows.UI.Xaml.Media.SweepDirection value);
}

@uuid("82348f6e-8a69-4204-9c12-7207df317643")
@WinrtFactory("Windows.UI.Xaml.Media.ArcSegment")
interface IArcSegmentStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PointProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SizeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RotationAngleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsLargeArcProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SweepDirectionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("af4bb9ee-8984-49b7-81df-3f35994b95eb")
@WinrtFactory("Windows.UI.Xaml.Media.BezierSegment")
interface IBezierSegment : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Point1(Windows.Foundation.Point* return_value);
	HRESULT set_Point1(Windows.Foundation.Point value);
	HRESULT get_Point2(Windows.Foundation.Point* return_value);
	HRESULT set_Point2(Windows.Foundation.Point value);
	HRESULT get_Point3(Windows.Foundation.Point* return_value);
	HRESULT set_Point3(Windows.Foundation.Point value);
}

@uuid("c0287bac-1410-4530-8452-1c9d0ad1f341")
@WinrtFactory("Windows.UI.Xaml.Media.BezierSegment")
interface IBezierSegmentStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Point1Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_Point2Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_Point3Property(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("8806a321-1e06-422c-a1cc-01696559e021")
@WinrtFactory("Windows.UI.Xaml.Media.Brush")
interface IBrush : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Opacity(double* return_value);
	HRESULT set_Opacity(double value);
	HRESULT get_Transform(Windows.UI.Xaml.Media.Transform* return_value);
	HRESULT set_Transform(Windows.UI.Xaml.Media.Transform value);
	HRESULT get_RelativeTransform(Windows.UI.Xaml.Media.Transform* return_value);
	HRESULT set_RelativeTransform(Windows.UI.Xaml.Media.Transform value);
}

@uuid("399658a2-14fb-4b8f-83e6-6e3dab12069b")
@WinrtFactory("Windows.UI.Xaml.Media.Brush")
interface IBrushFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Brush* return_instance);
}

@uuid("e70c3102-0225-47f5-b22e-0467619f6a22")
@WinrtFactory("Windows.UI.Xaml.Media.Brush")
interface IBrushStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OpacityProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TransformProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RelativeTransformProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("eb1f8c5b-0abb-4e70-b8a8-620d0d953ab2")
@WinrtFactory("Windows.UI.Xaml.Media.CacheMode")
interface ICacheModeFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.CacheMode* return_instance);
}

@uuid("c8a4385b-f24a-4701-a265-a78846f142b9")
@WinrtFactory("Windows.UI.Xaml.Media.CompositeTransform")
interface ICompositeTransform : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CenterX(double* return_value);
	HRESULT set_CenterX(double value);
	HRESULT get_CenterY(double* return_value);
	HRESULT set_CenterY(double value);
	HRESULT get_ScaleX(double* return_value);
	HRESULT set_ScaleX(double value);
	HRESULT get_ScaleY(double* return_value);
	HRESULT set_ScaleY(double value);
	HRESULT get_SkewX(double* return_value);
	HRESULT set_SkewX(double value);
	HRESULT get_SkewY(double* return_value);
	HRESULT set_SkewY(double value);
	HRESULT get_Rotation(double* return_value);
	HRESULT set_Rotation(double value);
	HRESULT get_TranslateX(double* return_value);
	HRESULT set_TranslateX(double value);
	HRESULT get_TranslateY(double* return_value);
	HRESULT set_TranslateY(double value);
}

@uuid("2f190c08-8266-496f-9653-a18bd4f836aa")
@WinrtFactory("Windows.UI.Xaml.Media.CompositeTransform")
interface ICompositeTransformStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CenterXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CenterYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ScaleXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ScaleYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SkewXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SkewYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RotationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TranslateXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TranslateYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2b1af03d-1ed2-4b59-bd00-7594ee92832b")
@WinrtFactory("Windows.UI.Xaml.Media.CompositionTarget")
interface ICompositionTargetStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_Rendering(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Rendering(EventRegistrationToken token);
	HRESULT add_SurfaceContentsLost(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_SurfaceContentsLost(EventRegistrationToken token);
}

@uuid("d4f61bba-4ea2-40d6-aa6c-8d38aa87651f")
@WinrtFactory("Windows.UI.Xaml.Media.EllipseGeometry")
interface IEllipseGeometry : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Center(Windows.Foundation.Point* return_value);
	HRESULT set_Center(Windows.Foundation.Point value);
	HRESULT get_RadiusX(double* return_value);
	HRESULT set_RadiusX(double value);
	HRESULT get_RadiusY(double* return_value);
	HRESULT set_RadiusY(double value);
}

@uuid("1744db47-f635-4b16-aee6-e052a65defb2")
@WinrtFactory("Windows.UI.Xaml.Media.EllipseGeometry")
interface IEllipseGeometryStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CenterProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RadiusXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RadiusYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("92467e64-d66a-4cf4-9322-3d23b3c0c361")
@WinrtFactory("Windows.UI.Xaml.Media.FontFamily")
interface IFontFamily : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Source(HSTRING* return_value);
}

@uuid("d5603377-3dae-4dcd-af09-f9498e9ec659")
@WinrtFactory("Windows.UI.Xaml.Media.FontFamily")
interface IFontFamilyFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithName(HSTRING familyName, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.FontFamily* return_instance);
}

@uuid("52ad7af9-37e6-4297-a238-97fb6a408d9e")
@WinrtFactory("Windows.UI.Xaml.Media.FontFamily")
interface IFontFamilyStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_XamlAutoFontFamily(Windows.UI.Xaml.Media.FontFamily* return_value);
}

@uuid("a06798b7-a2ec-415f-ade2-eade9333f2c7")
@WinrtFactory("Windows.UI.Xaml.Media.GeneralTransform")
interface IGeneralTransform : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Inverse(Windows.UI.Xaml.Media.GeneralTransform* return_value);
	HRESULT abi_TransformPoint(Windows.Foundation.Point point, Windows.Foundation.Point* return_returnValue);
	HRESULT abi_TryTransform(Windows.Foundation.Point inPoint, Windows.Foundation.Point* out_outPoint, bool* return_returnValue);
	HRESULT abi_TransformBounds(Windows.Foundation.Rect rect, Windows.Foundation.Rect* return_returnValue);
}

@uuid("7a25c930-29c4-4e31-b6f9-dedd52e4df1b")
@WinrtFactory("Windows.UI.Xaml.Media.GeneralTransform")
interface IGeneralTransformFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.GeneralTransform* return_instance);
}

@uuid("4f121083-24cf-4524-90ad-8a42b1c12783")
@WinrtFactory("Windows.UI.Xaml.Media.GeneralTransform")
interface IGeneralTransformOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InverseCore(Windows.UI.Xaml.Media.GeneralTransform* return_value);
	HRESULT abi_TryTransformCore(Windows.Foundation.Point inPoint, Windows.Foundation.Point* out_outPoint, bool* return_returnValue);
	HRESULT abi_TransformBoundsCore(Windows.Foundation.Rect rect, Windows.Foundation.Rect* return_returnValue);
}

@uuid("fa123889-0acd-417b-b62d-5ca1bf4dfc0e")
@WinrtFactory("Windows.UI.Xaml.Media.Geometry")
interface IGeometry : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Transform(Windows.UI.Xaml.Media.Transform* return_value);
	HRESULT set_Transform(Windows.UI.Xaml.Media.Transform value);
	HRESULT get_Bounds(Windows.Foundation.Rect* return_value);
}

@uuid("55225a61-8677-4c8c-8e46-ee3dc355114b")
@WinrtFactory("Windows.UI.Xaml.Media.GeometryGroup")
interface IGeometryGroup : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FillRule(Windows.UI.Xaml.Media.FillRule* return_value);
	HRESULT set_FillRule(Windows.UI.Xaml.Media.FillRule value);
	HRESULT get_Children(Windows.UI.Xaml.Media.GeometryCollection* return_value);
	HRESULT set_Children(Windows.UI.Xaml.Media.GeometryCollection value);
}

@uuid("56c955f4-8496-4bb6-abf0-617b1fe78b45")
@WinrtFactory("Windows.UI.Xaml.Media.GeometryGroup")
interface IGeometryGroupStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FillRuleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ChildrenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("7a70aa8c-0b06-465f-b637-9a47e5a70111")
@WinrtFactory("Windows.UI.Xaml.Media.Geometry")
interface IGeometryStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Empty(Windows.UI.Xaml.Media.Geometry* return_value);
	HRESULT get_StandardFlatteningTolerance(double* return_value);
	HRESULT get_TransformProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78")
@WinrtFactory("Windows.UI.Xaml.Media.GradientBrush")
interface IGradientBrush : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SpreadMethod(Windows.UI.Xaml.Media.GradientSpreadMethod* return_value);
	HRESULT set_SpreadMethod(Windows.UI.Xaml.Media.GradientSpreadMethod value);
	HRESULT get_MappingMode(Windows.UI.Xaml.Media.BrushMappingMode* return_value);
	HRESULT set_MappingMode(Windows.UI.Xaml.Media.BrushMappingMode value);
	HRESULT get_ColorInterpolationMode(Windows.UI.Xaml.Media.ColorInterpolationMode* return_value);
	HRESULT set_ColorInterpolationMode(Windows.UI.Xaml.Media.ColorInterpolationMode value);
	HRESULT get_GradientStops(Windows.UI.Xaml.Media.GradientStopCollection* return_value);
	HRESULT set_GradientStops(Windows.UI.Xaml.Media.GradientStopCollection value);
}

@uuid("ed4779ca-45bd-4131-b625-be86e07c6112")
@WinrtFactory("Windows.UI.Xaml.Media.GradientBrush")
interface IGradientBrushFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.GradientBrush* return_instance);
}

@uuid("961661f9-8bb4-4e6c-b923-b5d787e0f1a9")
@WinrtFactory("Windows.UI.Xaml.Media.GradientBrush")
interface IGradientBrushStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SpreadMethodProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MappingModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ColorInterpolationModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_GradientStopsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("665f44fe-2e59-4c4a-ab53-076a100ccd81")
@WinrtFactory("Windows.UI.Xaml.Media.GradientStop")
interface IGradientStop : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Color(Windows.UI.Color* return_value);
	HRESULT set_Color(Windows.UI.Color value);
	HRESULT get_Offset(double* return_value);
	HRESULT set_Offset(double value);
}

@uuid("602a6d75-6193-4fe5-8e82-c7c6f6febafd")
@WinrtFactory("Windows.UI.Xaml.Media.GradientStop")
interface IGradientStopStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ColorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9fd11377-c12a-4493-bf7d-f3a8ad74b554")
@WinrtFactory("Windows.UI.Xaml.Media.ImageBrush")
interface IImageBrush : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ImageSource(Windows.UI.Xaml.Media.ImageSource* return_value);
	HRESULT set_ImageSource(Windows.UI.Xaml.Media.ImageSource value);
	HRESULT add_ImageFailed(Windows.UI.Xaml.ExceptionRoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ImageFailed(EventRegistrationToken token);
	HRESULT add_ImageOpened(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ImageOpened(EventRegistrationToken token);
}

@uuid("1255b1b2-dd18-42e5-892c-eae30c305b8c")
@WinrtFactory("Windows.UI.Xaml.Media.ImageBrush")
interface IImageBrushStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ImageSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("30edd4a2-8fc5-40af-a7a2-c27fe7aa1363")
@WinrtFactory("Windows.UI.Xaml.Media.LineGeometry")
interface ILineGeometry : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StartPoint(Windows.Foundation.Point* return_value);
	HRESULT set_StartPoint(Windows.Foundation.Point value);
	HRESULT get_EndPoint(Windows.Foundation.Point* return_value);
	HRESULT set_EndPoint(Windows.Foundation.Point value);
}

@uuid("578ae763-5562-4ee4-8703-ea4036d891e3")
@WinrtFactory("Windows.UI.Xaml.Media.LineGeometry")
interface ILineGeometryStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StartPointProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_EndPointProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ef6a2e25-3ff0-4420-a411-7182a4cecb15")
@WinrtFactory("Windows.UI.Xaml.Media.LineSegment")
interface ILineSegment : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Point(Windows.Foundation.Point* return_value);
	HRESULT set_Point(Windows.Foundation.Point value);
}

@uuid("9fcab141-04c0-4afb-87b3-e800b969b894")
@WinrtFactory("Windows.UI.Xaml.Media.LineSegment")
interface ILineSegmentStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PointProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("8e96d16b-bb84-4c6f-9dbf-9d6c5c6d9c39")
@WinrtFactory("Windows.UI.Xaml.Media.LinearGradientBrush")
interface ILinearGradientBrush : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StartPoint(Windows.Foundation.Point* return_value);
	HRESULT set_StartPoint(Windows.Foundation.Point value);
	HRESULT get_EndPoint(Windows.Foundation.Point* return_value);
	HRESULT set_EndPoint(Windows.Foundation.Point value);
}

@uuid("0ae0861c-1e7a-4fed-9857-ea8caa798490")
@WinrtFactory("Windows.UI.Xaml.Media.LinearGradientBrush")
interface ILinearGradientBrushFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithGradientStopCollectionAndAngle(Windows.UI.Xaml.Media.GradientStopCollection gradientStopCollection, double angle, Windows.UI.Xaml.Media.LinearGradientBrush* return_instance);
}

@uuid("7af6e504-2dc3-40e3-be0b-b314c13cb991")
@WinrtFactory("Windows.UI.Xaml.Media.LinearGradientBrush")
interface ILinearGradientBrushStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StartPointProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_EndPointProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("1ac60b1e-7837-4489-b3e5-d0d5ad0a56c4")
@WinrtFactory("Windows.UI.Xaml.Media.LoadedImageSourceLoadCompletedEventArgs")
interface ILoadedImageSourceLoadCompletedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.UI.Xaml.Media.LoadedImageSourceLoadStatus* return_value);
}

@uuid("050c8313-6737-45ba-8531-33094febef55")
@WinrtFactory("Windows.UI.Xaml.Media.LoadedImageSurface")
interface ILoadedImageSurface : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DecodedPhysicalSize(Windows.Foundation.Size* return_value);
	HRESULT get_DecodedSize(Windows.Foundation.Size* return_value);
	HRESULT get_NaturalSize(Windows.Foundation.Size* return_value);
	HRESULT add_LoadCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Media.LoadedImageSurface, Windows.UI.Xaml.Media.LoadedImageSourceLoadCompletedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_LoadCompleted(EventRegistrationToken token);
}

@uuid("22b8edf6-84ad-40ab-937d-4871613e765d")
@WinrtFactory("Windows.UI.Xaml.Media.LoadedImageSurface")
interface ILoadedImageSurfaceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_StartLoadFromUriWithSize(Windows.Foundation.Uri uri, Windows.Foundation.Size desiredMaxSize, Windows.UI.Xaml.Media.LoadedImageSurface* return_returnValue);
	HRESULT abi_StartLoadFromUri(Windows.Foundation.Uri uri, Windows.UI.Xaml.Media.LoadedImageSurface* return_returnValue);
	HRESULT abi_StartLoadFromStreamWithSize(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.Size desiredMaxSize, Windows.UI.Xaml.Media.LoadedImageSurface* return_returnValue);
	HRESULT abi_StartLoadFromStream(Windows.Storage.Streams.IRandomAccessStream stream, Windows.UI.Xaml.Media.LoadedImageSurface* return_returnValue);
}

@uuid("6f03e149-bfc9-4c01-b578-50338cec97fc")
@WinrtFactory("Windows.UI.Xaml.Media.Matrix3DProjection")
interface IMatrix3DProjection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ProjectionMatrix(Windows.UI.Xaml.Media.Media3D.Matrix3D* return_value);
	HRESULT set_ProjectionMatrix(Windows.UI.Xaml.Media.Media3D.Matrix3D value);
}

@uuid("ae9d5895-41ec-4e37-abaa-69f41d2f876b")
@WinrtFactory("Windows.UI.Xaml.Media.Matrix3DProjection")
interface IMatrix3DProjectionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ProjectionMatrixProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("c18606a6-39f4-4b8a-8403-28e5e5f033b4")
@WinrtFactory("Windows.UI.Xaml.Media.MatrixHelper")
interface IMatrixHelperStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Identity(Windows.UI.Xaml.Media.Matrix* return_value);
	HRESULT abi_FromElements(double m11, double m12, double m21, double m22, double offsetX, double offsetY, Windows.UI.Xaml.Media.Matrix* return_returnValue);
	HRESULT abi_GetIsIdentity(Windows.UI.Xaml.Media.Matrix target, bool* return_value);
	HRESULT abi_Transform(Windows.UI.Xaml.Media.Matrix target, Windows.Foundation.Point point, Windows.Foundation.Point* return_returnValue);
}

@uuid("edfdd551-5fed-45fc-ae62-92a4b6cf9707")
@WinrtFactory("Windows.UI.Xaml.Media.MatrixTransform")
interface IMatrixTransform : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Matrix(Windows.UI.Xaml.Media.Matrix* return_value);
	HRESULT set_Matrix(Windows.UI.Xaml.Media.Matrix value);
}

@uuid("43e02e47-15b8-4758-bb97-7d52420acc5b")
@WinrtFactory("Windows.UI.Xaml.Media.MatrixTransform")
interface IMatrixTransformStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MatrixProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e4a8b21c-e3c2-485c-ae69-f1537b76755a")
@WinrtFactory("Windows.UI.Xaml.Media.MediaTransportControlsThumbnailRequestedEventArgs")
interface IMediaTransportControlsThumbnailRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetThumbnailImage(Windows.Storage.Streams.IInputStream source);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_returnValue);
}

@uuid("02b65a91-e5a1-442b-88d3-2dc127bfc59b")
@WinrtFactory("Windows.UI.Xaml.Media.PartialMediaFailureDetectedEventArgs")
interface IPartialMediaFailureDetectedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StreamKind(Windows.Media.Playback.FailedMediaStreamKind* return_value);
}

@uuid("73074875-890d-416b-b9ae-e84dfd9c4b1b")
@WinrtFactory("Windows.UI.Xaml.Media.PartialMediaFailureDetectedEventArgs")
interface IPartialMediaFailureDetectedEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("5d955c8c-5fa9-4dda-a3cc-10fcdcaa20d7")
@WinrtFactory("Windows.UI.Xaml.Media.PathFigure")
interface IPathFigure : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Segments(Windows.UI.Xaml.Media.PathSegmentCollection* return_value);
	HRESULT set_Segments(Windows.UI.Xaml.Media.PathSegmentCollection value);
	HRESULT get_StartPoint(Windows.Foundation.Point* return_value);
	HRESULT set_StartPoint(Windows.Foundation.Point value);
	HRESULT get_IsClosed(bool* return_value);
	HRESULT set_IsClosed(bool value);
	HRESULT get_IsFilled(bool* return_value);
	HRESULT set_IsFilled(bool value);
}

@uuid("b60591d9-2395-4317-9552-3a58526f8c7b")
@WinrtFactory("Windows.UI.Xaml.Media.PathFigure")
interface IPathFigureStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SegmentsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StartPointProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsClosedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsFilledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("081b9df8-bae6-4bcb-813c-bde0e46dc8b7")
@WinrtFactory("Windows.UI.Xaml.Media.PathGeometry")
interface IPathGeometry : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FillRule(Windows.UI.Xaml.Media.FillRule* return_value);
	HRESULT set_FillRule(Windows.UI.Xaml.Media.FillRule value);
	HRESULT get_Figures(Windows.UI.Xaml.Media.PathFigureCollection* return_value);
	HRESULT set_Figures(Windows.UI.Xaml.Media.PathFigureCollection value);
}

@uuid("d9e58bba-2cba-4741-8f8d-3198cf5186b9")
@WinrtFactory("Windows.UI.Xaml.Media.PathGeometry")
interface IPathGeometryStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FillRuleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FiguresProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e6f82bfa-6726-469a-b259-a5188347ca8f")
@WinrtFactory("Windows.UI.Xaml.Media.PlaneProjection")
interface IPlaneProjection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LocalOffsetX(double* return_value);
	HRESULT set_LocalOffsetX(double value);
	HRESULT get_LocalOffsetY(double* return_value);
	HRESULT set_LocalOffsetY(double value);
	HRESULT get_LocalOffsetZ(double* return_value);
	HRESULT set_LocalOffsetZ(double value);
	HRESULT get_RotationX(double* return_value);
	HRESULT set_RotationX(double value);
	HRESULT get_RotationY(double* return_value);
	HRESULT set_RotationY(double value);
	HRESULT get_RotationZ(double* return_value);
	HRESULT set_RotationZ(double value);
	HRESULT get_CenterOfRotationX(double* return_value);
	HRESULT set_CenterOfRotationX(double value);
	HRESULT get_CenterOfRotationY(double* return_value);
	HRESULT set_CenterOfRotationY(double value);
	HRESULT get_CenterOfRotationZ(double* return_value);
	HRESULT set_CenterOfRotationZ(double value);
	HRESULT get_GlobalOffsetX(double* return_value);
	HRESULT set_GlobalOffsetX(double value);
	HRESULT get_GlobalOffsetY(double* return_value);
	HRESULT set_GlobalOffsetY(double value);
	HRESULT get_GlobalOffsetZ(double* return_value);
	HRESULT set_GlobalOffsetZ(double value);
	HRESULT get_ProjectionMatrix(Windows.UI.Xaml.Media.Media3D.Matrix3D* return_value);
}

@uuid("ad919c67-3bdc-4855-8969-d1f9a3adc27d")
@WinrtFactory("Windows.UI.Xaml.Media.PlaneProjection")
interface IPlaneProjectionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LocalOffsetXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LocalOffsetYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LocalOffsetZProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RotationXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RotationYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RotationZProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CenterOfRotationXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CenterOfRotationYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CenterOfRotationZProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_GlobalOffsetXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_GlobalOffsetYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_GlobalOffsetZProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ProjectionMatrixProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("36805271-38c4-4bcf-96cd-028a6d38af25")
@WinrtFactory("Windows.UI.Xaml.Media.PolyBezierSegment")
interface IPolyBezierSegment : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Points(Windows.UI.Xaml.Media.PointCollection* return_value);
	HRESULT set_Points(Windows.UI.Xaml.Media.PointCollection value);
}

@uuid("1d91a6da-1492-4acc-bd66-a496f3d829d6")
@WinrtFactory("Windows.UI.Xaml.Media.PolyBezierSegment")
interface IPolyBezierSegmentStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PointsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4b397f87-a2e6-479d-bdc8-6f4464646887")
@WinrtFactory("Windows.UI.Xaml.Media.PolyLineSegment")
interface IPolyLineSegment : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Points(Windows.UI.Xaml.Media.PointCollection* return_value);
	HRESULT set_Points(Windows.UI.Xaml.Media.PointCollection value);
}

@uuid("d64a2c87-33f1-4e70-a47f-b4981ef648a2")
@WinrtFactory("Windows.UI.Xaml.Media.PolyLineSegment")
interface IPolyLineSegmentStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PointsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("dd5ced7d-e6db-4c96-b6a1-3fce96e987a6")
@WinrtFactory("Windows.UI.Xaml.Media.PolyQuadraticBezierSegment")
interface IPolyQuadraticBezierSegment : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Points(Windows.UI.Xaml.Media.PointCollection* return_value);
	HRESULT set_Points(Windows.UI.Xaml.Media.PointCollection value);
}

@uuid("fdf5eb75-7ad5-4c89-8169-8c9786abd9eb")
@WinrtFactory("Windows.UI.Xaml.Media.PolyQuadraticBezierSegment")
interface IPolyQuadraticBezierSegmentStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PointsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("c4f29cab-60ad-4f24-bd27-9d69c3127c9a")
@WinrtFactory("Windows.UI.Xaml.Media.Projection")
interface IProjectionFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Projection* return_instance);
}

@uuid("2c509a5b-bf18-455a-a078-914b5232d8af")
@WinrtFactory("Windows.UI.Xaml.Media.QuadraticBezierSegment")
interface IQuadraticBezierSegment : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Point1(Windows.Foundation.Point* return_value);
	HRESULT set_Point1(Windows.Foundation.Point value);
	HRESULT get_Point2(Windows.Foundation.Point* return_value);
	HRESULT set_Point2(Windows.Foundation.Point value);
}

@uuid("69c78278-3c0b-4b4f-b7a2-f003ded41bb0")
@WinrtFactory("Windows.UI.Xaml.Media.QuadraticBezierSegment")
interface IQuadraticBezierSegmentStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Point1Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_Point2Property(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("a25a1f58-c575-4196-91cf-9fdfb10445c3")
@WinrtFactory("Windows.UI.Xaml.Media.RectangleGeometry")
interface IRectangleGeometry : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Rect(Windows.Foundation.Rect* return_value);
	HRESULT set_Rect(Windows.Foundation.Rect value);
}

@uuid("377f8dba-7902-48e3-83be-7c8002a6653c")
@WinrtFactory("Windows.UI.Xaml.Media.RectangleGeometry")
interface IRectangleGeometryStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RectProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("5bf7d30d-9748-4aed-8380-d7890eb776a0")
@WinrtFactory("Windows.UI.Xaml.Media.RenderingEventArgs")
interface IRenderingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RenderingTime(Windows.Foundation.TimeSpan* return_value);
}

@uuid("688ea9b9-1e4e-4596-86e3-428b27334faf")
@WinrtFactory("Windows.UI.Xaml.Media.RotateTransform")
interface IRotateTransform : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CenterX(double* return_value);
	HRESULT set_CenterX(double value);
	HRESULT get_CenterY(double* return_value);
	HRESULT set_CenterY(double value);
	HRESULT get_Angle(double* return_value);
	HRESULT set_Angle(double value);
}

@uuid("a131eb8a-51a3-41b6-b9d3-a10e429054ab")
@WinrtFactory("Windows.UI.Xaml.Media.RotateTransform")
interface IRotateTransformStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CenterXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CenterYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AngleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ed67f18d-936e-43ab-929a-e9cd0a511e52")
@WinrtFactory("Windows.UI.Xaml.Media.ScaleTransform")
interface IScaleTransform : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CenterX(double* return_value);
	HRESULT set_CenterX(double value);
	HRESULT get_CenterY(double* return_value);
	HRESULT set_CenterY(double value);
	HRESULT get_ScaleX(double* return_value);
	HRESULT set_ScaleX(double value);
	HRESULT get_ScaleY(double* return_value);
	HRESULT set_ScaleY(double value);
}

@uuid("9d9436f4-40a7-46dd-975a-07d337cd852e")
@WinrtFactory("Windows.UI.Xaml.Media.ScaleTransform")
interface IScaleTransformStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CenterXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CenterYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ScaleXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ScaleYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4e8a3b15-7a0f-4617-9e98-1e65bdc92115")
@WinrtFactory("Windows.UI.Xaml.Media.SkewTransform")
interface ISkewTransform : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CenterX(double* return_value);
	HRESULT set_CenterX(double value);
	HRESULT get_CenterY(double* return_value);
	HRESULT set_CenterY(double value);
	HRESULT get_AngleX(double* return_value);
	HRESULT set_AngleX(double value);
	HRESULT get_AngleY(double* return_value);
	HRESULT set_AngleY(double value);
}

@uuid("ecd11d73-5614-4b31-b6af-beae10105624")
@WinrtFactory("Windows.UI.Xaml.Media.SkewTransform")
interface ISkewTransformStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CenterXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CenterYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AngleXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AngleYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9d850850-66f3-48df-9a8f-824bd5e070af")
@WinrtFactory("Windows.UI.Xaml.Media.SolidColorBrush")
interface ISolidColorBrush : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Color(Windows.UI.Color* return_value);
	HRESULT set_Color(Windows.UI.Color value);
}

@uuid("d935ce0c-86f5-4da6-8a27-b1619ef7f92b")
@WinrtFactory("Windows.UI.Xaml.Media.SolidColorBrush")
interface ISolidColorBrushFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithColor(Windows.UI.Color color, Windows.UI.Xaml.Media.SolidColorBrush* return_instance);
}

@uuid("e1a65efa-2b23-41ba-b9ba-7094ec8e4e9f")
@WinrtFactory("Windows.UI.Xaml.Media.SolidColorBrush")
interface ISolidColorBrushStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ColorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("c201cf06-cd84-48a5-9607-664d7361cd61")
@WinrtFactory("Windows.UI.Xaml.Media.TileBrush")
interface ITileBrush : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AlignmentX(Windows.UI.Xaml.Media.AlignmentX* return_value);
	HRESULT set_AlignmentX(Windows.UI.Xaml.Media.AlignmentX value);
	HRESULT get_AlignmentY(Windows.UI.Xaml.Media.AlignmentY* return_value);
	HRESULT set_AlignmentY(Windows.UI.Xaml.Media.AlignmentY value);
	HRESULT get_Stretch(Windows.UI.Xaml.Media.Stretch* return_value);
	HRESULT set_Stretch(Windows.UI.Xaml.Media.Stretch value);
}

@uuid("aa159f7c-ed6a-4fb3-b014-b5c7e379a4de")
@WinrtFactory("Windows.UI.Xaml.Media.TileBrush")
interface ITileBrushFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.TileBrush* return_instance);
}

@uuid("3497c25b-b562-4e68-8435-2399f6eb94d5")
@WinrtFactory("Windows.UI.Xaml.Media.TileBrush")
interface ITileBrushStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AlignmentXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AlignmentYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("a68ef02d-45ba-4e50-8cad-aaea3a227af5")
@WinrtFactory("Windows.UI.Xaml.Media.TimelineMarker")
interface ITimelineMarker : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Time(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Time(Windows.Foundation.TimeSpan value);
	HRESULT get_Type(HSTRING* return_value);
	HRESULT set_Type(HSTRING value);
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
}

@uuid("7c3b3ef3-2c88-4d9c-99b6-46cdbd48d4c1")
@WinrtFactory("Windows.UI.Xaml.Media.TimelineMarkerRoutedEventArgs")
interface ITimelineMarkerRoutedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Marker(Windows.UI.Xaml.Media.TimelineMarker* return_value);
	HRESULT set_Marker(Windows.UI.Xaml.Media.TimelineMarker value);
}

@uuid("c4aef0c6-16a3-484b-87f5-6528b8f04a47")
@WinrtFactory("Windows.UI.Xaml.Media.TimelineMarker")
interface ITimelineMarkerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TimeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("63418ccc-8d2d-4737-b951-2afce1ddc4c4")
@WinrtFactory("Windows.UI.Xaml.Media.TransformGroup")
interface ITransformGroup : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Children(Windows.UI.Xaml.Media.TransformCollection* return_value);
	HRESULT set_Children(Windows.UI.Xaml.Media.TransformCollection value);
	HRESULT get_Value(Windows.UI.Xaml.Media.Matrix* return_value);
}

@uuid("25312f2a-cfab-4b24-9713-5bdead1929c0")
@WinrtFactory("Windows.UI.Xaml.Media.TransformGroup")
interface ITransformGroupStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ChildrenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("c975905c-3c36-4229-817b-178f64c0e113")
@WinrtFactory("Windows.UI.Xaml.Media.TranslateTransform")
interface ITranslateTransform : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_X(double* return_value);
	HRESULT set_X(double value);
	HRESULT get_Y(double* return_value);
	HRESULT set_Y(double value);
}

@uuid("f419aa91-e042-4111-9c2f-d201304123dd")
@WinrtFactory("Windows.UI.Xaml.Media.TranslateTransform")
interface ITranslateTransformStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_XProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_YProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e75758c4-d25d-4b1d-971f-596f17f12baa")
@WinrtFactory("Windows.UI.Xaml.Media.VisualTreeHelper")
interface IVisualTreeHelperStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FindElementsInHostCoordinatesPoint(Windows.Foundation.Point intersectingPoint, Windows.UI.Xaml.UIElement subtree, Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.UIElement)* return_elements);
	HRESULT abi_FindElementsInHostCoordinatesRect(Windows.Foundation.Rect intersectingRect, Windows.UI.Xaml.UIElement subtree, Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.UIElement)* return_elements);
	HRESULT abi_FindAllElementsInHostCoordinatesPoint(Windows.Foundation.Point intersectingPoint, Windows.UI.Xaml.UIElement subtree, bool includeAllElements, Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.UIElement)* return_elements);
	HRESULT abi_FindAllElementsInHostCoordinatesRect(Windows.Foundation.Rect intersectingRect, Windows.UI.Xaml.UIElement subtree, bool includeAllElements, Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.UIElement)* return_elements);
	HRESULT abi_GetChild(Windows.UI.Xaml.DependencyObject reference, INT32 childIndex, Windows.UI.Xaml.DependencyObject* return_child);
	HRESULT abi_GetChildrenCount(Windows.UI.Xaml.DependencyObject reference, INT32* return_count);
	HRESULT abi_GetParent(Windows.UI.Xaml.DependencyObject reference, Windows.UI.Xaml.DependencyObject* return_parent);
	HRESULT abi_DisconnectChildrenRecursive(Windows.UI.Xaml.UIElement element);
}

@uuid("07bcd176-869f-44a7-8797-2103a4c3e47a")
@WinrtFactory("Windows.UI.Xaml.Media.VisualTreeHelper")
interface IVisualTreeHelperStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetOpenPopups(Windows.UI.Xaml.Window window, Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Controls.Primitives.Popup)* return_popups);
}

@uuid("03e432d9-b35c-4a79-811c-c5652004da0e")
@WinrtFactory("Windows.UI.Xaml.Media.XamlCompositionBrushBase")
interface IXamlCompositionBrushBase : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FallbackColor(Windows.UI.Color* return_value);
	HRESULT set_FallbackColor(Windows.UI.Color value);
}

@uuid("394f0823-2451-4ed8-bd24-488149b3428d")
@WinrtFactory("Windows.UI.Xaml.Media.XamlCompositionBrushBase")
interface IXamlCompositionBrushBaseFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.XamlCompositionBrushBase* return_instance);
}

@uuid("d19127f1-38b4-4ea1-8f33-849629a4c9c1")
@WinrtFactory("Windows.UI.Xaml.Media.XamlCompositionBrushBase")
interface IXamlCompositionBrushBaseOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OnConnected();
	HRESULT abi_OnDisconnected();
}

@uuid("1513f3d8-0457-4e1c-ad77-11c1d9879743")
@WinrtFactory("Windows.UI.Xaml.Media.XamlCompositionBrushBase")
interface IXamlCompositionBrushBaseProtected : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CompositionBrush(Windows.UI.Composition.CompositionBrush* return_value);
	HRESULT set_CompositionBrush(Windows.UI.Composition.CompositionBrush value);
}

@uuid("4fd49b06-061a-441f-b97a-adfbd41ae681")
@WinrtFactory("Windows.UI.Xaml.Media.XamlCompositionBrushBase")
interface IXamlCompositionBrushBaseStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FallbackColorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("87ded768-3055-43b8-8ef6-798dc4c2329a")
@WinrtFactory("Windows.UI.Xaml.Media.XamlLight")
interface IXamlLightFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.XamlLight* return_instance);
}

@uuid("7c6296c7-0173-48e1-b73d-7fa216a9ac28")
@WinrtFactory("Windows.UI.Xaml.Media.XamlLight")
interface IXamlLightOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetId(HSTRING* return_returnValue);
	HRESULT abi_OnConnected(Windows.UI.Xaml.UIElement newElement);
	HRESULT abi_OnDisconnected(Windows.UI.Xaml.UIElement oldElement);
}

@uuid("5ecf220b-1252-43d0-9729-6ea692046838")
@WinrtFactory("Windows.UI.Xaml.Media.XamlLight")
interface IXamlLightProtected : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CompositionLight(Windows.UI.Composition.CompositionLight* return_value);
	HRESULT set_CompositionLight(Windows.UI.Composition.CompositionLight value);
}

@uuid("b5ea9d69-b508-4e9c-bd27-6b044b5f78a0")
@WinrtFactory("Windows.UI.Xaml.Media.XamlLight")
interface IXamlLightStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddTargetElement(HSTRING lightId, Windows.UI.Xaml.UIElement element);
	HRESULT abi_RemoveTargetElement(HSTRING lightId, Windows.UI.Xaml.UIElement element);
	HRESULT abi_AddTargetBrush(HSTRING lightId, Windows.UI.Xaml.Media.Brush brush);
	HRESULT abi_RemoveTargetBrush(HSTRING lightId, Windows.UI.Xaml.Media.Brush brush);
}

interface ArcSegment : Windows.UI.Xaml.Media.PathSegment
{
}

interface BezierSegment : Windows.UI.Xaml.Media.PathSegment
{
}

interface BitmapCache : Windows.UI.Xaml.Media.CacheMode
{
}

interface Brush : Windows.UI.Xaml.DependencyObject
{
}

interface BrushCollection
{
}

interface CacheMode : Windows.UI.Xaml.DependencyObject
{
}

interface CompositeTransform : Windows.UI.Xaml.Media.Transform
{
}

interface CompositionTarget
{
}

interface DoubleCollection
{
}

interface EllipseGeometry : Windows.UI.Xaml.Media.Geometry
{
}

interface FontFamily
{
}

interface GeneralTransform : Windows.UI.Xaml.DependencyObject
{
}

interface Geometry : Windows.UI.Xaml.DependencyObject
{
}

interface GeometryCollection
{
}

interface GeometryGroup : Windows.UI.Xaml.Media.Geometry
{
}

interface GradientBrush : Windows.UI.Xaml.Media.Brush
{
}

interface GradientStop : Windows.UI.Xaml.DependencyObject
{
}

interface GradientStopCollection
{
}

interface ImageBrush : Windows.UI.Xaml.Media.TileBrush
{
}

interface ImageSource : Windows.UI.Xaml.DependencyObject
{
}

interface LineGeometry : Windows.UI.Xaml.Media.Geometry
{
}

interface LineSegment : Windows.UI.Xaml.Media.PathSegment
{
}

interface LinearGradientBrush : Windows.UI.Xaml.Media.GradientBrush
{
}

interface LoadedImageSourceLoadCompletedEventArgs
{
}

interface LoadedImageSurface
{
}

interface Matrix3DProjection : Windows.UI.Xaml.Media.Projection
{
}

interface MatrixHelper
{
}

interface MatrixTransform : Windows.UI.Xaml.Media.Transform
{
}

interface MediaTransportControlsThumbnailRequestedEventArgs
{
}

interface PartialMediaFailureDetectedEventArgs
{
}

interface PathFigure : Windows.UI.Xaml.DependencyObject
{
}

interface PathFigureCollection
{
}

interface PathGeometry : Windows.UI.Xaml.Media.Geometry
{
}

interface PathSegment : Windows.UI.Xaml.DependencyObject
{
}

interface PathSegmentCollection
{
}

interface PlaneProjection : Windows.UI.Xaml.Media.Projection
{
}

interface PointCollection
{
}

interface PolyBezierSegment : Windows.UI.Xaml.Media.PathSegment
{
}

interface PolyLineSegment : Windows.UI.Xaml.Media.PathSegment
{
}

interface PolyQuadraticBezierSegment : Windows.UI.Xaml.Media.PathSegment
{
}

interface Projection : Windows.UI.Xaml.DependencyObject
{
}

interface QuadraticBezierSegment : Windows.UI.Xaml.Media.PathSegment
{
}

interface RateChangedRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs
{
}

interface RectangleGeometry : Windows.UI.Xaml.Media.Geometry
{
}

interface RenderingEventArgs
{
}

interface RotateTransform : Windows.UI.Xaml.Media.Transform
{
}

interface ScaleTransform : Windows.UI.Xaml.Media.Transform
{
}

interface SkewTransform : Windows.UI.Xaml.Media.Transform
{
}

interface SolidColorBrush : Windows.UI.Xaml.Media.Brush
{
}

interface TileBrush : Windows.UI.Xaml.Media.Brush
{
}

interface TimelineMarker : Windows.UI.Xaml.DependencyObject
{
}

interface TimelineMarkerCollection
{
}

interface TimelineMarkerRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs
{
}

interface Transform : Windows.UI.Xaml.Media.GeneralTransform
{
}

interface TransformCollection
{
}

interface TransformGroup : Windows.UI.Xaml.Media.Transform
{
}

interface TranslateTransform : Windows.UI.Xaml.Media.Transform
{
}

interface VisualTreeHelper
{
}

interface XamlCompositionBrushBase : Windows.UI.Xaml.Media.Brush
{
}

interface XamlLight : Windows.UI.Xaml.DependencyObject
{
}

enum AlignmentX
{
	Left = 0,
	Center = 1,
	Right = 2
}

enum AlignmentY
{
	Top = 0,
	Center = 1,
	Bottom = 2
}

enum AudioCategory
{
	Other = 0,
	ForegroundOnlyMedia = 1,
	BackgroundCapableMedia = 2,
	Communications = 3,
	Alerts = 4,
	SoundEffects = 5,
	GameEffects = 6,
	GameMedia = 7,
	GameChat = 8,
	Speech = 9,
	Movie = 10,
	Media = 11
}

enum AudioDeviceType
{
	Console = 0,
	Multimedia = 1,
	Communications = 2
}

enum BrushMappingMode
{
	Absolute = 0,
	RelativeToBoundingBox = 1
}

enum ColorInterpolationMode
{
	ScRgbLinearInterpolation = 0,
	SRgbLinearInterpolation = 1
}

enum ElementCompositeMode
{
	Inherit = 0,
	SourceOver = 1,
	MinBlend = 2
}

enum FastPlayFallbackBehaviour
{
	Skip = 0,
	Hide = 1,
	Disable = 2
}

enum FillRule
{
	EvenOdd = 0,
	Nonzero = 1
}

enum GradientSpreadMethod
{
	Pad = 0,
	Reflect = 1,
	Repeat = 2
}

enum LoadedImageSourceLoadStatus
{
	Success = 0,
	NetworkError = 1,
	InvalidFormat = 2,
	Other = 3
}

enum MediaCanPlayResponse
{
	NotSupported = 0,
	Maybe = 1,
	Probably = 2
}

enum MediaElementState
{
	Closed = 0,
	Opening = 1,
	Buffering = 2,
	Playing = 3,
	Paused = 4,
	Stopped = 5
}

enum PenLineCap
{
	Flat = 0,
	Square = 1,
	Round = 2,
	Triangle = 3
}

enum PenLineJoin
{
	Miter = 0,
	Bevel = 1,
	Round = 2
}

enum Stereo3DVideoPackingMode
{
	None = 0,
	SideBySide = 1,
	TopBottom = 2
}

enum Stereo3DVideoRenderMode
{
	Mono = 0,
	Stereo = 1
}

enum Stretch
{
	None = 0,
	Fill = 1,
	Uniform = 2,
	UniformToFill = 3
}

enum StyleSimulations
{
	None = 0,
	BoldSimulation = 1,
	ItalicSimulation = 2,
	BoldItalicSimulation = 3
}

enum SweepDirection
{
	Counterclockwise = 0,
	Clockwise = 1
}