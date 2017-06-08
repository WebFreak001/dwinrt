module Windows.UI.Xaml.Shapes;

import dwinrt;

@uuid("70e05ac4-d38d-4bab-831f-4a22ef52ac86")
@WinrtFactory("Windows.UI.Xaml.Shapes.Ellipse")
interface IEllipse : IInspectable
{
}

@uuid("46a5433d-4ffb-48df-8732-4e15c834816b")
@WinrtFactory("Windows.UI.Xaml.Shapes.Line")
interface ILine : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_X1(double* return_value);
	HRESULT set_X1(double value);
	HRESULT get_Y1(double* return_value);
	HRESULT set_Y1(double value);
	HRESULT get_X2(double* return_value);
	HRESULT set_X2(double value);
	HRESULT get_Y2(double* return_value);
	HRESULT set_Y2(double value);
}

@uuid("267c123d-6ea4-4c50-8b1d-50207aff1e8a")
@WinrtFactory("Windows.UI.Xaml.Shapes.Line")
interface ILineStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_X1Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_Y1Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_X2Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_Y2Property(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("78883609-3d57-4f3c-b8a5-6cabcac9711f")
@WinrtFactory("Windows.UI.Xaml.Shapes.Path")
interface IPath : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Data(Windows.UI.Xaml.Media.Geometry* return_value);
	HRESULT set_Data(Windows.UI.Xaml.Media.Geometry value);
}

@uuid("2340a4e3-5a86-4fc6-9a50-cbb93b828766")
@WinrtFactory("Windows.UI.Xaml.Shapes.Path")
interface IPathFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Shapes.Path* return_instance);
}

@uuid("f627e59d-87dc-4142-81f1-97fc7ff8641c")
@WinrtFactory("Windows.UI.Xaml.Shapes.Path")
interface IPathStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DataProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e3755c19-2e4d-4bcc-8d34-86871957fa01")
@WinrtFactory("Windows.UI.Xaml.Shapes.Polygon")
interface IPolygon : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FillRule(Windows.UI.Xaml.Media.FillRule* return_value);
	HRESULT set_FillRule(Windows.UI.Xaml.Media.FillRule value);
	HRESULT get_Points(Windows.UI.Xaml.Media.PointCollection* return_value);
	HRESULT set_Points(Windows.UI.Xaml.Media.PointCollection value);
}

@uuid("362a8aab-d463-4366-9e1a-beba72810fb7")
@WinrtFactory("Windows.UI.Xaml.Shapes.Polygon")
interface IPolygonStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FillRuleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PointsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("91dc62f8-42b3-47f3-8476-c55124a7c4c6")
@WinrtFactory("Windows.UI.Xaml.Shapes.Polyline")
interface IPolyline : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FillRule(Windows.UI.Xaml.Media.FillRule* return_value);
	HRESULT set_FillRule(Windows.UI.Xaml.Media.FillRule value);
	HRESULT get_Points(Windows.UI.Xaml.Media.PointCollection* return_value);
	HRESULT set_Points(Windows.UI.Xaml.Media.PointCollection value);
}

@uuid("c7aa2cd1-a26c-43b0-aaa5-822fa64a11b9")
@WinrtFactory("Windows.UI.Xaml.Shapes.Polyline")
interface IPolylineStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FillRuleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PointsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("855bc230-8a11-4e18-a136-4bc21c7827b0")
@WinrtFactory("Windows.UI.Xaml.Shapes.Rectangle")
interface IRectangle : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RadiusX(double* return_value);
	HRESULT set_RadiusX(double value);
	HRESULT get_RadiusY(double* return_value);
	HRESULT set_RadiusY(double value);
}

@uuid("9f25aa53-bb3a-4c3c-89db-6fbc0d1fa0cc")
@WinrtFactory("Windows.UI.Xaml.Shapes.Rectangle")
interface IRectangleStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RadiusXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RadiusYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("786f2b75-9aa0-454d-ae06-a2466e37c832")
@WinrtFactory("Windows.UI.Xaml.Shapes.Shape")
interface IShape : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Fill(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Fill(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_Stroke(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Stroke(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_StrokeMiterLimit(double* return_value);
	HRESULT set_StrokeMiterLimit(double value);
	HRESULT get_StrokeThickness(double* return_value);
	HRESULT set_StrokeThickness(double value);
	HRESULT get_StrokeStartLineCap(Windows.UI.Xaml.Media.PenLineCap* return_value);
	HRESULT set_StrokeStartLineCap(Windows.UI.Xaml.Media.PenLineCap value);
	HRESULT get_StrokeEndLineCap(Windows.UI.Xaml.Media.PenLineCap* return_value);
	HRESULT set_StrokeEndLineCap(Windows.UI.Xaml.Media.PenLineCap value);
	HRESULT get_StrokeLineJoin(Windows.UI.Xaml.Media.PenLineJoin* return_value);
	HRESULT set_StrokeLineJoin(Windows.UI.Xaml.Media.PenLineJoin value);
	HRESULT get_StrokeDashOffset(double* return_value);
	HRESULT set_StrokeDashOffset(double value);
	HRESULT get_StrokeDashCap(Windows.UI.Xaml.Media.PenLineCap* return_value);
	HRESULT set_StrokeDashCap(Windows.UI.Xaml.Media.PenLineCap value);
	HRESULT get_StrokeDashArray(Windows.UI.Xaml.Media.DoubleCollection* return_value);
	HRESULT set_StrokeDashArray(Windows.UI.Xaml.Media.DoubleCollection value);
	HRESULT get_Stretch(Windows.UI.Xaml.Media.Stretch* return_value);
	HRESULT set_Stretch(Windows.UI.Xaml.Media.Stretch value);
	HRESULT get_GeometryTransform(Windows.UI.Xaml.Media.Transform* return_value);
}

@uuid("97248dba-49f2-49a4-a5dd-164df824db14")
@WinrtFactory("Windows.UI.Xaml.Shapes.Shape")
interface IShape2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetAlphaMask(Windows.UI.Composition.CompositionBrush* return_returnValue);
}

@uuid("4b717613-f6aa-48d5-9588-e1d188eacbc9")
@WinrtFactory("Windows.UI.Xaml.Shapes.Shape")
interface IShapeFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Shapes.Shape* return_instance);
}

@uuid("1d7b4c55-9df3-48dc-9194-9d306faa6089")
@WinrtFactory("Windows.UI.Xaml.Shapes.Shape")
interface IShapeStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FillProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StrokeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StrokeMiterLimitProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StrokeThicknessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StrokeStartLineCapProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StrokeEndLineCapProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StrokeLineJoinProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StrokeDashOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StrokeDashCapProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StrokeDashArrayProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

interface Ellipse : Windows.UI.Xaml.Shapes.Shape, Windows.UI.Xaml.Shapes.IEllipse
{
}

interface Line : Windows.UI.Xaml.Shapes.Shape, Windows.UI.Xaml.Shapes.ILine
{
}

interface Path : Windows.UI.Xaml.Shapes.Shape, Windows.UI.Xaml.Shapes.IPath
{
}

interface Polygon : Windows.UI.Xaml.Shapes.Shape, Windows.UI.Xaml.Shapes.IPolygon
{
}

interface Polyline : Windows.UI.Xaml.Shapes.Shape, Windows.UI.Xaml.Shapes.IPolyline
{
}

interface Rectangle : Windows.UI.Xaml.Shapes.Shape, Windows.UI.Xaml.Shapes.IRectangle
{
}

interface Shape : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Shapes.IShape, Windows.UI.Xaml.Shapes.IShape2
{
}