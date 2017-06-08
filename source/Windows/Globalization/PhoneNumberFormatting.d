module Windows.Globalization.PhoneNumberFormatting;

import dwinrt;

@uuid("1556b49e-bad4-4b4a-900d-4407adb7c981")
@WinrtFactory("Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter")
interface IPhoneNumberFormatter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING number, Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo* return_result);
}

@uuid("5b3f4f6a-86a9-40e9-8649-6d61161928d4")
@WinrtFactory("Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo")
interface IPhoneNumberInfoStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TryParse(HSTRING input, Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo* out_phoneNumber, Windows.Globalization.PhoneNumberFormatting.PhoneNumberParseResult* return_result);
	HRESULT abi_TryParseWithRegion(HSTRING input, HSTRING regionCode, Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo* out_phoneNumber, Windows.Globalization.PhoneNumberFormatting.PhoneNumberParseResult* return_result);
}

interface PhoneNumberFormatter : Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatter
{
}

interface PhoneNumberInfo : Windows.Globalization.PhoneNumberFormatting.IPhoneNumberInfo, Windows.Foundation.IStringable
{
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