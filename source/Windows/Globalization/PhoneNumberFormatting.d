module Windows.Globalization.PhoneNumberFormatting;

import dwinrt;

@uuid("1556b49e-bad4-4b4a-900d-4407adb7c981")
@WinrtFactory("Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter")
interface IPhoneNumberFormatter : IInspectable
{
extern(Windows):
	HRESULT abi_Format(Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo number, HSTRING* return_result);
	HRESULT abi_FormatWithOutputFormat(Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo number, Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormat numberFormat, HSTRING* return_result);
	HRESULT abi_FormatPartialString(HSTRING number, HSTRING* return_result);
	HRESULT abi_FormatString(HSTRING number, HSTRING* return_result);
	HRESULT abi_FormatStringWithLeftToRightMarkers(HSTRING number, HSTRING* return_result);
}

@uuid("5ca6f931-84d9-414b-ab4e-a0552c878602")
@WinrtFactory("Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter")
interface IPhoneNumberFormatterStatics : IInspectable
{
extern(Windows):
	HRESULT abi_TryCreate(HSTRING regionCode, Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter* out_phoneNumber);
	HRESULT abi_GetCountryCodeForRegion(HSTRING regionCode, INT32* return_result);
	HRESULT abi_GetNationalDirectDialingPrefixForRegion(HSTRING regionCode, bool stripNonDigit, HSTRING* return_result);
	HRESULT abi_WrapWithLeftToRightMarkers(HSTRING number, HSTRING* return_result);
}

@uuid("1c7ce4dd-c8b4-4ea3-9aef-b342e2c5b417")
@WinrtFactory("Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo")
interface IPhoneNumberInfo : IInspectable
{
extern(Windows):
	HRESULT get_CountryCode(INT32* return_value);
	HRESULT get_PhoneNumber(HSTRING* return_value);
	HRESULT abi_GetLengthOfGeographicalAreaCode(INT32* return_result);
	HRESULT abi_GetNationalSignificantNumber(HSTRING* return_result);
	HRESULT abi_GetLengthOfNationalDestinationCode(INT32* return_result);
	HRESULT abi_PredictNumberKind(Windows.Globalization.PhoneNumberFormatting.PredictedPhoneNumberKind* return_result);
	HRESULT abi_GetGeographicRegionCode(HSTRING* return_result);
	HRESULT abi_CheckNumberMatch(Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo otherNumber, Windows.Globalization.PhoneNumberFormatting.PhoneNumberMatchResult* return_result);
}

@uuid("8202b964-adaa-4cff-8fcf-17e7516a28ff")
@WinrtFactory("Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo")
interface IPhoneNumberInfoFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING number, Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo* return_result);
}

@uuid("5b3f4f6a-86a9-40e9-8649-6d61161928d4")
@WinrtFactory("Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo")
interface IPhoneNumberInfoStatics : IInspectable
{
extern(Windows):
	HRESULT abi_TryParse(HSTRING input, Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo* out_phoneNumber, Windows.Globalization.PhoneNumberFormatting.PhoneNumberParseResult* return_result);
	HRESULT abi_TryParseWithRegion(HSTRING input, HSTRING regionCode, Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo* out_phoneNumber, Windows.Globalization.PhoneNumberFormatting.PhoneNumberParseResult* return_result);
}

interface PhoneNumberFormatter : Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatter
{
extern(Windows):
	final HSTRING Format(Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo number)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatter).abi_Format(number, &_ret));
		return _ret;
	}
	final HSTRING FormatWithOutputFormat(Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo number, Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormat numberFormat)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatter).abi_FormatWithOutputFormat(number, numberFormat, &_ret));
		return _ret;
	}
	final HSTRING FormatPartialString(HSTRING number)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatter).abi_FormatPartialString(number, &_ret));
		return _ret;
	}
	final HSTRING FormatString(HSTRING number)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatter).abi_FormatString(number, &_ret));
		return _ret;
	}
	final HSTRING FormatStringWithLeftToRightMarkers(HSTRING number)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatter).abi_FormatStringWithLeftToRightMarkers(number, &_ret));
		return _ret;
	}

	private static Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics _staticInstance;
	public static Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics);
		return _staticInstance;
	}
	static void TryCreate(HSTRING regionCode, Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter* out_phoneNumber)
	{
		Debug.OK(staticInstance.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics).abi_TryCreate(regionCode, out_phoneNumber));
	}
	static INT32 GetCountryCodeForRegion(HSTRING regionCode)
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics).abi_GetCountryCodeForRegion(regionCode, &_ret));
		return _ret;
	}
	static HSTRING GetNationalDirectDialingPrefixForRegion(HSTRING regionCode, bool stripNonDigit)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics).abi_GetNationalDirectDialingPrefixForRegion(regionCode, stripNonDigit, &_ret));
		return _ret;
	}
	static HSTRING WrapWithLeftToRightMarkers(HSTRING number)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics).abi_WrapWithLeftToRightMarkers(number, &_ret));
		return _ret;
	}
	static PhoneNumberFormatter New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PhoneNumberFormatter).abi_ActivateInstance(&ret));
		return ret.as!(PhoneNumberFormatter);
	}
}

interface PhoneNumberInfo : Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo, Windows.Foundation.IStringable
{
extern(Windows):
	final INT32 CountryCode()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo).get_CountryCode(&_ret));
		return _ret;
	}
	final HSTRING PhoneNumber()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo).get_PhoneNumber(&_ret));
		return _ret;
	}
	final INT32 GetLengthOfGeographicalAreaCode()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo).abi_GetLengthOfGeographicalAreaCode(&_ret));
		return _ret;
	}
	final HSTRING GetNationalSignificantNumber()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo).abi_GetNationalSignificantNumber(&_ret));
		return _ret;
	}
	final INT32 GetLengthOfNationalDestinationCode()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo).abi_GetLengthOfNationalDestinationCode(&_ret));
		return _ret;
	}
	final Windows.Globalization.PhoneNumberFormatting.PredictedPhoneNumberKind PredictNumberKind()
	{
		Windows.Globalization.PhoneNumberFormatting.PredictedPhoneNumberKind _ret;
		Debug.OK(this.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo).abi_PredictNumberKind(&_ret));
		return _ret;
	}
	final HSTRING GetGeographicRegionCode()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo).abi_GetGeographicRegionCode(&_ret));
		return _ret;
	}
	final Windows.Globalization.PhoneNumberFormatting.PhoneNumberMatchResult CheckNumberMatch(Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo otherNumber)
	{
		Windows.Globalization.PhoneNumberFormatting.PhoneNumberMatchResult _ret;
		Debug.OK(this.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo).abi_CheckNumberMatch(otherNumber, &_ret));
		return _ret;
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IStringable).abi_ToString(&_ret));
		return _ret;
	}

	private static Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfoStatics _staticInstance;
	public static Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfoStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfoStatics);
		return _staticInstance;
	}
	static Windows.Globalization.PhoneNumberFormatting.PhoneNumberParseResult TryParse(HSTRING input, Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo* out_phoneNumber)
	{
		Windows.Globalization.PhoneNumberFormatting.PhoneNumberParseResult _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfoStatics).abi_TryParse(input, out_phoneNumber, &_ret));
		return _ret;
	}
	static Windows.Globalization.PhoneNumberFormatting.PhoneNumberParseResult TryParseWithRegion(HSTRING input, HSTRING regionCode, Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo* out_phoneNumber)
	{
		Windows.Globalization.PhoneNumberFormatting.PhoneNumberParseResult _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfoStatics).abi_TryParseWithRegion(input, regionCode, out_phoneNumber, &_ret));
		return _ret;
	}
	static Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo New(HSTRING number)
	{
		auto factory = factory!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfoFactory);
		Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo _ret;
		Debug.OK(factory.as!(Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfoFactory).abi_Create(number, &_ret));
		return _ret;
	}
}

enum PhoneNumberFormat
{
	E164 = 0,
	International = 1,
	National = 2,
	Rfc3966 = 3
}

enum PhoneNumberMatchResult
{
	NoMatch = 0,
	ShortNationalSignificantNumberMatch = 1,
	NationalSignificantNumberMatch = 2,
	ExactMatch = 3
}

enum PhoneNumberParseResult
{
	Valid = 0,
	NotANumber = 1,
	InvalidCountryCode = 2,
	TooShort = 3,
	TooLong = 4
}

enum PredictedPhoneNumberKind
{
	FixedLine = 0,
	Mobile = 1,
	FixedLineOrMobile = 2,
	TollFree = 3,
	PremiumRate = 4,
	SharedCost = 5,
	Voip = 6,
	PersonalNumber = 7,
	Pager = 8,
	UniversalAccountNumber = 9,
	Voicemail = 10,
	Unknown = 11
}