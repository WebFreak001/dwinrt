module Windows.ApplicationModel.UserDataAccounts.SystemAccess;

import dwinrt;

@uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountConfiguration")
interface IDeviceAccountConfiguration : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AccountName(HSTRING* return_value);
	HRESULT set_AccountName(HSTRING value);
	HRESULT get_DeviceAccountTypeId(HSTRING* return_value);
	HRESULT set_DeviceAccountTypeId(HSTRING value);
	HRESULT get_ServerType(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountServerType* return_value);
	HRESULT set_ServerType(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountServerType value);
	HRESULT get_EmailAddress(HSTRING* return_value);
	HRESULT set_EmailAddress(HSTRING value);
	HRESULT get_Domain(HSTRING* return_value);
	HRESULT set_Domain(HSTRING value);
	HRESULT get_EmailSyncEnabled(bool* return_value);
	HRESULT set_EmailSyncEnabled(bool value);
	HRESULT get_ContactsSyncEnabled(bool* return_value);
	HRESULT set_ContactsSyncEnabled(bool value);
	HRESULT get_CalendarSyncEnabled(bool* return_value);
	HRESULT set_CalendarSyncEnabled(bool value);
	HRESULT get_IncomingServerAddress(HSTRING* return_value);
	HRESULT set_IncomingServerAddress(HSTRING value);
	HRESULT get_IncomingServerPort(INT32* return_value);
	HRESULT set_IncomingServerPort(INT32 value);
	HRESULT get_IncomingServerRequiresSsl(bool* return_value);
	HRESULT set_IncomingServerRequiresSsl(bool value);
	HRESULT get_IncomingServerUsername(HSTRING* return_value);
	HRESULT set_IncomingServerUsername(HSTRING value);
	HRESULT get_OutgoingServerAddress(HSTRING* return_value);
	HRESULT set_OutgoingServerAddress(HSTRING value);
	HRESULT get_OutgoingServerPort(INT32* return_value);
	HRESULT set_OutgoingServerPort(INT32 value);
	HRESULT get_OutgoingServerRequiresSsl(bool* return_value);
	HRESULT set_OutgoingServerRequiresSsl(bool value);
	HRESULT get_OutgoingServerUsername(HSTRING* return_value);
	HRESULT set_OutgoingServerUsername(HSTRING value);
}

@uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountConfiguration")
interface IDeviceAccountConfiguration2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IncomingServerCredential(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT set_IncomingServerCredential(Windows.Security.Credentials.PasswordCredential value);
	HRESULT get_OutgoingServerCredential(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT set_OutgoingServerCredential(Windows.Security.Credentials.PasswordCredential value);
	HRESULT get_OAuthRefreshToken(HSTRING* return_value);
	HRESULT set_OAuthRefreshToken(HSTRING value);
	HRESULT get_IsExternallyManaged(bool* return_value);
	HRESULT set_IsExternallyManaged(bool value);
	HRESULT get_AccountIconId(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountIconId* return_value);
	HRESULT set_AccountIconId(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountIconId value);
	HRESULT get_AuthenticationType(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountAuthenticationType* return_value);
	HRESULT set_AuthenticationType(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountAuthenticationType value);
	HRESULT get_IsSsoAuthenticationSupported(bool* return_value);
	HRESULT get_SsoAccountId(HSTRING* return_value);
	HRESULT set_SsoAccountId(HSTRING value);
	HRESULT get_AlwaysDownloadFullMessage(bool* return_value);
	HRESULT set_AlwaysDownloadFullMessage(bool value);
	HRESULT get_DoesPolicyAllowMailSync(bool* return_value);
	HRESULT get_SyncScheduleKind(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind* return_value);
	HRESULT set_SyncScheduleKind(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind value);
	HRESULT get_MailAgeFilter(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountMailAgeFilter* return_value);
	HRESULT set_MailAgeFilter(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountMailAgeFilter value);
	HRESULT get_IsClientAuthenticationCertificateRequired(bool* return_value);
	HRESULT set_IsClientAuthenticationCertificateRequired(bool value);
	HRESULT get_AutoSelectAuthenticationCertificate(bool* return_value);
	HRESULT set_AutoSelectAuthenticationCertificate(bool value);
	HRESULT get_AuthenticationCertificateId(HSTRING* return_value);
	HRESULT set_AuthenticationCertificateId(HSTRING value);
	HRESULT get_CardDavSyncScheduleKind(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind* return_value);
	HRESULT set_CardDavSyncScheduleKind(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind value);
	HRESULT get_CalDavSyncScheduleKind(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind* return_value);
	HRESULT set_CalDavSyncScheduleKind(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind value);
	HRESULT get_CardDavServerUrl(Windows.Foundation.Uri* return_value);
	HRESULT set_CardDavServerUrl(Windows.Foundation.Uri value);
	HRESULT get_CardDavRequiresSsl(bool* return_value);
	HRESULT set_CardDavRequiresSsl(bool value);
	HRESULT get_CalDavServerUrl(Windows.Foundation.Uri* return_value);
	HRESULT set_CalDavServerUrl(Windows.Foundation.Uri value);
	HRESULT get_CalDavRequiresSsl(bool* return_value);
	HRESULT set_CalDavRequiresSsl(bool value);
	HRESULT get_WasModifiedByUser(bool* return_value);
	HRESULT set_WasModifiedByUser(bool value);
	HRESULT get_WasIncomingServerCertificateHashConfirmed(bool* return_value);
	HRESULT set_WasIncomingServerCertificateHashConfirmed(bool value);
	HRESULT get_IncomingServerCertificateHash(HSTRING* return_value);
	HRESULT set_IncomingServerCertificateHash(HSTRING value);
	HRESULT get_IsOutgoingServerAuthenticationRequired(bool* return_value);
	HRESULT set_IsOutgoingServerAuthenticationRequired(bool value);
	HRESULT get_IsOutgoingServerAuthenticationEnabled(bool* return_value);
	HRESULT set_IsOutgoingServerAuthenticationEnabled(bool value);
	HRESULT get_WasOutgoingServerCertificateHashConfirmed(bool* return_value);
	HRESULT set_WasOutgoingServerCertificateHashConfirmed(bool value);
	HRESULT get_OutgoingServerCertificateHash(HSTRING* return_value);
	HRESULT set_OutgoingServerCertificateHash(HSTRING value);
	HRESULT get_IsSyncScheduleManagedBySystem(bool* return_value);
	HRESULT set_IsSyncScheduleManagedBySystem(bool value);
}

@uuid("9d6b11b9-cbe5-45f5-822b-c267b81dbdb6")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.SystemAccess.UserDataAccountSystemAccessManager")
interface IUserDataAccountSystemAccessManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddAndShowDeviceAccountsAsync(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountConfiguration) accounts, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING))* return_result);
}

@uuid("943f854d-4b4e-439f-83d3-979b27c05ac7")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.SystemAccess.UserDataAccountSystemAccessManager")
interface IUserDataAccountSystemAccessManagerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SuppressLocalAccountWithAccountAsync(HSTRING userDataAccountId, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_CreateDeviceAccountAsync(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountConfiguration account, Windows.Foundation.IAsyncOperation!(HSTRING)* return_result);
	HRESULT abi_DeleteDeviceAccountAsync(HSTRING accountId, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_GetDeviceAccountConfigurationAsync(HSTRING accountId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountConfiguration)* return_result);
}

interface DeviceAccountConfiguration : Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration, Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2
{
}

interface UserDataAccountSystemAccessManager
{
}

enum DeviceAccountAuthenticationType
{
	Basic = 0,
	OAuth = 1,
	SingleSignOn = 2
}

enum DeviceAccountIconId
{
	Exchange = 0,
	Msa = 1,
	Outlook = 2,
	Generic = 3
}

enum DeviceAccountMailAgeFilter
{
	All = 0,
	Last1Day = 1,
	Last3Days = 2,
	Last7Days = 3,
	Last14Days = 4,
	Last30Days = 5,
	Last90Days = 6
}

enum DeviceAccountServerType
{
	Exchange = 0,
	Pop = 1,
	Imap = 2
}

enum DeviceAccountSyncScheduleKind
{
	Manual = 0,
	Every15Minutes = 1,
	Every30Minutes = 2,
	Every60Minutes = 3,
	Every2Hours = 4,
	Daily = 5,
	AsItemsArrive = 6
}