module Windows.Security.Authentication.Identity.Core;

import dwinrt;

@uuid("0fd340a5-f574-4320-a08e-0a19a82322aa")
@WinrtFactory("Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorAuthenticationManager")
interface IMicrosoftAccountMultiFactorAuthenticationManager : IInspectable
{
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
extern(Windows):
	HRESULT get_Current(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorAuthenticationManager* return_value);
}

@uuid("4e23a9a0-e9fa-497a-95de-6d5747bf974c")
@WinrtFactory("Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorGetSessionsResult")
interface IMicrosoftAccountMultiFactorGetSessionsResult : IInspectable
{
extern(Windows):
	HRESULT get_Sessions(Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionInfo)* return_value);
	HRESULT get_ServiceResponse(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse* return_value);
}

@uuid("82ba264b-d87c-4668-a976-40cfae547d08")
@WinrtFactory("Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorOneTimeCodedInfo")
interface IMicrosoftAccountMultiFactorOneTimeCodedInfo : IInspectable
{
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
extern(Windows):
	HRESULT get_Sessions(Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionInfo)* return_value);
	HRESULT get_UnregisteredAccounts(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_ServiceResponse(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse* return_value);
}

interface MicrosoftAccountMultiFactorAuthenticationManager : Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorAuthenticationManager
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorOneTimeCodedInfo) GetOneTimePassCodeAsync(HSTRING userAccountId, UINT32 codeLength)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorOneTimeCodedInfo) _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorAuthenticationManager)this.asInterface(uuid("0fd340a5-f574-4320-a08e-0a19a82322aa"))).abi_GetOneTimePassCodeAsync(userAccountId, codeLength, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse) AddDeviceAsync(HSTRING userAccountId, HSTRING authenticationToken, HSTRING wnsChannelId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse) _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorAuthenticationManager)this.asInterface(uuid("0fd340a5-f574-4320-a08e-0a19a82322aa"))).abi_AddDeviceAsync(userAccountId, authenticationToken, wnsChannelId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse) RemoveDeviceAsync(HSTRING userAccountId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse) _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorAuthenticationManager)this.asInterface(uuid("0fd340a5-f574-4320-a08e-0a19a82322aa"))).abi_RemoveDeviceAsync(userAccountId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse) UpdateWnsChannelAsync(HSTRING userAccountId, HSTRING channelUri)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse) _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorAuthenticationManager)this.asInterface(uuid("0fd340a5-f574-4320-a08e-0a19a82322aa"))).abi_UpdateWnsChannelAsync(userAccountId, channelUri, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorGetSessionsResult) GetSessionsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) userAccountIdList)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorGetSessionsResult) _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorAuthenticationManager)this.asInterface(uuid("0fd340a5-f574-4320-a08e-0a19a82322aa"))).abi_GetSessionsAsync(userAccountIdList, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo) GetSessionsAndUnregisteredAccountsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) userAccountIdList)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo) _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorAuthenticationManager)this.asInterface(uuid("0fd340a5-f574-4320-a08e-0a19a82322aa"))).abi_GetSessionsAndUnregisteredAccountsAsync(userAccountIdList, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse) ApproveSessionUsingAuthSessionInfoAsync(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionAuthenticationStatus sessionAuthentictionStatus, Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionInfo authenticationSessionInfo)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse) _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorAuthenticationManager)this.asInterface(uuid("0fd340a5-f574-4320-a08e-0a19a82322aa"))).abi_ApproveSessionUsingAuthSessionInfoAsync(sessionAuthentictionStatus, authenticationSessionInfo, &_ret));
		return _ret;
	}
	alias ApproveSessionAsync = ApproveSessionUsingAuthSessionInfoAsync;
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse) ApproveSessionAsync(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionAuthenticationStatus sessionAuthentictionStatus, HSTRING userAccountId, HSTRING sessionId, Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorAuthenticationType sessionAuthenticationType)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse) _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorAuthenticationManager)this.asInterface(uuid("0fd340a5-f574-4320-a08e-0a19a82322aa"))).abi_ApproveSessionAsync(sessionAuthentictionStatus, userAccountId, sessionId, sessionAuthenticationType, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse) DenySessionUsingAuthSessionInfoAsync(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionInfo authenticationSessionInfo)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse) _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorAuthenticationManager)this.asInterface(uuid("0fd340a5-f574-4320-a08e-0a19a82322aa"))).abi_DenySessionUsingAuthSessionInfoAsync(authenticationSessionInfo, &_ret));
		return _ret;
	}
	alias DenySessionAsync = DenySessionUsingAuthSessionInfoAsync;
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse) DenySessionAsync(HSTRING userAccountId, HSTRING sessionId, Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorAuthenticationType sessionAuthenticationType)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse) _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorAuthenticationManager)this.asInterface(uuid("0fd340a5-f574-4320-a08e-0a19a82322aa"))).abi_DenySessionAsync(userAccountId, sessionId, sessionAuthenticationType, &_ret));
		return _ret;
	}

	private static Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorAuthenticatorStatics _staticInstance;
	public static Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorAuthenticatorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorAuthenticatorStatics);
		return _staticInstance;
	}
	static Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorAuthenticationManager Current()
	{
		Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorAuthenticationManager _ret;
		Debug.OK(staticInstance.get_Current(&_ret));
		return _ret;
	}
}

interface MicrosoftAccountMultiFactorGetSessionsResult : Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorGetSessionsResult
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionInfo) Sessions()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionInfo) _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorGetSessionsResult)this.asInterface(uuid("4e23a9a0-e9fa-497a-95de-6d5747bf974c"))).get_Sessions(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse ServiceResponse()
	{
		Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorGetSessionsResult)this.asInterface(uuid("4e23a9a0-e9fa-497a-95de-6d5747bf974c"))).get_ServiceResponse(&_ret));
		return _ret;
	}
}

interface MicrosoftAccountMultiFactorOneTimeCodedInfo : Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorOneTimeCodedInfo
{
extern(Windows):
	final HSTRING Code()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorOneTimeCodedInfo)this.asInterface(uuid("82ba264b-d87c-4668-a976-40cfae547d08"))).get_Code(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan TimeInterval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorOneTimeCodedInfo)this.asInterface(uuid("82ba264b-d87c-4668-a976-40cfae547d08"))).get_TimeInterval(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan TimeToLive()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorOneTimeCodedInfo)this.asInterface(uuid("82ba264b-d87c-4668-a976-40cfae547d08"))).get_TimeToLive(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse ServiceResponse()
	{
		Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorOneTimeCodedInfo)this.asInterface(uuid("82ba264b-d87c-4668-a976-40cfae547d08"))).get_ServiceResponse(&_ret));
		return _ret;
	}
}

interface MicrosoftAccountMultiFactorSessionInfo : Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorSessionInfo
{
extern(Windows):
	final HSTRING UserAccountId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorSessionInfo)this.asInterface(uuid("5f7eabb4-a278-4635-b765-b494eb260af4"))).get_UserAccountId(&_ret));
		return _ret;
	}
	final HSTRING SessionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorSessionInfo)this.asInterface(uuid("5f7eabb4-a278-4635-b765-b494eb260af4"))).get_SessionId(&_ret));
		return _ret;
	}
	final HSTRING DisplaySessionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorSessionInfo)this.asInterface(uuid("5f7eabb4-a278-4635-b765-b494eb260af4"))).get_DisplaySessionId(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionApprovalStatus ApprovalStatus()
	{
		Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionApprovalStatus _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorSessionInfo)this.asInterface(uuid("5f7eabb4-a278-4635-b765-b494eb260af4"))).get_ApprovalStatus(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorAuthenticationType AuthenticationType()
	{
		Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorAuthenticationType _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorSessionInfo)this.asInterface(uuid("5f7eabb4-a278-4635-b765-b494eb260af4"))).get_AuthenticationType(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime RequestTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorSessionInfo)this.asInterface(uuid("5f7eabb4-a278-4635-b765-b494eb260af4"))).get_RequestTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime ExpirationTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorSessionInfo)this.asInterface(uuid("5f7eabb4-a278-4635-b765-b494eb260af4"))).get_ExpirationTime(&_ret));
		return _ret;
	}
}

interface MicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo : Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionInfo) Sessions()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorSessionInfo) _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo)this.asInterface(uuid("aa7ec5fb-da3f-4088-a20d-5618afadb2e5"))).get_Sessions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) UnregisteredAccounts()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo)this.asInterface(uuid("aa7ec5fb-da3f-4088-a20d-5618afadb2e5"))).get_UnregisteredAccounts(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse ServiceResponse()
	{
		Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Core.IMicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo)this.asInterface(uuid("aa7ec5fb-da3f-4088-a20d-5618afadb2e5"))).get_ServiceResponse(&_ret));
		return _ret;
	}
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