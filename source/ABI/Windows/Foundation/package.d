module ABI.Windows.Foundation;

import dwinrt;

@uuid("af86e2e0-b12d-4c6a-9c5a-d7aa65101e90")
interface IInspectable : IUnknown
{
extern (Windows):
	HRESULT abi_GetIids(uint* iidCount, GUID** iids);
	HRESULT abi_GetRuntimeClassName(HSTRING* className);
	HRESULT abi_GetTrustLevel(Windows.Foundation.TrustLevel* trustLevel);
}

@uuid("00000035-0000-0000-c000-000000000046")
interface IActivationFactory : IInspectable
{
extern (Windows):
	HRESULT abi_ActivateInstance(IInspectable** instance);
}
