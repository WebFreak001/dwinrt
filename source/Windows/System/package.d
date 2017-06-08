module Windows.System;

import dwinrt;

@uuid("e348a69a-8889-4ca3-be07-d5ffff5f0804")
@WinrtFactory("Windows.System.AppDiagnosticInfo")
interface IAppDiagnosticInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AppInfo(Windows.ApplicationModel.AppInfo* return_value);
}

@uuid("ce6925bf-10ca-40c8-a9ca-c5c96501866e")
@WinrtFactory("Windows.System.AppDiagnosticInfo")
interface IAppDiagnosticInfoStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestInfoAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.System.AppDiagnosticInfo))* return_operation);
}

@uuid("6d65339b-4d6f-45bc-9c5e-e49b3ff2758d")
@WinrtFactory("Windows.System.AppMemoryReport")
interface IAppMemoryReport : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PrivateCommitUsage(UINT64* return_value);
	HRESULT get_PeakPrivateCommitUsage(UINT64* return_value);
	HRESULT get_TotalCommitUsage(UINT64* return_value);
	HRESULT get_TotalCommitLimit(UINT64* return_value);
}

@uuid("79f86664-feca-4da5-9e40-2bc63efdc979")
@WinrtFactory("Windows.System.AppMemoryUsageLimitChangingEventArgs")
interface IAppMemoryUsageLimitChangingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OldLimit(UINT64* return_value);
	HRESULT get_NewLimit(UINT64* return_value);
}

@uuid("bb91c27d-6b87-432a-bd04-776c6f5fb2ab")
@WinrtFactory("Windows.System.FolderLauncherOptions")
interface IFolderLauncherOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ItemsToSelect(Windows.Foundation.Collections.IVector!(Windows.Storage.IStorageItem)* return_value);
}

@uuid("7755911a-70c5-48e5-b637-5ba3441e4ee4")
@WinrtFactory("Windows.System.KnownUserProperties")
interface IKnownUserPropertiesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_FirstName(HSTRING* return_value);
	HRESULT get_LastName(HSTRING* return_value);
	HRESULT get_ProviderName(HSTRING* return_value);
	HRESULT get_AccountName(HSTRING* return_value);
	HRESULT get_GuestHost(HSTRING* return_value);
	HRESULT get_PrincipalName(HSTRING* return_value);
	HRESULT get_DomainName(HSTRING* return_value);
	HRESULT get_SessionInitiationProtocolUri(HSTRING* return_value);
}

@uuid("ec27a8df-f6d5-45ca-913a-70a40c5c8221")
@WinrtFactory("Windows.System.LaunchUriResult")
interface ILaunchUriResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.System.LaunchUriStatus* return_value);
	HRESULT get_Result(Windows.Foundation.Collections.ValueSet* return_value);
}

@uuid("bafa21d8-b071-4cd8-853e-341203e557d3")
@WinrtFactory("Windows.System.LauncherOptions")
interface ILauncherOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TreatAsUntrusted(bool* return_value);
	HRESULT set_TreatAsUntrusted(bool value);
	HRESULT get_DisplayApplicationPicker(bool* return_value);
	HRESULT set_DisplayApplicationPicker(bool value);
	HRESULT get_UI(Windows.System.LauncherUIOptions* return_value);
	HRESULT get_PreferredApplicationPackageFamilyName(HSTRING* return_value);
	HRESULT set_PreferredApplicationPackageFamilyName(HSTRING value);
	HRESULT get_PreferredApplicationDisplayName(HSTRING* return_value);
	HRESULT set_PreferredApplicationDisplayName(HSTRING value);
	HRESULT get_FallbackUri(Windows.Foundation.Uri* return_value);
	HRESULT set_FallbackUri(Windows.Foundation.Uri value);
	HRESULT get_ContentType(HSTRING* return_value);
	HRESULT set_ContentType(HSTRING value);
}

@uuid("3ba08eb4-6e40-4dce-a1a3-2f53950afb49")
@WinrtFactory("Windows.System.LauncherOptions")
interface ILauncherOptions2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetApplicationPackageFamilyName(HSTRING* return_value);
	HRESULT set_TargetApplicationPackageFamilyName(HSTRING value);
	HRESULT get_NeighboringFilesQuery(Windows.Storage.Search.StorageFileQueryResult* return_value);
	HRESULT set_NeighboringFilesQuery(Windows.Storage.Search.StorageFileQueryResult value);
}

@uuid("f0770655-4b63-4e3a-9107-4e687841923a")
@WinrtFactory("Windows.System.LauncherOptions")
interface ILauncherOptions3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IgnoreAppUriHandlers(bool* return_value);
	HRESULT set_IgnoreAppUriHandlers(bool value);
}

@uuid("ef6fd10e-e6fb-4814-a44e-57e8b9d9a01b")
@WinrtFactory("Windows.System.LauncherOptions")
interface ILauncherOptions4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LimitPickerToCurrentAppAndAppUriHandlers(bool* return_value);
	HRESULT set_LimitPickerToCurrentAppAndAppUriHandlers(bool value);
}

@uuid("277151c3-9e3e-42f6-91a4-5dfdeb232451")
@WinrtFactory("Windows.System.Launcher")
interface ILauncherStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_LaunchFileAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_LaunchFileWithOptionsAsync(Windows.Storage.IStorageFile file, Windows.System.LauncherOptions options, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_LaunchUriAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_LaunchUriWithOptionsAsync(Windows.Foundation.Uri uri, Windows.System.LauncherOptions options, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("59ba2fbb-24cb-4c02-a4c4-8294569d54f1")
@WinrtFactory("Windows.System.Launcher")
interface ILauncherStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_LaunchUriForResultsAsync(Windows.Foundation.Uri uri, Windows.System.LauncherOptions options, Windows.Foundation.IAsyncOperation!(Windows.System.LaunchUriResult)* return_operation);
	HRESULT abi_LaunchUriForResultsWithDataAsync(Windows.Foundation.Uri uri, Windows.System.LauncherOptions options, Windows.Foundation.Collections.ValueSet inputData, Windows.Foundation.IAsyncOperation!(Windows.System.LaunchUriResult)* return_operation);
	HRESULT abi_LaunchUriWithDataAsync(Windows.Foundation.Uri uri, Windows.System.LauncherOptions options, Windows.Foundation.Collections.ValueSet inputData, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_QueryUriSupportAsync(Windows.Foundation.Uri uri, Windows.System.LaunchQuerySupportType launchQuerySupportType, Windows.Foundation.IAsyncOperation!(Windows.System.LaunchQuerySupportStatus)* return_operation);
	HRESULT abi_QueryUriSupportWithPackageFamilyNameAsync(Windows.Foundation.Uri uri, Windows.System.LaunchQuerySupportType launchQuerySupportType, HSTRING packageFamilyName, Windows.Foundation.IAsyncOperation!(Windows.System.LaunchQuerySupportStatus)* return_operation);
	HRESULT abi_QueryFileSupportAsync(Windows.Storage.StorageFile file, Windows.Foundation.IAsyncOperation!(Windows.System.LaunchQuerySupportStatus)* return_operation);
	HRESULT abi_QueryFileSupportWithPackageFamilyNameAsync(Windows.Storage.StorageFile file, HSTRING packageFamilyName, Windows.Foundation.IAsyncOperation!(Windows.System.LaunchQuerySupportStatus)* return_operation);
	HRESULT abi_FindUriSchemeHandlersAsync(HSTRING scheme, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppInfo))* return_operation);
	HRESULT abi_FindUriSchemeHandlersWithLaunchUriTypeAsync(HSTRING scheme, Windows.System.LaunchQuerySupportType launchQuerySupportType, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppInfo))* return_operation);
	HRESULT abi_FindFileHandlersAsync(HSTRING extension, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppInfo))* return_operation);
}

@uuid("234261a8-9db3-4683-aa42-dc6f51d33847")
@WinrtFactory("Windows.System.Launcher")
interface ILauncherStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_LaunchFolderAsync(Windows.Storage.IStorageFolder folder, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_LaunchFolderWithOptionsAsync(Windows.Storage.IStorageFolder folder, Windows.System.FolderLauncherOptions options, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("b9ec819f-b5a5-41c6-b3b3-dd1b3178bcf2")
@WinrtFactory("Windows.System.Launcher")
interface ILauncherStatics4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_QueryAppUriSupportAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperation!(Windows.System.LaunchQuerySupportStatus)* return_operation);
	HRESULT abi_QueryAppUriSupportWithPackageFamilyNameAsync(Windows.Foundation.Uri uri, HSTRING packageFamilyName, Windows.Foundation.IAsyncOperation!(Windows.System.LaunchQuerySupportStatus)* return_operation);
	HRESULT abi_FindAppUriHandlersAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.AppInfo))* return_operation);
	HRESULT abi_LaunchUriForUserAsync(Windows.System.User user, Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperation!(Windows.System.LaunchUriStatus)* return_operation);
	HRESULT abi_LaunchUriWithOptionsForUserAsync(Windows.System.User user, Windows.Foundation.Uri uri, Windows.System.LauncherOptions options, Windows.Foundation.IAsyncOperation!(Windows.System.LaunchUriStatus)* return_operation);
	HRESULT abi_LaunchUriWithDataForUserAsync(Windows.System.User user, Windows.Foundation.Uri uri, Windows.System.LauncherOptions options, Windows.Foundation.Collections.ValueSet inputData, Windows.Foundation.IAsyncOperation!(Windows.System.LaunchUriStatus)* return_operation);
	HRESULT abi_LaunchUriForResultsForUserAsync(Windows.System.User user, Windows.Foundation.Uri uri, Windows.System.LauncherOptions options, Windows.Foundation.IAsyncOperation!(Windows.System.LaunchUriResult)* return_operation);
	HRESULT abi_LaunchUriForResultsWithDataForUserAsync(Windows.System.User user, Windows.Foundation.Uri uri, Windows.System.LauncherOptions options, Windows.Foundation.Collections.ValueSet inputData, Windows.Foundation.IAsyncOperation!(Windows.System.LaunchUriResult)* return_operation);
}

@uuid("1b25da6e-8aa6-41e9-8251-4165f5985f49")
@WinrtFactory("Windows.System.LauncherUIOptions")
interface ILauncherUIOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InvocationPoint(Windows.Foundation.IReference!(Windows.Foundation.Point)* return_value);
	HRESULT set_InvocationPoint(Windows.Foundation.IReference!(Windows.Foundation.Point) value);
	HRESULT get_SelectionRect(Windows.Foundation.IReference!(Windows.Foundation.Rect)* return_value);
	HRESULT set_SelectionRect(Windows.Foundation.IReference!(Windows.Foundation.Rect) value);
	HRESULT get_PreferredPlacement(Windows.UI.Popups.Placement* return_value);
	HRESULT set_PreferredPlacement(Windows.UI.Popups.Placement value);
}

@uuid("8a9b29f1-7ca7-49de-9bd3-3c5b7184f616")
interface ILauncherViewOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DesiredRemainingView(Windows.UI.ViewManagement.ViewSizePreference* return_value);
	HRESULT set_DesiredRemainingView(Windows.UI.ViewManagement.ViewSizePreference value);
}

@uuid("5c6c279c-d7ca-4779-9188-4057219ce64c")
@WinrtFactory("Windows.System.MemoryManager")
interface IMemoryManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AppMemoryUsage(UINT64* return_value);
	HRESULT get_AppMemoryUsageLimit(UINT64* return_value);
	HRESULT get_AppMemoryUsageLevel(Windows.System.AppMemoryUsageLevel* return_value);
	HRESULT add_AppMemoryUsageIncreased(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_AppMemoryUsageIncreased(EventRegistrationToken token);
	HRESULT add_AppMemoryUsageDecreased(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_AppMemoryUsageDecreased(EventRegistrationToken token);
	HRESULT add_AppMemoryUsageLimitChanging(Windows.Foundation.EventHandler!(Windows.System.AppMemoryUsageLimitChangingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AppMemoryUsageLimitChanging(EventRegistrationToken token);
}

@uuid("6eee351f-6d62-423f-9479-b01f9c9f7669")
@WinrtFactory("Windows.System.MemoryManager")
interface IMemoryManagerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetAppMemoryReport(Windows.System.AppMemoryReport* return_memoryReport);
	HRESULT abi_GetProcessMemoryReport(Windows.System.ProcessMemoryReport* return_memoryReport);
}

@uuid("149b59ce-92ad-4e35-89eb-50dfb4c0d91c")
@WinrtFactory("Windows.System.MemoryManager")
interface IMemoryManagerStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TrySetAppMemoryUsageLimit(UINT64 value, bool* return_result);
}

@uuid("3080b9cf-f444-4a83-beaf-a549a0f3229c")
@WinrtFactory("Windows.System.ProcessLauncherOptions")
interface IProcessLauncherOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StandardInput(Windows.Storage.Streams.IInputStream* return_value);
	HRESULT set_StandardInput(Windows.Storage.Streams.IInputStream value);
	HRESULT get_StandardOutput(Windows.Storage.Streams.IOutputStream* return_value);
	HRESULT set_StandardOutput(Windows.Storage.Streams.IOutputStream value);
	HRESULT get_StandardError(Windows.Storage.Streams.IOutputStream* return_value);
	HRESULT set_StandardError(Windows.Storage.Streams.IOutputStream value);
	HRESULT get_WorkingDirectory(HSTRING* return_value);
	HRESULT set_WorkingDirectory(HSTRING value);
}

@uuid("544c8934-86d8-4991-8e75-ece8a43b6b6d")
@WinrtFactory("Windows.System.ProcessLauncherResult")
interface IProcessLauncherResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ExitCode(UINT32* return_value);
}

@uuid("33ab66e7-2d0e-448b-a6a0-c13c3836d09c")
@WinrtFactory("Windows.System.ProcessLauncher")
interface IProcessLauncherStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RunToCompletionAsync(HSTRING fileName, HSTRING args, Windows.Foundation.IAsyncOperation!(Windows.System.ProcessLauncherResult)* return_asyncOperationResult);
	HRESULT abi_RunToCompletionAsyncWithOptions(HSTRING fileName, HSTRING args, Windows.System.ProcessLauncherOptions options, Windows.Foundation.IAsyncOperation!(Windows.System.ProcessLauncherResult)* return_asyncOperationResult);
}

@uuid("087305a8-9b70-4782-8741-3a982b6ce5e4")
@WinrtFactory("Windows.System.ProcessMemoryReport")
interface IProcessMemoryReport : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PrivateWorkingSetUsage(UINT64* return_value);
	HRESULT get_TotalWorkingSetUsage(UINT64* return_value);
}

@uuid("d581293a-6de9-4d28-9378-f86782e182bb")
@WinrtFactory("Windows.System.ProtocolForResultsOperation")
interface IProtocolForResultsOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ReportCompleted(Windows.Foundation.Collections.ValueSet data);
}

@uuid("9e3a2788-2891-4cdf-a2d6-9dff7d02e693")
@WinrtFactory("Windows.System.RemoteLauncherOptions")
interface IRemoteLauncherOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FallbackUri(Windows.Foundation.Uri* return_value);
	HRESULT set_FallbackUri(Windows.Foundation.Uri value);
	HRESULT get_PreferredAppIds(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("d7db7a93-a30c-48b7-9f21-051026a4e517")
@WinrtFactory("Windows.System.RemoteLauncher")
interface IRemoteLauncherStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_LaunchUriAsync(Windows.System.RemoteSystems.RemoteSystemConnectionRequest remoteSystemConnectionRequest, Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperation!(Windows.System.RemoteLaunchUriStatus)* return_operation);
	HRESULT abi_LaunchUriWithOptionsAsync(Windows.System.RemoteSystems.RemoteSystemConnectionRequest remoteSystemConnectionRequest, Windows.Foundation.Uri uri, Windows.System.RemoteLauncherOptions options, Windows.Foundation.IAsyncOperation!(Windows.System.RemoteLaunchUriStatus)* return_operation);
	HRESULT abi_LaunchUriWithDataAsync(Windows.System.RemoteSystems.RemoteSystemConnectionRequest remoteSystemConnectionRequest, Windows.Foundation.Uri uri, Windows.System.RemoteLauncherOptions options, Windows.Foundation.Collections.ValueSet inputData, Windows.Foundation.IAsyncOperation!(Windows.System.RemoteLaunchUriStatus)* return_operation);
}

@uuid("72e247ed-dd5b-4d6c-b1d0-c57a7bbb5f94")
@WinrtFactory("Windows.System.ShutdownManager")
interface IShutdownManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_BeginShutdown(Windows.System.ShutdownKind shutdownKind, Windows.Foundation.TimeSpan timeout);
	HRESULT abi_CancelShutdown();
}

@uuid("0f69a02f-9c34-43c7-a8c3-70b30a7f7504")
@WinrtFactory("Windows.System.ShutdownManager")
interface IShutdownManagerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_IsPowerStateSupported(Windows.System.PowerState powerState, bool* return_value);
	HRESULT abi_EnterPowerState(Windows.System.PowerState powerState);
	HRESULT abi_EnterPowerStateWithTimeSpan(Windows.System.PowerState powerState, Windows.Foundation.TimeSpan wakeUpAfter);
}

@uuid("9b3b2bea-a101-41ae-9fbd-028728bab73d")
@WinrtFactory("Windows.System.TimeZoneSettings")
interface ITimeZoneSettingsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CurrentTimeZoneDisplayName(HSTRING* return_value);
	HRESULT get_SupportedTimeZoneDisplayNames(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_CanChangeTimeZone(bool* return_value);
	HRESULT abi_ChangeTimeZoneByDisplayName(HSTRING timeZoneDisplayName);
}

@uuid("df9a26c6-e746-4bcd-b5d4-120103c4209b")
@WinrtFactory("Windows.System.User")
interface IUser : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NonRoamableId(HSTRING* return_value);
	HRESULT get_AuthenticationStatus(Windows.System.UserAuthenticationStatus* return_value);
	HRESULT get_Type(Windows.System.UserType* return_value);
	HRESULT abi_GetPropertyAsync(HSTRING value, Windows.Foundation.IAsyncOperation!(IInspectable)* return_operation);
	HRESULT abi_GetPropertiesAsync(Windows.Foundation.Collections.IVectorView!(HSTRING) values, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IPropertySet)* return_operation);
	HRESULT abi_GetPictureAsync(Windows.System.UserPictureSize desiredSize, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamReference)* return_operation);
}

@uuid("88b59568-bb30-42fb-a270-e9902e40efa7")
@WinrtFactory("Windows.System.UserAuthenticationStatusChangeDeferral")
interface IUserAuthenticationStatusChangeDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

@uuid("8c030f28-a711-4c1e-ab48-04179c15938f")
@WinrtFactory("Windows.System.UserAuthenticationStatusChangingEventArgs")
interface IUserAuthenticationStatusChangingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeferral(Windows.System.UserAuthenticationStatusChangeDeferral* return_deferral);
	HRESULT get_User(Windows.System.User* return_value);
	HRESULT get_NewStatus(Windows.System.UserAuthenticationStatus* return_value);
	HRESULT get_CurrentStatus(Windows.System.UserAuthenticationStatus* return_value);
}

@uuid("086459dc-18c6-48db-bc99-724fb9203ccc")
@WinrtFactory("Windows.System.UserChangedEventArgs")
interface IUserChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("bd1f6f6c-bb5d-4d7b-a5f0-c8cd11a38d42")
@WinrtFactory("Windows.System.UserDeviceAssociationChangedEventArgs")
interface IUserDeviceAssociationChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_NewUser(Windows.System.User* return_value);
	HRESULT get_OldUser(Windows.System.User* return_value);
}

@uuid("7e491e14-f85a-4c07-8da9-7fe3d0542343")
@WinrtFactory("Windows.System.UserDeviceAssociation")
interface IUserDeviceAssociationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FindUserFromDeviceId(HSTRING deviceId, Windows.System.User* return_user);
	HRESULT add_UserDeviceAssociationChanged(Windows.Foundation.EventHandler!(Windows.System.UserDeviceAssociationChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_UserDeviceAssociationChanged(EventRegistrationToken token);
}

@uuid("7d548008-f1e3-4a6c-8ddc-a9bb0f488aed")
@WinrtFactory("Windows.System.UserPicker")
interface IUserPicker : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AllowGuestAccounts(bool* return_value);
	HRESULT set_AllowGuestAccounts(bool value);
	HRESULT get_SuggestedSelectedUser(Windows.System.User* return_value);
	HRESULT set_SuggestedSelectedUser(Windows.System.User value);
	HRESULT abi_PickSingleUserAsync(Windows.Foundation.IAsyncOperation!(Windows.System.User)* return_pickSingleUserOperation);
}

@uuid("de3290dc-7e73-4df6-a1ae-4d7eca82b40d")
@WinrtFactory("Windows.System.UserPicker")
interface IUserPickerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_IsSupported(bool* return_value);
}

@uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fdd")
@WinrtFactory("Windows.System.User")
interface IUserStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWatcher(Windows.System.UserWatcher* return_watcher);
	HRESULT abi_FindAllAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.System.User))* return_operation);
	HRESULT abi_FindAllAsyncByType(Windows.System.UserType type, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.System.User))* return_operation);
	HRESULT abi_FindAllAsyncByTypeAndStatus(Windows.System.UserType type, Windows.System.UserAuthenticationStatus status, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.System.User))* return_operation);
	HRESULT abi_GetFromId(HSTRING nonRoamableId, Windows.System.User* return_value);
}

@uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb")
@WinrtFactory("Windows.System.UserWatcher")
interface IUserWatcher : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.System.UserWatcherStatus* return_value);
	HRESULT abi_Start();
	HRESULT abi_Stop();
	HRESULT add_Added(Windows.Foundation.TypedEventHandler!(Windows.System.UserWatcher, Windows.System.UserChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Added(EventRegistrationToken token);
	HRESULT add_Removed(Windows.Foundation.TypedEventHandler!(Windows.System.UserWatcher, Windows.System.UserChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Removed(EventRegistrationToken token);
	HRESULT add_Updated(Windows.Foundation.TypedEventHandler!(Windows.System.UserWatcher, Windows.System.UserChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Updated(EventRegistrationToken token);
	HRESULT add_AuthenticationStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.System.UserWatcher, Windows.System.UserChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AuthenticationStatusChanged(EventRegistrationToken token);
	HRESULT add_AuthenticationStatusChanging(Windows.Foundation.TypedEventHandler!(Windows.System.UserWatcher, Windows.System.UserAuthenticationStatusChangingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AuthenticationStatusChanging(EventRegistrationToken token);
	HRESULT add_EnumerationCompleted(Windows.Foundation.TypedEventHandler!(Windows.System.UserWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_EnumerationCompleted(EventRegistrationToken token);
	HRESULT add_Stopped(Windows.Foundation.TypedEventHandler!(Windows.System.UserWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Stopped(EventRegistrationToken token);
}

interface AppDiagnosticInfo
{
}

interface AppMemoryReport
{
}

interface AppMemoryUsageLimitChangingEventArgs
{
}

interface FolderLauncherOptions
{
}

interface LaunchUriResult
{
}

interface LauncherOptions
{
}

interface LauncherUIOptions
{
}

interface ProcessLauncherOptions
{
}

interface ProcessLauncherResult
{
}

interface ProcessMemoryReport
{
}

interface ProtocolForResultsOperation
{
}

interface RemoteLauncherOptions
{
}

interface User
{
}

interface UserAuthenticationStatusChangeDeferral
{
}

interface UserAuthenticationStatusChangingEventArgs
{
}

interface UserChangedEventArgs
{
}

interface UserDeviceAssociationChangedEventArgs
{
}

interface UserPicker
{
}

interface UserWatcher
{
}

enum AppMemoryUsageLevel
{
	Low = 0,
	Medium = 1,
	High = 2,
	OverLimit = 3
}

enum LaunchFileStatus
{
	Success = 0,
	AppUnavailable = 1,
	DeniedByPolicy = 2,
	FileTypeNotSupported = 3,
	Unknown = 4
}

enum LaunchQuerySupportStatus
{
	Available = 0,
	AppNotInstalled = 1,
	AppUnavailable = 2,
	NotSupported = 3,
	Unknown = 4
}

enum LaunchQuerySupportType
{
	Uri = 0,
	UriForResults = 1
}

enum LaunchUriStatus
{
	Success = 0,
	AppUnavailable = 1,
	ProtocolUnavailable = 2,
	Unknown = 3
}

enum PowerState
{
	ConnectedStandby = 0,
	SleepS3 = 1
}

enum ProcessorArchitecture
{
	X86 = 0,
	Arm = 5,
	X64 = 9,
	Neutral = 11,
	Unknown = 65535
}

enum RemoteLaunchUriStatus
{
	Unknown = 0,
	Success = 1,
	AppUnavailable = 2,
	ProtocolUnavailable = 3,
	RemoteSystemUnavailable = 4,
	ValueSetTooLarge = 5,
	DeniedByLocalSystem = 6,
	DeniedByRemoteSystem = 7
}

enum ShutdownKind
{
	Shutdown = 0,
	Restart = 1
}

enum UserAuthenticationStatus
{
	Unauthenticated = 0,
	LocallyAuthenticated = 1,
	RemotelyAuthenticated = 2
}

enum UserPictureSize
{
	Size64x64 = 0,
	Size208x208 = 1,
	Size424x424 = 2,
	Size1080x1080 = 3
}

enum UserType
{
	LocalUser = 0,
	RemoteUser = 1,
	LocalGuest = 2,
	RemoteGuest = 3
}

enum UserWatcherStatus
{
	Created = 0,
	Started = 1,
	EnumerationCompleted = 2,
	Stopping = 3,
	Stopped = 4,
	Aborted = 5
}

enum VirtualKey
{
	None = 0,
	LeftButton = 1,
	RightButton = 2,
	Cancel = 3,
	MiddleButton = 4,
	XButton1 = 5,
	XButton2 = 6,
	Back = 8,
	Tab = 9,
	Clear = 12,
	Enter = 13,
	Shift = 16,
	Control = 17,
	Menu = 18,
	Pause = 19,
	CapitalLock = 20,
	Kana = 21,
	Hangul = 21,
	Junja = 23,
	Final = 24,
	Hanja = 25,
	Kanji = 25,
	Escape = 27,
	Convert = 28,
	NonConvert = 29,
	Accept = 30,
	ModeChange = 31,
	Space = 32,
	PageUp = 33,
	PageDown = 34,
	End = 35,
	Home = 36,
	Left = 37,
	Up = 38,
	Right = 39,
	Down = 40,
	Select = 41,
	Print = 42,
	Execute = 43,
	Snapshot = 44,
	Insert = 45,
	Delete = 46,
	Help = 47,
	Number0 = 48,
	Number1 = 49,
	Number2 = 50,
	Number3 = 51,
	Number4 = 52,
	Number5 = 53,
	Number6 = 54,
	Number7 = 55,
	Number8 = 56,
	Number9 = 57,
	A = 65,
	B = 66,
	C = 67,
	D = 68,
	E = 69,
	F = 70,
	G = 71,
	H = 72,
	I = 73,
	J = 74,
	K = 75,
	L = 76,
	M = 77,
	N = 78,
	O = 79,
	P = 80,
	Q = 81,
	R = 82,
	S = 83,
	T = 84,
	U = 85,
	V = 86,
	W = 87,
	X = 88,
	Y = 89,
	Z = 90,
	LeftWindows = 91,
	RightWindows = 92,
	Application = 93,
	Sleep = 95,
	NumberPad0 = 96,
	NumberPad1 = 97,
	NumberPad2 = 98,
	NumberPad3 = 99,
	NumberPad4 = 100,
	NumberPad5 = 101,
	NumberPad6 = 102,
	NumberPad7 = 103,
	NumberPad8 = 104,
	NumberPad9 = 105,
	Multiply = 106,
	Add = 107,
	Separator = 108,
	Subtract = 109,
	Decimal = 110,
	Divide = 111,
	F1 = 112,
	F2 = 113,
	F3 = 114,
	F4 = 115,
	F5 = 116,
	F6 = 117,
	F7 = 118,
	F8 = 119,
	F9 = 120,
	F10 = 121,
	F11 = 122,
	F12 = 123,
	F13 = 124,
	F14 = 125,
	F15 = 126,
	F16 = 127,
	F17 = 128,
	F18 = 129,
	F19 = 130,
	F20 = 131,
	F21 = 132,
	F22 = 133,
	F23 = 134,
	F24 = 135,
	NavigationView = 136,
	NavigationMenu = 137,
	NavigationUp = 138,
	NavigationDown = 139,
	NavigationLeft = 140,
	NavigationRight = 141,
	NavigationAccept = 142,
	NavigationCancel = 143,
	NumberKeyLock = 144,
	Scroll = 145,
	LeftShift = 160,
	RightShift = 161,
	LeftControl = 162,
	RightControl = 163,
	LeftMenu = 164,
	RightMenu = 165,
	GoBack = 166,
	GoForward = 167,
	Refresh = 168,
	Stop = 169,
	Search = 170,
	Favorites = 171,
	GoHome = 172,
	GamepadA = 195,
	GamepadB = 196,
	GamepadX = 197,
	GamepadY = 198,
	GamepadRightShoulder = 199,
	GamepadLeftShoulder = 200,
	GamepadLeftTrigger = 201,
	GamepadRightTrigger = 202,
	GamepadDPadUp = 203,
	GamepadDPadDown = 204,
	GamepadDPadLeft = 205,
	GamepadDPadRight = 206,
	GamepadMenu = 207,
	GamepadView = 208,
	GamepadLeftThumbstickButton = 209,
	GamepadRightThumbstickButton = 210,
	GamepadLeftThumbstickUp = 211,
	GamepadLeftThumbstickDown = 212,
	GamepadLeftThumbstickRight = 213,
	GamepadLeftThumbstickLeft = 214,
	GamepadRightThumbstickUp = 215,
	GamepadRightThumbstickDown = 216,
	GamepadRightThumbstickRight = 217,
	GamepadRightThumbstickLeft = 218
}

@bitflags
enum VirtualKeyModifiers
{
	None = 0x0,
	Control = 0x1,
	Menu = 0x2,
	Shift = 0x4,
	Windows = 0x8
}