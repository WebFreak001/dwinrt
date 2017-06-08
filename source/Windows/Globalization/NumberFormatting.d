module Windows.Globalization.NumberFormatting;

import dwinrt;

@uuid("11730ca5-4b00-41b2-b332-73b12a497d54")
@WinrtFactory("Windows.Globalization.NumberFormatting.CurrencyFormatter")
interface ICurrencyFormatter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Currency(HSTRING* return_value);
	deprecated("Currency may be read-only for releases after Windows 8.1. Instead, use a new CurrencyFormatter.")
	HRESULT set_Currency(HSTRING value);
}

@uuid("072c2f1d-e7ba-4197-920e-247c92f7dea6")
@WinrtFactory("Windows.Globalization.NumberFormatting.CurrencyFormatter")
interface ICurrencyFormatter2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Mode(Windows.Globalization.NumberFormatting.CurrencyFormatterMode* return_value);
	HRESULT set_Mode(Windows.Globalization.NumberFormatting.CurrencyFormatterMode value);
	HRESULT abi_ApplyRoundingForCurrency(Windows.Globalization.NumberFormatting.RoundingAlgorithm roundingAlgorithm);
}

@uuid("86c7537e-b938-4aa2-84b0-2c33dc5b1450")
@WinrtFactory("Windows.Globalization.NumberFormatting.CurrencyFormatter")
interface ICurrencyFormatterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateCurrencyFormatterCode(HSTRING currencyCode, Windows.Globalization.NumberFormatting.CurrencyFormatter* return_result);
	HRESULT abi_CreateCurrencyFormatterCodeContext(HSTRING currencyCode, Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING geographicRegion, Windows.Globalization.NumberFormatting.CurrencyFormatter* return_result);
}

@uuid("0d018c9a-e393-46b8-b830-7a69c8f89fbb")
@WinrtFactory("Windows.Globalization.NumberFormatting.DecimalFormatter")
interface IDecimalFormatterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateDecimalFormatter(Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING geographicRegion, Windows.Globalization.NumberFormatting.DecimalFormatter* return_result);
}

@uuid("70a64ff8-66ab-4155-9da1-739e46764543")
@WinrtFactory("Windows.Globalization.NumberFormatting.IncrementNumberRounder")
interface IIncrementNumberRounder : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RoundingAlgorithm(Windows.Globalization.NumberFormatting.RoundingAlgorithm* return_value);
	HRESULT set_RoundingAlgorithm(Windows.Globalization.NumberFormatting.RoundingAlgorithm value);
	HRESULT get_Increment(double* return_value);
	HRESULT set_Increment(double value);
}

@uuid("a5007c49-7676-4db7-8631-1b6ff265caa9")
interface INumberFormatter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FormatInt(INT64 value, HSTRING* return_result);
	HRESULT abi_FormatUInt(UINT64 value, HSTRING* return_result);
	HRESULT abi_FormatDouble(double value, HSTRING* return_result);
}

@uuid("d4a8c1f0-80d0-4b0d-a89e-882c1e8f8310")
interface INumberFormatter2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FormatInt(INT64 value, HSTRING* return_result);
	HRESULT abi_FormatUInt(UINT64 value, HSTRING* return_result);
	HRESULT abi_FormatDouble(double value, HSTRING* return_result);
}

@uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6")
interface INumberFormatterOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Languages(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_GeographicRegion(HSTRING* return_value);
	HRESULT get_IntegerDigits(INT32* return_value);
	HRESULT set_IntegerDigits(INT32 value);
	HRESULT get_FractionDigits(INT32* return_value);
	HRESULT set_FractionDigits(INT32 value);
	HRESULT get_IsGrouped(bool* return_value);
	HRESULT set_IsGrouped(bool value);
	HRESULT get_IsDecimalPointAlwaysDisplayed(bool* return_value);
	HRESULT set_IsDecimalPointAlwaysDisplayed(bool value);
	HRESULT get_NumeralSystem(HSTRING* return_value);
	HRESULT set_NumeralSystem(HSTRING value);
	HRESULT get_ResolvedLanguage(HSTRING* return_value);
	HRESULT get_ResolvedGeographicRegion(HSTRING* return_value);
}

@uuid("e6659412-4a13-4a53-83a1-392fbe4cff9f")
interface INumberParser : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ParseInt(HSTRING text, Windows.Foundation.IReference!(INT64)* return_result);
	HRESULT abi_ParseUInt(HSTRING text, Windows.Foundation.IReference!(UINT64)* return_result);
	HRESULT abi_ParseDouble(HSTRING text, Windows.Foundation.IReference!(double)* return_result);
}

@uuid("5473c375-38ed-4631-b80c-ef34fc48b7f5")
interface INumberRounder : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RoundInt32(INT32 value, INT32* return_result);
	HRESULT abi_RoundUInt32(UINT32 value, UINT32* return_result);
	HRESULT abi_RoundInt64(INT64 value, INT64* return_result);
	HRESULT abi_RoundUInt64(UINT64 value, UINT64* return_result);
	HRESULT abi_RoundSingle(FLOAT value, FLOAT* return_result);
	HRESULT abi_RoundDouble(double value, double* return_result);
}

@uuid("3b088433-646f-4efe-8d48-66eb2e49e736")
interface INumberRounderOption : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NumberRounder(Windows.Globalization.NumberFormatting.INumberRounder* return_value);
	HRESULT set_NumberRounder(Windows.Globalization.NumberFormatting.INumberRounder value);
}

@uuid("28f5bc2c-8c23-4234-ad2e-fa5a3a426e9b")
@WinrtFactory("Windows.Globalization.NumberFormatting.NumeralSystemTranslator")
interface INumeralSystemTranslator : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Languages(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_ResolvedLanguage(HSTRING* return_value);
	HRESULT get_NumeralSystem(HSTRING* return_value);
	HRESULT set_NumeralSystem(HSTRING value);
	HRESULT abi_TranslateNumerals(HSTRING value, HSTRING* return_result);
}

@uuid("9630c8da-36ef-4d88-a85c-6f0d98d620a6")
@WinrtFactory("Windows.Globalization.NumberFormatting.NumeralSystemTranslator")
interface INumeralSystemTranslatorFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(HSTRING) languages, Windows.Globalization.NumberFormatting.NumeralSystemTranslator* return_result);
}

@uuid("b7828aef-fed4-4018-a6e2-e09961e03765")
@WinrtFactory("Windows.Globalization.NumberFormatting.PercentFormatter")
interface IPercentFormatterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreatePercentFormatter(Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING geographicRegion, Windows.Globalization.NumberFormatting.PercentFormatter* return_result);
}

@uuid("2b37b4ac-e638-4ed5-a998-62f6b06a49ae")
@WinrtFactory("Windows.Globalization.NumberFormatting.PermilleFormatter")
interface IPermilleFormatterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreatePermilleFormatter(Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING geographicRegion, Windows.Globalization.NumberFormatting.PermilleFormatter* return_result);
}

@uuid("fd1cdd31-0a3c-49c4-a642-96a1564f4f30")
interface ISignedZeroOption : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsZeroSigned(bool* return_value);
	HRESULT set_IsZeroSigned(bool value);
}

@uuid("f5941bca-6646-4913-8c76-1b191ff94dfd")
@WinrtFactory("Windows.Globalization.NumberFormatting.SignificantDigitsNumberRounder")
interface ISignificantDigitsNumberRounder : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RoundingAlgorithm(Windows.Globalization.NumberFormatting.RoundingAlgorithm* return_value);
	HRESULT set_RoundingAlgorithm(Windows.Globalization.NumberFormatting.RoundingAlgorithm value);
	HRESULT get_SignificantDigits(UINT32* return_value);
	HRESULT set_SignificantDigits(UINT32 value);
}

@uuid("1d4dfcdd-2d43-4ee8-bbf1-c1b26a711a58")
interface ISignificantDigitsOption : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SignificantDigits(INT32* return_value);
	HRESULT set_SignificantDigits(INT32 value);
}

interface CurrencyFormatter
{
}

interface DecimalFormatter
{
}

interface IncrementNumberRounder
{
}

interface NumeralSystemTranslator
{
}

interface PercentFormatter
{
}

interface PermilleFormatter
{
}

interface SignificantDigitsNumberRounder
{
}

enum CurrencyFormatterMode
{
	UseSymbol = 0,
	UseCurrencyCode = 1
}

enum RoundingAlgorithm
{
	None = 0,
	RoundDown = 1,
	RoundUp = 2,
	RoundTowardsZero = 3,
	RoundAwayFromZero = 4,
	RoundHalfDown = 5,
	RoundHalfUp = 6,
	RoundHalfTowardsZero = 7,
	RoundHalfAwayFromZero = 8,
	RoundHalfToEven = 9,
	RoundHalfToOdd = 10
}