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
interface IEasClientDeviceInformation2_Base : IInspectable
{
extern(Windows):
	HRESULT get_SystemHardwareVersion(HSTRING* return_value);
	HRESULT get_SystemFirmwareVersion(HSTRING* return_value);
}
@uuid("ffb35923-bb26-4d6a-81bc-165aee0ad754")
@WinrtFactory("Windows.Security.ExchangeActiveSyncProvisioning.EasClientDeviceInformation")
interface IEasClientDeviceInformation2 : IEasClientDeviceInformation2_Base, Windows.Security.ExchangeActiveSyncProvisioning.IEasClientDeviceInformation {}

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
interface IEasComplianceResults2_Base : IInspectable
{
extern(Windows):
	HRESULT get_EncryptionProviderType(Windows.Security.ExchangeActiveSyncProvisioning.EasEncryptionProviderType* return_value);
}
@uuid("2fbe60c9-1aa8-47f5-88bb-cb3ef0bffb15")
@WinrtFactory("Windows.Security.ExchangeActiveSyncProvisioning.EasComplianceResults")
interface IEasComplianceResults2 : IEasComplianceResults2_Base, Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults {}

interface EasClientDeviceInformation : Windows.Security.ExchangeActiveSyncProvisioning.IEasClientDeviceInformation, Windows.Security.ExchangeActiveSyncProvisioning.IEasClientDeviceInformation2
{
extern(Windows):
	final GUID Id()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientDeviceInformation).get_Id(&_ret));
		return _ret;
	}
	final HSTRING OperatingSystem()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientDeviceInformation).get_OperatingSystem(&_ret));
		return _ret;
	}
	final HSTRING FriendlyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientDeviceInformation).get_FriendlyName(&_ret));
		return _ret;
	}
	final HSTRING SystemManufacturer()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientDeviceInformation).get_SystemManufacturer(&_ret));
		return _ret;
	}
	final HSTRING SystemProductName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientDeviceInformation).get_SystemProductName(&_ret));
		return _ret;
	}
	final HSTRING SystemSku()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientDeviceInformation).get_SystemSku(&_ret));
		return _ret;
	}
	final HSTRING SystemHardwareVersion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientDeviceInformation2).get_SystemHardwareVersion(&_ret));
		return _ret;
	}
	final HSTRING SystemFirmwareVersion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientDeviceInformation2).get_SystemFirmwareVersion(&_ret));
		return _ret;
	}
}

interface EasClientSecurityPolicy : Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy
{
extern(Windows):
	final bool RequireEncryption()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).get_RequireEncryption(&_ret));
		return _ret;
	}
	final void RequireEncryption(bool value)
	{
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).set_RequireEncryption(value));
	}
	final BYTE MinPasswordLength()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).get_MinPasswordLength(&_ret));
		return _ret;
	}
	final void MinPasswordLength(BYTE value)
	{
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).set_MinPasswordLength(value));
	}
	final bool DisallowConvenienceLogon()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).get_DisallowConvenienceLogon(&_ret));
		return _ret;
	}
	final void DisallowConvenienceLogon(bool value)
	{
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).set_DisallowConvenienceLogon(value));
	}
	final BYTE MinPasswordComplexCharacters()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).get_MinPasswordComplexCharacters(&_ret));
		return _ret;
	}
	final void MinPasswordComplexCharacters(BYTE value)
	{
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).set_MinPasswordComplexCharacters(value));
	}
	final Windows.Foundation.TimeSpan PasswordExpiration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).get_PasswordExpiration(&_ret));
		return _ret;
	}
	final void PasswordExpiration(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).set_PasswordExpiration(value));
	}
	final UINT32 PasswordHistory()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).get_PasswordHistory(&_ret));
		return _ret;
	}
	final void PasswordHistory(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).set_PasswordHistory(value));
	}
	final BYTE MaxPasswordFailedAttempts()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).get_MaxPasswordFailedAttempts(&_ret));
		return _ret;
	}
	final void MaxPasswordFailedAttempts(BYTE value)
	{
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).set_MaxPasswordFailedAttempts(value));
	}
	final Windows.Foundation.TimeSpan MaxInactivityTimeLock()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).get_MaxInactivityTimeLock(&_ret));
		return _ret;
	}
	final void MaxInactivityTimeLock(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).set_MaxInactivityTimeLock(value));
	}
	final Windows.Security.ExchangeActiveSyncProvisioning.EasComplianceResults CheckCompliance()
	{
		Windows.Security.ExchangeActiveSyncProvisioning.EasComplianceResults _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).abi_CheckCompliance(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Security.ExchangeActiveSyncProvisioning.EasComplianceResults) ApplyAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.ExchangeActiveSyncProvisioning.EasComplianceResults) _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy).abi_ApplyAsync(&_ret));
		return _ret;
	}
}

interface EasComplianceResults : Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults, Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults2
{
extern(Windows):
	final bool Compliant()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults).get_Compliant(&_ret));
		return _ret;
	}
	final Windows.Security.ExchangeActiveSyncProvisioning.EasRequireEncryptionResult RequireEncryptionResult()
	{
		Windows.Security.ExchangeActiveSyncProvisioning.EasRequireEncryptionResult _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults).get_RequireEncryptionResult(&_ret));
		return _ret;
	}
	final Windows.Security.ExchangeActiveSyncProvisioning.EasMinPasswordLengthResult MinPasswordLengthResult()
	{
		Windows.Security.ExchangeActiveSyncProvisioning.EasMinPasswordLengthResult _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults).get_MinPasswordLengthResult(&_ret));
		return _ret;
	}
	final Windows.Security.ExchangeActiveSyncProvisioning.EasDisallowConvenienceLogonResult DisallowConvenienceLogonResult()
	{
		Windows.Security.ExchangeActiveSyncProvisioning.EasDisallowConvenienceLogonResult _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults).get_DisallowConvenienceLogonResult(&_ret));
		return _ret;
	}
	final Windows.Security.ExchangeActiveSyncProvisioning.EasMinPasswordComplexCharactersResult MinPasswordComplexCharactersResult()
	{
		Windows.Security.ExchangeActiveSyncProvisioning.EasMinPasswordComplexCharactersResult _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults).get_MinPasswordComplexCharactersResult(&_ret));
		return _ret;
	}
	final Windows.Security.ExchangeActiveSyncProvisioning.EasPasswordExpirationResult PasswordExpirationResult()
	{
		Windows.Security.ExchangeActiveSyncProvisioning.EasPasswordExpirationResult _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults).get_PasswordExpirationResult(&_ret));
		return _ret;
	}
	final Windows.Security.ExchangeActiveSyncProvisioning.EasPasswordHistoryResult PasswordHistoryResult()
	{
		Windows.Security.ExchangeActiveSyncProvisioning.EasPasswordHistoryResult _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults).get_PasswordHistoryResult(&_ret));
		return _ret;
	}
	final Windows.Security.ExchangeActiveSyncProvisioning.EasMaxPasswordFailedAttemptsResult MaxPasswordFailedAttemptsResult()
	{
		Windows.Security.ExchangeActiveSyncProvisioning.EasMaxPasswordFailedAttemptsResult _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults).get_MaxPasswordFailedAttemptsResult(&_ret));
		return _ret;
	}
	final Windows.Security.ExchangeActiveSyncProvisioning.EasMaxInactivityTimeLockResult MaxInactivityTimeLockResult()
	{
		Windows.Security.ExchangeActiveSyncProvisioning.EasMaxInactivityTimeLockResult _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults).get_MaxInactivityTimeLockResult(&_ret));
		return _ret;
	}
	final Windows.Security.ExchangeActiveSyncProvisioning.EasEncryptionProviderType EncryptionProviderType()
	{
		Windows.Security.ExchangeActiveSyncProvisioning.EasEncryptionProviderType _ret;
		Debug.OK(this.as!(Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults2).get_EncryptionProviderType(&_ret));
		return _ret;
	}
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