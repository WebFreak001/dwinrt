module Windows.Management.Workplace;

import dwinrt;

@uuid("c39709e7-741c-41f2-a4b6-314c31502586")
@WinrtFactory("Windows.Management.Workplace.MdmPolicy")
interface IMdmAllowPolicyStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetMessagingSyncPolicy(Windows.Management.Workplace.MessagingSyncPolicy* return_value);
}

@uuid("e4676ffd-2d92-4c08-bad4-f6590b54a6d3")
@WinrtFactory("Windows.Management.Workplace.WorkplaceSettings")
interface IWorkplaceSettingsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsMicrosoftAccountOptional(bool* return_value);
}

interface MdmPolicy
{
}

interface WorkplaceSettings
{
}

enum MessagingSyncPolicy
{
	Disallowed = 0,
	Allowed = 1,
	Required = 2
}