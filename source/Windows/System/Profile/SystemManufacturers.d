module Windows.System.Profile.SystemManufacturers;

import dwinrt;

@uuid("080cca7c-637c-48c4-b728-f9273812db8e")
@WinrtFactory("Windows.System.Profile.SystemManufacturers.SmbiosInformation")
interface ISmbiosInformationStatics : IInspectable
{
extern(Windows):
	HRESULT get_SerialNumber(HSTRING* return_value);
}

interface SmbiosInformation
{
	private static Windows.System.Profile.SystemManufacturers.ISmbiosInformationStatics _staticInstance;
	public static Windows.System.Profile.SystemManufacturers.ISmbiosInformationStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Profile.SystemManufacturers.ISmbiosInformationStatics);
		return _staticInstance;
	}
	static wstring SerialNumber()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SerialNumber(&_ret));
		return hstring(_ret).d_str;
	}
}