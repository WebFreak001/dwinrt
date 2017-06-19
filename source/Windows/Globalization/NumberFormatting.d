module Windows.Globalization.NumberFormatting;

import dwinrt;

@uuid("11730ca5-4b00-41b2-b332-73b12a497d54")
@WinrtFactory("Windows.Globalization.NumberFormatting.CurrencyFormatter")
interface ICurrencyFormatter_Base : IInspectable
{
extern(Windows):
	HRESULT get_Currency(HSTRING* return_value);
	deprecated("Currency may be read-only for releases after Windows 8.1. Instead, use a new CurrencyFormatter.")
	HRESULT set_Currency(HSTRING value);
}
@uuid("11730ca5-4b00-41b2-b332-73b12a497d54")
@WinrtFactory("Windows.Globalization.NumberFormatting.CurrencyFormatter")
interface ICurrencyFormatter : ICurrencyFormatter_Base, Windows.Globalization.NumberFormatting.INumberFormatterOptions, Windows.Globalization.NumberFormatting.INumberFormatter, Windows.Globalization.NumberFormatting.INumberFormatter2, Windows.Globalization.NumberFormatting.INumberParser {}

@uuid("072c2f1d-e7ba-4197-920e-247c92f7dea6")
@WinrtFactory("Windows.Globalization.NumberFormatting.CurrencyFormatter")
interface ICurrencyFormatter2 : IInspectable
{
extern(Windows):
	HRESULT get_Mode(Windows.Globalization.NumberFormatting.CurrencyFormatterMode* return_value);
	HRESULT set_Mode(Windows.Globalization.NumberFormatting.CurrencyFormatterMode value);
	HRESULT abi_ApplyRoundingForCurrency(Windows.Globalization.NumberFormatting.RoundingAlgorithm roundingAlgorithm);
}

@uuid("86c7537e-b938-4aa2-84b0-2c33dc5b1450")
@WinrtFactory("Windows.Globalization.NumberFormatting.CurrencyFormatter")
interface ICurrencyFormatterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateCurrencyFormatterCode(HSTRING currencyCode, Windows.Globalization.NumberFormatting.CurrencyFormatter* return_result);
	HRESULT abi_CreateCurrencyFormatterCodeContext(HSTRING currencyCode, Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING geographicRegion, Windows.Globalization.NumberFormatting.CurrencyFormatter* return_result);
}

@uuid("0d018c9a-e393-46b8-b830-7a69c8f89fbb")
@WinrtFactory("Windows.Globalization.NumberFormatting.DecimalFormatter")
interface IDecimalFormatterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateDecimalFormatter(Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING geographicRegion, Windows.Globalization.NumberFormatting.DecimalFormatter* return_result);
}

@uuid("70a64ff8-66ab-4155-9da1-739e46764543")
@WinrtFactory("Windows.Globalization.NumberFormatting.IncrementNumberRounder")
interface IIncrementNumberRounder : IInspectable
{
extern(Windows):
	HRESULT get_RoundingAlgorithm(Windows.Globalization.NumberFormatting.RoundingAlgorithm* return_value);
	HRESULT set_RoundingAlgorithm(Windows.Globalization.NumberFormatting.RoundingAlgorithm value);
	HRESULT get_Increment(double* return_value);
	HRESULT set_Increment(double value);
}

@uuid("a5007c49-7676-4db7-8631-1b6ff265caa9")
interface INumberFormatter : IInspectable
{
extern(Windows):
	HRESULT abi_FormatInt(INT64 value, HSTRING* return_result);
	HRESULT abi_FormatUInt(UINT64 value, HSTRING* return_result);
	HRESULT abi_FormatDouble(double value, HSTRING* return_result);
}

@uuid("d4a8c1f0-80d0-4b0d-a89e-882c1e8f8310")
interface INumberFormatter2 : IInspectable
{
extern(Windows):
	HRESULT abi_FormatInt(INT64 value, HSTRING* return_result);
	HRESULT abi_FormatUInt(UINT64 value, HSTRING* return_result);
	HRESULT abi_FormatDouble(double value, HSTRING* return_result);
}

@uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6")
interface INumberFormatterOptions : IInspectable
{
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
extern(Windows):
	HRESULT abi_ParseInt(HSTRING text, Windows.Foundation.IReference!(INT64)* return_result);
	HRESULT abi_ParseUInt(HSTRING text, Windows.Foundation.IReference!(UINT64)* return_result);
	HRESULT abi_ParseDouble(HSTRING text, Windows.Foundation.IReference!(double)* return_result);
}

@uuid("5473c375-38ed-4631-b80c-ef34fc48b7f5")
interface INumberRounder : IInspectable
{
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
extern(Windows):
	HRESULT get_NumberRounder(Windows.Globalization.NumberFormatting.INumberRounder* return_value);
	HRESULT set_NumberRounder(Windows.Globalization.NumberFormatting.INumberRounder value);
}

@uuid("28f5bc2c-8c23-4234-ad2e-fa5a3a426e9b")
@WinrtFactory("Windows.Globalization.NumberFormatting.NumeralSystemTranslator")
interface INumeralSystemTranslator : IInspectable
{
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
extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(HSTRING) languages, Windows.Globalization.NumberFormatting.NumeralSystemTranslator* return_result);
}

@uuid("b7828aef-fed4-4018-a6e2-e09961e03765")
@WinrtFactory("Windows.Globalization.NumberFormatting.PercentFormatter")
interface IPercentFormatterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreatePercentFormatter(Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING geographicRegion, Windows.Globalization.NumberFormatting.PercentFormatter* return_result);
}

@uuid("2b37b4ac-e638-4ed5-a998-62f6b06a49ae")
@WinrtFactory("Windows.Globalization.NumberFormatting.PermilleFormatter")
interface IPermilleFormatterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreatePermilleFormatter(Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING geographicRegion, Windows.Globalization.NumberFormatting.PermilleFormatter* return_result);
}

@uuid("fd1cdd31-0a3c-49c4-a642-96a1564f4f30")
interface ISignedZeroOption : IInspectable
{
extern(Windows):
	HRESULT get_IsZeroSigned(bool* return_value);
	HRESULT set_IsZeroSigned(bool value);
}

@uuid("f5941bca-6646-4913-8c76-1b191ff94dfd")
@WinrtFactory("Windows.Globalization.NumberFormatting.SignificantDigitsNumberRounder")
interface ISignificantDigitsNumberRounder : IInspectable
{
extern(Windows):
	HRESULT get_RoundingAlgorithm(Windows.Globalization.NumberFormatting.RoundingAlgorithm* return_value);
	HRESULT set_RoundingAlgorithm(Windows.Globalization.NumberFormatting.RoundingAlgorithm value);
	HRESULT get_SignificantDigits(UINT32* return_value);
	HRESULT set_SignificantDigits(UINT32 value);
}

@uuid("1d4dfcdd-2d43-4ee8-bbf1-c1b26a711a58")
interface ISignificantDigitsOption : IInspectable
{
extern(Windows):
	HRESULT get_SignificantDigits(INT32* return_value);
	HRESULT set_SignificantDigits(INT32 value);
}

interface CurrencyFormatter : Windows.Globalization.NumberFormatting.ICurrencyFormatter, Windows.Globalization.NumberFormatting.INumberParser, Windows.Globalization.NumberFormatting.INumberFormatter2, Windows.Globalization.NumberFormatting.INumberFormatter, Windows.Globalization.NumberFormatting.INumberFormatterOptions, Windows.Globalization.NumberFormatting.ICurrencyFormatter2, Windows.Globalization.NumberFormatting.ISignificantDigitsOption, Windows.Globalization.NumberFormatting.INumberRounderOption, Windows.Globalization.NumberFormatting.ISignedZeroOption
{
extern(Windows):
	final HSTRING Currency()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ICurrencyFormatter).get_Currency(&_ret));
		return _ret;
	}
	deprecated("Currency may be read-only for releases after Windows 8.1. Instead, use a new CurrencyFormatter.")
	final void Currency(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ICurrencyFormatter).set_Currency(value));
	}
	final Windows.Foundation.IReference!(INT64) ParseInt(HSTRING text)
	{
		Windows.Foundation.IReference!(INT64) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberParser).abi_ParseInt(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT64) ParseUInt(HSTRING text)
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberParser).abi_ParseUInt(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) ParseDouble(HSTRING text)
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberParser).abi_ParseDouble(text, &_ret));
		return _ret;
	}
	final HSTRING FormatInt(INT64 value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter2).abi_FormatInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatUInt(UINT64 value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter2).abi_FormatUInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatDouble(double value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter2).abi_FormatDouble(value, &_ret));
		return _ret;
	}
	final HSTRING FormatInt(INT64 value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter).abi_FormatInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatUInt(UINT64 value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter).abi_FormatUInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatDouble(double value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter).abi_FormatDouble(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Languages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_Languages(&_ret));
		return _ret;
	}
	final HSTRING GeographicRegion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_GeographicRegion(&_ret));
		return _ret;
	}
	final INT32 IntegerDigits()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_IntegerDigits(&_ret));
		return _ret;
	}
	final void IntegerDigits(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_IntegerDigits(value));
	}
	final INT32 FractionDigits()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_FractionDigits(&_ret));
		return _ret;
	}
	final void FractionDigits(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_FractionDigits(value));
	}
	final bool IsGrouped()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_IsGrouped(&_ret));
		return _ret;
	}
	final void IsGrouped(bool value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_IsGrouped(value));
	}
	final bool IsDecimalPointAlwaysDisplayed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_IsDecimalPointAlwaysDisplayed(&_ret));
		return _ret;
	}
	final void IsDecimalPointAlwaysDisplayed(bool value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_IsDecimalPointAlwaysDisplayed(value));
	}
	final HSTRING NumeralSystem()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_NumeralSystem(&_ret));
		return _ret;
	}
	final void NumeralSystem(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_NumeralSystem(value));
	}
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final HSTRING ResolvedGeographicRegion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_ResolvedGeographicRegion(&_ret));
		return _ret;
	}
	final Windows.Globalization.NumberFormatting.CurrencyFormatterMode Mode()
	{
		Windows.Globalization.NumberFormatting.CurrencyFormatterMode _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ICurrencyFormatter2).get_Mode(&_ret));
		return _ret;
	}
	final void Mode(Windows.Globalization.NumberFormatting.CurrencyFormatterMode value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ICurrencyFormatter2).set_Mode(value));
	}
	final void ApplyRoundingForCurrency(Windows.Globalization.NumberFormatting.RoundingAlgorithm roundingAlgorithm)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ICurrencyFormatter2).abi_ApplyRoundingForCurrency(roundingAlgorithm));
	}
	final INT32 SignificantDigits()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignificantDigitsOption).get_SignificantDigits(&_ret));
		return _ret;
	}
	final void SignificantDigits(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignificantDigitsOption).set_SignificantDigits(value));
	}
	final Windows.Globalization.NumberFormatting.INumberRounder NumberRounder()
	{
		Windows.Globalization.NumberFormatting.INumberRounder _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounderOption).get_NumberRounder(&_ret));
		return _ret;
	}
	final void NumberRounder(Windows.Globalization.NumberFormatting.INumberRounder value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounderOption).set_NumberRounder(value));
	}
	final bool IsZeroSigned()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignedZeroOption).get_IsZeroSigned(&_ret));
		return _ret;
	}
	final void IsZeroSigned(bool value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignedZeroOption).set_IsZeroSigned(value));
	}
}

interface DecimalFormatter : Windows.Globalization.NumberFormatting.INumberFormatterOptions, Windows.Globalization.NumberFormatting.INumberFormatter, Windows.Globalization.NumberFormatting.INumberFormatter2, Windows.Globalization.NumberFormatting.INumberParser, Windows.Globalization.NumberFormatting.ISignificantDigitsOption, Windows.Globalization.NumberFormatting.INumberRounderOption, Windows.Globalization.NumberFormatting.ISignedZeroOption
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Languages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_Languages(&_ret));
		return _ret;
	}
	final HSTRING GeographicRegion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_GeographicRegion(&_ret));
		return _ret;
	}
	final INT32 IntegerDigits()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_IntegerDigits(&_ret));
		return _ret;
	}
	final void IntegerDigits(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_IntegerDigits(value));
	}
	final INT32 FractionDigits()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_FractionDigits(&_ret));
		return _ret;
	}
	final void FractionDigits(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_FractionDigits(value));
	}
	final bool IsGrouped()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_IsGrouped(&_ret));
		return _ret;
	}
	final void IsGrouped(bool value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_IsGrouped(value));
	}
	final bool IsDecimalPointAlwaysDisplayed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_IsDecimalPointAlwaysDisplayed(&_ret));
		return _ret;
	}
	final void IsDecimalPointAlwaysDisplayed(bool value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_IsDecimalPointAlwaysDisplayed(value));
	}
	final HSTRING NumeralSystem()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_NumeralSystem(&_ret));
		return _ret;
	}
	final void NumeralSystem(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_NumeralSystem(value));
	}
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final HSTRING ResolvedGeographicRegion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_ResolvedGeographicRegion(&_ret));
		return _ret;
	}
	final HSTRING FormatInt(INT64 value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter).abi_FormatInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatUInt(UINT64 value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter).abi_FormatUInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatDouble(double value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter).abi_FormatDouble(value, &_ret));
		return _ret;
	}
	final HSTRING FormatInt(INT64 value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter2).abi_FormatInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatUInt(UINT64 value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter2).abi_FormatUInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatDouble(double value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter2).abi_FormatDouble(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(INT64) ParseInt(HSTRING text)
	{
		Windows.Foundation.IReference!(INT64) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberParser).abi_ParseInt(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT64) ParseUInt(HSTRING text)
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberParser).abi_ParseUInt(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) ParseDouble(HSTRING text)
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberParser).abi_ParseDouble(text, &_ret));
		return _ret;
	}
	final INT32 SignificantDigits()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignificantDigitsOption).get_SignificantDigits(&_ret));
		return _ret;
	}
	final void SignificantDigits(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignificantDigitsOption).set_SignificantDigits(value));
	}
	final Windows.Globalization.NumberFormatting.INumberRounder NumberRounder()
	{
		Windows.Globalization.NumberFormatting.INumberRounder _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounderOption).get_NumberRounder(&_ret));
		return _ret;
	}
	final void NumberRounder(Windows.Globalization.NumberFormatting.INumberRounder value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounderOption).set_NumberRounder(value));
	}
	final bool IsZeroSigned()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignedZeroOption).get_IsZeroSigned(&_ret));
		return _ret;
	}
	final void IsZeroSigned(bool value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignedZeroOption).set_IsZeroSigned(value));
	}
}

interface IncrementNumberRounder : Windows.Globalization.NumberFormatting.INumberRounder, Windows.Globalization.NumberFormatting.IIncrementNumberRounder
{
extern(Windows):
	final INT32 RoundInt32(INT32 value)
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounder).abi_RoundInt32(value, &_ret));
		return _ret;
	}
	final UINT32 RoundUInt32(UINT32 value)
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounder).abi_RoundUInt32(value, &_ret));
		return _ret;
	}
	final INT64 RoundInt64(INT64 value)
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounder).abi_RoundInt64(value, &_ret));
		return _ret;
	}
	final UINT64 RoundUInt64(UINT64 value)
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounder).abi_RoundUInt64(value, &_ret));
		return _ret;
	}
	final FLOAT RoundSingle(FLOAT value)
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounder).abi_RoundSingle(value, &_ret));
		return _ret;
	}
	final double RoundDouble(double value)
	{
		double _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounder).abi_RoundDouble(value, &_ret));
		return _ret;
	}
	final Windows.Globalization.NumberFormatting.RoundingAlgorithm RoundingAlgorithm()
	{
		Windows.Globalization.NumberFormatting.RoundingAlgorithm _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.IIncrementNumberRounder).get_RoundingAlgorithm(&_ret));
		return _ret;
	}
	final void RoundingAlgorithm(Windows.Globalization.NumberFormatting.RoundingAlgorithm value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.IIncrementNumberRounder).set_RoundingAlgorithm(value));
	}
	final double Increment()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.IIncrementNumberRounder).get_Increment(&_ret));
		return _ret;
	}
	final void Increment(double value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.IIncrementNumberRounder).set_Increment(value));
	}
}

interface NumeralSystemTranslator : Windows.Globalization.NumberFormatting.INumeralSystemTranslator
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Languages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumeralSystemTranslator).get_Languages(&_ret));
		return _ret;
	}
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumeralSystemTranslator).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final HSTRING NumeralSystem()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumeralSystemTranslator).get_NumeralSystem(&_ret));
		return _ret;
	}
	final void NumeralSystem(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumeralSystemTranslator).set_NumeralSystem(value));
	}
	final HSTRING TranslateNumerals(HSTRING value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumeralSystemTranslator).abi_TranslateNumerals(value, &_ret));
		return _ret;
	}
}

interface PercentFormatter : Windows.Globalization.NumberFormatting.INumberFormatterOptions, Windows.Globalization.NumberFormatting.INumberFormatter, Windows.Globalization.NumberFormatting.INumberFormatter2, Windows.Globalization.NumberFormatting.INumberParser, Windows.Globalization.NumberFormatting.ISignificantDigitsOption, Windows.Globalization.NumberFormatting.INumberRounderOption, Windows.Globalization.NumberFormatting.ISignedZeroOption
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Languages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_Languages(&_ret));
		return _ret;
	}
	final HSTRING GeographicRegion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_GeographicRegion(&_ret));
		return _ret;
	}
	final INT32 IntegerDigits()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_IntegerDigits(&_ret));
		return _ret;
	}
	final void IntegerDigits(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_IntegerDigits(value));
	}
	final INT32 FractionDigits()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_FractionDigits(&_ret));
		return _ret;
	}
	final void FractionDigits(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_FractionDigits(value));
	}
	final bool IsGrouped()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_IsGrouped(&_ret));
		return _ret;
	}
	final void IsGrouped(bool value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_IsGrouped(value));
	}
	final bool IsDecimalPointAlwaysDisplayed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_IsDecimalPointAlwaysDisplayed(&_ret));
		return _ret;
	}
	final void IsDecimalPointAlwaysDisplayed(bool value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_IsDecimalPointAlwaysDisplayed(value));
	}
	final HSTRING NumeralSystem()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_NumeralSystem(&_ret));
		return _ret;
	}
	final void NumeralSystem(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_NumeralSystem(value));
	}
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final HSTRING ResolvedGeographicRegion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_ResolvedGeographicRegion(&_ret));
		return _ret;
	}
	final HSTRING FormatInt(INT64 value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter).abi_FormatInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatUInt(UINT64 value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter).abi_FormatUInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatDouble(double value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter).abi_FormatDouble(value, &_ret));
		return _ret;
	}
	final HSTRING FormatInt(INT64 value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter2).abi_FormatInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatUInt(UINT64 value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter2).abi_FormatUInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatDouble(double value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter2).abi_FormatDouble(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(INT64) ParseInt(HSTRING text)
	{
		Windows.Foundation.IReference!(INT64) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberParser).abi_ParseInt(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT64) ParseUInt(HSTRING text)
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberParser).abi_ParseUInt(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) ParseDouble(HSTRING text)
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberParser).abi_ParseDouble(text, &_ret));
		return _ret;
	}
	final INT32 SignificantDigits()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignificantDigitsOption).get_SignificantDigits(&_ret));
		return _ret;
	}
	final void SignificantDigits(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignificantDigitsOption).set_SignificantDigits(value));
	}
	final Windows.Globalization.NumberFormatting.INumberRounder NumberRounder()
	{
		Windows.Globalization.NumberFormatting.INumberRounder _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounderOption).get_NumberRounder(&_ret));
		return _ret;
	}
	final void NumberRounder(Windows.Globalization.NumberFormatting.INumberRounder value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounderOption).set_NumberRounder(value));
	}
	final bool IsZeroSigned()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignedZeroOption).get_IsZeroSigned(&_ret));
		return _ret;
	}
	final void IsZeroSigned(bool value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignedZeroOption).set_IsZeroSigned(value));
	}
}

interface PermilleFormatter : Windows.Globalization.NumberFormatting.INumberFormatterOptions, Windows.Globalization.NumberFormatting.INumberFormatter, Windows.Globalization.NumberFormatting.INumberFormatter2, Windows.Globalization.NumberFormatting.INumberParser, Windows.Globalization.NumberFormatting.ISignificantDigitsOption, Windows.Globalization.NumberFormatting.INumberRounderOption, Windows.Globalization.NumberFormatting.ISignedZeroOption
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Languages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_Languages(&_ret));
		return _ret;
	}
	final HSTRING GeographicRegion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_GeographicRegion(&_ret));
		return _ret;
	}
	final INT32 IntegerDigits()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_IntegerDigits(&_ret));
		return _ret;
	}
	final void IntegerDigits(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_IntegerDigits(value));
	}
	final INT32 FractionDigits()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_FractionDigits(&_ret));
		return _ret;
	}
	final void FractionDigits(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_FractionDigits(value));
	}
	final bool IsGrouped()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_IsGrouped(&_ret));
		return _ret;
	}
	final void IsGrouped(bool value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_IsGrouped(value));
	}
	final bool IsDecimalPointAlwaysDisplayed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_IsDecimalPointAlwaysDisplayed(&_ret));
		return _ret;
	}
	final void IsDecimalPointAlwaysDisplayed(bool value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_IsDecimalPointAlwaysDisplayed(value));
	}
	final HSTRING NumeralSystem()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_NumeralSystem(&_ret));
		return _ret;
	}
	final void NumeralSystem(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).set_NumeralSystem(value));
	}
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final HSTRING ResolvedGeographicRegion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatterOptions).get_ResolvedGeographicRegion(&_ret));
		return _ret;
	}
	final HSTRING FormatInt(INT64 value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter).abi_FormatInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatUInt(UINT64 value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter).abi_FormatUInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatDouble(double value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter).abi_FormatDouble(value, &_ret));
		return _ret;
	}
	final HSTRING FormatInt(INT64 value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter2).abi_FormatInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatUInt(UINT64 value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter2).abi_FormatUInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatDouble(double value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberFormatter2).abi_FormatDouble(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(INT64) ParseInt(HSTRING text)
	{
		Windows.Foundation.IReference!(INT64) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberParser).abi_ParseInt(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT64) ParseUInt(HSTRING text)
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberParser).abi_ParseUInt(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) ParseDouble(HSTRING text)
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberParser).abi_ParseDouble(text, &_ret));
		return _ret;
	}
	final INT32 SignificantDigits()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignificantDigitsOption).get_SignificantDigits(&_ret));
		return _ret;
	}
	final void SignificantDigits(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignificantDigitsOption).set_SignificantDigits(value));
	}
	final Windows.Globalization.NumberFormatting.INumberRounder NumberRounder()
	{
		Windows.Globalization.NumberFormatting.INumberRounder _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounderOption).get_NumberRounder(&_ret));
		return _ret;
	}
	final void NumberRounder(Windows.Globalization.NumberFormatting.INumberRounder value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounderOption).set_NumberRounder(value));
	}
	final bool IsZeroSigned()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignedZeroOption).get_IsZeroSigned(&_ret));
		return _ret;
	}
	final void IsZeroSigned(bool value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignedZeroOption).set_IsZeroSigned(value));
	}
}

interface SignificantDigitsNumberRounder : Windows.Globalization.NumberFormatting.INumberRounder, Windows.Globalization.NumberFormatting.ISignificantDigitsNumberRounder
{
extern(Windows):
	final INT32 RoundInt32(INT32 value)
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounder).abi_RoundInt32(value, &_ret));
		return _ret;
	}
	final UINT32 RoundUInt32(UINT32 value)
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounder).abi_RoundUInt32(value, &_ret));
		return _ret;
	}
	final INT64 RoundInt64(INT64 value)
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounder).abi_RoundInt64(value, &_ret));
		return _ret;
	}
	final UINT64 RoundUInt64(UINT64 value)
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounder).abi_RoundUInt64(value, &_ret));
		return _ret;
	}
	final FLOAT RoundSingle(FLOAT value)
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounder).abi_RoundSingle(value, &_ret));
		return _ret;
	}
	final double RoundDouble(double value)
	{
		double _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.INumberRounder).abi_RoundDouble(value, &_ret));
		return _ret;
	}
	final Windows.Globalization.NumberFormatting.RoundingAlgorithm RoundingAlgorithm()
	{
		Windows.Globalization.NumberFormatting.RoundingAlgorithm _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignificantDigitsNumberRounder).get_RoundingAlgorithm(&_ret));
		return _ret;
	}
	final void RoundingAlgorithm(Windows.Globalization.NumberFormatting.RoundingAlgorithm value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignificantDigitsNumberRounder).set_RoundingAlgorithm(value));
	}
	final UINT32 SignificantDigits()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignificantDigitsNumberRounder).get_SignificantDigits(&_ret));
		return _ret;
	}
	final void SignificantDigits(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.NumberFormatting.ISignificantDigitsNumberRounder).set_SignificantDigits(value));
	}
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