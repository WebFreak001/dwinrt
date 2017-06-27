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
		Debug.OK((cast(Windows.UI.Xaml.Media.IArcSegment)this.asInterface(uuid("07940c5f-63fb-4469-91be-f1097c168052"))).get_Point(&_ret));
		return _ret;
	}
	final void Point(Windows.Foundation.Point value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IArcSegment)this.asInterface(uuid("07940c5f-63fb-4469-91be-f1097c168052"))).set_Point(value));
	}
	final Windows.Foundation.Size Size()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IArcSegment)this.asInterface(uuid("07940c5f-63fb-4469-91be-f1097c168052"))).get_Size(&_ret));
		return _ret;
	}
	final void Size(Windows.Foundation.Size value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IArcSegment)this.asInterface(uuid("07940c5f-63fb-4469-91be-f1097c168052"))).set_Size(value));
	}
	final double RotationAngle()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IArcSegment)this.asInterface(uuid("07940c5f-63fb-4469-91be-f1097c168052"))).get_RotationAngle(&_ret));
		return _ret;
	}
	final void RotationAngle(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IArcSegment)this.asInterface(uuid("07940c5f-63fb-4469-91be-f1097c168052"))).set_RotationAngle(value));
	}
	final bool IsLargeArc()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IArcSegment)this.asInterface(uuid("07940c5f-63fb-4469-91be-f1097c168052"))).get_IsLargeArc(&_ret));
		return _ret;
	}
	final void IsLargeArc(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IArcSegment)this.asInterface(uuid("07940c5f-63fb-4469-91be-f1097c168052"))).set_IsLargeArc(value));
	}
	final Windows.UI.Xaml.Media.SweepDirection SweepDirection()
	{
		Windows.UI.Xaml.Media.SweepDirection _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IArcSegment)this.asInterface(uuid("07940c5f-63fb-4469-91be-f1097c168052"))).get_SweepDirection(&_ret));
		return _ret;
	}
	final void SweepDirection(Windows.UI.Xaml.Media.SweepDirection value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IArcSegment)this.asInterface(uuid("07940c5f-63fb-4469-91be-f1097c168052"))).set_SweepDirection(value));
	}

	private static Windows.UI.Xaml.Media.IArcSegmentStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IArcSegmentStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IArcSegmentStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty PointProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PointProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SizeProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SizeProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty RotationAngleProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_RotationAngleProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IsLargeArcProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsLargeArcProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SweepDirectionProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SweepDirectionProperty(&_ret));
		return _ret;
	}
	static ArcSegment New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ArcSegment).abi_ActivateInstance(&ret));
		return cast(ArcSegment) ret;
	}
}

interface BezierSegment : Windows.UI.Xaml.Media.PathSegment, Windows.UI.Xaml.Media.IBezierSegment
{
extern(Windows):
	final Windows.Foundation.Point Point1()
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IBezierSegment)this.asInterface(uuid("af4bb9ee-8984-49b7-81df-3f35994b95eb"))).get_Point1(&_ret));
		return _ret;
	}
	final void Point1(Windows.Foundation.Point value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IBezierSegment)this.asInterface(uuid("af4bb9ee-8984-49b7-81df-3f35994b95eb"))).set_Point1(value));
	}
	final Windows.Foundation.Point Point2()
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IBezierSegment)this.asInterface(uuid("af4bb9ee-8984-49b7-81df-3f35994b95eb"))).get_Point2(&_ret));
		return _ret;
	}
	final void Point2(Windows.Foundation.Point value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IBezierSegment)this.asInterface(uuid("af4bb9ee-8984-49b7-81df-3f35994b95eb"))).set_Point2(value));
	}
	final Windows.Foundation.Point Point3()
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IBezierSegment)this.asInterface(uuid("af4bb9ee-8984-49b7-81df-3f35994b95eb"))).get_Point3(&_ret));
		return _ret;
	}
	final void Point3(Windows.Foundation.Point value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IBezierSegment)this.asInterface(uuid("af4bb9ee-8984-49b7-81df-3f35994b95eb"))).set_Point3(value));
	}

	private static Windows.UI.Xaml.Media.IBezierSegmentStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IBezierSegmentStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IBezierSegmentStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty Point1Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_Point1Property(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty Point2Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_Point2Property(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty Point3Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_Point3Property(&_ret));
		return _ret;
	}
	static BezierSegment New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(BezierSegment).abi_ActivateInstance(&ret));
		return cast(BezierSegment) ret;
	}
}

interface BitmapCache : Windows.UI.Xaml.Media.CacheMode, Windows.UI.Xaml.Media.IBitmapCache
{
	static BitmapCache New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(BitmapCache).abi_ActivateInstance(&ret));
		return cast(BitmapCache) ret;
	}
}

interface Brush : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IBrush
{
extern(Windows):
	final double Opacity()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IBrush)this.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).get_Opacity(&_ret));
		return _ret;
	}
	final void Opacity(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IBrush)this.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).set_Opacity(value));
	}
	final Windows.UI.Xaml.Media.Transform Transform()
	{
		Windows.UI.Xaml.Media.Transform _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IBrush)this.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).get_Transform(&_ret));
		return _ret;
	}
	final void Transform(Windows.UI.Xaml.Media.Transform value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IBrush)this.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).set_Transform(value));
	}
	final Windows.UI.Xaml.Media.Transform RelativeTransform()
	{
		Windows.UI.Xaml.Media.Transform _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IBrush)this.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).get_RelativeTransform(&_ret));
		return _ret;
	}
	final void RelativeTransform(Windows.UI.Xaml.Media.Transform value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IBrush)this.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).set_RelativeTransform(value));
	}

	private static Windows.UI.Xaml.Media.IBrushStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IBrushStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IBrushStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty OpacityProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_OpacityProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty TransformProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_TransformProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty RelativeTransformProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_RelativeTransformProperty(&_ret));
		return _ret;
	}
	static Brush New()
	{
		IInspectable outer, inner;
		Brush ret;
		Debug.OK(activationFactory!(Brush, Windows.UI.Xaml.Media.IBrushFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(Brush, Brush, Windows.UI.Xaml.Media.IBrushFactory)
class BrushT(Base) : AgileObject!Base, Brush
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Opacity(double* return_value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).get_Opacity(return_value); }
	override HRESULT set_Opacity(double value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).set_Opacity(value); }
	override HRESULT get_Transform(Windows.UI.Xaml.Media.Transform* return_value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).get_Transform(return_value); }
	override HRESULT set_Transform(Windows.UI.Xaml.Media.Transform value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).set_Transform(value); }
	override HRESULT get_RelativeTransform(Windows.UI.Xaml.Media.Transform* return_value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).get_RelativeTransform(return_value); }
	override HRESULT set_RelativeTransform(Windows.UI.Xaml.Media.Transform value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).set_RelativeTransform(value); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface BrushCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Brush)
{
extern(Windows):
	final Windows.UI.Xaml.Media.Brush GetAt(uint index)
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Media.Brush)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.Media.Brush value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.Media.Brush item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.Media.Brush item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush))this).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.Media.Brush item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.Media.Brush* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.Media.Brush* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.Media.Brush)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Brush))this).abi_First(out_first));
	}
	static BrushCollection New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(BrushCollection).abi_ActivateInstance(&ret));
		return cast(BrushCollection) ret;
	}
}

interface CacheMode : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.ICacheMode
{
	static CacheMode New()
	{
		IInspectable outer, inner;
		CacheMode ret;
		Debug.OK(activationFactory!(CacheMode, Windows.UI.Xaml.Media.ICacheModeFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(CacheMode, CacheMode, Windows.UI.Xaml.Media.ICacheModeFactory)
class CacheModeT(Base) : AgileObject!Base, CacheMode
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface CompositeTransform : Windows.UI.Xaml.Media.Transform, Windows.UI.Xaml.Media.ICompositeTransform
{
extern(Windows):
	final double CenterX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).get_CenterX(&_ret));
		return _ret;
	}
	final void CenterX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).set_CenterX(value));
	}
	final double CenterY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).get_CenterY(&_ret));
		return _ret;
	}
	final void CenterY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).set_CenterY(value));
	}
	final double ScaleX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).get_ScaleX(&_ret));
		return _ret;
	}
	final void ScaleX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).set_ScaleX(value));
	}
	final double ScaleY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).get_ScaleY(&_ret));
		return _ret;
	}
	final void ScaleY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).set_ScaleY(value));
	}
	final double SkewX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).get_SkewX(&_ret));
		return _ret;
	}
	final void SkewX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).set_SkewX(value));
	}
	final double SkewY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).get_SkewY(&_ret));
		return _ret;
	}
	final void SkewY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).set_SkewY(value));
	}
	final double Rotation()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).get_Rotation(&_ret));
		return _ret;
	}
	final void Rotation(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).set_Rotation(value));
	}
	final double TranslateX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).get_TranslateX(&_ret));
		return _ret;
	}
	final void TranslateX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).set_TranslateX(value));
	}
	final double TranslateY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).get_TranslateY(&_ret));
		return _ret;
	}
	final void TranslateY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ICompositeTransform)this.asInterface(uuid("c8a4385b-f24a-4701-a265-a78846f142b9"))).set_TranslateY(value));
	}

	private static Windows.UI.Xaml.Media.ICompositeTransformStatics _staticInstance;
	public static Windows.UI.Xaml.Media.ICompositeTransformStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.ICompositeTransformStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty CenterXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CenterXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CenterYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CenterYProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ScaleXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ScaleXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ScaleYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ScaleYProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SkewXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SkewXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SkewYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SkewYProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty RotationProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_RotationProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty TranslateXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_TranslateXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty TranslateYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_TranslateYProperty(&_ret));
		return _ret;
	}
	static CompositeTransform New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(CompositeTransform).abi_ActivateInstance(&ret));
		return cast(CompositeTransform) ret;
	}
}

interface CompositionTarget : Windows.UI.Xaml.Media.ICompositionTarget
{
	private static Windows.UI.Xaml.Media.ICompositionTargetStatics _staticInstance;
	public static Windows.UI.Xaml.Media.ICompositionTargetStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.ICompositionTargetStatics);
		return _staticInstance;
	}
	static EventRegistrationToken OnRendering(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_Rendering(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeRendering(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_Rendering(token));
	}
	static EventRegistrationToken OnSurfaceContentsLost(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_SurfaceContentsLost(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeSurfaceContentsLost(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_SurfaceContentsLost(token));
	}
}

interface DoubleCollection : Windows.Foundation.Collections.IVector!(double), Windows.Foundation.Collections.IIterable!(double)
{
extern(Windows):
	final double GetAt(uint index)
	{
		double _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(double))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(double))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(double)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(double))this).abi_GetView(out_view));
	}
	final uint IndexOf(double value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(double))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, double item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(double))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, double item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(double))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(double))this).abi_RemoveAt(index));
	}
	final void Append(double item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(double))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(double))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(double))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, double* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(double))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, double* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(double))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(double)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(double))this).abi_First(out_first));
	}
	static DoubleCollection New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(DoubleCollection).abi_ActivateInstance(&ret));
		return cast(DoubleCollection) ret;
	}
}

interface EllipseGeometry : Windows.UI.Xaml.Media.Geometry, Windows.UI.Xaml.Media.IEllipseGeometry
{
extern(Windows):
	final Windows.Foundation.Point Center()
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IEllipseGeometry)this.asInterface(uuid("d4f61bba-4ea2-40d6-aa6c-8d38aa87651f"))).get_Center(&_ret));
		return _ret;
	}
	final void Center(Windows.Foundation.Point value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IEllipseGeometry)this.asInterface(uuid("d4f61bba-4ea2-40d6-aa6c-8d38aa87651f"))).set_Center(value));
	}
	final double RadiusX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IEllipseGeometry)this.asInterface(uuid("d4f61bba-4ea2-40d6-aa6c-8d38aa87651f"))).get_RadiusX(&_ret));
		return _ret;
	}
	final void RadiusX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IEllipseGeometry)this.asInterface(uuid("d4f61bba-4ea2-40d6-aa6c-8d38aa87651f"))).set_RadiusX(value));
	}
	final double RadiusY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IEllipseGeometry)this.asInterface(uuid("d4f61bba-4ea2-40d6-aa6c-8d38aa87651f"))).get_RadiusY(&_ret));
		return _ret;
	}
	final void RadiusY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IEllipseGeometry)this.asInterface(uuid("d4f61bba-4ea2-40d6-aa6c-8d38aa87651f"))).set_RadiusY(value));
	}

	private static Windows.UI.Xaml.Media.IEllipseGeometryStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IEllipseGeometryStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IEllipseGeometryStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty CenterProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CenterProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty RadiusXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_RadiusXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty RadiusYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_RadiusYProperty(&_ret));
		return _ret;
	}
	static EllipseGeometry New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(EllipseGeometry).abi_ActivateInstance(&ret));
		return cast(EllipseGeometry) ret;
	}
}

interface FontFamily : Windows.UI.Xaml.Media.IFontFamily
{
extern(Windows):
	final HSTRING Source()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IFontFamily)this.asInterface(uuid("92467e64-d66a-4cf4-9322-3d23b3c0c361"))).get_Source(&_ret));
		return _ret;
	}

	private static Windows.UI.Xaml.Media.IFontFamilyStatics2 _staticInstance;
	public static Windows.UI.Xaml.Media.IFontFamilyStatics2 staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IFontFamilyStatics2);
		return _staticInstance;
	}
	static Windows.UI.Xaml.Media.FontFamily XamlAutoFontFamily()
	{
		Windows.UI.Xaml.Media.FontFamily _ret;
		Debug.OK(staticInstance.get_XamlAutoFontFamily(&_ret));
		return _ret;
	}
}
@makable!(FontFamily, FontFamily, Windows.UI.Xaml.Media.IFontFamilyFactory)
class FontFamilyT(Base) : AgileObject!Base, FontFamily
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Source(HSTRING* return_value) { return (cast(Windows.UI.Xaml.Media.IFontFamily)m_inner.asInterface(uuid("92467e64-d66a-4cf4-9322-3d23b3c0c361"))).get_Source(return_value); }

	this() {}
	IInspectable m_inner;
}

interface GeneralTransform : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IGeneralTransform, Windows.UI.Xaml.Media.IGeneralTransformOverrides
{
extern(Windows):
	final Windows.UI.Xaml.Media.GeneralTransform Inverse()
	{
		Windows.UI.Xaml.Media.GeneralTransform _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IGeneralTransform)this.asInterface(uuid("a06798b7-a2ec-415f-ade2-eade9333f2c7"))).get_Inverse(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point TransformPoint(Windows.Foundation.Point point)
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IGeneralTransform)this.asInterface(uuid("a06798b7-a2ec-415f-ade2-eade9333f2c7"))).abi_TransformPoint(point, &_ret));
		return _ret;
	}
	final bool TryTransform(Windows.Foundation.Point inPoint, Windows.Foundation.Point* out_outPoint)
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IGeneralTransform)this.asInterface(uuid("a06798b7-a2ec-415f-ade2-eade9333f2c7"))).abi_TryTransform(inPoint, out_outPoint, &_ret));
		return _ret;
	}
	final Windows.Foundation.Rect TransformBounds(Windows.Foundation.Rect rect)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IGeneralTransform)this.asInterface(uuid("a06798b7-a2ec-415f-ade2-eade9333f2c7"))).abi_TransformBounds(rect, &_ret));
		return _ret;
	}
	static GeneralTransform New()
	{
		IInspectable outer, inner;
		GeneralTransform ret;
		Debug.OK(activationFactory!(GeneralTransform, Windows.UI.Xaml.Media.IGeneralTransformFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(GeneralTransform, GeneralTransform, Windows.UI.Xaml.Media.IGeneralTransformFactory)
class GeneralTransformT(Base) : AgileObject!Base, GeneralTransform
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Inverse(Windows.UI.Xaml.Media.GeneralTransform* return_value) { return (cast(Windows.UI.Xaml.Media.IGeneralTransform)m_inner.asInterface(uuid("a06798b7-a2ec-415f-ade2-eade9333f2c7"))).get_Inverse(return_value); }
	override HRESULT abi_TransformPoint(Windows.Foundation.Point point, Windows.Foundation.Point* return_returnValue) { return (cast(Windows.UI.Xaml.Media.IGeneralTransform)m_inner.asInterface(uuid("a06798b7-a2ec-415f-ade2-eade9333f2c7"))).abi_TransformPoint(point, return_returnValue); }
	override HRESULT abi_TryTransform(Windows.Foundation.Point inPoint, Windows.Foundation.Point* out_outPoint, bool* return_returnValue) { return (cast(Windows.UI.Xaml.Media.IGeneralTransform)m_inner.asInterface(uuid("a06798b7-a2ec-415f-ade2-eade9333f2c7"))).abi_TryTransform(inPoint, out_outPoint, return_returnValue); }
	override HRESULT abi_TransformBounds(Windows.Foundation.Rect rect, Windows.Foundation.Rect* return_returnValue) { return (cast(Windows.UI.Xaml.Media.IGeneralTransform)m_inner.asInterface(uuid("a06798b7-a2ec-415f-ade2-eade9333f2c7"))).abi_TransformBounds(rect, return_returnValue); }

	override HRESULT get_InverseCore(Windows.UI.Xaml.Media.GeneralTransform* return_value) { this.InverseCore(return_value); return S_OK; }
	void InverseCore(Windows.UI.Xaml.Media.GeneralTransform* return_value) { Debug.OK((cast(Windows.UI.Xaml.Media.IGeneralTransformOverrides)m_inner.asInterface(uuid("4f121083-24cf-4524-90ad-8a42b1c12783"))).get_InverseCore(return_value)); }
	override HRESULT abi_TryTransformCore(Windows.Foundation.Point inPoint, Windows.Foundation.Point* out_outPoint, bool* return_returnValue) { this.TryTransformCore(inPoint, out_outPoint, return_returnValue); return S_OK; }
	void TryTransformCore(Windows.Foundation.Point inPoint, Windows.Foundation.Point* out_outPoint, bool* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.Media.IGeneralTransformOverrides)m_inner.asInterface(uuid("4f121083-24cf-4524-90ad-8a42b1c12783"))).abi_TryTransformCore(inPoint, out_outPoint, return_returnValue)); }
	override HRESULT abi_TransformBoundsCore(Windows.Foundation.Rect rect, Windows.Foundation.Rect* return_returnValue) { this.TransformBoundsCore(rect, return_returnValue); return S_OK; }
	void TransformBoundsCore(Windows.Foundation.Rect rect, Windows.Foundation.Rect* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.Media.IGeneralTransformOverrides)m_inner.asInterface(uuid("4f121083-24cf-4524-90ad-8a42b1c12783"))).abi_TransformBoundsCore(rect, return_returnValue)); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface Geometry : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IGeometry
{
extern(Windows):
	final Windows.UI.Xaml.Media.Transform Transform()
	{
		Windows.UI.Xaml.Media.Transform _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IGeometry)this.asInterface(uuid("fa123889-0acd-417b-b62d-5ca1bf4dfc0e"))).get_Transform(&_ret));
		return _ret;
	}
	final void Transform(Windows.UI.Xaml.Media.Transform value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IGeometry)this.asInterface(uuid("fa123889-0acd-417b-b62d-5ca1bf4dfc0e"))).set_Transform(value));
	}
	final Windows.Foundation.Rect Bounds()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IGeometry)this.asInterface(uuid("fa123889-0acd-417b-b62d-5ca1bf4dfc0e"))).get_Bounds(&_ret));
		return _ret;
	}

	private static Windows.UI.Xaml.Media.IGeometryStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IGeometryStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IGeometryStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.Media.Geometry Empty()
	{
		Windows.UI.Xaml.Media.Geometry _ret;
		Debug.OK(staticInstance.get_Empty(&_ret));
		return _ret;
	}
	static double StandardFlatteningTolerance()
	{
		double _ret;
		Debug.OK(staticInstance.get_StandardFlatteningTolerance(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty TransformProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_TransformProperty(&_ret));
		return _ret;
	}
}
@makable!(Geometry, Geometry, Windows.UI.Xaml.Media.IGeometryFactory)
class GeometryT(Base) : AgileObject!Base, Geometry
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Transform(Windows.UI.Xaml.Media.Transform* return_value) { return (cast(Windows.UI.Xaml.Media.IGeometry)m_inner.asInterface(uuid("fa123889-0acd-417b-b62d-5ca1bf4dfc0e"))).get_Transform(return_value); }
	override HRESULT set_Transform(Windows.UI.Xaml.Media.Transform value) { return (cast(Windows.UI.Xaml.Media.IGeometry)m_inner.asInterface(uuid("fa123889-0acd-417b-b62d-5ca1bf4dfc0e"))).set_Transform(value); }
	override HRESULT get_Bounds(Windows.Foundation.Rect* return_value) { return (cast(Windows.UI.Xaml.Media.IGeometry)m_inner.asInterface(uuid("fa123889-0acd-417b-b62d-5ca1bf4dfc0e"))).get_Bounds(return_value); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface GeometryCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Geometry)
{
extern(Windows):
	final Windows.UI.Xaml.Media.Geometry GetAt(uint index)
	{
		Windows.UI.Xaml.Media.Geometry _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Media.Geometry)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.Media.Geometry value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.Media.Geometry item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.Media.Geometry item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry))this).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.Media.Geometry item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.Media.Geometry* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.Media.Geometry* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Geometry))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.Media.Geometry)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Geometry))this).abi_First(out_first));
	}
	static GeometryCollection New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(GeometryCollection).abi_ActivateInstance(&ret));
		return cast(GeometryCollection) ret;
	}
}

interface GeometryGroup : Windows.UI.Xaml.Media.Geometry, Windows.UI.Xaml.Media.IGeometryGroup
{
extern(Windows):
	final Windows.UI.Xaml.Media.FillRule FillRule()
	{
		Windows.UI.Xaml.Media.FillRule _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IGeometryGroup)this.asInterface(uuid("55225a61-8677-4c8c-8e46-ee3dc355114b"))).get_FillRule(&_ret));
		return _ret;
	}
	final void FillRule(Windows.UI.Xaml.Media.FillRule value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IGeometryGroup)this.asInterface(uuid("55225a61-8677-4c8c-8e46-ee3dc355114b"))).set_FillRule(value));
	}
	final Windows.UI.Xaml.Media.GeometryCollection Children()
	{
		Windows.UI.Xaml.Media.GeometryCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IGeometryGroup)this.asInterface(uuid("55225a61-8677-4c8c-8e46-ee3dc355114b"))).get_Children(&_ret));
		return _ret;
	}
	final void Children(Windows.UI.Xaml.Media.GeometryCollection value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IGeometryGroup)this.asInterface(uuid("55225a61-8677-4c8c-8e46-ee3dc355114b"))).set_Children(value));
	}

	private static Windows.UI.Xaml.Media.IGeometryGroupStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IGeometryGroupStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IGeometryGroupStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty FillRuleProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_FillRuleProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ChildrenProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ChildrenProperty(&_ret));
		return _ret;
	}
	static GeometryGroup New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(GeometryGroup).abi_ActivateInstance(&ret));
		return cast(GeometryGroup) ret;
	}
}

interface GradientBrush : Windows.UI.Xaml.Media.Brush, Windows.UI.Xaml.Media.IGradientBrush
{
extern(Windows):
	final Windows.UI.Xaml.Media.GradientSpreadMethod SpreadMethod()
	{
		Windows.UI.Xaml.Media.GradientSpreadMethod _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IGradientBrush)this.asInterface(uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78"))).get_SpreadMethod(&_ret));
		return _ret;
	}
	final void SpreadMethod(Windows.UI.Xaml.Media.GradientSpreadMethod value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IGradientBrush)this.asInterface(uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78"))).set_SpreadMethod(value));
	}
	final Windows.UI.Xaml.Media.BrushMappingMode MappingMode()
	{
		Windows.UI.Xaml.Media.BrushMappingMode _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IGradientBrush)this.asInterface(uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78"))).get_MappingMode(&_ret));
		return _ret;
	}
	final void MappingMode(Windows.UI.Xaml.Media.BrushMappingMode value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IGradientBrush)this.asInterface(uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78"))).set_MappingMode(value));
	}
	final Windows.UI.Xaml.Media.ColorInterpolationMode ColorInterpolationMode()
	{
		Windows.UI.Xaml.Media.ColorInterpolationMode _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IGradientBrush)this.asInterface(uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78"))).get_ColorInterpolationMode(&_ret));
		return _ret;
	}
	final void ColorInterpolationMode(Windows.UI.Xaml.Media.ColorInterpolationMode value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IGradientBrush)this.asInterface(uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78"))).set_ColorInterpolationMode(value));
	}
	final Windows.UI.Xaml.Media.GradientStopCollection GradientStops()
	{
		Windows.UI.Xaml.Media.GradientStopCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IGradientBrush)this.asInterface(uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78"))).get_GradientStops(&_ret));
		return _ret;
	}
	final void GradientStops(Windows.UI.Xaml.Media.GradientStopCollection value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IGradientBrush)this.asInterface(uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78"))).set_GradientStops(value));
	}

	private static Windows.UI.Xaml.Media.IGradientBrushStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IGradientBrushStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IGradientBrushStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty SpreadMethodProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SpreadMethodProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty MappingModeProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_MappingModeProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ColorInterpolationModeProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ColorInterpolationModeProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty GradientStopsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_GradientStopsProperty(&_ret));
		return _ret;
	}
	static GradientBrush New()
	{
		IInspectable outer, inner;
		GradientBrush ret;
		Debug.OK(activationFactory!(GradientBrush, Windows.UI.Xaml.Media.IGradientBrushFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(GradientBrush, GradientBrush, Windows.UI.Xaml.Media.IGradientBrushFactory)
class GradientBrushT(Base) : AgileObject!Base, GradientBrush
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_SpreadMethod(Windows.UI.Xaml.Media.GradientSpreadMethod* return_value) { return (cast(Windows.UI.Xaml.Media.IGradientBrush)m_inner.asInterface(uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78"))).get_SpreadMethod(return_value); }
	override HRESULT set_SpreadMethod(Windows.UI.Xaml.Media.GradientSpreadMethod value) { return (cast(Windows.UI.Xaml.Media.IGradientBrush)m_inner.asInterface(uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78"))).set_SpreadMethod(value); }
	override HRESULT get_MappingMode(Windows.UI.Xaml.Media.BrushMappingMode* return_value) { return (cast(Windows.UI.Xaml.Media.IGradientBrush)m_inner.asInterface(uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78"))).get_MappingMode(return_value); }
	override HRESULT set_MappingMode(Windows.UI.Xaml.Media.BrushMappingMode value) { return (cast(Windows.UI.Xaml.Media.IGradientBrush)m_inner.asInterface(uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78"))).set_MappingMode(value); }
	override HRESULT get_ColorInterpolationMode(Windows.UI.Xaml.Media.ColorInterpolationMode* return_value) { return (cast(Windows.UI.Xaml.Media.IGradientBrush)m_inner.asInterface(uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78"))).get_ColorInterpolationMode(return_value); }
	override HRESULT set_ColorInterpolationMode(Windows.UI.Xaml.Media.ColorInterpolationMode value) { return (cast(Windows.UI.Xaml.Media.IGradientBrush)m_inner.asInterface(uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78"))).set_ColorInterpolationMode(value); }
	override HRESULT get_GradientStops(Windows.UI.Xaml.Media.GradientStopCollection* return_value) { return (cast(Windows.UI.Xaml.Media.IGradientBrush)m_inner.asInterface(uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78"))).get_GradientStops(return_value); }
	override HRESULT set_GradientStops(Windows.UI.Xaml.Media.GradientStopCollection value) { return (cast(Windows.UI.Xaml.Media.IGradientBrush)m_inner.asInterface(uuid("2166e69f-935a-4191-8e3c-1c8dfdfcdc78"))).set_GradientStops(value); }

	override HRESULT get_Opacity(double* return_value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).get_Opacity(return_value); }
	override HRESULT set_Opacity(double value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).set_Opacity(value); }
	override HRESULT get_Transform(Windows.UI.Xaml.Media.Transform* return_value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).get_Transform(return_value); }
	override HRESULT set_Transform(Windows.UI.Xaml.Media.Transform value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).set_Transform(value); }
	override HRESULT get_RelativeTransform(Windows.UI.Xaml.Media.Transform* return_value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).get_RelativeTransform(return_value); }
	override HRESULT set_RelativeTransform(Windows.UI.Xaml.Media.Transform value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).set_RelativeTransform(value); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface GradientStop : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IGradientStop
{
extern(Windows):
	final Windows.UI.Color Color()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IGradientStop)this.asInterface(uuid("665f44fe-2e59-4c4a-ab53-076a100ccd81"))).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IGradientStop)this.asInterface(uuid("665f44fe-2e59-4c4a-ab53-076a100ccd81"))).set_Color(value));
	}
	final double Offset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IGradientStop)this.asInterface(uuid("665f44fe-2e59-4c4a-ab53-076a100ccd81"))).get_Offset(&_ret));
		return _ret;
	}
	final void Offset(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IGradientStop)this.asInterface(uuid("665f44fe-2e59-4c4a-ab53-076a100ccd81"))).set_Offset(value));
	}

	private static Windows.UI.Xaml.Media.IGradientStopStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IGradientStopStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IGradientStopStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty ColorProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ColorProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty OffsetProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_OffsetProperty(&_ret));
		return _ret;
	}
	static GradientStop New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(GradientStop).abi_ActivateInstance(&ret));
		return cast(GradientStop) ret;
	}
}

interface GradientStopCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.GradientStop)
{
extern(Windows):
	final Windows.UI.Xaml.Media.GradientStop GetAt(uint index)
	{
		Windows.UI.Xaml.Media.GradientStop _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Media.GradientStop)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.Media.GradientStop value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.Media.GradientStop item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.Media.GradientStop item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop))this).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.Media.GradientStop item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.Media.GradientStop* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.Media.GradientStop* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.GradientStop))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.Media.GradientStop)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.GradientStop))this).abi_First(out_first));
	}
	static GradientStopCollection New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(GradientStopCollection).abi_ActivateInstance(&ret));
		return cast(GradientStopCollection) ret;
	}
}

interface ImageBrush : Windows.UI.Xaml.Media.TileBrush, Windows.UI.Xaml.Media.IImageBrush
{
extern(Windows):
	final Windows.UI.Xaml.Media.ImageSource ImageSource()
	{
		Windows.UI.Xaml.Media.ImageSource _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IImageBrush)this.asInterface(uuid("9fd11377-c12a-4493-bf7d-f3a8ad74b554"))).get_ImageSource(&_ret));
		return _ret;
	}
	final void ImageSource(Windows.UI.Xaml.Media.ImageSource value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IImageBrush)this.asInterface(uuid("9fd11377-c12a-4493-bf7d-f3a8ad74b554"))).set_ImageSource(value));
	}
	final EventRegistrationToken OnImageFailed(void delegate(IInspectable, Windows.UI.Xaml.ExceptionRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Media.IImageBrush)this.asInterface(uuid("9fd11377-c12a-4493-bf7d-f3a8ad74b554"))).add_ImageFailed(event!(Windows.UI.Xaml.ExceptionRoutedEventHandler, IInspectable, Windows.UI.Xaml.ExceptionRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeImageFailed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IImageBrush)this.asInterface(uuid("9fd11377-c12a-4493-bf7d-f3a8ad74b554"))).remove_ImageFailed(token));
	}
	final EventRegistrationToken OnImageOpened(void delegate(IInspectable, Windows.UI.Xaml.RoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Media.IImageBrush)this.asInterface(uuid("9fd11377-c12a-4493-bf7d-f3a8ad74b554"))).add_ImageOpened(event!(Windows.UI.Xaml.RoutedEventHandler, IInspectable, Windows.UI.Xaml.RoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeImageOpened(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IImageBrush)this.asInterface(uuid("9fd11377-c12a-4493-bf7d-f3a8ad74b554"))).remove_ImageOpened(token));
	}

	private static Windows.UI.Xaml.Media.IImageBrushStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IImageBrushStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IImageBrushStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty ImageSourceProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ImageSourceProperty(&_ret));
		return _ret;
	}
	static ImageBrush New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ImageBrush).abi_ActivateInstance(&ret));
		return cast(ImageBrush) ret;
	}
}

interface ImageSource : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IImageSource
{
}
@makable!(ImageSource, ImageSource, Windows.UI.Xaml.Media.IImageSourceFactory)
class ImageSourceT(Base) : AgileObject!Base, ImageSource
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface LineGeometry : Windows.UI.Xaml.Media.Geometry, Windows.UI.Xaml.Media.ILineGeometry
{
extern(Windows):
	final Windows.Foundation.Point StartPoint()
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ILineGeometry)this.asInterface(uuid("30edd4a2-8fc5-40af-a7a2-c27fe7aa1363"))).get_StartPoint(&_ret));
		return _ret;
	}
	final void StartPoint(Windows.Foundation.Point value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ILineGeometry)this.asInterface(uuid("30edd4a2-8fc5-40af-a7a2-c27fe7aa1363"))).set_StartPoint(value));
	}
	final Windows.Foundation.Point EndPoint()
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ILineGeometry)this.asInterface(uuid("30edd4a2-8fc5-40af-a7a2-c27fe7aa1363"))).get_EndPoint(&_ret));
		return _ret;
	}
	final void EndPoint(Windows.Foundation.Point value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ILineGeometry)this.asInterface(uuid("30edd4a2-8fc5-40af-a7a2-c27fe7aa1363"))).set_EndPoint(value));
	}

	private static Windows.UI.Xaml.Media.ILineGeometryStatics _staticInstance;
	public static Windows.UI.Xaml.Media.ILineGeometryStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.ILineGeometryStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty StartPointProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_StartPointProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty EndPointProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_EndPointProperty(&_ret));
		return _ret;
	}
	static LineGeometry New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(LineGeometry).abi_ActivateInstance(&ret));
		return cast(LineGeometry) ret;
	}
}

interface LineSegment : Windows.UI.Xaml.Media.PathSegment, Windows.UI.Xaml.Media.ILineSegment
{
extern(Windows):
	final Windows.Foundation.Point Point()
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ILineSegment)this.asInterface(uuid("ef6a2e25-3ff0-4420-a411-7182a4cecb15"))).get_Point(&_ret));
		return _ret;
	}
	final void Point(Windows.Foundation.Point value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ILineSegment)this.asInterface(uuid("ef6a2e25-3ff0-4420-a411-7182a4cecb15"))).set_Point(value));
	}

	private static Windows.UI.Xaml.Media.ILineSegmentStatics _staticInstance;
	public static Windows.UI.Xaml.Media.ILineSegmentStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.ILineSegmentStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty PointProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PointProperty(&_ret));
		return _ret;
	}
	static LineSegment New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(LineSegment).abi_ActivateInstance(&ret));
		return cast(LineSegment) ret;
	}
}

interface LinearGradientBrush : Windows.UI.Xaml.Media.GradientBrush, Windows.UI.Xaml.Media.ILinearGradientBrush
{
extern(Windows):
	final Windows.Foundation.Point StartPoint()
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ILinearGradientBrush)this.asInterface(uuid("8e96d16b-bb84-4c6f-9dbf-9d6c5c6d9c39"))).get_StartPoint(&_ret));
		return _ret;
	}
	final void StartPoint(Windows.Foundation.Point value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ILinearGradientBrush)this.asInterface(uuid("8e96d16b-bb84-4c6f-9dbf-9d6c5c6d9c39"))).set_StartPoint(value));
	}
	final Windows.Foundation.Point EndPoint()
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ILinearGradientBrush)this.asInterface(uuid("8e96d16b-bb84-4c6f-9dbf-9d6c5c6d9c39"))).get_EndPoint(&_ret));
		return _ret;
	}
	final void EndPoint(Windows.Foundation.Point value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ILinearGradientBrush)this.asInterface(uuid("8e96d16b-bb84-4c6f-9dbf-9d6c5c6d9c39"))).set_EndPoint(value));
	}

	private static Windows.UI.Xaml.Media.ILinearGradientBrushStatics _staticInstance;
	public static Windows.UI.Xaml.Media.ILinearGradientBrushStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.ILinearGradientBrushStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty StartPointProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_StartPointProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty EndPointProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_EndPointProperty(&_ret));
		return _ret;
	}
	static LinearGradientBrush New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(LinearGradientBrush).abi_ActivateInstance(&ret));
		return cast(LinearGradientBrush) ret;
	}
	static Windows.UI.Xaml.Media.LinearGradientBrush New(Windows.UI.Xaml.Media.GradientStopCollection gradientStopCollection, double angle)
	{
		auto factory = factory!(Windows.UI.Xaml.Media.ILinearGradientBrushFactory);
		Windows.UI.Xaml.Media.LinearGradientBrush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ILinearGradientBrushFactory)factory.asInterface(uuid("0ae0861c-1e7a-4fed-9857-ea8caa798490"))).abi_CreateInstanceWithGradientStopCollectionAndAngle(gradientStopCollection, angle, &_ret));
		return _ret;
	}
}

interface LoadedImageSourceLoadCompletedEventArgs : Windows.UI.Xaml.Media.ILoadedImageSourceLoadCompletedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Media.LoadedImageSourceLoadStatus Status()
	{
		Windows.UI.Xaml.Media.LoadedImageSourceLoadStatus _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ILoadedImageSourceLoadCompletedEventArgs)this.asInterface(uuid("1ac60b1e-7837-4489-b3e5-d0d5ad0a56c4"))).get_Status(&_ret));
		return _ret;
	}
}

interface LoadedImageSurface : Windows.UI.Xaml.Media.ILoadedImageSurface, Windows.Foundation.IClosable, Windows.UI.Composition.ICompositionSurface
{
extern(Windows):
	final Windows.Foundation.Size DecodedPhysicalSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ILoadedImageSurface)this.asInterface(uuid("050c8313-6737-45ba-8531-33094febef55"))).get_DecodedPhysicalSize(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size DecodedSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ILoadedImageSurface)this.asInterface(uuid("050c8313-6737-45ba-8531-33094febef55"))).get_DecodedSize(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size NaturalSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ILoadedImageSurface)this.asInterface(uuid("050c8313-6737-45ba-8531-33094febef55"))).get_NaturalSize(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnLoadCompleted(void delegate(Windows.UI.Xaml.Media.LoadedImageSurface, Windows.UI.Xaml.Media.LoadedImageSourceLoadCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Media.ILoadedImageSurface)this.asInterface(uuid("050c8313-6737-45ba-8531-33094febef55"))).add_LoadCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Media.LoadedImageSurface, Windows.UI.Xaml.Media.LoadedImageSourceLoadCompletedEventArgs), Windows.UI.Xaml.Media.LoadedImageSurface, Windows.UI.Xaml.Media.LoadedImageSourceLoadCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeLoadCompleted(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ILoadedImageSurface)this.asInterface(uuid("050c8313-6737-45ba-8531-33094febef55"))).remove_LoadCompleted(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}

	private static Windows.UI.Xaml.Media.ILoadedImageSurfaceStatics _staticInstance;
	public static Windows.UI.Xaml.Media.ILoadedImageSurfaceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.ILoadedImageSurfaceStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.Media.LoadedImageSurface StartLoadFromUriWithSize(Windows.Foundation.Uri uri, Windows.Foundation.Size desiredMaxSize)
	{
		Windows.UI.Xaml.Media.LoadedImageSurface _ret;
		Debug.OK(staticInstance.abi_StartLoadFromUriWithSize(uri, desiredMaxSize, &_ret));
		return _ret;
	}
	static Windows.UI.Xaml.Media.LoadedImageSurface StartLoadFromUri(Windows.Foundation.Uri uri)
	{
		Windows.UI.Xaml.Media.LoadedImageSurface _ret;
		Debug.OK(staticInstance.abi_StartLoadFromUri(uri, &_ret));
		return _ret;
	}
	static Windows.UI.Xaml.Media.LoadedImageSurface StartLoadFromStreamWithSize(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.Size desiredMaxSize)
	{
		Windows.UI.Xaml.Media.LoadedImageSurface _ret;
		Debug.OK(staticInstance.abi_StartLoadFromStreamWithSize(stream, desiredMaxSize, &_ret));
		return _ret;
	}
	static Windows.UI.Xaml.Media.LoadedImageSurface StartLoadFromStream(Windows.Storage.Streams.IRandomAccessStream stream)
	{
		Windows.UI.Xaml.Media.LoadedImageSurface _ret;
		Debug.OK(staticInstance.abi_StartLoadFromStream(stream, &_ret));
		return _ret;
	}
}

interface Matrix3DProjection : Windows.UI.Xaml.Media.Projection, Windows.UI.Xaml.Media.IMatrix3DProjection
{
extern(Windows):
	final Windows.UI.Xaml.Media.Media3D.Matrix3D ProjectionMatrix()
	{
		Windows.UI.Xaml.Media.Media3D.Matrix3D _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IMatrix3DProjection)this.asInterface(uuid("6f03e149-bfc9-4c01-b578-50338cec97fc"))).get_ProjectionMatrix(&_ret));
		return _ret;
	}
	final void ProjectionMatrix(Windows.UI.Xaml.Media.Media3D.Matrix3D value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IMatrix3DProjection)this.asInterface(uuid("6f03e149-bfc9-4c01-b578-50338cec97fc"))).set_ProjectionMatrix(value));
	}

	private static Windows.UI.Xaml.Media.IMatrix3DProjectionStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IMatrix3DProjectionStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IMatrix3DProjectionStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty ProjectionMatrixProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ProjectionMatrixProperty(&_ret));
		return _ret;
	}
	static Matrix3DProjection New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(Matrix3DProjection).abi_ActivateInstance(&ret));
		return cast(Matrix3DProjection) ret;
	}
}

interface MatrixHelper : Windows.UI.Xaml.Media.IMatrixHelper
{
	private static Windows.UI.Xaml.Media.IMatrixHelperStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IMatrixHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IMatrixHelperStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.Media.Matrix Identity()
	{
		Windows.UI.Xaml.Media.Matrix _ret;
		Debug.OK(staticInstance.get_Identity(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.Media.Matrix FromElements(double m11, double m12, double m21, double m22, double offsetX, double offsetY)
	{
		Windows.UI.Xaml.Media.Matrix _ret;
		Debug.OK(staticInstance.abi_FromElements(m11, m12, m21, m22, offsetX, offsetY, &_ret));
		return _ret;
	}
	static bool GetIsIdentity(Windows.UI.Xaml.Media.Matrix target)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_GetIsIdentity(target, &_ret));
		return _ret;
	}
	static Windows.Foundation.Point Transform(Windows.UI.Xaml.Media.Matrix target, Windows.Foundation.Point point)
	{
		Windows.Foundation.Point _ret;
		Debug.OK(staticInstance.abi_Transform(target, point, &_ret));
		return _ret;
	}
}

interface MatrixTransform : Windows.UI.Xaml.Media.Transform, Windows.UI.Xaml.Media.IMatrixTransform
{
extern(Windows):
	final Windows.UI.Xaml.Media.Matrix Matrix()
	{
		Windows.UI.Xaml.Media.Matrix _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IMatrixTransform)this.asInterface(uuid("edfdd551-5fed-45fc-ae62-92a4b6cf9707"))).get_Matrix(&_ret));
		return _ret;
	}
	final void Matrix(Windows.UI.Xaml.Media.Matrix value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IMatrixTransform)this.asInterface(uuid("edfdd551-5fed-45fc-ae62-92a4b6cf9707"))).set_Matrix(value));
	}

	private static Windows.UI.Xaml.Media.IMatrixTransformStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IMatrixTransformStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IMatrixTransformStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty MatrixProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_MatrixProperty(&_ret));
		return _ret;
	}
	static MatrixTransform New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MatrixTransform).abi_ActivateInstance(&ret));
		return cast(MatrixTransform) ret;
	}
}

interface MediaTransportControlsThumbnailRequestedEventArgs : Windows.UI.Xaml.Media.IMediaTransportControlsThumbnailRequestedEventArgs
{
extern(Windows):
	final void SetThumbnailImage(Windows.Storage.Streams.IInputStream source)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IMediaTransportControlsThumbnailRequestedEventArgs)this.asInterface(uuid("e4a8b21c-e3c2-485c-ae69-f1537b76755a"))).abi_SetThumbnailImage(source));
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IMediaTransportControlsThumbnailRequestedEventArgs)this.asInterface(uuid("e4a8b21c-e3c2-485c-ae69-f1537b76755a"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface PartialMediaFailureDetectedEventArgs : Windows.UI.Xaml.Media.IPartialMediaFailureDetectedEventArgs, Windows.UI.Xaml.Media.IPartialMediaFailureDetectedEventArgs2
{
extern(Windows):
	final Windows.Media.Playback.FailedMediaStreamKind StreamKind()
	{
		Windows.Media.Playback.FailedMediaStreamKind _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPartialMediaFailureDetectedEventArgs)this.asInterface(uuid("02b65a91-e5a1-442b-88d3-2dc127bfc59b"))).get_StreamKind(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPartialMediaFailureDetectedEventArgs2)this.asInterface(uuid("73074875-890d-416b-b9ae-e84dfd9c4b1b"))).get_ExtendedError(&_ret));
		return _ret;
	}
	static PartialMediaFailureDetectedEventArgs New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PartialMediaFailureDetectedEventArgs).abi_ActivateInstance(&ret));
		return cast(PartialMediaFailureDetectedEventArgs) ret;
	}
}

interface PathFigure : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IPathFigure
{
extern(Windows):
	final Windows.UI.Xaml.Media.PathSegmentCollection Segments()
	{
		Windows.UI.Xaml.Media.PathSegmentCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPathFigure)this.asInterface(uuid("5d955c8c-5fa9-4dda-a3cc-10fcdcaa20d7"))).get_Segments(&_ret));
		return _ret;
	}
	final void Segments(Windows.UI.Xaml.Media.PathSegmentCollection value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPathFigure)this.asInterface(uuid("5d955c8c-5fa9-4dda-a3cc-10fcdcaa20d7"))).set_Segments(value));
	}
	final Windows.Foundation.Point StartPoint()
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPathFigure)this.asInterface(uuid("5d955c8c-5fa9-4dda-a3cc-10fcdcaa20d7"))).get_StartPoint(&_ret));
		return _ret;
	}
	final void StartPoint(Windows.Foundation.Point value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPathFigure)this.asInterface(uuid("5d955c8c-5fa9-4dda-a3cc-10fcdcaa20d7"))).set_StartPoint(value));
	}
	final bool IsClosed()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPathFigure)this.asInterface(uuid("5d955c8c-5fa9-4dda-a3cc-10fcdcaa20d7"))).get_IsClosed(&_ret));
		return _ret;
	}
	final void IsClosed(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPathFigure)this.asInterface(uuid("5d955c8c-5fa9-4dda-a3cc-10fcdcaa20d7"))).set_IsClosed(value));
	}
	final bool IsFilled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPathFigure)this.asInterface(uuid("5d955c8c-5fa9-4dda-a3cc-10fcdcaa20d7"))).get_IsFilled(&_ret));
		return _ret;
	}
	final void IsFilled(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPathFigure)this.asInterface(uuid("5d955c8c-5fa9-4dda-a3cc-10fcdcaa20d7"))).set_IsFilled(value));
	}

	private static Windows.UI.Xaml.Media.IPathFigureStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IPathFigureStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IPathFigureStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty SegmentsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SegmentsProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty StartPointProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_StartPointProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IsClosedProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsClosedProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IsFilledProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsFilledProperty(&_ret));
		return _ret;
	}
	static PathFigure New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PathFigure).abi_ActivateInstance(&ret));
		return cast(PathFigure) ret;
	}
}

interface PathFigureCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.PathFigure)
{
extern(Windows):
	final Windows.UI.Xaml.Media.PathFigure GetAt(uint index)
	{
		Windows.UI.Xaml.Media.PathFigure _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Media.PathFigure)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.Media.PathFigure value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.Media.PathFigure item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.Media.PathFigure item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure))this).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.Media.PathFigure item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.Media.PathFigure* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.Media.PathFigure* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathFigure))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.Media.PathFigure)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.PathFigure))this).abi_First(out_first));
	}
	static PathFigureCollection New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PathFigureCollection).abi_ActivateInstance(&ret));
		return cast(PathFigureCollection) ret;
	}
}

interface PathGeometry : Windows.UI.Xaml.Media.Geometry, Windows.UI.Xaml.Media.IPathGeometry
{
extern(Windows):
	final Windows.UI.Xaml.Media.FillRule FillRule()
	{
		Windows.UI.Xaml.Media.FillRule _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPathGeometry)this.asInterface(uuid("081b9df8-bae6-4bcb-813c-bde0e46dc8b7"))).get_FillRule(&_ret));
		return _ret;
	}
	final void FillRule(Windows.UI.Xaml.Media.FillRule value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPathGeometry)this.asInterface(uuid("081b9df8-bae6-4bcb-813c-bde0e46dc8b7"))).set_FillRule(value));
	}
	final Windows.UI.Xaml.Media.PathFigureCollection Figures()
	{
		Windows.UI.Xaml.Media.PathFigureCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPathGeometry)this.asInterface(uuid("081b9df8-bae6-4bcb-813c-bde0e46dc8b7"))).get_Figures(&_ret));
		return _ret;
	}
	final void Figures(Windows.UI.Xaml.Media.PathFigureCollection value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPathGeometry)this.asInterface(uuid("081b9df8-bae6-4bcb-813c-bde0e46dc8b7"))).set_Figures(value));
	}

	private static Windows.UI.Xaml.Media.IPathGeometryStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IPathGeometryStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IPathGeometryStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty FillRuleProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_FillRuleProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty FiguresProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_FiguresProperty(&_ret));
		return _ret;
	}
	static PathGeometry New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PathGeometry).abi_ActivateInstance(&ret));
		return cast(PathGeometry) ret;
	}
}

interface PathSegment : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IPathSegment
{
}
@makable!(PathSegment, PathSegment, Windows.UI.Xaml.Media.IPathSegmentFactory)
class PathSegmentT(Base) : AgileObject!Base, PathSegment
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface PathSegmentCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.PathSegment)
{
extern(Windows):
	final Windows.UI.Xaml.Media.PathSegment GetAt(uint index)
	{
		Windows.UI.Xaml.Media.PathSegment _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Media.PathSegment)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.Media.PathSegment value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.Media.PathSegment item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.Media.PathSegment item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment))this).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.Media.PathSegment item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.Media.PathSegment* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.Media.PathSegment* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.PathSegment))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.Media.PathSegment)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.PathSegment))this).abi_First(out_first));
	}
	static PathSegmentCollection New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PathSegmentCollection).abi_ActivateInstance(&ret));
		return cast(PathSegmentCollection) ret;
	}
}

interface PlaneProjection : Windows.UI.Xaml.Media.Projection, Windows.UI.Xaml.Media.IPlaneProjection
{
extern(Windows):
	final double LocalOffsetX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).get_LocalOffsetX(&_ret));
		return _ret;
	}
	final void LocalOffsetX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).set_LocalOffsetX(value));
	}
	final double LocalOffsetY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).get_LocalOffsetY(&_ret));
		return _ret;
	}
	final void LocalOffsetY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).set_LocalOffsetY(value));
	}
	final double LocalOffsetZ()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).get_LocalOffsetZ(&_ret));
		return _ret;
	}
	final void LocalOffsetZ(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).set_LocalOffsetZ(value));
	}
	final double RotationX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).get_RotationX(&_ret));
		return _ret;
	}
	final void RotationX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).set_RotationX(value));
	}
	final double RotationY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).get_RotationY(&_ret));
		return _ret;
	}
	final void RotationY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).set_RotationY(value));
	}
	final double RotationZ()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).get_RotationZ(&_ret));
		return _ret;
	}
	final void RotationZ(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).set_RotationZ(value));
	}
	final double CenterOfRotationX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).get_CenterOfRotationX(&_ret));
		return _ret;
	}
	final void CenterOfRotationX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).set_CenterOfRotationX(value));
	}
	final double CenterOfRotationY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).get_CenterOfRotationY(&_ret));
		return _ret;
	}
	final void CenterOfRotationY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).set_CenterOfRotationY(value));
	}
	final double CenterOfRotationZ()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).get_CenterOfRotationZ(&_ret));
		return _ret;
	}
	final void CenterOfRotationZ(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).set_CenterOfRotationZ(value));
	}
	final double GlobalOffsetX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).get_GlobalOffsetX(&_ret));
		return _ret;
	}
	final void GlobalOffsetX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).set_GlobalOffsetX(value));
	}
	final double GlobalOffsetY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).get_GlobalOffsetY(&_ret));
		return _ret;
	}
	final void GlobalOffsetY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).set_GlobalOffsetY(value));
	}
	final double GlobalOffsetZ()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).get_GlobalOffsetZ(&_ret));
		return _ret;
	}
	final void GlobalOffsetZ(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).set_GlobalOffsetZ(value));
	}
	final Windows.UI.Xaml.Media.Media3D.Matrix3D ProjectionMatrix()
	{
		Windows.UI.Xaml.Media.Media3D.Matrix3D _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPlaneProjection)this.asInterface(uuid("e6f82bfa-6726-469a-b259-a5188347ca8f"))).get_ProjectionMatrix(&_ret));
		return _ret;
	}

	private static Windows.UI.Xaml.Media.IPlaneProjectionStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IPlaneProjectionStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IPlaneProjectionStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty LocalOffsetXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_LocalOffsetXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty LocalOffsetYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_LocalOffsetYProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty LocalOffsetZProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_LocalOffsetZProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty RotationXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_RotationXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty RotationYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_RotationYProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty RotationZProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_RotationZProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CenterOfRotationXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CenterOfRotationXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CenterOfRotationYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CenterOfRotationYProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CenterOfRotationZProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CenterOfRotationZProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty GlobalOffsetXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_GlobalOffsetXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty GlobalOffsetYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_GlobalOffsetYProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty GlobalOffsetZProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_GlobalOffsetZProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ProjectionMatrixProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ProjectionMatrixProperty(&_ret));
		return _ret;
	}
	static PlaneProjection New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PlaneProjection).abi_ActivateInstance(&ret));
		return cast(PlaneProjection) ret;
	}
}

interface PointCollection : Windows.Foundation.Collections.IVector!(Windows.Foundation.Point), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point)
{
extern(Windows):
	final Windows.Foundation.Point GetAt(uint index)
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Foundation.Point value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Foundation.Point item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Foundation.Point item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point))this).abi_RemoveAt(index));
	}
	final void Append(Windows.Foundation.Point item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Foundation.Point* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Foundation.Point* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Foundation.Point))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Point)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point))this).abi_First(out_first));
	}
	static PointCollection New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PointCollection).abi_ActivateInstance(&ret));
		return cast(PointCollection) ret;
	}
}

interface PolyBezierSegment : Windows.UI.Xaml.Media.PathSegment, Windows.UI.Xaml.Media.IPolyBezierSegment
{
extern(Windows):
	final Windows.UI.Xaml.Media.PointCollection Points()
	{
		Windows.UI.Xaml.Media.PointCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPolyBezierSegment)this.asInterface(uuid("36805271-38c4-4bcf-96cd-028a6d38af25"))).get_Points(&_ret));
		return _ret;
	}
	final void Points(Windows.UI.Xaml.Media.PointCollection value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPolyBezierSegment)this.asInterface(uuid("36805271-38c4-4bcf-96cd-028a6d38af25"))).set_Points(value));
	}

	private static Windows.UI.Xaml.Media.IPolyBezierSegmentStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IPolyBezierSegmentStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IPolyBezierSegmentStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty PointsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PointsProperty(&_ret));
		return _ret;
	}
	static PolyBezierSegment New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PolyBezierSegment).abi_ActivateInstance(&ret));
		return cast(PolyBezierSegment) ret;
	}
}

interface PolyLineSegment : Windows.UI.Xaml.Media.PathSegment, Windows.UI.Xaml.Media.IPolyLineSegment
{
extern(Windows):
	final Windows.UI.Xaml.Media.PointCollection Points()
	{
		Windows.UI.Xaml.Media.PointCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPolyLineSegment)this.asInterface(uuid("4b397f87-a2e6-479d-bdc8-6f4464646887"))).get_Points(&_ret));
		return _ret;
	}
	final void Points(Windows.UI.Xaml.Media.PointCollection value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPolyLineSegment)this.asInterface(uuid("4b397f87-a2e6-479d-bdc8-6f4464646887"))).set_Points(value));
	}

	private static Windows.UI.Xaml.Media.IPolyLineSegmentStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IPolyLineSegmentStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IPolyLineSegmentStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty PointsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PointsProperty(&_ret));
		return _ret;
	}
	static PolyLineSegment New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PolyLineSegment).abi_ActivateInstance(&ret));
		return cast(PolyLineSegment) ret;
	}
}

interface PolyQuadraticBezierSegment : Windows.UI.Xaml.Media.PathSegment, Windows.UI.Xaml.Media.IPolyQuadraticBezierSegment
{
extern(Windows):
	final Windows.UI.Xaml.Media.PointCollection Points()
	{
		Windows.UI.Xaml.Media.PointCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IPolyQuadraticBezierSegment)this.asInterface(uuid("dd5ced7d-e6db-4c96-b6a1-3fce96e987a6"))).get_Points(&_ret));
		return _ret;
	}
	final void Points(Windows.UI.Xaml.Media.PointCollection value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IPolyQuadraticBezierSegment)this.asInterface(uuid("dd5ced7d-e6db-4c96-b6a1-3fce96e987a6"))).set_Points(value));
	}

	private static Windows.UI.Xaml.Media.IPolyQuadraticBezierSegmentStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IPolyQuadraticBezierSegmentStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IPolyQuadraticBezierSegmentStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty PointsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PointsProperty(&_ret));
		return _ret;
	}
	static PolyQuadraticBezierSegment New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PolyQuadraticBezierSegment).abi_ActivateInstance(&ret));
		return cast(PolyQuadraticBezierSegment) ret;
	}
}

interface Projection : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IProjection
{
	static Projection New()
	{
		IInspectable outer, inner;
		Projection ret;
		Debug.OK(activationFactory!(Projection, Windows.UI.Xaml.Media.IProjectionFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(Projection, Projection, Windows.UI.Xaml.Media.IProjectionFactory)
class ProjectionT(Base) : AgileObject!Base, Projection
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface QuadraticBezierSegment : Windows.UI.Xaml.Media.PathSegment, Windows.UI.Xaml.Media.IQuadraticBezierSegment
{
extern(Windows):
	final Windows.Foundation.Point Point1()
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IQuadraticBezierSegment)this.asInterface(uuid("2c509a5b-bf18-455a-a078-914b5232d8af"))).get_Point1(&_ret));
		return _ret;
	}
	final void Point1(Windows.Foundation.Point value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IQuadraticBezierSegment)this.asInterface(uuid("2c509a5b-bf18-455a-a078-914b5232d8af"))).set_Point1(value));
	}
	final Windows.Foundation.Point Point2()
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IQuadraticBezierSegment)this.asInterface(uuid("2c509a5b-bf18-455a-a078-914b5232d8af"))).get_Point2(&_ret));
		return _ret;
	}
	final void Point2(Windows.Foundation.Point value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IQuadraticBezierSegment)this.asInterface(uuid("2c509a5b-bf18-455a-a078-914b5232d8af"))).set_Point2(value));
	}

	private static Windows.UI.Xaml.Media.IQuadraticBezierSegmentStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IQuadraticBezierSegmentStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IQuadraticBezierSegmentStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty Point1Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_Point1Property(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty Point2Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_Point2Property(&_ret));
		return _ret;
	}
	static QuadraticBezierSegment New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(QuadraticBezierSegment).abi_ActivateInstance(&ret));
		return cast(QuadraticBezierSegment) ret;
	}
}

interface RateChangedRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Media.IRateChangedRoutedEventArgs
{
	static RateChangedRoutedEventArgs New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(RateChangedRoutedEventArgs).abi_ActivateInstance(&ret));
		return cast(RateChangedRoutedEventArgs) ret;
	}
}

interface RectangleGeometry : Windows.UI.Xaml.Media.Geometry, Windows.UI.Xaml.Media.IRectangleGeometry
{
extern(Windows):
	final Windows.Foundation.Rect Rect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IRectangleGeometry)this.asInterface(uuid("a25a1f58-c575-4196-91cf-9fdfb10445c3"))).get_Rect(&_ret));
		return _ret;
	}
	final void Rect(Windows.Foundation.Rect value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IRectangleGeometry)this.asInterface(uuid("a25a1f58-c575-4196-91cf-9fdfb10445c3"))).set_Rect(value));
	}

	private static Windows.UI.Xaml.Media.IRectangleGeometryStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IRectangleGeometryStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IRectangleGeometryStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty RectProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_RectProperty(&_ret));
		return _ret;
	}
	static RectangleGeometry New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(RectangleGeometry).abi_ActivateInstance(&ret));
		return cast(RectangleGeometry) ret;
	}
}

interface RenderingEventArgs : Windows.UI.Xaml.Media.IRenderingEventArgs
{
extern(Windows):
	final Windows.Foundation.TimeSpan RenderingTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IRenderingEventArgs)this.asInterface(uuid("5bf7d30d-9748-4aed-8380-d7890eb776a0"))).get_RenderingTime(&_ret));
		return _ret;
	}
}

interface RotateTransform : Windows.UI.Xaml.Media.Transform, Windows.UI.Xaml.Media.IRotateTransform
{
extern(Windows):
	final double CenterX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IRotateTransform)this.asInterface(uuid("688ea9b9-1e4e-4596-86e3-428b27334faf"))).get_CenterX(&_ret));
		return _ret;
	}
	final void CenterX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IRotateTransform)this.asInterface(uuid("688ea9b9-1e4e-4596-86e3-428b27334faf"))).set_CenterX(value));
	}
	final double CenterY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IRotateTransform)this.asInterface(uuid("688ea9b9-1e4e-4596-86e3-428b27334faf"))).get_CenterY(&_ret));
		return _ret;
	}
	final void CenterY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IRotateTransform)this.asInterface(uuid("688ea9b9-1e4e-4596-86e3-428b27334faf"))).set_CenterY(value));
	}
	final double Angle()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IRotateTransform)this.asInterface(uuid("688ea9b9-1e4e-4596-86e3-428b27334faf"))).get_Angle(&_ret));
		return _ret;
	}
	final void Angle(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IRotateTransform)this.asInterface(uuid("688ea9b9-1e4e-4596-86e3-428b27334faf"))).set_Angle(value));
	}

	private static Windows.UI.Xaml.Media.IRotateTransformStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IRotateTransformStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IRotateTransformStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty CenterXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CenterXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CenterYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CenterYProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty AngleProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_AngleProperty(&_ret));
		return _ret;
	}
	static RotateTransform New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(RotateTransform).abi_ActivateInstance(&ret));
		return cast(RotateTransform) ret;
	}
}

interface ScaleTransform : Windows.UI.Xaml.Media.Transform, Windows.UI.Xaml.Media.IScaleTransform
{
extern(Windows):
	final double CenterX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IScaleTransform)this.asInterface(uuid("ed67f18d-936e-43ab-929a-e9cd0a511e52"))).get_CenterX(&_ret));
		return _ret;
	}
	final void CenterX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IScaleTransform)this.asInterface(uuid("ed67f18d-936e-43ab-929a-e9cd0a511e52"))).set_CenterX(value));
	}
	final double CenterY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IScaleTransform)this.asInterface(uuid("ed67f18d-936e-43ab-929a-e9cd0a511e52"))).get_CenterY(&_ret));
		return _ret;
	}
	final void CenterY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IScaleTransform)this.asInterface(uuid("ed67f18d-936e-43ab-929a-e9cd0a511e52"))).set_CenterY(value));
	}
	final double ScaleX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IScaleTransform)this.asInterface(uuid("ed67f18d-936e-43ab-929a-e9cd0a511e52"))).get_ScaleX(&_ret));
		return _ret;
	}
	final void ScaleX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IScaleTransform)this.asInterface(uuid("ed67f18d-936e-43ab-929a-e9cd0a511e52"))).set_ScaleX(value));
	}
	final double ScaleY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IScaleTransform)this.asInterface(uuid("ed67f18d-936e-43ab-929a-e9cd0a511e52"))).get_ScaleY(&_ret));
		return _ret;
	}
	final void ScaleY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IScaleTransform)this.asInterface(uuid("ed67f18d-936e-43ab-929a-e9cd0a511e52"))).set_ScaleY(value));
	}

	private static Windows.UI.Xaml.Media.IScaleTransformStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IScaleTransformStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IScaleTransformStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty CenterXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CenterXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CenterYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CenterYProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ScaleXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ScaleXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ScaleYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ScaleYProperty(&_ret));
		return _ret;
	}
	static ScaleTransform New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ScaleTransform).abi_ActivateInstance(&ret));
		return cast(ScaleTransform) ret;
	}
}

interface SkewTransform : Windows.UI.Xaml.Media.Transform, Windows.UI.Xaml.Media.ISkewTransform
{
extern(Windows):
	final double CenterX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ISkewTransform)this.asInterface(uuid("4e8a3b15-7a0f-4617-9e98-1e65bdc92115"))).get_CenterX(&_ret));
		return _ret;
	}
	final void CenterX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ISkewTransform)this.asInterface(uuid("4e8a3b15-7a0f-4617-9e98-1e65bdc92115"))).set_CenterX(value));
	}
	final double CenterY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ISkewTransform)this.asInterface(uuid("4e8a3b15-7a0f-4617-9e98-1e65bdc92115"))).get_CenterY(&_ret));
		return _ret;
	}
	final void CenterY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ISkewTransform)this.asInterface(uuid("4e8a3b15-7a0f-4617-9e98-1e65bdc92115"))).set_CenterY(value));
	}
	final double AngleX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ISkewTransform)this.asInterface(uuid("4e8a3b15-7a0f-4617-9e98-1e65bdc92115"))).get_AngleX(&_ret));
		return _ret;
	}
	final void AngleX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ISkewTransform)this.asInterface(uuid("4e8a3b15-7a0f-4617-9e98-1e65bdc92115"))).set_AngleX(value));
	}
	final double AngleY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ISkewTransform)this.asInterface(uuid("4e8a3b15-7a0f-4617-9e98-1e65bdc92115"))).get_AngleY(&_ret));
		return _ret;
	}
	final void AngleY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ISkewTransform)this.asInterface(uuid("4e8a3b15-7a0f-4617-9e98-1e65bdc92115"))).set_AngleY(value));
	}

	private static Windows.UI.Xaml.Media.ISkewTransformStatics _staticInstance;
	public static Windows.UI.Xaml.Media.ISkewTransformStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.ISkewTransformStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty CenterXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CenterXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CenterYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CenterYProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty AngleXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_AngleXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty AngleYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_AngleYProperty(&_ret));
		return _ret;
	}
	static SkewTransform New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SkewTransform).abi_ActivateInstance(&ret));
		return cast(SkewTransform) ret;
	}
}

interface SolidColorBrush : Windows.UI.Xaml.Media.Brush, Windows.UI.Xaml.Media.ISolidColorBrush
{
extern(Windows):
	final Windows.UI.Color Color()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ISolidColorBrush)this.asInterface(uuid("9d850850-66f3-48df-9a8f-824bd5e070af"))).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ISolidColorBrush)this.asInterface(uuid("9d850850-66f3-48df-9a8f-824bd5e070af"))).set_Color(value));
	}

	private static Windows.UI.Xaml.Media.ISolidColorBrushStatics _staticInstance;
	public static Windows.UI.Xaml.Media.ISolidColorBrushStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.ISolidColorBrushStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty ColorProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ColorProperty(&_ret));
		return _ret;
	}
	static SolidColorBrush New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SolidColorBrush).abi_ActivateInstance(&ret));
		return cast(SolidColorBrush) ret;
	}
	static Windows.UI.Xaml.Media.SolidColorBrush New(Windows.UI.Color color)
	{
		auto factory = factory!(Windows.UI.Xaml.Media.ISolidColorBrushFactory);
		Windows.UI.Xaml.Media.SolidColorBrush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ISolidColorBrushFactory)factory.asInterface(uuid("d935ce0c-86f5-4da6-8a27-b1619ef7f92b"))).abi_CreateInstanceWithColor(color, &_ret));
		return _ret;
	}
}

interface TileBrush : Windows.UI.Xaml.Media.Brush, Windows.UI.Xaml.Media.ITileBrush
{
extern(Windows):
	final Windows.UI.Xaml.Media.AlignmentX AlignmentX()
	{
		Windows.UI.Xaml.Media.AlignmentX _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ITileBrush)this.asInterface(uuid("c201cf06-cd84-48a5-9607-664d7361cd61"))).get_AlignmentX(&_ret));
		return _ret;
	}
	final void AlignmentX(Windows.UI.Xaml.Media.AlignmentX value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ITileBrush)this.asInterface(uuid("c201cf06-cd84-48a5-9607-664d7361cd61"))).set_AlignmentX(value));
	}
	final Windows.UI.Xaml.Media.AlignmentY AlignmentY()
	{
		Windows.UI.Xaml.Media.AlignmentY _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ITileBrush)this.asInterface(uuid("c201cf06-cd84-48a5-9607-664d7361cd61"))).get_AlignmentY(&_ret));
		return _ret;
	}
	final void AlignmentY(Windows.UI.Xaml.Media.AlignmentY value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ITileBrush)this.asInterface(uuid("c201cf06-cd84-48a5-9607-664d7361cd61"))).set_AlignmentY(value));
	}
	final Windows.UI.Xaml.Media.Stretch Stretch()
	{
		Windows.UI.Xaml.Media.Stretch _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ITileBrush)this.asInterface(uuid("c201cf06-cd84-48a5-9607-664d7361cd61"))).get_Stretch(&_ret));
		return _ret;
	}
	final void Stretch(Windows.UI.Xaml.Media.Stretch value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ITileBrush)this.asInterface(uuid("c201cf06-cd84-48a5-9607-664d7361cd61"))).set_Stretch(value));
	}

	private static Windows.UI.Xaml.Media.ITileBrushStatics _staticInstance;
	public static Windows.UI.Xaml.Media.ITileBrushStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.ITileBrushStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty AlignmentXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_AlignmentXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty AlignmentYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_AlignmentYProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty StretchProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_StretchProperty(&_ret));
		return _ret;
	}
	static TileBrush New()
	{
		IInspectable outer, inner;
		TileBrush ret;
		Debug.OK(activationFactory!(TileBrush, Windows.UI.Xaml.Media.ITileBrushFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(TileBrush, TileBrush, Windows.UI.Xaml.Media.ITileBrushFactory)
class TileBrushT(Base) : AgileObject!Base, TileBrush
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_AlignmentX(Windows.UI.Xaml.Media.AlignmentX* return_value) { return (cast(Windows.UI.Xaml.Media.ITileBrush)m_inner.asInterface(uuid("c201cf06-cd84-48a5-9607-664d7361cd61"))).get_AlignmentX(return_value); }
	override HRESULT set_AlignmentX(Windows.UI.Xaml.Media.AlignmentX value) { return (cast(Windows.UI.Xaml.Media.ITileBrush)m_inner.asInterface(uuid("c201cf06-cd84-48a5-9607-664d7361cd61"))).set_AlignmentX(value); }
	override HRESULT get_AlignmentY(Windows.UI.Xaml.Media.AlignmentY* return_value) { return (cast(Windows.UI.Xaml.Media.ITileBrush)m_inner.asInterface(uuid("c201cf06-cd84-48a5-9607-664d7361cd61"))).get_AlignmentY(return_value); }
	override HRESULT set_AlignmentY(Windows.UI.Xaml.Media.AlignmentY value) { return (cast(Windows.UI.Xaml.Media.ITileBrush)m_inner.asInterface(uuid("c201cf06-cd84-48a5-9607-664d7361cd61"))).set_AlignmentY(value); }
	override HRESULT get_Stretch(Windows.UI.Xaml.Media.Stretch* return_value) { return (cast(Windows.UI.Xaml.Media.ITileBrush)m_inner.asInterface(uuid("c201cf06-cd84-48a5-9607-664d7361cd61"))).get_Stretch(return_value); }
	override HRESULT set_Stretch(Windows.UI.Xaml.Media.Stretch value) { return (cast(Windows.UI.Xaml.Media.ITileBrush)m_inner.asInterface(uuid("c201cf06-cd84-48a5-9607-664d7361cd61"))).set_Stretch(value); }

	override HRESULT get_Opacity(double* return_value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).get_Opacity(return_value); }
	override HRESULT set_Opacity(double value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).set_Opacity(value); }
	override HRESULT get_Transform(Windows.UI.Xaml.Media.Transform* return_value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).get_Transform(return_value); }
	override HRESULT set_Transform(Windows.UI.Xaml.Media.Transform value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).set_Transform(value); }
	override HRESULT get_RelativeTransform(Windows.UI.Xaml.Media.Transform* return_value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).get_RelativeTransform(return_value); }
	override HRESULT set_RelativeTransform(Windows.UI.Xaml.Media.Transform value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).set_RelativeTransform(value); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface TimelineMarker : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.ITimelineMarker
{
extern(Windows):
	final Windows.Foundation.TimeSpan Time()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ITimelineMarker)this.asInterface(uuid("a68ef02d-45ba-4e50-8cad-aaea3a227af5"))).get_Time(&_ret));
		return _ret;
	}
	final void Time(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ITimelineMarker)this.asInterface(uuid("a68ef02d-45ba-4e50-8cad-aaea3a227af5"))).set_Time(value));
	}
	final HSTRING Type()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ITimelineMarker)this.asInterface(uuid("a68ef02d-45ba-4e50-8cad-aaea3a227af5"))).get_Type(&_ret));
		return _ret;
	}
	final void Type(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ITimelineMarker)this.asInterface(uuid("a68ef02d-45ba-4e50-8cad-aaea3a227af5"))).set_Type(value));
	}
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ITimelineMarker)this.asInterface(uuid("a68ef02d-45ba-4e50-8cad-aaea3a227af5"))).get_Text(&_ret));
		return _ret;
	}
	final void Text(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ITimelineMarker)this.asInterface(uuid("a68ef02d-45ba-4e50-8cad-aaea3a227af5"))).set_Text(value));
	}

	private static Windows.UI.Xaml.Media.ITimelineMarkerStatics _staticInstance;
	public static Windows.UI.Xaml.Media.ITimelineMarkerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.ITimelineMarkerStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty TimeProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_TimeProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty TypeProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_TypeProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty TextProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_TextProperty(&_ret));
		return _ret;
	}
	static TimelineMarker New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(TimelineMarker).abi_ActivateInstance(&ret));
		return cast(TimelineMarker) ret;
	}
}

interface TimelineMarkerCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.TimelineMarker)
{
extern(Windows):
	final Windows.UI.Xaml.Media.TimelineMarker GetAt(uint index)
	{
		Windows.UI.Xaml.Media.TimelineMarker _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Media.TimelineMarker)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.Media.TimelineMarker value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.Media.TimelineMarker item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.Media.TimelineMarker item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker))this).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.Media.TimelineMarker item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.Media.TimelineMarker* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.Media.TimelineMarker* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.TimelineMarker))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.Media.TimelineMarker)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.TimelineMarker))this).abi_First(out_first));
	}
	static TimelineMarkerCollection New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(TimelineMarkerCollection).abi_ActivateInstance(&ret));
		return cast(TimelineMarkerCollection) ret;
	}
}

interface TimelineMarkerRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Media.ITimelineMarkerRoutedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Media.TimelineMarker Marker()
	{
		Windows.UI.Xaml.Media.TimelineMarker _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ITimelineMarkerRoutedEventArgs)this.asInterface(uuid("7c3b3ef3-2c88-4d9c-99b6-46cdbd48d4c1"))).get_Marker(&_ret));
		return _ret;
	}
	final void Marker(Windows.UI.Xaml.Media.TimelineMarker value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ITimelineMarkerRoutedEventArgs)this.asInterface(uuid("7c3b3ef3-2c88-4d9c-99b6-46cdbd48d4c1"))).set_Marker(value));
	}
	static TimelineMarkerRoutedEventArgs New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(TimelineMarkerRoutedEventArgs).abi_ActivateInstance(&ret));
		return cast(TimelineMarkerRoutedEventArgs) ret;
	}
}

interface Transform : Windows.UI.Xaml.Media.GeneralTransform, Windows.UI.Xaml.Media.ITransform
{
}
@makable!(Transform, Transform, Windows.UI.Xaml.Media.ITransformFactory)
class TransformT(Base) : AgileObject!Base, Transform
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Inverse(Windows.UI.Xaml.Media.GeneralTransform* return_value) { return (cast(Windows.UI.Xaml.Media.IGeneralTransform)m_inner.asInterface(uuid("a06798b7-a2ec-415f-ade2-eade9333f2c7"))).get_Inverse(return_value); }
	override HRESULT abi_TransformPoint(Windows.Foundation.Point point, Windows.Foundation.Point* return_returnValue) { return (cast(Windows.UI.Xaml.Media.IGeneralTransform)m_inner.asInterface(uuid("a06798b7-a2ec-415f-ade2-eade9333f2c7"))).abi_TransformPoint(point, return_returnValue); }
	override HRESULT abi_TryTransform(Windows.Foundation.Point inPoint, Windows.Foundation.Point* out_outPoint, bool* return_returnValue) { return (cast(Windows.UI.Xaml.Media.IGeneralTransform)m_inner.asInterface(uuid("a06798b7-a2ec-415f-ade2-eade9333f2c7"))).abi_TryTransform(inPoint, out_outPoint, return_returnValue); }
	override HRESULT abi_TransformBounds(Windows.Foundation.Rect rect, Windows.Foundation.Rect* return_returnValue) { return (cast(Windows.UI.Xaml.Media.IGeneralTransform)m_inner.asInterface(uuid("a06798b7-a2ec-415f-ade2-eade9333f2c7"))).abi_TransformBounds(rect, return_returnValue); }

	override HRESULT get_InverseCore(Windows.UI.Xaml.Media.GeneralTransform* return_value) { this.InverseCore(return_value); return S_OK; }
	void InverseCore(Windows.UI.Xaml.Media.GeneralTransform* return_value) { Debug.OK((cast(Windows.UI.Xaml.Media.IGeneralTransformOverrides)m_inner.asInterface(uuid("4f121083-24cf-4524-90ad-8a42b1c12783"))).get_InverseCore(return_value)); }
	override HRESULT abi_TryTransformCore(Windows.Foundation.Point inPoint, Windows.Foundation.Point* out_outPoint, bool* return_returnValue) { this.TryTransformCore(inPoint, out_outPoint, return_returnValue); return S_OK; }
	void TryTransformCore(Windows.Foundation.Point inPoint, Windows.Foundation.Point* out_outPoint, bool* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.Media.IGeneralTransformOverrides)m_inner.asInterface(uuid("4f121083-24cf-4524-90ad-8a42b1c12783"))).abi_TryTransformCore(inPoint, out_outPoint, return_returnValue)); }
	override HRESULT abi_TransformBoundsCore(Windows.Foundation.Rect rect, Windows.Foundation.Rect* return_returnValue) { this.TransformBoundsCore(rect, return_returnValue); return S_OK; }
	void TransformBoundsCore(Windows.Foundation.Rect rect, Windows.Foundation.Rect* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.Media.IGeneralTransformOverrides)m_inner.asInterface(uuid("4f121083-24cf-4524-90ad-8a42b1c12783"))).abi_TransformBoundsCore(rect, return_returnValue)); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface TransformCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Transform)
{
extern(Windows):
	final Windows.UI.Xaml.Media.Transform GetAt(uint index)
	{
		Windows.UI.Xaml.Media.Transform _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Media.Transform)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.Media.Transform value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.Media.Transform item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.Media.Transform item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform))this).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.Media.Transform item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.Media.Transform* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.Media.Transform* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Transform))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.Media.Transform)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Transform))this).abi_First(out_first));
	}
	static TransformCollection New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(TransformCollection).abi_ActivateInstance(&ret));
		return cast(TransformCollection) ret;
	}
}

interface TransformGroup : Windows.UI.Xaml.Media.Transform, Windows.UI.Xaml.Media.ITransformGroup
{
extern(Windows):
	final Windows.UI.Xaml.Media.TransformCollection Children()
	{
		Windows.UI.Xaml.Media.TransformCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ITransformGroup)this.asInterface(uuid("63418ccc-8d2d-4737-b951-2afce1ddc4c4"))).get_Children(&_ret));
		return _ret;
	}
	final void Children(Windows.UI.Xaml.Media.TransformCollection value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ITransformGroup)this.asInterface(uuid("63418ccc-8d2d-4737-b951-2afce1ddc4c4"))).set_Children(value));
	}
	final Windows.UI.Xaml.Media.Matrix Value()
	{
		Windows.UI.Xaml.Media.Matrix _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ITransformGroup)this.asInterface(uuid("63418ccc-8d2d-4737-b951-2afce1ddc4c4"))).get_Value(&_ret));
		return _ret;
	}

	private static Windows.UI.Xaml.Media.ITransformGroupStatics _staticInstance;
	public static Windows.UI.Xaml.Media.ITransformGroupStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.ITransformGroupStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty ChildrenProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ChildrenProperty(&_ret));
		return _ret;
	}
	static TransformGroup New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(TransformGroup).abi_ActivateInstance(&ret));
		return cast(TransformGroup) ret;
	}
}

interface TranslateTransform : Windows.UI.Xaml.Media.Transform, Windows.UI.Xaml.Media.ITranslateTransform
{
extern(Windows):
	final double X()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ITranslateTransform)this.asInterface(uuid("c975905c-3c36-4229-817b-178f64c0e113"))).get_X(&_ret));
		return _ret;
	}
	final void X(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ITranslateTransform)this.asInterface(uuid("c975905c-3c36-4229-817b-178f64c0e113"))).set_X(value));
	}
	final double Y()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.ITranslateTransform)this.asInterface(uuid("c975905c-3c36-4229-817b-178f64c0e113"))).get_Y(&_ret));
		return _ret;
	}
	final void Y(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.ITranslateTransform)this.asInterface(uuid("c975905c-3c36-4229-817b-178f64c0e113"))).set_Y(value));
	}

	private static Windows.UI.Xaml.Media.ITranslateTransformStatics _staticInstance;
	public static Windows.UI.Xaml.Media.ITranslateTransformStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.ITranslateTransformStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty XProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_XProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty YProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_YProperty(&_ret));
		return _ret;
	}
	static TranslateTransform New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(TranslateTransform).abi_ActivateInstance(&ret));
		return cast(TranslateTransform) ret;
	}
}

interface VisualTreeHelper : Windows.UI.Xaml.Media.IVisualTreeHelper
{
	private static Windows.UI.Xaml.Media.IVisualTreeHelperStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IVisualTreeHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IVisualTreeHelperStatics);
		return _staticInstance;
	}
	static Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.UIElement) FindElementsInHostCoordinatesPoint(Windows.Foundation.Point intersectingPoint, Windows.UI.Xaml.UIElement subtree)
	{
		Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.UIElement) _ret;
		Debug.OK(staticInstance.abi_FindElementsInHostCoordinatesPoint(intersectingPoint, subtree, &_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.UIElement) FindElementsInHostCoordinatesRect(Windows.Foundation.Rect intersectingRect, Windows.UI.Xaml.UIElement subtree)
	{
		Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.UIElement) _ret;
		Debug.OK(staticInstance.abi_FindElementsInHostCoordinatesRect(intersectingRect, subtree, &_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.UIElement) FindAllElementsInHostCoordinatesPoint(Windows.Foundation.Point intersectingPoint, Windows.UI.Xaml.UIElement subtree, bool includeAllElements)
	{
		Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.UIElement) _ret;
		Debug.OK(staticInstance.abi_FindAllElementsInHostCoordinatesPoint(intersectingPoint, subtree, includeAllElements, &_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.UIElement) FindAllElementsInHostCoordinatesRect(Windows.Foundation.Rect intersectingRect, Windows.UI.Xaml.UIElement subtree, bool includeAllElements)
	{
		Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.UIElement) _ret;
		Debug.OK(staticInstance.abi_FindAllElementsInHostCoordinatesRect(intersectingRect, subtree, includeAllElements, &_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyObject GetChild(Windows.UI.Xaml.DependencyObject reference, INT32 childIndex)
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(staticInstance.abi_GetChild(reference, childIndex, &_ret));
		return _ret;
	}
	static INT32 GetChildrenCount(Windows.UI.Xaml.DependencyObject reference)
	{
		INT32 _ret;
		Debug.OK(staticInstance.abi_GetChildrenCount(reference, &_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyObject GetParent(Windows.UI.Xaml.DependencyObject reference)
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(staticInstance.abi_GetParent(reference, &_ret));
		return _ret;
	}
	static void DisconnectChildrenRecursive(Windows.UI.Xaml.UIElement element)
	{
		Debug.OK(staticInstance.abi_DisconnectChildrenRecursive(element));
	}
}

interface XamlCompositionBrushBase : Windows.UI.Xaml.Media.Brush, Windows.UI.Xaml.Media.IXamlCompositionBrushBase, Windows.UI.Xaml.Media.IXamlCompositionBrushBaseOverrides, Windows.UI.Xaml.Media.IXamlCompositionBrushBaseProtected
{
extern(Windows):
	final Windows.UI.Color FallbackColor()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IXamlCompositionBrushBase)this.asInterface(uuid("03e432d9-b35c-4a79-811c-c5652004da0e"))).get_FallbackColor(&_ret));
		return _ret;
	}
	final void FallbackColor(Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IXamlCompositionBrushBase)this.asInterface(uuid("03e432d9-b35c-4a79-811c-c5652004da0e"))).set_FallbackColor(value));
	}
	final Windows.UI.Composition.CompositionBrush CompositionBrush()
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IXamlCompositionBrushBaseProtected)this.asInterface(uuid("1513f3d8-0457-4e1c-ad77-11c1d9879743"))).get_CompositionBrush(&_ret));
		return _ret;
	}
	final void CompositionBrush(Windows.UI.Composition.CompositionBrush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IXamlCompositionBrushBaseProtected)this.asInterface(uuid("1513f3d8-0457-4e1c-ad77-11c1d9879743"))).set_CompositionBrush(value));
	}

	private static Windows.UI.Xaml.Media.IXamlCompositionBrushBaseStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IXamlCompositionBrushBaseStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IXamlCompositionBrushBaseStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty FallbackColorProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_FallbackColorProperty(&_ret));
		return _ret;
	}
	static XamlCompositionBrushBase New()
	{
		IInspectable outer, inner;
		XamlCompositionBrushBase ret;
		Debug.OK(activationFactory!(XamlCompositionBrushBase, Windows.UI.Xaml.Media.IXamlCompositionBrushBaseFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(XamlCompositionBrushBase, XamlCompositionBrushBase, Windows.UI.Xaml.Media.IXamlCompositionBrushBaseFactory)
class XamlCompositionBrushBaseT(Base) : AgileObject!Base, XamlCompositionBrushBase
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_FallbackColor(Windows.UI.Color* return_value) { return (cast(Windows.UI.Xaml.Media.IXamlCompositionBrushBase)m_inner.asInterface(uuid("03e432d9-b35c-4a79-811c-c5652004da0e"))).get_FallbackColor(return_value); }
	override HRESULT set_FallbackColor(Windows.UI.Color value) { return (cast(Windows.UI.Xaml.Media.IXamlCompositionBrushBase)m_inner.asInterface(uuid("03e432d9-b35c-4a79-811c-c5652004da0e"))).set_FallbackColor(value); }

	override HRESULT abi_OnConnected() { this.OnConnected(); return S_OK; }
	void OnConnected() { Debug.OK((cast(Windows.UI.Xaml.Media.IXamlCompositionBrushBaseOverrides)m_inner.asInterface(uuid("d19127f1-38b4-4ea1-8f33-849629a4c9c1"))).abi_OnConnected()); }
	override HRESULT abi_OnDisconnected() { this.OnDisconnected(); return S_OK; }
	void OnDisconnected() { Debug.OK((cast(Windows.UI.Xaml.Media.IXamlCompositionBrushBaseOverrides)m_inner.asInterface(uuid("d19127f1-38b4-4ea1-8f33-849629a4c9c1"))).abi_OnDisconnected()); }

	override HRESULT get_CompositionBrush(Windows.UI.Composition.CompositionBrush* return_value) { return (cast(Windows.UI.Xaml.Media.IXamlCompositionBrushBaseProtected)m_inner.asInterface(uuid("1513f3d8-0457-4e1c-ad77-11c1d9879743"))).get_CompositionBrush(return_value); }
	override HRESULT set_CompositionBrush(Windows.UI.Composition.CompositionBrush value) { return (cast(Windows.UI.Xaml.Media.IXamlCompositionBrushBaseProtected)m_inner.asInterface(uuid("1513f3d8-0457-4e1c-ad77-11c1d9879743"))).set_CompositionBrush(value); }

	override HRESULT get_Opacity(double* return_value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).get_Opacity(return_value); }
	override HRESULT set_Opacity(double value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).set_Opacity(value); }
	override HRESULT get_Transform(Windows.UI.Xaml.Media.Transform* return_value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).get_Transform(return_value); }
	override HRESULT set_Transform(Windows.UI.Xaml.Media.Transform value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).set_Transform(value); }
	override HRESULT get_RelativeTransform(Windows.UI.Xaml.Media.Transform* return_value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).get_RelativeTransform(return_value); }
	override HRESULT set_RelativeTransform(Windows.UI.Xaml.Media.Transform value) { return (cast(Windows.UI.Xaml.Media.IBrush)m_inner.asInterface(uuid("8806a321-1e06-422c-a1cc-01696559e021"))).set_RelativeTransform(value); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface XamlLight : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.IXamlLight, Windows.UI.Xaml.Media.IXamlLightOverrides, Windows.UI.Xaml.Media.IXamlLightProtected
{
extern(Windows):
	final Windows.UI.Composition.CompositionLight CompositionLight()
	{
		Windows.UI.Composition.CompositionLight _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.IXamlLightProtected)this.asInterface(uuid("5ecf220b-1252-43d0-9729-6ea692046838"))).get_CompositionLight(&_ret));
		return _ret;
	}
	final void CompositionLight(Windows.UI.Composition.CompositionLight value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.IXamlLightProtected)this.asInterface(uuid("5ecf220b-1252-43d0-9729-6ea692046838"))).set_CompositionLight(value));
	}

	private static Windows.UI.Xaml.Media.IXamlLightStatics _staticInstance;
	public static Windows.UI.Xaml.Media.IXamlLightStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.IXamlLightStatics);
		return _staticInstance;
	}
	static void AddTargetElement(HSTRING lightId, Windows.UI.Xaml.UIElement element)
	{
		Debug.OK(staticInstance.abi_AddTargetElement(lightId, element));
	}
	static void RemoveTargetElement(HSTRING lightId, Windows.UI.Xaml.UIElement element)
	{
		Debug.OK(staticInstance.abi_RemoveTargetElement(lightId, element));
	}
	static void AddTargetBrush(HSTRING lightId, Windows.UI.Xaml.Media.Brush brush)
	{
		Debug.OK(staticInstance.abi_AddTargetBrush(lightId, brush));
	}
	static void RemoveTargetBrush(HSTRING lightId, Windows.UI.Xaml.Media.Brush brush)
	{
		Debug.OK(staticInstance.abi_RemoveTargetBrush(lightId, brush));
	}
	static XamlLight New()
	{
		IInspectable outer, inner;
		XamlLight ret;
		Debug.OK(activationFactory!(XamlLight, Windows.UI.Xaml.Media.IXamlLightFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(XamlLight, XamlLight, Windows.UI.Xaml.Media.IXamlLightFactory)
class XamlLightT(Base) : AgileObject!Base, XamlLight
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_GetId(HSTRING* return_returnValue) { this.GetId(return_returnValue); return S_OK; }
	void GetId(HSTRING* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.Media.IXamlLightOverrides)m_inner.asInterface(uuid("7c6296c7-0173-48e1-b73d-7fa216a9ac28"))).abi_GetId(return_returnValue)); }
	override HRESULT abi_OnConnected(Windows.UI.Xaml.UIElement newElement) { this.OnConnected(newElement); return S_OK; }
	void OnConnected(Windows.UI.Xaml.UIElement newElement) { Debug.OK((cast(Windows.UI.Xaml.Media.IXamlLightOverrides)m_inner.asInterface(uuid("7c6296c7-0173-48e1-b73d-7fa216a9ac28"))).abi_OnConnected(newElement)); }
	override HRESULT abi_OnDisconnected(Windows.UI.Xaml.UIElement oldElement) { this.OnDisconnected(oldElement); return S_OK; }
	void OnDisconnected(Windows.UI.Xaml.UIElement oldElement) { Debug.OK((cast(Windows.UI.Xaml.Media.IXamlLightOverrides)m_inner.asInterface(uuid("7c6296c7-0173-48e1-b73d-7fa216a9ac28"))).abi_OnDisconnected(oldElement)); }

	override HRESULT get_CompositionLight(Windows.UI.Composition.CompositionLight* return_value) { return (cast(Windows.UI.Xaml.Media.IXamlLightProtected)m_inner.asInterface(uuid("5ecf220b-1252-43d0-9729-6ea692046838"))).get_CompositionLight(return_value); }
	override HRESULT set_CompositionLight(Windows.UI.Composition.CompositionLight value) { return (cast(Windows.UI.Xaml.Media.IXamlLightProtected)m_inner.asInterface(uuid("5ecf220b-1252-43d0-9729-6ea692046838"))).set_CompositionLight(value); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
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