module Windows.Security.Credentials.UI;

import dwinrt;

@uuid("965a0b4c-95fa-467f-992b-0b22e5859bf6")
@WinrtFactory("Windows.Security.Credentials.UI.CredentialPickerOptions")
interface ICredentialPickerOptions : IInspectable
{
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
extern(Windows):
	HRESULT abi_PickWithOptionsAsync(Windows.Security.Credentials.UI.CredentialPickerOptions options, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.CredentialPickerResults)* return_operation);
	HRESULT abi_PickWithMessageAsync(HSTRING targetName, HSTRING message, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.CredentialPickerResults)* return_operation);
	HRESULT abi_PickWithCaptionAsync(HSTRING targetName, HSTRING message, HSTRING caption, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.CredentialPickerResults)* return_operation);
}

@uuid("af4f3f91-564c-4ddc-b8b5-973447627c65")
@WinrtFactory("Windows.Security.Credentials.UI.UserConsentVerifier")
interface IUserConsentVerifierStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CheckAvailabilityAsync(Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.UserConsentVerifierAvailability)* return_result);
	HRESULT abi_RequestVerificationAsync(HSTRING message, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.UserConsentVerificationResult)* return_result);
}

interface CredentialPicker
{
	private static Windows.Security.Credentials.UI.ICredentialPickerStatics _staticInstance;
	public static Windows.Security.Credentials.UI.ICredentialPickerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Credentials.UI.ICredentialPickerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.CredentialPickerResults) PickWithOptionsAsync(Windows.Security.Credentials.UI.CredentialPickerOptions options)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.CredentialPickerResults) _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Credentials.UI.ICredentialPickerStatics).abi_PickWithOptionsAsync(options, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.CredentialPickerResults) PickWithMessageAsync(HSTRING targetName, HSTRING message)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.CredentialPickerResults) _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Credentials.UI.ICredentialPickerStatics).abi_PickWithMessageAsync(targetName, message, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.CredentialPickerResults) PickWithCaptionAsync(HSTRING targetName, HSTRING message, HSTRING caption)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.CredentialPickerResults) _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Credentials.UI.ICredentialPickerStatics).abi_PickWithCaptionAsync(targetName, message, caption, &_ret));
		return _ret;
	}
}

interface CredentialPickerOptions : Windows.Security.Credentials.UI.ICredentialPickerOptions
{
extern(Windows):
	final void Caption(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).set_Caption(value));
	}
	final HSTRING Caption()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).get_Caption(&_ret));
		return _ret;
	}
	final void Message(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).set_Message(value));
	}
	final HSTRING Message()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).get_Message(&_ret));
		return _ret;
	}
	final void ErrorCode(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).set_ErrorCode(value));
	}
	final UINT32 ErrorCode()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).get_ErrorCode(&_ret));
		return _ret;
	}
	final void TargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).set_TargetName(value));
	}
	final HSTRING TargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).get_TargetName(&_ret));
		return _ret;
	}
	final void AuthenticationProtocol(Windows.Security.Credentials.UI.AuthenticationProtocol value)
	{
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).set_AuthenticationProtocol(value));
	}
	final Windows.Security.Credentials.UI.AuthenticationProtocol AuthenticationProtocol()
	{
		Windows.Security.Credentials.UI.AuthenticationProtocol _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).get_AuthenticationProtocol(&_ret));
		return _ret;
	}
	final void CustomAuthenticationProtocol(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).set_CustomAuthenticationProtocol(value));
	}
	final HSTRING CustomAuthenticationProtocol()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).get_CustomAuthenticationProtocol(&_ret));
		return _ret;
	}
	final void PreviousCredential(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).set_PreviousCredential(value));
	}
	final Windows.Storage.Streams.IBuffer PreviousCredential()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).get_PreviousCredential(&_ret));
		return _ret;
	}
	final void AlwaysDisplayDialog(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).set_AlwaysDisplayDialog(value));
	}
	final bool AlwaysDisplayDialog()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).get_AlwaysDisplayDialog(&_ret));
		return _ret;
	}
	final void CallerSavesCredential(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).set_CallerSavesCredential(value));
	}
	final bool CallerSavesCredential()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).get_CallerSavesCredential(&_ret));
		return _ret;
	}
	final void CredentialSaveOption(Windows.Security.Credentials.UI.CredentialSaveOption value)
	{
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).set_CredentialSaveOption(value));
	}
	final Windows.Security.Credentials.UI.CredentialSaveOption CredentialSaveOption()
	{
		Windows.Security.Credentials.UI.CredentialSaveOption _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerOptions).get_CredentialSaveOption(&_ret));
		return _ret;
	}
	static CredentialPickerOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(CredentialPickerOptions).abi_ActivateInstance(&ret));
		return ret.as!(CredentialPickerOptions);
	}
}

interface CredentialPickerResults : Windows.Security.Credentials.UI.ICredentialPickerResults
{
extern(Windows):
	final UINT32 ErrorCode()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerResults).get_ErrorCode(&_ret));
		return _ret;
	}
	final Windows.Security.Credentials.UI.CredentialSaveOption CredentialSaveOption()
	{
		Windows.Security.Credentials.UI.CredentialSaveOption _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerResults).get_CredentialSaveOption(&_ret));
		return _ret;
	}
	final bool CredentialSaved()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerResults).get_CredentialSaved(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Credential()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerResults).get_Credential(&_ret));
		return _ret;
	}
	final HSTRING CredentialDomainName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerResults).get_CredentialDomainName(&_ret));
		return _ret;
	}
	final HSTRING CredentialUserName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerResults).get_CredentialUserName(&_ret));
		return _ret;
	}
	final HSTRING CredentialPassword()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.UI.ICredentialPickerResults).get_CredentialPassword(&_ret));
		return _ret;
	}
}

interface UserConsentVerifier
{
	private static Windows.Security.Credentials.UI.IUserConsentVerifierStatics _staticInstance;
	public static Windows.Security.Credentials.UI.IUserConsentVerifierStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Credentials.UI.IUserConsentVerifierStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.UserConsentVerifierAvailability) CheckAvailabilityAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.UserConsentVerifierAvailability) _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Credentials.UI.IUserConsentVerifierStatics).abi_CheckAvailabilityAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.UserConsentVerificationResult) RequestVerificationAsync(HSTRING message)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.UI.UserConsentVerificationResult) _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Credentials.UI.IUserConsentVerifierStatics).abi_RequestVerificationAsync(message, &_ret));
		return _ret;
	}
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