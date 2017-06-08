module Windows.ApplicationModel;

import dwinrt;

struct PackageVersion
{
	UINT16 Major;
	UINT16 Minor;
	UINT16 Build;
	UINT16 Revision;
}

@uuid("1aeb1103-e4d4-41aa-a4f6-c4a276e79eac")
@WinrtFactory("Windows.ApplicationModel.AppDisplayInfo")
interface IAppDisplayInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT abi_GetLogo(Windows.Foundation.Size size, Windows.Storage.Streams.RandomAccessStreamReference* return_value);
}

@uuid("cf7f59b3-6a09-4de8-a6c0-5792d56880d1")
@WinrtFactory("Windows.ApplicationModel.AppInfo")
interface IAppInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_AppUserModelId(HSTRING* return_value);
	HRESULT get_DisplayInfo(Windows.ApplicationModel.AppDisplayInfo* return_value);
	HRESULT get_PackageFamilyName(HSTRING* return_value);
}

@uuid("2c3893cc-f81a-4e7a-b857-76a80887e185")
@WinrtFactory("Windows.ApplicationModel.DesignMode")
interface IDesignModeStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DesignModeEnabled(bool* return_value);
}

@uuid("f722dcc2-9827-403d-aaed-ecca9ac17398")
interface IEnteredBackgroundEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("d784837f-1100-3c6b-a455-f6262cc331b6")
@WinrtFactory("Windows.ApplicationModel.FullTrustProcessLauncher")
interface IFullTrustProcessLauncherStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_LaunchFullTrustProcessForCurrentAppAsync(Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_LaunchFullTrustProcessForCurrentAppWithParametersAsync(HSTRING parameterGroupId, Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_LaunchFullTrustProcessForAppAsync(HSTRING fullTrustPackageRelativeAppId, Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_LaunchFullTrustProcessForAppWithParametersAsync(HSTRING fullTrustPackageRelativeAppId, HSTRING parameterGroupId, Windows.Foundation.IAsyncAction* return_asyncAction);
}

@uuid("39c6ec9a-ae6e-46f9-a07a-cfc23f88733e")
interface ILeavingBackgroundEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("163c792f-bd75-413c-bf23-b1fe7b95d825")
@WinrtFactory("Windows.ApplicationModel.Package")
interface IPackage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(Windows.ApplicationModel.PackageId* return_value);
	HRESULT get_InstalledLocation(Windows.Storage.StorageFolder* return_value);
	HRESULT get_IsFramework(bool* return_value);
	HRESULT get_Dependencies(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Package)* return_value);
}

@uuid("a6612fb6-7688-4ace-95fb-359538e7aa01")
@WinrtFactory("Windows.ApplicationModel.Package")
interface IPackage2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_PublisherDisplayName(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_Logo(Windows.Foundation.Uri* return_value);
	HRESULT get_IsResourcePackage(bool* return_value);
	HRESULT get_IsBundle(bool* return_value);
	HRESULT get_IsDevelopmentMode(bool* return_value);
}

@uuid("5f738b61-f86a-4917-93d1-f1ee9d3b35d9")
@WinrtFactory("Windows.ApplicationModel.Package")
interface IPackage3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.ApplicationModel.PackageStatus* return_value);
	HRESULT get_InstalledDate(Windows.Foundation.DateTime* return_value);
	HRESULT abi_GetAppListEntriesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Core.AppListEntry))* return_operation);
}

@uuid("65aed1ae-b95b-450c-882b-6255187f397e")
@WinrtFactory("Windows.ApplicationModel.Package")
interface IPackage4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SignatureKind(Windows.ApplicationModel.PackageSignatureKind* return_value);
	HRESULT get_IsOptional(bool* return_value);
	HRESULT abi_VerifyContentIntegrityAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("0e842dd4-d9ac-45ed-9a1e-74ce056b2635")
@WinrtFactory("Windows.ApplicationModel.Package")
interface IPackage5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetContentGroupsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.PackageContentGroup))* return_operation);
	HRESULT abi_GetContentGroupAsync(HSTRING name, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.PackageContentGroup)* return_operation);
	HRESULT abi_StageContentGroupsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) names, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.PackageContentGroup))* return_operation);
	HRESULT abi_StageContentGroupsWithPriorityAsync(Windows.Foundation.Collections.IIterable!(HSTRING) names, bool moveToHeadOfQueue, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.PackageContentGroup))* return_operation);
	HRESULT abi_SetInUseAsync(bool inUse, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("230a3751-9de3-4445-be74-91fb325abefe")
@WinrtFactory("Windows.ApplicationModel.PackageCatalog")
interface IPackageCatalog : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_PackageStaging(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageStagingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PackageStaging(EventRegistrationToken token);
	HRESULT add_PackageInstalling(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageInstallingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PackageInstalling(EventRegistrationToken token);
	HRESULT add_PackageUpdating(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageUpdatingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PackageUpdating(EventRegistrationToken token);
	HRESULT add_PackageUninstalling(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageUninstallingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PackageUninstalling(EventRegistrationToken token);
	HRESULT add_PackageStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageStatusChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PackageStatusChanged(EventRegistrationToken token);
}

@uuid("96a60c36-8ff7-4344-b6bf-ee64c2207ed2")
@WinrtFactory("Windows.ApplicationModel.PackageCatalog")
interface IPackageCatalog2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_PackageContentGroupStaging(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageContentGroupStagingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PackageContentGroupStaging(EventRegistrationToken token);
	HRESULT abi_AddOptionalPackageAsync(HSTRING optionalPackageFamilyName, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.PackageCatalogAddOptionalPackageResult)* return_operation);
}

@uuid("3bf10cd4-b4df-47b3-a963-e2fa832f7dd3")
@WinrtFactory("Windows.ApplicationModel.PackageCatalogAddOptionalPackageResult")
interface IPackageCatalogAddOptionalPackageResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("a18c9696-e65b-4634-ba21-5e63eb7244a7")
@WinrtFactory("Windows.ApplicationModel.PackageCatalog")
interface IPackageCatalogStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OpenForCurrentPackage(Windows.ApplicationModel.PackageCatalog* return_value);
	HRESULT abi_OpenForCurrentUser(Windows.ApplicationModel.PackageCatalog* return_value);
}

@uuid("8f62695d-120a-4798-b5e1-5800dda8f2e1")
@WinrtFactory("Windows.ApplicationModel.PackageContentGroup")
interface IPackageContentGroup : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_State(Windows.ApplicationModel.PackageContentGroupState* return_value);
	HRESULT get_IsRequired(bool* return_value);
}

@uuid("3d7bc27e-6f27-446c-986e-d4733d4d9113")
@WinrtFactory("Windows.ApplicationModel.PackageContentGroupStagingEventArgs")
interface IPackageContentGroupStagingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ActivityId(GUID* return_value);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
	HRESULT get_Progress(double* return_value);
	HRESULT get_IsComplete(bool* return_value);
	HRESULT get_ErrorCode(HRESULT* return_value);
	HRESULT get_ContentGroupName(HSTRING* return_value);
	HRESULT get_IsContentGroupRequired(bool* return_value);
}

@uuid("70ee7619-5f12-4b92-b9ea-6ccada13bc75")
@WinrtFactory("Windows.ApplicationModel.PackageContentGroup")
interface IPackageContentGroupStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RequiredGroupName(HSTRING* return_value);
}

@uuid("1adb665e-37c7-4790-9980-dd7ae74e8bb2")
@WinrtFactory("Windows.ApplicationModel.PackageId")
interface IPackageId : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Version(Windows.ApplicationModel.PackageVersion* return_value);
	HRESULT get_Architecture(Windows.System.ProcessorArchitecture* return_value);
	HRESULT get_ResourceId(HSTRING* return_value);
	HRESULT get_Publisher(HSTRING* return_value);
	HRESULT get_PublisherId(HSTRING* return_value);
	HRESULT get_FullName(HSTRING* return_value);
	HRESULT get_FamilyName(HSTRING* return_value);
}

@uuid("40577a7c-0c9e-443d-9074-855f5ce0a08d")
@WinrtFactory("Windows.ApplicationModel.PackageId")
interface IPackageIdWithMetadata : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ProductId(HSTRING* return_value);
	HRESULT get_Author(HSTRING* return_value);
}

@uuid("97741eb7-ab7a-401a-8b61-eb0e7faff237")
@WinrtFactory("Windows.ApplicationModel.PackageInstallingEventArgs")
interface IPackageInstallingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ActivityId(GUID* return_value);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
	HRESULT get_Progress(double* return_value);
	HRESULT get_IsComplete(bool* return_value);
	HRESULT get_ErrorCode(HRESULT* return_value);
}

@uuid("1041682d-54e2-4f51-b828-9ef7046c210f")
@WinrtFactory("Windows.ApplicationModel.PackageStagingEventArgs")
interface IPackageStagingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ActivityId(GUID* return_value);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
	HRESULT get_Progress(double* return_value);
	HRESULT get_IsComplete(bool* return_value);
	HRESULT get_ErrorCode(HRESULT* return_value);
}

@uuid("4e534bdf-2960-4878-97a4-9624deb72f2d")
@WinrtFactory("Windows.ApplicationModel.Package")
interface IPackageStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Current(Windows.ApplicationModel.Package* return_value);
}

@uuid("5fe74f71-a365-4c09-a02d-046d525ea1da")
@WinrtFactory("Windows.ApplicationModel.PackageStatus")
interface IPackageStatus : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_VerifyIsOK(bool* return_value);
	HRESULT get_NotAvailable(bool* return_value);
	HRESULT get_PackageOffline(bool* return_value);
	HRESULT get_DataOffline(bool* return_value);
	HRESULT get_Disabled(bool* return_value);
	HRESULT get_NeedsRemediation(bool* return_value);
	HRESULT get_LicenseIssue(bool* return_value);
	HRESULT get_Modified(bool* return_value);
	HRESULT get_Tampered(bool* return_value);
	HRESULT get_DependencyIssue(bool* return_value);
	HRESULT get_Servicing(bool* return_value);
	HRESULT get_DeploymentInProgress(bool* return_value);
}

@uuid("f428fa93-7c56-4862-acfa-abaedcc0694d")
@WinrtFactory("Windows.ApplicationModel.PackageStatus")
interface IPackageStatus2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsPartiallyStaged(bool* return_value);
}

@uuid("437d714d-bd80-4a70-bc50-f6e796509575")
@WinrtFactory("Windows.ApplicationModel.PackageStatusChangedEventArgs")
interface IPackageStatusChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
}

@uuid("4443aa52-ab22-44cd-82bb-4ec9b827367a")
@WinrtFactory("Windows.ApplicationModel.PackageUninstallingEventArgs")
interface IPackageUninstallingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ActivityId(GUID* return_value);
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
	HRESULT get_Progress(double* return_value);
	HRESULT get_IsComplete(bool* return_value);
	HRESULT get_ErrorCode(HRESULT* return_value);
}

@uuid("cd7b4228-fd74-443e-b114-23e677b0e86f")
@WinrtFactory("Windows.ApplicationModel.PackageUpdatingEventArgs")
interface IPackageUpdatingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ActivityId(GUID* return_value);
	HRESULT get_SourcePackage(Windows.ApplicationModel.Package* return_value);
	HRESULT get_TargetPackage(Windows.ApplicationModel.Package* return_value);
	HRESULT get_Progress(double* return_value);
	HRESULT get_IsComplete(bool* return_value);
	HRESULT get_ErrorCode(HRESULT* return_value);
}

@uuid("95949780-1de9-40f2-b452-0de9f1910012")
@WinrtFactory("Windows.ApplicationModel.Package")
interface IPackageWithMetadata : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InstallDate(Windows.Foundation.DateTime* return_value);
	HRESULT abi_GetThumbnailToken(HSTRING* return_value);
	deprecated("Launch may be altered or unavailable for releases after Windows 8.1. Instead, for SmartCardTrigger scenarios use SmartCardTriggerDetails.TryLaunchSelfAsync")
	HRESULT abi_Launch(HSTRING parameters);
}

@uuid("f75c23c8-b5f2-4f6c-88dd-36cb1d599d17")
@WinrtFactory("Windows.ApplicationModel.StartupTask")
interface IStartupTask : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestEnableAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.StartupTaskState)* return_operation);
	HRESULT abi_Disable();
	HRESULT get_State(Windows.ApplicationModel.StartupTaskState* return_value);
	HRESULT get_TaskId(HSTRING* return_value);
}

@uuid("ee5b60bd-a148-41a7-b26e-e8b88a1e62f8")
@WinrtFactory("Windows.ApplicationModel.StartupTask")
interface IStartupTaskStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentPackageAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.StartupTask))* return_operation);
	HRESULT abi_GetAsync(HSTRING taskId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.StartupTask)* return_operation);
}

@uuid("59140509-8bc9-4eb4-b636-dabdc4f46f66")
interface ISuspendingDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

@uuid("96061c05-2dba-4d08-b0bd-2b30a131c6aa")
interface ISuspendingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SuspendingOperation(Windows.ApplicationModel.SuspendingOperation* return_value);
}

@uuid("9da4ca41-20e1-4e9b-9f65-a9f435340c3a")
interface ISuspendingOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeferral(Windows.ApplicationModel.SuspendingDeferral* return_deferral);
	HRESULT get_Deadline(Windows.Foundation.DateTime* return_value);
}

interface AppDisplayInfo : Windows.ApplicationModel.IAppDisplayInfo
{
}

interface AppInfo : Windows.ApplicationModel.IAppInfo
{
}

interface DesignMode
{
}

interface EnteredBackgroundEventArgs : Windows.ApplicationModel.IEnteredBackgroundEventArgs
{
}

interface FullTrustProcessLauncher
{
}

interface LeavingBackgroundEventArgs : Windows.ApplicationModel.ILeavingBackgroundEventArgs
{
}

interface Package : Windows.ApplicationModel.IPackage, Windows.ApplicationModel.IPackage2, Windows.ApplicationModel.IPackage3, Windows.ApplicationModel.IPackageWithMetadata, Windows.ApplicationModel.IPackage4, Windows.ApplicationModel.IPackage5
{
}

interface PackageCatalog : Windows.ApplicationModel.IPackageCatalog, Windows.ApplicationModel.IPackageCatalog2
{
}

interface PackageCatalogAddOptionalPackageResult : Windows.ApplicationModel.IPackageCatalogAddOptionalPackageResult
{
}

interface PackageContentGroup : Windows.ApplicationModel.IPackageContentGroup
{
}

interface PackageContentGroupStagingEventArgs : Windows.ApplicationModel.IPackageContentGroupStagingEventArgs
{
}

interface PackageId : Windows.ApplicationModel.IPackageId, Windows.ApplicationModel.IPackageIdWithMetadata
{
}

interface PackageInstallingEventArgs : Windows.ApplicationModel.IPackageInstallingEventArgs
{
}

interface PackageStagingEventArgs : Windows.ApplicationModel.IPackageStagingEventArgs
{
}

interface PackageStatus : Windows.ApplicationModel.IPackageStatus, Windows.ApplicationModel.IPackageStatus2
{
}

interface PackageStatusChangedEventArgs : Windows.ApplicationModel.IPackageStatusChangedEventArgs
{
}

interface PackageUninstallingEventArgs : Windows.ApplicationModel.IPackageUninstallingEventArgs
{
}

interface PackageUpdatingEventArgs : Windows.ApplicationModel.IPackageUpdatingEventArgs
{
}

interface StartupTask : Windows.ApplicationModel.IStartupTask
{
}

interface SuspendingDeferral : Windows.ApplicationModel.ISuspendingDeferral
{
}

interface SuspendingEventArgs : Windows.ApplicationModel.ISuspendingEventArgs
{
}

interface SuspendingOperation : Windows.ApplicationModel.ISuspendingOperation
{
}

enum PackageContentGroupState
{
	NotStaged = 0,
	Queued = 1,
	Staging = 2,
	Staged = 3
}

enum PackageSignatureKind
{
	None = 0,
	Developer = 1,
	Enterprise = 2,
	Store = 3,
	System = 4
}

enum StartupTaskState
{
	Disabled = 0,
	DisabledByUser = 1,
	Enabled = 2
}