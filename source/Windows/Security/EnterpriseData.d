module Windows.Security.EnterpriseData;

import dwinrt;

@uuid("47995edc-6cec-4e3a-b251-9e7485d79e7a")
@WinrtFactory("Windows.Security.EnterpriseData.BufferProtectUnprotectResult")
interface IBufferProtectUnprotectResult : IInspectable
{
extern(Windows):
	HRESULT get_Buffer(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_ProtectionInfo(Windows.Security.EnterpriseData.DataProtectionInfo* return_value);
}

@uuid("8420b0c1-5e31-4405-9540-3f943af0cb26")
@WinrtFactory("Windows.Security.EnterpriseData.DataProtectionInfo")
interface IDataProtectionInfo : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Security.EnterpriseData.DataProtectionStatus* return_value);
	HRESULT get_Identity(HSTRING* return_value);
}

@uuid("b6149b74-9144-4ee4-8a8a-30b5f361430e")
@WinrtFactory("Windows.Security.EnterpriseData.DataProtectionManager")
interface IDataProtectionManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_ProtectAsync(Windows.Storage.Streams.IBuffer data, HSTRING identity, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.BufferProtectUnprotectResult)* return_result);
	HRESULT abi_UnprotectAsync(Windows.Storage.Streams.IBuffer data, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.BufferProtectUnprotectResult)* return_result);
	HRESULT abi_ProtectStreamAsync(Windows.Storage.Streams.IInputStream unprotectedStream, HSTRING identity, Windows.Storage.Streams.IOutputStream protectedStream, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.DataProtectionInfo)* return_result);
	HRESULT abi_UnprotectStreamAsync(Windows.Storage.Streams.IInputStream protectedStream, Windows.Storage.Streams.IOutputStream unprotectedStream, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.DataProtectionInfo)* return_result);
	HRESULT abi_GetProtectionInfoAsync(Windows.Storage.Streams.IBuffer protectedData, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.DataProtectionInfo)* return_result);
	HRESULT abi_GetStreamProtectionInfoAsync(Windows.Storage.Streams.IInputStream protectedStream, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.DataProtectionInfo)* return_result);
}

@uuid("4ee96486-147e-4dd0-8faf-5253ed91ad0c")
@WinrtFactory("Windows.Security.EnterpriseData.FileProtectionInfo")
interface IFileProtectionInfo : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Security.EnterpriseData.FileProtectionStatus* return_value);
	HRESULT get_IsRoamable(bool* return_value);
	HRESULT get_Identity(HSTRING* return_value);
}

@uuid("5846fc9b-e613-426b-bb38-88cba1dc9adb")
@WinrtFactory("Windows.Security.EnterpriseData.FileProtectionManager")
interface IFileProtectionManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_ProtectAsync(Windows.Storage.IStorageItem target, HSTRING identity, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.FileProtectionInfo)* return_result);
	HRESULT abi_CopyProtectionAsync(Windows.Storage.IStorageItem source, Windows.Storage.IStorageItem target, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_GetProtectionInfoAsync(Windows.Storage.IStorageItem source, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.FileProtectionInfo)* return_result);
	HRESULT abi_SaveFileAsContainerAsync(Windows.Storage.IStorageFile protectedFile, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectedContainerExportResult)* return_result);
	HRESULT abi_LoadFileFromContainerAsync(Windows.Storage.IStorageFile containerFile, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectedContainerImportResult)* return_result);
	HRESULT abi_LoadFileFromContainerWithTargetAsync(Windows.Storage.IStorageFile containerFile, Windows.Storage.IStorageItem target, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectedContainerImportResult)* return_result);
	HRESULT abi_CreateProtectedAndOpenAsync(Windows.Storage.IStorageFolder parentFolder, HSTRING desiredName, HSTRING identity, Windows.Storage.CreationCollisionOption collisionOption, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectedFileCreateResult)* return_result);
}

@uuid("83d2a745-0483-41ab-b2d5-bc7f23d74ebb")
@WinrtFactory("Windows.Security.EnterpriseData.FileProtectionManager")
interface IFileProtectionManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_IsContainerAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_LoadFileFromContainerWithTargetAndNameCollisionOptionAsync(Windows.Storage.IStorageFile containerFile, Windows.Storage.IStorageItem target, Windows.Storage.NameCollisionOption collisionOption, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectedContainerImportResult)* return_result);
	HRESULT abi_SaveFileAsContainerWithSharingAsync(Windows.Storage.IStorageFile protectedFile, Windows.Foundation.Collections.IIterable!(HSTRING) sharedWithIdentities, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectedContainerExportResult)* return_result);
}

@uuid("6918849a-624f-46d6-b241-e9cd5fdf3e3f")
@WinrtFactory("Windows.Security.EnterpriseData.FileProtectionManager")
interface IFileProtectionManagerStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_UnprotectAsync(Windows.Storage.IStorageItem target, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.FileProtectionInfo)* return_result);
	HRESULT abi_UnprotectWithOptionsAsync(Windows.Storage.IStorageItem target, Windows.Security.EnterpriseData.FileUnprotectOptions options, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.FileProtectionInfo)* return_result);
}

@uuid("256bbc3d-1c5d-4260-8c75-9144cfb78ba9")
@WinrtFactory("Windows.Security.EnterpriseData.FileRevocationManager")
interface IFileRevocationManagerStatics : IInspectable
{
extern(Windows):
	deprecated("FileRevocationManager might be unavailable after Windows 10. Instead, use FileProtectionManager.")
	HRESULT abi_ProtectAsync(Windows.Storage.IStorageItem storageItem, HSTRING enterpriseIdentity, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.FileProtectionStatus)* return_result);
	deprecated("FileRevocationManager might be unavailable after Windows 10. Instead, use FileProtectionManager.")
	HRESULT abi_CopyProtectionAsync(Windows.Storage.IStorageItem sourceStorageItem, Windows.Storage.IStorageItem targetStorageItem, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	deprecated("FileRevocationManager might be unavailable after Windows 10. Instead, use FileProtectionManager.")
	HRESULT abi_Revoke(HSTRING enterpriseIdentity);
	deprecated("FileRevocationManager might be unavailable after Windows 10. Instead, use FileProtectionManager.")
	HRESULT abi_GetStatusAsync(Windows.Storage.IStorageItem storageItem, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.FileProtectionStatus)* return_result);
}

@uuid("7d1312f1-3b0d-4dd8-a1f8-1ec53822e2f3")
@WinrtFactory("Windows.Security.EnterpriseData.FileUnprotectOptions")
interface IFileUnprotectOptions : IInspectable
{
extern(Windows):
	HRESULT set_Audit(bool value);
	HRESULT get_Audit(bool* return_value);
}

@uuid("51aeb39c-da8c-4c3f-9bfb-cb73a7cce0dd")
@WinrtFactory("Windows.Security.EnterpriseData.FileUnprotectOptions")
interface IFileUnprotectOptionsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(bool audit, Windows.Security.EnterpriseData.FileUnprotectOptions* return_result);
}

@uuid("ac4dca59-5d80-4e95-8c5f-8539450eebe0")
@WinrtFactory("Windows.Security.EnterpriseData.ProtectedAccessResumedEventArgs")
interface IProtectedAccessResumedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Identities(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}

@uuid("75a193e0-a344-429f-b975-04fc1f88c185")
@WinrtFactory("Windows.Security.EnterpriseData.ProtectedAccessSuspendingEventArgs")
interface IProtectedAccessSuspendingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Identities(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_Deadline(Windows.Foundation.DateTime* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_result);
}

@uuid("3948ef95-f7fb-4b42-afb0-df70b41543c1")
@WinrtFactory("Windows.Security.EnterpriseData.ProtectedContainerExportResult")
interface IProtectedContainerExportResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Security.EnterpriseData.ProtectedImportExportStatus* return_value);
	HRESULT get_File(Windows.Storage.StorageFile* return_value);
}

@uuid("cdb780d1-e7bb-4d1a-9339-34dc41149f9b")
@WinrtFactory("Windows.Security.EnterpriseData.ProtectedContainerImportResult")
interface IProtectedContainerImportResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Security.EnterpriseData.ProtectedImportExportStatus* return_value);
	HRESULT get_File(Windows.Storage.StorageFile* return_value);
}

@uuid("63686821-58b9-47ee-93d9-f0f741cf43f0")
@WinrtFactory("Windows.Security.EnterpriseData.ProtectedContentRevokedEventArgs")
interface IProtectedContentRevokedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Identities(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}

@uuid("28e3ed6a-e9e7-4a03-9f53-bdb16172699b")
@WinrtFactory("Windows.Security.EnterpriseData.ProtectedFileCreateResult")
interface IProtectedFileCreateResult : IInspectable
{
extern(Windows):
	HRESULT get_File(Windows.Storage.StorageFile* return_value);
	HRESULT get_Stream(Windows.Storage.Streams.IRandomAccessStream* return_value);
	HRESULT get_ProtectionInfo(Windows.Security.EnterpriseData.FileProtectionInfo* return_value);
}

@uuid("425ab7e4-feb7-44fc-b3bb-c3c4d7ecbebb")
@WinrtFactory("Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo")
interface IProtectionPolicyAuditInfo : IInspectable
{
extern(Windows):
	HRESULT set_Action(Windows.Security.EnterpriseData.ProtectionPolicyAuditAction value);
	HRESULT get_Action(Windows.Security.EnterpriseData.ProtectionPolicyAuditAction* return_value);
	HRESULT set_DataDescription(HSTRING value);
	HRESULT get_DataDescription(HSTRING* return_value);
	HRESULT set_SourceDescription(HSTRING value);
	HRESULT get_SourceDescription(HSTRING* return_value);
	HRESULT set_TargetDescription(HSTRING value);
	HRESULT get_TargetDescription(HSTRING* return_value);
}

@uuid("7ed4180b-92e8-42d5-83d4-25440b423549")
@WinrtFactory("Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo")
interface IProtectionPolicyAuditInfoFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Security.EnterpriseData.ProtectionPolicyAuditAction action, HSTRING dataDescription, HSTRING sourceDescription, HSTRING targetDescription, Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo* return_result);
	HRESULT abi_CreateWithActionAndDataDescription(Windows.Security.EnterpriseData.ProtectionPolicyAuditAction action, HSTRING dataDescription, Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo* return_result);
}

@uuid("d5703e18-a08d-47e6-a240-9934d7165eb5")
@WinrtFactory("Windows.Security.EnterpriseData.ProtectionPolicyManager")
interface IProtectionPolicyManager : IInspectable
{
extern(Windows):
	HRESULT set_Identity(HSTRING value);
	HRESULT get_Identity(HSTRING* return_value);
}

@uuid("abf7527a-8435-417f-99b6-51beaf365888")
@WinrtFactory("Windows.Security.EnterpriseData.ProtectionPolicyManager")
interface IProtectionPolicyManager2 : IInspectable
{
extern(Windows):
	HRESULT set_ShowEnterpriseIndicator(bool value);
	HRESULT get_ShowEnterpriseIndicator(bool* return_value);
}

@uuid("c0bffc66-8c3d-4d56-8804-c68f0ad32ec5")
@WinrtFactory("Windows.Security.EnterpriseData.ProtectionPolicyManager")
interface IProtectionPolicyManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_IsIdentityManaged(HSTRING identity, bool* return_result);
	HRESULT abi_TryApplyProcessUIPolicy(HSTRING identity, bool* return_result);
	HRESULT abi_ClearProcessUIPolicy();
	HRESULT abi_CreateCurrentThreadNetworkContext(HSTRING identity, Windows.Security.EnterpriseData.ThreadNetworkContext* return_result);
	HRESULT abi_GetPrimaryManagedIdentityForNetworkEndpointAsync(Windows.Networking.HostName endpointHost, Windows.Foundation.IAsyncOperation!(HSTRING)* return_result);
	HRESULT abi_RevokeContent(HSTRING identity);
	HRESULT abi_GetForCurrentView(Windows.Security.EnterpriseData.ProtectionPolicyManager* return_result);
	HRESULT add_ProtectedAccessSuspending(Windows.Foundation.EventHandler!(Windows.Security.EnterpriseData.ProtectedAccessSuspendingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ProtectedAccessSuspending(EventRegistrationToken token);
	HRESULT add_ProtectedAccessResumed(Windows.Foundation.EventHandler!(Windows.Security.EnterpriseData.ProtectedAccessResumedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ProtectedAccessResumed(EventRegistrationToken token);
	HRESULT add_ProtectedContentRevoked(Windows.Foundation.EventHandler!(Windows.Security.EnterpriseData.ProtectedContentRevokedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ProtectedContentRevoked(EventRegistrationToken token);
	HRESULT abi_CheckAccess(HSTRING sourceIdentity, HSTRING targetIdentity, Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult* return_result);
	HRESULT abi_RequestAccessAsync(HSTRING sourceIdentity, HSTRING targetIdentity, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)* return_result);
}

@uuid("b68f9a8c-39e0-4649-b2e4-070ab8a579b3")
@WinrtFactory("Windows.Security.EnterpriseData.ProtectionPolicyManager")
interface IProtectionPolicyManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_HasContentBeenRevokedSince(HSTRING identity, Windows.Foundation.DateTime since, bool* return_result);
	HRESULT abi_CheckAccessForApp(HSTRING sourceIdentity, HSTRING appPackageFamilyName, Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult* return_result);
	HRESULT abi_RequestAccessForAppAsync(HSTRING sourceIdentity, HSTRING appPackageFamilyName, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)* return_result);
	HRESULT abi_GetEnforcementLevel(HSTRING identity, Windows.Security.EnterpriseData.EnforcementLevel* return_value);
	HRESULT abi_IsUserDecryptionAllowed(HSTRING identity, bool* return_value);
	HRESULT abi_IsProtectionUnderLockRequired(HSTRING identity, bool* return_value);
	HRESULT add_PolicyChanged(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_PolicyChanged(EventRegistrationToken token);
	HRESULT get_IsProtectionEnabled(bool* return_value);
}

@uuid("48ff9e8c-6a6f-4d9f-bced-18ab537aa015")
@WinrtFactory("Windows.Security.EnterpriseData.ProtectionPolicyManager")
interface IProtectionPolicyManagerStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_RequestAccessWithAuditingInfoAsync(HSTRING sourceIdentity, HSTRING targetIdentity, Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo auditInfo, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)* return_result);
	HRESULT abi_RequestAccessWithMessageAsync(HSTRING sourceIdentity, HSTRING targetIdentity, Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo auditInfo, HSTRING messageFromApp, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)* return_result);
	HRESULT abi_RequestAccessForAppWithAuditingInfoAsync(HSTRING sourceIdentity, HSTRING appPackageFamilyName, Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo auditInfo, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)* return_result);
	HRESULT abi_RequestAccessForAppWithMessageAsync(HSTRING sourceIdentity, HSTRING appPackageFamilyName, Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo auditInfo, HSTRING messageFromApp, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)* return_result);
	HRESULT abi_LogAuditEvent(HSTRING sourceIdentity, HSTRING targetIdentity, Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo auditInfo);
}

@uuid("20b794db-ccbd-490f-8c83-49ccb77aea6c")
@WinrtFactory("Windows.Security.EnterpriseData.ProtectionPolicyManager")
interface IProtectionPolicyManagerStatics4 : IInspectable
{
extern(Windows):
	HRESULT abi_IsRoamableProtectionEnabled(HSTRING identity, bool* return_value);
	HRESULT abi_RequestAccessWithBehaviorAsync(HSTRING sourceIdentity, HSTRING targetIdentity, Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo auditInfo, HSTRING messageFromApp, Windows.Security.EnterpriseData.ProtectionPolicyRequestAccessBehavior behavior, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)* return_result);
	HRESULT abi_RequestAccessForAppWithBehaviorAsync(HSTRING sourceIdentity, HSTRING appPackageFamilyName, Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo auditInfo, HSTRING messageFromApp, Windows.Security.EnterpriseData.ProtectionPolicyRequestAccessBehavior behavior, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)* return_result);
	HRESULT abi_RequestAccessToFilesForAppAsync(Windows.Foundation.Collections.IIterable!(Windows.Storage.IStorageItem) sourceItemList, HSTRING appPackageFamilyName, Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo auditInfo, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)* return_result);
	HRESULT abi_RequestAccessToFilesForAppWithMessageAndBehaviorAsync(Windows.Foundation.Collections.IIterable!(Windows.Storage.IStorageItem) sourceItemList, HSTRING appPackageFamilyName, Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo auditInfo, HSTRING messageFromApp, Windows.Security.EnterpriseData.ProtectionPolicyRequestAccessBehavior behavior, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)* return_result);
	HRESULT abi_RequestAccessToFilesForProcessAsync(Windows.Foundation.Collections.IIterable!(Windows.Storage.IStorageItem) sourceItemList, UINT32 processId, Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo auditInfo, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)* return_result);
	HRESULT abi_RequestAccessToFilesForProcessWithMessageAndBehaviorAsync(Windows.Foundation.Collections.IIterable!(Windows.Storage.IStorageItem) sourceItemList, UINT32 processId, Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo auditInfo, HSTRING messageFromApp, Windows.Security.EnterpriseData.ProtectionPolicyRequestAccessBehavior behavior, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)* return_result);
	HRESULT abi_IsFileProtectionRequiredAsync(Windows.Storage.IStorageItem target, HSTRING identity, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_IsFileProtectionRequiredForNewFileAsync(Windows.Storage.IStorageFolder parentFolder, HSTRING identity, HSTRING desiredName, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT get_PrimaryManagedIdentity(HSTRING* return_value);
	HRESULT abi_GetPrimaryManagedIdentityForIdentity(HSTRING identity, HSTRING* return_value);
}

@uuid("fa4ea8e9-ef13-405a-b12c-d7348c6f41fc")
@WinrtFactory("Windows.Security.EnterpriseData.ThreadNetworkContext")
interface IThreadNetworkContext : IInspectable
{
}

interface BufferProtectUnprotectResult : Windows.Security.EnterpriseData.IBufferProtectUnprotectResult
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer Buffer()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IBufferProtectUnprotectResult)this.asInterface(uuid("47995edc-6cec-4e3a-b251-9e7485d79e7a"))).get_Buffer(&_ret));
		return _ret;
	}
	final Windows.Security.EnterpriseData.DataProtectionInfo ProtectionInfo()
	{
		Windows.Security.EnterpriseData.DataProtectionInfo _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IBufferProtectUnprotectResult)this.asInterface(uuid("47995edc-6cec-4e3a-b251-9e7485d79e7a"))).get_ProtectionInfo(&_ret));
		return _ret;
	}
}

interface DataProtectionInfo : Windows.Security.EnterpriseData.IDataProtectionInfo
{
extern(Windows):
	final Windows.Security.EnterpriseData.DataProtectionStatus Status()
	{
		Windows.Security.EnterpriseData.DataProtectionStatus _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IDataProtectionInfo)this.asInterface(uuid("8420b0c1-5e31-4405-9540-3f943af0cb26"))).get_Status(&_ret));
		return _ret;
	}
	final wstring Identity()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IDataProtectionInfo)this.asInterface(uuid("8420b0c1-5e31-4405-9540-3f943af0cb26"))).get_Identity(&_ret));
		return hstring(_ret).d_str;
	}
}

interface DataProtectionManager
{
	private static Windows.Security.EnterpriseData.IDataProtectionManagerStatics _staticInstance;
	public static Windows.Security.EnterpriseData.IDataProtectionManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.EnterpriseData.IDataProtectionManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.BufferProtectUnprotectResult) ProtectAsync(Windows.Storage.Streams.IBuffer data, wstring identity)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.BufferProtectUnprotectResult) _ret;
		Debug.OK(staticInstance.abi_ProtectAsync(data, hstring(identity).handle, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.BufferProtectUnprotectResult) UnprotectAsync(Windows.Storage.Streams.IBuffer data)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.BufferProtectUnprotectResult) _ret;
		Debug.OK(staticInstance.abi_UnprotectAsync(data, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.DataProtectionInfo) ProtectStreamAsync(Windows.Storage.Streams.IInputStream unprotectedStream, wstring identity, Windows.Storage.Streams.IOutputStream protectedStream)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.DataProtectionInfo) _ret;
		Debug.OK(staticInstance.abi_ProtectStreamAsync(unprotectedStream, hstring(identity).handle, protectedStream, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.DataProtectionInfo) UnprotectStreamAsync(Windows.Storage.Streams.IInputStream protectedStream, Windows.Storage.Streams.IOutputStream unprotectedStream)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.DataProtectionInfo) _ret;
		Debug.OK(staticInstance.abi_UnprotectStreamAsync(protectedStream, unprotectedStream, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.DataProtectionInfo) GetProtectionInfoAsync(Windows.Storage.Streams.IBuffer protectedData)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.DataProtectionInfo) _ret;
		Debug.OK(staticInstance.abi_GetProtectionInfoAsync(protectedData, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.DataProtectionInfo) GetStreamProtectionInfoAsync(Windows.Storage.Streams.IInputStream protectedStream)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.DataProtectionInfo) _ret;
		Debug.OK(staticInstance.abi_GetStreamProtectionInfoAsync(protectedStream, &_ret));
		return _ret;
	}
}

interface FileProtectionInfo : Windows.Security.EnterpriseData.IFileProtectionInfo
{
extern(Windows):
	final Windows.Security.EnterpriseData.FileProtectionStatus Status()
	{
		Windows.Security.EnterpriseData.FileProtectionStatus _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IFileProtectionInfo)this.asInterface(uuid("4ee96486-147e-4dd0-8faf-5253ed91ad0c"))).get_Status(&_ret));
		return _ret;
	}
	final bool IsRoamable()
	{
		bool _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IFileProtectionInfo)this.asInterface(uuid("4ee96486-147e-4dd0-8faf-5253ed91ad0c"))).get_IsRoamable(&_ret));
		return _ret;
	}
	final wstring Identity()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IFileProtectionInfo)this.asInterface(uuid("4ee96486-147e-4dd0-8faf-5253ed91ad0c"))).get_Identity(&_ret));
		return hstring(_ret).d_str;
	}
}

interface FileProtectionManager
{
	private static Windows.Security.EnterpriseData.IFileProtectionManagerStatics _staticInstance;
	public static Windows.Security.EnterpriseData.IFileProtectionManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.EnterpriseData.IFileProtectionManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.FileProtectionInfo) ProtectAsync(Windows.Storage.IStorageItem target, wstring identity)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.FileProtectionInfo) _ret;
		Debug.OK(staticInstance.abi_ProtectAsync(target, hstring(identity).handle, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(bool) CopyProtectionAsync(Windows.Storage.IStorageItem source, Windows.Storage.IStorageItem target)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(staticInstance.abi_CopyProtectionAsync(source, target, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.FileProtectionInfo) GetProtectionInfoAsync(Windows.Storage.IStorageItem source)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.FileProtectionInfo) _ret;
		Debug.OK(staticInstance.abi_GetProtectionInfoAsync(source, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectedContainerExportResult) SaveFileAsContainerAsync(Windows.Storage.IStorageFile protectedFile)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectedContainerExportResult) _ret;
		Debug.OK(staticInstance.abi_SaveFileAsContainerAsync(protectedFile, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectedContainerImportResult) LoadFileFromContainerAsync(Windows.Storage.IStorageFile containerFile)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectedContainerImportResult) _ret;
		Debug.OK(staticInstance.abi_LoadFileFromContainerAsync(containerFile, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectedContainerImportResult) LoadFileFromContainerWithTargetAsync(Windows.Storage.IStorageFile containerFile, Windows.Storage.IStorageItem target)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectedContainerImportResult) _ret;
		Debug.OK(staticInstance.abi_LoadFileFromContainerWithTargetAsync(containerFile, target, &_ret));
		return _ret;
	}
	alias LoadFileFromContainerAsync = LoadFileFromContainerWithTargetAsync;
	static Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectedFileCreateResult) CreateProtectedAndOpenAsync(Windows.Storage.IStorageFolder parentFolder, wstring desiredName, wstring identity, Windows.Storage.CreationCollisionOption collisionOption)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectedFileCreateResult) _ret;
		Debug.OK(staticInstance.abi_CreateProtectedAndOpenAsync(parentFolder, hstring(desiredName).handle, hstring(identity).handle, collisionOption, &_ret));
		return _ret;
	}
}

interface FileRevocationManager
{
	private static Windows.Security.EnterpriseData.IFileRevocationManagerStatics _staticInstance;
	public static Windows.Security.EnterpriseData.IFileRevocationManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.EnterpriseData.IFileRevocationManagerStatics);
		return _staticInstance;
	}
	deprecated("FileRevocationManager might be unavailable after Windows 10. Instead, use FileProtectionManager.")
	static Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.FileProtectionStatus) ProtectAsync(Windows.Storage.IStorageItem storageItem, wstring enterpriseIdentity)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.FileProtectionStatus) _ret;
		Debug.OK(staticInstance.abi_ProtectAsync(storageItem, hstring(enterpriseIdentity).handle, &_ret));
		return _ret;
	}
	deprecated("FileRevocationManager might be unavailable after Windows 10. Instead, use FileProtectionManager.")
	static Windows.Foundation.IAsyncOperation!(bool) CopyProtectionAsync(Windows.Storage.IStorageItem sourceStorageItem, Windows.Storage.IStorageItem targetStorageItem)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(staticInstance.abi_CopyProtectionAsync(sourceStorageItem, targetStorageItem, &_ret));
		return _ret;
	}
	deprecated("FileRevocationManager might be unavailable after Windows 10. Instead, use FileProtectionManager.")
	static void Revoke(wstring enterpriseIdentity)
	{
		Debug.OK(staticInstance.abi_Revoke(hstring(enterpriseIdentity).handle));
	}
	deprecated("FileRevocationManager might be unavailable after Windows 10. Instead, use FileProtectionManager.")
	static Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.FileProtectionStatus) GetStatusAsync(Windows.Storage.IStorageItem storageItem)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.FileProtectionStatus) _ret;
		Debug.OK(staticInstance.abi_GetStatusAsync(storageItem, &_ret));
		return _ret;
	}
}

interface FileUnprotectOptions : Windows.Security.EnterpriseData.IFileUnprotectOptions
{
extern(Windows):
	final void Audit(bool value)
	{
		Debug.OK((cast(Windows.Security.EnterpriseData.IFileUnprotectOptions)this.asInterface(uuid("7d1312f1-3b0d-4dd8-a1f8-1ec53822e2f3"))).set_Audit(value));
	}
	final bool Audit()
	{
		bool _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IFileUnprotectOptions)this.asInterface(uuid("7d1312f1-3b0d-4dd8-a1f8-1ec53822e2f3"))).get_Audit(&_ret));
		return _ret;
	}
	static Windows.Security.EnterpriseData.FileUnprotectOptions New(bool audit)
	{
		auto factory = factory!(Windows.Security.EnterpriseData.IFileUnprotectOptionsFactory);
		Windows.Security.EnterpriseData.FileUnprotectOptions _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IFileUnprotectOptionsFactory)factory.asInterface(uuid("51aeb39c-da8c-4c3f-9bfb-cb73a7cce0dd"))).abi_Create(audit, &_ret));
		return _ret;
	}
}

interface ProtectedAccessResumedEventArgs : Windows.Security.EnterpriseData.IProtectedAccessResumedEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Identities()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectedAccessResumedEventArgs)this.asInterface(uuid("ac4dca59-5d80-4e95-8c5f-8539450eebe0"))).get_Identities(&_ret));
		return _ret;
	}
}

interface ProtectedAccessSuspendingEventArgs : Windows.Security.EnterpriseData.IProtectedAccessSuspendingEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Identities()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectedAccessSuspendingEventArgs)this.asInterface(uuid("75a193e0-a344-429f-b975-04fc1f88c185"))).get_Identities(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Deadline()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectedAccessSuspendingEventArgs)this.asInterface(uuid("75a193e0-a344-429f-b975-04fc1f88c185"))).get_Deadline(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectedAccessSuspendingEventArgs)this.asInterface(uuid("75a193e0-a344-429f-b975-04fc1f88c185"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface ProtectedContainerExportResult : Windows.Security.EnterpriseData.IProtectedContainerExportResult
{
extern(Windows):
	final Windows.Security.EnterpriseData.ProtectedImportExportStatus Status()
	{
		Windows.Security.EnterpriseData.ProtectedImportExportStatus _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectedContainerExportResult)this.asInterface(uuid("3948ef95-f7fb-4b42-afb0-df70b41543c1"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Storage.StorageFile File()
	{
		Windows.Storage.StorageFile _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectedContainerExportResult)this.asInterface(uuid("3948ef95-f7fb-4b42-afb0-df70b41543c1"))).get_File(&_ret));
		return _ret;
	}
}

interface ProtectedContainerImportResult : Windows.Security.EnterpriseData.IProtectedContainerImportResult
{
extern(Windows):
	final Windows.Security.EnterpriseData.ProtectedImportExportStatus Status()
	{
		Windows.Security.EnterpriseData.ProtectedImportExportStatus _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectedContainerImportResult)this.asInterface(uuid("cdb780d1-e7bb-4d1a-9339-34dc41149f9b"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Storage.StorageFile File()
	{
		Windows.Storage.StorageFile _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectedContainerImportResult)this.asInterface(uuid("cdb780d1-e7bb-4d1a-9339-34dc41149f9b"))).get_File(&_ret));
		return _ret;
	}
}

interface ProtectedContentRevokedEventArgs : Windows.Security.EnterpriseData.IProtectedContentRevokedEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Identities()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectedContentRevokedEventArgs)this.asInterface(uuid("63686821-58b9-47ee-93d9-f0f741cf43f0"))).get_Identities(&_ret));
		return _ret;
	}
}

interface ProtectedFileCreateResult : Windows.Security.EnterpriseData.IProtectedFileCreateResult
{
extern(Windows):
	final Windows.Storage.StorageFile File()
	{
		Windows.Storage.StorageFile _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectedFileCreateResult)this.asInterface(uuid("28e3ed6a-e9e7-4a03-9f53-bdb16172699b"))).get_File(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IRandomAccessStream Stream()
	{
		Windows.Storage.Streams.IRandomAccessStream _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectedFileCreateResult)this.asInterface(uuid("28e3ed6a-e9e7-4a03-9f53-bdb16172699b"))).get_Stream(&_ret));
		return _ret;
	}
	final Windows.Security.EnterpriseData.FileProtectionInfo ProtectionInfo()
	{
		Windows.Security.EnterpriseData.FileProtectionInfo _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectedFileCreateResult)this.asInterface(uuid("28e3ed6a-e9e7-4a03-9f53-bdb16172699b"))).get_ProtectionInfo(&_ret));
		return _ret;
	}
}

interface ProtectionPolicyAuditInfo : Windows.Security.EnterpriseData.IProtectionPolicyAuditInfo
{
extern(Windows):
	final void Action(Windows.Security.EnterpriseData.ProtectionPolicyAuditAction value)
	{
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectionPolicyAuditInfo)this.asInterface(uuid("425ab7e4-feb7-44fc-b3bb-c3c4d7ecbebb"))).set_Action(value));
	}
	final Windows.Security.EnterpriseData.ProtectionPolicyAuditAction Action()
	{
		Windows.Security.EnterpriseData.ProtectionPolicyAuditAction _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectionPolicyAuditInfo)this.asInterface(uuid("425ab7e4-feb7-44fc-b3bb-c3c4d7ecbebb"))).get_Action(&_ret));
		return _ret;
	}
	final void DataDescription(wstring value)
	{
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectionPolicyAuditInfo)this.asInterface(uuid("425ab7e4-feb7-44fc-b3bb-c3c4d7ecbebb"))).set_DataDescription(hstring(value).handle));
	}
	final wstring DataDescription()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectionPolicyAuditInfo)this.asInterface(uuid("425ab7e4-feb7-44fc-b3bb-c3c4d7ecbebb"))).get_DataDescription(&_ret));
		return hstring(_ret).d_str;
	}
	final void SourceDescription(wstring value)
	{
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectionPolicyAuditInfo)this.asInterface(uuid("425ab7e4-feb7-44fc-b3bb-c3c4d7ecbebb"))).set_SourceDescription(hstring(value).handle));
	}
	final wstring SourceDescription()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectionPolicyAuditInfo)this.asInterface(uuid("425ab7e4-feb7-44fc-b3bb-c3c4d7ecbebb"))).get_SourceDescription(&_ret));
		return hstring(_ret).d_str;
	}
	final void TargetDescription(wstring value)
	{
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectionPolicyAuditInfo)this.asInterface(uuid("425ab7e4-feb7-44fc-b3bb-c3c4d7ecbebb"))).set_TargetDescription(hstring(value).handle));
	}
	final wstring TargetDescription()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectionPolicyAuditInfo)this.asInterface(uuid("425ab7e4-feb7-44fc-b3bb-c3c4d7ecbebb"))).get_TargetDescription(&_ret));
		return hstring(_ret).d_str;
	}
	static Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo New(Windows.Security.EnterpriseData.ProtectionPolicyAuditAction action, wstring dataDescription, wstring sourceDescription, wstring targetDescription)
	{
		auto factory = factory!(Windows.Security.EnterpriseData.IProtectionPolicyAuditInfoFactory);
		Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectionPolicyAuditInfoFactory)factory.asInterface(uuid("7ed4180b-92e8-42d5-83d4-25440b423549"))).abi_Create(action, hstring(dataDescription).handle, hstring(sourceDescription).handle, hstring(targetDescription).handle, &_ret));
		return _ret;
	}
	static Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo New(Windows.Security.EnterpriseData.ProtectionPolicyAuditAction action, wstring dataDescription)
	{
		auto factory = factory!(Windows.Security.EnterpriseData.IProtectionPolicyAuditInfoFactory);
		Windows.Security.EnterpriseData.ProtectionPolicyAuditInfo _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectionPolicyAuditInfoFactory)factory.asInterface(uuid("7ed4180b-92e8-42d5-83d4-25440b423549"))).abi_CreateWithActionAndDataDescription(action, hstring(dataDescription).handle, &_ret));
		return _ret;
	}
}

interface ProtectionPolicyManager : Windows.Security.EnterpriseData.IProtectionPolicyManager, Windows.Security.EnterpriseData.IProtectionPolicyManager2
{
extern(Windows):
	final void Identity(wstring value)
	{
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectionPolicyManager)this.asInterface(uuid("d5703e18-a08d-47e6-a240-9934d7165eb5"))).set_Identity(hstring(value).handle));
	}
	final wstring Identity()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectionPolicyManager)this.asInterface(uuid("d5703e18-a08d-47e6-a240-9934d7165eb5"))).get_Identity(&_ret));
		return hstring(_ret).d_str;
	}
	final void ShowEnterpriseIndicator(bool value)
	{
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectionPolicyManager2)this.asInterface(uuid("abf7527a-8435-417f-99b6-51beaf365888"))).set_ShowEnterpriseIndicator(value));
	}
	final bool ShowEnterpriseIndicator()
	{
		bool _ret;
		Debug.OK((cast(Windows.Security.EnterpriseData.IProtectionPolicyManager2)this.asInterface(uuid("abf7527a-8435-417f-99b6-51beaf365888"))).get_ShowEnterpriseIndicator(&_ret));
		return _ret;
	}

	private static Windows.Security.EnterpriseData.IProtectionPolicyManagerStatics _staticInstance;
	public static Windows.Security.EnterpriseData.IProtectionPolicyManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.EnterpriseData.IProtectionPolicyManagerStatics);
		return _staticInstance;
	}
	static bool IsIdentityManaged(wstring identity)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsIdentityManaged(hstring(identity).handle, &_ret));
		return _ret;
	}
	static bool TryApplyProcessUIPolicy(wstring identity)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryApplyProcessUIPolicy(hstring(identity).handle, &_ret));
		return _ret;
	}
	static void ClearProcessUIPolicy()
	{
		Debug.OK(staticInstance.abi_ClearProcessUIPolicy());
	}
	static Windows.Security.EnterpriseData.ThreadNetworkContext CreateCurrentThreadNetworkContext(wstring identity)
	{
		Windows.Security.EnterpriseData.ThreadNetworkContext _ret;
		Debug.OK(staticInstance.abi_CreateCurrentThreadNetworkContext(hstring(identity).handle, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(HSTRING) GetPrimaryManagedIdentityForNetworkEndpointAsync(Windows.Networking.HostName endpointHost)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.abi_GetPrimaryManagedIdentityForNetworkEndpointAsync(endpointHost, &_ret));
		return _ret;
	}
	static void RevokeContent(wstring identity)
	{
		Debug.OK(staticInstance.abi_RevokeContent(hstring(identity).handle));
	}
	static Windows.Security.EnterpriseData.ProtectionPolicyManager GetForCurrentView()
	{
		Windows.Security.EnterpriseData.ProtectionPolicyManager _ret;
		Debug.OK(staticInstance.abi_GetForCurrentView(&_ret));
		return _ret;
	}
	static EventRegistrationToken OnProtectedAccessSuspending(void delegate(IInspectable, Windows.Security.EnterpriseData.ProtectedAccessSuspendingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_ProtectedAccessSuspending(event!(Windows.Foundation.EventHandler!(Windows.Security.EnterpriseData.ProtectedAccessSuspendingEventArgs), IInspectable, Windows.Security.EnterpriseData.ProtectedAccessSuspendingEventArgs)(fn), &tok));
		return tok;
	}
	static void removeProtectedAccessSuspending(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_ProtectedAccessSuspending(token));
	}
	static EventRegistrationToken OnProtectedAccessResumed(void delegate(IInspectable, Windows.Security.EnterpriseData.ProtectedAccessResumedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_ProtectedAccessResumed(event!(Windows.Foundation.EventHandler!(Windows.Security.EnterpriseData.ProtectedAccessResumedEventArgs), IInspectable, Windows.Security.EnterpriseData.ProtectedAccessResumedEventArgs)(fn), &tok));
		return tok;
	}
	static void removeProtectedAccessResumed(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_ProtectedAccessResumed(token));
	}
	static EventRegistrationToken OnProtectedContentRevoked(void delegate(IInspectable, Windows.Security.EnterpriseData.ProtectedContentRevokedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_ProtectedContentRevoked(event!(Windows.Foundation.EventHandler!(Windows.Security.EnterpriseData.ProtectedContentRevokedEventArgs), IInspectable, Windows.Security.EnterpriseData.ProtectedContentRevokedEventArgs)(fn), &tok));
		return tok;
	}
	static void removeProtectedContentRevoked(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_ProtectedContentRevoked(token));
	}
	static Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult CheckAccess(wstring sourceIdentity, wstring targetIdentity)
	{
		Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult _ret;
		Debug.OK(staticInstance.abi_CheckAccess(hstring(sourceIdentity).handle, hstring(targetIdentity).handle, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult) RequestAccessAsync(wstring sourceIdentity, wstring targetIdentity)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult) _ret;
		Debug.OK(staticInstance.abi_RequestAccessAsync(hstring(sourceIdentity).handle, hstring(targetIdentity).handle, &_ret));
		return _ret;
	}
}

interface ThreadNetworkContext : Windows.Security.EnterpriseData.IThreadNetworkContext, Windows.Foundation.IClosable
{
extern(Windows):
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
}

enum DataProtectionStatus
{
	ProtectedToOtherIdentity = 0,
	Protected = 1,
	Revoked = 2,
	Unprotected = 3,
	LicenseExpired = 4,
	AccessSuspended = 5
}

enum EnforcementLevel
{
	NoProtection = 0,
	Silent = 1,
	Override = 2,
	Block = 3
}

enum FileProtectionStatus
{
	Undetermined = 0,
	Unknown = 0,
	Unprotected = 1,
	Revoked = 2,
	Protected = 3,
	ProtectedByOtherUser = 4,
	ProtectedToOtherEnterprise = 5,
	NotProtectable = 6,
	ProtectedToOtherIdentity = 7,
	LicenseExpired = 8,
	AccessSuspended = 9,
	FileInUse = 10
}

enum ProtectedImportExportStatus
{
	Ok = 0,
	Undetermined = 1,
	Unprotected = 2,
	Revoked = 3,
	NotRoamable = 4,
	ProtectedToOtherIdentity = 5,
	LicenseExpired = 6,
	AccessSuspended = 7
}

enum ProtectionPolicyAuditAction
{
	Decrypt = 0,
	CopyToLocation = 1,
	SendToRecipient = 2,
	Other = 3
}

enum ProtectionPolicyEvaluationResult
{
	Allowed = 0,
	Blocked = 1,
	ConsentRequired = 2
}

enum ProtectionPolicyRequestAccessBehavior
{
	Decrypt = 0,
	TreatOverridePolicyAsBlock = 1
}