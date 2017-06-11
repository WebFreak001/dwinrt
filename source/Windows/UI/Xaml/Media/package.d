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
interface RateChangedRoutedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Media.RateChangedRoutedEventArgs e);
}

@uuid("72e2fa9c-6dea-4cbe-a159-06ce95fbeced")
interface TimelineMarkerRoutedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Media.TimelineMarkerRoutedEventArgs e);
}

@uuid("07940c5f-63fb-4469-91be-f1097c168052")
@WinrtFactory("Windows.UI.Xaml.Media.ArcSegment")
interface IArcSegment : IInspectable
{
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
extern(Windows):
	HRESULT get_Point1Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_Point2Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_Point3Property(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("79c2219e-44d2-4610-9735-9bec83809ecf")
@WinrtFactory("Windows.UI.Xaml.Media.BitmapCache")
interface IBitmapCache : IInspectable
{
}

@uuid("8806a321-1e06-422c-a1cc-01696559e021")
@WinrtFactory("Windows.UI.Xaml.Media.Brush")
interface IBrush : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Brush* return_instance);
}

@uuid("e70c3102-0225-47f5-b22e-0467619f6a22")
@WinrtFactory("Windows.UI.Xaml.Media.Brush")
interface IBrushStatics : IInspectable
{
extern(Windows):
	HRESULT get_OpacityProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TransformProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RelativeTransformProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("98dc8b11-c6f9-4dab-b838-5fd5ec8c7350")
@WinrtFactory("Windows.UI.Xaml.Media.CacheMode")
interface ICacheMode : IInspectable
{
}

@uuid("eb1f8c5b-0abb-4e70-b8a8-620d0d953ab2")
@WinrtFactory("Windows.UI.Xaml.Media.CacheMode")
interface ICacheModeFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.CacheMode* return_instance);
}

@uuid("c8a4385b-f24a-4701-a265-a78846f142b9")
@WinrtFactory("Windows.UI.Xaml.Media.CompositeTransform")
interface ICompositeTransform : IInspectable
{
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

@uuid("26cfbff0-713c-4bec-8803-e101f7b14ed3")
@WinrtFactory("Windows.UI.Xaml.Media.CompositionTarget")
interface ICompositionTarget : IInspectable
{
}

@uuid("2b1af03d-1ed2-4b59-bd00-7594ee92832b")
@WinrtFactory("Windows.UI.Xaml.Media.CompositionTarget")
interface ICompositionTargetStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_CenterProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RadiusXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RadiusYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("92467e64-d66a-4cf4-9322-3d23b3c0c361")
@WinrtFactory("Windows.UI.Xaml.Media.FontFamily")
interface IFontFamily : IInspectable
{
extern(Windows):
	HRESULT get_Source(HSTRING* return_value);
}

@uuid("d5603377-3dae-4dcd-af09-f9498e9ec659")
@WinrtFactory("Windows.UI.Xaml.Media.FontFamily")
interface IFontFamilyFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithName(HSTRING familyName, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.FontFamily* return_instance);
}

@uuid("52ad7af9-37e6-4297-a238-97fb6a408d9e")
@WinrtFactory("Windows.UI.Xaml.Media.FontFamily")
interface IFontFamilyStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_XamlAutoFontFamily(Windows.UI.Xaml.Media.FontFamily* return_value);
}

@uuid("a06798b7-a2ec-415f-ade2-eade9333f2c7")
@WinrtFactory("Windows.UI.Xaml.Media.GeneralTransform")
interface IGeneralTransform : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.GeneralTransform* return_instance);
}

@uuid("4f121083-24cf-4524-90ad-8a42b1c12783")
@WinrtFactory("Windows.UI.Xaml.Media.GeneralTransform")
interface IGeneralTransformOverrides : IInspectable
{
extern(Windows):
	HRESULT get_InverseCore(Windows.UI.Xaml.Media.GeneralTransform* return_value);
	HRESULT abi_TryTransformCore(Windows.Foundation.Point inPoint, Windows.Foundation.Point* out_outPoint, bool* return_returnValue);
	HRESULT abi_TransformBoundsCore(Windows.Foundation.Rect rect, Windows.Foundation.Rect* return_returnValue);
}

@uuid("fa123889-0acd-417b-b62d-5ca1bf4dfc0e")
@WinrtFactory("Windows.UI.Xaml.Media.Geometry")
interface IGeometry : IInspectable
{
extern(Windows):
	HRESULT get_Transform(Windows.UI.Xaml.Media.Transform* return_value);
	HRESULT set_Transform(Windows.UI.Xaml.Media.Transform value);
	HRESULT get_Bounds(Windows.Foundation.Rect* return_value);
}

@uuid("f65daf23-d5fd-42f9-b32a-929c5a4b54e1")
@WinrtFactory("Windows.UI.Xaml.Media.Geometry")
interface IGeometryFactory : IInspectable
{
}

@uuid("55225a61-8677-4c8c-8e46-ee3dc355114b")
@WinrtFactory("Windows.UI.Xaml.Media.GeometryGroup")
interface IGeometryGroup : IInspectable
{
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
extern(Windows):
	HRESULT get_FillRuleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ChildrenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("7a70aa8c-0b06-465f-b637-9a47e5a70111")
@WinrtFactory("Windows.UI.Xaml.Media.Geometry")
interface IGeometryStatics : IInspectable
{
extern(Windows):
	HRESULT get_Empty(Windows.UI.Xaml.Media.Geometry* return_value);
	HRESULT get_StandardFlatteningTolerance(double* return_value);
	HRESULT get_TransformProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78")
@WinrtFactory("Windows.UI.Xaml.Media.GradientBrush")
interface IGradientBrush : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.GradientBrush* return_instance);
}

@uuid("961661f9-8bb4-4e6c-b923-b5d787e0f1a9")
@WinrtFactory("Windows.UI.Xaml.Media.GradientBrush")
interface IGradientBrushStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_ColorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9fd11377-c12a-4493-bf7d-f3a8ad74b554")
@WinrtFactory("Windows.UI.Xaml.Media.ImageBrush")
interface IImageBrush : IInspectable
{
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
extern(Windows):
	HRESULT get_ImageSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("737ef309-ea41-4d96-a71c-98e98efcab07")
@WinrtFactory("Windows.UI.Xaml.Media.ImageSource")
interface IImageSource : IInspectable
{
}

@uuid("297ec001-2540-4e5a-ab66-88035dd3ddb5")
@WinrtFactory("Windows.UI.Xaml.Media.ImageSource")
interface IImageSourceFactory : IInspectable
{
}

@uuid("30edd4a2-8fc5-40af-a7a2-c27fe7aa1363")
@WinrtFactory("Windows.UI.Xaml.Media.LineGeometry")
interface ILineGeometry : IInspectable
{
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
extern(Windows):
	HRESULT get_StartPointProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_EndPointProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ef6a2e25-3ff0-4420-a411-7182a4cecb15")
@WinrtFactory("Windows.UI.Xaml.Media.LineSegment")
interface ILineSegment : IInspectable
{
extern(Windows):
	HRESULT get_Point(Windows.Foundation.Point* return_value);
	HRESULT set_Point(Windows.Foundation.Point value);
}

@uuid("9fcab141-04c0-4afb-87b3-e800b969b894")
@WinrtFactory("Windows.UI.Xaml.Media.LineSegment")
interface ILineSegmentStatics : IInspectable
{
extern(Windows):
	HRESULT get_PointProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("8e96d16b-bb84-4c6f-9dbf-9d6c5c6d9c39")
@WinrtFactory("Windows.UI.Xaml.Media.LinearGradientBrush")
interface ILinearGradientBrush : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstanceWithGradientStopCollectionAndAngle(Windows.UI.Xaml.Media.GradientStopCollection gradientStopCollection, double angle, Windows.UI.Xaml.Media.LinearGradientBrush* return_instance);
}

@uuid("7af6e504-2dc3-40e3-be0b-b314c13cb991")
@WinrtFactory("Windows.UI.Xaml.Media.LinearGradientBrush")
interface ILinearGradientBrushStatics : IInspectable
{
extern(Windows):
	HRESULT get_StartPointProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_EndPointProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("1ac60b1e-7837-4489-b3e5-d0d5ad0a56c4")
@WinrtFactory("Windows.UI.Xaml.Media.LoadedImageSourceLoadCompletedEventArgs")
interface ILoadedImageSourceLoadCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.UI.Xaml.Media.LoadedImageSourceLoadStatus* return_value);
}

@uuid("050c8313-6737-45ba-8531-33094febef55")
@WinrtFactory("Windows.UI.Xaml.Media.LoadedImageSurface")
interface ILoadedImageSurface : IInspectable
{
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
extern(Windows):
	HRESULT get_ProjectionMatrix(Windows.UI.Xaml.Media.Media3D.Matrix3D* return_value);
	HRESULT set_ProjectionMatrix(Windows.UI.Xaml.Media.Media3D.Matrix3D value);
}

@uuid("ae9d5895-41ec-4e37-abaa-69f41d2f876b")
@WinrtFactory("Windows.UI.Xaml.Media.Matrix3DProjection")
interface IMatrix3DProjectionStatics : IInspectable
{
extern(Windows):
	HRESULT get_ProjectionMatrixProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("f3cf4882-06b5-48c8-9eb2-1763e9364038")
@WinrtFactory("Windows.UI.Xaml.Media.MatrixHelper")
interface IMatrixHelper : IInspectable
{
}

@uuid("c18606a6-39f4-4b8a-8403-28e5e5f033b4")
@WinrtFactory("Windows.UI.Xaml.Media.MatrixHelper")
interface IMatrixHelperStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_Matrix(Windows.UI.Xaml.Media.Matrix* return_value);
	HRESULT set_Matrix(Windows.UI.Xaml.Media.Matrix value);
}

@uuid("43e02e47-15b8-4758-bb97-7d52420acc5b")
@WinrtFactory("Windows.UI.Xaml.Media.MatrixTransform")
interface IMatrixTransformStatics : IInspectable
{
extern(Windows):
	HRESULT get_MatrixProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e4a8b21c-e3c2-485c-ae69-f1537b76755a")
@WinrtFactory("Windows.UI.Xaml.Media.MediaTransportControlsThumbnailRequestedEventArgs")
interface IMediaTransportControlsThumbnailRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_SetThumbnailImage(Windows.Storage.Streams.IInputStream source);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_returnValue);
}

@uuid("02b65a91-e5a1-442b-88d3-2dc127bfc59b")
@WinrtFactory("Windows.UI.Xaml.Media.PartialMediaFailureDetectedEventArgs")
interface IPartialMediaFailureDetectedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_StreamKind(Windows.Media.Playback.FailedMediaStreamKind* return_value);
}

@uuid("73074875-890d-416b-b9ae-e84dfd9c4b1b")
@WinrtFactory("Windows.UI.Xaml.Media.PartialMediaFailureDetectedEventArgs")
interface IPartialMediaFailureDetectedEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("5d955c8c-5fa9-4dda-a3cc-10fcdcaa20d7")
@WinrtFactory("Windows.UI.Xaml.Media.PathFigure")
interface IPathFigure : IInspectable
{
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
extern(Windows):
	HRESULT get_FillRuleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FiguresProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("fcfa71cf-9ce3-474f-8157-10b6435a616b")
@WinrtFactory("Windows.UI.Xaml.Media.PathSegment")
interface IPathSegment : IInspectable
{
}

@uuid("2a1c0aae-eccd-4464-a148-6ffdb3aa281f")
@WinrtFactory("Windows.UI.Xaml.Media.PathSegment")
interface IPathSegmentFactory : IInspectable
{
}

@uuid("e6f82bfa-6726-469a-b259-a5188347ca8f")
@WinrtFactory("Windows.UI.Xaml.Media.PlaneProjection")
interface IPlaneProjection : IInspectable
{
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
extern(Windows):
	HRESULT get_Points(Windows.UI.Xaml.Media.PointCollection* return_value);
	HRESULT set_Points(Windows.UI.Xaml.Media.PointCollection value);
}

@uuid("1d91a6da-1492-4acc-bd66-a496f3d829d6")
@WinrtFactory("Windows.UI.Xaml.Media.PolyBezierSegment")
interface IPolyBezierSegmentStatics : IInspectable
{
extern(Windows):
	HRESULT get_PointsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4b397f87-a2e6-479d-bdc8-6f4464646887")
@WinrtFactory("Windows.UI.Xaml.Media.PolyLineSegment")
interface IPolyLineSegment : IInspectable
{
extern(Windows):
	HRESULT get_Points(Windows.UI.Xaml.Media.PointCollection* return_value);
	HRESULT set_Points(Windows.UI.Xaml.Media.PointCollection value);
}

@uuid("d64a2c87-33f1-4e70-a47f-b4981ef648a2")
@WinrtFactory("Windows.UI.Xaml.Media.PolyLineSegment")
interface IPolyLineSegmentStatics : IInspectable
{
extern(Windows):
	HRESULT get_PointsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("dd5ced7d-e6db-4c96-b6a1-3fce96e987a6")
@WinrtFactory("Windows.UI.Xaml.Media.PolyQuadraticBezierSegment")
interface IPolyQuadraticBezierSegment : IInspectable
{
extern(Windows):
	HRESULT get_Points(Windows.UI.Xaml.Media.PointCollection* return_value);
	HRESULT set_Points(Windows.UI.Xaml.Media.PointCollection value);
}

@uuid("fdf5eb75-7ad5-4c89-8169-8c9786abd9eb")
@WinrtFactory("Windows.UI.Xaml.Media.PolyQuadraticBezierSegment")
interface IPolyQuadraticBezierSegmentStatics : IInspectable
{
extern(Windows):
	HRESULT get_PointsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b3443557-7f39-4d04-a89c-844338cac897")
@WinrtFactory("Windows.UI.Xaml.Media.Projection")
interface IProjection : IInspectable
{
}

@uuid("c4f29cab-60ad-4f24-bd27-9d69c3127c9a")
@WinrtFactory("Windows.UI.Xaml.Media.Projection")
interface IProjectionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Projection* return_instance);
}

@uuid("2c509a5b-bf18-455a-a078-914b5232d8af")
@WinrtFactory("Windows.UI.Xaml.Media.QuadraticBezierSegment")
interface IQuadraticBezierSegment : IInspectable
{
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
extern(Windows):
	HRESULT get_Point1Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_Point2Property(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9016aa6f-3ca8-4c80-8e2f-8851a68f131f")
@WinrtFactory("Windows.UI.Xaml.Media.RateChangedRoutedEventArgs")
interface IRateChangedRoutedEventArgs : IInspectable
{
}

@uuid("a25a1f58-c575-4196-91cf-9fdfb10445c3")
@WinrtFactory("Windows.UI.Xaml.Media.RectangleGeometry")
interface IRectangleGeometry : IInspectable
{
extern(Windows):
	HRESULT get_Rect(Windows.Foundation.Rect* return_value);
	HRESULT set_Rect(Windows.Foundation.Rect value);
}

@uuid("377f8dba-7902-48e3-83be-7c8002a6653c")
@WinrtFactory("Windows.UI.Xaml.Media.RectangleGeometry")
interface IRectangleGeometryStatics : IInspectable
{
extern(Windows):
	HRESULT get_RectProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("5bf7d30d-9748-4aed-8380-d7890eb776a0")
@WinrtFactory("Windows.UI.Xaml.Media.RenderingEventArgs")
interface IRenderingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_RenderingTime(Windows.Foundation.TimeSpan* return_value);
}

@uuid("688ea9b9-1e4e-4596-86e3-428b27334faf")
@WinrtFactory("Windows.UI.Xaml.Media.RotateTransform")
interface IRotateTransform : IInspectable
{
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
extern(Windows):
	HRESULT get_CenterXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CenterYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AngleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ed67f18d-936e-43ab-929a-e9cd0a511e52")
@WinrtFactory("Windows.UI.Xaml.Media.ScaleTransform")
interface IScaleTransform : IInspectable
{
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
extern(Windows):
	HRESULT get_Color(Windows.UI.Color* return_value);
	HRESULT set_Color(Windows.UI.Color value);
}

@uuid("d935ce0c-86f5-4da6-8a27-b1619ef7f92b")
@WinrtFactory("Windows.UI.Xaml.Media.SolidColorBrush")
interface ISolidColorBrushFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithColor(Windows.UI.Color color, Windows.UI.Xaml.Media.SolidColorBrush* return_instance);
}

@uuid("e1a65efa-2b23-41ba-b9ba-7094ec8e4e9f")
@WinrtFactory("Windows.UI.Xaml.Media.SolidColorBrush")
interface ISolidColorBrushStatics : IInspectable
{
extern(Windows):
	HRESULT get_ColorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("c201cf06-cd84-48a5-9607-664d7361cd61")
@WinrtFactory("Windows.UI.Xaml.Media.TileBrush")
interface ITileBrush : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.TileBrush* return_instance);
}

@uuid("3497c25b-b562-4e68-8435-2399f6eb94d5")
@WinrtFactory("Windows.UI.Xaml.Media.TileBrush")
interface ITileBrushStatics : IInspectable
{
extern(Windows):
	HRESULT get_AlignmentXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AlignmentYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("a68ef02d-45ba-4e50-8cad-aaea3a227af5")
@WinrtFactory("Windows.UI.Xaml.Media.TimelineMarker")
interface ITimelineMarker : IInspectable
{
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
extern(Windows):
	HRESULT get_Marker(Windows.UI.Xaml.Media.TimelineMarker* return_value);
	HRESULT set_Marker(Windows.UI.Xaml.Media.TimelineMarker value);
}

@uuid("c4aef0c6-16a3-484b-87f5-6528b8f04a47")
@WinrtFactory("Windows.UI.Xaml.Media.TimelineMarker")
interface ITimelineMarkerStatics : IInspectable
{
extern(Windows):
	HRESULT get_TimeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4df74078-bfd6-4ed1-9682-d2fd8bf2fe6f")
@WinrtFactory("Windows.UI.Xaml.Media.Transform")
interface ITransform : IInspectable
{
}

@uuid("1a955a66-7cf4-4320-b416-6181192fcc6d")
@WinrtFactory("Windows.UI.Xaml.Media.Transform")
interface ITransformFactory : IInspectable
{
}

@uuid("63418ccc-8d2d-4737-b951-2afce1ddc4c4")
@WinrtFactory("Windows.UI.Xaml.Media.TransformGroup")
interface ITransformGroup : IInspectable
{
extern(Windows):
	HRESULT get_Children(Windows.UI.Xaml.Media.TransformCollection* return_value);
	HRESULT set_Children(Windows.UI.Xaml.Media.TransformCollection value);
	HRESULT get_Value(Windows.UI.Xaml.Media.Matrix* return_value);
}

@uuid("25312f2a-cfab-4b24-9713-5bdead1929c0")
@WinrtFactory("Windows.UI.Xaml.Media.TransformGroup")
interface ITransformGroupStatics : IInspectable
{
extern(Windows):
	HRESULT get_ChildrenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("c975905c-3c36-4229-817b-178f64c0e113")
@WinrtFactory("Windows.UI.Xaml.Media.TranslateTransform")
interface ITranslateTransform : IInspectable
{
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
extern(Windows):
	HRESULT get_XProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_YProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("24b935e3-52c7-4141-8bac-a73d06130569")
@WinrtFactory("Windows.UI.Xaml.Media.VisualTreeHelper")
interface IVisualTreeHelper : IInspectable
{
}

@uuid("e75758c4-d25d-4b1d-971f-596f17f12baa")
@WinrtFactory("Windows.UI.Xaml.Media.VisualTreeHelper")
interface IVisualTreeHelperStatics : IInspectable
{
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
extern(Windows):
	HRESULT abi_GetOpenPopups(Windows.UI.Xaml.Window window, Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Controls.Primitives.Popup)* return_popups);
}

@uuid("03e432d9-b35c-4a79-811c-c5652004da0e")
@WinrtFactory("Windows.UI.Xaml.Media.XamlCompositionBrushBase")
interface IXamlCompositionBrushBase : IInspectable
{
extern(Windows):
	HRESULT get_FallbackColor(Windows.UI.Color* return_value);
	HRESULT set_FallbackColor(Windows.UI.Color value);
}

@uuid("394f0823-2451-4ed8-bd24-488149b3428d")
@WinrtFactory("Windows.UI.Xaml.Media.XamlCompositionBrushBase")
interface IXamlCompositionBrushBaseFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.XamlCompositionBrushBase* return_instance);
}

@uuid("d19127f1-38b4-4ea1-8f33-849629a4c9c1")
@WinrtFactory("Windows.UI.Xaml.Media.XamlCompositionBrushBase")
interface IXamlCompositionBrushBaseOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_OnConnected();
	HRESULT abi_OnDisconnected();
}

@uuid("1513f3d8-0457-4e1c-ad77-11c1d9879743")
@WinrtFactory("Windows.UI.Xaml.Media.XamlCompositionBrushBase")
interface IXamlCompositionBrushBaseProtected : IInspectable
{
extern(Windows):
	HRESULT get_CompositionBrush(Windows.UI.Composition.CompositionBrush* return_value);
	HRESULT set_CompositionBrush(Windows.UI.Composition.CompositionBrush value);
}

@uuid("4fd49b06-061a-441f-b97a-adfbd41ae681")
@WinrtFactory("Windows.UI.Xaml.Media.XamlCompositionBrushBase")
interface IXamlCompositionBrushBaseStatics : IInspectable
{
extern(Windows):
	HRESULT get_FallbackColorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0cc3fc1f-b327-4a18-9648-7c84db26ce22")
@WinrtFactory("Windows.UI.Xaml.Media.XamlLight")
interface IXamlLight : IInspectable
{
}

@uuid("87ded768-3055-43b8-8ef6-798dc4c2329a")
@WinrtFactory("Windows.UI.Xaml.Media.XamlLight")
interface IXamlLightFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.XamlLight* return_instance);
}

@uuid("7c6296c7-0173-48e1-b73d-7fa216a9ac28")
@WinrtFactory("Windows.UI.Xaml.Media.XamlLight")
interface IXamlLightOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_GetId(HSTRING* return_returnValue);
	HRESULT abi_OnConnected(Windows.UI.Xaml.UIElement newElement);
	HRESULT abi_OnDisconnected(Windows.UI.Xaml.UIElement oldElement);
}

@uuid("5ecf220b-1252-43d0-9729-6ea692046838")
@WinrtFactory("Windows.UI.Xaml.Media.XamlLight")
interface IXamlLightProtected : IInspectable
{
extern(Windows):
	HRESULT get_CompositionLight(Windows.UI.Composition.CompositionLight* return_value);
	HRESULT set_CompositionLight(Windows.UI.Composition.CompositionLight value);
}

@uuid("b5ea9d69-b508-4e9c-bd27-6b044b5f78a0")
@WinrtFactory("Windows.UI.Xaml.Media.XamlLight")
interface IXamlLightStatics : IInspectable
{
extern(Windows):
	HRESULT abi_AddTargetElement(HSTRING lightId, Windows.UI.Xaml.UIElement element);
	HRESULT abi_RemoveTargetElement(HSTRING lightId, Windows.UI.Xaml.UIElement element);
	HRESULT abi_AddTargetBrush(HSTRING lightId, Windows.UI.Xaml.Media.Brush brush);
	HRESULT abi_RemoveTargetBrush(HSTRING lightId, Windows.UI.Xaml.Media.Brush brush);
}

interface ArcSegment : Windows.UI.Xaml.Media.PathSegment, Windows.UI.Xaml.Media.IArcSegment
{
extern(Windows):
	final Windows.Foundation.Point Point()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IArcSegment).get_Point(&_ret));
		return _ret;
	}
	final void Point(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IArcSegment).set_Point(value));
	}
	final Windows.Foundation.Size Size()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IArcSegment).get_Size(&_ret));
		return _ret;
	}
	final void Size(Windows.Foundation.Size value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IArcSegment).set_Size(value));
	}
	final double RotationAngle()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IArcSegment).get_RotationAngle(&_ret));
		return _ret;
	}
	final void RotationAngle(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IArcSegment).set_RotationAngle(value));
	}
	final bool IsLargeArc()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IArcSegment).get_IsLargeArc(&_ret));
		return _ret;
	}
	final void IsLargeArc(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IArcSegment).set_IsLargeArc(value));
	}
	final Windows.UI.Xaml.Media.SweepDirection SweepDirection()
	{
		Windows.UI.Xaml.Media.SweepDirection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IArcSegment).get_SweepDirection(&_ret));
		return _ret;
	}
	final void SweepDirection(Windows.UI.Xaml.Media.SweepDirection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IArcSegment).set_SweepDirection(value));
	}
}

interface BezierSegment : Windows.UI.Xaml.Media.PathSegment, Windows.UI.Xaml.Media.IBezierSegment
{
extern(Windows):
	final Windows.Foundation.Point Point1()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IBezierSegment).get_Point1(&_ret));
		return _ret;
	}
	final void Point1(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IBezierSegment).set_Point1(value));
	}
	final Windows.Foundation.Point Point2()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IBezierSegment).get_Point2(&_ret));
		return _ret;
	}
	final void Point2(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IBezierSegment).set_Point2(value));
	}
	final Windows.Foundation.Point Point3()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IBezierSegment).get_Point3(&_ret));
		return _ret;
	}
	final void Point3(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IBezierSegment).set_Point3(value));
	}
}

interface BitmapCache : Windows.UI.Xaml.Media.CacheMode, Windows.UI.Xaml.Media.IBitmapCache
{
}

interface Brush : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IBrush
{
extern(Windows):
	final double Opacity()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IBrush).get_Opacity(&_ret));
		return _ret;
	}
	final void Opacity(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IBrush).set_Opacity(value));
	}
	final Windows.UI.Xaml.Media.Transform Transform()
	{
		Windows.UI.Xaml.Media.Transform _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IBrush).get_Transform(&_ret));
		return _ret;
	}
	final void Transform(Windows.UI.Xaml.Media.Transform value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IBrush).set_Transform(value));
	}
	final Windows.UI.Xaml.Media.Transform RelativeTransform()
	{
		Windows.UI.Xaml.Media.Transform _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IBrush).get_RelativeTransform(&_ret));
		return _ret;
	}
	final void RelativeTransform(Windows.UI.Xaml.Media.Transform value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IBrush).set_RelativeTransform(value));
	}
}

interface BrushCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Brush)
{
extern(Windows):
	final Windows.Data.Json.IJsonValue GetAt(uint index)
	{
		Windows.Data.Json.IJsonValue _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Data.Json.IJsonValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush)).abi_RemoveAt(index));
	}
	final void Append(Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Brush)).abi_First(out_first));
	}
}

interface CacheMode : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.ICacheMode
{
}

interface CompositeTransform : Windows.UI.Xaml.Media.Transform, Windows.UI.Xaml.Media.ICompositeTransform
{
extern(Windows):
	final double CenterX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).get_CenterX(&_ret));
		return _ret;
	}
	final void CenterX(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).set_CenterX(value));
	}
	final double CenterY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).get_CenterY(&_ret));
		return _ret;
	}
	final void CenterY(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).set_CenterY(value));
	}
	final double ScaleX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).get_ScaleX(&_ret));
		return _ret;
	}
	final void ScaleX(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).set_ScaleX(value));
	}
	final double ScaleY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).get_ScaleY(&_ret));
		return _ret;
	}
	final void ScaleY(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).set_ScaleY(value));
	}
	final double SkewX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).get_SkewX(&_ret));
		return _ret;
	}
	final void SkewX(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).set_SkewX(value));
	}
	final double SkewY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).get_SkewY(&_ret));
		return _ret;
	}
	final void SkewY(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).set_SkewY(value));
	}
	final double Rotation()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).get_Rotation(&_ret));
		return _ret;
	}
	final void Rotation(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).set_Rotation(value));
	}
	final double TranslateX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).get_TranslateX(&_ret));
		return _ret;
	}
	final void TranslateX(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).set_TranslateX(value));
	}
	final double TranslateY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).get_TranslateY(&_ret));
		return _ret;
	}
	final void TranslateY(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ICompositeTransform).set_TranslateY(value));
	}
}

interface CompositionTarget : Windows.UI.Xaml.Media.ICompositionTarget
{
}

interface DoubleCollection : Windows.Foundation.Collections.IVector!(double), Windows.Foundation.Collections.IIterable!(double)
{
extern(Windows):
	final Windows.Data.Json.IJsonValue GetAt(uint index)
	{
		Windows.Data.Json.IJsonValue _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(double)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(double)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(double)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Data.Json.IJsonValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(double)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(double)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(double)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(double)).abi_RemoveAt(index));
	}
	final void Append(Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(double)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(double)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(double)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(double)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(double)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(double)).abi_First(out_first));
	}
}

interface EllipseGeometry : Windows.UI.Xaml.Media.Geometry, Windows.UI.Xaml.Media.IEllipseGeometry
{
extern(Windows):
	final Windows.Foundation.Point Center()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IEllipseGeometry).get_Center(&_ret));
		return _ret;
	}
	final void Center(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IEllipseGeometry).set_Center(value));
	}
	final double RadiusX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IEllipseGeometry).get_RadiusX(&_ret));
		return _ret;
	}
	final void RadiusX(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IEllipseGeometry).set_RadiusX(value));
	}
	final double RadiusY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IEllipseGeometry).get_RadiusY(&_ret));
		return _ret;
	}
	final void RadiusY(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IEllipseGeometry).set_RadiusY(value));
	}
}

interface FontFamily : Windows.UI.Xaml.Media.IFontFamily
{
extern(Windows):
	final HSTRING Source()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IFontFamily).get_Source(&_ret));
		return _ret;
	}
}

interface GeneralTransform : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IGeneralTransform, Windows.UI.Xaml.Media.IGeneralTransformOverrides
{
extern(Windows):
	final Windows.UI.Xaml.Media.GeneralTransform Inverse()
	{
		Windows.UI.Xaml.Media.GeneralTransform _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGeneralTransform).get_Inverse(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point TransformPoint(Windows.Foundation.Point point)
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGeneralTransform).abi_TransformPoint(point, &_ret));
		return _ret;
	}
	final bool TryTransform(Windows.Foundation.Point inPoint, Windows.Foundation.Point* out_outPoint)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGeneralTransform).abi_TryTransform(inPoint, out_outPoint, &_ret));
		return _ret;
	}
	final Windows.Foundation.Rect TransformBounds(Windows.Foundation.Rect rect)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGeneralTransform).abi_TransformBounds(rect, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.GeneralTransform InverseCore()
	{
		Windows.UI.Xaml.Media.GeneralTransform _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGeneralTransformOverrides).get_InverseCore(&_ret));
		return _ret;
	}
	final bool TryTransformCore(Windows.Foundation.Point inPoint, Windows.Foundation.Point* out_outPoint)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGeneralTransformOverrides).abi_TryTransformCore(inPoint, out_outPoint, &_ret));
		return _ret;
	}
	final Windows.Foundation.Rect TransformBoundsCore(Windows.Foundation.Rect rect)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGeneralTransformOverrides).abi_TransformBoundsCore(rect, &_ret));
		return _ret;
	}
}

interface Geometry : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IGeometry
{
extern(Windows):
	final Windows.UI.Xaml.Media.Transform Transform()
	{
		Windows.UI.Xaml.Media.Transform _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGeometry).get_Transform(&_ret));
		return _ret;
	}
	final void Transform(Windows.UI.Xaml.Media.Transform value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGeometry).set_Transform(value));
	}
	final Windows.Foundation.Rect Bounds()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGeometry).get_Bounds(&_ret));
		return _ret;
	}
}

interface GeometryCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Geometry)
{
extern(Windows):
	final Windows.Data.Json.IJsonValue GetAt(uint index)
	{
		Windows.Data.Json.IJsonValue _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Data.Json.IJsonValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry)).abi_RemoveAt(index));
	}
	final void Append(Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Geometry)).abi_First(out_first));
	}
}

interface GeometryGroup : Windows.UI.Xaml.Media.Geometry, Windows.UI.Xaml.Media.IGeometryGroup
{
extern(Windows):
	final Windows.UI.Xaml.Media.FillRule FillRule()
	{
		Windows.UI.Xaml.Media.FillRule _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGeometryGroup).get_FillRule(&_ret));
		return _ret;
	}
	final void FillRule(Windows.UI.Xaml.Media.FillRule value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGeometryGroup).set_FillRule(value));
	}
	final Windows.UI.Xaml.Media.GeometryCollection Children()
	{
		Windows.UI.Xaml.Media.GeometryCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGeometryGroup).get_Children(&_ret));
		return _ret;
	}
	final void Children(Windows.UI.Xaml.Media.GeometryCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGeometryGroup).set_Children(value));
	}
}

interface GradientBrush : Windows.UI.Xaml.Media.Brush, Windows.UI.Xaml.Media.IGradientBrush
{
extern(Windows):
	final Windows.UI.Xaml.Media.GradientSpreadMethod SpreadMethod()
	{
		Windows.UI.Xaml.Media.GradientSpreadMethod _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGradientBrush).get_SpreadMethod(&_ret));
		return _ret;
	}
	final void SpreadMethod(Windows.UI.Xaml.Media.GradientSpreadMethod value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGradientBrush).set_SpreadMethod(value));
	}
	final Windows.UI.Xaml.Media.BrushMappingMode MappingMode()
	{
		Windows.UI.Xaml.Media.BrushMappingMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGradientBrush).get_MappingMode(&_ret));
		return _ret;
	}
	final void MappingMode(Windows.UI.Xaml.Media.BrushMappingMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGradientBrush).set_MappingMode(value));
	}
	final Windows.UI.Xaml.Media.ColorInterpolationMode ColorInterpolationMode()
	{
		Windows.UI.Xaml.Media.ColorInterpolationMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGradientBrush).get_ColorInterpolationMode(&_ret));
		return _ret;
	}
	final void ColorInterpolationMode(Windows.UI.Xaml.Media.ColorInterpolationMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGradientBrush).set_ColorInterpolationMode(value));
	}
	final Windows.UI.Xaml.Media.GradientStopCollection GradientStops()
	{
		Windows.UI.Xaml.Media.GradientStopCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGradientBrush).get_GradientStops(&_ret));
		return _ret;
	}
	final void GradientStops(Windows.UI.Xaml.Media.GradientStopCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGradientBrush).set_GradientStops(value));
	}
}

interface GradientStop : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IGradientStop
{
extern(Windows):
	final Windows.UI.Color Color()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGradientStop).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGradientStop).set_Color(value));
	}
	final double Offset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGradientStop).get_Offset(&_ret));
		return _ret;
	}
	final void Offset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IGradientStop).set_Offset(value));
	}
}

interface GradientStopCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.GradientStop)
{
extern(Windows):
	final Windows.Data.Json.IJsonValue GetAt(uint index)
	{
		Windows.Data.Json.IJsonValue _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Data.Json.IJsonValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop)).abi_RemoveAt(index));
	}
	final void Append(Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.GradientStop)).abi_First(out_first));
	}
}

interface ImageBrush : Windows.UI.Xaml.Media.TileBrush, Windows.UI.Xaml.Media.IImageBrush
{
extern(Windows):
	final Windows.UI.Xaml.Media.ImageSource ImageSource()
	{
		Windows.UI.Xaml.Media.ImageSource _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IImageBrush).get_ImageSource(&_ret));
		return _ret;
	}
	final void ImageSource(Windows.UI.Xaml.Media.ImageSource value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IImageBrush).set_ImageSource(value));
	}
}

interface ImageSource : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IImageSource
{
}

interface LineGeometry : Windows.UI.Xaml.Media.Geometry, Windows.UI.Xaml.Media.ILineGeometry
{
extern(Windows):
	final Windows.Foundation.Point StartPoint()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ILineGeometry).get_StartPoint(&_ret));
		return _ret;
	}
	final void StartPoint(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ILineGeometry).set_StartPoint(value));
	}
	final Windows.Foundation.Point EndPoint()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ILineGeometry).get_EndPoint(&_ret));
		return _ret;
	}
	final void EndPoint(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ILineGeometry).set_EndPoint(value));
	}
}

interface LineSegment : Windows.UI.Xaml.Media.PathSegment, Windows.UI.Xaml.Media.ILineSegment
{
extern(Windows):
	final Windows.Foundation.Point Point()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ILineSegment).get_Point(&_ret));
		return _ret;
	}
	final void Point(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ILineSegment).set_Point(value));
	}
}

interface LinearGradientBrush : Windows.UI.Xaml.Media.GradientBrush, Windows.UI.Xaml.Media.ILinearGradientBrush
{
extern(Windows):
	final Windows.Foundation.Point StartPoint()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ILinearGradientBrush).get_StartPoint(&_ret));
		return _ret;
	}
	final void StartPoint(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ILinearGradientBrush).set_StartPoint(value));
	}
	final Windows.Foundation.Point EndPoint()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ILinearGradientBrush).get_EndPoint(&_ret));
		return _ret;
	}
	final void EndPoint(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ILinearGradientBrush).set_EndPoint(value));
	}
}

interface LoadedImageSourceLoadCompletedEventArgs : Windows.UI.Xaml.Media.ILoadedImageSourceLoadCompletedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Media.LoadedImageSourceLoadStatus Status()
	{
		Windows.UI.Xaml.Media.LoadedImageSourceLoadStatus _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ILoadedImageSourceLoadCompletedEventArgs).get_Status(&_ret));
		return _ret;
	}
}

interface LoadedImageSurface : Windows.UI.Xaml.Media.ILoadedImageSurface, Windows.Foundation.IClosable, Windows.UI.Composition.ICompositionSurface
{
extern(Windows):
	final Windows.Foundation.Size DecodedPhysicalSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ILoadedImageSurface).get_DecodedPhysicalSize(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size DecodedSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ILoadedImageSurface).get_DecodedSize(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size NaturalSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ILoadedImageSurface).get_NaturalSize(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface Matrix3DProjection : Windows.UI.Xaml.Media.Projection, Windows.UI.Xaml.Media.IMatrix3DProjection
{
extern(Windows):
	final Windows.UI.Xaml.Media.Media3D.Matrix3D ProjectionMatrix()
	{
		Windows.UI.Xaml.Media.Media3D.Matrix3D _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IMatrix3DProjection).get_ProjectionMatrix(&_ret));
		return _ret;
	}
	final void ProjectionMatrix(Windows.UI.Xaml.Media.Media3D.Matrix3D value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IMatrix3DProjection).set_ProjectionMatrix(value));
	}
}

interface MatrixHelper : Windows.UI.Xaml.Media.IMatrixHelper
{
}

interface MatrixTransform : Windows.UI.Xaml.Media.Transform, Windows.UI.Xaml.Media.IMatrixTransform
{
extern(Windows):
	final Windows.UI.Xaml.Media.Matrix Matrix()
	{
		Windows.UI.Xaml.Media.Matrix _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IMatrixTransform).get_Matrix(&_ret));
		return _ret;
	}
	final void Matrix(Windows.UI.Xaml.Media.Matrix value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IMatrixTransform).set_Matrix(value));
	}
}

interface MediaTransportControlsThumbnailRequestedEventArgs : Windows.UI.Xaml.Media.IMediaTransportControlsThumbnailRequestedEventArgs
{
extern(Windows):
	final void SetThumbnailImage(Windows.Storage.Streams.IInputStream source)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IMediaTransportControlsThumbnailRequestedEventArgs).abi_SetThumbnailImage(source));
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IMediaTransportControlsThumbnailRequestedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface PartialMediaFailureDetectedEventArgs : Windows.UI.Xaml.Media.IPartialMediaFailureDetectedEventArgs, Windows.UI.Xaml.Media.IPartialMediaFailureDetectedEventArgs2
{
extern(Windows):
	final Windows.Media.Playback.FailedMediaStreamKind StreamKind()
	{
		Windows.Media.Playback.FailedMediaStreamKind _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPartialMediaFailureDetectedEventArgs).get_StreamKind(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPartialMediaFailureDetectedEventArgs2).get_ExtendedError(&_ret));
		return _ret;
	}
}

interface PathFigure : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IPathFigure
{
extern(Windows):
	final Windows.UI.Xaml.Media.PathSegmentCollection Segments()
	{
		Windows.UI.Xaml.Media.PathSegmentCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPathFigure).get_Segments(&_ret));
		return _ret;
	}
	final void Segments(Windows.UI.Xaml.Media.PathSegmentCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPathFigure).set_Segments(value));
	}
	final Windows.Foundation.Point StartPoint()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPathFigure).get_StartPoint(&_ret));
		return _ret;
	}
	final void StartPoint(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPathFigure).set_StartPoint(value));
	}
	final bool IsClosed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPathFigure).get_IsClosed(&_ret));
		return _ret;
	}
	final void IsClosed(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPathFigure).set_IsClosed(value));
	}
	final bool IsFilled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPathFigure).get_IsFilled(&_ret));
		return _ret;
	}
	final void IsFilled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPathFigure).set_IsFilled(value));
	}
}

interface PathFigureCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.PathFigure)
{
extern(Windows):
	final Windows.Data.Json.IJsonValue GetAt(uint index)
	{
		Windows.Data.Json.IJsonValue _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Data.Json.IJsonValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure)).abi_RemoveAt(index));
	}
	final void Append(Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.PathFigure)).abi_First(out_first));
	}
}

interface PathGeometry : Windows.UI.Xaml.Media.Geometry, Windows.UI.Xaml.Media.IPathGeometry
{
extern(Windows):
	final Windows.UI.Xaml.Media.FillRule FillRule()
	{
		Windows.UI.Xaml.Media.FillRule _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPathGeometry).get_FillRule(&_ret));
		return _ret;
	}
	final void FillRule(Windows.UI.Xaml.Media.FillRule value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPathGeometry).set_FillRule(value));
	}
	final Windows.UI.Xaml.Media.PathFigureCollection Figures()
	{
		Windows.UI.Xaml.Media.PathFigureCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPathGeometry).get_Figures(&_ret));
		return _ret;
	}
	final void Figures(Windows.UI.Xaml.Media.PathFigureCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPathGeometry).set_Figures(value));
	}
}

interface PathSegment : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IPathSegment
{
}

interface PathSegmentCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.PathSegment)
{
extern(Windows):
	final Windows.Data.Json.IJsonValue GetAt(uint index)
	{
		Windows.Data.Json.IJsonValue _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Data.Json.IJsonValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment)).abi_RemoveAt(index));
	}
	final void Append(Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.PathSegment)).abi_First(out_first));
	}
}

interface PlaneProjection : Windows.UI.Xaml.Media.Projection, Windows.UI.Xaml.Media.IPlaneProjection
{
extern(Windows):
	final double LocalOffsetX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).get_LocalOffsetX(&_ret));
		return _ret;
	}
	final void LocalOffsetX(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).set_LocalOffsetX(value));
	}
	final double LocalOffsetY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).get_LocalOffsetY(&_ret));
		return _ret;
	}
	final void LocalOffsetY(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).set_LocalOffsetY(value));
	}
	final double LocalOffsetZ()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).get_LocalOffsetZ(&_ret));
		return _ret;
	}
	final void LocalOffsetZ(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).set_LocalOffsetZ(value));
	}
	final double RotationX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).get_RotationX(&_ret));
		return _ret;
	}
	final void RotationX(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).set_RotationX(value));
	}
	final double RotationY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).get_RotationY(&_ret));
		return _ret;
	}
	final void RotationY(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).set_RotationY(value));
	}
	final double RotationZ()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).get_RotationZ(&_ret));
		return _ret;
	}
	final void RotationZ(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).set_RotationZ(value));
	}
	final double CenterOfRotationX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).get_CenterOfRotationX(&_ret));
		return _ret;
	}
	final void CenterOfRotationX(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).set_CenterOfRotationX(value));
	}
	final double CenterOfRotationY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).get_CenterOfRotationY(&_ret));
		return _ret;
	}
	final void CenterOfRotationY(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).set_CenterOfRotationY(value));
	}
	final double CenterOfRotationZ()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).get_CenterOfRotationZ(&_ret));
		return _ret;
	}
	final void CenterOfRotationZ(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).set_CenterOfRotationZ(value));
	}
	final double GlobalOffsetX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).get_GlobalOffsetX(&_ret));
		return _ret;
	}
	final void GlobalOffsetX(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).set_GlobalOffsetX(value));
	}
	final double GlobalOffsetY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).get_GlobalOffsetY(&_ret));
		return _ret;
	}
	final void GlobalOffsetY(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).set_GlobalOffsetY(value));
	}
	final double GlobalOffsetZ()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).get_GlobalOffsetZ(&_ret));
		return _ret;
	}
	final void GlobalOffsetZ(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).set_GlobalOffsetZ(value));
	}
	final Windows.UI.Xaml.Media.Media3D.Matrix3D ProjectionMatrix()
	{
		Windows.UI.Xaml.Media.Media3D.Matrix3D _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPlaneProjection).get_ProjectionMatrix(&_ret));
		return _ret;
	}
}

interface PointCollection : Windows.Foundation.Collections.IVector!(Windows.Foundation.Point), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point)
{
extern(Windows):
	final Windows.Data.Json.IJsonValue GetAt(uint index)
	{
		Windows.Data.Json.IJsonValue _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Data.Json.IJsonValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point)).abi_RemoveAt(index));
	}
	final void Append(Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point)).abi_First(out_first));
	}
}

interface PolyBezierSegment : Windows.UI.Xaml.Media.PathSegment, Windows.UI.Xaml.Media.IPolyBezierSegment
{
extern(Windows):
	final Windows.UI.Xaml.Media.PointCollection Points()
	{
		Windows.UI.Xaml.Media.PointCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPolyBezierSegment).get_Points(&_ret));
		return _ret;
	}
	final void Points(Windows.UI.Xaml.Media.PointCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPolyBezierSegment).set_Points(value));
	}
}

interface PolyLineSegment : Windows.UI.Xaml.Media.PathSegment, Windows.UI.Xaml.Media.IPolyLineSegment
{
extern(Windows):
	final Windows.UI.Xaml.Media.PointCollection Points()
	{
		Windows.UI.Xaml.Media.PointCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPolyLineSegment).get_Points(&_ret));
		return _ret;
	}
	final void Points(Windows.UI.Xaml.Media.PointCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPolyLineSegment).set_Points(value));
	}
}

interface PolyQuadraticBezierSegment : Windows.UI.Xaml.Media.PathSegment, Windows.UI.Xaml.Media.IPolyQuadraticBezierSegment
{
extern(Windows):
	final Windows.UI.Xaml.Media.PointCollection Points()
	{
		Windows.UI.Xaml.Media.PointCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPolyQuadraticBezierSegment).get_Points(&_ret));
		return _ret;
	}
	final void Points(Windows.UI.Xaml.Media.PointCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IPolyQuadraticBezierSegment).set_Points(value));
	}
}

interface Projection : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IProjection
{
}

interface QuadraticBezierSegment : Windows.UI.Xaml.Media.PathSegment, Windows.UI.Xaml.Media.IQuadraticBezierSegment
{
extern(Windows):
	final Windows.Foundation.Point Point1()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IQuadraticBezierSegment).get_Point1(&_ret));
		return _ret;
	}
	final void Point1(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IQuadraticBezierSegment).set_Point1(value));
	}
	final Windows.Foundation.Point Point2()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IQuadraticBezierSegment).get_Point2(&_ret));
		return _ret;
	}
	final void Point2(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IQuadraticBezierSegment).set_Point2(value));
	}
}

interface RateChangedRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Media.IRateChangedRoutedEventArgs
{
}

interface RectangleGeometry : Windows.UI.Xaml.Media.Geometry, Windows.UI.Xaml.Media.IRectangleGeometry
{
extern(Windows):
	final Windows.Foundation.Rect Rect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IRectangleGeometry).get_Rect(&_ret));
		return _ret;
	}
	final void Rect(Windows.Foundation.Rect value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IRectangleGeometry).set_Rect(value));
	}
}

interface RenderingEventArgs : Windows.UI.Xaml.Media.IRenderingEventArgs
{
extern(Windows):
	final Windows.Foundation.TimeSpan RenderingTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IRenderingEventArgs).get_RenderingTime(&_ret));
		return _ret;
	}
}

interface RotateTransform : Windows.UI.Xaml.Media.Transform, Windows.UI.Xaml.Media.IRotateTransform
{
extern(Windows):
	final double CenterX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IRotateTransform).get_CenterX(&_ret));
		return _ret;
	}
	final void CenterX(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IRotateTransform).set_CenterX(value));
	}
	final double CenterY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IRotateTransform).get_CenterY(&_ret));
		return _ret;
	}
	final void CenterY(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IRotateTransform).set_CenterY(value));
	}
	final double Angle()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IRotateTransform).get_Angle(&_ret));
		return _ret;
	}
	final void Angle(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IRotateTransform).set_Angle(value));
	}
}

interface ScaleTransform : Windows.UI.Xaml.Media.Transform, Windows.UI.Xaml.Media.IScaleTransform
{
extern(Windows):
	final double CenterX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IScaleTransform).get_CenterX(&_ret));
		return _ret;
	}
	final void CenterX(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IScaleTransform).set_CenterX(value));
	}
	final double CenterY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IScaleTransform).get_CenterY(&_ret));
		return _ret;
	}
	final void CenterY(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IScaleTransform).set_CenterY(value));
	}
	final double ScaleX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IScaleTransform).get_ScaleX(&_ret));
		return _ret;
	}
	final void ScaleX(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IScaleTransform).set_ScaleX(value));
	}
	final double ScaleY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IScaleTransform).get_ScaleY(&_ret));
		return _ret;
	}
	final void ScaleY(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IScaleTransform).set_ScaleY(value));
	}
}

interface SkewTransform : Windows.UI.Xaml.Media.Transform, Windows.UI.Xaml.Media.ISkewTransform
{
extern(Windows):
	final double CenterX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ISkewTransform).get_CenterX(&_ret));
		return _ret;
	}
	final void CenterX(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ISkewTransform).set_CenterX(value));
	}
	final double CenterY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ISkewTransform).get_CenterY(&_ret));
		return _ret;
	}
	final void CenterY(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ISkewTransform).set_CenterY(value));
	}
	final double AngleX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ISkewTransform).get_AngleX(&_ret));
		return _ret;
	}
	final void AngleX(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ISkewTransform).set_AngleX(value));
	}
	final double AngleY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ISkewTransform).get_AngleY(&_ret));
		return _ret;
	}
	final void AngleY(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ISkewTransform).set_AngleY(value));
	}
}

interface SolidColorBrush : Windows.UI.Xaml.Media.Brush, Windows.UI.Xaml.Media.ISolidColorBrush
{
extern(Windows):
	final Windows.UI.Color Color()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ISolidColorBrush).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ISolidColorBrush).set_Color(value));
	}
}

interface TileBrush : Windows.UI.Xaml.Media.Brush, Windows.UI.Xaml.Media.ITileBrush
{
extern(Windows):
	final Windows.UI.Xaml.Media.AlignmentX AlignmentX()
	{
		Windows.UI.Xaml.Media.AlignmentX _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITileBrush).get_AlignmentX(&_ret));
		return _ret;
	}
	final void AlignmentX(Windows.UI.Xaml.Media.AlignmentX value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITileBrush).set_AlignmentX(value));
	}
	final Windows.UI.Xaml.Media.AlignmentY AlignmentY()
	{
		Windows.UI.Xaml.Media.AlignmentY _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITileBrush).get_AlignmentY(&_ret));
		return _ret;
	}
	final void AlignmentY(Windows.UI.Xaml.Media.AlignmentY value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITileBrush).set_AlignmentY(value));
	}
	final Windows.UI.Xaml.Media.Stretch Stretch()
	{
		Windows.UI.Xaml.Media.Stretch _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITileBrush).get_Stretch(&_ret));
		return _ret;
	}
	final void Stretch(Windows.UI.Xaml.Media.Stretch value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITileBrush).set_Stretch(value));
	}
}

interface TimelineMarker : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.ITimelineMarker
{
extern(Windows):
	final Windows.Foundation.TimeSpan Time()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITimelineMarker).get_Time(&_ret));
		return _ret;
	}
	final void Time(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITimelineMarker).set_Time(value));
	}
	final HSTRING Type()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITimelineMarker).get_Type(&_ret));
		return _ret;
	}
	final void Type(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITimelineMarker).set_Type(value));
	}
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITimelineMarker).get_Text(&_ret));
		return _ret;
	}
	final void Text(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITimelineMarker).set_Text(value));
	}
}

interface TimelineMarkerCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.TimelineMarker)
{
extern(Windows):
	final Windows.Data.Json.IJsonValue GetAt(uint index)
	{
		Windows.Data.Json.IJsonValue _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Data.Json.IJsonValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker)).abi_RemoveAt(index));
	}
	final void Append(Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.TimelineMarker)).abi_First(out_first));
	}
}

interface TimelineMarkerRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Media.ITimelineMarkerRoutedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Media.TimelineMarker Marker()
	{
		Windows.UI.Xaml.Media.TimelineMarker _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITimelineMarkerRoutedEventArgs).get_Marker(&_ret));
		return _ret;
	}
	final void Marker(Windows.UI.Xaml.Media.TimelineMarker value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITimelineMarkerRoutedEventArgs).set_Marker(value));
	}
}

interface Transform : Windows.UI.Xaml.Media.GeneralTransform, Windows.UI.Xaml.Media.ITransform
{
}

interface TransformCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Transform)
{
extern(Windows):
	final Windows.Data.Json.IJsonValue GetAt(uint index)
	{
		Windows.Data.Json.IJsonValue _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Data.Json.IJsonValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform)).abi_RemoveAt(index));
	}
	final void Append(Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Transform)).abi_First(out_first));
	}
}

interface TransformGroup : Windows.UI.Xaml.Media.Transform, Windows.UI.Xaml.Media.ITransformGroup
{
extern(Windows):
	final Windows.UI.Xaml.Media.TransformCollection Children()
	{
		Windows.UI.Xaml.Media.TransformCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITransformGroup).get_Children(&_ret));
		return _ret;
	}
	final void Children(Windows.UI.Xaml.Media.TransformCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITransformGroup).set_Children(value));
	}
	final Windows.UI.Xaml.Media.Matrix Value()
	{
		Windows.UI.Xaml.Media.Matrix _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITransformGroup).get_Value(&_ret));
		return _ret;
	}
}

interface TranslateTransform : Windows.UI.Xaml.Media.Transform, Windows.UI.Xaml.Media.ITranslateTransform
{
extern(Windows):
	final double X()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITranslateTransform).get_X(&_ret));
		return _ret;
	}
	final void X(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITranslateTransform).set_X(value));
	}
	final double Y()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITranslateTransform).get_Y(&_ret));
		return _ret;
	}
	final void Y(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.ITranslateTransform).set_Y(value));
	}
}

interface VisualTreeHelper : Windows.UI.Xaml.Media.IVisualTreeHelper
{
}

interface XamlCompositionBrushBase : Windows.UI.Xaml.Media.Brush, Windows.UI.Xaml.Media.IXamlCompositionBrushBase, Windows.UI.Xaml.Media.IXamlCompositionBrushBaseOverrides, Windows.UI.Xaml.Media.IXamlCompositionBrushBaseProtected
{
extern(Windows):
	final Windows.UI.Color FallbackColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IXamlCompositionBrushBase).get_FallbackColor(&_ret));
		return _ret;
	}
	final void FallbackColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IXamlCompositionBrushBase).set_FallbackColor(value));
	}
	final void OnConnected()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IXamlCompositionBrushBaseOverrides).abi_OnConnected());
	}
	final void OnDisconnected()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IXamlCompositionBrushBaseOverrides).abi_OnDisconnected());
	}
	final Windows.UI.Composition.CompositionBrush CompositionBrush()
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IXamlCompositionBrushBaseProtected).get_CompositionBrush(&_ret));
		return _ret;
	}
	final void CompositionBrush(Windows.UI.Composition.CompositionBrush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IXamlCompositionBrushBaseProtected).set_CompositionBrush(value));
	}
}

interface XamlLight : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IXamlLight, Windows.UI.Xaml.Media.IXamlLightOverrides, Windows.UI.Xaml.Media.IXamlLightProtected
{
extern(Windows):
	final HSTRING GetId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IXamlLightOverrides).abi_GetId(&_ret));
		return _ret;
	}
	final void OnConnected(Windows.UI.Xaml.UIElement newElement)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IXamlLightOverrides).abi_OnConnected(newElement));
	}
	final void OnDisconnected(Windows.UI.Xaml.UIElement oldElement)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IXamlLightOverrides).abi_OnDisconnected(oldElement));
	}
	final Windows.UI.Composition.CompositionLight CompositionLight()
	{
		Windows.UI.Composition.CompositionLight _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IXamlLightProtected).get_CompositionLight(&_ret));
		return _ret;
	}
	final void CompositionLight(Windows.UI.Composition.CompositionLight value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.IXamlLightProtected).set_CompositionLight(value));
	}
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