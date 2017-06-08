module Windows.Management.Deployment;

import dwinrt;

@uuid("2563b9ae-b77d-4c1f-8a7b-20e6ad515ef3")
@WinrtFactory("Windows.Management.Deployment.DeploymentResult")
interface IDeploymentResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ErrorText(HSTRING* return_value);
	HRESULT get_ActivityId(GUID* return_value);
	HRESULT get_ExtendedErrorCode(HRESULT* return_value);
}

@uuid("fc0e715c-5a01-4bd7-bcf1-381c8c82e04a")
@WinrtFactory("Windows.Management.Deployment.DeploymentResult")
interface IDeploymentResult2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsRegistered(bool* return_value);
}

@uuid("9a7d4b65-5e8f-4fc7-a2e5-7f6925cb8b53")
@WinrtFactory("Windows.Management.Deployment.PackageManager")
interface IPackageManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddPackageAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_UpdatePackageAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_RemovePackageAsync(HSTRING packageFullName, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_StagePackageAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_RegisterPackageAsync(Windows.Foundation.Uri manifestUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_FindPackages(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityId(HSTRING userSecurityId, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByNamePublisher(HSTRING packageName, HSTRING packagePublisher, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityIdNamePublisher(HSTRING userSecurityId, HSTRING packageName, HSTRING packagePublisher, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindUsers(HSTRING packageFullName, Windows.Foundation.Collections.IIterable!(Windows.Management.Deployment.PackageUserInformation)* return_users);
	HRESULT abi_SetPackageState(HSTRING packageFullName, Windows.Management.Deployment.PackageState packageState);
	HRESULT abi_FindPackageByPackageFullName(HSTRING packageFullName, Windows.ApplicationModel.Package* return_packageInformation);
	HRESULT abi_CleanupPackageForUserAsync(HSTRING packageName, HSTRING userSecurityId, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_FindPackagesByPackageFamilyName(HSTRING packageFamilyName, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityIdPackageFamilyName(HSTRING userSecurityId, HSTRING packageFamilyName, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackageByUserSecurityIdPackageFullName(HSTRING userSecurityId, HSTRING packageFullName, Windows.ApplicationModel.Package* return_packageInformation);
}

@uuid("f7aad08d-0840-46f2-b5d8-cad47693a095")
@WinrtFactory("Windows.Management.Deployment.PackageManager")
interface IPackageManager2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RemovePackageWithOptionsAsync(HSTRING packageFullName, Windows.Management.Deployment.RemovalOptions removalOptions, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_StagePackageWithOptionsAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_RegisterPackageByFullNameAsync(HSTRING mainPackageFullName, Windows.Foundation.Collections.IIterable!(HSTRING) dependencyPackageFullNames, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_FindPackagesWithPackageTypes(Windows.Management.Deployment.PackageTypes packageTypes, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityIdWithPackageTypes(HSTRING userSecurityId, Windows.Management.Deployment.PackageTypes packageTypes, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByNamePublisherWithPackageTypes(HSTRING packageName, HSTRING packagePublisher, Windows.Management.Deployment.PackageTypes packageTypes, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityIdNamePublisherWithPackageTypes(HSTRING userSecurityId, HSTRING packageName, HSTRING packagePublisher, Windows.Management.Deployment.PackageTypes packageTypes, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByPackageFamilyNameWithPackageTypes(HSTRING packageFamilyName, Windows.Management.Deployment.PackageTypes packageTypes, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_FindPackagesByUserSecurityIdPackageFamilyNameWithPackageTypes(HSTRING userSecurityId, HSTRING packageFamilyName, Windows.Management.Deployment.PackageTypes packageTypes, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Package)* return_packageCollection);
	HRESULT abi_StageUserDataAsync(HSTRING packageFullName, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
}

@uuid("daad9948-36f1-41a7-9188-bc263e0dcb72")
@WinrtFactory("Windows.Management.Deployment.PackageManager")
interface IPackageManager3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddPackageVolumeAsync(HSTRING packageStorePath, Windows.Foundation.IAsyncOperation!(Windows.Management.Deployment.PackageVolume)* return_packageVolume);
	HRESULT abi_AddPackageToVolumeAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume targetVolume, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_ClearPackageStatus(HSTRING packageFullName, Windows.Management.Deployment.PackageStatus status);
	HRESULT abi_RegisterPackageWithAppDataVolumeAsync(Windows.Foundation.Uri manifestUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume appDataVolume, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_FindPackageVolumeByName(HSTRING volumeName, Windows.Management.Deployment.PackageVolume* return_volume);
	HRESULT abi_FindPackageVolumes(Windows.Foundation.Collections.IIterable!(Windows.Management.Deployment.PackageVolume)* return_volumeCollection);
	HRESULT abi_GetDefaultPackageVolume(Windows.Management.Deployment.PackageVolume* return_volume);
	HRESULT abi_MovePackageToVolumeAsync(HSTRING packageFullName, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume targetVolume, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_RemovePackageVolumeAsync(Windows.Management.Deployment.PackageVolume volume, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_SetDefaultPackageVolume(Windows.Management.Deployment.PackageVolume volume);
	HRESULT abi_SetPackageStatus(HSTRING packageFullName, Windows.Management.Deployment.PackageStatus status);
	HRESULT abi_SetPackageVolumeOfflineAsync(Windows.Management.Deployment.PackageVolume packageVolume, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_SetPackageVolumeOnlineAsync(Windows.Management.Deployment.PackageVolume packageVolume, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_StagePackageToVolumeAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume targetVolume, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_StageUserDataWithOptionsAsync(HSTRING packageFullName, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
}

@uuid("3c719963-bab6-46bf-8ff7-da4719230ae6")
@WinrtFactory("Windows.Management.Deployment.PackageManager")
interface IPackageManager4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetPackageVolumesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Management.Deployment.PackageVolume))* return_operation);
}

@uuid("711f3117-1afd-4313-978c-9bb6e1b864a7")
@WinrtFactory("Windows.Management.Deployment.PackageManager")
interface IPackageManager5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddPackageToVolumeAndOptionalPackagesAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume targetVolume, Windows.Foundation.Collections.IIterable!(HSTRING) optionalPackageFamilyNames, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) externalPackageUris, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_StagePackageToVolumeAndOptionalPackagesAsync(Windows.Foundation.Uri packageUri, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) dependencyPackageUris, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume targetVolume, Windows.Foundation.Collections.IIterable!(HSTRING) optionalPackageFamilyNames, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Uri) externalPackageUris, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT abi_RegisterPackageByFamilyNameAndOptionalPackagesAsync(HSTRING mainPackageFamilyName, Windows.Foundation.Collections.IIterable!(HSTRING) dependencyPackageFamilyNames, Windows.Management.Deployment.DeploymentOptions deploymentOptions, Windows.Management.Deployment.PackageVolume appDataVolume, Windows.Foundation.Collections.IIterable!(HSTRING) optionalPackageFamilyNames, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Management.Deployment.DeploymentResult*,Windows.Management.Deployment.DeploymentProgress)* return_deploymentOperation);
	HRESULT get_DebugSettings(Windows.Management.Deployment.PackageManagerDebugSettings* return_value);
}

@uuid("1a611683-a988-4fcf-8f0f-ce175898e8eb")
@WinrtFactory("Windows.Management.Deployment.PackageManagerDebugSettings")
interface IPackageManagerDebugSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetContentGroupStateAsync(Windows.ApplicationModel.Package package_, HSTRING contentGroupName, Windows.ApplicationModel.PackageContentGroupState state, Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_SetContentGroupStateWithPercentageAsync(Windows.ApplicationModel.Package package_, HSTRING contentGroupName, Windows.ApplicationModel.PackageContentGroupState state, double completionPercentage, Windows.Foundation.IAsyncAction* return_action);
}

@uuid("f6383423-fa09-4cbc-9055-15ca275e2e7e")
@WinrtFactory("Windows.Management.Deployment.PackageUserInformation")
interface IPackageUserInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UserSecurityId(HSTRING* return_value);
	HRESULT get_InstallState(Windows.Management.Deployment.PackageInstallState* return_value);
}

@uuid("cf2672c3-1a40-4450-9739-2ace2e898853")
@WinrtFactory("Windows.Management.Deployment.PackageVolume")
interface IPackageVolume : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsFullTrustPackageSupported(bool* return_value);
	HRESULT get_IsAppxInstallSupported(bool* return_value);
	HRESULT abi_GetAvailableSpaceAsync(Windows.Foundation.IAsyncOperation!(UINT64)* return_operation);
}

interface DeploymentResult
{
}

interface PackageManager
{
}

interface PackageManagerDebugSettings
{
}

interface PackageUserInformation
{
}

interface PackageVolume
{
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