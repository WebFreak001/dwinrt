module Windows.Security.ExchangeActiveSyncProvisioning;

import dwinrt;

@uuid("54dfd981-1968-4ca3-b958-e595d16505eb")
@WinrtFactory("Windows.Security.ExchangeActiveSyncProvisioning.EasClientDeviceInformation")
interface IEasClientDeviceInformation : IInspectable
{
extern(Windows):
	HRESULT get_Id(GUID* return_value);
	HRESULT get_OperatingSystem(HSTRING* return_value);
	HRESULT get_FriendlyName(HSTRING* return_value);
	HRESULT get_SystemManufacturer(HSTRING* return_value);
	HRESULT get_SystemProductName(HSTRING* return_value);
	HRESULT get_SystemSku(HSTRING* return_value);
}

@uuid("ffb35923-bb26-4d6a-81bc-165aee0ad754")
@WinrtFactory("Windows.Security.ExchangeActiveSyncProvisioning.EasClientDeviceInformation")
interface IEasClientDeviceInformation2 : IInspectable
{
extern(Windows):
	HRESULT get_SystemHardwareVersion(HSTRING* return_value);
	HRESULT get_SystemFirmwareVersion(HSTRING* return_value);
}

@uuid("45b72362-dfba-4a9b-aced-6fe2adcb6420")
@WinrtFactory("Windows.Security.ExchangeActiveSyncProvisioning.EasClientSecurityPolicy")
interface IEasClientSecurityPolicy : IInspectable
{
extern(Windows):
	HRESULT get_RequireEncryption(bool* return_value);
	HRESULT set_RequireEncryption(bool value);
	HRESULT get_MinPasswordLength(BYTE* return_value);
	HRESULT set_MinPasswordLength(BYTE value);
	HRESULT get_DisallowConvenienceLogon(bool* return_value);
	HRESULT set_DisallowConvenienceLogon(bool value);
	HRESULT get_MinPasswordComplexCharacters(BYTE* return_value);
	HRESULT set_MinPasswordComplexCharacters(BYTE value);
	HRESULT get_PasswordExpiration(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_PasswordExpiration(Windows.Foundation.TimeSpan value);
	HRESULT get_PasswordHistory(UINT32* return_value);
	HRESULT set_PasswordHistory(UINT32 value);
	HRESULT get_MaxPasswordFailedAttempts(BYTE* return_value);
	HRESULT set_MaxPasswordFailedAttempts(BYTE value);
	HRESULT get_MaxInactivityTimeLock(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_MaxInactivityTimeLock(Windows.Foundation.TimeSpan value);
	HRESULT abi_CheckCompliance(Windows.Security.ExchangeActiveSyncProvisioning.EasComplianceResults* return_result);
	HRESULT abi_ApplyAsync(Windows.Foundation.IAsyncOperation!(Windows.Security.ExchangeActiveSyncProvisioning.EasComplianceResults)* return_operation);
}

@uuid("463c299c-7f19-4c66-b403-cb45dd57a2b3")
@WinrtFactory("Windows.Security.ExchangeActiveSyncProvisioning.EasComplianceResults")
interface IEasComplianceResults : IInspectable
{
extern(Windows):
	HRESULT get_Compliant(bool* return_value);
	HRESULT get_RequireEncryptionResult(Windows.Security.ExchangeActiveSyncProvisioning.EasRequireEncryptionResult* return_value);
	HRESULT get_MinPasswordLengthResult(Windows.Security.ExchangeActiveSyncProvisioning.EasMinPasswordLengthResult* return_value);
	HRESULT get_DisallowConvenienceLogonResult(Windows.Security.ExchangeActiveSyncProvisioning.EasDisallowConvenienceLogonResult* return_value);
	HRESULT get_MinPasswordComplexCharactersResult(Windows.Security.ExchangeActiveSyncProvisioning.EasMinPasswordComplexCharactersResult* return_value);
	HRESULT get_PasswordExpirationResult(Windows.Security.ExchangeActiveSyncProvisioning.EasPasswordExpirationResult* return_value);
	HRESULT get_PasswordHistoryResult(Windows.Security.ExchangeActiveSyncProvisioning.EasPasswordHistoryResult* return_value);
	HRESULT get_MaxPasswordFailedAttemptsResult(Windows.Security.ExchangeActiveSyncProvisioning.EasMaxPasswordFailedAttemptsResult* return_value);
	HRESULT get_MaxInactivityTimeLockResult(Windows.Security.ExchangeActiveSyncProvisioning.EasMaxInactivityTimeLockResult* return_value);
}

@uuid("2fbe60c9-1aa8-47f5-88bb-cb3ef0bffb15")
@WinrtFactory("Windows.Security.ExchangeActiveSyncProvisioning.EasComplianceResults")
interface IEasComplianceResults2 : IInspectable
{
extern(Windows):
	HRESULT get_EncryptionProviderType(Windows.Security.ExchangeActiveSyncProvisioning.EasEncryptionProviderType* return_value);
}

interface EasClientDeviceInformation : Windows.Security.ExchangeActiveSyncProvisioning.IEasClientDeviceInformation, Windows.Security.ExchangeActiveSyncProvisioning.IEasClientDeviceInformation2
{
}

interface EasClientSecurityPolicy : Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy
{
}

interface EasComplianceResults : Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults, Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults2
{
}

enum EasDisallowConvenienceLogonResult
{
	NotEvaluated = 0,
	Compliant = 1,
	CanBeCompliant = 2,
	RequestedPolicyIsStricter = 3
}

enum EasEncryptionProviderType
{
	NotEvaluated = 0,
	WindowsEncryption = 1,
	OtherEncryption = 2
}

enum EasMaxInactivityTimeLockResult
{
	NotEvaluated = 0,
	Compliant = 1,
	CanBeCompliant = 2,
	RequestedPolicyIsStricter = 3,
	InvalidParameter = 4
}

enum EasMaxPasswordFailedAttemptsResult
{
	NotEvaluated = 0,
	Compliant = 1,
	CanBeCompliant = 2,
	RequestedPolicyIsStricter = 3,
	InvalidParameter = 4
}

enum EasMinPasswordComplexCharactersResult
{
	NotEvaluated = 0,
	Compliant = 1,
	CanBeCompliant = 2,
	RequestedPolicyIsStricter = 3,
	RequestedPolicyNotEnforceable = 4,
	InvalidParameter = 5,
	CurrentUserHasBlankPassword = 6,
	AdminsHaveBlankPassword = 7,
	UserCannotChangePassword = 8,
	AdminsCannotChangePassword = 9,
	LocalControlledUsersCannotChangePassword = 10,
	ConnectedAdminsProviderPolicyIsWeak = 11,
	ConnectedUserProviderPolicyIsWeak = 12,
	ChangeConnectedAdminsPassword = 13,
	ChangeConnectedUserPassword = 14
}

enum EasMinPasswordLengthResult
{
	NotEvaluated = 0,
	Compliant = 1,
	CanBeCompliant = 2,
	RequestedPolicyIsStricter = 3,
	RequestedPolicyNotEnforceable = 4,
	InvalidParameter = 5,
	CurrentUserHasBlankPassword = 6,
	AdminsHaveBlankPassword = 7,
	UserCannotChangePassword = 8,
	AdminsCannotChangePassword = 9,
	LocalControlledUsersCannotChangePassword = 10,
	ConnectedAdminsProviderPolicyIsWeak = 11,
	ConnectedUserProviderPolicyIsWeak = 12,
	ChangeConnectedAdminsPassword = 13,
	ChangeConnectedUserPassword = 14
}

enum EasPasswordExpirationResult
{
	NotEvaluated = 0,
	Compliant = 1,
	CanBeCompliant = 2,
	RequestedPolicyIsStricter = 3,
	RequestedExpirationIncompatible = 4,
	InvalidParameter = 5,
	UserCannotChangePassword = 6,
	AdminsCannotChangePassword = 7,
	LocalControlledUsersCannotChangePassword = 8
}

enum EasPasswordHistoryResult
{
	NotEvaluated = 0,
	Compliant = 1,
	CanBeCompliant = 2,
	RequestedPolicyIsStricter = 3,
	InvalidParameter = 4
}

enum EasRequireEncryptionResult
{
	NotEvaluated = 0,
	Compliant = 1,
	CanBeCompliant = 2,
	NotProvisionedOnAllVolumes = 3,
	DeFixedDataNotSupported = 4,
	FixedDataNotSupported = 4,
	DeHardwareNotCompliant = 5,
	HardwareNotCompliant = 5,
	DeWinReNotConfigured = 6,
	LockNotConfigured = 6,
	DeProtectionSuspended = 7,
	ProtectionSuspended = 7,
	DeOsVolumeNotProtected = 8,
	OsVolumeNotProtected = 8,
	DeProtectionNotYetEnabled = 9,
	ProtectionNotYetEnabled = 9,
	NoFeatureLicense = 10,
	OsNotProtected = 11,
	UnexpectedFailure = 12
}