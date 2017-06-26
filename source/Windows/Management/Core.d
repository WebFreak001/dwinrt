module Windows.Management.Core;

import dwinrt;

@uuid("74d10432-2e99-4000-9a3a-64307e858129")
@WinrtFactory("Windows.Management.Core.ApplicationDataManager")
interface IApplicationDataManager : IInspectable
{
}

@uuid("1e1862e3-698e-49a1-9752-dee94925b9b3")
@WinrtFactory("Windows.Management.Core.ApplicationDataManager")
interface IApplicationDataManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateForPackageFamily(HSTRING packageFamilyName, Windows.Storage.ApplicationData* return_applicationData);
}

interface ApplicationDataManager : Windows.Management.Core.IApplicationDataManager
{
	private static Windows.Management.Core.IApplicationDataManagerStatics _staticInstance;
	public static Windows.Management.Core.IApplicationDataManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Management.Core.IApplicationDataManagerStatics);
		return _staticInstance;
	}
	static Windows.Storage.ApplicationData CreateForPackageFamily(HSTRING packageFamilyName)
	{
		Windows.Storage.ApplicationData _ret;
		Debug.OK(staticInstance.as!(Windows.Management.Core.IApplicationDataManagerStatics).abi_CreateForPackageFamily(packageFamilyName, &_ret));
		return _ret;
	}
}