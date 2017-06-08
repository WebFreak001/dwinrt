module Windows.ApplicationModel.AppExtensions;

import dwinrt;

@uuid("8450902c-15ed-4faf-93ea-2237bbf8cbd6")
@WinrtFactory("Windows.ApplicationModel.AppExtensions.AppExtension")
interface IAppExtension : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Open(HSTRING appExtensionName, Windows.ApplicationModel.AppExtensions.AppExtensionCatalog* return_value);
}

@uuid("39e59234-3351-4a8d-9745-e7d3dd45bc48")
@WinrtFactory("Windows.ApplicationModel.AppExtensions.AppExtensionPackageInstalledEventArgs")
interface IAppExtensionPackageInstalledEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AppExtensionName(HSTRING* return_value);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
	HRESULT get_Extensions(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppExtensions.AppExtension)* return_values);
}

@uuid("1ce17433-1153-44fd-87b1-8ae1050303df")
@WinrtFactory("Windows.ApplicationModel.AppExtensions.AppExtensionPackageStatusChangedEventArgs")
interface IAppExtensionPackageStatusChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AppExtensionName(HSTRING* return_value);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
}

@uuid("60f160c5-171e-40ff-ae98-ab2c20dd4d75")
@WinrtFactory("Windows.ApplicationModel.AppExtensions.AppExtensionPackageUninstallingEventArgs")
interface IAppExtensionPackageUninstallingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AppExtensionName(HSTRING* return_value);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
}

@uuid("3a83c43f-797e-44b5-ba24-a4c8b5a543d7")
@WinrtFactory("Windows.ApplicationModel.AppExtensions.AppExtensionPackageUpdatedEventArgs")
interface IAppExtensionPackageUpdatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AppExtensionName(HSTRING* return_value);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
	HRESULT get_Extensions(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppExtensions.AppExtension)* return_values);
}

@uuid("7ed59329-1a65-4800-a700-b321009e306a")
@WinrtFactory("Windows.ApplicationModel.AppExtensions.AppExtensionPackageUpdatingEventArgs")
interface IAppExtensionPackageUpdatingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AppExtensionName(HSTRING* return_value);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
}

interface AppExtension : Windows.ApplicationModel.AppExtensions.IAppExtension
{
}

interface AppExtensionCatalog : Windows.ApplicationModel.AppExtensions.IAppExtensionCatalog
{
}

interface AppExtensionPackageInstalledEventArgs : Windows.ApplicationModel.AppExtensions.IAppExtensionPackageInstalledEventArgs
{
}

interface AppExtensionPackageStatusChangedEventArgs : Windows.ApplicationModel.AppExtensions.IAppExtensionPackageStatusChangedEventArgs
{
}

interface AppExtensionPackageUninstallingEventArgs : Windows.ApplicationModel.AppExtensions.IAppExtensionPackageUninstallingEventArgs
{
}

interface AppExtensionPackageUpdatedEventArgs : Windows.ApplicationModel.AppExtensions.IAppExtensionPackageUpdatedEventArgs
{
}

interface AppExtensionPackageUpdatingEventArgs : Windows.ApplicationModel.AppExtensions.IAppExtensionPackageUpdatingEventArgs
{
}