module Windows.Management.Core;

import dwinrt;

@uuid("1e1862e3-698e-49a1-9752-dee94925b9b3")
@WinrtFactory("Windows.Management.Core.ApplicationDataManager")
interface IApplicationDataManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateForPackageFamily(HSTRING packageFamilyName, Windows.Storage.ApplicationData* return_applicationData);
}

interface ApplicationDataManager
{
}