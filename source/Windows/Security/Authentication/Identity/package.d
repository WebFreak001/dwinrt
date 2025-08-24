module Windows.Security.Authentication.Identity;

import dwinrt;

@uuid("38321acc-672b-4823-b603-6b3c753daf97")
@WinrtFactory("Windows.Security.Authentication.Identity.EnterpriseKeyCredentialRegistrationInfo")
interface IEnterpriseKeyCredentialRegistrationInfo : IInspectable
{
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
extern(Windows):
	HRESULT abi_GetRegistrationsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Identity.EnterpriseKeyCredentialRegistrationInfo))* return_value);
}

@uuid("77b85e9e-acf4-4bc0-bac2-40bb46efbb3f")
@WinrtFactory("Windows.Security.Authentication.Identity.EnterpriseKeyCredentialRegistrationManager")
interface IEnterpriseKeyCredentialRegistrationManagerStatics : IInspectable
{
extern(Windows):
	HRESULT get_Current(Windows.Security.Authentication.Identity.EnterpriseKeyCredentialRegistrationManager* return_value);
}

interface EnterpriseKeyCredentialRegistrationInfo : Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationInfo
{
extern(Windows):
	final wstring TenantId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationInfo)this.asInterface(uuid("38321acc-672b-4823-b603-6b3c753daf97"))).get_TenantId(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring TenantName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationInfo)this.asInterface(uuid("38321acc-672b-4823-b603-6b3c753daf97"))).get_TenantName(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Subject()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationInfo)this.asInterface(uuid("38321acc-672b-4823-b603-6b3c753daf97"))).get_Subject(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring KeyId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationInfo)this.asInterface(uuid("38321acc-672b-4823-b603-6b3c753daf97"))).get_KeyId(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring KeyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationInfo)this.asInterface(uuid("38321acc-672b-4823-b603-6b3c753daf97"))).get_KeyName(&_ret));
		return hstring(_ret).d_str;
	}
}

interface EnterpriseKeyCredentialRegistrationManager : Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationManager
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Identity.EnterpriseKeyCredentialRegistrationInfo)) GetRegistrationsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Identity.EnterpriseKeyCredentialRegistrationInfo)) _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationManager)this.asInterface(uuid("83f3be3f-a25f-4cba-bb8e-bdc32d03c297"))).abi_GetRegistrationsAsync(&_ret));
		return _ret;
	}

	private static Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationManagerStatics _staticInstance;
	public static Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationManagerStatics);
		return _staticInstance;
	}
	static Windows.Security.Authentication.Identity.EnterpriseKeyCredentialRegistrationManager Current()
	{
		Windows.Security.Authentication.Identity.EnterpriseKeyCredentialRegistrationManager _ret;
		Debug.OK(staticInstance.get_Current(&_ret));
		return _ret;
	}
}