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
extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT abi_GetLogo(Windows.Foundation.Size size, Windows.Storage.Streams.RandomAccessStreamReference* return_value);
}

@uuid("cf7f59b3-6a09-4de8-a6c0-5792d56880d1")
@WinrtFactory("Windows.ApplicationModel.AppInfo")
interface IAppInfo : IInspectable
{
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
extern(Windows):
	HRESULT get_DesignModeEnabled(bool* return_value);
}

@uuid("f722dcc2-9827-403d-aaed-ecca9ac17398")
interface IEnteredBackgroundEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("d784837f-1100-3c6b-a455-f6262cc331b6")
@WinrtFactory("Windows.ApplicationModel.FullTrustProcessLauncher")
interface IFullTrustProcessLauncherStatics : IInspectable
{
extern(Windows):
	HRESULT abi_LaunchFullTrustProcessForCurrentAppAsync(Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_LaunchFullTrustProcessForCurrentAppAsync(HSTRING parameterGroupId, Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_LaunchFullTrustProcessForAppAsync(HSTRING fullTrustPackageRelativeAppId, Windows.Foundation.IAsyncAction* return_asyncAction);
	HRESULT abi_LaunchFullTrustProcessForAppAsync(HSTRING fullTrustPackageRelativeAppId, HSTRING parameterGroupId, Windows.Foundation.IAsyncAction* return_asyncAction);
}

@uuid("39c6ec9a-ae6e-46f9-a07a-cfc23f88733e")
interface ILeavingBackgroundEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("163c792f-bd75-413c-bf23-b1fe7b95d825")
@WinrtFactory("Windows.ApplicationModel.Package")
interface IPackage : IInspectable
{
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
extern(Windows):
	HRESULT get_Status(Windows.ApplicationModel.PackageStatus* return_value);
	HRESULT get_InstalledDate(Windows.Foundation.DateTime* return_value);
	HRESULT abi_GetAppListEntriesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Core.AppListEntry))* return_operation);
}

@uuid("65aed1ae-b95b-450c-882b-6255187f397e")
@WinrtFactory("Windows.ApplicationModel.Package")
interface IPackage4 : IInspectable
{
extern(Windows):
	HRESULT get_SignatureKind(Windows.ApplicationModel.PackageSignatureKind* return_value);
	HRESULT get_IsOptional(bool* return_value);
	HRESULT abi_VerifyContentIntegrityAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("0e842dd4-d9ac-45ed-9a1e-74ce056b2635")
@WinrtFactory("Windows.ApplicationModel.Package")
interface IPackage5 : IInspectable
{
extern(Windows):
	HRESULT abi_GetContentGroupsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.PackageContentGroup))* return_operation);
	HRESULT abi_GetContentGroupAsync(HSTRING name, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.PackageContentGroup)* return_operation);
	HRESULT abi_StageContentGroupsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) names, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.PackageContentGroup))* return_operation);
	HRESULT abi_StageContentGroupsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) names, bool moveToHeadOfQueue, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.PackageContentGroup))* return_operation);
	HRESULT abi_SetInUseAsync(bool inUse, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("230a3751-9de3-4445-be74-91fb325abefe")
@WinrtFactory("Windows.ApplicationModel.PackageCatalog")
interface IPackageCatalog : IInspectable
{
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
extern(Windows):
	HRESULT add_PackageContentGroupStaging(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageContentGroupStagingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PackageContentGroupStaging(EventRegistrationToken token);
	HRESULT abi_AddOptionalPackageAsync(HSTRING optionalPackageFamilyName, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.PackageCatalogAddOptionalPackageResult)* return_operation);
}

@uuid("3bf10cd4-b4df-47b3-a963-e2fa832f7dd3")
@WinrtFactory("Windows.ApplicationModel.PackageCatalogAddOptionalPackageResult")
interface IPackageCatalogAddOptionalPackageResult : IInspectable
{
extern(Windows):
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("a18c9696-e65b-4634-ba21-5e63eb7244a7")
@WinrtFactory("Windows.ApplicationModel.PackageCatalog")
interface IPackageCatalogStatics : IInspectable
{
extern(Windows):
	HRESULT abi_OpenForCurrentPackage(Windows.ApplicationModel.PackageCatalog* return_value);
	HRESULT abi_OpenForCurrentUser(Windows.ApplicationModel.PackageCatalog* return_value);
}

@uuid("8f62695d-120a-4798-b5e1-5800dda8f2e1")
@WinrtFactory("Windows.ApplicationModel.PackageContentGroup")
interface IPackageContentGroup : IInspectable
{
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
extern(Windows):
	HRESULT get_RequiredGroupName(HSTRING* return_value);
}

@uuid("1adb665e-37c7-4790-9980-dd7ae74e8bb2")
@WinrtFactory("Windows.ApplicationModel.PackageId")
interface IPackageId : IInspectable
{
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
extern(Windows):
	HRESULT get_ProductId(HSTRING* return_value);
	HRESULT get_Author(HSTRING* return_value);
}

@uuid("97741eb7-ab7a-401a-8b61-eb0e7faff237")
@WinrtFactory("Windows.ApplicationModel.PackageInstallingEventArgs")
interface IPackageInstallingEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT get_Current(Windows.ApplicationModel.Package* return_value);
}

@uuid("5fe74f71-a365-4c09-a02d-046d525ea1da")
@WinrtFactory("Windows.ApplicationModel.PackageStatus")
interface IPackageStatus : IInspectable
{
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
extern(Windows):
	HRESULT get_IsPartiallyStaged(bool* return_value);
}

@uuid("437d714d-bd80-4a70-bc50-f6e796509575")
@WinrtFactory("Windows.ApplicationModel.PackageStatusChangedEventArgs")
interface IPackageStatusChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Package(Windows.ApplicationModel.Package* return_value);
}

@uuid("4443aa52-ab22-44cd-82bb-4ec9b827367a")
@WinrtFactory("Windows.ApplicationModel.PackageUninstallingEventArgs")
interface IPackageUninstallingEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT abi_GetForCurrentPackageAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.StartupTask))* return_operation);
	HRESULT abi_GetAsync(HSTRING taskId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.StartupTask)* return_operation);
}

@uuid("59140509-8bc9-4eb4-b636-dabdc4f46f66")
interface ISuspendingDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("96061c05-2dba-4d08-b0bd-2b30a131c6aa")
interface ISuspendingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_SuspendingOperation(Windows.ApplicationModel.SuspendingOperation* return_value);
}

@uuid("9da4ca41-20e1-4e9b-9f65-a9f435340c3a")
interface ISuspendingOperation : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.ApplicationModel.SuspendingDeferral* return_deferral);
	HRESULT get_Deadline(Windows.Foundation.DateTime* return_value);
}

interface AppDisplayInfo : Windows.ApplicationModel.IAppDisplayInfo
{
extern(Windows):
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IAppDisplayInfo)this.asInterface(uuid("1aeb1103-e4d4-41aa-a4f6-c4a276e79eac"))).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IAppDisplayInfo)this.asInterface(uuid("1aeb1103-e4d4-41aa-a4f6-c4a276e79eac"))).get_Description(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.RandomAccessStreamReference GetLogo(Windows.Foundation.Size size)
	{
		Windows.Storage.Streams.RandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.ApplicationModel.IAppDisplayInfo)this.asInterface(uuid("1aeb1103-e4d4-41aa-a4f6-c4a276e79eac"))).abi_GetLogo(size, &_ret));
		return _ret;
	}
}

interface AppInfo : Windows.ApplicationModel.IAppInfo
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IAppInfo)this.asInterface(uuid("cf7f59b3-6a09-4de8-a6c0-5792d56880d1"))).get_Id(&_ret));
		return _ret;
	}
	final HSTRING AppUserModelId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IAppInfo)this.asInterface(uuid("cf7f59b3-6a09-4de8-a6c0-5792d56880d1"))).get_AppUserModelId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.AppDisplayInfo DisplayInfo()
	{
		Windows.ApplicationModel.AppDisplayInfo _ret;
		Debug.OK((cast(Windows.ApplicationModel.IAppInfo)this.asInterface(uuid("cf7f59b3-6a09-4de8-a6c0-5792d56880d1"))).get_DisplayInfo(&_ret));
		return _ret;
	}
	final HSTRING PackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IAppInfo)this.asInterface(uuid("cf7f59b3-6a09-4de8-a6c0-5792d56880d1"))).get_PackageFamilyName(&_ret));
		return _ret;
	}
}

interface DesignMode
{
	private static Windows.ApplicationModel.IDesignModeStatics _staticInstance;
	public static Windows.ApplicationModel.IDesignModeStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.IDesignModeStatics);
		return _staticInstance;
	}
	static bool DesignModeEnabled()
	{
		bool _ret;
		Debug.OK(staticInstance.get_DesignModeEnabled(&_ret));
		return _ret;
	}
}

interface EnteredBackgroundEventArgs : Windows.ApplicationModel.IEnteredBackgroundEventArgs
{
extern(Windows):
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.ApplicationModel.IEnteredBackgroundEventArgs)this.asInterface(uuid("f722dcc2-9827-403d-aaed-ecca9ac17398"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface FullTrustProcessLauncher
{
	private static Windows.ApplicationModel.IFullTrustProcessLauncherStatics _staticInstance;
	public static Windows.ApplicationModel.IFullTrustProcessLauncherStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.IFullTrustProcessLauncherStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncAction LaunchFullTrustProcessForCurrentAppAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_LaunchFullTrustProcessForCurrentAppAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction LaunchFullTrustProcessForCurrentAppAsync(HSTRING parameterGroupId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_LaunchFullTrustProcessForCurrentAppAsync(parameterGroupId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction LaunchFullTrustProcessForAppAsync(HSTRING fullTrustPackageRelativeAppId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_LaunchFullTrustProcessForAppAsync(fullTrustPackageRelativeAppId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction LaunchFullTrustProcessForAppAsync(HSTRING fullTrustPackageRelativeAppId, HSTRING parameterGroupId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_LaunchFullTrustProcessForAppAsync(fullTrustPackageRelativeAppId, parameterGroupId, &_ret));
		return _ret;
	}
}

interface LeavingBackgroundEventArgs : Windows.ApplicationModel.ILeavingBackgroundEventArgs
{
extern(Windows):
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.ApplicationModel.ILeavingBackgroundEventArgs)this.asInterface(uuid("39c6ec9a-ae6e-46f9-a07a-cfc23f88733e"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface Package : Windows.ApplicationModel.IPackage, Windows.ApplicationModel.IPackage2, Windows.ApplicationModel.IPackage3, Windows.ApplicationModel.IPackageWithMetadata, Windows.ApplicationModel.IPackage4, Windows.ApplicationModel.IPackage5
{
extern(Windows):
	final Windows.ApplicationModel.PackageId Id()
	{
		Windows.ApplicationModel.PackageId _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage)this.asInterface(uuid("163c792f-bd75-413c-bf23-b1fe7b95d825"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Storage.StorageFolder InstalledLocation()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage)this.asInterface(uuid("163c792f-bd75-413c-bf23-b1fe7b95d825"))).get_InstalledLocation(&_ret));
		return _ret;
	}
	final bool IsFramework()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage)this.asInterface(uuid("163c792f-bd75-413c-bf23-b1fe7b95d825"))).get_IsFramework(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Package) Dependencies()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Package) _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage)this.asInterface(uuid("163c792f-bd75-413c-bf23-b1fe7b95d825"))).get_Dependencies(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage2)this.asInterface(uuid("a6612fb6-7688-4ace-95fb-359538e7aa01"))).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING PublisherDisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage2)this.asInterface(uuid("a6612fb6-7688-4ace-95fb-359538e7aa01"))).get_PublisherDisplayName(&_ret));
		return _ret;
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage2)this.asInterface(uuid("a6612fb6-7688-4ace-95fb-359538e7aa01"))).get_Description(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri Logo()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage2)this.asInterface(uuid("a6612fb6-7688-4ace-95fb-359538e7aa01"))).get_Logo(&_ret));
		return _ret;
	}
	final bool IsResourcePackage()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage2)this.asInterface(uuid("a6612fb6-7688-4ace-95fb-359538e7aa01"))).get_IsResourcePackage(&_ret));
		return _ret;
	}
	final bool IsBundle()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage2)this.asInterface(uuid("a6612fb6-7688-4ace-95fb-359538e7aa01"))).get_IsBundle(&_ret));
		return _ret;
	}
	final bool IsDevelopmentMode()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage2)this.asInterface(uuid("a6612fb6-7688-4ace-95fb-359538e7aa01"))).get_IsDevelopmentMode(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.PackageStatus Status()
	{
		Windows.ApplicationModel.PackageStatus _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage3)this.asInterface(uuid("5f738b61-f86a-4917-93d1-f1ee9d3b35d9"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime InstalledDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage3)this.asInterface(uuid("5f738b61-f86a-4917-93d1-f1ee9d3b35d9"))).get_InstalledDate(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Core.AppListEntry)) GetAppListEntriesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Core.AppListEntry)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage3)this.asInterface(uuid("5f738b61-f86a-4917-93d1-f1ee9d3b35d9"))).abi_GetAppListEntriesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime InstallDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageWithMetadata)this.asInterface(uuid("95949780-1de9-40f2-b452-0de9f1910012"))).get_InstallDate(&_ret));
		return _ret;
	}
	final HSTRING GetThumbnailToken()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageWithMetadata)this.asInterface(uuid("95949780-1de9-40f2-b452-0de9f1910012"))).abi_GetThumbnailToken(&_ret));
		return _ret;
	}
	deprecated("Launch may be altered or unavailable for releases after Windows 8.1. Instead, for SmartCardTrigger scenarios use SmartCardTriggerDetails.TryLaunchSelfAsync")
	final void Launch(HSTRING parameters)
	{
		Debug.OK((cast(Windows.ApplicationModel.IPackageWithMetadata)this.asInterface(uuid("95949780-1de9-40f2-b452-0de9f1910012"))).abi_Launch(parameters));
	}
	final Windows.ApplicationModel.PackageSignatureKind SignatureKind()
	{
		Windows.ApplicationModel.PackageSignatureKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage4)this.asInterface(uuid("65aed1ae-b95b-450c-882b-6255187f397e"))).get_SignatureKind(&_ret));
		return _ret;
	}
	final bool IsOptional()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage4)this.asInterface(uuid("65aed1ae-b95b-450c-882b-6255187f397e"))).get_IsOptional(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) VerifyContentIntegrityAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage4)this.asInterface(uuid("65aed1ae-b95b-450c-882b-6255187f397e"))).abi_VerifyContentIntegrityAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.PackageContentGroup)) GetContentGroupsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.PackageContentGroup)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage5)this.asInterface(uuid("0e842dd4-d9ac-45ed-9a1e-74ce056b2635"))).abi_GetContentGroupsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.PackageContentGroup) GetContentGroupAsync(HSTRING name)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.PackageContentGroup) _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage5)this.asInterface(uuid("0e842dd4-d9ac-45ed-9a1e-74ce056b2635"))).abi_GetContentGroupAsync(name, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.PackageContentGroup)) StageContentGroupsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) names)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.PackageContentGroup)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage5)this.asInterface(uuid("0e842dd4-d9ac-45ed-9a1e-74ce056b2635"))).abi_StageContentGroupsAsync(names, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.PackageContentGroup)) StageContentGroupsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) names, bool moveToHeadOfQueue)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.PackageContentGroup)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage5)this.asInterface(uuid("0e842dd4-d9ac-45ed-9a1e-74ce056b2635"))).abi_StageContentGroupsAsync(names, moveToHeadOfQueue, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) SetInUseAsync(bool inUse)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackage5)this.asInterface(uuid("0e842dd4-d9ac-45ed-9a1e-74ce056b2635"))).abi_SetInUseAsync(inUse, &_ret));
		return _ret;
	}

	private static Windows.ApplicationModel.IPackageStatics _staticInstance;
	public static Windows.ApplicationModel.IPackageStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.IPackageStatics);
		return _staticInstance;
	}
	static Windows.ApplicationModel.Package Current()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK(staticInstance.get_Current(&_ret));
		return _ret;
	}
}

interface PackageCatalog : Windows.ApplicationModel.IPackageCatalog, Windows.ApplicationModel.IPackageCatalog2
{
extern(Windows):
	final EventRegistrationToken OnPackageStaging(void delegate(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageStagingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.IPackageCatalog)this.asInterface(uuid("230a3751-9de3-4445-be74-91fb325abefe"))).add_PackageStaging(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageStagingEventArgs), Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageStagingEventArgs)(fn), &tok));
		return tok;
	}
	final void removePackageStaging(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.IPackageCatalog)this.asInterface(uuid("230a3751-9de3-4445-be74-91fb325abefe"))).remove_PackageStaging(token));
	}
	final EventRegistrationToken OnPackageInstalling(void delegate(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageInstallingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.IPackageCatalog)this.asInterface(uuid("230a3751-9de3-4445-be74-91fb325abefe"))).add_PackageInstalling(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageInstallingEventArgs), Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageInstallingEventArgs)(fn), &tok));
		return tok;
	}
	final void removePackageInstalling(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.IPackageCatalog)this.asInterface(uuid("230a3751-9de3-4445-be74-91fb325abefe"))).remove_PackageInstalling(token));
	}
	final EventRegistrationToken OnPackageUpdating(void delegate(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageUpdatingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.IPackageCatalog)this.asInterface(uuid("230a3751-9de3-4445-be74-91fb325abefe"))).add_PackageUpdating(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageUpdatingEventArgs), Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageUpdatingEventArgs)(fn), &tok));
		return tok;
	}
	final void removePackageUpdating(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.IPackageCatalog)this.asInterface(uuid("230a3751-9de3-4445-be74-91fb325abefe"))).remove_PackageUpdating(token));
	}
	final EventRegistrationToken OnPackageUninstalling(void delegate(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageUninstallingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.IPackageCatalog)this.asInterface(uuid("230a3751-9de3-4445-be74-91fb325abefe"))).add_PackageUninstalling(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageUninstallingEventArgs), Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageUninstallingEventArgs)(fn), &tok));
		return tok;
	}
	final void removePackageUninstalling(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.IPackageCatalog)this.asInterface(uuid("230a3751-9de3-4445-be74-91fb325abefe"))).remove_PackageUninstalling(token));
	}
	final EventRegistrationToken OnPackageStatusChanged(void delegate(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageStatusChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.IPackageCatalog)this.asInterface(uuid("230a3751-9de3-4445-be74-91fb325abefe"))).add_PackageStatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageStatusChangedEventArgs), Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageStatusChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePackageStatusChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.IPackageCatalog)this.asInterface(uuid("230a3751-9de3-4445-be74-91fb325abefe"))).remove_PackageStatusChanged(token));
	}
	final EventRegistrationToken OnPackageContentGroupStaging(void delegate(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageContentGroupStagingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.IPackageCatalog2)this.asInterface(uuid("96a60c36-8ff7-4344-b6bf-ee64c2207ed2"))).add_PackageContentGroupStaging(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageContentGroupStagingEventArgs), Windows.ApplicationModel.PackageCatalog, Windows.ApplicationModel.PackageContentGroupStagingEventArgs)(fn), &tok));
		return tok;
	}
	final void removePackageContentGroupStaging(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.IPackageCatalog2)this.asInterface(uuid("96a60c36-8ff7-4344-b6bf-ee64c2207ed2"))).remove_PackageContentGroupStaging(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.PackageCatalogAddOptionalPackageResult) AddOptionalPackageAsync(HSTRING optionalPackageFamilyName)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.PackageCatalogAddOptionalPackageResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageCatalog2)this.asInterface(uuid("96a60c36-8ff7-4344-b6bf-ee64c2207ed2"))).abi_AddOptionalPackageAsync(optionalPackageFamilyName, &_ret));
		return _ret;
	}

	private static Windows.ApplicationModel.IPackageCatalogStatics _staticInstance;
	public static Windows.ApplicationModel.IPackageCatalogStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.IPackageCatalogStatics);
		return _staticInstance;
	}
	static Windows.ApplicationModel.PackageCatalog OpenForCurrentPackage()
	{
		Windows.ApplicationModel.PackageCatalog _ret;
		Debug.OK(staticInstance.abi_OpenForCurrentPackage(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.PackageCatalog OpenForCurrentUser()
	{
		Windows.ApplicationModel.PackageCatalog _ret;
		Debug.OK(staticInstance.abi_OpenForCurrentUser(&_ret));
		return _ret;
	}
}

interface PackageCatalogAddOptionalPackageResult : Windows.ApplicationModel.IPackageCatalogAddOptionalPackageResult
{
extern(Windows):
	final Windows.ApplicationModel.Package Package()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageCatalogAddOptionalPackageResult)this.asInterface(uuid("3bf10cd4-b4df-47b3-a963-e2fa832f7dd3"))).get_Package(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageCatalogAddOptionalPackageResult)this.asInterface(uuid("3bf10cd4-b4df-47b3-a963-e2fa832f7dd3"))).get_ExtendedError(&_ret));
		return _ret;
	}
}

interface PackageContentGroup : Windows.ApplicationModel.IPackageContentGroup
{
extern(Windows):
	final Windows.ApplicationModel.Package Package()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageContentGroup)this.asInterface(uuid("8f62695d-120a-4798-b5e1-5800dda8f2e1"))).get_Package(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageContentGroup)this.asInterface(uuid("8f62695d-120a-4798-b5e1-5800dda8f2e1"))).get_Name(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.PackageContentGroupState State()
	{
		Windows.ApplicationModel.PackageContentGroupState _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageContentGroup)this.asInterface(uuid("8f62695d-120a-4798-b5e1-5800dda8f2e1"))).get_State(&_ret));
		return _ret;
	}
	final bool IsRequired()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageContentGroup)this.asInterface(uuid("8f62695d-120a-4798-b5e1-5800dda8f2e1"))).get_IsRequired(&_ret));
		return _ret;
	}

	private static Windows.ApplicationModel.IPackageContentGroupStatics _staticInstance;
	public static Windows.ApplicationModel.IPackageContentGroupStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.IPackageContentGroupStatics);
		return _staticInstance;
	}
	static HSTRING RequiredGroupName()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RequiredGroupName(&_ret));
		return _ret;
	}
}

interface PackageContentGroupStagingEventArgs : Windows.ApplicationModel.IPackageContentGroupStagingEventArgs
{
extern(Windows):
	final GUID ActivityId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageContentGroupStagingEventArgs)this.asInterface(uuid("3d7bc27e-6f27-446c-986e-d4733d4d9113"))).get_ActivityId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Package Package()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageContentGroupStagingEventArgs)this.asInterface(uuid("3d7bc27e-6f27-446c-986e-d4733d4d9113"))).get_Package(&_ret));
		return _ret;
	}
	final double Progress()
	{
		double _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageContentGroupStagingEventArgs)this.asInterface(uuid("3d7bc27e-6f27-446c-986e-d4733d4d9113"))).get_Progress(&_ret));
		return _ret;
	}
	final bool IsComplete()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageContentGroupStagingEventArgs)this.asInterface(uuid("3d7bc27e-6f27-446c-986e-d4733d4d9113"))).get_IsComplete(&_ret));
		return _ret;
	}
	final HRESULT ErrorCode()
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageContentGroupStagingEventArgs)this.asInterface(uuid("3d7bc27e-6f27-446c-986e-d4733d4d9113"))).get_ErrorCode(&_ret));
		return _ret;
	}
	final HSTRING ContentGroupName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageContentGroupStagingEventArgs)this.asInterface(uuid("3d7bc27e-6f27-446c-986e-d4733d4d9113"))).get_ContentGroupName(&_ret));
		return _ret;
	}
	final bool IsContentGroupRequired()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageContentGroupStagingEventArgs)this.asInterface(uuid("3d7bc27e-6f27-446c-986e-d4733d4d9113"))).get_IsContentGroupRequired(&_ret));
		return _ret;
	}
}

interface PackageId : Windows.ApplicationModel.IPackageId, Windows.ApplicationModel.IPackageIdWithMetadata
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageId)this.asInterface(uuid("1adb665e-37c7-4790-9980-dd7ae74e8bb2"))).get_Name(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.PackageVersion Version()
	{
		Windows.ApplicationModel.PackageVersion _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageId)this.asInterface(uuid("1adb665e-37c7-4790-9980-dd7ae74e8bb2"))).get_Version(&_ret));
		return _ret;
	}
	final Windows.System.ProcessorArchitecture Architecture()
	{
		Windows.System.ProcessorArchitecture _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageId)this.asInterface(uuid("1adb665e-37c7-4790-9980-dd7ae74e8bb2"))).get_Architecture(&_ret));
		return _ret;
	}
	final HSTRING ResourceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageId)this.asInterface(uuid("1adb665e-37c7-4790-9980-dd7ae74e8bb2"))).get_ResourceId(&_ret));
		return _ret;
	}
	final HSTRING Publisher()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageId)this.asInterface(uuid("1adb665e-37c7-4790-9980-dd7ae74e8bb2"))).get_Publisher(&_ret));
		return _ret;
	}
	final HSTRING PublisherId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageId)this.asInterface(uuid("1adb665e-37c7-4790-9980-dd7ae74e8bb2"))).get_PublisherId(&_ret));
		return _ret;
	}
	final HSTRING FullName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageId)this.asInterface(uuid("1adb665e-37c7-4790-9980-dd7ae74e8bb2"))).get_FullName(&_ret));
		return _ret;
	}
	final HSTRING FamilyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageId)this.asInterface(uuid("1adb665e-37c7-4790-9980-dd7ae74e8bb2"))).get_FamilyName(&_ret));
		return _ret;
	}
	final HSTRING ProductId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageIdWithMetadata)this.asInterface(uuid("40577a7c-0c9e-443d-9074-855f5ce0a08d"))).get_ProductId(&_ret));
		return _ret;
	}
	final HSTRING Author()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageIdWithMetadata)this.asInterface(uuid("40577a7c-0c9e-443d-9074-855f5ce0a08d"))).get_Author(&_ret));
		return _ret;
	}
}

interface PackageInstallingEventArgs : Windows.ApplicationModel.IPackageInstallingEventArgs
{
extern(Windows):
	final GUID ActivityId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageInstallingEventArgs)this.asInterface(uuid("97741eb7-ab7a-401a-8b61-eb0e7faff237"))).get_ActivityId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Package Package()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageInstallingEventArgs)this.asInterface(uuid("97741eb7-ab7a-401a-8b61-eb0e7faff237"))).get_Package(&_ret));
		return _ret;
	}
	final double Progress()
	{
		double _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageInstallingEventArgs)this.asInterface(uuid("97741eb7-ab7a-401a-8b61-eb0e7faff237"))).get_Progress(&_ret));
		return _ret;
	}
	final bool IsComplete()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageInstallingEventArgs)this.asInterface(uuid("97741eb7-ab7a-401a-8b61-eb0e7faff237"))).get_IsComplete(&_ret));
		return _ret;
	}
	final HRESULT ErrorCode()
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageInstallingEventArgs)this.asInterface(uuid("97741eb7-ab7a-401a-8b61-eb0e7faff237"))).get_ErrorCode(&_ret));
		return _ret;
	}
}

interface PackageStagingEventArgs : Windows.ApplicationModel.IPackageStagingEventArgs
{
extern(Windows):
	final GUID ActivityId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStagingEventArgs)this.asInterface(uuid("1041682d-54e2-4f51-b828-9ef7046c210f"))).get_ActivityId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Package Package()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStagingEventArgs)this.asInterface(uuid("1041682d-54e2-4f51-b828-9ef7046c210f"))).get_Package(&_ret));
		return _ret;
	}
	final double Progress()
	{
		double _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStagingEventArgs)this.asInterface(uuid("1041682d-54e2-4f51-b828-9ef7046c210f"))).get_Progress(&_ret));
		return _ret;
	}
	final bool IsComplete()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStagingEventArgs)this.asInterface(uuid("1041682d-54e2-4f51-b828-9ef7046c210f"))).get_IsComplete(&_ret));
		return _ret;
	}
	final HRESULT ErrorCode()
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStagingEventArgs)this.asInterface(uuid("1041682d-54e2-4f51-b828-9ef7046c210f"))).get_ErrorCode(&_ret));
		return _ret;
	}
}

interface PackageStatus : Windows.ApplicationModel.IPackageStatus, Windows.ApplicationModel.IPackageStatus2
{
extern(Windows):
	final bool VerifyIsOK()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStatus)this.asInterface(uuid("5fe74f71-a365-4c09-a02d-046d525ea1da"))).abi_VerifyIsOK(&_ret));
		return _ret;
	}
	final bool NotAvailable()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStatus)this.asInterface(uuid("5fe74f71-a365-4c09-a02d-046d525ea1da"))).get_NotAvailable(&_ret));
		return _ret;
	}
	final bool PackageOffline()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStatus)this.asInterface(uuid("5fe74f71-a365-4c09-a02d-046d525ea1da"))).get_PackageOffline(&_ret));
		return _ret;
	}
	final bool DataOffline()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStatus)this.asInterface(uuid("5fe74f71-a365-4c09-a02d-046d525ea1da"))).get_DataOffline(&_ret));
		return _ret;
	}
	final bool Disabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStatus)this.asInterface(uuid("5fe74f71-a365-4c09-a02d-046d525ea1da"))).get_Disabled(&_ret));
		return _ret;
	}
	final bool NeedsRemediation()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStatus)this.asInterface(uuid("5fe74f71-a365-4c09-a02d-046d525ea1da"))).get_NeedsRemediation(&_ret));
		return _ret;
	}
	final bool LicenseIssue()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStatus)this.asInterface(uuid("5fe74f71-a365-4c09-a02d-046d525ea1da"))).get_LicenseIssue(&_ret));
		return _ret;
	}
	final bool Modified()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStatus)this.asInterface(uuid("5fe74f71-a365-4c09-a02d-046d525ea1da"))).get_Modified(&_ret));
		return _ret;
	}
	final bool Tampered()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStatus)this.asInterface(uuid("5fe74f71-a365-4c09-a02d-046d525ea1da"))).get_Tampered(&_ret));
		return _ret;
	}
	final bool DependencyIssue()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStatus)this.asInterface(uuid("5fe74f71-a365-4c09-a02d-046d525ea1da"))).get_DependencyIssue(&_ret));
		return _ret;
	}
	final bool Servicing()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStatus)this.asInterface(uuid("5fe74f71-a365-4c09-a02d-046d525ea1da"))).get_Servicing(&_ret));
		return _ret;
	}
	final bool DeploymentInProgress()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStatus)this.asInterface(uuid("5fe74f71-a365-4c09-a02d-046d525ea1da"))).get_DeploymentInProgress(&_ret));
		return _ret;
	}
	final bool IsPartiallyStaged()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStatus2)this.asInterface(uuid("f428fa93-7c56-4862-acfa-abaedcc0694d"))).get_IsPartiallyStaged(&_ret));
		return _ret;
	}
}

interface PackageStatusChangedEventArgs : Windows.ApplicationModel.IPackageStatusChangedEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Package Package()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageStatusChangedEventArgs)this.asInterface(uuid("437d714d-bd80-4a70-bc50-f6e796509575"))).get_Package(&_ret));
		return _ret;
	}
}

interface PackageUninstallingEventArgs : Windows.ApplicationModel.IPackageUninstallingEventArgs
{
extern(Windows):
	final GUID ActivityId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageUninstallingEventArgs)this.asInterface(uuid("4443aa52-ab22-44cd-82bb-4ec9b827367a"))).get_ActivityId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Package Package()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageUninstallingEventArgs)this.asInterface(uuid("4443aa52-ab22-44cd-82bb-4ec9b827367a"))).get_Package(&_ret));
		return _ret;
	}
	final double Progress()
	{
		double _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageUninstallingEventArgs)this.asInterface(uuid("4443aa52-ab22-44cd-82bb-4ec9b827367a"))).get_Progress(&_ret));
		return _ret;
	}
	final bool IsComplete()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageUninstallingEventArgs)this.asInterface(uuid("4443aa52-ab22-44cd-82bb-4ec9b827367a"))).get_IsComplete(&_ret));
		return _ret;
	}
	final HRESULT ErrorCode()
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageUninstallingEventArgs)this.asInterface(uuid("4443aa52-ab22-44cd-82bb-4ec9b827367a"))).get_ErrorCode(&_ret));
		return _ret;
	}
}

interface PackageUpdatingEventArgs : Windows.ApplicationModel.IPackageUpdatingEventArgs
{
extern(Windows):
	final GUID ActivityId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageUpdatingEventArgs)this.asInterface(uuid("cd7b4228-fd74-443e-b114-23e677b0e86f"))).get_ActivityId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Package SourcePackage()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageUpdatingEventArgs)this.asInterface(uuid("cd7b4228-fd74-443e-b114-23e677b0e86f"))).get_SourcePackage(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Package TargetPackage()
	{
		Windows.ApplicationModel.Package _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageUpdatingEventArgs)this.asInterface(uuid("cd7b4228-fd74-443e-b114-23e677b0e86f"))).get_TargetPackage(&_ret));
		return _ret;
	}
	final double Progress()
	{
		double _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageUpdatingEventArgs)this.asInterface(uuid("cd7b4228-fd74-443e-b114-23e677b0e86f"))).get_Progress(&_ret));
		return _ret;
	}
	final bool IsComplete()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageUpdatingEventArgs)this.asInterface(uuid("cd7b4228-fd74-443e-b114-23e677b0e86f"))).get_IsComplete(&_ret));
		return _ret;
	}
	final HRESULT ErrorCode()
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.ApplicationModel.IPackageUpdatingEventArgs)this.asInterface(uuid("cd7b4228-fd74-443e-b114-23e677b0e86f"))).get_ErrorCode(&_ret));
		return _ret;
	}
}

interface StartupTask : Windows.ApplicationModel.IStartupTask
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.StartupTaskState) RequestEnableAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.StartupTaskState) _ret;
		Debug.OK((cast(Windows.ApplicationModel.IStartupTask)this.asInterface(uuid("f75c23c8-b5f2-4f6c-88dd-36cb1d599d17"))).abi_RequestEnableAsync(&_ret));
		return _ret;
	}
	final void Disable()
	{
		Debug.OK((cast(Windows.ApplicationModel.IStartupTask)this.asInterface(uuid("f75c23c8-b5f2-4f6c-88dd-36cb1d599d17"))).abi_Disable());
	}
	final Windows.ApplicationModel.StartupTaskState State()
	{
		Windows.ApplicationModel.StartupTaskState _ret;
		Debug.OK((cast(Windows.ApplicationModel.IStartupTask)this.asInterface(uuid("f75c23c8-b5f2-4f6c-88dd-36cb1d599d17"))).get_State(&_ret));
		return _ret;
	}
	final HSTRING TaskId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.IStartupTask)this.asInterface(uuid("f75c23c8-b5f2-4f6c-88dd-36cb1d599d17"))).get_TaskId(&_ret));
		return _ret;
	}

	private static Windows.ApplicationModel.IStartupTaskStatics _staticInstance;
	public static Windows.ApplicationModel.IStartupTaskStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.IStartupTaskStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.StartupTask)) GetForCurrentPackageAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.StartupTask)) _ret;
		Debug.OK(staticInstance.abi_GetForCurrentPackageAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.StartupTask) GetAsync(HSTRING taskId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.StartupTask) _ret;
		Debug.OK(staticInstance.abi_GetAsync(taskId, &_ret));
		return _ret;
	}
}

interface SuspendingDeferral : Windows.ApplicationModel.ISuspendingDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.ApplicationModel.ISuspendingDeferral)this.asInterface(uuid("59140509-8bc9-4eb4-b636-dabdc4f46f66"))).abi_Complete());
	}
}

interface SuspendingEventArgs : Windows.ApplicationModel.ISuspendingEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.SuspendingOperation SuspendingOperation()
	{
		Windows.ApplicationModel.SuspendingOperation _ret;
		Debug.OK((cast(Windows.ApplicationModel.ISuspendingEventArgs)this.asInterface(uuid("96061c05-2dba-4d08-b0bd-2b30a131c6aa"))).get_SuspendingOperation(&_ret));
		return _ret;
	}
}

interface SuspendingOperation : Windows.ApplicationModel.ISuspendingOperation
{
extern(Windows):
	final Windows.ApplicationModel.SuspendingDeferral GetDeferral()
	{
		Windows.ApplicationModel.SuspendingDeferral _ret;
		Debug.OK((cast(Windows.ApplicationModel.ISuspendingOperation)this.asInterface(uuid("9da4ca41-20e1-4e9b-9f65-a9f435340c3a"))).abi_GetDeferral(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Deadline()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.ISuspendingOperation)this.asInterface(uuid("9da4ca41-20e1-4e9b-9f65-a9f435340c3a"))).get_Deadline(&_ret));
		return _ret;
	}
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