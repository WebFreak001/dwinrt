module Windows.ApplicationModel.AppExtensions;

import dwinrt;

@uuid("8450902c-15ed-4faf-93ea-2237bbf8cbd6")
@WinrtFactory("Windows.ApplicationModel.AppExtensions.AppExtension")
interface IAppExtension : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
	HRESULT get_AppInfo(Windows.ApplicationModel.AppInfo* return_value);
	HRESULT abi_GetExtensionPropertiesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IPropertySet)* return_operation);
	HRESULT abi_GetPublicFolderAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder)* return_operation);
}

@uuid("97872032-8426-4ad1-9084-92e88c2da200")
@WinrtFactory("Windows.ApplicationModel.AppExtensions.AppExtensionCatalog")
interface IAppExtensionCatalog : IInspectable
{
extern(Windows):
	HRESULT abi_FindAllAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppExtensions.AppExtension))* return_operation);
	HRESULT abi_RequestRemovePackageAsync(HSTRING packageFullName, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT add_PackageInstalled(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageInstalledEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PackageInstalled(EventRegistrationToken token);
	HRESULT add_PackageUpdating(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageUpdatingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PackageUpdating(EventRegistrationToken token);
	HRESULT add_PackageUpdated(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageUpdatedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PackageUpdated(EventRegistrationToken token);
	HRESULT add_PackageUninstalling(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageUninstallingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PackageUninstalling(EventRegistrationToken token);
	HRESULT add_PackageStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageStatusChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PackageStatusChanged(EventRegistrationToken token);
}

@uuid("3c36668a-5f18-4f0b-9ce5-cab61d196f11")
@WinrtFactory("Windows.ApplicationModel.AppExtensions.AppExtensionCatalog")
interface IAppExtensionCatalogStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Open(HSTRING appExtensionName, Windows.ApplicationModel.AppExtensions.AppExtensionCatalog* return_value);
}

@uuid("39e59234-3351-4a8d-9745-e7d3dd45bc48")
@WinrtFactory("Windows.ApplicationModel.AppExtensions.AppExtensionPackageInstalledEventArgs")
interface IAppExtensionPackageInstalledEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_AppExtensionName(HSTRING* return_value);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
	HRESULT get_Extensions(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppExtensions.AppExtension)* return_values);
}

@uuid("1ce17433-1153-44fd-87b1-8ae1050303df")
@WinrtFactory("Windows.ApplicationModel.AppExtensions.AppExtensionPackageStatusChangedEventArgs")
interface IAppExtensionPackageStatusChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_AppExtensionName(HSTRING* return_value);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
}

@uuid("60f160c5-171e-40ff-ae98-ab2c20dd4d75")
@WinrtFactory("Windows.ApplicationModel.AppExtensions.AppExtensionPackageUninstallingEventArgs")
interface IAppExtensionPackageUninstallingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_AppExtensionName(HSTRING* return_value);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
}

@uuid("3a83c43f-797e-44b5-ba24-a4c8b5a543d7")
@WinrtFactory("Windows.ApplicationModel.AppExtensions.AppExtensionPackageUpdatedEventArgs")
interface IAppExtensionPackageUpdatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_AppExtensionName(HSTRING* return_value);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
	HRESULT get_Extensions(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppExtensions.AppExtension)* return_values);
}

@uuid("7ed59329-1a65-4800-a700-b321009e306a")
@WinrtFactory("Windows.ApplicationModel.AppExtensions.AppExtensionPackageUpdatingEventArgs")
interface IAppExtensionPackageUpdatingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_AppExtensionName(HSTRING* return_value);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
}

interface AppExtension : Windows.ApplicationModel.AppExtensions.IAppExtension
{
extern(Windows):
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtension)this.asInterface(uuid("8450902c-15ed-4faf-93ea-2237bbf8cbd6"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtension)this.asInterface(uuid("8450902c-15ed-4faf-93ea-2237bbf8cbd6"))).get_DisplayName(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtension)this.asInterface(uuid("8450902c-15ed-4faf-93ea-2237bbf8cbd6"))).get_Description(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.ApplicationModel.Package Package()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtension)this.asInterface(uuid("8450902c-15ed-4faf-93ea-2237bbf8cbd6"))).get_Package(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.AppInfo AppInfo()
	{
		Windows.ApplicationModel.AppInfo _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtension)this.asInterface(uuid("8450902c-15ed-4faf-93ea-2237bbf8cbd6"))).get_AppInfo(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IPropertySet) GetExtensionPropertiesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IPropertySet) _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtension)this.asInterface(uuid("8450902c-15ed-4faf-93ea-2237bbf8cbd6"))).abi_GetExtensionPropertiesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) GetPublicFolderAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFolder) _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtension)this.asInterface(uuid("8450902c-15ed-4faf-93ea-2237bbf8cbd6"))).abi_GetPublicFolderAsync(&_ret));
		return _ret;
	}
}

interface AppExtensionCatalog : Windows.ApplicationModel.AppExtensions.IAppExtensionCatalog
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppExtensions.AppExtension)) FindAllAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppExtensions.AppExtension)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionCatalog)this.asInterface(uuid("97872032-8426-4ad1-9084-92e88c2da200"))).abi_FindAllAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestRemovePackageAsync(wstring packageFullName)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionCatalog)this.asInterface(uuid("97872032-8426-4ad1-9084-92e88c2da200"))).abi_RequestRemovePackageAsync(hstring(packageFullName).handle, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnPackageInstalled(void delegate(Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageInstalledEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionCatalog)this.asInterface(uuid("97872032-8426-4ad1-9084-92e88c2da200"))).add_PackageInstalled(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageInstalledEventArgs), Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageInstalledEventArgs)(fn), &tok));
		return tok;
	}
	final void removePackageInstalled(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionCatalog)this.asInterface(uuid("97872032-8426-4ad1-9084-92e88c2da200"))).remove_PackageInstalled(token));
	}
	final EventRegistrationToken OnPackageUpdating(void delegate(Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageUpdatingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionCatalog)this.asInterface(uuid("97872032-8426-4ad1-9084-92e88c2da200"))).add_PackageUpdating(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageUpdatingEventArgs), Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageUpdatingEventArgs)(fn), &tok));
		return tok;
	}
	final void removePackageUpdating(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionCatalog)this.asInterface(uuid("97872032-8426-4ad1-9084-92e88c2da200"))).remove_PackageUpdating(token));
	}
	final EventRegistrationToken OnPackageUpdated(void delegate(Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageUpdatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionCatalog)this.asInterface(uuid("97872032-8426-4ad1-9084-92e88c2da200"))).add_PackageUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageUpdatedEventArgs), Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageUpdatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePackageUpdated(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionCatalog)this.asInterface(uuid("97872032-8426-4ad1-9084-92e88c2da200"))).remove_PackageUpdated(token));
	}
	final EventRegistrationToken OnPackageUninstalling(void delegate(Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageUninstallingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionCatalog)this.asInterface(uuid("97872032-8426-4ad1-9084-92e88c2da200"))).add_PackageUninstalling(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageUninstallingEventArgs), Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageUninstallingEventArgs)(fn), &tok));
		return tok;
	}
	final void removePackageUninstalling(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionCatalog)this.asInterface(uuid("97872032-8426-4ad1-9084-92e88c2da200"))).remove_PackageUninstalling(token));
	}
	final EventRegistrationToken OnPackageStatusChanged(void delegate(Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageStatusChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionCatalog)this.asInterface(uuid("97872032-8426-4ad1-9084-92e88c2da200"))).add_PackageStatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageStatusChangedEventArgs), Windows.ApplicationModel.AppExtensions.AppExtensionCatalog, Windows.ApplicationModel.AppExtensions.AppExtensionPackageStatusChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePackageStatusChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionCatalog)this.asInterface(uuid("97872032-8426-4ad1-9084-92e88c2da200"))).remove_PackageStatusChanged(token));
	}

	private static Windows.ApplicationModel.AppExtensions.IAppExtensionCatalogStatics _staticInstance;
	public static Windows.ApplicationModel.AppExtensions.IAppExtensionCatalogStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.AppExtensions.IAppExtensionCatalogStatics);
		return _staticInstance;
	}
	static Windows.ApplicationModel.AppExtensions.AppExtensionCatalog Open(wstring appExtensionName)
	{
		Windows.ApplicationModel.AppExtensions.AppExtensionCatalog _ret;
		Debug.OK(staticInstance.abi_Open(hstring(appExtensionName).handle, &_ret));
		return _ret;
	}
}

interface AppExtensionPackageInstalledEventArgs : Windows.ApplicationModel.AppExtensions.IAppExtensionPackageInstalledEventArgs
{
extern(Windows):
	final wstring AppExtensionName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionPackageInstalledEventArgs)this.asInterface(uuid("39e59234-3351-4a8d-9745-e7d3dd45bc48"))).get_AppExtensionName(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.ApplicationModel.Package Package()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionPackageInstalledEventArgs)this.asInterface(uuid("39e59234-3351-4a8d-9745-e7d3dd45bc48"))).get_Package(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppExtensions.AppExtension) Extensions()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppExtensions.AppExtension) _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionPackageInstalledEventArgs)this.asInterface(uuid("39e59234-3351-4a8d-9745-e7d3dd45bc48"))).get_Extensions(&_ret));
		return _ret;
	}
}

interface AppExtensionPackageStatusChangedEventArgs : Windows.ApplicationModel.AppExtensions.IAppExtensionPackageStatusChangedEventArgs
{
extern(Windows):
	final wstring AppExtensionName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionPackageStatusChangedEventArgs)this.asInterface(uuid("1ce17433-1153-44fd-87b1-8ae1050303df"))).get_AppExtensionName(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.ApplicationModel.Package Package()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionPackageStatusChangedEventArgs)this.asInterface(uuid("1ce17433-1153-44fd-87b1-8ae1050303df"))).get_Package(&_ret));
		return _ret;
	}
}

interface AppExtensionPackageUninstallingEventArgs : Windows.ApplicationModel.AppExtensions.IAppExtensionPackageUninstallingEventArgs
{
extern(Windows):
	final wstring AppExtensionName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionPackageUninstallingEventArgs)this.asInterface(uuid("60f160c5-171e-40ff-ae98-ab2c20dd4d75"))).get_AppExtensionName(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.ApplicationModel.Package Package()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionPackageUninstallingEventArgs)this.asInterface(uuid("60f160c5-171e-40ff-ae98-ab2c20dd4d75"))).get_Package(&_ret));
		return _ret;
	}
}

interface AppExtensionPackageUpdatedEventArgs : Windows.ApplicationModel.AppExtensions.IAppExtensionPackageUpdatedEventArgs
{
extern(Windows):
	final wstring AppExtensionName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionPackageUpdatedEventArgs)this.asInterface(uuid("3a83c43f-797e-44b5-ba24-a4c8b5a543d7"))).get_AppExtensionName(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.ApplicationModel.Package Package()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionPackageUpdatedEventArgs)this.asInterface(uuid("3a83c43f-797e-44b5-ba24-a4c8b5a543d7"))).get_Package(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppExtensions.AppExtension) Extensions()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppExtensions.AppExtension) _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionPackageUpdatedEventArgs)this.asInterface(uuid("3a83c43f-797e-44b5-ba24-a4c8b5a543d7"))).get_Extensions(&_ret));
		return _ret;
	}
}

interface AppExtensionPackageUpdatingEventArgs : Windows.ApplicationModel.AppExtensions.IAppExtensionPackageUpdatingEventArgs
{
extern(Windows):
	final wstring AppExtensionName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionPackageUpdatingEventArgs)this.asInterface(uuid("7ed59329-1a65-4800-a700-b321009e306a"))).get_AppExtensionName(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.ApplicationModel.Package Package()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.ApplicationModel.AppExtensions.IAppExtensionPackageUpdatingEventArgs)this.asInterface(uuid("7ed59329-1a65-4800-a700-b321009e306a"))).get_Package(&_ret));
		return _ret;
	}
}