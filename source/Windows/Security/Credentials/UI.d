module Windows.Security.Credentials.UI;

import dwinrt;

@uuid("965a0b4c-95fa-467f-992b-0b22e5859bf6")
@WinrtFactory("Windows.Security.Credentials.UI.CredentialPickerOptions")
interface ICredentialPickerOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_Caption(HSTRING value);
	HRESULT get_Caption(HSTRING* return_value);
	HRESULT set_Message(HSTRING value);
	HRESULT get_Message(HSTRING* return_value);
	HRESULT set_ErrorCode(UINT32 value);
	HRESULT get_ErrorCode(UINT32* return_value);
	HRESULT set_TargetName(HSTRING value);
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_AuthenticationProtocol(Windows.Security.Credentials.UI.AuthenticationProtocol value);
	HRESULT get_AuthenticationProtocol(Windows.Security.Credentials.UI.AuthenticationProtocol* return_value);
	HRESULT set_CustomAuthenticationProtocol(HSTRING value);
	HRESULT get_CustomAuthenticationProtocol(HSTRING* return_value);
	HRESULT set_PreviousCredential(Windows.Storage.Streams.IBuffer value);
	HRESULT get_PreviousCredential(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_AlwaysDisplayDialog(bool value);
	HRESULT get_AlwaysDisplayDialog(bool* return_value);
	HRESULT set_CallerSavesCredential(bool value);
	HRESULT get_CallerSavesCredential(bool* return_value);
	HRESULT set_CredentialSaveOption(Windows.Security.Credentials.UI.CredentialSaveOption value);
	HRESULT get_CredentialSaveOption(Windows.Security.Credentials.UI.CredentialSaveOption* return_value);
}

@uuid("1948f99a-cc30-410c-9c38-cc0884c5b3d7")
@WinrtFactory("Windows.Security.Credentials.UI.CredentialPickerResults")
interface ICredentialPickerResults : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ErrorCode(UINT32* return_value);
	HRESULT get_CredentialSaveOption(Windows.Security.Credentials.UI.CredentialSaveOption* return_value);
	HRESULT get_CredentialSaved(bool* return_value);
	HRESULT get_Credential(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_CredentialDomainName(HSTRING* return_value);
	HRESULT get_CredentialUserName(HSTRING* return_value);
	HRESULT get_CredentialPassword(HSTRING* return_value);
}

@uuid("aa3a5c73-c9ea-4782-99fb-e6d7e938e12d")
@WinrtFactory("Windows.Security.Credentials.UI.CredentialPicker")
interface ICredentialPickerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_PickWithOptionsAsync(Windows.Security.Credentials.UI.CredentialPickerOptions options, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.CredentialPickerResults)* return_operation);
	HRESULT abi_PickWithMessageAsync(HSTRING targetName, HSTRING message, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.CredentialPickerResults)* return_operation);
	HRESULT abi_PickWithCaptionAsync(HSTRING targetName, HSTRING message, HSTRING caption, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.CredentialPickerResults)* return_operation);
}

@uuid("af4f3f91-564c-4ddc-b8b5-973447627c65")
@WinrtFactory("Windows.Security.Credentials.UI.UserConsentVerifier")
interface IUserConsentVerifierStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CheckAvailabilityAsync(Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.UserConsentVerifierAvailability)* return_result);
	HRESULT abi_RequestVerificationAsync(HSTRING message, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.UserConsentVerificationResult)* return_result);
}

interface CredentialPickerOptions
{
}

interface CredentialPickerResults
{
}

enum AuthenticationProtocol
{
	Basic = 0,
	Digest = 1,
	Ntlm = 2,
	Kerberos = 3,
	Negotiate = 4,
	CredSsp = 5,
	Custom = 6
}

enum CredentialSaveOption
{
	Unselected = 0,
	Selected = 1,
	Hidden = 2
}

enum UserConsentVerificationResult
{
	Verified = 0,
	DeviceNotPresent = 1,
	NotConfiguredForUser = 2,
	DisabledByPolicy = 3,
	DeviceBusy = 4,
	RetriesExhausted = 5,
	Canceled = 6
}

enum UserConsentVerifierAvailability
{
	Available = 0,
	DeviceNotPresent = 1,
	NotConfiguredForUser = 2,
	DisabledByPolicy = 3,
	DeviceBusy = 4
}