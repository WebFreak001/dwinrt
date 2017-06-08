module Windows.Services.Cortana;

import dwinrt;

@uuid("191330e0-8695-438a-9545-3da4e822ddb4")
@WinrtFactory("Windows.Services.Cortana.CortanaPermissionsManager")
interface ICortanaPermissionsManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefault(Windows.Services.Cortana.CortanaPermissionsManager* return_result);
}

@uuid("54d571a7-8062-40f4-abe7-dedfd697b019")
@WinrtFactory("Windows.Services.Cortana.CortanaSettings")
interface ICortanaSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HasUserConsentToVoiceActivation(bool* return_value);
	HRESULT get_IsVoiceActivationEnabled(bool* return_value);
	HRESULT set_IsVoiceActivationEnabled(bool value);
}

@uuid("8b2ccd7e-2ec0-446d-9285-33f07ce8ac04")
@WinrtFactory("Windows.Services.Cortana.CortanaSettings")
interface ICortanaSettingsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_IsSupported(bool* return_value);
	HRESULT abi_GetDefault(Windows.Services.Cortana.CortanaSettings* return_result);
}

interface CortanaPermissionsManager
{
}

interface CortanaSettings
{
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