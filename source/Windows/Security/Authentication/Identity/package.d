module Windows.Security.Authentication.Identity;

import dwinrt;

@uuid("38321acc-672b-4823-b603-6b3c753daf97")
@WinrtFactory("Windows.Security.Authentication.Identity.EnterpriseKeyCredentialRegistrationInfo")
interface IEnterpriseKeyCredentialRegistrationInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TenantId(HSTRING* return_value);
	HRESULT get_TenantName(HSTRING* return_value);
	HRESULT get_Subject(HSTRING* return_value);
	HRESULT get_KeyId(HSTRING* return_value);
	HRESULT get_KeyName(HSTRING* return_value);
}

@uuid("83f3be3f-a25f-4cba-bb8e-bdc32d03c297")
@WinrtFactory("Windows.Security.Authentication.Identity.EnterpriseKeyCredentialRegistrationManager")
interface IEnterpriseKeyCredentialRegistrationManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetRegistrationsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Identity.EnterpriseKeyCredentialRegistrationInfo))* return_value);
}

@uuid("77b85e9e-acf4-4bc0-bac2-40bb46efbb3f")
@WinrtFactory("Windows.Security.Authentication.Identity.EnterpriseKeyCredentialRegistrationManager")
interface IEnterpriseKeyCredentialRegistrationManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Current(Windows.Security.Authentication.Identity.EnterpriseKeyCredentialRegistrationManager* return_value);
}

interface EnterpriseKeyCredentialRegistrationInfo
{
}

interface EnterpriseKeyCredentialRegistrationManager
{
}