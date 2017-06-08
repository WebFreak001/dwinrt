module Windows.Security.Authentication.OnlineId;

import dwinrt;

@uuid("a003f58a-29ab-4817-b884-d7516dad18b9")
@WinrtFactory("Windows.Security.Authentication.OnlineId.OnlineIdAuthenticator")
interface IOnlineIdAuthenticator : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Value(HSTRING* return_value);
	HRESULT get_Request(Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest* return_value);
	HRESULT get_ErrorCode(INT32* return_value);
}

@uuid("297445d3-fb63-4135-8909-4e354c061466")
@WinrtFactory("Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest")
interface IOnlineIdServiceTicketRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Service(HSTRING* return_value);
	HRESULT get_Policy(HSTRING* return_value);
}

@uuid("bebb0a08-9e73-4077-9614-08614c0bc245")
@WinrtFactory("Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest")
interface IOnlineIdServiceTicketRequestFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateOnlineIdServiceTicketRequest(HSTRING service, HSTRING policy, Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest* return_onlineIdServiceTicketRequest);
	HRESULT abi_CreateOnlineIdServiceTicketRequestAdvanced(HSTRING service, Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest* return_onlineIdServiceTicketRequest);
}

@uuid("5798befb-1de4-4186-a2e6-b563f86aaf44")
@WinrtFactory("Windows.Security.Authentication.OnlineId.OnlineIdSystemAuthenticatorForUser")
interface IOnlineIdSystemAuthenticatorForUser : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Default(Windows.Security.Authentication.OnlineId.OnlineIdSystemAuthenticatorForUser* return_value);
	HRESULT abi_GetForUser(Windows.System.User user, Windows.Security.Authentication.OnlineId.OnlineIdSystemAuthenticatorForUser* return_value);
}

@uuid("743cd20d-b6ca-434d-8124-53ea12685307")
@WinrtFactory("Windows.Security.Authentication.OnlineId.OnlineIdSystemIdentity")
interface IOnlineIdSystemIdentity : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Ticket(Windows.Security.Authentication.OnlineId.OnlineIdServiceTicket* return_value);
	HRESULT get_Id(HSTRING* return_value);
}

@uuid("db0a5ff8-b098-4acd-9d13-9e640652b5b6")
@WinrtFactory("Windows.Security.Authentication.OnlineId.OnlineIdSystemTicketResult")
interface IOnlineIdSystemTicketResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Identity(Windows.Security.Authentication.OnlineId.OnlineIdSystemIdentity* return_value);
	HRESULT get_Status(Windows.Security.Authentication.OnlineId.OnlineIdSystemTicketStatus* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

@uuid("2146d9cd-0742-4be3-8a1c-7c7ae679aa88")
@WinrtFactory("Windows.Security.Authentication.OnlineId.UserIdentity")
interface IUserIdentity : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

interface OnlineIdAuthenticator
{
}

interface OnlineIdServiceTicket
{
}

interface OnlineIdServiceTicketRequest
{
}

interface OnlineIdSystemAuthenticatorForUser
{
}

interface OnlineIdSystemIdentity
{
}

interface OnlineIdSystemTicketResult
{
}

interface SignOutUserOperation
{
}

interface UserAuthenticationOperation
{
}

interface UserIdentity
{
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