module Windows.Security.Authentication.Identity.Core;

import dwinrt;

@uuid("0fd340a5-f574-4320-a08e-0a19a82322aa")
@WinrtFactory("Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorAuthenticationManager")
interface IMicrosoftAccountMultiFactorAuthenticationManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetOneTimePassCodeAsync(HSTRING userAccountId, UINT32 codeLength, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorOneTimeCodedInfo)* return_asyncOperation);
	HRESULT abi_AddDeviceAsync(HSTRING userAccountId, HSTRING authenticationToken, HSTRING wnsChannelId, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse)* return_asyncOperation);
	HRESULT abi_RemoveDeviceAsync(HSTRING userAccountId, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse)* return_asyncOperation);
	HRESULT abi_UpdateWnsChannelAsync(HSTRING userAccountId, HSTRING channelUri, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse)* return_asyncOperation);
	HRESULT abi_GetSessionsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) userAccountIdList, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorGetSessionsResult)* return_asyncOperation);
	HRESULT abi_GetSessionsAndUnregisteredAccountsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) userAccountIdList, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo)* return_asyncOperation);
	HRESULT abi_ApproveSessionUsingAuthSessionInfoAsync(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionAuthenticationStatus sessionAuthentictionStatus, Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionInfo authenticationSessionInfo, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse)* return_asyncOperation);
	HRESULT abi_ApproveSessionAsync(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionAuthenticationStatus sessionAuthentictionStatus, HSTRING userAccountId, HSTRING sessionId, Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorAuthenticationType sessionAuthenticationType, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse)* return_asyncOperation);
	HRESULT abi_DenySessionUsingAuthSessionInfoAsync(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionInfo authenticationSessionInfo, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse)* return_asyncOperation);
	HRESULT abi_DenySessionAsync(HSTRING userAccountId, HSTRING sessionId, Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorAuthenticationType sessionAuthenticationType, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse)* return_asyncOperation);
}

@uuid("d964c2e6-f446-4c71-8b79-6ea4024aa9b8")
@WinrtFactory("Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorAuthenticationManager")
interface IMicrosoftAccountMultiFactorAuthenticatorStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Current(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorAuthenticationManager* return_value);
}

@uuid("4e23a9a0-e9fa-497a-95de-6d5747bf974c")
@WinrtFactory("Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorGetSessionsResult")
interface IMicrosoftAccountMultiFactorGetSessionsResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Sessions(Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionInfo)* return_value);
	HRESULT get_ServiceResponse(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse* return_value);
}

@uuid("82ba264b-d87c-4668-a976-40cfae547d08")
@WinrtFactory("Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorOneTimeCodedInfo")
interface IMicrosoftAccountMultiFactorOneTimeCodedInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Code(HSTRING* return_value);
	HRESULT get_TimeInterval(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_TimeToLive(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_ServiceResponse(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse* return_value);
}

@uuid("5f7eabb4-a278-4635-b765-b494eb260af4")
@WinrtFactory("Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionInfo")
interface IMicrosoftAccountMultiFactorSessionInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UserAccountId(HSTRING* return_value);
	HRESULT get_SessionId(HSTRING* return_value);
	HRESULT get_DisplaySessionId(HSTRING* return_value);
	HRESULT get_ApprovalStatus(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionApprovalStatus* return_value);
	HRESULT get_AuthenticationType(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorAuthenticationType* return_value);
	HRESULT get_RequestTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_ExpirationTime(Windows.Foundation.DateTime* return_value);
}

@uuid("aa7ec5fb-da3f-4088-a20d-5618afadb2e5")
@WinrtFactory("Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo")
interface IMicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Sessions(Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionInfo)* return_value);
	HRESULT get_UnregisteredAccounts(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_ServiceResponse(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse* return_value);
}

interface MicrosoftAccountMultiFactorAuthenticationManager
{
}

interface MicrosoftAccountMultiFactorGetSessionsResult
{
}

interface MicrosoftAccountMultiFactorOneTimeCodedInfo
{
}

interface MicrosoftAccountMultiFactorSessionInfo
{
}

interface MicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo
{
}

enum MicrosoftAccountMultiFactorAuthenticationType
{
	User = 0,
	Device = 1
}

enum MicrosoftAccountMultiFactorServiceResponse
{
	Success = 0,
	Error = 1,
	NoNetworkConnection = 2,
	ServiceUnavailable = 3,
	TotpSetupDenied = 4,
	NgcNotSetup = 5,
	SessionAlreadyDenied = 6,
	SessionAlreadyApproved = 7,
	SessionExpired = 8,
	NgcNonceExpired = 9,
	InvalidSessionId = 10,
	InvalidSessionType = 11,
	InvalidOperation = 12,
	InvalidStateTransition = 13,
	DeviceNotFound = 14,
	FlowDisabled = 15,
	SessionNotApproved = 16,
	OperationCanceledByUser = 17,
	NgcDisabledByServer = 18,
	NgcKeyNotFoundOnServer = 19,
	UIRequired = 20,
	DeviceIdChanged = 21
}

enum MicrosoftAccountMultiFactorSessionApprovalStatus
{
	Pending = 0,
	Approved = 1,
	Denied = 2
}

enum MicrosoftAccountMultiFactorSessionAuthenticationStatus
{
	Authenticated = 0,
	Unauthenticated = 1
}