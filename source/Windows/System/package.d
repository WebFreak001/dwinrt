module Windows.System;

import dwinrt;

@uuid("e348a69a-8889-4ca3-be07-d5ffff5f0804")
@WinrtFactory("Windows.System.AppDiagnosticInfo")
interface IAppDiagnosticInfo : IInspectable
{
extern(Windows):
	HRESULT get_AppInfo(Windows.ApplicationModel.AppInfo* return_value);
}

@uuid("ce6925bf-10ca-40c8-a9ca-c5c96501866e")
@WinrtFactory("Windows.System.AppDiagnosticInfo")
interface IAppDiagnosticInfoStatics : IInspectable
{
extern(Windows):
	HRESULT abi_RequestInfoAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.System.AppDiagnosticInfo))* return_operation);
}

@uuid("6d65339b-4d6f-45bc-9c5e-e49b3ff2758d")
@WinrtFactory("Windows.System.AppMemoryReport")
interface IAppMemoryReport : IInspectable
{
extern(Windows):
	HRESULT get_PrivateCommitUsage(ulong* return_value);
	HRESULT get_PeakPrivateCommitUsage(ulong* return_value);
	HRESULT get_TotalCommitUsage(ulong* return_value);
	HRESULT get_TotalCommitLimit(ulong* return_value);
}

@uuid("79f86664-feca-4da5-9e40-2bc63efdc979")
@WinrtFactory("Windows.System.AppMemoryUsageLimitChangingEventArgs")
interface IAppMemoryUsageLimitChangingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_OldLimit(ulong* return_value);
	HRESULT get_NewLimit(ulong* return_value);
}

@uuid("bb91c27d-6b87-432a-bd04-776c6f5fb2ab")
@WinrtFactory("Windows.System.FolderLauncherOptions")
interface IFolderLauncherOptions : IInspectable
{
extern(Windows):
	HRESULT get_ItemsToSelect(Windows.Foundation.Collections.IVector!(Windows.Storage.IStorageItem)* return_value);
}

@uuid("7755911a-70c5-48e5-b637-5ba3441e4ee4")
@WinrtFactory("Windows.System.KnownUserProperties")
interface IKnownUserPropertiesStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_Status(Windows.System.LaunchUriStatus* return_value);
	HRESULT get_Result(Windows.Foundation.Collections.ValueSet* return_value);
}

@uuid("bafa21d8-b071-4cd8-853e-341203e557d3")
@WinrtFactory("Windows.System.LauncherOptions")
interface ILauncherOptions : IInspectable
{
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
extern(Windows):
	HRESULT get_IgnoreAppUriHandlers(bool* return_value);
	HRESULT set_IgnoreAppUriHandlers(bool value);
}

@uuid("ef6fd10e-e6fb-4814-a44e-57e8b9d9a01b")
@WinrtFactory("Windows.System.LauncherOptions")
interface ILauncherOptions4 : IInspectable
{
extern(Windows):
	HRESULT get_LimitPickerToCurrentAppAndAppUriHandlers(bool* return_value);
	HRESULT set_LimitPickerToCurrentAppAndAppUriHandlers(bool value);
}

@uuid("277151c3-9e3e-42f6-91a4-5dfdeb232451")
@WinrtFactory("Windows.System.Launcher")
interface ILauncherStatics : IInspectable
{
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
extern(Windows):
	HRESULT abi_LaunchFolderAsync(Windows.Storage.IStorageFolder folder, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_LaunchFolderWithOptionsAsync(Windows.Storage.IStorageFolder folder, Windows.System.FolderLauncherOptions options, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("b9ec819f-b5a5-41c6-b3b3-dd1b3178bcf2")
@WinrtFactory("Windows.System.Launcher")
interface ILauncherStatics4 : IInspectable
{
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
extern(Windows):
	HRESULT get_DesiredRemainingView(Windows.UI.ViewManagement.ViewSizePreference* return_value);
	HRESULT set_DesiredRemainingView(Windows.UI.ViewManagement.ViewSizePreference value);
}

@uuid("5c6c279c-d7ca-4779-9188-4057219ce64c")
@WinrtFactory("Windows.System.MemoryManager")
interface IMemoryManagerStatics : IInspectable
{
extern(Windows):
	HRESULT get_AppMemoryUsage(ulong* return_value);
	HRESULT get_AppMemoryUsageLimit(ulong* return_value);
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
extern(Windows):
	HRESULT abi_GetAppMemoryReport(Windows.System.AppMemoryReport* return_memoryReport);
	HRESULT abi_GetProcessMemoryReport(Windows.System.ProcessMemoryReport* return_memoryReport);
}

@uuid("149b59ce-92ad-4e35-89eb-50dfb4c0d91c")
@WinrtFactory("Windows.System.MemoryManager")
interface IMemoryManagerStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_TrySetAppMemoryUsageLimit(ulong value, bool* return_result);
}

@uuid("3080b9cf-f444-4a83-beaf-a549a0f3229c")
@WinrtFactory("Windows.System.ProcessLauncherOptions")
interface IProcessLauncherOptions : IInspectable
{
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
extern(Windows):
	HRESULT get_ExitCode(UINT32* return_value);
}

@uuid("33ab66e7-2d0e-448b-a6a0-c13c3836d09c")
@WinrtFactory("Windows.System.ProcessLauncher")
interface IProcessLauncherStatics : IInspectable
{
extern(Windows):
	HRESULT abi_RunToCompletionAsync(HSTRING fileName, HSTRING args, Windows.Foundation.IAsyncOperation!(Windows.System.ProcessLauncherResult)* return_asyncOperationResult);
	HRESULT abi_RunToCompletionAsyncWithOptions(HSTRING fileName, HSTRING args, Windows.System.ProcessLauncherOptions options, Windows.Foundation.IAsyncOperation!(Windows.System.ProcessLauncherResult)* return_asyncOperationResult);
}

@uuid("087305a8-9b70-4782-8741-3a982b6ce5e4")
@WinrtFactory("Windows.System.ProcessMemoryReport")
interface IProcessMemoryReport : IInspectable
{
extern(Windows):
	HRESULT get_PrivateWorkingSetUsage(ulong* return_value);
	HRESULT get_TotalWorkingSetUsage(ulong* return_value);
}

@uuid("d581293a-6de9-4d28-9378-f86782e182bb")
@WinrtFactory("Windows.System.ProtocolForResultsOperation")
interface IProtocolForResultsOperation : IInspectable
{
extern(Windows):
	HRESULT abi_ReportCompleted(Windows.Foundation.Collections.ValueSet data);
}

@uuid("9e3a2788-2891-4cdf-a2d6-9dff7d02e693")
@WinrtFactory("Windows.System.RemoteLauncherOptions")
interface IRemoteLauncherOptions : IInspectable
{
extern(Windows):
	HRESULT get_FallbackUri(Windows.Foundation.Uri* return_value);
	HRESULT set_FallbackUri(Windows.Foundation.Uri value);
	HRESULT get_PreferredAppIds(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("d7db7a93-a30c-48b7-9f21-051026a4e517")
@WinrtFactory("Windows.System.RemoteLauncher")
interface IRemoteLauncherStatics : IInspectable
{
extern(Windows):
	HRESULT abi_LaunchUriAsync(Windows.System.RemoteSystems.RemoteSystemConnectionRequest remoteSystemConnectionRequest, Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperation!(Windows.System.RemoteLaunchUriStatus)* return_operation);
	HRESULT abi_LaunchUriWithOptionsAsync(Windows.System.RemoteSystems.RemoteSystemConnectionRequest remoteSystemConnectionRequest, Windows.Foundation.Uri uri, Windows.System.RemoteLauncherOptions options, Windows.Foundation.IAsyncOperation!(Windows.System.RemoteLaunchUriStatus)* return_operation);
	HRESULT abi_LaunchUriWithDataAsync(Windows.System.RemoteSystems.RemoteSystemConnectionRequest remoteSystemConnectionRequest, Windows.Foundation.Uri uri, Windows.System.RemoteLauncherOptions options, Windows.Foundation.Collections.ValueSet inputData, Windows.Foundation.IAsyncOperation!(Windows.System.RemoteLaunchUriStatus)* return_operation);
}

@uuid("72e247ed-dd5b-4d6c-b1d0-c57a7bbb5f94")
@WinrtFactory("Windows.System.ShutdownManager")
interface IShutdownManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_BeginShutdown(Windows.System.ShutdownKind shutdownKind, Windows.Foundation.TimeSpan timeout);
	HRESULT abi_CancelShutdown();
}

@uuid("0f69a02f-9c34-43c7-a8c3-70b30a7f7504")
@WinrtFactory("Windows.System.ShutdownManager")
interface IShutdownManagerStatics2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_IsPowerStateSupported(Windows.System.PowerState powerState, bool* return_value);
	HRESULT abi_EnterPowerState(Windows.System.PowerState powerState);
	HRESULT abi_EnterPowerStateWithTimeSpan(Windows.System.PowerState powerState, Windows.Foundation.TimeSpan wakeUpAfter);
}
@uuid("0f69a02f-9c34-43c7-a8c3-70b30a7f7504")
@WinrtFactory("Windows.System.ShutdownManager")
interface IShutdownManagerStatics2 : IShutdownManagerStatics2_Base, Windows.System.IShutdownManagerStatics {}

@uuid("9b3b2bea-a101-41ae-9fbd-028728bab73d")
@WinrtFactory("Windows.System.TimeZoneSettings")
interface ITimeZoneSettingsStatics : IInspectable
{
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
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("8c030f28-a711-4c1e-ab48-04179c15938f")
@WinrtFactory("Windows.System.UserAuthenticationStatusChangingEventArgs")
interface IUserAuthenticationStatusChangingEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("bd1f6f6c-bb5d-4d7b-a5f0-c8cd11a38d42")
@WinrtFactory("Windows.System.UserDeviceAssociationChangedEventArgs")
interface IUserDeviceAssociationChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_NewUser(Windows.System.User* return_value);
	HRESULT get_OldUser(Windows.System.User* return_value);
}

@uuid("7e491e14-f85a-4c07-8da9-7fe3d0542343")
@WinrtFactory("Windows.System.UserDeviceAssociation")
interface IUserDeviceAssociationStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FindUserFromDeviceId(HSTRING deviceId, Windows.System.User* return_user);
	HRESULT add_UserDeviceAssociationChanged(Windows.Foundation.EventHandler!(Windows.System.UserDeviceAssociationChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_UserDeviceAssociationChanged(EventRegistrationToken token);
}

@uuid("7d548008-f1e3-4a6c-8ddc-a9bb0f488aed")
@WinrtFactory("Windows.System.UserPicker")
interface IUserPicker : IInspectable
{
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
extern(Windows):
	HRESULT abi_IsSupported(bool* return_value);
}

@uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fdd")
@WinrtFactory("Windows.System.User")
interface IUserStatics : IInspectable
{
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

interface AppDiagnosticInfo : Windows.System.IAppDiagnosticInfo
{
extern(Windows):
	final Windows.ApplicationModel.AppInfo AppInfo()
	{
		Windows.ApplicationModel.AppInfo _ret;
		Debug.OK((cast(Windows.System.IAppDiagnosticInfo)this.asInterface(uuid("e348a69a-8889-4ca3-be07-d5ffff5f0804"))).get_AppInfo(&_ret));
		return _ret;
	}

	private static Windows.System.IAppDiagnosticInfoStatics _staticInstance;
	public static Windows.System.IAppDiagnosticInfoStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.IAppDiagnosticInfoStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.System.AppDiagnosticInfo)) RequestInfoAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVector!(Windows.System.AppDiagnosticInfo)) _ret;
		Debug.OK(staticInstance.abi_RequestInfoAsync(&_ret));
		return _ret;
	}
}

interface AppMemoryReport : Windows.System.IAppMemoryReport
{
extern(Windows):
	final ulong PrivateCommitUsage()
	{
		ulong _ret;
		Debug.OK((cast(Windows.System.IAppMemoryReport)this.asInterface(uuid("6d65339b-4d6f-45bc-9c5e-e49b3ff2758d"))).get_PrivateCommitUsage(&_ret));
		return _ret;
	}
	final ulong PeakPrivateCommitUsage()
	{
		ulong _ret;
		Debug.OK((cast(Windows.System.IAppMemoryReport)this.asInterface(uuid("6d65339b-4d6f-45bc-9c5e-e49b3ff2758d"))).get_PeakPrivateCommitUsage(&_ret));
		return _ret;
	}
	final ulong TotalCommitUsage()
	{
		ulong _ret;
		Debug.OK((cast(Windows.System.IAppMemoryReport)this.asInterface(uuid("6d65339b-4d6f-45bc-9c5e-e49b3ff2758d"))).get_TotalCommitUsage(&_ret));
		return _ret;
	}
	final ulong TotalCommitLimit()
	{
		ulong _ret;
		Debug.OK((cast(Windows.System.IAppMemoryReport)this.asInterface(uuid("6d65339b-4d6f-45bc-9c5e-e49b3ff2758d"))).get_TotalCommitLimit(&_ret));
		return _ret;
	}
}

interface AppMemoryUsageLimitChangingEventArgs : Windows.System.IAppMemoryUsageLimitChangingEventArgs
{
extern(Windows):
	final ulong OldLimit()
	{
		ulong _ret;
		Debug.OK((cast(Windows.System.IAppMemoryUsageLimitChangingEventArgs)this.asInterface(uuid("79f86664-feca-4da5-9e40-2bc63efdc979"))).get_OldLimit(&_ret));
		return _ret;
	}
	final ulong NewLimit()
	{
		ulong _ret;
		Debug.OK((cast(Windows.System.IAppMemoryUsageLimitChangingEventArgs)this.asInterface(uuid("79f86664-feca-4da5-9e40-2bc63efdc979"))).get_NewLimit(&_ret));
		return _ret;
	}
}

interface FolderLauncherOptions : Windows.System.IFolderLauncherOptions, Windows.System.ILauncherViewOptions
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.Storage.IStorageItem) ItemsToSelect()
	{
		Windows.Foundation.Collections.IVector!(Windows.Storage.IStorageItem) _ret;
		Debug.OK((cast(Windows.System.IFolderLauncherOptions)this.asInterface(uuid("bb91c27d-6b87-432a-bd04-776c6f5fb2ab"))).get_ItemsToSelect(&_ret));
		return _ret;
	}
	final Windows.UI.ViewManagement.ViewSizePreference DesiredRemainingView()
	{
		Windows.UI.ViewManagement.ViewSizePreference _ret;
		Debug.OK((cast(Windows.System.ILauncherViewOptions)this.asInterface(uuid("8a9b29f1-7ca7-49de-9bd3-3c5b7184f616"))).get_DesiredRemainingView(&_ret));
		return _ret;
	}
	final void DesiredRemainingView(Windows.UI.ViewManagement.ViewSizePreference value)
	{
		Debug.OK((cast(Windows.System.ILauncherViewOptions)this.asInterface(uuid("8a9b29f1-7ca7-49de-9bd3-3c5b7184f616"))).set_DesiredRemainingView(value));
	}
	static FolderLauncherOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(FolderLauncherOptions).abi_ActivateInstance(&ret));
		return cast(FolderLauncherOptions) ret;
	}
}

interface KnownUserProperties
{
	private static Windows.System.IKnownUserPropertiesStatics _staticInstance;
	public static Windows.System.IKnownUserPropertiesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.IKnownUserPropertiesStatics);
		return _staticInstance;
	}
	static HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_DisplayName(&_ret));
		return _ret;
	}
	static HSTRING FirstName()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_FirstName(&_ret));
		return _ret;
	}
	static HSTRING LastName()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_LastName(&_ret));
		return _ret;
	}
	static HSTRING ProviderName()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ProviderName(&_ret));
		return _ret;
	}
	static HSTRING AccountName()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AccountName(&_ret));
		return _ret;
	}
	static HSTRING GuestHost()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_GuestHost(&_ret));
		return _ret;
	}
	static HSTRING PrincipalName()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_PrincipalName(&_ret));
		return _ret;
	}
	static HSTRING DomainName()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_DomainName(&_ret));
		return _ret;
	}
	static HSTRING SessionInitiationProtocolUri()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SessionInitiationProtocolUri(&_ret));
		return _ret;
	}
}

interface LaunchUriResult : Windows.System.ILaunchUriResult
{
extern(Windows):
	final Windows.System.LaunchUriStatus Status()
	{
		Windows.System.LaunchUriStatus _ret;
		Debug.OK((cast(Windows.System.ILaunchUriResult)this.asInterface(uuid("ec27a8df-f6d5-45ca-913a-70a40c5c8221"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet Result()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.System.ILaunchUriResult)this.asInterface(uuid("ec27a8df-f6d5-45ca-913a-70a40c5c8221"))).get_Result(&_ret));
		return _ret;
	}
}

interface Launcher
{
	private static Windows.System.ILauncherStatics _staticInstance;
	public static Windows.System.ILauncherStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.ILauncherStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(bool) LaunchFileAsync(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(staticInstance.abi_LaunchFileAsync(file, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(bool) LaunchFileWithOptionsAsync(Windows.Storage.IStorageFile file, Windows.System.LauncherOptions options)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(staticInstance.abi_LaunchFileWithOptionsAsync(file, options, &_ret));
		return _ret;
	}
	alias LaunchFileAsync = LaunchFileWithOptionsAsync;
	static Windows.Foundation.IAsyncOperation!(bool) LaunchUriAsync(Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(staticInstance.abi_LaunchUriAsync(uri, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(bool) LaunchUriWithOptionsAsync(Windows.Foundation.Uri uri, Windows.System.LauncherOptions options)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(staticInstance.abi_LaunchUriWithOptionsAsync(uri, options, &_ret));
		return _ret;
	}
	alias LaunchUriAsync = LaunchUriWithOptionsAsync;
}

interface LauncherOptions : Windows.System.ILauncherOptions, Windows.System.ILauncherViewOptions, Windows.System.ILauncherOptions2, Windows.System.ILauncherOptions3, Windows.System.ILauncherOptions4
{
extern(Windows):
	final bool TreatAsUntrusted()
	{
		bool _ret;
		Debug.OK((cast(Windows.System.ILauncherOptions)this.asInterface(uuid("bafa21d8-b071-4cd8-853e-341203e557d3"))).get_TreatAsUntrusted(&_ret));
		return _ret;
	}
	final void TreatAsUntrusted(bool value)
	{
		Debug.OK((cast(Windows.System.ILauncherOptions)this.asInterface(uuid("bafa21d8-b071-4cd8-853e-341203e557d3"))).set_TreatAsUntrusted(value));
	}
	final bool DisplayApplicationPicker()
	{
		bool _ret;
		Debug.OK((cast(Windows.System.ILauncherOptions)this.asInterface(uuid("bafa21d8-b071-4cd8-853e-341203e557d3"))).get_DisplayApplicationPicker(&_ret));
		return _ret;
	}
	final void DisplayApplicationPicker(bool value)
	{
		Debug.OK((cast(Windows.System.ILauncherOptions)this.asInterface(uuid("bafa21d8-b071-4cd8-853e-341203e557d3"))).set_DisplayApplicationPicker(value));
	}
	final Windows.System.LauncherUIOptions UI()
	{
		Windows.System.LauncherUIOptions _ret;
		Debug.OK((cast(Windows.System.ILauncherOptions)this.asInterface(uuid("bafa21d8-b071-4cd8-853e-341203e557d3"))).get_UI(&_ret));
		return _ret;
	}
	final HSTRING PreferredApplicationPackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.System.ILauncherOptions)this.asInterface(uuid("bafa21d8-b071-4cd8-853e-341203e557d3"))).get_PreferredApplicationPackageFamilyName(&_ret));
		return _ret;
	}
	final void PreferredApplicationPackageFamilyName(HSTRING value)
	{
		Debug.OK((cast(Windows.System.ILauncherOptions)this.asInterface(uuid("bafa21d8-b071-4cd8-853e-341203e557d3"))).set_PreferredApplicationPackageFamilyName(value));
	}
	final HSTRING PreferredApplicationDisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.System.ILauncherOptions)this.asInterface(uuid("bafa21d8-b071-4cd8-853e-341203e557d3"))).get_PreferredApplicationDisplayName(&_ret));
		return _ret;
	}
	final void PreferredApplicationDisplayName(HSTRING value)
	{
		Debug.OK((cast(Windows.System.ILauncherOptions)this.asInterface(uuid("bafa21d8-b071-4cd8-853e-341203e557d3"))).set_PreferredApplicationDisplayName(value));
	}
	final Windows.Foundation.Uri FallbackUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.System.ILauncherOptions)this.asInterface(uuid("bafa21d8-b071-4cd8-853e-341203e557d3"))).get_FallbackUri(&_ret));
		return _ret;
	}
	final void FallbackUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.System.ILauncherOptions)this.asInterface(uuid("bafa21d8-b071-4cd8-853e-341203e557d3"))).set_FallbackUri(value));
	}
	final HSTRING ContentType()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.System.ILauncherOptions)this.asInterface(uuid("bafa21d8-b071-4cd8-853e-341203e557d3"))).get_ContentType(&_ret));
		return _ret;
	}
	final void ContentType(HSTRING value)
	{
		Debug.OK((cast(Windows.System.ILauncherOptions)this.asInterface(uuid("bafa21d8-b071-4cd8-853e-341203e557d3"))).set_ContentType(value));
	}
	final Windows.UI.ViewManagement.ViewSizePreference DesiredRemainingView()
	{
		Windows.UI.ViewManagement.ViewSizePreference _ret;
		Debug.OK((cast(Windows.System.ILauncherViewOptions)this.asInterface(uuid("8a9b29f1-7ca7-49de-9bd3-3c5b7184f616"))).get_DesiredRemainingView(&_ret));
		return _ret;
	}
	final void DesiredRemainingView(Windows.UI.ViewManagement.ViewSizePreference value)
	{
		Debug.OK((cast(Windows.System.ILauncherViewOptions)this.asInterface(uuid("8a9b29f1-7ca7-49de-9bd3-3c5b7184f616"))).set_DesiredRemainingView(value));
	}
	final HSTRING TargetApplicationPackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.System.ILauncherOptions2)this.asInterface(uuid("3ba08eb4-6e40-4dce-a1a3-2f53950afb49"))).get_TargetApplicationPackageFamilyName(&_ret));
		return _ret;
	}
	final void TargetApplicationPackageFamilyName(HSTRING value)
	{
		Debug.OK((cast(Windows.System.ILauncherOptions2)this.asInterface(uuid("3ba08eb4-6e40-4dce-a1a3-2f53950afb49"))).set_TargetApplicationPackageFamilyName(value));
	}
	final Windows.Storage.Search.StorageFileQueryResult NeighboringFilesQuery()
	{
		Windows.Storage.Search.StorageFileQueryResult _ret;
		Debug.OK((cast(Windows.System.ILauncherOptions2)this.asInterface(uuid("3ba08eb4-6e40-4dce-a1a3-2f53950afb49"))).get_NeighboringFilesQuery(&_ret));
		return _ret;
	}
	final void NeighboringFilesQuery(Windows.Storage.Search.StorageFileQueryResult value)
	{
		Debug.OK((cast(Windows.System.ILauncherOptions2)this.asInterface(uuid("3ba08eb4-6e40-4dce-a1a3-2f53950afb49"))).set_NeighboringFilesQuery(value));
	}
	final bool IgnoreAppUriHandlers()
	{
		bool _ret;
		Debug.OK((cast(Windows.System.ILauncherOptions3)this.asInterface(uuid("f0770655-4b63-4e3a-9107-4e687841923a"))).get_IgnoreAppUriHandlers(&_ret));
		return _ret;
	}
	final void IgnoreAppUriHandlers(bool value)
	{
		Debug.OK((cast(Windows.System.ILauncherOptions3)this.asInterface(uuid("f0770655-4b63-4e3a-9107-4e687841923a"))).set_IgnoreAppUriHandlers(value));
	}
	final bool LimitPickerToCurrentAppAndAppUriHandlers()
	{
		bool _ret;
		Debug.OK((cast(Windows.System.ILauncherOptions4)this.asInterface(uuid("ef6fd10e-e6fb-4814-a44e-57e8b9d9a01b"))).get_LimitPickerToCurrentAppAndAppUriHandlers(&_ret));
		return _ret;
	}
	final void LimitPickerToCurrentAppAndAppUriHandlers(bool value)
	{
		Debug.OK((cast(Windows.System.ILauncherOptions4)this.asInterface(uuid("ef6fd10e-e6fb-4814-a44e-57e8b9d9a01b"))).set_LimitPickerToCurrentAppAndAppUriHandlers(value));
	}
	static LauncherOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(LauncherOptions).abi_ActivateInstance(&ret));
		return cast(LauncherOptions) ret;
	}
}

interface LauncherUIOptions : Windows.System.ILauncherUIOptions
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.Point) InvocationPoint()
	{
		Windows.Foundation.IReference!(Windows.Foundation.Point) _ret;
		Debug.OK((cast(Windows.System.ILauncherUIOptions)this.asInterface(uuid("1b25da6e-8aa6-41e9-8251-4165f5985f49"))).get_InvocationPoint(&_ret));
		return _ret;
	}
	final void InvocationPoint(Windows.Foundation.IReference!(Windows.Foundation.Point) value)
	{
		Debug.OK((cast(Windows.System.ILauncherUIOptions)this.asInterface(uuid("1b25da6e-8aa6-41e9-8251-4165f5985f49"))).set_InvocationPoint(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.Rect) SelectionRect()
	{
		Windows.Foundation.IReference!(Windows.Foundation.Rect) _ret;
		Debug.OK((cast(Windows.System.ILauncherUIOptions)this.asInterface(uuid("1b25da6e-8aa6-41e9-8251-4165f5985f49"))).get_SelectionRect(&_ret));
		return _ret;
	}
	final void SelectionRect(Windows.Foundation.IReference!(Windows.Foundation.Rect) value)
	{
		Debug.OK((cast(Windows.System.ILauncherUIOptions)this.asInterface(uuid("1b25da6e-8aa6-41e9-8251-4165f5985f49"))).set_SelectionRect(value));
	}
	final Windows.UI.Popups.Placement PreferredPlacement()
	{
		Windows.UI.Popups.Placement _ret;
		Debug.OK((cast(Windows.System.ILauncherUIOptions)this.asInterface(uuid("1b25da6e-8aa6-41e9-8251-4165f5985f49"))).get_PreferredPlacement(&_ret));
		return _ret;
	}
	final void PreferredPlacement(Windows.UI.Popups.Placement value)
	{
		Debug.OK((cast(Windows.System.ILauncherUIOptions)this.asInterface(uuid("1b25da6e-8aa6-41e9-8251-4165f5985f49"))).set_PreferredPlacement(value));
	}
}

interface MemoryManager
{
	private static Windows.System.IMemoryManagerStatics _staticInstance;
	public static Windows.System.IMemoryManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.IMemoryManagerStatics);
		return _staticInstance;
	}
	static ulong AppMemoryUsage()
	{
		ulong _ret;
		Debug.OK(staticInstance.get_AppMemoryUsage(&_ret));
		return _ret;
	}
	static ulong AppMemoryUsageLimit()
	{
		ulong _ret;
		Debug.OK(staticInstance.get_AppMemoryUsageLimit(&_ret));
		return _ret;
	}
	static Windows.System.AppMemoryUsageLevel AppMemoryUsageLevel()
	{
		Windows.System.AppMemoryUsageLevel _ret;
		Debug.OK(staticInstance.get_AppMemoryUsageLevel(&_ret));
		return _ret;
	}
	static EventRegistrationToken OnAppMemoryUsageIncreased(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_AppMemoryUsageIncreased(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeAppMemoryUsageIncreased(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_AppMemoryUsageIncreased(token));
	}
	static EventRegistrationToken OnAppMemoryUsageDecreased(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_AppMemoryUsageDecreased(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeAppMemoryUsageDecreased(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_AppMemoryUsageDecreased(token));
	}
	static EventRegistrationToken OnAppMemoryUsageLimitChanging(void delegate(IInspectable, Windows.System.AppMemoryUsageLimitChangingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_AppMemoryUsageLimitChanging(event!(Windows.Foundation.EventHandler!(Windows.System.AppMemoryUsageLimitChangingEventArgs), IInspectable, Windows.System.AppMemoryUsageLimitChangingEventArgs)(fn), &tok));
		return tok;
	}
	static void removeAppMemoryUsageLimitChanging(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_AppMemoryUsageLimitChanging(token));
	}
}

interface ProcessLauncher
{
	private static Windows.System.IProcessLauncherStatics _staticInstance;
	public static Windows.System.IProcessLauncherStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.IProcessLauncherStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.System.ProcessLauncherResult) RunToCompletionAsync(HSTRING fileName, HSTRING args)
	{
		Windows.Foundation.IAsyncOperation!(Windows.System.ProcessLauncherResult) _ret;
		Debug.OK(staticInstance.abi_RunToCompletionAsync(fileName, args, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.System.ProcessLauncherResult) RunToCompletionAsyncWithOptions(HSTRING fileName, HSTRING args, Windows.System.ProcessLauncherOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.System.ProcessLauncherResult) _ret;
		Debug.OK(staticInstance.abi_RunToCompletionAsyncWithOptions(fileName, args, options, &_ret));
		return _ret;
	}
	alias RunToCompletionAsync = RunToCompletionAsyncWithOptions;
}

interface ProcessLauncherOptions : Windows.System.IProcessLauncherOptions
{
extern(Windows):
	final Windows.Storage.Streams.IInputStream StandardInput()
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK((cast(Windows.System.IProcessLauncherOptions)this.asInterface(uuid("3080b9cf-f444-4a83-beaf-a549a0f3229c"))).get_StandardInput(&_ret));
		return _ret;
	}
	final void StandardInput(Windows.Storage.Streams.IInputStream value)
	{
		Debug.OK((cast(Windows.System.IProcessLauncherOptions)this.asInterface(uuid("3080b9cf-f444-4a83-beaf-a549a0f3229c"))).set_StandardInput(value));
	}
	final Windows.Storage.Streams.IOutputStream StandardOutput()
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK((cast(Windows.System.IProcessLauncherOptions)this.asInterface(uuid("3080b9cf-f444-4a83-beaf-a549a0f3229c"))).get_StandardOutput(&_ret));
		return _ret;
	}
	final void StandardOutput(Windows.Storage.Streams.IOutputStream value)
	{
		Debug.OK((cast(Windows.System.IProcessLauncherOptions)this.asInterface(uuid("3080b9cf-f444-4a83-beaf-a549a0f3229c"))).set_StandardOutput(value));
	}
	final Windows.Storage.Streams.IOutputStream StandardError()
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK((cast(Windows.System.IProcessLauncherOptions)this.asInterface(uuid("3080b9cf-f444-4a83-beaf-a549a0f3229c"))).get_StandardError(&_ret));
		return _ret;
	}
	final void StandardError(Windows.Storage.Streams.IOutputStream value)
	{
		Debug.OK((cast(Windows.System.IProcessLauncherOptions)this.asInterface(uuid("3080b9cf-f444-4a83-beaf-a549a0f3229c"))).set_StandardError(value));
	}
	final HSTRING WorkingDirectory()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.System.IProcessLauncherOptions)this.asInterface(uuid("3080b9cf-f444-4a83-beaf-a549a0f3229c"))).get_WorkingDirectory(&_ret));
		return _ret;
	}
	final void WorkingDirectory(HSTRING value)
	{
		Debug.OK((cast(Windows.System.IProcessLauncherOptions)this.asInterface(uuid("3080b9cf-f444-4a83-beaf-a549a0f3229c"))).set_WorkingDirectory(value));
	}
	static ProcessLauncherOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ProcessLauncherOptions).abi_ActivateInstance(&ret));
		return cast(ProcessLauncherOptions) ret;
	}
}

interface ProcessLauncherResult : Windows.System.IProcessLauncherResult
{
extern(Windows):
	final UINT32 ExitCode()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.System.IProcessLauncherResult)this.asInterface(uuid("544c8934-86d8-4991-8e75-ece8a43b6b6d"))).get_ExitCode(&_ret));
		return _ret;
	}
}

interface ProcessMemoryReport : Windows.System.IProcessMemoryReport
{
extern(Windows):
	final ulong PrivateWorkingSetUsage()
	{
		ulong _ret;
		Debug.OK((cast(Windows.System.IProcessMemoryReport)this.asInterface(uuid("087305a8-9b70-4782-8741-3a982b6ce5e4"))).get_PrivateWorkingSetUsage(&_ret));
		return _ret;
	}
	final ulong TotalWorkingSetUsage()
	{
		ulong _ret;
		Debug.OK((cast(Windows.System.IProcessMemoryReport)this.asInterface(uuid("087305a8-9b70-4782-8741-3a982b6ce5e4"))).get_TotalWorkingSetUsage(&_ret));
		return _ret;
	}
}

interface ProtocolForResultsOperation : Windows.System.IProtocolForResultsOperation
{
extern(Windows):
	final void ReportCompleted(Windows.Foundation.Collections.ValueSet data)
	{
		Debug.OK((cast(Windows.System.IProtocolForResultsOperation)this.asInterface(uuid("d581293a-6de9-4d28-9378-f86782e182bb"))).abi_ReportCompleted(data));
	}
}

interface RemoteLauncher
{
	private static Windows.System.IRemoteLauncherStatics _staticInstance;
	public static Windows.System.IRemoteLauncherStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.IRemoteLauncherStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.System.RemoteLaunchUriStatus) LaunchUriAsync(Windows.System.RemoteSystems.RemoteSystemConnectionRequest remoteSystemConnectionRequest, Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncOperation!(Windows.System.RemoteLaunchUriStatus) _ret;
		Debug.OK(staticInstance.abi_LaunchUriAsync(remoteSystemConnectionRequest, uri, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.System.RemoteLaunchUriStatus) LaunchUriWithOptionsAsync(Windows.System.RemoteSystems.RemoteSystemConnectionRequest remoteSystemConnectionRequest, Windows.Foundation.Uri uri, Windows.System.RemoteLauncherOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.System.RemoteLaunchUriStatus) _ret;
		Debug.OK(staticInstance.abi_LaunchUriWithOptionsAsync(remoteSystemConnectionRequest, uri, options, &_ret));
		return _ret;
	}
	alias LaunchUriAsync = LaunchUriWithOptionsAsync;
	static Windows.Foundation.IAsyncOperation!(Windows.System.RemoteLaunchUriStatus) LaunchUriWithDataAsync(Windows.System.RemoteSystems.RemoteSystemConnectionRequest remoteSystemConnectionRequest, Windows.Foundation.Uri uri, Windows.System.RemoteLauncherOptions options, Windows.Foundation.Collections.ValueSet inputData)
	{
		Windows.Foundation.IAsyncOperation!(Windows.System.RemoteLaunchUriStatus) _ret;
		Debug.OK(staticInstance.abi_LaunchUriWithDataAsync(remoteSystemConnectionRequest, uri, options, inputData, &_ret));
		return _ret;
	}
	alias LaunchUriAsync = LaunchUriWithDataAsync;
}

interface RemoteLauncherOptions : Windows.System.IRemoteLauncherOptions
{
extern(Windows):
	final Windows.Foundation.Uri FallbackUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.System.IRemoteLauncherOptions)this.asInterface(uuid("9e3a2788-2891-4cdf-a2d6-9dff7d02e693"))).get_FallbackUri(&_ret));
		return _ret;
	}
	final void FallbackUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.System.IRemoteLauncherOptions)this.asInterface(uuid("9e3a2788-2891-4cdf-a2d6-9dff7d02e693"))).set_FallbackUri(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) PreferredAppIds()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.System.IRemoteLauncherOptions)this.asInterface(uuid("9e3a2788-2891-4cdf-a2d6-9dff7d02e693"))).get_PreferredAppIds(&_ret));
		return _ret;
	}
	static RemoteLauncherOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(RemoteLauncherOptions).abi_ActivateInstance(&ret));
		return cast(RemoteLauncherOptions) ret;
	}
}

interface ShutdownManager
{
	private static Windows.System.IShutdownManagerStatics _staticInstance;
	public static Windows.System.IShutdownManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.IShutdownManagerStatics);
		return _staticInstance;
	}
	static void BeginShutdown(Windows.System.ShutdownKind shutdownKind, Windows.Foundation.TimeSpan timeout)
	{
		Debug.OK(staticInstance.abi_BeginShutdown(shutdownKind, timeout));
	}
	static void CancelShutdown()
	{
		Debug.OK(staticInstance.abi_CancelShutdown());
	}
}

interface TimeZoneSettings
{
	private static Windows.System.ITimeZoneSettingsStatics _staticInstance;
	public static Windows.System.ITimeZoneSettingsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.ITimeZoneSettingsStatics);
		return _staticInstance;
	}
	static HSTRING CurrentTimeZoneDisplayName()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_CurrentTimeZoneDisplayName(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(HSTRING) SupportedTimeZoneDisplayNames()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(staticInstance.get_SupportedTimeZoneDisplayNames(&_ret));
		return _ret;
	}
	static bool CanChangeTimeZone()
	{
		bool _ret;
		Debug.OK(staticInstance.get_CanChangeTimeZone(&_ret));
		return _ret;
	}
	static void ChangeTimeZoneByDisplayName(HSTRING timeZoneDisplayName)
	{
		Debug.OK(staticInstance.abi_ChangeTimeZoneByDisplayName(timeZoneDisplayName));
	}
}

interface User : Windows.System.IUser
{
extern(Windows):
	final HSTRING NonRoamableId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.System.IUser)this.asInterface(uuid("df9a26c6-e746-4bcd-b5d4-120103c4209b"))).get_NonRoamableId(&_ret));
		return _ret;
	}
	final Windows.System.UserAuthenticationStatus AuthenticationStatus()
	{
		Windows.System.UserAuthenticationStatus _ret;
		Debug.OK((cast(Windows.System.IUser)this.asInterface(uuid("df9a26c6-e746-4bcd-b5d4-120103c4209b"))).get_AuthenticationStatus(&_ret));
		return _ret;
	}
	final Windows.System.UserType Type()
	{
		Windows.System.UserType _ret;
		Debug.OK((cast(Windows.System.IUser)this.asInterface(uuid("df9a26c6-e746-4bcd-b5d4-120103c4209b"))).get_Type(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(IInspectable) GetPropertyAsync(HSTRING value)
	{
		Windows.Foundation.IAsyncOperation!(IInspectable) _ret;
		Debug.OK((cast(Windows.System.IUser)this.asInterface(uuid("df9a26c6-e746-4bcd-b5d4-120103c4209b"))).abi_GetPropertyAsync(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IPropertySet) GetPropertiesAsync(Windows.Foundation.Collections.IVectorView!(HSTRING) values)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IPropertySet) _ret;
		Debug.OK((cast(Windows.System.IUser)this.asInterface(uuid("df9a26c6-e746-4bcd-b5d4-120103c4209b"))).abi_GetPropertiesAsync(values, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamReference) GetPictureAsync(Windows.System.UserPictureSize desiredSize)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamReference) _ret;
		Debug.OK((cast(Windows.System.IUser)this.asInterface(uuid("df9a26c6-e746-4bcd-b5d4-120103c4209b"))).abi_GetPictureAsync(desiredSize, &_ret));
		return _ret;
	}

	private static Windows.System.IUserStatics _staticInstance;
	public static Windows.System.IUserStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.IUserStatics);
		return _staticInstance;
	}
	static Windows.System.UserWatcher CreateWatcher()
	{
		Windows.System.UserWatcher _ret;
		Debug.OK(staticInstance.abi_CreateWatcher(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.System.User)) FindAllAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.System.User)) _ret;
		Debug.OK(staticInstance.abi_FindAllAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.System.User)) FindAllAsyncByType(Windows.System.UserType type)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.System.User)) _ret;
		Debug.OK(staticInstance.abi_FindAllAsyncByType(type, &_ret));
		return _ret;
	}
	alias FindAllAsync = FindAllAsyncByType;
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.System.User)) FindAllAsyncByTypeAndStatus(Windows.System.UserType type, Windows.System.UserAuthenticationStatus status)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.System.User)) _ret;
		Debug.OK(staticInstance.abi_FindAllAsyncByTypeAndStatus(type, status, &_ret));
		return _ret;
	}
	alias FindAllAsync = FindAllAsyncByTypeAndStatus;
	static Windows.System.User GetFromId(HSTRING nonRoamableId)
	{
		Windows.System.User _ret;
		Debug.OK(staticInstance.abi_GetFromId(nonRoamableId, &_ret));
		return _ret;
	}
}

interface UserAuthenticationStatusChangeDeferral : Windows.System.IUserAuthenticationStatusChangeDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.System.IUserAuthenticationStatusChangeDeferral)this.asInterface(uuid("88b59568-bb30-42fb-a270-e9902e40efa7"))).abi_Complete());
	}
}

interface UserAuthenticationStatusChangingEventArgs : Windows.System.IUserAuthenticationStatusChangingEventArgs
{
extern(Windows):
	final Windows.System.UserAuthenticationStatusChangeDeferral GetDeferral()
	{
		Windows.System.UserAuthenticationStatusChangeDeferral _ret;
		Debug.OK((cast(Windows.System.IUserAuthenticationStatusChangingEventArgs)this.asInterface(uuid("8c030f28-a711-4c1e-ab48-04179c15938f"))).abi_GetDeferral(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.System.IUserAuthenticationStatusChangingEventArgs)this.asInterface(uuid("8c030f28-a711-4c1e-ab48-04179c15938f"))).get_User(&_ret));
		return _ret;
	}
	final Windows.System.UserAuthenticationStatus NewStatus()
	{
		Windows.System.UserAuthenticationStatus _ret;
		Debug.OK((cast(Windows.System.IUserAuthenticationStatusChangingEventArgs)this.asInterface(uuid("8c030f28-a711-4c1e-ab48-04179c15938f"))).get_NewStatus(&_ret));
		return _ret;
	}
	final Windows.System.UserAuthenticationStatus CurrentStatus()
	{
		Windows.System.UserAuthenticationStatus _ret;
		Debug.OK((cast(Windows.System.IUserAuthenticationStatusChangingEventArgs)this.asInterface(uuid("8c030f28-a711-4c1e-ab48-04179c15938f"))).get_CurrentStatus(&_ret));
		return _ret;
	}
}

interface UserChangedEventArgs : Windows.System.IUserChangedEventArgs
{
extern(Windows):
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.System.IUserChangedEventArgs)this.asInterface(uuid("086459dc-18c6-48db-bc99-724fb9203ccc"))).get_User(&_ret));
		return _ret;
	}
}

interface UserDeviceAssociation
{
	private static Windows.System.IUserDeviceAssociationStatics _staticInstance;
	public static Windows.System.IUserDeviceAssociationStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.IUserDeviceAssociationStatics);
		return _staticInstance;
	}
	static Windows.System.User FindUserFromDeviceId(HSTRING deviceId)
	{
		Windows.System.User _ret;
		Debug.OK(staticInstance.abi_FindUserFromDeviceId(deviceId, &_ret));
		return _ret;
	}
	static EventRegistrationToken OnUserDeviceAssociationChanged(void delegate(IInspectable, Windows.System.UserDeviceAssociationChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_UserDeviceAssociationChanged(event!(Windows.Foundation.EventHandler!(Windows.System.UserDeviceAssociationChangedEventArgs), IInspectable, Windows.System.UserDeviceAssociationChangedEventArgs)(fn), &tok));
		return tok;
	}
	static void removeUserDeviceAssociationChanged(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_UserDeviceAssociationChanged(token));
	}
}

interface UserDeviceAssociationChangedEventArgs : Windows.System.IUserDeviceAssociationChangedEventArgs
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.System.IUserDeviceAssociationChangedEventArgs)this.asInterface(uuid("bd1f6f6c-bb5d-4d7b-a5f0-c8cd11a38d42"))).get_DeviceId(&_ret));
		return _ret;
	}
	final Windows.System.User NewUser()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.System.IUserDeviceAssociationChangedEventArgs)this.asInterface(uuid("bd1f6f6c-bb5d-4d7b-a5f0-c8cd11a38d42"))).get_NewUser(&_ret));
		return _ret;
	}
	final Windows.System.User OldUser()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.System.IUserDeviceAssociationChangedEventArgs)this.asInterface(uuid("bd1f6f6c-bb5d-4d7b-a5f0-c8cd11a38d42"))).get_OldUser(&_ret));
		return _ret;
	}
}

interface UserPicker : Windows.System.IUserPicker
{
extern(Windows):
	final bool AllowGuestAccounts()
	{
		bool _ret;
		Debug.OK((cast(Windows.System.IUserPicker)this.asInterface(uuid("7d548008-f1e3-4a6c-8ddc-a9bb0f488aed"))).get_AllowGuestAccounts(&_ret));
		return _ret;
	}
	final void AllowGuestAccounts(bool value)
	{
		Debug.OK((cast(Windows.System.IUserPicker)this.asInterface(uuid("7d548008-f1e3-4a6c-8ddc-a9bb0f488aed"))).set_AllowGuestAccounts(value));
	}
	final Windows.System.User SuggestedSelectedUser()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.System.IUserPicker)this.asInterface(uuid("7d548008-f1e3-4a6c-8ddc-a9bb0f488aed"))).get_SuggestedSelectedUser(&_ret));
		return _ret;
	}
	final void SuggestedSelectedUser(Windows.System.User value)
	{
		Debug.OK((cast(Windows.System.IUserPicker)this.asInterface(uuid("7d548008-f1e3-4a6c-8ddc-a9bb0f488aed"))).set_SuggestedSelectedUser(value));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.System.User) PickSingleUserAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.System.User) _ret;
		Debug.OK((cast(Windows.System.IUserPicker)this.asInterface(uuid("7d548008-f1e3-4a6c-8ddc-a9bb0f488aed"))).abi_PickSingleUserAsync(&_ret));
		return _ret;
	}

	private static Windows.System.IUserPickerStatics _staticInstance;
	public static Windows.System.IUserPickerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.IUserPickerStatics);
		return _staticInstance;
	}
	static bool IsSupported()
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsSupported(&_ret));
		return _ret;
	}
	static UserPicker New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(UserPicker).abi_ActivateInstance(&ret));
		return cast(UserPicker) ret;
	}
}

interface UserWatcher : Windows.System.IUserWatcher
{
extern(Windows):
	final Windows.System.UserWatcherStatus Status()
	{
		Windows.System.UserWatcherStatus _ret;
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).get_Status(&_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).abi_Start());
	}
	final void Stop()
	{
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).abi_Stop());
	}
	final EventRegistrationToken OnAdded(void delegate(Windows.System.UserWatcher, Windows.System.UserChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).add_Added(event!(Windows.Foundation.TypedEventHandler!(Windows.System.UserWatcher, Windows.System.UserChangedEventArgs), Windows.System.UserWatcher, Windows.System.UserChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAdded(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).remove_Added(token));
	}
	final EventRegistrationToken OnRemoved(void delegate(Windows.System.UserWatcher, Windows.System.UserChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).add_Removed(event!(Windows.Foundation.TypedEventHandler!(Windows.System.UserWatcher, Windows.System.UserChangedEventArgs), Windows.System.UserWatcher, Windows.System.UserChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRemoved(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).remove_Removed(token));
	}
	final EventRegistrationToken OnUpdated(void delegate(Windows.System.UserWatcher, Windows.System.UserChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).add_Updated(event!(Windows.Foundation.TypedEventHandler!(Windows.System.UserWatcher, Windows.System.UserChangedEventArgs), Windows.System.UserWatcher, Windows.System.UserChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUpdated(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).remove_Updated(token));
	}
	final EventRegistrationToken OnAuthenticationStatusChanged(void delegate(Windows.System.UserWatcher, Windows.System.UserChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).add_AuthenticationStatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.System.UserWatcher, Windows.System.UserChangedEventArgs), Windows.System.UserWatcher, Windows.System.UserChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAuthenticationStatusChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).remove_AuthenticationStatusChanged(token));
	}
	final EventRegistrationToken OnAuthenticationStatusChanging(void delegate(Windows.System.UserWatcher, Windows.System.UserAuthenticationStatusChangingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).add_AuthenticationStatusChanging(event!(Windows.Foundation.TypedEventHandler!(Windows.System.UserWatcher, Windows.System.UserAuthenticationStatusChangingEventArgs), Windows.System.UserWatcher, Windows.System.UserAuthenticationStatusChangingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAuthenticationStatusChanging(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).remove_AuthenticationStatusChanging(token));
	}
	final EventRegistrationToken OnEnumerationCompleted(void delegate(Windows.System.UserWatcher, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).add_EnumerationCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.System.UserWatcher, IInspectable), Windows.System.UserWatcher, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeEnumerationCompleted(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).remove_EnumerationCompleted(token));
	}
	final EventRegistrationToken OnStopped(void delegate(Windows.System.UserWatcher, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).add_Stopped(event!(Windows.Foundation.TypedEventHandler!(Windows.System.UserWatcher, IInspectable), Windows.System.UserWatcher, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeStopped(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.System.IUserWatcher)this.asInterface(uuid("155eb23b-242a-45e0-a2e9-3171fc6a7fbb"))).remove_Stopped(token));
	}
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