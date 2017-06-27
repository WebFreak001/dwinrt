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
	static Ellipse New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(Ellipse).abi_ActivateInstance(&ret));
		return cast(Ellipse) ret;
	}
}

interface Line : Windows.UI.Xaml.Shapes.Shape, Windows.UI.Xaml.Shapes.ILine
{
extern(Windows):
	final double X1()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.ILine)this.asInterface(uuid("46a5433d-4ffb-48df-8732-4e15c834816b"))).get_X1(&_ret));
		return _ret;
	}
	final void X1(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.ILine)this.asInterface(uuid("46a5433d-4ffb-48df-8732-4e15c834816b"))).set_X1(value));
	}
	final double Y1()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.ILine)this.asInterface(uuid("46a5433d-4ffb-48df-8732-4e15c834816b"))).get_Y1(&_ret));
		return _ret;
	}
	final void Y1(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.ILine)this.asInterface(uuid("46a5433d-4ffb-48df-8732-4e15c834816b"))).set_Y1(value));
	}
	final double X2()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.ILine)this.asInterface(uuid("46a5433d-4ffb-48df-8732-4e15c834816b"))).get_X2(&_ret));
		return _ret;
	}
	final void X2(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.ILine)this.asInterface(uuid("46a5433d-4ffb-48df-8732-4e15c834816b"))).set_X2(value));
	}
	final double Y2()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.ILine)this.asInterface(uuid("46a5433d-4ffb-48df-8732-4e15c834816b"))).get_Y2(&_ret));
		return _ret;
	}
	final void Y2(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.ILine)this.asInterface(uuid("46a5433d-4ffb-48df-8732-4e15c834816b"))).set_Y2(value));
	}

	private static Windows.UI.Xaml.Shapes.ILineStatics _staticInstance;
	public static Windows.UI.Xaml.Shapes.ILineStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Shapes.ILineStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty X1Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_X1Property(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty Y1Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_Y1Property(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty X2Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_X2Property(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty Y2Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_Y2Property(&_ret));
		return _ret;
	}
	static Line New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(Line).abi_ActivateInstance(&ret));
		return cast(Line) ret;
	}
}

interface Path : Windows.UI.Xaml.Shapes.Shape, Windows.UI.Xaml.Shapes.IPath
{
extern(Windows):
	final Windows.UI.Xaml.Media.Geometry Data()
	{
		Windows.UI.Xaml.Media.Geometry _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IPath)this.asInterface(uuid("78883609-3d57-4f3c-b8a5-6cabcac9711f"))).get_Data(&_ret));
		return _ret;
	}
	final void Data(Windows.UI.Xaml.Media.Geometry value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IPath)this.asInterface(uuid("78883609-3d57-4f3c-b8a5-6cabcac9711f"))).set_Data(value));
	}

	private static Windows.UI.Xaml.Shapes.IPathStatics _staticInstance;
	public static Windows.UI.Xaml.Shapes.IPathStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Shapes.IPathStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty DataProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DataProperty(&_ret));
		return _ret;
	}
	static Path New()
	{
		IInspectable outer, inner;
		Path ret;
		Debug.OK(activationFactory!(Path, Windows.UI.Xaml.Shapes.IPathFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
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
	override HRESULT get_Data(Windows.UI.Xaml.Media.Geometry* return_value) { return (cast(Windows.UI.Xaml.Shapes.IPath)m_inner.asInterface(uuid("78883609-3d57-4f3c-b8a5-6cabcac9711f"))).get_Data(return_value); }
	override HRESULT set_Data(Windows.UI.Xaml.Media.Geometry value) { return (cast(Windows.UI.Xaml.Shapes.IPath)m_inner.asInterface(uuid("78883609-3d57-4f3c-b8a5-6cabcac9711f"))).set_Data(value); }

	override HRESULT get_Fill(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_Fill(return_value); }
	override HRESULT set_Fill(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_Fill(value); }
	override HRESULT get_Stroke(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_Stroke(return_value); }
	override HRESULT set_Stroke(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_Stroke(value); }
	override HRESULT get_StrokeMiterLimit(double* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeMiterLimit(return_value); }
	override HRESULT set_StrokeMiterLimit(double value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeMiterLimit(value); }
	override HRESULT get_StrokeThickness(double* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeThickness(return_value); }
	override HRESULT set_StrokeThickness(double value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeThickness(value); }
	override HRESULT get_StrokeStartLineCap(Windows.UI.Xaml.Media.PenLineCap* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeStartLineCap(return_value); }
	override HRESULT set_StrokeStartLineCap(Windows.UI.Xaml.Media.PenLineCap value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeStartLineCap(value); }
	override HRESULT get_StrokeEndLineCap(Windows.UI.Xaml.Media.PenLineCap* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeEndLineCap(return_value); }
	override HRESULT set_StrokeEndLineCap(Windows.UI.Xaml.Media.PenLineCap value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeEndLineCap(value); }
	override HRESULT get_StrokeLineJoin(Windows.UI.Xaml.Media.PenLineJoin* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeLineJoin(return_value); }
	override HRESULT set_StrokeLineJoin(Windows.UI.Xaml.Media.PenLineJoin value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeLineJoin(value); }
	override HRESULT get_StrokeDashOffset(double* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeDashOffset(return_value); }
	override HRESULT set_StrokeDashOffset(double value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeDashOffset(value); }
	override HRESULT get_StrokeDashCap(Windows.UI.Xaml.Media.PenLineCap* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeDashCap(return_value); }
	override HRESULT set_StrokeDashCap(Windows.UI.Xaml.Media.PenLineCap value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeDashCap(value); }
	override HRESULT get_StrokeDashArray(Windows.UI.Xaml.Media.DoubleCollection* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeDashArray(return_value); }
	override HRESULT set_StrokeDashArray(Windows.UI.Xaml.Media.DoubleCollection value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeDashArray(value); }
	override HRESULT get_Stretch(Windows.UI.Xaml.Media.Stretch* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_Stretch(return_value); }
	override HRESULT set_Stretch(Windows.UI.Xaml.Media.Stretch value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_Stretch(value); }
	override HRESULT get_GeometryTransform(Windows.UI.Xaml.Media.Transform* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_GeometryTransform(return_value); }

	override HRESULT abi_GetAlphaMask(Windows.UI.Composition.CompositionBrush* return_returnValue) { return (cast(Windows.UI.Xaml.Shapes.IShape2)m_inner.asInterface(uuid("97248dba-49f2-49a4-a5dd-164df824db14"))).abi_GetAlphaMask(return_returnValue); }

	override HRESULT get_Triggers(Windows.UI.Xaml.TriggerCollection* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Triggers(return_value); }
	override HRESULT get_Resources(Windows.UI.Xaml.ResourceDictionary* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Resources(return_value); }
	override HRESULT set_Resources(Windows.UI.Xaml.ResourceDictionary value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Resources(value); }
	override HRESULT get_Tag(IInspectable* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Tag(return_value); }
	override HRESULT set_Tag(IInspectable value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Tag(value); }
	override HRESULT get_Language(HSTRING* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Language(return_value); }
	override HRESULT set_Language(HSTRING value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Language(value); }
	override HRESULT get_ActualWidth(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_ActualWidth(return_value); }
	override HRESULT get_ActualHeight(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_ActualHeight(return_value); }
	override HRESULT get_Width(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Width(return_value); }
	override HRESULT set_Width(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Width(value); }
	override HRESULT get_Height(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Height(return_value); }
	override HRESULT set_Height(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Height(value); }
	override HRESULT get_MinWidth(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_MinWidth(return_value); }
	override HRESULT set_MinWidth(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_MinWidth(value); }
	override HRESULT get_MaxWidth(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_MaxWidth(return_value); }
	override HRESULT set_MaxWidth(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_MaxWidth(value); }
	override HRESULT get_MinHeight(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_MinHeight(return_value); }
	override HRESULT set_MinHeight(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_MinHeight(value); }
	override HRESULT get_MaxHeight(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_MaxHeight(return_value); }
	override HRESULT set_MaxHeight(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_MaxHeight(value); }
	override HRESULT get_HorizontalAlignment(Windows.UI.Xaml.HorizontalAlignment* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_HorizontalAlignment(return_value); }
	override HRESULT set_HorizontalAlignment(Windows.UI.Xaml.HorizontalAlignment value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_HorizontalAlignment(value); }
	override HRESULT get_VerticalAlignment(Windows.UI.Xaml.VerticalAlignment* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_VerticalAlignment(return_value); }
	override HRESULT set_VerticalAlignment(Windows.UI.Xaml.VerticalAlignment value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_VerticalAlignment(value); }
	override HRESULT get_Margin(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Margin(return_value); }
	override HRESULT set_Margin(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Margin(value); }
	override HRESULT get_Name(HSTRING* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Name(return_value); }
	override HRESULT set_Name(HSTRING value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Name(value); }
	override HRESULT get_BaseUri(Windows.Foundation.Uri* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_BaseUri(return_value); }
	override HRESULT get_DataContext(IInspectable* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_DataContext(return_value); }
	override HRESULT set_DataContext(IInspectable value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_DataContext(value); }
	override HRESULT get_Style(Windows.UI.Xaml.Style* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Style(return_value); }
	override HRESULT set_Style(Windows.UI.Xaml.Style value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Style(value); }
	override HRESULT get_Parent(Windows.UI.Xaml.DependencyObject* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Parent(return_value); }
	override HRESULT get_FlowDirection(Windows.UI.Xaml.FlowDirection* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_FlowDirection(return_value); }
	override HRESULT set_FlowDirection(Windows.UI.Xaml.FlowDirection value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_FlowDirection(value); }
	override HRESULT add_Loaded(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).add_Loaded(value, return_token); }
	override HRESULT remove_Loaded(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).remove_Loaded(token); }
	override HRESULT add_Unloaded(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).add_Unloaded(value, return_token); }
	override HRESULT remove_Unloaded(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).remove_Unloaded(token); }
	override HRESULT add_SizeChanged(Windows.UI.Xaml.SizeChangedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).add_SizeChanged(value, return_token); }
	override HRESULT remove_SizeChanged(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).remove_SizeChanged(token); }
	override HRESULT add_LayoutUpdated(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).add_LayoutUpdated(value, return_token); }
	override HRESULT remove_LayoutUpdated(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).remove_LayoutUpdated(token); }
	override HRESULT abi_FindName(HSTRING name, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).abi_FindName(name, return_returnValue); }
	override HRESULT abi_SetBinding(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.Data.BindingBase binding) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).abi_SetBinding(dp, binding); }

	override HRESULT abi_MeasureOverride(Windows.Foundation.Size availableSize, Windows.Foundation.Size* return_returnValue) { this.MeasureOverride(availableSize, return_returnValue); return S_OK; }
	void MeasureOverride(Windows.Foundation.Size availableSize, Windows.Foundation.Size* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IFrameworkElementOverrides)m_inner.asInterface(uuid("da007e54-b3c2-4b9a-aa8e-d3f071262b97"))).abi_MeasureOverride(availableSize, return_returnValue)); }
	override HRESULT abi_ArrangeOverride(Windows.Foundation.Size finalSize, Windows.Foundation.Size* return_returnValue) { this.ArrangeOverride(finalSize, return_returnValue); return S_OK; }
	void ArrangeOverride(Windows.Foundation.Size finalSize, Windows.Foundation.Size* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IFrameworkElementOverrides)m_inner.asInterface(uuid("da007e54-b3c2-4b9a-aa8e-d3f071262b97"))).abi_ArrangeOverride(finalSize, return_returnValue)); }
	override HRESULT abi_OnApplyTemplate() { this.OnApplyTemplate(); return S_OK; }
	void OnApplyTemplate() { Debug.OK((cast(Windows.UI.Xaml.IFrameworkElementOverrides)m_inner.asInterface(uuid("da007e54-b3c2-4b9a-aa8e-d3f071262b97"))).abi_OnApplyTemplate()); }

	override HRESULT get_RequestedTheme(Windows.UI.Xaml.ElementTheme* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement2)m_inner.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).get_RequestedTheme(return_value); }
	override HRESULT set_RequestedTheme(Windows.UI.Xaml.ElementTheme value) { return (cast(Windows.UI.Xaml.IFrameworkElement2)m_inner.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).set_RequestedTheme(value); }
	override HRESULT add_DataContextChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.DataContextChangedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement2)m_inner.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).add_DataContextChanged(value, return_token); }
	override HRESULT remove_DataContextChanged(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement2)m_inner.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).remove_DataContextChanged(token); }
	override HRESULT abi_GetBindingExpression(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.Data.BindingExpression* return_returnValue) { return (cast(Windows.UI.Xaml.IFrameworkElement2)m_inner.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).abi_GetBindingExpression(dp, return_returnValue); }

	override HRESULT abi_GoToElementStateCore(HSTRING stateName, bool useTransitions, bool* return_returnValue) { this.GoToElementStateCore(stateName, useTransitions, return_returnValue); return S_OK; }
	void GoToElementStateCore(HSTRING stateName, bool useTransitions, bool* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IFrameworkElementOverrides2)m_inner.asInterface(uuid("cb5cd2b9-e3b4-458c-b64e-1434fd1bd88a"))).abi_GoToElementStateCore(stateName, useTransitions, return_returnValue)); }

	override HRESULT add_Loading(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.FrameworkElement, IInspectable) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement3)m_inner.asInterface(uuid("c81c2720-5c52-4bbe-a199-2b1e34f00f70"))).add_Loading(value, return_token); }
	override HRESULT remove_Loading(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement3)m_inner.asInterface(uuid("c81c2720-5c52-4bbe-a199-2b1e34f00f70"))).remove_Loading(token); }

	override HRESULT get_AllowFocusOnInteraction(bool* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_AllowFocusOnInteraction(return_value); }
	override HRESULT set_AllowFocusOnInteraction(bool value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_AllowFocusOnInteraction(value); }
	override HRESULT get_FocusVisualMargin(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualMargin(return_value); }
	override HRESULT set_FocusVisualMargin(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualMargin(value); }
	override HRESULT get_FocusVisualSecondaryThickness(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualSecondaryThickness(return_value); }
	override HRESULT set_FocusVisualSecondaryThickness(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualSecondaryThickness(value); }
	override HRESULT get_FocusVisualPrimaryThickness(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualPrimaryThickness(return_value); }
	override HRESULT set_FocusVisualPrimaryThickness(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualPrimaryThickness(value); }
	override HRESULT get_FocusVisualSecondaryBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualSecondaryBrush(return_value); }
	override HRESULT set_FocusVisualSecondaryBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualSecondaryBrush(value); }
	override HRESULT get_FocusVisualPrimaryBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualPrimaryBrush(return_value); }
	override HRESULT set_FocusVisualPrimaryBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualPrimaryBrush(value); }
	override HRESULT get_AllowFocusWhenDisabled(bool* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_AllowFocusWhenDisabled(return_value); }
	override HRESULT set_AllowFocusWhenDisabled(bool value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_AllowFocusWhenDisabled(value); }

	override HRESULT get_DesiredSize(Windows.Foundation.Size* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_DesiredSize(return_value); }
	override HRESULT get_AllowDrop(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_AllowDrop(return_value); }
	override HRESULT set_AllowDrop(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_AllowDrop(value); }
	override HRESULT get_Opacity(double* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Opacity(return_value); }
	override HRESULT set_Opacity(double value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Opacity(value); }
	override HRESULT get_Clip(Windows.UI.Xaml.Media.RectangleGeometry* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Clip(return_value); }
	override HRESULT set_Clip(Windows.UI.Xaml.Media.RectangleGeometry value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Clip(value); }
	override HRESULT get_RenderTransform(Windows.UI.Xaml.Media.Transform* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_RenderTransform(return_value); }
	override HRESULT set_RenderTransform(Windows.UI.Xaml.Media.Transform value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_RenderTransform(value); }
	override HRESULT get_Projection(Windows.UI.Xaml.Media.Projection* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Projection(return_value); }
	override HRESULT set_Projection(Windows.UI.Xaml.Media.Projection value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Projection(value); }
	override HRESULT get_RenderTransformOrigin(Windows.Foundation.Point* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_RenderTransformOrigin(return_value); }
	override HRESULT set_RenderTransformOrigin(Windows.Foundation.Point value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_RenderTransformOrigin(value); }
	override HRESULT get_IsHitTestVisible(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsHitTestVisible(return_value); }
	override HRESULT set_IsHitTestVisible(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsHitTestVisible(value); }
	override HRESULT get_Visibility(Windows.UI.Xaml.Visibility* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Visibility(return_value); }
	override HRESULT set_Visibility(Windows.UI.Xaml.Visibility value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Visibility(value); }
	override HRESULT get_RenderSize(Windows.Foundation.Size* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_RenderSize(return_value); }
	override HRESULT get_UseLayoutRounding(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_UseLayoutRounding(return_value); }
	override HRESULT set_UseLayoutRounding(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_UseLayoutRounding(value); }
	override HRESULT get_Transitions(Windows.UI.Xaml.Media.Animation.TransitionCollection* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Transitions(return_value); }
	override HRESULT set_Transitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Transitions(value); }
	override HRESULT get_CacheMode(Windows.UI.Xaml.Media.CacheMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_CacheMode(return_value); }
	override HRESULT set_CacheMode(Windows.UI.Xaml.Media.CacheMode value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_CacheMode(value); }
	override HRESULT get_IsTapEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsTapEnabled(return_value); }
	override HRESULT set_IsTapEnabled(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsTapEnabled(value); }
	override HRESULT get_IsDoubleTapEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsDoubleTapEnabled(return_value); }
	override HRESULT set_IsDoubleTapEnabled(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsDoubleTapEnabled(value); }
	override HRESULT get_IsRightTapEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsRightTapEnabled(return_value); }
	override HRESULT set_IsRightTapEnabled(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsRightTapEnabled(value); }
	override HRESULT get_IsHoldingEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsHoldingEnabled(return_value); }
	override HRESULT set_IsHoldingEnabled(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsHoldingEnabled(value); }
	override HRESULT get_ManipulationMode(Windows.UI.Xaml.Input.ManipulationModes* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_ManipulationMode(return_value); }
	override HRESULT set_ManipulationMode(Windows.UI.Xaml.Input.ManipulationModes value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_ManipulationMode(value); }
	override HRESULT get_PointerCaptures(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Input.Pointer)* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_PointerCaptures(return_value); }
	override HRESULT add_KeyUp(Windows.UI.Xaml.Input.KeyEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_KeyUp(value, return_token); }
	override HRESULT remove_KeyUp(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_KeyUp(token); }
	override HRESULT add_KeyDown(Windows.UI.Xaml.Input.KeyEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_KeyDown(value, return_token); }
	override HRESULT remove_KeyDown(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_KeyDown(token); }
	override HRESULT add_GotFocus(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_GotFocus(value, return_token); }
	override HRESULT remove_GotFocus(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_GotFocus(token); }
	override HRESULT add_LostFocus(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_LostFocus(value, return_token); }
	override HRESULT remove_LostFocus(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_LostFocus(token); }
	override HRESULT add_DragEnter(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DragEnter(value, return_token); }
	override HRESULT remove_DragEnter(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DragEnter(token); }
	override HRESULT add_DragLeave(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DragLeave(value, return_token); }
	override HRESULT remove_DragLeave(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DragLeave(token); }
	override HRESULT add_DragOver(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DragOver(value, return_token); }
	override HRESULT remove_DragOver(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DragOver(token); }
	override HRESULT add_Drop(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_Drop(value, return_token); }
	override HRESULT remove_Drop(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_Drop(token); }
	override HRESULT add_PointerPressed(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerPressed(value, return_token); }
	override HRESULT remove_PointerPressed(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerPressed(token); }
	override HRESULT add_PointerMoved(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerMoved(value, return_token); }
	override HRESULT remove_PointerMoved(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerMoved(token); }
	override HRESULT add_PointerReleased(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerReleased(value, return_token); }
	override HRESULT remove_PointerReleased(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerReleased(token); }
	override HRESULT add_PointerEntered(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerEntered(value, return_token); }
	override HRESULT remove_PointerEntered(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerEntered(token); }
	override HRESULT add_PointerExited(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerExited(value, return_token); }
	override HRESULT remove_PointerExited(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerExited(token); }
	override HRESULT add_PointerCaptureLost(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerCaptureLost(value, return_token); }
	override HRESULT remove_PointerCaptureLost(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerCaptureLost(token); }
	override HRESULT add_PointerCanceled(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerCanceled(value, return_token); }
	override HRESULT remove_PointerCanceled(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerCanceled(token); }
	override HRESULT add_PointerWheelChanged(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerWheelChanged(value, return_token); }
	override HRESULT remove_PointerWheelChanged(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerWheelChanged(token); }
	override HRESULT add_Tapped(Windows.UI.Xaml.Input.TappedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_Tapped(value, return_token); }
	override HRESULT remove_Tapped(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_Tapped(token); }
	override HRESULT add_DoubleTapped(Windows.UI.Xaml.Input.DoubleTappedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DoubleTapped(value, return_token); }
	override HRESULT remove_DoubleTapped(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DoubleTapped(token); }
	override HRESULT add_Holding(Windows.UI.Xaml.Input.HoldingEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_Holding(value, return_token); }
	override HRESULT remove_Holding(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_Holding(token); }
	override HRESULT add_RightTapped(Windows.UI.Xaml.Input.RightTappedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_RightTapped(value, return_token); }
	override HRESULT remove_RightTapped(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_RightTapped(token); }
	override HRESULT add_ManipulationStarting(Windows.UI.Xaml.Input.ManipulationStartingEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationStarting(value, return_token); }
	override HRESULT remove_ManipulationStarting(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationStarting(token); }
	override HRESULT add_ManipulationInertiaStarting(Windows.UI.Xaml.Input.ManipulationInertiaStartingEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationInertiaStarting(value, return_token); }
	override HRESULT remove_ManipulationInertiaStarting(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationInertiaStarting(token); }
	override HRESULT add_ManipulationStarted(Windows.UI.Xaml.Input.ManipulationStartedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationStarted(value, return_token); }
	override HRESULT remove_ManipulationStarted(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationStarted(token); }
	override HRESULT add_ManipulationDelta(Windows.UI.Xaml.Input.ManipulationDeltaEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationDelta(value, return_token); }
	override HRESULT remove_ManipulationDelta(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationDelta(token); }
	override HRESULT add_ManipulationCompleted(Windows.UI.Xaml.Input.ManipulationCompletedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationCompleted(value, return_token); }
	override HRESULT remove_ManipulationCompleted(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationCompleted(token); }
	override HRESULT abi_Measure(Windows.Foundation.Size availableSize) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_Measure(availableSize); }
	override HRESULT abi_Arrange(Windows.Foundation.Rect finalRect) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_Arrange(finalRect); }
	override HRESULT abi_CapturePointer(Windows.UI.Xaml.Input.Pointer value, bool* return_returnValue) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_CapturePointer(value, return_returnValue); }
	override HRESULT abi_ReleasePointerCapture(Windows.UI.Xaml.Input.Pointer value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_ReleasePointerCapture(value); }
	override HRESULT abi_ReleasePointerCaptures() { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_ReleasePointerCaptures(); }
	override HRESULT abi_AddHandler(Windows.UI.Xaml.RoutedEvent routedEvent, IInspectable handler, bool handledEventsToo) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_AddHandler(routedEvent, handler, handledEventsToo); }
	override HRESULT abi_RemoveHandler(Windows.UI.Xaml.RoutedEvent routedEvent, IInspectable handler) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_RemoveHandler(routedEvent, handler); }
	override HRESULT abi_TransformToVisual(Windows.UI.Xaml.UIElement visual, Windows.UI.Xaml.Media.GeneralTransform* return_returnValue) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_TransformToVisual(visual, return_returnValue); }
	override HRESULT abi_InvalidateMeasure() { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_InvalidateMeasure(); }
	override HRESULT abi_InvalidateArrange() { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_InvalidateArrange(); }
	override HRESULT abi_UpdateLayout() { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_UpdateLayout(); }

	override HRESULT abi_OnCreateAutomationPeer(Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue) { this.OnCreateAutomationPeer(return_returnValue); return S_OK; }
	void OnCreateAutomationPeer(Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IUIElementOverrides)m_inner.asInterface(uuid("608d2f1d-7858-4aeb-89e4-b54e2c7ed3d3"))).abi_OnCreateAutomationPeer(return_returnValue)); }
	override HRESULT abi_OnDisconnectVisualChildren() { this.OnDisconnectVisualChildren(); return S_OK; }
	void OnDisconnectVisualChildren() { Debug.OK((cast(Windows.UI.Xaml.IUIElementOverrides)m_inner.asInterface(uuid("608d2f1d-7858-4aeb-89e4-b54e2c7ed3d3"))).abi_OnDisconnectVisualChildren()); }
	override HRESULT abi_FindSubElementsForTouchTargeting(Windows.Foundation.Point point, Windows.Foundation.Rect boundingRect, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point))* return_returnValue) { this.FindSubElementsForTouchTargeting(point, boundingRect, return_returnValue); return S_OK; }
	void FindSubElementsForTouchTargeting(Windows.Foundation.Point point, Windows.Foundation.Rect boundingRect, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point))* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IUIElementOverrides)m_inner.asInterface(uuid("608d2f1d-7858-4aeb-89e4-b54e2c7ed3d3"))).abi_FindSubElementsForTouchTargeting(point, boundingRect, return_returnValue)); }

	override HRESULT get_CompositeMode(Windows.UI.Xaml.Media.ElementCompositeMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement2)m_inner.asInterface(uuid("676d0bf9-b66c-41d6-ba50-58cf87f201d1"))).get_CompositeMode(return_value); }
	override HRESULT set_CompositeMode(Windows.UI.Xaml.Media.ElementCompositeMode value) { return (cast(Windows.UI.Xaml.IUIElement2)m_inner.asInterface(uuid("676d0bf9-b66c-41d6-ba50-58cf87f201d1"))).set_CompositeMode(value); }
	override HRESULT abi_CancelDirectManipulations(bool* return_returnValue) { return (cast(Windows.UI.Xaml.IUIElement2)m_inner.asInterface(uuid("676d0bf9-b66c-41d6-ba50-58cf87f201d1"))).abi_CancelDirectManipulations(return_returnValue); }

	override HRESULT get_Transform3D(Windows.UI.Xaml.Media.Media3D.Transform3D* return_value) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).get_Transform3D(return_value); }
	override HRESULT set_Transform3D(Windows.UI.Xaml.Media.Media3D.Transform3D value) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).set_Transform3D(value); }
	override HRESULT get_CanDrag(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).get_CanDrag(return_value); }
	override HRESULT set_CanDrag(bool value) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).set_CanDrag(value); }
	override HRESULT add_DragStarting(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.DragStartingEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).add_DragStarting(value, return_token); }
	override HRESULT remove_DragStarting(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).remove_DragStarting(token); }
	override HRESULT add_DropCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.DropCompletedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).add_DropCompleted(value, return_token); }
	override HRESULT remove_DropCompleted(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).remove_DropCompleted(token); }
	override HRESULT abi_StartDragAsync(Windows.UI.Input.PointerPoint pointerPoint, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)* return_returnValue) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).abi_StartDragAsync(pointerPoint, return_returnValue); }

	override HRESULT get_ContextFlyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_ContextFlyout(return_value); }
	override HRESULT set_ContextFlyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_ContextFlyout(value); }
	override HRESULT get_ExitDisplayModeOnAccessKeyInvoked(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_ExitDisplayModeOnAccessKeyInvoked(return_value); }
	override HRESULT set_ExitDisplayModeOnAccessKeyInvoked(bool value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_ExitDisplayModeOnAccessKeyInvoked(value); }
	override HRESULT get_IsAccessKeyScope(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_IsAccessKeyScope(return_value); }
	override HRESULT set_IsAccessKeyScope(bool value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_IsAccessKeyScope(value); }
	override HRESULT get_AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_AccessKeyScopeOwner(return_value); }
	override HRESULT set_AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_AccessKeyScopeOwner(value); }
	override HRESULT get_AccessKey(HSTRING* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_AccessKey(return_value); }
	override HRESULT set_AccessKey(HSTRING value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_AccessKey(value); }
	override HRESULT add_ContextRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.ContextRequestedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_ContextRequested(value, return_token); }
	override HRESULT remove_ContextRequested(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_ContextRequested(token); }
	override HRESULT add_ContextCanceled(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.RoutedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_ContextCanceled(value, return_token); }
	override HRESULT remove_ContextCanceled(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_ContextCanceled(token); }
	override HRESULT add_AccessKeyDisplayRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyDisplayRequestedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_AccessKeyDisplayRequested(value, return_token); }
	override HRESULT remove_AccessKeyDisplayRequested(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_AccessKeyDisplayRequested(token); }
	override HRESULT add_AccessKeyDisplayDismissed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyDisplayDismissedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_AccessKeyDisplayDismissed(value, return_token); }
	override HRESULT remove_AccessKeyDisplayDismissed(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_AccessKeyDisplayDismissed(token); }
	override HRESULT add_AccessKeyInvoked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyInvokedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_AccessKeyInvoked(value, return_token); }
	override HRESULT remove_AccessKeyInvoked(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_AccessKeyInvoked(token); }

	override HRESULT get_Lights(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.XamlLight)* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_Lights(return_value); }
	override HRESULT get_KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_KeyTipPlacementMode(return_value); }
	override HRESULT set_KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_KeyTipPlacementMode(value); }
	override HRESULT get_KeyTipHorizontalOffset(double* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_KeyTipHorizontalOffset(return_value); }
	override HRESULT set_KeyTipHorizontalOffset(double value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_KeyTipHorizontalOffset(value); }
	override HRESULT get_KeyTipVerticalOffset(double* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_KeyTipVerticalOffset(return_value); }
	override HRESULT set_KeyTipVerticalOffset(double value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_KeyTipVerticalOffset(value); }
	override HRESULT get_XYFocusKeyboardNavigation(Windows.UI.Xaml.Input.XYFocusKeyboardNavigationMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusKeyboardNavigation(return_value); }
	override HRESULT set_XYFocusKeyboardNavigation(Windows.UI.Xaml.Input.XYFocusKeyboardNavigationMode value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusKeyboardNavigation(value); }
	override HRESULT get_XYFocusUpNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusUpNavigationStrategy(return_value); }
	override HRESULT set_XYFocusUpNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusUpNavigationStrategy(value); }
	override HRESULT get_XYFocusDownNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusDownNavigationStrategy(return_value); }
	override HRESULT set_XYFocusDownNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusDownNavigationStrategy(value); }
	override HRESULT get_XYFocusLeftNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusLeftNavigationStrategy(return_value); }
	override HRESULT set_XYFocusLeftNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusLeftNavigationStrategy(value); }
	override HRESULT get_XYFocusRightNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusRightNavigationStrategy(return_value); }
	override HRESULT set_XYFocusRightNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusRightNavigationStrategy(value); }
	override HRESULT get_HighContrastAdjustment(Windows.UI.Xaml.ElementHighContrastAdjustment* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_HighContrastAdjustment(return_value); }
	override HRESULT set_HighContrastAdjustment(Windows.UI.Xaml.ElementHighContrastAdjustment value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_HighContrastAdjustment(value); }
	override HRESULT get_TabFocusNavigation(Windows.UI.Xaml.Input.KeyboardNavigationMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_TabFocusNavigation(return_value); }
	override HRESULT set_TabFocusNavigation(Windows.UI.Xaml.Input.KeyboardNavigationMode value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_TabFocusNavigation(value); }
	override HRESULT add_GettingFocus(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.GettingFocusEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).add_GettingFocus(value, return_token); }
	override HRESULT remove_GettingFocus(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).remove_GettingFocus(token); }
	override HRESULT add_LosingFocus(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.LosingFocusEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).add_LosingFocus(value, return_token); }
	override HRESULT remove_LosingFocus(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).remove_LosingFocus(token); }
	override HRESULT add_NoFocusCandidateFound(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.NoFocusCandidateFoundEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).add_NoFocusCandidateFound(value, return_token); }
	override HRESULT remove_NoFocusCandidateFound(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).remove_NoFocusCandidateFound(token); }
	override HRESULT abi_StartBringIntoView() { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).abi_StartBringIntoView(); }
	override HRESULT abi_StartBringIntoViewWithOptions(Windows.UI.Xaml.BringIntoViewOptions options) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).abi_StartBringIntoViewWithOptions(options); }

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

interface Polygon : Windows.UI.Xaml.Shapes.Shape, Windows.UI.Xaml.Shapes.IPolygon
{
extern(Windows):
	final Windows.UI.Xaml.Media.FillRule FillRule()
	{
		Windows.UI.Xaml.Media.FillRule _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IPolygon)this.asInterface(uuid("e3755c19-2e4d-4bcc-8d34-86871957fa01"))).get_FillRule(&_ret));
		return _ret;
	}
	final void FillRule(Windows.UI.Xaml.Media.FillRule value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IPolygon)this.asInterface(uuid("e3755c19-2e4d-4bcc-8d34-86871957fa01"))).set_FillRule(value));
	}
	final Windows.UI.Xaml.Media.PointCollection Points()
	{
		Windows.UI.Xaml.Media.PointCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IPolygon)this.asInterface(uuid("e3755c19-2e4d-4bcc-8d34-86871957fa01"))).get_Points(&_ret));
		return _ret;
	}
	final void Points(Windows.UI.Xaml.Media.PointCollection value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IPolygon)this.asInterface(uuid("e3755c19-2e4d-4bcc-8d34-86871957fa01"))).set_Points(value));
	}

	private static Windows.UI.Xaml.Shapes.IPolygonStatics _staticInstance;
	public static Windows.UI.Xaml.Shapes.IPolygonStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Shapes.IPolygonStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty FillRuleProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_FillRuleProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty PointsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PointsProperty(&_ret));
		return _ret;
	}
	static Polygon New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(Polygon).abi_ActivateInstance(&ret));
		return cast(Polygon) ret;
	}
}

interface Polyline : Windows.UI.Xaml.Shapes.Shape, Windows.UI.Xaml.Shapes.IPolyline
{
extern(Windows):
	final Windows.UI.Xaml.Media.FillRule FillRule()
	{
		Windows.UI.Xaml.Media.FillRule _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IPolyline)this.asInterface(uuid("91dc62f8-42b3-47f3-8476-c55124a7c4c6"))).get_FillRule(&_ret));
		return _ret;
	}
	final void FillRule(Windows.UI.Xaml.Media.FillRule value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IPolyline)this.asInterface(uuid("91dc62f8-42b3-47f3-8476-c55124a7c4c6"))).set_FillRule(value));
	}
	final Windows.UI.Xaml.Media.PointCollection Points()
	{
		Windows.UI.Xaml.Media.PointCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IPolyline)this.asInterface(uuid("91dc62f8-42b3-47f3-8476-c55124a7c4c6"))).get_Points(&_ret));
		return _ret;
	}
	final void Points(Windows.UI.Xaml.Media.PointCollection value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IPolyline)this.asInterface(uuid("91dc62f8-42b3-47f3-8476-c55124a7c4c6"))).set_Points(value));
	}

	private static Windows.UI.Xaml.Shapes.IPolylineStatics _staticInstance;
	public static Windows.UI.Xaml.Shapes.IPolylineStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Shapes.IPolylineStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty FillRuleProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_FillRuleProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty PointsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PointsProperty(&_ret));
		return _ret;
	}
	static Polyline New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(Polyline).abi_ActivateInstance(&ret));
		return cast(Polyline) ret;
	}
}

interface Rectangle : Windows.UI.Xaml.Shapes.Shape, Windows.UI.Xaml.Shapes.IRectangle
{
extern(Windows):
	final double RadiusX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IRectangle)this.asInterface(uuid("855bc230-8a11-4e18-a136-4bc21c7827b0"))).get_RadiusX(&_ret));
		return _ret;
	}
	final void RadiusX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IRectangle)this.asInterface(uuid("855bc230-8a11-4e18-a136-4bc21c7827b0"))).set_RadiusX(value));
	}
	final double RadiusY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IRectangle)this.asInterface(uuid("855bc230-8a11-4e18-a136-4bc21c7827b0"))).get_RadiusY(&_ret));
		return _ret;
	}
	final void RadiusY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IRectangle)this.asInterface(uuid("855bc230-8a11-4e18-a136-4bc21c7827b0"))).set_RadiusY(value));
	}

	private static Windows.UI.Xaml.Shapes.IRectangleStatics _staticInstance;
	public static Windows.UI.Xaml.Shapes.IRectangleStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Shapes.IRectangleStatics);
		return _staticInstance;
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
	static Rectangle New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(Rectangle).abi_ActivateInstance(&ret));
		return cast(Rectangle) ret;
	}
}

interface Shape : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Shapes.IShape, Windows.UI.Xaml.Shapes.IShape2
{
extern(Windows):
	final Windows.UI.Xaml.Media.Brush Fill()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_Fill(&_ret));
		return _ret;
	}
	final void Fill(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_Fill(value));
	}
	final Windows.UI.Xaml.Media.Brush Stroke()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_Stroke(&_ret));
		return _ret;
	}
	final void Stroke(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_Stroke(value));
	}
	final double StrokeMiterLimit()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeMiterLimit(&_ret));
		return _ret;
	}
	final void StrokeMiterLimit(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeMiterLimit(value));
	}
	final double StrokeThickness()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeThickness(&_ret));
		return _ret;
	}
	final void StrokeThickness(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeThickness(value));
	}
	final Windows.UI.Xaml.Media.PenLineCap StrokeStartLineCap()
	{
		Windows.UI.Xaml.Media.PenLineCap _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeStartLineCap(&_ret));
		return _ret;
	}
	final void StrokeStartLineCap(Windows.UI.Xaml.Media.PenLineCap value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeStartLineCap(value));
	}
	final Windows.UI.Xaml.Media.PenLineCap StrokeEndLineCap()
	{
		Windows.UI.Xaml.Media.PenLineCap _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeEndLineCap(&_ret));
		return _ret;
	}
	final void StrokeEndLineCap(Windows.UI.Xaml.Media.PenLineCap value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeEndLineCap(value));
	}
	final Windows.UI.Xaml.Media.PenLineJoin StrokeLineJoin()
	{
		Windows.UI.Xaml.Media.PenLineJoin _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeLineJoin(&_ret));
		return _ret;
	}
	final void StrokeLineJoin(Windows.UI.Xaml.Media.PenLineJoin value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeLineJoin(value));
	}
	final double StrokeDashOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeDashOffset(&_ret));
		return _ret;
	}
	final void StrokeDashOffset(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeDashOffset(value));
	}
	final Windows.UI.Xaml.Media.PenLineCap StrokeDashCap()
	{
		Windows.UI.Xaml.Media.PenLineCap _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeDashCap(&_ret));
		return _ret;
	}
	final void StrokeDashCap(Windows.UI.Xaml.Media.PenLineCap value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeDashCap(value));
	}
	final Windows.UI.Xaml.Media.DoubleCollection StrokeDashArray()
	{
		Windows.UI.Xaml.Media.DoubleCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeDashArray(&_ret));
		return _ret;
	}
	final void StrokeDashArray(Windows.UI.Xaml.Media.DoubleCollection value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeDashArray(value));
	}
	final Windows.UI.Xaml.Media.Stretch Stretch()
	{
		Windows.UI.Xaml.Media.Stretch _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_Stretch(&_ret));
		return _ret;
	}
	final void Stretch(Windows.UI.Xaml.Media.Stretch value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_Stretch(value));
	}
	final Windows.UI.Xaml.Media.Transform GeometryTransform()
	{
		Windows.UI.Xaml.Media.Transform _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape)this.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_GeometryTransform(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionBrush GetAlphaMask()
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Shapes.IShape2)this.asInterface(uuid("97248dba-49f2-49a4-a5dd-164df824db14"))).abi_GetAlphaMask(&_ret));
		return _ret;
	}

	private static Windows.UI.Xaml.Shapes.IShapeStatics _staticInstance;
	public static Windows.UI.Xaml.Shapes.IShapeStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Shapes.IShapeStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty FillProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_FillProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty StrokeProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_StrokeProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty StrokeMiterLimitProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_StrokeMiterLimitProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty StrokeThicknessProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_StrokeThicknessProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty StrokeStartLineCapProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_StrokeStartLineCapProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty StrokeEndLineCapProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_StrokeEndLineCapProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty StrokeLineJoinProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_StrokeLineJoinProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty StrokeDashOffsetProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_StrokeDashOffsetProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty StrokeDashCapProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_StrokeDashCapProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty StrokeDashArrayProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_StrokeDashArrayProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty StretchProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_StretchProperty(&_ret));
		return _ret;
	}
	static Shape New()
	{
		IInspectable outer, inner;
		Shape ret;
		Debug.OK(activationFactory!(Shape, Windows.UI.Xaml.Shapes.IShapeFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
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
	override HRESULT get_Fill(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_Fill(return_value); }
	override HRESULT set_Fill(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_Fill(value); }
	override HRESULT get_Stroke(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_Stroke(return_value); }
	override HRESULT set_Stroke(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_Stroke(value); }
	override HRESULT get_StrokeMiterLimit(double* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeMiterLimit(return_value); }
	override HRESULT set_StrokeMiterLimit(double value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeMiterLimit(value); }
	override HRESULT get_StrokeThickness(double* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeThickness(return_value); }
	override HRESULT set_StrokeThickness(double value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeThickness(value); }
	override HRESULT get_StrokeStartLineCap(Windows.UI.Xaml.Media.PenLineCap* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeStartLineCap(return_value); }
	override HRESULT set_StrokeStartLineCap(Windows.UI.Xaml.Media.PenLineCap value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeStartLineCap(value); }
	override HRESULT get_StrokeEndLineCap(Windows.UI.Xaml.Media.PenLineCap* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeEndLineCap(return_value); }
	override HRESULT set_StrokeEndLineCap(Windows.UI.Xaml.Media.PenLineCap value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeEndLineCap(value); }
	override HRESULT get_StrokeLineJoin(Windows.UI.Xaml.Media.PenLineJoin* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeLineJoin(return_value); }
	override HRESULT set_StrokeLineJoin(Windows.UI.Xaml.Media.PenLineJoin value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeLineJoin(value); }
	override HRESULT get_StrokeDashOffset(double* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeDashOffset(return_value); }
	override HRESULT set_StrokeDashOffset(double value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeDashOffset(value); }
	override HRESULT get_StrokeDashCap(Windows.UI.Xaml.Media.PenLineCap* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeDashCap(return_value); }
	override HRESULT set_StrokeDashCap(Windows.UI.Xaml.Media.PenLineCap value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeDashCap(value); }
	override HRESULT get_StrokeDashArray(Windows.UI.Xaml.Media.DoubleCollection* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_StrokeDashArray(return_value); }
	override HRESULT set_StrokeDashArray(Windows.UI.Xaml.Media.DoubleCollection value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_StrokeDashArray(value); }
	override HRESULT get_Stretch(Windows.UI.Xaml.Media.Stretch* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_Stretch(return_value); }
	override HRESULT set_Stretch(Windows.UI.Xaml.Media.Stretch value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).set_Stretch(value); }
	override HRESULT get_GeometryTransform(Windows.UI.Xaml.Media.Transform* return_value) { return (cast(Windows.UI.Xaml.Shapes.IShape)m_inner.asInterface(uuid("786f2b75-9aa0-454d-ae06-a2466e37c832"))).get_GeometryTransform(return_value); }

	override HRESULT abi_GetAlphaMask(Windows.UI.Composition.CompositionBrush* return_returnValue) { return (cast(Windows.UI.Xaml.Shapes.IShape2)m_inner.asInterface(uuid("97248dba-49f2-49a4-a5dd-164df824db14"))).abi_GetAlphaMask(return_returnValue); }

	override HRESULT get_Triggers(Windows.UI.Xaml.TriggerCollection* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Triggers(return_value); }
	override HRESULT get_Resources(Windows.UI.Xaml.ResourceDictionary* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Resources(return_value); }
	override HRESULT set_Resources(Windows.UI.Xaml.ResourceDictionary value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Resources(value); }
	override HRESULT get_Tag(IInspectable* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Tag(return_value); }
	override HRESULT set_Tag(IInspectable value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Tag(value); }
	override HRESULT get_Language(HSTRING* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Language(return_value); }
	override HRESULT set_Language(HSTRING value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Language(value); }
	override HRESULT get_ActualWidth(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_ActualWidth(return_value); }
	override HRESULT get_ActualHeight(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_ActualHeight(return_value); }
	override HRESULT get_Width(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Width(return_value); }
	override HRESULT set_Width(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Width(value); }
	override HRESULT get_Height(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Height(return_value); }
	override HRESULT set_Height(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Height(value); }
	override HRESULT get_MinWidth(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_MinWidth(return_value); }
	override HRESULT set_MinWidth(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_MinWidth(value); }
	override HRESULT get_MaxWidth(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_MaxWidth(return_value); }
	override HRESULT set_MaxWidth(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_MaxWidth(value); }
	override HRESULT get_MinHeight(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_MinHeight(return_value); }
	override HRESULT set_MinHeight(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_MinHeight(value); }
	override HRESULT get_MaxHeight(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_MaxHeight(return_value); }
	override HRESULT set_MaxHeight(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_MaxHeight(value); }
	override HRESULT get_HorizontalAlignment(Windows.UI.Xaml.HorizontalAlignment* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_HorizontalAlignment(return_value); }
	override HRESULT set_HorizontalAlignment(Windows.UI.Xaml.HorizontalAlignment value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_HorizontalAlignment(value); }
	override HRESULT get_VerticalAlignment(Windows.UI.Xaml.VerticalAlignment* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_VerticalAlignment(return_value); }
	override HRESULT set_VerticalAlignment(Windows.UI.Xaml.VerticalAlignment value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_VerticalAlignment(value); }
	override HRESULT get_Margin(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Margin(return_value); }
	override HRESULT set_Margin(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Margin(value); }
	override HRESULT get_Name(HSTRING* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Name(return_value); }
	override HRESULT set_Name(HSTRING value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Name(value); }
	override HRESULT get_BaseUri(Windows.Foundation.Uri* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_BaseUri(return_value); }
	override HRESULT get_DataContext(IInspectable* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_DataContext(return_value); }
	override HRESULT set_DataContext(IInspectable value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_DataContext(value); }
	override HRESULT get_Style(Windows.UI.Xaml.Style* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Style(return_value); }
	override HRESULT set_Style(Windows.UI.Xaml.Style value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Style(value); }
	override HRESULT get_Parent(Windows.UI.Xaml.DependencyObject* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Parent(return_value); }
	override HRESULT get_FlowDirection(Windows.UI.Xaml.FlowDirection* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_FlowDirection(return_value); }
	override HRESULT set_FlowDirection(Windows.UI.Xaml.FlowDirection value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_FlowDirection(value); }
	override HRESULT add_Loaded(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).add_Loaded(value, return_token); }
	override HRESULT remove_Loaded(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).remove_Loaded(token); }
	override HRESULT add_Unloaded(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).add_Unloaded(value, return_token); }
	override HRESULT remove_Unloaded(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).remove_Unloaded(token); }
	override HRESULT add_SizeChanged(Windows.UI.Xaml.SizeChangedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).add_SizeChanged(value, return_token); }
	override HRESULT remove_SizeChanged(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).remove_SizeChanged(token); }
	override HRESULT add_LayoutUpdated(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).add_LayoutUpdated(value, return_token); }
	override HRESULT remove_LayoutUpdated(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).remove_LayoutUpdated(token); }
	override HRESULT abi_FindName(HSTRING name, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).abi_FindName(name, return_returnValue); }
	override HRESULT abi_SetBinding(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.Data.BindingBase binding) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).abi_SetBinding(dp, binding); }

	override HRESULT abi_MeasureOverride(Windows.Foundation.Size availableSize, Windows.Foundation.Size* return_returnValue) { this.MeasureOverride(availableSize, return_returnValue); return S_OK; }
	void MeasureOverride(Windows.Foundation.Size availableSize, Windows.Foundation.Size* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IFrameworkElementOverrides)m_inner.asInterface(uuid("da007e54-b3c2-4b9a-aa8e-d3f071262b97"))).abi_MeasureOverride(availableSize, return_returnValue)); }
	override HRESULT abi_ArrangeOverride(Windows.Foundation.Size finalSize, Windows.Foundation.Size* return_returnValue) { this.ArrangeOverride(finalSize, return_returnValue); return S_OK; }
	void ArrangeOverride(Windows.Foundation.Size finalSize, Windows.Foundation.Size* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IFrameworkElementOverrides)m_inner.asInterface(uuid("da007e54-b3c2-4b9a-aa8e-d3f071262b97"))).abi_ArrangeOverride(finalSize, return_returnValue)); }
	override HRESULT abi_OnApplyTemplate() { this.OnApplyTemplate(); return S_OK; }
	void OnApplyTemplate() { Debug.OK((cast(Windows.UI.Xaml.IFrameworkElementOverrides)m_inner.asInterface(uuid("da007e54-b3c2-4b9a-aa8e-d3f071262b97"))).abi_OnApplyTemplate()); }

	override HRESULT get_RequestedTheme(Windows.UI.Xaml.ElementTheme* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement2)m_inner.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).get_RequestedTheme(return_value); }
	override HRESULT set_RequestedTheme(Windows.UI.Xaml.ElementTheme value) { return (cast(Windows.UI.Xaml.IFrameworkElement2)m_inner.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).set_RequestedTheme(value); }
	override HRESULT add_DataContextChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.DataContextChangedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement2)m_inner.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).add_DataContextChanged(value, return_token); }
	override HRESULT remove_DataContextChanged(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement2)m_inner.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).remove_DataContextChanged(token); }
	override HRESULT abi_GetBindingExpression(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.Data.BindingExpression* return_returnValue) { return (cast(Windows.UI.Xaml.IFrameworkElement2)m_inner.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).abi_GetBindingExpression(dp, return_returnValue); }

	override HRESULT abi_GoToElementStateCore(HSTRING stateName, bool useTransitions, bool* return_returnValue) { this.GoToElementStateCore(stateName, useTransitions, return_returnValue); return S_OK; }
	void GoToElementStateCore(HSTRING stateName, bool useTransitions, bool* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IFrameworkElementOverrides2)m_inner.asInterface(uuid("cb5cd2b9-e3b4-458c-b64e-1434fd1bd88a"))).abi_GoToElementStateCore(stateName, useTransitions, return_returnValue)); }

	override HRESULT add_Loading(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.FrameworkElement, IInspectable) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement3)m_inner.asInterface(uuid("c81c2720-5c52-4bbe-a199-2b1e34f00f70"))).add_Loading(value, return_token); }
	override HRESULT remove_Loading(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement3)m_inner.asInterface(uuid("c81c2720-5c52-4bbe-a199-2b1e34f00f70"))).remove_Loading(token); }

	override HRESULT get_AllowFocusOnInteraction(bool* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_AllowFocusOnInteraction(return_value); }
	override HRESULT set_AllowFocusOnInteraction(bool value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_AllowFocusOnInteraction(value); }
	override HRESULT get_FocusVisualMargin(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualMargin(return_value); }
	override HRESULT set_FocusVisualMargin(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualMargin(value); }
	override HRESULT get_FocusVisualSecondaryThickness(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualSecondaryThickness(return_value); }
	override HRESULT set_FocusVisualSecondaryThickness(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualSecondaryThickness(value); }
	override HRESULT get_FocusVisualPrimaryThickness(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualPrimaryThickness(return_value); }
	override HRESULT set_FocusVisualPrimaryThickness(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualPrimaryThickness(value); }
	override HRESULT get_FocusVisualSecondaryBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualSecondaryBrush(return_value); }
	override HRESULT set_FocusVisualSecondaryBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualSecondaryBrush(value); }
	override HRESULT get_FocusVisualPrimaryBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualPrimaryBrush(return_value); }
	override HRESULT set_FocusVisualPrimaryBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualPrimaryBrush(value); }
	override HRESULT get_AllowFocusWhenDisabled(bool* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_AllowFocusWhenDisabled(return_value); }
	override HRESULT set_AllowFocusWhenDisabled(bool value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_AllowFocusWhenDisabled(value); }

	override HRESULT get_DesiredSize(Windows.Foundation.Size* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_DesiredSize(return_value); }
	override HRESULT get_AllowDrop(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_AllowDrop(return_value); }
	override HRESULT set_AllowDrop(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_AllowDrop(value); }
	override HRESULT get_Opacity(double* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Opacity(return_value); }
	override HRESULT set_Opacity(double value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Opacity(value); }
	override HRESULT get_Clip(Windows.UI.Xaml.Media.RectangleGeometry* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Clip(return_value); }
	override HRESULT set_Clip(Windows.UI.Xaml.Media.RectangleGeometry value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Clip(value); }
	override HRESULT get_RenderTransform(Windows.UI.Xaml.Media.Transform* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_RenderTransform(return_value); }
	override HRESULT set_RenderTransform(Windows.UI.Xaml.Media.Transform value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_RenderTransform(value); }
	override HRESULT get_Projection(Windows.UI.Xaml.Media.Projection* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Projection(return_value); }
	override HRESULT set_Projection(Windows.UI.Xaml.Media.Projection value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Projection(value); }
	override HRESULT get_RenderTransformOrigin(Windows.Foundation.Point* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_RenderTransformOrigin(return_value); }
	override HRESULT set_RenderTransformOrigin(Windows.Foundation.Point value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_RenderTransformOrigin(value); }
	override HRESULT get_IsHitTestVisible(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsHitTestVisible(return_value); }
	override HRESULT set_IsHitTestVisible(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsHitTestVisible(value); }
	override HRESULT get_Visibility(Windows.UI.Xaml.Visibility* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Visibility(return_value); }
	override HRESULT set_Visibility(Windows.UI.Xaml.Visibility value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Visibility(value); }
	override HRESULT get_RenderSize(Windows.Foundation.Size* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_RenderSize(return_value); }
	override HRESULT get_UseLayoutRounding(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_UseLayoutRounding(return_value); }
	override HRESULT set_UseLayoutRounding(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_UseLayoutRounding(value); }
	override HRESULT get_Transitions(Windows.UI.Xaml.Media.Animation.TransitionCollection* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Transitions(return_value); }
	override HRESULT set_Transitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Transitions(value); }
	override HRESULT get_CacheMode(Windows.UI.Xaml.Media.CacheMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_CacheMode(return_value); }
	override HRESULT set_CacheMode(Windows.UI.Xaml.Media.CacheMode value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_CacheMode(value); }
	override HRESULT get_IsTapEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsTapEnabled(return_value); }
	override HRESULT set_IsTapEnabled(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsTapEnabled(value); }
	override HRESULT get_IsDoubleTapEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsDoubleTapEnabled(return_value); }
	override HRESULT set_IsDoubleTapEnabled(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsDoubleTapEnabled(value); }
	override HRESULT get_IsRightTapEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsRightTapEnabled(return_value); }
	override HRESULT set_IsRightTapEnabled(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsRightTapEnabled(value); }
	override HRESULT get_IsHoldingEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsHoldingEnabled(return_value); }
	override HRESULT set_IsHoldingEnabled(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsHoldingEnabled(value); }
	override HRESULT get_ManipulationMode(Windows.UI.Xaml.Input.ManipulationModes* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_ManipulationMode(return_value); }
	override HRESULT set_ManipulationMode(Windows.UI.Xaml.Input.ManipulationModes value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_ManipulationMode(value); }
	override HRESULT get_PointerCaptures(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Input.Pointer)* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_PointerCaptures(return_value); }
	override HRESULT add_KeyUp(Windows.UI.Xaml.Input.KeyEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_KeyUp(value, return_token); }
	override HRESULT remove_KeyUp(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_KeyUp(token); }
	override HRESULT add_KeyDown(Windows.UI.Xaml.Input.KeyEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_KeyDown(value, return_token); }
	override HRESULT remove_KeyDown(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_KeyDown(token); }
	override HRESULT add_GotFocus(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_GotFocus(value, return_token); }
	override HRESULT remove_GotFocus(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_GotFocus(token); }
	override HRESULT add_LostFocus(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_LostFocus(value, return_token); }
	override HRESULT remove_LostFocus(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_LostFocus(token); }
	override HRESULT add_DragEnter(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DragEnter(value, return_token); }
	override HRESULT remove_DragEnter(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DragEnter(token); }
	override HRESULT add_DragLeave(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DragLeave(value, return_token); }
	override HRESULT remove_DragLeave(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DragLeave(token); }
	override HRESULT add_DragOver(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DragOver(value, return_token); }
	override HRESULT remove_DragOver(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DragOver(token); }
	override HRESULT add_Drop(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_Drop(value, return_token); }
	override HRESULT remove_Drop(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_Drop(token); }
	override HRESULT add_PointerPressed(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerPressed(value, return_token); }
	override HRESULT remove_PointerPressed(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerPressed(token); }
	override HRESULT add_PointerMoved(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerMoved(value, return_token); }
	override HRESULT remove_PointerMoved(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerMoved(token); }
	override HRESULT add_PointerReleased(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerReleased(value, return_token); }
	override HRESULT remove_PointerReleased(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerReleased(token); }
	override HRESULT add_PointerEntered(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerEntered(value, return_token); }
	override HRESULT remove_PointerEntered(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerEntered(token); }
	override HRESULT add_PointerExited(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerExited(value, return_token); }
	override HRESULT remove_PointerExited(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerExited(token); }
	override HRESULT add_PointerCaptureLost(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerCaptureLost(value, return_token); }
	override HRESULT remove_PointerCaptureLost(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerCaptureLost(token); }
	override HRESULT add_PointerCanceled(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerCanceled(value, return_token); }
	override HRESULT remove_PointerCanceled(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerCanceled(token); }
	override HRESULT add_PointerWheelChanged(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerWheelChanged(value, return_token); }
	override HRESULT remove_PointerWheelChanged(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerWheelChanged(token); }
	override HRESULT add_Tapped(Windows.UI.Xaml.Input.TappedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_Tapped(value, return_token); }
	override HRESULT remove_Tapped(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_Tapped(token); }
	override HRESULT add_DoubleTapped(Windows.UI.Xaml.Input.DoubleTappedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DoubleTapped(value, return_token); }
	override HRESULT remove_DoubleTapped(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DoubleTapped(token); }
	override HRESULT add_Holding(Windows.UI.Xaml.Input.HoldingEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_Holding(value, return_token); }
	override HRESULT remove_Holding(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_Holding(token); }
	override HRESULT add_RightTapped(Windows.UI.Xaml.Input.RightTappedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_RightTapped(value, return_token); }
	override HRESULT remove_RightTapped(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_RightTapped(token); }
	override HRESULT add_ManipulationStarting(Windows.UI.Xaml.Input.ManipulationStartingEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationStarting(value, return_token); }
	override HRESULT remove_ManipulationStarting(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationStarting(token); }
	override HRESULT add_ManipulationInertiaStarting(Windows.UI.Xaml.Input.ManipulationInertiaStartingEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationInertiaStarting(value, return_token); }
	override HRESULT remove_ManipulationInertiaStarting(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationInertiaStarting(token); }
	override HRESULT add_ManipulationStarted(Windows.UI.Xaml.Input.ManipulationStartedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationStarted(value, return_token); }
	override HRESULT remove_ManipulationStarted(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationStarted(token); }
	override HRESULT add_ManipulationDelta(Windows.UI.Xaml.Input.ManipulationDeltaEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationDelta(value, return_token); }
	override HRESULT remove_ManipulationDelta(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationDelta(token); }
	override HRESULT add_ManipulationCompleted(Windows.UI.Xaml.Input.ManipulationCompletedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationCompleted(value, return_token); }
	override HRESULT remove_ManipulationCompleted(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationCompleted(token); }
	override HRESULT abi_Measure(Windows.Foundation.Size availableSize) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_Measure(availableSize); }
	override HRESULT abi_Arrange(Windows.Foundation.Rect finalRect) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_Arrange(finalRect); }
	override HRESULT abi_CapturePointer(Windows.UI.Xaml.Input.Pointer value, bool* return_returnValue) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_CapturePointer(value, return_returnValue); }
	override HRESULT abi_ReleasePointerCapture(Windows.UI.Xaml.Input.Pointer value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_ReleasePointerCapture(value); }
	override HRESULT abi_ReleasePointerCaptures() { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_ReleasePointerCaptures(); }
	override HRESULT abi_AddHandler(Windows.UI.Xaml.RoutedEvent routedEvent, IInspectable handler, bool handledEventsToo) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_AddHandler(routedEvent, handler, handledEventsToo); }
	override HRESULT abi_RemoveHandler(Windows.UI.Xaml.RoutedEvent routedEvent, IInspectable handler) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_RemoveHandler(routedEvent, handler); }
	override HRESULT abi_TransformToVisual(Windows.UI.Xaml.UIElement visual, Windows.UI.Xaml.Media.GeneralTransform* return_returnValue) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_TransformToVisual(visual, return_returnValue); }
	override HRESULT abi_InvalidateMeasure() { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_InvalidateMeasure(); }
	override HRESULT abi_InvalidateArrange() { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_InvalidateArrange(); }
	override HRESULT abi_UpdateLayout() { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_UpdateLayout(); }

	override HRESULT abi_OnCreateAutomationPeer(Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue) { this.OnCreateAutomationPeer(return_returnValue); return S_OK; }
	void OnCreateAutomationPeer(Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IUIElementOverrides)m_inner.asInterface(uuid("608d2f1d-7858-4aeb-89e4-b54e2c7ed3d3"))).abi_OnCreateAutomationPeer(return_returnValue)); }
	override HRESULT abi_OnDisconnectVisualChildren() { this.OnDisconnectVisualChildren(); return S_OK; }
	void OnDisconnectVisualChildren() { Debug.OK((cast(Windows.UI.Xaml.IUIElementOverrides)m_inner.asInterface(uuid("608d2f1d-7858-4aeb-89e4-b54e2c7ed3d3"))).abi_OnDisconnectVisualChildren()); }
	override HRESULT abi_FindSubElementsForTouchTargeting(Windows.Foundation.Point point, Windows.Foundation.Rect boundingRect, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point))* return_returnValue) { this.FindSubElementsForTouchTargeting(point, boundingRect, return_returnValue); return S_OK; }
	void FindSubElementsForTouchTargeting(Windows.Foundation.Point point, Windows.Foundation.Rect boundingRect, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point))* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IUIElementOverrides)m_inner.asInterface(uuid("608d2f1d-7858-4aeb-89e4-b54e2c7ed3d3"))).abi_FindSubElementsForTouchTargeting(point, boundingRect, return_returnValue)); }

	override HRESULT get_CompositeMode(Windows.UI.Xaml.Media.ElementCompositeMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement2)m_inner.asInterface(uuid("676d0bf9-b66c-41d6-ba50-58cf87f201d1"))).get_CompositeMode(return_value); }
	override HRESULT set_CompositeMode(Windows.UI.Xaml.Media.ElementCompositeMode value) { return (cast(Windows.UI.Xaml.IUIElement2)m_inner.asInterface(uuid("676d0bf9-b66c-41d6-ba50-58cf87f201d1"))).set_CompositeMode(value); }
	override HRESULT abi_CancelDirectManipulations(bool* return_returnValue) { return (cast(Windows.UI.Xaml.IUIElement2)m_inner.asInterface(uuid("676d0bf9-b66c-41d6-ba50-58cf87f201d1"))).abi_CancelDirectManipulations(return_returnValue); }

	override HRESULT get_Transform3D(Windows.UI.Xaml.Media.Media3D.Transform3D* return_value) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).get_Transform3D(return_value); }
	override HRESULT set_Transform3D(Windows.UI.Xaml.Media.Media3D.Transform3D value) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).set_Transform3D(value); }
	override HRESULT get_CanDrag(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).get_CanDrag(return_value); }
	override HRESULT set_CanDrag(bool value) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).set_CanDrag(value); }
	override HRESULT add_DragStarting(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.DragStartingEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).add_DragStarting(value, return_token); }
	override HRESULT remove_DragStarting(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).remove_DragStarting(token); }
	override HRESULT add_DropCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.DropCompletedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).add_DropCompleted(value, return_token); }
	override HRESULT remove_DropCompleted(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).remove_DropCompleted(token); }
	override HRESULT abi_StartDragAsync(Windows.UI.Input.PointerPoint pointerPoint, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)* return_returnValue) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).abi_StartDragAsync(pointerPoint, return_returnValue); }

	override HRESULT get_ContextFlyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_ContextFlyout(return_value); }
	override HRESULT set_ContextFlyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_ContextFlyout(value); }
	override HRESULT get_ExitDisplayModeOnAccessKeyInvoked(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_ExitDisplayModeOnAccessKeyInvoked(return_value); }
	override HRESULT set_ExitDisplayModeOnAccessKeyInvoked(bool value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_ExitDisplayModeOnAccessKeyInvoked(value); }
	override HRESULT get_IsAccessKeyScope(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_IsAccessKeyScope(return_value); }
	override HRESULT set_IsAccessKeyScope(bool value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_IsAccessKeyScope(value); }
	override HRESULT get_AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_AccessKeyScopeOwner(return_value); }
	override HRESULT set_AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_AccessKeyScopeOwner(value); }
	override HRESULT get_AccessKey(HSTRING* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_AccessKey(return_value); }
	override HRESULT set_AccessKey(HSTRING value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_AccessKey(value); }
	override HRESULT add_ContextRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.ContextRequestedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_ContextRequested(value, return_token); }
	override HRESULT remove_ContextRequested(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_ContextRequested(token); }
	override HRESULT add_ContextCanceled(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.RoutedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_ContextCanceled(value, return_token); }
	override HRESULT remove_ContextCanceled(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_ContextCanceled(token); }
	override HRESULT add_AccessKeyDisplayRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyDisplayRequestedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_AccessKeyDisplayRequested(value, return_token); }
	override HRESULT remove_AccessKeyDisplayRequested(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_AccessKeyDisplayRequested(token); }
	override HRESULT add_AccessKeyDisplayDismissed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyDisplayDismissedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_AccessKeyDisplayDismissed(value, return_token); }
	override HRESULT remove_AccessKeyDisplayDismissed(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_AccessKeyDisplayDismissed(token); }
	override HRESULT add_AccessKeyInvoked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyInvokedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_AccessKeyInvoked(value, return_token); }
	override HRESULT remove_AccessKeyInvoked(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_AccessKeyInvoked(token); }

	override HRESULT get_Lights(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.XamlLight)* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_Lights(return_value); }
	override HRESULT get_KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_KeyTipPlacementMode(return_value); }
	override HRESULT set_KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_KeyTipPlacementMode(value); }
	override HRESULT get_KeyTipHorizontalOffset(double* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_KeyTipHorizontalOffset(return_value); }
	override HRESULT set_KeyTipHorizontalOffset(double value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_KeyTipHorizontalOffset(value); }
	override HRESULT get_KeyTipVerticalOffset(double* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_KeyTipVerticalOffset(return_value); }
	override HRESULT set_KeyTipVerticalOffset(double value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_KeyTipVerticalOffset(value); }
	override HRESULT get_XYFocusKeyboardNavigation(Windows.UI.Xaml.Input.XYFocusKeyboardNavigationMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusKeyboardNavigation(return_value); }
	override HRESULT set_XYFocusKeyboardNavigation(Windows.UI.Xaml.Input.XYFocusKeyboardNavigationMode value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusKeyboardNavigation(value); }
	override HRESULT get_XYFocusUpNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusUpNavigationStrategy(return_value); }
	override HRESULT set_XYFocusUpNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusUpNavigationStrategy(value); }
	override HRESULT get_XYFocusDownNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusDownNavigationStrategy(return_value); }
	override HRESULT set_XYFocusDownNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusDownNavigationStrategy(value); }
	override HRESULT get_XYFocusLeftNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusLeftNavigationStrategy(return_value); }
	override HRESULT set_XYFocusLeftNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusLeftNavigationStrategy(value); }
	override HRESULT get_XYFocusRightNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusRightNavigationStrategy(return_value); }
	override HRESULT set_XYFocusRightNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusRightNavigationStrategy(value); }
	override HRESULT get_HighContrastAdjustment(Windows.UI.Xaml.ElementHighContrastAdjustment* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_HighContrastAdjustment(return_value); }
	override HRESULT set_HighContrastAdjustment(Windows.UI.Xaml.ElementHighContrastAdjustment value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_HighContrastAdjustment(value); }
	override HRESULT get_TabFocusNavigation(Windows.UI.Xaml.Input.KeyboardNavigationMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_TabFocusNavigation(return_value); }
	override HRESULT set_TabFocusNavigation(Windows.UI.Xaml.Input.KeyboardNavigationMode value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_TabFocusNavigation(value); }
	override HRESULT add_GettingFocus(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.GettingFocusEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).add_GettingFocus(value, return_token); }
	override HRESULT remove_GettingFocus(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).remove_GettingFocus(token); }
	override HRESULT add_LosingFocus(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.LosingFocusEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).add_LosingFocus(value, return_token); }
	override HRESULT remove_LosingFocus(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).remove_LosingFocus(token); }
	override HRESULT add_NoFocusCandidateFound(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.NoFocusCandidateFoundEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).add_NoFocusCandidateFound(value, return_token); }
	override HRESULT remove_NoFocusCandidateFound(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).remove_NoFocusCandidateFound(token); }
	override HRESULT abi_StartBringIntoView() { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).abi_StartBringIntoView(); }
	override HRESULT abi_StartBringIntoViewWithOptions(Windows.UI.Xaml.BringIntoViewOptions options) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).abi_StartBringIntoViewWithOptions(options); }

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