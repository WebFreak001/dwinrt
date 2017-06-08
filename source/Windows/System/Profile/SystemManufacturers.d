module Windows.System.Profile.SystemManufacturers;

import dwinrt;

@uuid("080cca7c-637c-48c4-b728-f9273812db8e")
@WinrtFactory("Windows.System.Profile.SystemManufacturers.SmbiosInformation")
interface ISmbiosInformationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SerialNumber(HSTRING* return_value);
}