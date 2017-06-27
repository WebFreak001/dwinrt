module Windows.Management.Deployment.Preview;

import dwinrt;

@uuid("e2fad668-882c-4f33-b035-0df7b90d67e6")
@WinrtFactory("Windows.Management.Deployment.Preview.ClassicAppManager")
interface IClassicAppManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FindInstalledApp(HSTRING appUninstallKey, Windows.Management.Deployment.Preview.InstalledClassicAppInfo* return_result);
}

@uuid("0a7d3da3-65d0-4086-80d6-0610d760207d")
@WinrtFactory("Windows.Management.Deployment.Preview.InstalledClassicAppInfo")
interface IInstalledClassicAppInfo : IInspectable
{
extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_DisplayVersion(HSTRING* return_value);
}

interface ClassicAppManager
{
	private static Windows.Management.Deployment.Preview.IClassicAppManagerStatics _staticInstance;
	public static Windows.Management.Deployment.Preview.IClassicAppManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Management.Deployment.Preview.IClassicAppManagerStatics);
		return _staticInstance;
	}
	static Windows.Management.Deployment.Preview.InstalledClassicAppInfo FindInstalledApp(HSTRING appUninstallKey)
	{
		Windows.Management.Deployment.Preview.InstalledClassicAppInfo _ret;
		Debug.OK(staticInstance.abi_FindInstalledApp(appUninstallKey, &_ret));
		return _ret;
	}
}

interface InstalledClassicAppInfo : Windows.Management.Deployment.Preview.IInstalledClassicAppInfo
{
extern(Windows):
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Management.Deployment.Preview.IInstalledClassicAppInfo)this.asInterface(uuid("0a7d3da3-65d0-4086-80d6-0610d760207d"))).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING DisplayVersion()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Management.Deployment.Preview.IInstalledClassicAppInfo)this.asInterface(uuid("0a7d3da3-65d0-4086-80d6-0610d760207d"))).get_DisplayVersion(&_ret));
		return _ret;
	}
}