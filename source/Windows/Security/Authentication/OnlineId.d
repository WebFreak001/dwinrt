module Windows.Security.Authentication.OnlineId;

import dwinrt;

@uuid("a003f58a-29ab-4817-b884-d7516dad18b9")
@WinrtFactory("Windows.Security.Authentication.OnlineId.OnlineIdAuthenticator")
interface IOnlineIdAuthenticator : IInspectable
{
extern(Windows):
	HRESULT abi_AuthenticateUserAsync(Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest request, Windows.Security.Authentication.OnlineId.UserAuthenticationOperation* return_authenticationOperation);
	HRESULT abi_AuthenticateUserAsyncAdvanced(Windows.Foundation.Collections.IIterable!(Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest) requests, Windows.Security.Authentication.OnlineId.CredentialPromptType credentialPromptType, Windows.Security.Authentication.OnlineId.UserAuthenticationOperation* return_authenticationOperation);
	HRESULT abi_SignOutUserAsync(Windows.Security.Authentication.OnlineId.SignOutUserOperation* return_signOutUserOperation);
	HRESULT set_ApplicationId(GUID value);
	HRESULT get_ApplicationId(GUID* return_value);
	HRESULT get_CanSignOut(bool* return_value);
	HRESULT get_AuthenticatedSafeCustomerId(HSTRING* return_value);
}

@uuid("c95c547f-d781-4a94-acb8-c59874238c26")
@WinrtFactory("Windows.Security.Authentication.OnlineId.OnlineIdServiceTicket")
interface IOnlineIdServiceTicket : IInspectable
{
extern(Windows):
	HRESULT get_Value(HSTRING* return_value);
	HRESULT get_Request(Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest* return_value);
	HRESULT get_ErrorCode(INT32* return_value);
}

@uuid("297445d3-fb63-4135-8909-4e354c061466")
@WinrtFactory("Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest")
interface IOnlineIdServiceTicketRequest : IInspectable
{
extern(Windows):
	HRESULT get_Service(HSTRING* return_value);
	HRESULT get_Policy(HSTRING* return_value);
}

@uuid("bebb0a08-9e73-4077-9614-08614c0bc245")
@WinrtFactory("Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest")
interface IOnlineIdServiceTicketRequestFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateOnlineIdServiceTicketRequest(HSTRING service, HSTRING policy, Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest* return_onlineIdServiceTicketRequest);
	HRESULT abi_CreateOnlineIdServiceTicketRequestAdvanced(HSTRING service, Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest* return_onlineIdServiceTicketRequest);
}

@uuid("5798befb-1de4-4186-a2e6-b563f86aaf44")
@WinrtFactory("Windows.Security.Authentication.OnlineId.OnlineIdSystemAuthenticatorForUser")
interface IOnlineIdSystemAuthenticatorForUser : IInspectable
{
extern(Windows):
	HRESULT abi_GetTicketAsync(Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest request, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.OnlineId.OnlineIdSystemTicketResult)* return_operation);
	HRESULT set_ApplicationId(GUID value);
	HRESULT get_ApplicationId(GUID* return_value);
	HRESULT get_User(Windows.System.User* return_user);
}

@uuid("85047792-f634-41e3-96a4-5164e902c740")
@WinrtFactory("Windows.Security.Authentication.OnlineId.OnlineIdSystemAuthenticator")
interface IOnlineIdSystemAuthenticatorStatics : IInspectable
{
extern(Windows):
	HRESULT get_Default(Windows.Security.Authentication.OnlineId.OnlineIdSystemAuthenticatorForUser* return_value);
	HRESULT abi_GetForUser(Windows.System.User user, Windows.Security.Authentication.OnlineId.OnlineIdSystemAuthenticatorForUser* return_value);
}

@uuid("743cd20d-b6ca-434d-8124-53ea12685307")
@WinrtFactory("Windows.Security.Authentication.OnlineId.OnlineIdSystemIdentity")
interface IOnlineIdSystemIdentity : IInspectable
{
extern(Windows):
	HRESULT get_Ticket(Windows.Security.Authentication.OnlineId.OnlineIdServiceTicket* return_value);
	HRESULT get_Id(HSTRING* return_value);
}

@uuid("db0a5ff8-b098-4acd-9d13-9e640652b5b6")
@WinrtFactory("Windows.Security.Authentication.OnlineId.OnlineIdSystemTicketResult")
interface IOnlineIdSystemTicketResult : IInspectable
{
extern(Windows):
	HRESULT get_Identity(Windows.Security.Authentication.OnlineId.OnlineIdSystemIdentity* return_value);
	HRESULT get_Status(Windows.Security.Authentication.OnlineId.OnlineIdSystemTicketStatus* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("2146d9cd-0742-4be3-8a1c-7c7ae679aa88")
@WinrtFactory("Windows.Security.Authentication.OnlineId.UserIdentity")
interface IUserIdentity : IInspectable
{
extern(Windows):
	HRESULT get_Tickets(Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.OnlineId.OnlineIdServiceTicket)* return_value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_SafeCustomerId(HSTRING* return_value);
	HRESULT get_SignInName(HSTRING* return_value);
	HRESULT get_FirstName(HSTRING* return_value);
	HRESULT get_LastName(HSTRING* return_value);
	HRESULT get_IsBetaAccount(bool* return_value);
	HRESULT get_IsConfirmedPC(bool* return_value);
}

interface OnlineIdAuthenticator : Windows.Security.Authentication.OnlineId.IOnlineIdAuthenticator
{
extern(Windows):
	final Windows.Security.Authentication.OnlineId.UserAuthenticationOperation AuthenticateUserAsync(Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest request)
	{
		Windows.Security.Authentication.OnlineId.UserAuthenticationOperation _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdAuthenticator).abi_AuthenticateUserAsync(request, &_ret));
		return _ret;
	}
	final Windows.Security.Authentication.OnlineId.UserAuthenticationOperation AuthenticateUserAsyncAdvanced(Windows.Foundation.Collections.IIterable!(Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest) requests, Windows.Security.Authentication.OnlineId.CredentialPromptType credentialPromptType)
	{
		Windows.Security.Authentication.OnlineId.UserAuthenticationOperation _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdAuthenticator).abi_AuthenticateUserAsyncAdvanced(requests, credentialPromptType, &_ret));
		return _ret;
	}
	final Windows.Security.Authentication.OnlineId.SignOutUserOperation SignOutUserAsync()
	{
		Windows.Security.Authentication.OnlineId.SignOutUserOperation _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdAuthenticator).abi_SignOutUserAsync(&_ret));
		return _ret;
	}
	final void ApplicationId(GUID value)
	{
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdAuthenticator).set_ApplicationId(value));
	}
	final GUID ApplicationId()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdAuthenticator).get_ApplicationId(&_ret));
		return _ret;
	}
	final bool CanSignOut()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdAuthenticator).get_CanSignOut(&_ret));
		return _ret;
	}
	final HSTRING AuthenticatedSafeCustomerId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdAuthenticator).get_AuthenticatedSafeCustomerId(&_ret));
		return _ret;
	}
	static OnlineIdAuthenticator New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(OnlineIdAuthenticator).abi_ActivateInstance(&ret));
		return ret.as!(OnlineIdAuthenticator);
	}
}

interface OnlineIdServiceTicket : Windows.Security.Authentication.OnlineId.IOnlineIdServiceTicket
{
extern(Windows):
	final HSTRING Value()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdServiceTicket).get_Value(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest Request()
	{
		Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdServiceTicket).get_Request(&_ret));
		return _ret;
	}
	final INT32 ErrorCode()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdServiceTicket).get_ErrorCode(&_ret));
		return _ret;
	}
}

interface OnlineIdServiceTicketRequest : Windows.Security.Authentication.OnlineId.IOnlineIdServiceTicketRequest
{
extern(Windows):
	final HSTRING Service()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdServiceTicketRequest).get_Service(&_ret));
		return _ret;
	}
	final HSTRING Policy()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdServiceTicketRequest).get_Policy(&_ret));
		return _ret;
	}
	static Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest New(HSTRING service, HSTRING policy)
	{
		auto factory = factory!(Windows.Security.Authentication.OnlineId.IOnlineIdServiceTicketRequestFactory);
		Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest _ret;
		Debug.OK(factory.as!(Windows.Security.Authentication.OnlineId.IOnlineIdServiceTicketRequestFactory).abi_CreateOnlineIdServiceTicketRequest(service, policy, &_ret));
		return _ret;
	}
	static Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest New(HSTRING service)
	{
		auto factory = factory!(Windows.Security.Authentication.OnlineId.IOnlineIdServiceTicketRequestFactory);
		Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest _ret;
		Debug.OK(factory.as!(Windows.Security.Authentication.OnlineId.IOnlineIdServiceTicketRequestFactory).abi_CreateOnlineIdServiceTicketRequestAdvanced(service, &_ret));
		return _ret;
	}
}

interface OnlineIdSystemAuthenticator
{
	private static Windows.Security.Authentication.OnlineId.IOnlineIdSystemAuthenticatorStatics _staticInstance;
	public static Windows.Security.Authentication.OnlineId.IOnlineIdSystemAuthenticatorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Authentication.OnlineId.IOnlineIdSystemAuthenticatorStatics);
		return _staticInstance;
	}
	static Windows.Security.Authentication.OnlineId.OnlineIdSystemAuthenticatorForUser Default()
	{
		Windows.Security.Authentication.OnlineId.OnlineIdSystemAuthenticatorForUser _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Authentication.OnlineId.IOnlineIdSystemAuthenticatorStatics).get_Default(&_ret));
		return _ret;
	}
	static Windows.Security.Authentication.OnlineId.OnlineIdSystemAuthenticatorForUser GetForUser(Windows.System.User user)
	{
		Windows.Security.Authentication.OnlineId.OnlineIdSystemAuthenticatorForUser _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Authentication.OnlineId.IOnlineIdSystemAuthenticatorStatics).abi_GetForUser(user, &_ret));
		return _ret;
	}
}

interface OnlineIdSystemAuthenticatorForUser : Windows.Security.Authentication.OnlineId.IOnlineIdSystemAuthenticatorForUser
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.OnlineId.OnlineIdSystemTicketResult) GetTicketAsync(Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest request)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.OnlineId.OnlineIdSystemTicketResult) _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdSystemAuthenticatorForUser).abi_GetTicketAsync(request, &_ret));
		return _ret;
	}
	final void ApplicationId(GUID value)
	{
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdSystemAuthenticatorForUser).set_ApplicationId(value));
	}
	final GUID ApplicationId()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdSystemAuthenticatorForUser).get_ApplicationId(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdSystemAuthenticatorForUser).get_User(&_ret));
		return _ret;
	}
}

interface OnlineIdSystemIdentity : Windows.Security.Authentication.OnlineId.IOnlineIdSystemIdentity
{
extern(Windows):
	final Windows.Security.Authentication.OnlineId.OnlineIdServiceTicket Ticket()
	{
		Windows.Security.Authentication.OnlineId.OnlineIdServiceTicket _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdSystemIdentity).get_Ticket(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdSystemIdentity).get_Id(&_ret));
		return _ret;
	}
}

interface OnlineIdSystemTicketResult : Windows.Security.Authentication.OnlineId.IOnlineIdSystemTicketResult
{
extern(Windows):
	final Windows.Security.Authentication.OnlineId.OnlineIdSystemIdentity Identity()
	{
		Windows.Security.Authentication.OnlineId.OnlineIdSystemIdentity _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdSystemTicketResult).get_Identity(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.OnlineId.OnlineIdSystemTicketStatus Status()
	{
		Windows.Security.Authentication.OnlineId.OnlineIdSystemTicketStatus _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdSystemTicketResult).get_Status(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IOnlineIdSystemTicketResult).get_ExtendedError(&_ret));
		return _ret;
	}
}

interface SignOutUserOperation : Windows.Foundation.IAsyncAction
{
extern(Windows):
	final void Completed(Windows.Foundation.AsyncActionCompletedHandler handler)
	{
		Debug.OK(this.as!(Windows.Foundation.IAsyncAction).set_Completed(handler));
	}
	final Windows.Foundation.AsyncActionCompletedHandler Completed()
	{
		Windows.Foundation.AsyncActionCompletedHandler _ret;
		Debug.OK(this.as!(Windows.Foundation.IAsyncAction).get_Completed(&_ret));
		return _ret;
	}
	final void GetResults()
	{
		Debug.OK(this.as!(Windows.Foundation.IAsyncAction).abi_GetResults());
	}
}

interface UserAuthenticationOperation : Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.OnlineId.UserIdentity)
{
extern(Windows):
	final void Completed(Windows.Foundation.AsyncOperationCompletedHandler!(Windows.Security.Authentication.OnlineId.UserIdentity) handler)
	{
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.OnlineId.UserIdentity)).set_Completed(handler));
	}
	final Windows.Foundation.AsyncOperationCompletedHandler!(Windows.Security.Authentication.OnlineId.UserIdentity) Completed()
	{
		Windows.Foundation.AsyncOperationCompletedHandler!(Windows.Security.Authentication.OnlineId.UserIdentity) _ret;
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.OnlineId.UserIdentity)).get_Completed(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.OnlineId.UserIdentity Results()
	{
		Windows.Security.Authentication.OnlineId.UserIdentity _ret;
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.OnlineId.UserIdentity)).get_Results(&_ret));
		return _ret;
	}
}

interface UserIdentity : Windows.Security.Authentication.OnlineId.IUserIdentity
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.OnlineId.OnlineIdServiceTicket) Tickets()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.OnlineId.OnlineIdServiceTicket) _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IUserIdentity).get_Tickets(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IUserIdentity).get_Id(&_ret));
		return _ret;
	}
	final HSTRING SafeCustomerId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IUserIdentity).get_SafeCustomerId(&_ret));
		return _ret;
	}
	final HSTRING SignInName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IUserIdentity).get_SignInName(&_ret));
		return _ret;
	}
	final HSTRING FirstName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IUserIdentity).get_FirstName(&_ret));
		return _ret;
	}
	final HSTRING LastName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IUserIdentity).get_LastName(&_ret));
		return _ret;
	}
	final bool IsBetaAccount()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IUserIdentity).get_IsBetaAccount(&_ret));
		return _ret;
	}
	final bool IsConfirmedPC()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Authentication.OnlineId.IUserIdentity).get_IsConfirmedPC(&_ret));
		return _ret;
	}
}

enum CredentialPromptType
{
	PromptIfNeeded = 0,
	RetypeCredentials = 1,
	DoNotPrompt = 2
}

enum OnlineIdSystemTicketStatus
{
	Success = 0,
	Error = 1,
	ServiceConnectionError = 2
}