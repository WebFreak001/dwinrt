module Windows.ApplicationModel.Resources;

import dwinrt;

@uuid("08524908-16ef-45ad-a602-293637d7e61a")
@WinrtFactory("Windows.ApplicationModel.Resources.ResourceLoader")
interface IResourceLoader : IInspectable
{
extern(Windows):
	HRESULT abi_GetString(HSTRING resource, HSTRING* return_value);
}

@uuid("10eb6ec6-8138-48c1-bc65-e1f14207367c")
@WinrtFactory("Windows.ApplicationModel.Resources.ResourceLoader")
interface IResourceLoader2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetStringForUri(Windows.Foundation.Uri uri, HSTRING* return_value);
}

@uuid("c33a3603-69dc-4285-a077-d5c0e47ccbe8")
@WinrtFactory("Windows.ApplicationModel.Resources.ResourceLoader")
interface IResourceLoaderFactory : IInspectable
{
extern(Windows):
	deprecated("ResourceLoader may be altered or unavailable for releases after Windows 8.1. Instead, use GetForCurrentView.")
	HRESULT abi_CreateResourceLoaderByName(HSTRING name, Windows.ApplicationModel.Resources.ResourceLoader* return_loader);
}

@uuid("bf777ce1-19c8-49c2-953c-47e9227b334e")
@WinrtFactory("Windows.ApplicationModel.Resources.ResourceLoader")
interface IResourceLoaderStatics : IInspectable
{
extern(Windows):
	deprecated("GetStringForReference may be altered or unavailable for releases after Windows Phone 'OSVersion' (TBD). Instead, use GetStringForUri.")
	HRESULT abi_GetStringForReference(Windows.Foundation.Uri uri, HSTRING* return_value);
}

@uuid("0cc04141-6466-4989-9494-0b82dfc53f1f")
@WinrtFactory("Windows.ApplicationModel.Resources.ResourceLoader")
interface IResourceLoaderStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.ApplicationModel.Resources.ResourceLoader* return_loader);
	HRESULT abi_GetForCurrentViewWithName(HSTRING name, Windows.ApplicationModel.Resources.ResourceLoader* return_loader);
	HRESULT abi_GetForViewIndependentUse(Windows.ApplicationModel.Resources.ResourceLoader* return_loader);
	HRESULT abi_GetForViewIndependentUseWithName(HSTRING name, Windows.ApplicationModel.Resources.ResourceLoader* return_loader);
}

interface ResourceLoader : Windows.ApplicationModel.Resources.IResourceLoader, Windows.ApplicationModel.Resources.IResourceLoader2
{
extern(Windows):
	final HSTRING GetString(HSTRING resource)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Resources.IResourceLoader)this.asInterface(uuid("08524908-16ef-45ad-a602-293637d7e61a"))).abi_GetString(resource, &_ret));
		return _ret;
	}
	final HSTRING GetStringForUri(Windows.Foundation.Uri uri)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Resources.IResourceLoader2)this.asInterface(uuid("10eb6ec6-8138-48c1-bc65-e1f14207367c"))).abi_GetStringForUri(uri, &_ret));
		return _ret;
	}

	private static Windows.ApplicationModel.Resources.IResourceLoaderStatics _staticInstance;
	public static Windows.ApplicationModel.Resources.IResourceLoaderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Resources.IResourceLoaderStatics);
		return _staticInstance;
	}
	deprecated("GetStringForReference may be altered or unavailable for releases after Windows Phone 'OSVersion' (TBD). Instead, use GetStringForUri.")
	static HSTRING GetStringForReference(Windows.Foundation.Uri uri)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetStringForReference(uri, &_ret));
		return _ret;
	}
	static ResourceLoader New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ResourceLoader).abi_ActivateInstance(&ret));
		return cast(ResourceLoader) ret;
	}
	deprecated("ResourceLoader may be altered or unavailable for releases after Windows 8.1. Instead, use GetForCurrentView.")
	static Windows.ApplicationModel.Resources.ResourceLoader New(HSTRING name)
	{
		auto factory = factory!(Windows.ApplicationModel.Resources.IResourceLoaderFactory);
		Windows.ApplicationModel.Resources.ResourceLoader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Resources.IResourceLoaderFactory)factory.asInterface(uuid("c33a3603-69dc-4285-a077-d5c0e47ccbe8"))).abi_CreateResourceLoaderByName(name, &_ret));
		return _ret;
	}
}