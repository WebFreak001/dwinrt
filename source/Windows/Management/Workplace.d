module Windows.Management.Workplace;

import dwinrt;

@uuid("c39709e7-741c-41f2-a4b6-314c31502586")
@WinrtFactory("Windows.Management.Workplace.MdmPolicy")
interface IMdmAllowPolicyStatics : IInspectable
{
extern(Windows):
	HRESULT abi_IsBrowserAllowed(bool* return_value);
	HRESULT abi_IsCameraAllowed(bool* return_value);
	HRESULT abi_IsMicrosoftAccountAllowed(bool* return_value);
	HRESULT abi_IsStoreAllowed(bool* return_value);
}

@uuid("c99c7526-03d4-49f9-a993-43efccd265c4")
@WinrtFactory("Windows.Management.Workplace.MdmPolicy")
interface IMdmPolicyStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetMessagingSyncPolicy(Windows.Management.Workplace.MessagingSyncPolicy* return_value);
}

@uuid("e4676ffd-2d92-4c08-bad4-f6590b54a6d3")
@WinrtFactory("Windows.Management.Workplace.WorkplaceSettings")
interface IWorkplaceSettingsStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsMicrosoftAccountOptional(bool* return_value);
}

interface MdmPolicy
{
	private static Windows.Management.Workplace.IMdmAllowPolicyStatics _staticInstance;
	public static Windows.Management.Workplace.IMdmAllowPolicyStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Management.Workplace.IMdmAllowPolicyStatics);
		return _staticInstance;
	}
	static bool IsBrowserAllowed()
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Management.Workplace.IMdmAllowPolicyStatics).abi_IsBrowserAllowed(&_ret));
		return _ret;
	}
	static bool IsCameraAllowed()
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Management.Workplace.IMdmAllowPolicyStatics).abi_IsCameraAllowed(&_ret));
		return _ret;
	}
	static bool IsMicrosoftAccountAllowed()
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Management.Workplace.IMdmAllowPolicyStatics).abi_IsMicrosoftAccountAllowed(&_ret));
		return _ret;
	}
	static bool IsStoreAllowed()
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Management.Workplace.IMdmAllowPolicyStatics).abi_IsStoreAllowed(&_ret));
		return _ret;
	}
}

interface WorkplaceSettings
{
	private static Windows.Management.Workplace.IWorkplaceSettingsStatics _staticInstance;
	public static Windows.Management.Workplace.IWorkplaceSettingsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Management.Workplace.IWorkplaceSettingsStatics);
		return _staticInstance;
	}
	static bool IsMicrosoftAccountOptional()
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Management.Workplace.IWorkplaceSettingsStatics).get_IsMicrosoftAccountOptional(&_ret));
		return _ret;
	}
}

enum MessagingSyncPolicy
{
	Disallowed = 0,
	Allowed = 1,
	Required = 2
}