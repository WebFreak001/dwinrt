module Windows.Management.Deployment;

import dwinrt;

struct DeploymentProgress
{
	Windows.Management.Deployment.DeploymentProgressState state;
	UINT32 percentage;
}

@uuid("2563b9ae-b77d-4c1f-8a7b-20e6ad515ef3")
@WinrtFactory("Windows.Management.Deployment.DeploymentResult")
interface IDeploymentResult : IInspectable
{
extern(Windows):
	HRESULT get_ErrorText(HSTRING* return_value);
	HRESULT get_ActivityId(GUID* return_value);
	HRESULT get_ExtendedErrorCode(HRESULT* return_value);
}

@uuid("fc0e715c-5a01-4bd7-bcf1-381c8c82e04a")
@WinrtFactory("Windows.Management.Deployment.DeploymentResult")
interface IDeploymentResult2 : IInspectable
{
extern(Windows):
	HRESULT get_IsRegistered(bool* return_value);
}

@uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53")
@WinrtFactory("Windows.Management.Deployment.PackageManager")
interface IPackageManager : IInspectable
{
extern(Windows):
	HRESULT abi_AddPackageAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_UpdatePackageAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_RemovePackageAsync(HSTRING packageFullName, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_StagePackageAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_RegisterPackageAsync(Windows.Foundation.Uri manifestUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_FindPackages(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityId(HSTRING userSecurityId, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByNamePublisher(HSTRING packageName, HSTRING packagePublisher, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityIdNamePublisher(HSTRING userSecurityId, HSTRING packageName, HSTRING packagePublisher, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindUsers(HSTRING packageFullName, Windows.Foundation.Collections.IIterable!(Windows.Management.Deployment.PackageUserInformation)* return_users);
	HRESULT abi_SetPackageState(HSTRING packageFullName, Windows.Management.Deployment.PackageState packageState);
	HRESULT abi_FindPackageByPackageFullName(HSTRING packageFullName, Windows.ApplicationModel.Package* return_packageInformation);
	HRESULT abi_CleanupPackageForUserAsync(HSTRING packageName, HSTRING userSecurityId, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_FindPackagesByPackageFamilyName(HSTRING packageFamilyName, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityIdPackageFamilyName(HSTRING userSecurityId, HSTRING packageFamilyName, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackageByUserSecurityIdPackageFullName(HSTRING userSecurityId, HSTRING packageFullName, Windows.ApplicationModel.Package* return_packageInformation);
}

@uuid("f7aad08d-0840-46f2-b5d8-cad47693a095")
@WinrtFactory("Windows.Management.Deployment.PackageManager")
interface IPackageManager2 : IInspectable
{
extern(Windows):
	HRESULT abi_RemovePackageWithOptionsAsync(HSTRING packageFullName, Windows.Management.Deployment.RemovalOptions removalOptions, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_StagePackageWithOptionsAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_RegisterPackageByFullNameAsync(HSTRING mainPackageFullName, Windows.Foundation.Collections.IIterable!(HSTRING) dependencyPackageFullNames, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_FindPackagesWithPackageTypes(Windows.Management.Deployment.PackageTypes packageTypes, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityIdWithPackageTypes(HSTRING userSecurityId, Windows.Management.Deployment.PackageTypes packageTypes, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByNamePublisherWithPackageTypes(HSTRING packageName, HSTRING packagePublisher, Windows.Management.Deployment.PackageTypes packageTypes, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityIdNamePublisherWithPackageTypes(HSTRING userSecurityId, HSTRING packageName, HSTRING packagePublisher, Windows.Management.Deployment.PackageTypes packageTypes, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByPackageFamilyNameWithPackageTypes(HSTRING packageFamilyName, Windows.Management.Deployment.PackageTypes packageTypes, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityIdPackageFamilyNameWithPackageTypes(HSTRING userSecurityId, HSTRING packageFamilyName, Windows.Management.Deployment.PackageTypes packageTypes, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_StageUserDataAsync(HSTRING packageFullName, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
}

@uuid("daad9948-36f1-41a7-9188-bc263e0dcb72")
@WinrtFactory("Windows.Management.Deployment.PackageManager")
interface IPackageManager3 : IInspectable
{
extern(Windows):
	HRESULT abi_AddPackageVolumeAsync(HSTRING packageStorePath, Windows.Foundation.IAsyncOperation!(Windows.Management.Deployment.PackageVolume)* return_packageVolume);
	HRESULT abi_AddPackageToVolumeAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume targetVolume, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_ClearPackageStatus(HSTRING packageFullName, Windows.Management.Deployment.PackageStatus status);
	HRESULT abi_RegisterPackageWithAppDataVolumeAsync(Windows.Foundation.Uri manifestUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume appDataVolume, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_FindPackageVolumeByName(HSTRING volumeName, Windows.Management.Deployment.PackageVolume* return_volume);
	HRESULT abi_FindPackageVolumes(Windows.Foundation.Collections.IIterable!(Windows.Management.Deployment.PackageVolume)* return_volumeCollection);
	HRESULT abi_GetDefaultPackageVolume(Windows.Management.Deployment.PackageVolume* return_volume);
	HRESULT abi_MovePackageToVolumeAsync(HSTRING packageFullName, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume targetVolume, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_RemovePackageVolumeAsync(Windows.Management.Deployment.PackageVolume volume, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_SetDefaultPackageVolume(Windows.Management.Deployment.PackageVolume volume);
	HRESULT abi_SetPackageStatus(HSTRING packageFullName, Windows.Management.Deployment.PackageStatus status);
	HRESULT abi_SetPackageVolumeOfflineAsync(Windows.Management.Deployment.PackageVolume packageVolume, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_SetPackageVolumeOnlineAsync(Windows.Management.Deployment.PackageVolume packageVolume, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_StagePackageToVolumeAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume targetVolume, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_StageUserDataWithOptionsAsync(HSTRING packageFullName, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
}

@uuid("3c719963-bab6-46bf-8ff7-da4719230ae6")
@WinrtFactory("Windows.Management.Deployment.PackageManager")
interface IPackageManager4 : IInspectable
{
extern(Windows):
	HRESULT abi_GetPackageVolumesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Management.Deployment.PackageVolume))* return_operation);
}

@uuid("711f3117-1afd-4313-978c-9bb6e1b864a7")
@WinrtFactory("Windows.Management.Deployment.PackageManager")
interface IPackageManager5 : IInspectable
{
extern(Windows):
	HRESULT abi_AddPackageToVolumeAndOptionalPackagesAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume targetVolume, Windows.Foundation.Collections.IIterable!(HSTRING) optionalPackageFamilyNames, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) externalPackageUris, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_StagePackageToVolumeAndOptionalPackagesAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume targetVolume, Windows.Foundation.Collections.IIterable!(HSTRING) optionalPackageFamilyNames, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) externalPackageUris, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_RegisterPackageByFamilyNameAndOptionalPackagesAsync(HSTRING mainPackageFamilyName, Windows.Foundation.Collections.IIterable!(HSTRING) dependencyPackageFamilyNames, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume appDataVolume, Windows.Foundation.Collections.IIterable!(HSTRING) optionalPackageFamilyNames, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT get_DebugSettings(Windows.Management.Deployment.PackageManagerDebugSettings* return_value);
}

@uuid("1a611683-a988-4fcf-8f0f-ce175898e8eb")
@WinrtFactory("Windows.Management.Deployment.PackageManagerDebugSettings")
interface IPackageManagerDebugSettings : IInspectable
{
extern(Windows):
	HRESULT abi_SetContentGroupStateAsync(Windows.ApplicationModel.Package package_, HSTRING contentGroupName, Windows.ApplicationModel.PackageContentGroupState state, Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_SetContentGroupStateWithPercentageAsync(Windows.ApplicationModel.Package package_, HSTRING contentGroupName, Windows.ApplicationModel.PackageContentGroupState state, double completionPercentage, Windows.Foundation.IAsyncAction* return_action);
}

@uuid("f6383423-fa09-4cbc-9055-15ca275e2e7e")
@WinrtFactory("Windows.Management.Deployment.PackageUserInformation")
interface IPackageUserInformation : IInspectable
{
extern(Windows):
	HRESULT get_UserSecurityId(HSTRING* return_value);
	HRESULT get_InstallState(Windows.Management.Deployment.PackageInstallState* return_value);
}

@uuid("cf2672c3-1a40-4450-9739-2ace2e898853")
@WinrtFactory("Windows.Management.Deployment.PackageVolume")
interface IPackageVolume : IInspectable
{
extern(Windows):
	HRESULT get_IsOffline(bool* return_value);
	HRESULT get_IsSystemVolume(bool* return_value);
	HRESULT get_MountPoint(HSTRING* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_PackageStorePath(HSTRING* return_value);
	HRESULT get_SupportsHardLinks(bool* return_value);
	HRESULT abi_FindPackages(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByNamePublisher(HSTRING packageName, HSTRING packagePublisher, Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByPackageFamilyName(HSTRING packageFamilyName, Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesWithPackageTypes(Windows.Management.Deployment.PackageTypes packageTypes, Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByNamePublisherWithPackagesTypes(Windows.Management.Deployment.PackageTypes packageTypes, HSTRING packageName, HSTRING packagePublisher, Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByPackageFamilyNameWithPackageTypes(Windows.Management.Deployment.PackageTypes packageTypes, HSTRING packageFamilyName, Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackageByPackageFullName(HSTRING packageFullName, Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityId(HSTRING userSecurityId, Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityIdNamePublisher(HSTRING userSecurityId, HSTRING packageName, HSTRING packagePublisher, Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityIdPackageFamilyName(HSTRING userSecurityId, HSTRING packageFamilyName, Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityIdWithPackageTypes(HSTRING userSecurityId, Windows.Management.Deployment.PackageTypes packageTypes, Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityIdNamePublisherWithPackageTypes(HSTRING userSecurityId, Windows.Management.Deployment.PackageTypes packageTypes, HSTRING packageName, HSTRING packagePublisher, Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityIdPackageFamilyNameWithPackagesTypes(HSTRING userSecurityId, Windows.Management.Deployment.PackageTypes packageTypes, HSTRING packageFamilyName, Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackageByUserSecurityIdPackageFullName(HSTRING userSecurityId, HSTRING packageFullName, Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package)* return_packageCollection);
}

@uuid("46abcf2e-9dd4-47a2-ab8c-c6408349bcd8")
@WinrtFactory("Windows.Management.Deployment.PackageVolume")
interface IPackageVolume2 : IInspectable
{
extern(Windows):
	HRESULT get_IsFullTrustPackageSupported(bool* return_value);
	HRESULT get_IsAppxInstallSupported(bool* return_value);
	HRESULT abi_GetAvailableSpaceAsync(Windows.Foundation.IAsyncOperation!(ulong)* return_operation);
}

interface DeploymentResult : Windows.Management.Deployment.IDeploymentResult, Windows.Management.Deployment.IDeploymentResult2
{
extern(Windows):
	final wstring ErrorText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Management.Deployment.IDeploymentResult)this.asInterface(uuid("2563b9ae-b77d-4c1f-8a7b-20e6ad515ef3"))).get_ErrorText(&_ret));
		return hstring(_ret).d_str;
	}
	final GUID ActivityId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Management.Deployment.IDeploymentResult)this.asInterface(uuid("2563b9ae-b77d-4c1f-8a7b-20e6ad515ef3"))).get_ActivityId(&_ret));
		return _ret;
	}
	final HRESULT ExtendedErrorCode()
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.Management.Deployment.IDeploymentResult)this.asInterface(uuid("2563b9ae-b77d-4c1f-8a7b-20e6ad515ef3"))).get_ExtendedErrorCode(&_ret));
		return _ret;
	}
	final bool IsRegistered()
	{
		bool _ret;
		Debug.OK((cast(Windows.Management.Deployment.IDeploymentResult2)this.asInterface(uuid("fc0e715c-5a01-4bd7-bcf1-381c8c82e04a"))).get_IsRegistered(&_ret));
		return _ret;
	}
}

interface PackageManager : Windows.Management.Deployment.IPackageManager, Windows.Management.Deployment.IPackageManager2, Windows.Management.Deployment.IPackageManager3, Windows.Management.Deployment.IPackageManager4, Windows.Management.Deployment.IPackageManager5
{
extern(Windows):
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) AddPackageAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager)this.asInterface(uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53"))).abi_AddPackageAsync(packageUri, dependencyPackageUris, deploymentOptions, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) UpdatePackageAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager)this.asInterface(uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53"))).abi_UpdatePackageAsync(packageUri, dependencyPackageUris, deploymentOptions, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) RemovePackageAsync(wstring packageFullName)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager)this.asInterface(uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53"))).abi_RemovePackageAsync(hstring(packageFullName).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) StagePackageAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager)this.asInterface(uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53"))).abi_StagePackageAsync(packageUri, dependencyPackageUris, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) RegisterPackageAsync(Windows.Foundation.Uri manifestUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager)this.asInterface(uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53"))).abi_RegisterPackageAsync(manifestUri, dependencyPackageUris, deploymentOptions, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) FindPackages()
	{
		Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager)this.asInterface(uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53"))).abi_FindPackages(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) FindPackagesByUserSecurityId(wstring userSecurityId)
	{
		Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager)this.asInterface(uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53"))).abi_FindPackagesByUserSecurityId(hstring(userSecurityId).handle, &_ret));
		return _ret;
	}
	alias FindPackagesForUser = FindPackagesByUserSecurityId;
	final Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) FindPackagesByNamePublisher(wstring packageName, wstring packagePublisher)
	{
		Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager)this.asInterface(uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53"))).abi_FindPackagesByNamePublisher(hstring(packageName).handle, hstring(packagePublisher).handle, &_ret));
		return _ret;
	}
	alias FindPackages = FindPackagesByNamePublisher;
	final Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) FindPackagesByUserSecurityIdNamePublisher(wstring userSecurityId, wstring packageName, wstring packagePublisher)
	{
		Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager)this.asInterface(uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53"))).abi_FindPackagesByUserSecurityIdNamePublisher(hstring(userSecurityId).handle, hstring(packageName).handle, hstring(packagePublisher).handle, &_ret));
		return _ret;
	}
	alias FindPackagesForUser = FindPackagesByUserSecurityIdNamePublisher;
	final Windows.Foundation.Collections.IIterable!(Windows.Management.Deployment.PackageUserInformation) FindUsers(wstring packageFullName)
	{
		Windows.Foundation.Collections.IIterable!(Windows.Management.Deployment.PackageUserInformation) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager)this.asInterface(uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53"))).abi_FindUsers(hstring(packageFullName).handle, &_ret));
		return _ret;
	}
	final void SetPackageState(wstring packageFullName, Windows.Management.Deployment.PackageState packageState)
	{
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager)this.asInterface(uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53"))).abi_SetPackageState(hstring(packageFullName).handle, packageState));
	}
	final Windows.ApplicationModel.Package FindPackageByPackageFullName(wstring packageFullName)
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager)this.asInterface(uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53"))).abi_FindPackageByPackageFullName(hstring(packageFullName).handle, &_ret));
		return _ret;
	}
	alias FindPackage = FindPackageByPackageFullName;
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) CleanupPackageForUserAsync(wstring packageName, wstring userSecurityId)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager)this.asInterface(uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53"))).abi_CleanupPackageForUserAsync(hstring(packageName).handle, hstring(userSecurityId).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) FindPackagesByPackageFamilyName(wstring packageFamilyName)
	{
		Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager)this.asInterface(uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53"))).abi_FindPackagesByPackageFamilyName(hstring(packageFamilyName).handle, &_ret));
		return _ret;
	}
	alias FindPackages = FindPackagesByPackageFamilyName;
	final Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) FindPackagesByUserSecurityIdPackageFamilyName(wstring userSecurityId, wstring packageFamilyName)
	{
		Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager)this.asInterface(uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53"))).abi_FindPackagesByUserSecurityIdPackageFamilyName(hstring(userSecurityId).handle, hstring(packageFamilyName).handle, &_ret));
		return _ret;
	}
	alias FindPackagesForUser = FindPackagesByUserSecurityIdPackageFamilyName;
	final Windows.ApplicationModel.Package FindPackageByUserSecurityIdPackageFullName(wstring userSecurityId, wstring packageFullName)
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager)this.asInterface(uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53"))).abi_FindPackageByUserSecurityIdPackageFullName(hstring(userSecurityId).handle, hstring(packageFullName).handle, &_ret));
		return _ret;
	}
	alias FindPackageForUser = FindPackageByUserSecurityIdPackageFullName;
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) RemovePackageWithOptionsAsync(wstring packageFullName, Windows.Management.Deployment.RemovalOptions removalOptions)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager2)this.asInterface(uuid("f7aad08d-0840-46f2-b5d8-cad47693a095"))).abi_RemovePackageWithOptionsAsync(hstring(packageFullName).handle, removalOptions, &_ret));
		return _ret;
	}
	alias RemovePackageAsync = RemovePackageWithOptionsAsync;
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) StagePackageWithOptionsAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager2)this.asInterface(uuid("f7aad08d-0840-46f2-b5d8-cad47693a095"))).abi_StagePackageWithOptionsAsync(packageUri, dependencyPackageUris, deploymentOptions, &_ret));
		return _ret;
	}
	alias StagePackageAsync = StagePackageWithOptionsAsync;
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) RegisterPackageByFullNameAsync(wstring mainPackageFullName, Windows.Foundation.Collections.IIterable!(HSTRING) dependencyPackageFullNames, Windows.Management.Deployment.DeploymentOptions deploymentOptions)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager2)this.asInterface(uuid("f7aad08d-0840-46f2-b5d8-cad47693a095"))).abi_RegisterPackageByFullNameAsync(hstring(mainPackageFullName).handle, dependencyPackageFullNames, deploymentOptions, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) FindPackagesWithPackageTypes(Windows.Management.Deployment.PackageTypes packageTypes)
	{
		Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager2)this.asInterface(uuid("f7aad08d-0840-46f2-b5d8-cad47693a095"))).abi_FindPackagesWithPackageTypes(packageTypes, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) FindPackagesByUserSecurityIdWithPackageTypes(wstring userSecurityId, Windows.Management.Deployment.PackageTypes packageTypes)
	{
		Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager2)this.asInterface(uuid("f7aad08d-0840-46f2-b5d8-cad47693a095"))).abi_FindPackagesByUserSecurityIdWithPackageTypes(hstring(userSecurityId).handle, packageTypes, &_ret));
		return _ret;
	}
	alias FindPackagesForUserWithPackageTypes = FindPackagesByUserSecurityIdWithPackageTypes;
	final Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) FindPackagesByNamePublisherWithPackageTypes(wstring packageName, wstring packagePublisher, Windows.Management.Deployment.PackageTypes packageTypes)
	{
		Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager2)this.asInterface(uuid("f7aad08d-0840-46f2-b5d8-cad47693a095"))).abi_FindPackagesByNamePublisherWithPackageTypes(hstring(packageName).handle, hstring(packagePublisher).handle, packageTypes, &_ret));
		return _ret;
	}
	alias FindPackagesWithPackageTypes = FindPackagesByNamePublisherWithPackageTypes;
	final Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) FindPackagesByUserSecurityIdNamePublisherWithPackageTypes(wstring userSecurityId, wstring packageName, wstring packagePublisher, Windows.Management.Deployment.PackageTypes packageTypes)
	{
		Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager2)this.asInterface(uuid("f7aad08d-0840-46f2-b5d8-cad47693a095"))).abi_FindPackagesByUserSecurityIdNamePublisherWithPackageTypes(hstring(userSecurityId).handle, hstring(packageName).handle, hstring(packagePublisher).handle, packageTypes, &_ret));
		return _ret;
	}
	alias FindPackagesForUserWithPackageTypes = FindPackagesByUserSecurityIdNamePublisherWithPackageTypes;
	final Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) FindPackagesByPackageFamilyNameWithPackageTypes(wstring packageFamilyName, Windows.Management.Deployment.PackageTypes packageTypes)
	{
		Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager2)this.asInterface(uuid("f7aad08d-0840-46f2-b5d8-cad47693a095"))).abi_FindPackagesByPackageFamilyNameWithPackageTypes(hstring(packageFamilyName).handle, packageTypes, &_ret));
		return _ret;
	}
	alias FindPackagesWithPackageTypes = FindPackagesByPackageFamilyNameWithPackageTypes;
	final Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) FindPackagesByUserSecurityIdPackageFamilyNameWithPackageTypes(wstring userSecurityId, wstring packageFamilyName, Windows.Management.Deployment.PackageTypes packageTypes)
	{
		Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager2)this.asInterface(uuid("f7aad08d-0840-46f2-b5d8-cad47693a095"))).abi_FindPackagesByUserSecurityIdPackageFamilyNameWithPackageTypes(hstring(userSecurityId).handle, hstring(packageFamilyName).handle, packageTypes, &_ret));
		return _ret;
	}
	alias FindPackagesForUserWithPackageTypes = FindPackagesByUserSecurityIdPackageFamilyNameWithPackageTypes;
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) StageUserDataAsync(wstring packageFullName)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager2)this.asInterface(uuid("f7aad08d-0840-46f2-b5d8-cad47693a095"))).abi_StageUserDataAsync(hstring(packageFullName).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Management.Deployment.PackageVolume) AddPackageVolumeAsync(wstring packageStorePath)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Management.Deployment.PackageVolume) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager3)this.asInterface(uuid("daad9948-36f1-41a7-9188-bc263e0dcb72"))).abi_AddPackageVolumeAsync(hstring(packageStorePath).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) AddPackageToVolumeAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume targetVolume)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager3)this.asInterface(uuid("daad9948-36f1-41a7-9188-bc263e0dcb72"))).abi_AddPackageToVolumeAsync(packageUri, dependencyPackageUris, deploymentOptions, targetVolume, &_ret));
		return _ret;
	}
	alias AddPackageAsync = AddPackageToVolumeAsync;
	final void ClearPackageStatus(wstring packageFullName, Windows.Management.Deployment.PackageStatus status)
	{
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager3)this.asInterface(uuid("daad9948-36f1-41a7-9188-bc263e0dcb72"))).abi_ClearPackageStatus(hstring(packageFullName).handle, status));
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) RegisterPackageWithAppDataVolumeAsync(Windows.Foundation.Uri manifestUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume appDataVolume)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager3)this.asInterface(uuid("daad9948-36f1-41a7-9188-bc263e0dcb72"))).abi_RegisterPackageWithAppDataVolumeAsync(manifestUri, dependencyPackageUris, deploymentOptions, appDataVolume, &_ret));
		return _ret;
	}
	alias RegisterPackageAsync = RegisterPackageWithAppDataVolumeAsync;
	final Windows.Management.Deployment.PackageVolume FindPackageVolumeByName(wstring volumeName)
	{
		Windows.Management.Deployment.PackageVolume _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager3)this.asInterface(uuid("daad9948-36f1-41a7-9188-bc263e0dcb72"))).abi_FindPackageVolumeByName(hstring(volumeName).handle, &_ret));
		return _ret;
	}
	alias FindPackageVolume = FindPackageVolumeByName;
	final Windows.Foundation.Collections.IIterable!(Windows.Management.Deployment.PackageVolume) FindPackageVolumes()
	{
		Windows.Foundation.Collections.IIterable!(Windows.Management.Deployment.PackageVolume) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager3)this.asInterface(uuid("daad9948-36f1-41a7-9188-bc263e0dcb72"))).abi_FindPackageVolumes(&_ret));
		return _ret;
	}
	final Windows.Management.Deployment.PackageVolume GetDefaultPackageVolume()
	{
		Windows.Management.Deployment.PackageVolume _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager3)this.asInterface(uuid("daad9948-36f1-41a7-9188-bc263e0dcb72"))).abi_GetDefaultPackageVolume(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) MovePackageToVolumeAsync(wstring packageFullName, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume targetVolume)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager3)this.asInterface(uuid("daad9948-36f1-41a7-9188-bc263e0dcb72"))).abi_MovePackageToVolumeAsync(hstring(packageFullName).handle, deploymentOptions, targetVolume, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) RemovePackageVolumeAsync(Windows.Management.Deployment.PackageVolume volume)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager3)this.asInterface(uuid("daad9948-36f1-41a7-9188-bc263e0dcb72"))).abi_RemovePackageVolumeAsync(volume, &_ret));
		return _ret;
	}
	final void SetDefaultPackageVolume(Windows.Management.Deployment.PackageVolume volume)
	{
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager3)this.asInterface(uuid("daad9948-36f1-41a7-9188-bc263e0dcb72"))).abi_SetDefaultPackageVolume(volume));
	}
	final void SetPackageStatus(wstring packageFullName, Windows.Management.Deployment.PackageStatus status)
	{
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager3)this.asInterface(uuid("daad9948-36f1-41a7-9188-bc263e0dcb72"))).abi_SetPackageStatus(hstring(packageFullName).handle, status));
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) SetPackageVolumeOfflineAsync(Windows.Management.Deployment.PackageVolume packageVolume)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager3)this.asInterface(uuid("daad9948-36f1-41a7-9188-bc263e0dcb72"))).abi_SetPackageVolumeOfflineAsync(packageVolume, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) SetPackageVolumeOnlineAsync(Windows.Management.Deployment.PackageVolume packageVolume)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager3)this.asInterface(uuid("daad9948-36f1-41a7-9188-bc263e0dcb72"))).abi_SetPackageVolumeOnlineAsync(packageVolume, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) StagePackageToVolumeAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume targetVolume)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager3)this.asInterface(uuid("daad9948-36f1-41a7-9188-bc263e0dcb72"))).abi_StagePackageToVolumeAsync(packageUri, dependencyPackageUris, deploymentOptions, targetVolume, &_ret));
		return _ret;
	}
	alias StagePackageAsync = StagePackageToVolumeAsync;
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) StageUserDataWithOptionsAsync(wstring packageFullName, Windows.Management.Deployment.DeploymentOptions deploymentOptions)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager3)this.asInterface(uuid("daad9948-36f1-41a7-9188-bc263e0dcb72"))).abi_StageUserDataWithOptionsAsync(hstring(packageFullName).handle, deploymentOptions, &_ret));
		return _ret;
	}
	alias StageUserDataAsync = StageUserDataWithOptionsAsync;
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Management.Deployment.PackageVolume)) GetPackageVolumesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Management.Deployment.PackageVolume)) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager4)this.asInterface(uuid("3c719963-bab6-46bf-8ff7-da4719230ae6"))).abi_GetPackageVolumesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) AddPackageToVolumeAndOptionalPackagesAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume targetVolume, Windows.Foundation.Collections.IIterable!(HSTRING) optionalPackageFamilyNames, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) externalPackageUris)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager5)this.asInterface(uuid("711f3117-1afd-4313-978c-9bb6e1b864a7"))).abi_AddPackageToVolumeAndOptionalPackagesAsync(packageUri, dependencyPackageUris, deploymentOptions, targetVolume, optionalPackageFamilyNames, externalPackageUris, &_ret));
		return _ret;
	}
	alias AddPackageAsync = AddPackageToVolumeAndOptionalPackagesAsync;
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) StagePackageToVolumeAndOptionalPackagesAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume targetVolume, Windows.Foundation.Collections.IIterable!(HSTRING) optionalPackageFamilyNames, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) externalPackageUris)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager5)this.asInterface(uuid("711f3117-1afd-4313-978c-9bb6e1b864a7"))).abi_StagePackageToVolumeAndOptionalPackagesAsync(packageUri, dependencyPackageUris, deploymentOptions, targetVolume, optionalPackageFamilyNames, externalPackageUris, &_ret));
		return _ret;
	}
	alias StagePackageAsync = StagePackageToVolumeAndOptionalPackagesAsync;
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) RegisterPackageByFamilyNameAndOptionalPackagesAsync(wstring mainPackageFamilyName, Windows.Foundation.Collections.IIterable!(HSTRING) dependencyPackageFamilyNames, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume appDataVolume, Windows.Foundation.Collections.IIterable!(HSTRING) optionalPackageFamilyNames)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager5)this.asInterface(uuid("711f3117-1afd-4313-978c-9bb6e1b864a7"))).abi_RegisterPackageByFamilyNameAndOptionalPackagesAsync(hstring(mainPackageFamilyName).handle, dependencyPackageFamilyNames, deploymentOptions, appDataVolume, optionalPackageFamilyNames, &_ret));
		return _ret;
	}
	alias RegisterPackageByFamilyNameAsync = RegisterPackageByFamilyNameAndOptionalPackagesAsync;
	final Windows.Management.Deployment.PackageManagerDebugSettings DebugSettings()
	{
		Windows.Management.Deployment.PackageManagerDebugSettings _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManager5)this.asInterface(uuid("711f3117-1afd-4313-978c-9bb6e1b864a7"))).get_DebugSettings(&_ret));
		return _ret;
	}
	static PackageManager New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PackageManager).abi_ActivateInstance(&ret));
		return cast(PackageManager) ret;
	}
}

interface PackageManagerDebugSettings : Windows.Management.Deployment.IPackageManagerDebugSettings
{
extern(Windows):
	final Windows.Foundation.IAsyncAction SetContentGroupStateAsync(Windows.ApplicationModel.Package package_, wstring contentGroupName, Windows.ApplicationModel.PackageContentGroupState state)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManagerDebugSettings)this.asInterface(uuid("1a611683-a988-4fcf-8f0f-ce175898e8eb"))).abi_SetContentGroupStateAsync(package_, hstring(contentGroupName).handle, state, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetContentGroupStateWithPercentageAsync(Windows.ApplicationModel.Package package_, wstring contentGroupName, Windows.ApplicationModel.PackageContentGroupState state, double completionPercentage)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageManagerDebugSettings)this.asInterface(uuid("1a611683-a988-4fcf-8f0f-ce175898e8eb"))).abi_SetContentGroupStateWithPercentageAsync(package_, hstring(contentGroupName).handle, state, completionPercentage, &_ret));
		return _ret;
	}
	alias SetContentGroupStateAsync = SetContentGroupStateWithPercentageAsync;
}

interface PackageUserInformation : Windows.Management.Deployment.IPackageUserInformation
{
extern(Windows):
	final wstring UserSecurityId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageUserInformation)this.asInterface(uuid("f6383423-fa09-4cbc-9055-15ca275e2e7e"))).get_UserSecurityId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Management.Deployment.PackageInstallState InstallState()
	{
		Windows.Management.Deployment.PackageInstallState _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageUserInformation)this.asInterface(uuid("f6383423-fa09-4cbc-9055-15ca275e2e7e"))).get_InstallState(&_ret));
		return _ret;
	}
}

interface PackageVolume : Windows.Management.Deployment.IPackageVolume, Windows.Management.Deployment.IPackageVolume2
{
extern(Windows):
	final bool IsOffline()
	{
		bool _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).get_IsOffline(&_ret));
		return _ret;
	}
	final bool IsSystemVolume()
	{
		bool _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).get_IsSystemVolume(&_ret));
		return _ret;
	}
	final wstring MountPoint()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).get_MountPoint(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring PackageStorePath()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).get_PackageStorePath(&_ret));
		return hstring(_ret).d_str;
	}
	final bool SupportsHardLinks()
	{
		bool _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).get_SupportsHardLinks(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) FindPackages()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).abi_FindPackages(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) FindPackagesByNamePublisher(wstring packageName, wstring packagePublisher)
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).abi_FindPackagesByNamePublisher(hstring(packageName).handle, hstring(packagePublisher).handle, &_ret));
		return _ret;
	}
	alias FindPackages = FindPackagesByNamePublisher;
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) FindPackagesByPackageFamilyName(wstring packageFamilyName)
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).abi_FindPackagesByPackageFamilyName(hstring(packageFamilyName).handle, &_ret));
		return _ret;
	}
	alias FindPackages = FindPackagesByPackageFamilyName;
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) FindPackagesWithPackageTypes(Windows.Management.Deployment.PackageTypes packageTypes)
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).abi_FindPackagesWithPackageTypes(packageTypes, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) FindPackagesByNamePublisherWithPackagesTypes(Windows.Management.Deployment.PackageTypes packageTypes, wstring packageName, wstring packagePublisher)
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).abi_FindPackagesByNamePublisherWithPackagesTypes(packageTypes, hstring(packageName).handle, hstring(packagePublisher).handle, &_ret));
		return _ret;
	}
	alias FindPackagesWithPackageTypes = FindPackagesByNamePublisherWithPackagesTypes;
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) FindPackagesByPackageFamilyNameWithPackageTypes(Windows.Management.Deployment.PackageTypes packageTypes, wstring packageFamilyName)
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).abi_FindPackagesByPackageFamilyNameWithPackageTypes(packageTypes, hstring(packageFamilyName).handle, &_ret));
		return _ret;
	}
	alias FindPackagesWithPackageTypes = FindPackagesByPackageFamilyNameWithPackageTypes;
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) FindPackageByPackageFullName(wstring packageFullName)
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).abi_FindPackageByPackageFullName(hstring(packageFullName).handle, &_ret));
		return _ret;
	}
	alias FindPackage = FindPackageByPackageFullName;
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) FindPackagesByUserSecurityId(wstring userSecurityId)
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).abi_FindPackagesByUserSecurityId(hstring(userSecurityId).handle, &_ret));
		return _ret;
	}
	alias FindPackagesForUser = FindPackagesByUserSecurityId;
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) FindPackagesByUserSecurityIdNamePublisher(wstring userSecurityId, wstring packageName, wstring packagePublisher)
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).abi_FindPackagesByUserSecurityIdNamePublisher(hstring(userSecurityId).handle, hstring(packageName).handle, hstring(packagePublisher).handle, &_ret));
		return _ret;
	}
	alias FindPackagesForUser = FindPackagesByUserSecurityIdNamePublisher;
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) FindPackagesByUserSecurityIdPackageFamilyName(wstring userSecurityId, wstring packageFamilyName)
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).abi_FindPackagesByUserSecurityIdPackageFamilyName(hstring(userSecurityId).handle, hstring(packageFamilyName).handle, &_ret));
		return _ret;
	}
	alias FindPackagesForUser = FindPackagesByUserSecurityIdPackageFamilyName;
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) FindPackagesByUserSecurityIdWithPackageTypes(wstring userSecurityId, Windows.Management.Deployment.PackageTypes packageTypes)
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).abi_FindPackagesByUserSecurityIdWithPackageTypes(hstring(userSecurityId).handle, packageTypes, &_ret));
		return _ret;
	}
	alias FindPackagesForUserWithPackageTypes = FindPackagesByUserSecurityIdWithPackageTypes;
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) FindPackagesByUserSecurityIdNamePublisherWithPackageTypes(wstring userSecurityId, Windows.Management.Deployment.PackageTypes packageTypes, wstring packageName, wstring packagePublisher)
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).abi_FindPackagesByUserSecurityIdNamePublisherWithPackageTypes(hstring(userSecurityId).handle, packageTypes, hstring(packageName).handle, hstring(packagePublisher).handle, &_ret));
		return _ret;
	}
	alias FindPackagesForUserWithPackageTypes = FindPackagesByUserSecurityIdNamePublisherWithPackageTypes;
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) FindPackagesByUserSecurityIdPackageFamilyNameWithPackagesTypes(wstring userSecurityId, Windows.Management.Deployment.PackageTypes packageTypes, wstring packageFamilyName)
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).abi_FindPackagesByUserSecurityIdPackageFamilyNameWithPackagesTypes(hstring(userSecurityId).handle, packageTypes, hstring(packageFamilyName).handle, &_ret));
		return _ret;
	}
	alias FindPackagesForUserWithPackageTypes = FindPackagesByUserSecurityIdPackageFamilyNameWithPackagesTypes;
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) FindPackageByUserSecurityIdPackageFullName(wstring userSecurityId, wstring packageFullName)
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume)this.asInterface(uuid("cf2672c3-1a40-4450-9739-2ace2e898853"))).abi_FindPackageByUserSecurityIdPackageFullName(hstring(userSecurityId).handle, hstring(packageFullName).handle, &_ret));
		return _ret;
	}
	alias FindPackageForUser = FindPackageByUserSecurityIdPackageFullName;
	final bool IsFullTrustPackageSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume2)this.asInterface(uuid("46abcf2e-9dd4-47a2-ab8c-c6408349bcd8"))).get_IsFullTrustPackageSupported(&_ret));
		return _ret;
	}
	final bool IsAppxInstallSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume2)this.asInterface(uuid("46abcf2e-9dd4-47a2-ab8c-c6408349bcd8"))).get_IsAppxInstallSupported(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(ulong) GetAvailableSpaceAsync()
	{
		Windows.Foundation.IAsyncOperation!(ulong) _ret;
		Debug.OK((cast(Windows.Management.Deployment.IPackageVolume2)this.asInterface(uuid("46abcf2e-9dd4-47a2-ab8c-c6408349bcd8"))).abi_GetAvailableSpaceAsync(&_ret));
		return _ret;
	}
}

@bitflags
enum DeploymentOptions
{
	None = 0x0,
	ForceApplicationShutdown = 0x1,
	DevelopmentMode = 0x2,
	InstallAllResources = 0x20,
	ForceTargetApplicationShutdown = 0x40,
	RequiredContentGroupOnly = 0x100
}

enum DeploymentProgressState
{
	Queued = 0,
	Processing = 1
}

enum PackageInstallState
{
	NotInstalled = 0,
	Staged = 1,
	Installed = 2,
	Paused = 6
}

enum PackageState
{
	Normal = 0,
	LicenseInvalid = 1,
	Modified = 2,
	Tampered = 3
}

@bitflags
enum PackageStatus
{
	OK = 0x0,
	LicenseIssue = 0x1,
	Modified = 0x2,
	Tampered = 0x4,
	Disabled = 0x8
}

@bitflags
enum PackageTypes
{
	None = 0x0,
	Main = 0x1,
	Framework = 0x2,
	Resource = 0x4,
	Bundle = 0x8,
	Xap = 0x10,
	Optional = 0x20
}

@bitflags
enum RemovalOptions
{
	None = 0x0,
	PreserveApplicationData = 0x1000
}