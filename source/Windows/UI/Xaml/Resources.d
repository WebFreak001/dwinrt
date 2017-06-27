module Windows.UI.Xaml.Resources;

import dwinrt;

@uuid("511a84ab-4a88-419f-852e-54083b90b078")
@WinrtFactory("Windows.UI.Xaml.Resources.CustomXamlResourceLoader")
interface ICustomXamlResourceLoader : IInspectable
{
}

@uuid("5bfd7e49-7886-44f3-8ed3-6fec0463ed69")
@WinrtFactory("Windows.UI.Xaml.Resources.CustomXamlResourceLoader")
interface ICustomXamlResourceLoaderFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Resources.CustomXamlResourceLoader* return_instance);
}

@uuid("f851e991-af02-46e8-9af8-427b7ebfe9f8")
@WinrtFactory("Windows.UI.Xaml.Resources.CustomXamlResourceLoader")
interface ICustomXamlResourceLoaderOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_GetResource(HSTRING resourceId, HSTRING objectType, HSTRING propertyName, HSTRING propertyType, IInspectable* return_returnValue);
}

@uuid("224ff617-e4dc-4c27-ad32-db93d5d0e5da")
@WinrtFactory("Windows.UI.Xaml.Resources.CustomXamlResourceLoader")
interface ICustomXamlResourceLoaderStatics : IInspectable
{
extern(Windows):
	HRESULT get_Current(Windows.UI.Xaml.Resources.CustomXamlResourceLoader* return_value);
	HRESULT set_Current(Windows.UI.Xaml.Resources.CustomXamlResourceLoader value);
}

interface CustomXamlResourceLoader : Windows.UI.Xaml.Resources.ICustomXamlResourceLoader, Windows.UI.Xaml.Resources.ICustomXamlResourceLoaderOverrides
{
	private static Windows.UI.Xaml.Resources.ICustomXamlResourceLoaderStatics _staticInstance;
	public static Windows.UI.Xaml.Resources.ICustomXamlResourceLoaderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Resources.ICustomXamlResourceLoaderStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.Resources.CustomXamlResourceLoader Current()
	{
		Windows.UI.Xaml.Resources.CustomXamlResourceLoader _ret;
		Debug.OK(staticInstance.get_Current(&_ret));
		return _ret;
	}
	static void Current(Windows.UI.Xaml.Resources.CustomXamlResourceLoader value)
	{
		Debug.OK(staticInstance.set_Current(value));
	}
	static CustomXamlResourceLoader New()
	{
		IInspectable outer, inner;
		CustomXamlResourceLoader ret;
		Debug.OK(activationFactory!(CustomXamlResourceLoader, Windows.UI.Xaml.Resources.ICustomXamlResourceLoaderFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(CustomXamlResourceLoader, CustomXamlResourceLoader, Windows.UI.Xaml.Resources.ICustomXamlResourceLoaderFactory)
class CustomXamlResourceLoaderT(Base) : AgileObject!Base, CustomXamlResourceLoader
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_GetResource(HSTRING resourceId, HSTRING objectType, HSTRING propertyName, HSTRING propertyType, IInspectable* return_returnValue) { this.GetResource(resourceId, objectType, propertyName, propertyType, return_returnValue); return S_OK; }
	void GetResource(HSTRING resourceId, HSTRING objectType, HSTRING propertyName, HSTRING propertyType, IInspectable* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.Resources.ICustomXamlResourceLoaderOverrides)m_inner.asInterface(uuid("f851e991-af02-46e8-9af8-427b7ebfe9f8"))).abi_GetResource(resourceId, objectType, propertyName, propertyType, return_returnValue)); }

	this() {}
	IInspectable m_inner;
}