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
	private static Windows.Gaming.Input.Preview.IGameControllerProviderInfoStatics _staticInstance;
	public static Windows.Gaming.Input.Preview.IGameControllerProviderInfoStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Gaming.Input.Preview.IGameControllerProviderInfoStatics);
		return _staticInstance;
	}
	static HSTRING GetParentProviderId(Windows.Gaming.Input.Custom.IGameControllerProvider provider)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetParentProviderId(provider, &_ret));
		return _ret;
	}
	static HSTRING GetProviderId(Windows.Gaming.Input.Custom.IGameControllerProvider provider)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetProviderId(provider, &_ret));
		return _ret;
	}
}