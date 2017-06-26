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
extern(Windows):
	HRESULT get_Data(Windows.UI.Xaml.Media.Geometry* return_value);
	HRESULT set_Data(Windows.UI.Xaml.Media.Geometry value);
}

@uuid("2340a4e3-5a86-4fc6-9a50-cbb93b828766")
@WinrtFactory("Windows.UI.Xaml.Shapes.Path")
interface IPathFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Shapes.Path* return_instance);
}

@uuid("f627e59d-87dc-4142-81f1-97fc7ff8641c")
@WinrtFactory("Windows.UI.Xaml.Shapes.Path")
interface IPathStatics : IInspectable
{
extern(Windows):
	HRESULT get_DataProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e3755c19-2e4d-4bcc-8d34-86871957fa01")
@WinrtFactory("Windows.UI.Xaml.Shapes.Polygon")
interface IPolygon : IInspectable
{
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
extern(Windows):
	HRESULT get_FillRuleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PointsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("91dc62f8-42b3-47f3-8476-c55124a7c4c6")
@WinrtFactory("Windows.UI.Xaml.Shapes.Polyline")
interface IPolyline : IInspectable
{
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
extern(Windows):
	HRESULT get_FillRuleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PointsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("855bc230-8a11-4e18-a136-4bc21c7827b0")
@WinrtFactory("Windows.UI.Xaml.Shapes.Rectangle")
interface IRectangle : IInspectable
{
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
extern(Windows):
	HRESULT get_RadiusXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RadiusYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("786f2b75-9aa0-454d-ae06-a2466e37c832")
@WinrtFactory("Windows.UI.Xaml.Shapes.Shape")
interface IShape : IInspectable
{
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
extern(Windows):
	HRESULT abi_GetAlphaMask(Windows.UI.Composition.CompositionBrush* return_returnValue);
}

@uuid("4b717613-f6aa-48d5-9588-e1d188eacbc9")
@WinrtFactory("Windows.UI.Xaml.Shapes.Shape")
interface IShapeFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Shapes.Shape* return_instance);
}

@uuid("1d7b4c55-9df3-48dc-9194-9d306faa6089")
@WinrtFactory("Windows.UI.Xaml.Shapes.Shape")
interface IShapeStatics : IInspectable
{
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
extern(Windows):
	final double X1()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.ILine).get_X1(&_ret));
		return _ret;
	}
	final void X1(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.ILine).set_X1(value));
	}
	final double Y1()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.ILine).get_Y1(&_ret));
		return _ret;
	}
	final void Y1(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.ILine).set_Y1(value));
	}
	final double X2()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.ILine).get_X2(&_ret));
		return _ret;
	}
	final void X2(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.ILine).set_X2(value));
	}
	final double Y2()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.ILine).get_Y2(&_ret));
		return _ret;
	}
	final void Y2(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.ILine).set_Y2(value));
	}
}

interface Path : Windows.UI.Xaml.Shapes.Shape, Windows.UI.Xaml.Shapes.IPath
{
extern(Windows):
	final Windows.UI.Xaml.Media.Geometry Data()
	{
		Windows.UI.Xaml.Media.Geometry _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IPath).get_Data(&_ret));
		return _ret;
	}
	final void Data(Windows.UI.Xaml.Media.Geometry value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IPath).set_Data(value));
	}
}
@makable!(Path, Path, Windows.UI.Xaml.Shapes.IPathFactory)
class PathT(Base) : AgileObject!Base, Path
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Data(Windows.UI.Xaml.Media.Geometry* return_value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IPath).get_Data(return_value); }
	override HRESULT set_Data(Windows.UI.Xaml.Media.Geometry value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IPath).set_Data(value); }

	this() {}
	IInspectable m_inner;
}

interface Polygon : Windows.UI.Xaml.Shapes.Shape, Windows.UI.Xaml.Shapes.IPolygon
{
extern(Windows):
	final Windows.UI.Xaml.Media.FillRule FillRule()
	{
		Windows.UI.Xaml.Media.FillRule _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IPolygon).get_FillRule(&_ret));
		return _ret;
	}
	final void FillRule(Windows.UI.Xaml.Media.FillRule value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IPolygon).set_FillRule(value));
	}
	final Windows.UI.Xaml.Media.PointCollection Points()
	{
		Windows.UI.Xaml.Media.PointCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IPolygon).get_Points(&_ret));
		return _ret;
	}
	final void Points(Windows.UI.Xaml.Media.PointCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IPolygon).set_Points(value));
	}
}

interface Polyline : Windows.UI.Xaml.Shapes.Shape, Windows.UI.Xaml.Shapes.IPolyline
{
extern(Windows):
	final Windows.UI.Xaml.Media.FillRule FillRule()
	{
		Windows.UI.Xaml.Media.FillRule _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IPolyline).get_FillRule(&_ret));
		return _ret;
	}
	final void FillRule(Windows.UI.Xaml.Media.FillRule value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IPolyline).set_FillRule(value));
	}
	final Windows.UI.Xaml.Media.PointCollection Points()
	{
		Windows.UI.Xaml.Media.PointCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IPolyline).get_Points(&_ret));
		return _ret;
	}
	final void Points(Windows.UI.Xaml.Media.PointCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IPolyline).set_Points(value));
	}
}

interface Rectangle : Windows.UI.Xaml.Shapes.Shape, Windows.UI.Xaml.Shapes.IRectangle
{
extern(Windows):
	final double RadiusX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IRectangle).get_RadiusX(&_ret));
		return _ret;
	}
	final void RadiusX(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IRectangle).set_RadiusX(value));
	}
	final double RadiusY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IRectangle).get_RadiusY(&_ret));
		return _ret;
	}
	final void RadiusY(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IRectangle).set_RadiusY(value));
	}
}

interface Shape : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Shapes.IShape, Windows.UI.Xaml.Shapes.IShape2
{
extern(Windows):
	final Windows.UI.Xaml.Media.Brush Fill()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).get_Fill(&_ret));
		return _ret;
	}
	final void Fill(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).set_Fill(value));
	}
	final Windows.UI.Xaml.Media.Brush Stroke()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).get_Stroke(&_ret));
		return _ret;
	}
	final void Stroke(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).set_Stroke(value));
	}
	final double StrokeMiterLimit()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).get_StrokeMiterLimit(&_ret));
		return _ret;
	}
	final void StrokeMiterLimit(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).set_StrokeMiterLimit(value));
	}
	final double StrokeThickness()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).get_StrokeThickness(&_ret));
		return _ret;
	}
	final void StrokeThickness(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).set_StrokeThickness(value));
	}
	final Windows.UI.Xaml.Media.PenLineCap StrokeStartLineCap()
	{
		Windows.UI.Xaml.Media.PenLineCap _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).get_StrokeStartLineCap(&_ret));
		return _ret;
	}
	final void StrokeStartLineCap(Windows.UI.Xaml.Media.PenLineCap value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).set_StrokeStartLineCap(value));
	}
	final Windows.UI.Xaml.Media.PenLineCap StrokeEndLineCap()
	{
		Windows.UI.Xaml.Media.PenLineCap _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).get_StrokeEndLineCap(&_ret));
		return _ret;
	}
	final void StrokeEndLineCap(Windows.UI.Xaml.Media.PenLineCap value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).set_StrokeEndLineCap(value));
	}
	final Windows.UI.Xaml.Media.PenLineJoin StrokeLineJoin()
	{
		Windows.UI.Xaml.Media.PenLineJoin _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).get_StrokeLineJoin(&_ret));
		return _ret;
	}
	final void StrokeLineJoin(Windows.UI.Xaml.Media.PenLineJoin value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).set_StrokeLineJoin(value));
	}
	final double StrokeDashOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).get_StrokeDashOffset(&_ret));
		return _ret;
	}
	final void StrokeDashOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).set_StrokeDashOffset(value));
	}
	final Windows.UI.Xaml.Media.PenLineCap StrokeDashCap()
	{
		Windows.UI.Xaml.Media.PenLineCap _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).get_StrokeDashCap(&_ret));
		return _ret;
	}
	final void StrokeDashCap(Windows.UI.Xaml.Media.PenLineCap value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).set_StrokeDashCap(value));
	}
	final Windows.UI.Xaml.Media.DoubleCollection StrokeDashArray()
	{
		Windows.UI.Xaml.Media.DoubleCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).get_StrokeDashArray(&_ret));
		return _ret;
	}
	final void StrokeDashArray(Windows.UI.Xaml.Media.DoubleCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).set_StrokeDashArray(value));
	}
	final Windows.UI.Xaml.Media.Stretch Stretch()
	{
		Windows.UI.Xaml.Media.Stretch _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).get_Stretch(&_ret));
		return _ret;
	}
	final void Stretch(Windows.UI.Xaml.Media.Stretch value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).set_Stretch(value));
	}
	final Windows.UI.Xaml.Media.Transform GeometryTransform()
	{
		Windows.UI.Xaml.Media.Transform _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape).get_GeometryTransform(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionBrush GetAlphaMask()
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Shapes.IShape2).abi_GetAlphaMask(&_ret));
		return _ret;
	}
}
@makable!(Shape, Shape, Windows.UI.Xaml.Shapes.IShapeFactory)
class ShapeT(Base) : AgileObject!Base, Shape
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Fill(Windows.UI.Xaml.Media.Brush* return_value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).get_Fill(return_value); }
	override HRESULT set_Fill(Windows.UI.Xaml.Media.Brush value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).set_Fill(value); }
	override HRESULT get_Stroke(Windows.UI.Xaml.Media.Brush* return_value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).get_Stroke(return_value); }
	override HRESULT set_Stroke(Windows.UI.Xaml.Media.Brush value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).set_Stroke(value); }
	override HRESULT get_StrokeMiterLimit(double* return_value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).get_StrokeMiterLimit(return_value); }
	override HRESULT set_StrokeMiterLimit(double value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).set_StrokeMiterLimit(value); }
	override HRESULT get_StrokeThickness(double* return_value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).get_StrokeThickness(return_value); }
	override HRESULT set_StrokeThickness(double value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).set_StrokeThickness(value); }
	override HRESULT get_StrokeStartLineCap(Windows.UI.Xaml.Media.PenLineCap* return_value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).get_StrokeStartLineCap(return_value); }
	override HRESULT set_StrokeStartLineCap(Windows.UI.Xaml.Media.PenLineCap value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).set_StrokeStartLineCap(value); }
	override HRESULT get_StrokeEndLineCap(Windows.UI.Xaml.Media.PenLineCap* return_value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).get_StrokeEndLineCap(return_value); }
	override HRESULT set_StrokeEndLineCap(Windows.UI.Xaml.Media.PenLineCap value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).set_StrokeEndLineCap(value); }
	override HRESULT get_StrokeLineJoin(Windows.UI.Xaml.Media.PenLineJoin* return_value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).get_StrokeLineJoin(return_value); }
	override HRESULT set_StrokeLineJoin(Windows.UI.Xaml.Media.PenLineJoin value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).set_StrokeLineJoin(value); }
	override HRESULT get_StrokeDashOffset(double* return_value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).get_StrokeDashOffset(return_value); }
	override HRESULT set_StrokeDashOffset(double value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).set_StrokeDashOffset(value); }
	override HRESULT get_StrokeDashCap(Windows.UI.Xaml.Media.PenLineCap* return_value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).get_StrokeDashCap(return_value); }
	override HRESULT set_StrokeDashCap(Windows.UI.Xaml.Media.PenLineCap value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).set_StrokeDashCap(value); }
	override HRESULT get_StrokeDashArray(Windows.UI.Xaml.Media.DoubleCollection* return_value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).get_StrokeDashArray(return_value); }
	override HRESULT set_StrokeDashArray(Windows.UI.Xaml.Media.DoubleCollection value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).set_StrokeDashArray(value); }
	override HRESULT get_Stretch(Windows.UI.Xaml.Media.Stretch* return_value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).get_Stretch(return_value); }
	override HRESULT set_Stretch(Windows.UI.Xaml.Media.Stretch value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).set_Stretch(value); }
	override HRESULT get_GeometryTransform(Windows.UI.Xaml.Media.Transform* return_value) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape).get_GeometryTransform(return_value); }

	override HRESULT abi_GetAlphaMask(Windows.UI.Composition.CompositionBrush* return_returnValue) { return m_inner.as!(Windows.UI.Xaml.Shapes.IShape2).abi_GetAlphaMask(return_returnValue); }

	this() {}
	IInspectable m_inner;
}