module Windows.UI.Xaml.Media.Media3D;

import dwinrt;

struct Matrix3D
{
	double M11;
	double M12;
	double M13;
	double M14;
	double M21;
	double M22;
	double M23;
	double M24;
	double M31;
	double M32;
	double M33;
	double M34;
	double OffsetX;
	double OffsetY;
	double OffsetZ;
	double M44;
}

@uuid("8977cb01-af8d-4af5-b084-c08eb9704abe")
@WinrtFactory("Windows.UI.Xaml.Media.Media3D.CompositeTransform3D")
interface ICompositeTransform3D : IInspectable
{
extern(Windows):
	HRESULT get_CenterX(double* return_value);
	HRESULT set_CenterX(double value);
	HRESULT get_CenterY(double* return_value);
	HRESULT set_CenterY(double value);
	HRESULT get_CenterZ(double* return_value);
	HRESULT set_CenterZ(double value);
	HRESULT get_RotationX(double* return_value);
	HRESULT set_RotationX(double value);
	HRESULT get_RotationY(double* return_value);
	HRESULT set_RotationY(double value);
	HRESULT get_RotationZ(double* return_value);
	HRESULT set_RotationZ(double value);
	HRESULT get_ScaleX(double* return_value);
	HRESULT set_ScaleX(double value);
	HRESULT get_ScaleY(double* return_value);
	HRESULT set_ScaleY(double value);
	HRESULT get_ScaleZ(double* return_value);
	HRESULT set_ScaleZ(double value);
	HRESULT get_TranslateX(double* return_value);
	HRESULT set_TranslateX(double value);
	HRESULT get_TranslateY(double* return_value);
	HRESULT set_TranslateY(double value);
	HRESULT get_TranslateZ(double* return_value);
	HRESULT set_TranslateZ(double value);
}

@uuid("ddbf4d67-2a25-48f3-9808-c51ec3d55bec")
@WinrtFactory("Windows.UI.Xaml.Media.Media3D.CompositeTransform3D")
interface ICompositeTransform3DStatics : IInspectable
{
extern(Windows):
	HRESULT get_CenterXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CenterYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CenterZProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RotationXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RotationYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RotationZProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ScaleXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ScaleYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ScaleZProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TranslateXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TranslateYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TranslateZProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e48c10ef-9927-4c9b-8213-07775512ba04")
@WinrtFactory("Windows.UI.Xaml.Media.Media3D.Matrix3DHelper")
interface IMatrix3DHelper : IInspectable
{
}

@uuid("9264545e-e158-4e74-8899-689160bd2f8c")
@WinrtFactory("Windows.UI.Xaml.Media.Media3D.Matrix3DHelper")
interface IMatrix3DHelperStatics : IInspectable
{
extern(Windows):
	HRESULT get_Identity(Windows.UI.Xaml.Media.Media3D.Matrix3D* return_value);
	HRESULT abi_Multiply(Windows.UI.Xaml.Media.Media3D.Matrix3D matrix1, Windows.UI.Xaml.Media.Media3D.Matrix3D matrix2, Windows.UI.Xaml.Media.Media3D.Matrix3D* return_returnValue);
	HRESULT abi_FromElements(double m11, double m12, double m13, double m14, double m21, double m22, double m23, double m24, double m31, double m32, double m33, double m34, double offsetX, double offsetY, double offsetZ, double m44, Windows.UI.Xaml.Media.Media3D.Matrix3D* return_returnValue);
	HRESULT abi_GetHasInverse(Windows.UI.Xaml.Media.Media3D.Matrix3D target, bool* return_value);
	HRESULT abi_GetIsIdentity(Windows.UI.Xaml.Media.Media3D.Matrix3D target, bool* return_value);
	HRESULT abi_Invert(Windows.UI.Xaml.Media.Media3D.Matrix3D target, Windows.UI.Xaml.Media.Media3D.Matrix3D* return_returnValue);
}

@uuid("9a7b532a-30f9-40a1-96c9-c59d87f95ac3")
@WinrtFactory("Windows.UI.Xaml.Media.Media3D.PerspectiveTransform3D")
interface IPerspectiveTransform3D : IInspectable
{
extern(Windows):
	HRESULT get_Depth(double* return_value);
	HRESULT set_Depth(double value);
	HRESULT get_OffsetX(double* return_value);
	HRESULT set_OffsetX(double value);
	HRESULT get_OffsetY(double* return_value);
	HRESULT set_OffsetY(double value);
}

@uuid("8e6f6400-620c-48c7-844d-3f0984da5b17")
@WinrtFactory("Windows.UI.Xaml.Media.Media3D.PerspectiveTransform3D")
interface IPerspectiveTransform3DStatics : IInspectable
{
extern(Windows):
	HRESULT get_DepthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OffsetXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OffsetYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ae3ed43a-a9fc-4c31-86cd-56d9ca251a69")
@WinrtFactory("Windows.UI.Xaml.Media.Media3D.Transform3D")
interface ITransform3D : IInspectable
{
}

@uuid("052c1f7a-8d73-48cd-bbb8-d00434caae5d")
@WinrtFactory("Windows.UI.Xaml.Media.Media3D.Transform3D")
interface ITransform3DFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Media3D.Transform3D* return_instance);
}

interface CompositeTransform3D : Windows.UI.Xaml.Media.Media3D.Transform3D, Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D
{
extern(Windows):
	final double CenterX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).get_CenterX(&_ret));
		return _ret;
	}
	final void CenterX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).set_CenterX(value));
	}
	final double CenterY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).get_CenterY(&_ret));
		return _ret;
	}
	final void CenterY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).set_CenterY(value));
	}
	final double CenterZ()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).get_CenterZ(&_ret));
		return _ret;
	}
	final void CenterZ(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).set_CenterZ(value));
	}
	final double RotationX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).get_RotationX(&_ret));
		return _ret;
	}
	final void RotationX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).set_RotationX(value));
	}
	final double RotationY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).get_RotationY(&_ret));
		return _ret;
	}
	final void RotationY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).set_RotationY(value));
	}
	final double RotationZ()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).get_RotationZ(&_ret));
		return _ret;
	}
	final void RotationZ(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).set_RotationZ(value));
	}
	final double ScaleX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).get_ScaleX(&_ret));
		return _ret;
	}
	final void ScaleX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).set_ScaleX(value));
	}
	final double ScaleY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).get_ScaleY(&_ret));
		return _ret;
	}
	final void ScaleY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).set_ScaleY(value));
	}
	final double ScaleZ()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).get_ScaleZ(&_ret));
		return _ret;
	}
	final void ScaleZ(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).set_ScaleZ(value));
	}
	final double TranslateX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).get_TranslateX(&_ret));
		return _ret;
	}
	final void TranslateX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).set_TranslateX(value));
	}
	final double TranslateY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).get_TranslateY(&_ret));
		return _ret;
	}
	final void TranslateY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).set_TranslateY(value));
	}
	final double TranslateZ()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).get_TranslateZ(&_ret));
		return _ret;
	}
	final void TranslateZ(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3D)this.asInterface(uuid("8977cb01-af8d-4af5-b084-c08eb9704abe"))).set_TranslateZ(value));
	}

	private static Windows.UI.Xaml.Media.Media3D.ICompositeTransform3DStatics _staticInstance;
	public static Windows.UI.Xaml.Media.Media3D.ICompositeTransform3DStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.Media3D.ICompositeTransform3DStatics);
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
	static Windows.UI.Xaml.DependencyProperty CenterZProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CenterZProperty(&_ret));
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
	static Windows.UI.Xaml.DependencyProperty ScaleZProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ScaleZProperty(&_ret));
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
	static Windows.UI.Xaml.DependencyProperty TranslateZProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_TranslateZProperty(&_ret));
		return _ret;
	}
	static CompositeTransform3D New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(CompositeTransform3D).abi_ActivateInstance(&ret));
		return cast(CompositeTransform3D) ret;
	}
}

interface Matrix3DHelper : Windows.UI.Xaml.Media.Media3D.IMatrix3DHelper
{
	private static Windows.UI.Xaml.Media.Media3D.IMatrix3DHelperStatics _staticInstance;
	public static Windows.UI.Xaml.Media.Media3D.IMatrix3DHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.Media3D.IMatrix3DHelperStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.Media.Media3D.Matrix3D Identity()
	{
		Windows.UI.Xaml.Media.Media3D.Matrix3D _ret;
		Debug.OK(staticInstance.get_Identity(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.Media.Media3D.Matrix3D Multiply(Windows.UI.Xaml.Media.Media3D.Matrix3D matrix1, Windows.UI.Xaml.Media.Media3D.Matrix3D matrix2)
	{
		Windows.UI.Xaml.Media.Media3D.Matrix3D _ret;
		Debug.OK(staticInstance.abi_Multiply(matrix1, matrix2, &_ret));
		return _ret;
	}
	static Windows.UI.Xaml.Media.Media3D.Matrix3D FromElements(double m11, double m12, double m13, double m14, double m21, double m22, double m23, double m24, double m31, double m32, double m33, double m34, double offsetX, double offsetY, double offsetZ, double m44)
	{
		Windows.UI.Xaml.Media.Media3D.Matrix3D _ret;
		Debug.OK(staticInstance.abi_FromElements(m11, m12, m13, m14, m21, m22, m23, m24, m31, m32, m33, m34, offsetX, offsetY, offsetZ, m44, &_ret));
		return _ret;
	}
	static bool GetHasInverse(Windows.UI.Xaml.Media.Media3D.Matrix3D target)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_GetHasInverse(target, &_ret));
		return _ret;
	}
	static bool GetIsIdentity(Windows.UI.Xaml.Media.Media3D.Matrix3D target)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_GetIsIdentity(target, &_ret));
		return _ret;
	}
	static Windows.UI.Xaml.Media.Media3D.Matrix3D Invert(Windows.UI.Xaml.Media.Media3D.Matrix3D target)
	{
		Windows.UI.Xaml.Media.Media3D.Matrix3D _ret;
		Debug.OK(staticInstance.abi_Invert(target, &_ret));
		return _ret;
	}
}

interface PerspectiveTransform3D : Windows.UI.Xaml.Media.Media3D.Transform3D, Windows.UI.Xaml.Media.Media3D.IPerspectiveTransform3D
{
extern(Windows):
	final double Depth()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.IPerspectiveTransform3D)this.asInterface(uuid("9a7b532a-30f9-40a1-96c9-c59d87f95ac3"))).get_Depth(&_ret));
		return _ret;
	}
	final void Depth(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.IPerspectiveTransform3D)this.asInterface(uuid("9a7b532a-30f9-40a1-96c9-c59d87f95ac3"))).set_Depth(value));
	}
	final double OffsetX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.IPerspectiveTransform3D)this.asInterface(uuid("9a7b532a-30f9-40a1-96c9-c59d87f95ac3"))).get_OffsetX(&_ret));
		return _ret;
	}
	final void OffsetX(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.IPerspectiveTransform3D)this.asInterface(uuid("9a7b532a-30f9-40a1-96c9-c59d87f95ac3"))).set_OffsetX(value));
	}
	final double OffsetY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.IPerspectiveTransform3D)this.asInterface(uuid("9a7b532a-30f9-40a1-96c9-c59d87f95ac3"))).get_OffsetY(&_ret));
		return _ret;
	}
	final void OffsetY(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Media.Media3D.IPerspectiveTransform3D)this.asInterface(uuid("9a7b532a-30f9-40a1-96c9-c59d87f95ac3"))).set_OffsetY(value));
	}

	private static Windows.UI.Xaml.Media.Media3D.IPerspectiveTransform3DStatics _staticInstance;
	public static Windows.UI.Xaml.Media.Media3D.IPerspectiveTransform3DStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Media.Media3D.IPerspectiveTransform3DStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty DepthProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DepthProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty OffsetXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_OffsetXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty OffsetYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_OffsetYProperty(&_ret));
		return _ret;
	}
	static PerspectiveTransform3D New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PerspectiveTransform3D).abi_ActivateInstance(&ret));
		return cast(PerspectiveTransform3D) ret;
	}
}

interface Transform3D : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.Media3D.ITransform3D
{
	static Transform3D New()
	{
		IInspectable outer, inner;
		Transform3D ret;
		Debug.OK(activationFactory!(Transform3D, Windows.UI.Xaml.Media.Media3D.ITransform3DFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(Transform3D, Transform3D, Windows.UI.Xaml.Media.Media3D.ITransform3DFactory)
class Transform3DT(Base) : AgileObject!Base, Transform3D
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