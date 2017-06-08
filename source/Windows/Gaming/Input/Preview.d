module Windows.Gaming.Input.Preview;

import dwinrt;

@uuid("0be1e6c5-d9bd-44ee-8362-488b2e464bfb")
@WinrtFactory("Windows.Gaming.Input.Preview.GameControllerProviderInfo")
interface IGameControllerProviderInfoStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetParentProviderId(Windows.Gaming.Input.Custom.IGameControllerProvider provider, HSTRING* return_value);
	HRESULT abi_GetProviderId(Windows.Gaming.Input.Custom.IGameControllerProvider provider, HSTRING* return_value);
}

interface GameControllerProviderInfo
{
}