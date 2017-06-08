module Windows.Management.Deployment.Preview;

import dwinrt;

@uuid("e2fad668-882c-4f33-b035-0df7b90d67e6")
@WinrtFactory("Windows.Management.Deployment.Preview.ClassicAppManager")
interface IClassicAppManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FindInstalledApp(HSTRING appUninstallKey, Windows.Management.Deployment.Preview.InstalledClassicAppInfo* return_result);
}

@uuid("0a7d3da3-65d0-4086-80d6-0610d760207d")
@WinrtFactory("Windows.Management.Deployment.Preview.InstalledClassicAppInfo")
interface IInstalledClassicAppInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_DisplayVersion(HSTRING* return_value);
}

interface InstalledClassicAppInfo
{
}