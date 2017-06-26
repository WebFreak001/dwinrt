module Windows.Services.Cortana;

import dwinrt;

@uuid("191330e0-8695-438a-9545-3da4e822ddb4")
@WinrtFactory("Windows.Services.Cortana.CortanaPermissionsManager")
interface ICortanaPermissionsManager : IInspectable
{
extern(Windows):
	HRESULT abi_IsSupported(bool* return_result);
	HRESULT abi_ArePermissionsGrantedAsync(Windows.Foundation.Collections.IIterable!(Windows.Services.Cortana.CortanaPermission) permissions, Windows.Foundation.IAsyncOperation!(bool)* return_getGrantedPermissionsOperation);
	HRESULT abi_GrantPermissionsAsync(Windows.Foundation.Collections.IIterable!(Windows.Services.Cortana.CortanaPermission) permissions, Windows.Foundation.IAsyncOperation!(Windows.Services.Cortana.CortanaPermissionsChangeResult)* return_grantOperation);
	HRESULT abi_RevokePermissionsAsync(Windows.Foundation.Collections.IIterable!(Windows.Services.Cortana.CortanaPermission) permissions, Windows.Foundation.IAsyncOperation!(Windows.Services.Cortana.CortanaPermissionsChangeResult)* return_revokeOperation);
}

@uuid("76b1e67a-b045-4414-9d6d-2ad3a5fe3a7e")
@WinrtFactory("Windows.Services.Cortana.CortanaPermissionsManager")
interface ICortanaPermissionsManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Services.Cortana.CortanaPermissionsManager* return_result);
}

@uuid("54d571a7-8062-40f4-abe7-dedfd697b019")
@WinrtFactory("Windows.Services.Cortana.CortanaSettings")
interface ICortanaSettings : IInspectable
{
extern(Windows):
	HRESULT get_HasUserConsentToVoiceActivation(bool* return_value);
	HRESULT get_IsVoiceActivationEnabled(bool* return_value);
	HRESULT set_IsVoiceActivationEnabled(bool value);
}

@uuid("8b2ccd7e-2ec0-446d-9285-33f07ce8ac04")
@WinrtFactory("Windows.Services.Cortana.CortanaSettings")
interface ICortanaSettingsStatics : IInspectable
{
extern(Windows):
	HRESULT abi_IsSupported(bool* return_value);
	HRESULT abi_GetDefault(Windows.Services.Cortana.CortanaSettings* return_result);
}

interface CortanaPermissionsManager : Windows.Services.Cortana.ICortanaPermissionsManager
{
extern(Windows):
	final bool IsSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Cortana.ICortanaPermissionsManager).abi_IsSupported(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) ArePermissionsGrantedAsync(Windows.Foundation.Collections.IIterable!(Windows.Services.Cortana.CortanaPermission) permissions)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Services.Cortana.ICortanaPermissionsManager).abi_ArePermissionsGrantedAsync(permissions, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Cortana.CortanaPermissionsChangeResult) GrantPermissionsAsync(Windows.Foundation.Collections.IIterable!(Windows.Services.Cortana.CortanaPermission) permissions)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Cortana.CortanaPermissionsChangeResult) _ret;
		Debug.OK(this.as!(Windows.Services.Cortana.ICortanaPermissionsManager).abi_GrantPermissionsAsync(permissions, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.Cortana.CortanaPermissionsChangeResult) RevokePermissionsAsync(Windows.Foundation.Collections.IIterable!(Windows.Services.Cortana.CortanaPermission) permissions)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.Cortana.CortanaPermissionsChangeResult) _ret;
		Debug.OK(this.as!(Windows.Services.Cortana.ICortanaPermissionsManager).abi_RevokePermissionsAsync(permissions, &_ret));
		return _ret;
	}

	private static Windows.Services.Cortana.ICortanaPermissionsManagerStatics _staticInstance;
	public static Windows.Services.Cortana.ICortanaPermissionsManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Services.Cortana.ICortanaPermissionsManagerStatics);
		return _staticInstance;
	}
	static Windows.Services.Cortana.CortanaPermissionsManager GetDefault()
	{
		Windows.Services.Cortana.CortanaPermissionsManager _ret;
		Debug.OK(staticInstance.as!(Windows.Services.Cortana.ICortanaPermissionsManagerStatics).abi_GetDefault(&_ret));
		return _ret;
	}
}

interface CortanaSettings : Windows.Services.Cortana.ICortanaSettings
{
extern(Windows):
	final bool HasUserConsentToVoiceActivation()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Cortana.ICortanaSettings).get_HasUserConsentToVoiceActivation(&_ret));
		return _ret;
	}
	final bool IsVoiceActivationEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Services.Cortana.ICortanaSettings).get_IsVoiceActivationEnabled(&_ret));
		return _ret;
	}
	final void IsVoiceActivationEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Services.Cortana.ICortanaSettings).set_IsVoiceActivationEnabled(value));
	}

	private static Windows.Services.Cortana.ICortanaSettingsStatics _staticInstance;
	public static Windows.Services.Cortana.ICortanaSettingsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Services.Cortana.ICortanaSettingsStatics);
		return _staticInstance;
	}
	static bool IsSupported()
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Services.Cortana.ICortanaSettingsStatics).abi_IsSupported(&_ret));
		return _ret;
	}
	static Windows.Services.Cortana.CortanaSettings GetDefault()
	{
		Windows.Services.Cortana.CortanaSettings _ret;
		Debug.OK(staticInstance.as!(Windows.Services.Cortana.ICortanaSettingsStatics).abi_GetDefault(&_ret));
		return _ret;
	}
}

enum CortanaPermission
{
	BrowsingHistory = 0,
	Calendar = 1,
	CallHistory = 2,
	Contacts = 3,
	Email = 4,
	InputPersonalization = 5,
	Location = 6,
	Messaging = 7,
	Microphone = 8,
	Personalization = 9,
	PhoneCall = 10
}

enum CortanaPermissionsChangeResult
{
	Success = 0,
	Unavailable = 1,
	DisabledByPolicy = 2
}