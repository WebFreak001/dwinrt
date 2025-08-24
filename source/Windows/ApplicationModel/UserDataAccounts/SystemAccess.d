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
	final wstring AccountName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).get_AccountName(&_ret));
		return hstring(_ret).d_str;
	}
	final void AccountName(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).set_AccountName(hstring(value).handle));
	}
	final wstring DeviceAccountTypeId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).get_DeviceAccountTypeId(&_ret));
		return hstring(_ret).d_str;
	}
	final void DeviceAccountTypeId(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).set_DeviceAccountTypeId(hstring(value).handle));
	}
	final Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountServerType ServerType()
	{
		Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountServerType _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).get_ServerType(&_ret));
		return _ret;
	}
	final void ServerType(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountServerType value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).set_ServerType(value));
	}
	final wstring EmailAddress()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).get_EmailAddress(&_ret));
		return hstring(_ret).d_str;
	}
	final void EmailAddress(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).set_EmailAddress(hstring(value).handle));
	}
	final wstring Domain()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).get_Domain(&_ret));
		return hstring(_ret).d_str;
	}
	final void Domain(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).set_Domain(hstring(value).handle));
	}
	final bool EmailSyncEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).get_EmailSyncEnabled(&_ret));
		return _ret;
	}
	final void EmailSyncEnabled(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).set_EmailSyncEnabled(value));
	}
	final bool ContactsSyncEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).get_ContactsSyncEnabled(&_ret));
		return _ret;
	}
	final void ContactsSyncEnabled(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).set_ContactsSyncEnabled(value));
	}
	final bool CalendarSyncEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).get_CalendarSyncEnabled(&_ret));
		return _ret;
	}
	final void CalendarSyncEnabled(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).set_CalendarSyncEnabled(value));
	}
	final wstring IncomingServerAddress()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).get_IncomingServerAddress(&_ret));
		return hstring(_ret).d_str;
	}
	final void IncomingServerAddress(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).set_IncomingServerAddress(hstring(value).handle));
	}
	final INT32 IncomingServerPort()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).get_IncomingServerPort(&_ret));
		return _ret;
	}
	final void IncomingServerPort(INT32 value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).set_IncomingServerPort(value));
	}
	final bool IncomingServerRequiresSsl()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).get_IncomingServerRequiresSsl(&_ret));
		return _ret;
	}
	final void IncomingServerRequiresSsl(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).set_IncomingServerRequiresSsl(value));
	}
	final wstring IncomingServerUsername()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).get_IncomingServerUsername(&_ret));
		return hstring(_ret).d_str;
	}
	final void IncomingServerUsername(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).set_IncomingServerUsername(hstring(value).handle));
	}
	final wstring OutgoingServerAddress()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).get_OutgoingServerAddress(&_ret));
		return hstring(_ret).d_str;
	}
	final void OutgoingServerAddress(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).set_OutgoingServerAddress(hstring(value).handle));
	}
	final INT32 OutgoingServerPort()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).get_OutgoingServerPort(&_ret));
		return _ret;
	}
	final void OutgoingServerPort(INT32 value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).set_OutgoingServerPort(value));
	}
	final bool OutgoingServerRequiresSsl()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).get_OutgoingServerRequiresSsl(&_ret));
		return _ret;
	}
	final void OutgoingServerRequiresSsl(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).set_OutgoingServerRequiresSsl(value));
	}
	final wstring OutgoingServerUsername()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).get_OutgoingServerUsername(&_ret));
		return hstring(_ret).d_str;
	}
	final void OutgoingServerUsername(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration)this.asInterface(uuid("ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63"))).set_OutgoingServerUsername(hstring(value).handle));
	}
	final Windows.Security.Credentials.PasswordCredential IncomingServerCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_IncomingServerCredential(&_ret));
		return _ret;
	}
	final void IncomingServerCredential(Windows.Security.Credentials.PasswordCredential value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_IncomingServerCredential(value));
	}
	final Windows.Security.Credentials.PasswordCredential OutgoingServerCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_OutgoingServerCredential(&_ret));
		return _ret;
	}
	final void OutgoingServerCredential(Windows.Security.Credentials.PasswordCredential value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_OutgoingServerCredential(value));
	}
	final wstring OAuthRefreshToken()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_OAuthRefreshToken(&_ret));
		return hstring(_ret).d_str;
	}
	final void OAuthRefreshToken(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_OAuthRefreshToken(hstring(value).handle));
	}
	final bool IsExternallyManaged()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_IsExternallyManaged(&_ret));
		return _ret;
	}
	final void IsExternallyManaged(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_IsExternallyManaged(value));
	}
	final Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountIconId AccountIconId()
	{
		Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountIconId _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_AccountIconId(&_ret));
		return _ret;
	}
	final void AccountIconId(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountIconId value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_AccountIconId(value));
	}
	final Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountAuthenticationType AuthenticationType()
	{
		Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountAuthenticationType _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_AuthenticationType(&_ret));
		return _ret;
	}
	final void AuthenticationType(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountAuthenticationType value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_AuthenticationType(value));
	}
	final bool IsSsoAuthenticationSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_IsSsoAuthenticationSupported(&_ret));
		return _ret;
	}
	final wstring SsoAccountId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_SsoAccountId(&_ret));
		return hstring(_ret).d_str;
	}
	final void SsoAccountId(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_SsoAccountId(hstring(value).handle));
	}
	final bool AlwaysDownloadFullMessage()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_AlwaysDownloadFullMessage(&_ret));
		return _ret;
	}
	final void AlwaysDownloadFullMessage(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_AlwaysDownloadFullMessage(value));
	}
	final bool DoesPolicyAllowMailSync()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_DoesPolicyAllowMailSync(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind SyncScheduleKind()
	{
		Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_SyncScheduleKind(&_ret));
		return _ret;
	}
	final void SyncScheduleKind(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_SyncScheduleKind(value));
	}
	final Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountMailAgeFilter MailAgeFilter()
	{
		Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountMailAgeFilter _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_MailAgeFilter(&_ret));
		return _ret;
	}
	final void MailAgeFilter(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountMailAgeFilter value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_MailAgeFilter(value));
	}
	final bool IsClientAuthenticationCertificateRequired()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_IsClientAuthenticationCertificateRequired(&_ret));
		return _ret;
	}
	final void IsClientAuthenticationCertificateRequired(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_IsClientAuthenticationCertificateRequired(value));
	}
	final bool AutoSelectAuthenticationCertificate()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_AutoSelectAuthenticationCertificate(&_ret));
		return _ret;
	}
	final void AutoSelectAuthenticationCertificate(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_AutoSelectAuthenticationCertificate(value));
	}
	final wstring AuthenticationCertificateId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_AuthenticationCertificateId(&_ret));
		return hstring(_ret).d_str;
	}
	final void AuthenticationCertificateId(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_AuthenticationCertificateId(hstring(value).handle));
	}
	final Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind CardDavSyncScheduleKind()
	{
		Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_CardDavSyncScheduleKind(&_ret));
		return _ret;
	}
	final void CardDavSyncScheduleKind(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_CardDavSyncScheduleKind(value));
	}
	final Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind CalDavSyncScheduleKind()
	{
		Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_CalDavSyncScheduleKind(&_ret));
		return _ret;
	}
	final void CalDavSyncScheduleKind(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountSyncScheduleKind value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_CalDavSyncScheduleKind(value));
	}
	final Windows.Foundation.Uri CardDavServerUrl()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_CardDavServerUrl(&_ret));
		return _ret;
	}
	final void CardDavServerUrl(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_CardDavServerUrl(value));
	}
	final bool CardDavRequiresSsl()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_CardDavRequiresSsl(&_ret));
		return _ret;
	}
	final void CardDavRequiresSsl(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_CardDavRequiresSsl(value));
	}
	final Windows.Foundation.Uri CalDavServerUrl()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_CalDavServerUrl(&_ret));
		return _ret;
	}
	final void CalDavServerUrl(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_CalDavServerUrl(value));
	}
	final bool CalDavRequiresSsl()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_CalDavRequiresSsl(&_ret));
		return _ret;
	}
	final void CalDavRequiresSsl(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_CalDavRequiresSsl(value));
	}
	final bool WasModifiedByUser()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_WasModifiedByUser(&_ret));
		return _ret;
	}
	final void WasModifiedByUser(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_WasModifiedByUser(value));
	}
	final bool WasIncomingServerCertificateHashConfirmed()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_WasIncomingServerCertificateHashConfirmed(&_ret));
		return _ret;
	}
	final void WasIncomingServerCertificateHashConfirmed(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_WasIncomingServerCertificateHashConfirmed(value));
	}
	final wstring IncomingServerCertificateHash()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_IncomingServerCertificateHash(&_ret));
		return hstring(_ret).d_str;
	}
	final void IncomingServerCertificateHash(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_IncomingServerCertificateHash(hstring(value).handle));
	}
	final bool IsOutgoingServerAuthenticationRequired()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_IsOutgoingServerAuthenticationRequired(&_ret));
		return _ret;
	}
	final void IsOutgoingServerAuthenticationRequired(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_IsOutgoingServerAuthenticationRequired(value));
	}
	final bool IsOutgoingServerAuthenticationEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_IsOutgoingServerAuthenticationEnabled(&_ret));
		return _ret;
	}
	final void IsOutgoingServerAuthenticationEnabled(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_IsOutgoingServerAuthenticationEnabled(value));
	}
	final bool WasOutgoingServerCertificateHashConfirmed()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_WasOutgoingServerCertificateHashConfirmed(&_ret));
		return _ret;
	}
	final void WasOutgoingServerCertificateHashConfirmed(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_WasOutgoingServerCertificateHashConfirmed(value));
	}
	final wstring OutgoingServerCertificateHash()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_OutgoingServerCertificateHash(&_ret));
		return hstring(_ret).d_str;
	}
	final void OutgoingServerCertificateHash(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_OutgoingServerCertificateHash(hstring(value).handle));
	}
	final bool IsSyncScheduleManagedBySystem()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).get_IsSyncScheduleManagedBySystem(&_ret));
		return _ret;
	}
	final void IsSyncScheduleManagedBySystem(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2)this.asInterface(uuid("f2b2e5a6-728d-4a4a-8945-2bf8580136de"))).set_IsSyncScheduleManagedBySystem(value));
	}
	static DeviceAccountConfiguration New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(DeviceAccountConfiguration).abi_ActivateInstance(&ret));
		return cast(DeviceAccountConfiguration) ret;
	}
}

interface UserDataAccountSystemAccessManager
{
	private static Windows.ApplicationModel.UserDataAccounts.SystemAccess.IUserDataAccountSystemAccessManagerStatics _staticInstance;
	public static Windows.ApplicationModel.UserDataAccounts.SystemAccess.IUserDataAccountSystemAccessManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.IUserDataAccountSystemAccessManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) AddAndShowDeviceAccountsAsync(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountConfiguration) accounts)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) _ret;
		Debug.OK(staticInstance.abi_AddAndShowDeviceAccountsAsync(accounts, &_ret));
		return _ret;
	}
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