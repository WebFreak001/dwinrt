module Windows.ApplicationModel.UserDataAccounts.SystemAccess;

import dwinrt;

@uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountConfiguration")
interface IDeviceAccountConfiguration : IInspectable
{
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
extern(Windows):
	HRESULT abi_AddAndShowDeviceAccountsAsync(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountConfiguration) accounts, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING))* return_result);
}

@uuid("943f854d-4b4e-439f-83d3-979b27c05ac7")
@WinrtFactory("Windows.ApplicationModel.UserDataAccounts.SystemAccess.UserDataAccountSystemAccessManager")
interface IUserDataAccountSystemAccessManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_SuppressLocalAccountWithAccountAsync(HSTRING userDataAccountId, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_CreateDeviceAccountAsync(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountConfiguration account, Windows.Foundation.IAsyncOperation!(HSTRING)* return_result);
	HRESULT abi_DeleteDeviceAccountAsync(HSTRING accountId, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_GetDeviceAccountConfigurationAsync(HSTRING accountId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountConfiguration)* return_result);
}

interface DeviceAccountConfiguration : Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration, Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2
{
extern(Windows):
	final HSTRING AccountName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).get_AccountName(&_ret));
		return _ret;
	}
	final void AccountName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).set_AccountName(value));
	}
	final HSTRING DeviceAccountTypeId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).get_DeviceAccountTypeId(&_ret));
		return _ret;
	}
	final void DeviceAccountTypeId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).set_DeviceAccountTypeId(value));
	}
	final Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountServerType ServerType()
	{
		Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountServerType _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).get_ServerType(&_ret));
		return _ret;
	}
	final void ServerType(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountServerType value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).set_ServerType(value));
	}
	final HSTRING EmailAddress()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).get_EmailAddress(&_ret));
		return _ret;
	}
	final void EmailAddress(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).set_EmailAddress(value));
	}
	final HSTRING Domain()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).get_Domain(&_ret));
		return _ret;
	}
	final void Domain(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).set_Domain(value));
	}
	final bool EmailSyncEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).get_EmailSyncEnabled(&_ret));
		return _ret;
	}
	final void EmailSyncEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).set_EmailSyncEnabled(value));
	}
	final bool ContactsSyncEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).get_ContactsSyncEnabled(&_ret));
		return _ret;
	}
	final void ContactsSyncEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).set_ContactsSyncEnabled(value));
	}
	final bool CalendarSyncEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).get_CalendarSyncEnabled(&_ret));
		return _ret;
	}
	final void CalendarSyncEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).set_CalendarSyncEnabled(value));
	}
	final HSTRING IncomingServerAddress()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).get_IncomingServerAddress(&_ret));
		return _ret;
	}
	final void IncomingServerAddress(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).set_IncomingServerAddress(value));
	}
	final INT32 IncomingServerPort()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).get_IncomingServerPort(&_ret));
		return _ret;
	}
	final void IncomingServerPort(INT32 value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).set_IncomingServerPort(value));
	}
	final bool IncomingServerRequiresSsl()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).get_IncomingServerRequiresSsl(&_ret));
		return _ret;
	}
	final void IncomingServerRequiresSsl(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).set_IncomingServerRequiresSsl(value));
	}
	final HSTRING IncomingServerUsername()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).get_IncomingServerUsername(&_ret));
		return _ret;
	}
	final void IncomingServerUsername(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).set_IncomingServerUsername(value));
	}
	final HSTRING OutgoingServerAddress()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).get_OutgoingServerAddress(&_ret));
		return _ret;
	}
	final void OutgoingServerAddress(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).set_OutgoingServerAddress(value));
	}
	final INT32 OutgoingServerPort()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).get_OutgoingServerPort(&_ret));
		return _ret;
	}
	final void OutgoingServerPort(INT32 value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).set_OutgoingServerPort(value));
	}
	final bool OutgoingServerRequiresSsl()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).get_OutgoingServerRequiresSsl(&_ret));
		return _ret;
	}
	final void OutgoingServerRequiresSsl(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).set_OutgoingServerRequiresSsl(value));
	}
	final HSTRING OutgoingServerUsername()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).get_OutgoingServerUsername(&_ret));
		return _ret;
	}
	final void OutgoingServerUsername(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration).set_OutgoingServerUsername(value));
	}
	final Windows.Security.Credentials.PasswordCredential IncomingServerCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_IncomingServerCredential(&_ret));
		return _ret;
	}
	final void IncomingServerCredential(Windows.Security.Credentials.PasswordCredential value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_IncomingServerCredential(value));
	}
	final Windows.Security.Credentials.PasswordCredential OutgoingServerCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_OutgoingServerCredential(&_ret));
		return _ret;
	}
	final void OutgoingServerCredential(Windows.Security.Credentials.PasswordCredential value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_OutgoingServerCredential(value));
	}
	final HSTRING OAuthRefreshToken()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_OAuthRefreshToken(&_ret));
		return _ret;
	}
	final void OAuthRefreshToken(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_OAuthRefreshToken(value));
	}
	final bool IsExternallyManaged()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_IsExternallyManaged(&_ret));
		return _ret;
	}
	final void IsExternallyManaged(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_IsExternallyManaged(value));
	}
	final Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountIconId AccountIconId()
	{
		Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountIconId _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_AccountIconId(&_ret));
		return _ret;
	}
	final void AccountIconId(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountIconId value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_AccountIconId(value));
	}
	final Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountAuthenticationType AuthenticationType()
	{
		Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountAuthenticationType _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_AuthenticationType(&_ret));
		return _ret;
	}
	final void AuthenticationType(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountAuthenticationType value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_AuthenticationType(value));
	}
	final bool IsSsoAuthenticationSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_IsSsoAuthenticationSupported(&_ret));
		return _ret;
	}
	final HSTRING SsoAccountId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_SsoAccountId(&_ret));
		return _ret;
	}
	final void SsoAccountId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_SsoAccountId(value));
	}
	final bool AlwaysDownloadFullMessage()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_AlwaysDownloadFullMessage(&_ret));
		return _ret;
	}
	final void AlwaysDownloadFullMessage(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_AlwaysDownloadFullMessage(value));
	}
	final bool DoesPolicyAllowMailSync()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_DoesPolicyAllowMailSync(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind SyncScheduleKind()
	{
		Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_SyncScheduleKind(&_ret));
		return _ret;
	}
	final void SyncScheduleKind(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_SyncScheduleKind(value));
	}
	final Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountMailAgeFilter MailAgeFilter()
	{
		Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountMailAgeFilter _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_MailAgeFilter(&_ret));
		return _ret;
	}
	final void MailAgeFilter(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountMailAgeFilter value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_MailAgeFilter(value));
	}
	final bool IsClientAuthenticationCertificateRequired()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_IsClientAuthenticationCertificateRequired(&_ret));
		return _ret;
	}
	final void IsClientAuthenticationCertificateRequired(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_IsClientAuthenticationCertificateRequired(value));
	}
	final bool AutoSelectAuthenticationCertificate()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_AutoSelectAuthenticationCertificate(&_ret));
		return _ret;
	}
	final void AutoSelectAuthenticationCertificate(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_AutoSelectAuthenticationCertificate(value));
	}
	final HSTRING AuthenticationCertificateId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_AuthenticationCertificateId(&_ret));
		return _ret;
	}
	final void AuthenticationCertificateId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_AuthenticationCertificateId(value));
	}
	final Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind CardDavSyncScheduleKind()
	{
		Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_CardDavSyncScheduleKind(&_ret));
		return _ret;
	}
	final void CardDavSyncScheduleKind(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_CardDavSyncScheduleKind(value));
	}
	final Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind CalDavSyncScheduleKind()
	{
		Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_CalDavSyncScheduleKind(&_ret));
		return _ret;
	}
	final void CalDavSyncScheduleKind(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_CalDavSyncScheduleKind(value));
	}
	final Windows.Foundation.Uri CardDavServerUrl()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_CardDavServerUrl(&_ret));
		return _ret;
	}
	final void CardDavServerUrl(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_CardDavServerUrl(value));
	}
	final bool CardDavRequiresSsl()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_CardDavRequiresSsl(&_ret));
		return _ret;
	}
	final void CardDavRequiresSsl(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_CardDavRequiresSsl(value));
	}
	final Windows.Foundation.Uri CalDavServerUrl()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_CalDavServerUrl(&_ret));
		return _ret;
	}
	final void CalDavServerUrl(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_CalDavServerUrl(value));
	}
	final bool CalDavRequiresSsl()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_CalDavRequiresSsl(&_ret));
		return _ret;
	}
	final void CalDavRequiresSsl(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_CalDavRequiresSsl(value));
	}
	final bool WasModifiedByUser()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_WasModifiedByUser(&_ret));
		return _ret;
	}
	final void WasModifiedByUser(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_WasModifiedByUser(value));
	}
	final bool WasIncomingServerCertificateHashConfirmed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_WasIncomingServerCertificateHashConfirmed(&_ret));
		return _ret;
	}
	final void WasIncomingServerCertificateHashConfirmed(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_WasIncomingServerCertificateHashConfirmed(value));
	}
	final HSTRING IncomingServerCertificateHash()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_IncomingServerCertificateHash(&_ret));
		return _ret;
	}
	final void IncomingServerCertificateHash(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_IncomingServerCertificateHash(value));
	}
	final bool IsOutgoingServerAuthenticationRequired()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_IsOutgoingServerAuthenticationRequired(&_ret));
		return _ret;
	}
	final void IsOutgoingServerAuthenticationRequired(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_IsOutgoingServerAuthenticationRequired(value));
	}
	final bool IsOutgoingServerAuthenticationEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_IsOutgoingServerAuthenticationEnabled(&_ret));
		return _ret;
	}
	final void IsOutgoingServerAuthenticationEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_IsOutgoingServerAuthenticationEnabled(value));
	}
	final bool WasOutgoingServerCertificateHashConfirmed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_WasOutgoingServerCertificateHashConfirmed(&_ret));
		return _ret;
	}
	final void WasOutgoingServerCertificateHashConfirmed(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_WasOutgoingServerCertificateHashConfirmed(value));
	}
	final HSTRING OutgoingServerCertificateHash()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_OutgoingServerCertificateHash(&_ret));
		return _ret;
	}
	final void OutgoingServerCertificateHash(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_OutgoingServerCertificateHash(value));
	}
	final bool IsSyncScheduleManagedBySystem()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).get_IsSyncScheduleManagedBySystem(&_ret));
		return _ret;
	}
	final void IsSyncScheduleManagedBySystem(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2).set_IsSyncScheduleManagedBySystem(value));
	}
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