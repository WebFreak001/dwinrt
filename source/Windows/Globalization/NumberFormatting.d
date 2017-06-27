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
	HRESULT abi_FormatUInt(ulong value, HSTRING* return_result);
	HRESULT abi_FormatDouble(double value, HSTRING* return_result);
}

@uuid("d4a8c1f0-80d0-4b0d-a89e-882c1e8f8310")
interface INumberFormatter2 : IInspectable
{
extern(Windows):
	HRESULT abi_FormatInt(INT64 value, HSTRING* return_result);
	HRESULT abi_FormatUInt(ulong value, HSTRING* return_result);
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
	HRESULT abi_ParseUInt(HSTRING text, Windows.Foundation.IReference!(ulong)* return_result);
	HRESULT abi_ParseDouble(HSTRING text, Windows.Foundation.IReference!(double)* return_result);
}

@uuid("5473c375-38ed-4631-b80c-ef34fc48b7f5")
interface INumberRounder : IInspectable
{
extern(Windows):
	HRESULT abi_RoundInt32(INT32 value, INT32* return_result);
	HRESULT abi_RoundUInt32(UINT32 value, UINT32* return_result);
	HRESULT abi_RoundInt64(INT64 value, INT64* return_result);
	HRESULT abi_RoundUInt64(ulong value, ulong* return_result);
	HRESULT abi_RoundSingle(float value, float* return_result);
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
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ICurrencyFormatter)this.asInterface(uuid("11730ca5-4b00-41b2-b332-73b12a497d54"))).get_Currency(&_ret));
		return _ret;
	}
	deprecated("Currency may be read-only for releases after Windows 8.1. Instead, use a new CurrencyFormatter.")
	final void Currency(HSTRING value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ICurrencyFormatter)this.asInterface(uuid("11730ca5-4b00-41b2-b332-73b12a497d54"))).set_Currency(value));
	}
	final Windows.Foundation.IReference!(INT64) ParseInt(HSTRING text)
	{
		Windows.Foundation.IReference!(INT64) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberParser)this.asInterface(uuid("e6659412-4a13-4a53-83a1-392fbe4cff9f"))).abi_ParseInt(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(ulong) ParseUInt(HSTRING text)
	{
		Windows.Foundation.IReference!(ulong) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberParser)this.asInterface(uuid("e6659412-4a13-4a53-83a1-392fbe4cff9f"))).abi_ParseUInt(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) ParseDouble(HSTRING text)
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberParser)this.asInterface(uuid("e6659412-4a13-4a53-83a1-392fbe4cff9f"))).abi_ParseDouble(text, &_ret));
		return _ret;
	}
	final HSTRING FormatInt(INT64 value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter2)this.asInterface(uuid("d4a8c1f0-80d0-4b0d-a89e-882c1e8f8310"))).abi_FormatInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatUInt(ulong value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter2)this.asInterface(uuid("d4a8c1f0-80d0-4b0d-a89e-882c1e8f8310"))).abi_FormatUInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatDouble(double value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter2)this.asInterface(uuid("d4a8c1f0-80d0-4b0d-a89e-882c1e8f8310"))).abi_FormatDouble(value, &_ret));
		return _ret;
	}
	final HSTRING FormatInt(INT64 value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter)this.asInterface(uuid("a5007c49-7676-4db7-8631-1b6ff265caa9"))).abi_FormatInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatUInt(ulong value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter)this.asInterface(uuid("a5007c49-7676-4db7-8631-1b6ff265caa9"))).abi_FormatUInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatDouble(double value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter)this.asInterface(uuid("a5007c49-7676-4db7-8631-1b6ff265caa9"))).abi_FormatDouble(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Languages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_Languages(&_ret));
		return _ret;
	}
	final HSTRING GeographicRegion()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_GeographicRegion(&_ret));
		return _ret;
	}
	final INT32 IntegerDigits()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_IntegerDigits(&_ret));
		return _ret;
	}
	final void IntegerDigits(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_IntegerDigits(value));
	}
	final INT32 FractionDigits()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_FractionDigits(&_ret));
		return _ret;
	}
	final void FractionDigits(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_FractionDigits(value));
	}
	final bool IsGrouped()
	{
		bool _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_IsGrouped(&_ret));
		return _ret;
	}
	final void IsGrouped(bool value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_IsGrouped(value));
	}
	final bool IsDecimalPointAlwaysDisplayed()
	{
		bool _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_IsDecimalPointAlwaysDisplayed(&_ret));
		return _ret;
	}
	final void IsDecimalPointAlwaysDisplayed(bool value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_IsDecimalPointAlwaysDisplayed(value));
	}
	final HSTRING NumeralSystem()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_NumeralSystem(&_ret));
		return _ret;
	}
	final void NumeralSystem(HSTRING value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_NumeralSystem(value));
	}
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final HSTRING ResolvedGeographicRegion()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_ResolvedGeographicRegion(&_ret));
		return _ret;
	}
	final Windows.Globalization.NumberFormatting.CurrencyFormatterMode Mode()
	{
		Windows.Globalization.NumberFormatting.CurrencyFormatterMode _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ICurrencyFormatter2)this.asInterface(uuid("072c2f1d-e7ba-4197-920e-247c92f7dea6"))).get_Mode(&_ret));
		return _ret;
	}
	final void Mode(Windows.Globalization.NumberFormatting.CurrencyFormatterMode value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ICurrencyFormatter2)this.asInterface(uuid("072c2f1d-e7ba-4197-920e-247c92f7dea6"))).set_Mode(value));
	}
	final void ApplyRoundingForCurrency(Windows.Globalization.NumberFormatting.RoundingAlgorithm roundingAlgorithm)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ICurrencyFormatter2)this.asInterface(uuid("072c2f1d-e7ba-4197-920e-247c92f7dea6"))).abi_ApplyRoundingForCurrency(roundingAlgorithm));
	}
	final INT32 SignificantDigits()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignificantDigitsOption)this.asInterface(uuid("1d4dfcdd-2d43-4ee8-bbf1-c1b26a711a58"))).get_SignificantDigits(&_ret));
		return _ret;
	}
	final void SignificantDigits(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignificantDigitsOption)this.asInterface(uuid("1d4dfcdd-2d43-4ee8-bbf1-c1b26a711a58"))).set_SignificantDigits(value));
	}
	final Windows.Globalization.NumberFormatting.INumberRounder NumberRounder()
	{
		Windows.Globalization.NumberFormatting.INumberRounder _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounderOption)this.asInterface(uuid("3b088433-646f-4efe-8d48-66eb2e49e736"))).get_NumberRounder(&_ret));
		return _ret;
	}
	final void NumberRounder(Windows.Globalization.NumberFormatting.INumberRounder value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounderOption)this.asInterface(uuid("3b088433-646f-4efe-8d48-66eb2e49e736"))).set_NumberRounder(value));
	}
	final bool IsZeroSigned()
	{
		bool _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignedZeroOption)this.asInterface(uuid("fd1cdd31-0a3c-49c4-a642-96a1564f4f30"))).get_IsZeroSigned(&_ret));
		return _ret;
	}
	final void IsZeroSigned(bool value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignedZeroOption)this.asInterface(uuid("fd1cdd31-0a3c-49c4-a642-96a1564f4f30"))).set_IsZeroSigned(value));
	}
	static Windows.Globalization.NumberFormatting.CurrencyFormatter New(HSTRING currencyCode)
	{
		auto factory = factory!(Windows.Globalization.NumberFormatting.ICurrencyFormatterFactory);
		Windows.Globalization.NumberFormatting.CurrencyFormatter _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ICurrencyFormatterFactory)factory.asInterface(uuid("86c7537e-b938-4aa2-84b0-2c33dc5b1450"))).abi_CreateCurrencyFormatterCode(currencyCode, &_ret));
		return _ret;
	}
	static Windows.Globalization.NumberFormatting.CurrencyFormatter New(HSTRING currencyCode, Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING geographicRegion)
	{
		auto factory = factory!(Windows.Globalization.NumberFormatting.ICurrencyFormatterFactory);
		Windows.Globalization.NumberFormatting.CurrencyFormatter _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ICurrencyFormatterFactory)factory.asInterface(uuid("86c7537e-b938-4aa2-84b0-2c33dc5b1450"))).abi_CreateCurrencyFormatterCodeContext(currencyCode, languages, geographicRegion, &_ret));
		return _ret;
	}
}

interface DecimalFormatter : Windows.Globalization.NumberFormatting.INumberFormatterOptions, Windows.Globalization.NumberFormatting.INumberFormatter, Windows.Globalization.NumberFormatting.INumberFormatter2, Windows.Globalization.NumberFormatting.INumberParser, Windows.Globalization.NumberFormatting.ISignificantDigitsOption, Windows.Globalization.NumberFormatting.INumberRounderOption, Windows.Globalization.NumberFormatting.ISignedZeroOption
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Languages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_Languages(&_ret));
		return _ret;
	}
	final HSTRING GeographicRegion()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_GeographicRegion(&_ret));
		return _ret;
	}
	final INT32 IntegerDigits()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_IntegerDigits(&_ret));
		return _ret;
	}
	final void IntegerDigits(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_IntegerDigits(value));
	}
	final INT32 FractionDigits()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_FractionDigits(&_ret));
		return _ret;
	}
	final void FractionDigits(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_FractionDigits(value));
	}
	final bool IsGrouped()
	{
		bool _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_IsGrouped(&_ret));
		return _ret;
	}
	final void IsGrouped(bool value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_IsGrouped(value));
	}
	final bool IsDecimalPointAlwaysDisplayed()
	{
		bool _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_IsDecimalPointAlwaysDisplayed(&_ret));
		return _ret;
	}
	final void IsDecimalPointAlwaysDisplayed(bool value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_IsDecimalPointAlwaysDisplayed(value));
	}
	final HSTRING NumeralSystem()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_NumeralSystem(&_ret));
		return _ret;
	}
	final void NumeralSystem(HSTRING value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_NumeralSystem(value));
	}
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final HSTRING ResolvedGeographicRegion()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_ResolvedGeographicRegion(&_ret));
		return _ret;
	}
	final HSTRING FormatInt(INT64 value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter)this.asInterface(uuid("a5007c49-7676-4db7-8631-1b6ff265caa9"))).abi_FormatInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatUInt(ulong value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter)this.asInterface(uuid("a5007c49-7676-4db7-8631-1b6ff265caa9"))).abi_FormatUInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatDouble(double value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter)this.asInterface(uuid("a5007c49-7676-4db7-8631-1b6ff265caa9"))).abi_FormatDouble(value, &_ret));
		return _ret;
	}
	final HSTRING FormatInt(INT64 value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter2)this.asInterface(uuid("d4a8c1f0-80d0-4b0d-a89e-882c1e8f8310"))).abi_FormatInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatUInt(ulong value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter2)this.asInterface(uuid("d4a8c1f0-80d0-4b0d-a89e-882c1e8f8310"))).abi_FormatUInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatDouble(double value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter2)this.asInterface(uuid("d4a8c1f0-80d0-4b0d-a89e-882c1e8f8310"))).abi_FormatDouble(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(INT64) ParseInt(HSTRING text)
	{
		Windows.Foundation.IReference!(INT64) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberParser)this.asInterface(uuid("e6659412-4a13-4a53-83a1-392fbe4cff9f"))).abi_ParseInt(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(ulong) ParseUInt(HSTRING text)
	{
		Windows.Foundation.IReference!(ulong) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberParser)this.asInterface(uuid("e6659412-4a13-4a53-83a1-392fbe4cff9f"))).abi_ParseUInt(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) ParseDouble(HSTRING text)
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberParser)this.asInterface(uuid("e6659412-4a13-4a53-83a1-392fbe4cff9f"))).abi_ParseDouble(text, &_ret));
		return _ret;
	}
	final INT32 SignificantDigits()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignificantDigitsOption)this.asInterface(uuid("1d4dfcdd-2d43-4ee8-bbf1-c1b26a711a58"))).get_SignificantDigits(&_ret));
		return _ret;
	}
	final void SignificantDigits(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignificantDigitsOption)this.asInterface(uuid("1d4dfcdd-2d43-4ee8-bbf1-c1b26a711a58"))).set_SignificantDigits(value));
	}
	final Windows.Globalization.NumberFormatting.INumberRounder NumberRounder()
	{
		Windows.Globalization.NumberFormatting.INumberRounder _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounderOption)this.asInterface(uuid("3b088433-646f-4efe-8d48-66eb2e49e736"))).get_NumberRounder(&_ret));
		return _ret;
	}
	final void NumberRounder(Windows.Globalization.NumberFormatting.INumberRounder value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounderOption)this.asInterface(uuid("3b088433-646f-4efe-8d48-66eb2e49e736"))).set_NumberRounder(value));
	}
	final bool IsZeroSigned()
	{
		bool _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignedZeroOption)this.asInterface(uuid("fd1cdd31-0a3c-49c4-a642-96a1564f4f30"))).get_IsZeroSigned(&_ret));
		return _ret;
	}
	final void IsZeroSigned(bool value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignedZeroOption)this.asInterface(uuid("fd1cdd31-0a3c-49c4-a642-96a1564f4f30"))).set_IsZeroSigned(value));
	}
	static DecimalFormatter New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(DecimalFormatter).abi_ActivateInstance(&ret));
		return cast(DecimalFormatter) ret;
	}
	static Windows.Globalization.NumberFormatting.DecimalFormatter New(Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING geographicRegion)
	{
		auto factory = factory!(Windows.Globalization.NumberFormatting.IDecimalFormatterFactory);
		Windows.Globalization.NumberFormatting.DecimalFormatter _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.IDecimalFormatterFactory)factory.asInterface(uuid("0d018c9a-e393-46b8-b830-7a69c8f89fbb"))).abi_CreateDecimalFormatter(languages, geographicRegion, &_ret));
		return _ret;
	}
}

interface IncrementNumberRounder : Windows.Globalization.NumberFormatting.INumberRounder, Windows.Globalization.NumberFormatting.IIncrementNumberRounder
{
extern(Windows):
	final INT32 RoundInt32(INT32 value)
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounder)this.asInterface(uuid("5473c375-38ed-4631-b80c-ef34fc48b7f5"))).abi_RoundInt32(value, &_ret));
		return _ret;
	}
	final UINT32 RoundUInt32(UINT32 value)
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounder)this.asInterface(uuid("5473c375-38ed-4631-b80c-ef34fc48b7f5"))).abi_RoundUInt32(value, &_ret));
		return _ret;
	}
	final INT64 RoundInt64(INT64 value)
	{
		INT64 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounder)this.asInterface(uuid("5473c375-38ed-4631-b80c-ef34fc48b7f5"))).abi_RoundInt64(value, &_ret));
		return _ret;
	}
	final ulong RoundUInt64(ulong value)
	{
		ulong _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounder)this.asInterface(uuid("5473c375-38ed-4631-b80c-ef34fc48b7f5"))).abi_RoundUInt64(value, &_ret));
		return _ret;
	}
	final float RoundSingle(float value)
	{
		float _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounder)this.asInterface(uuid("5473c375-38ed-4631-b80c-ef34fc48b7f5"))).abi_RoundSingle(value, &_ret));
		return _ret;
	}
	final double RoundDouble(double value)
	{
		double _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounder)this.asInterface(uuid("5473c375-38ed-4631-b80c-ef34fc48b7f5"))).abi_RoundDouble(value, &_ret));
		return _ret;
	}
	final Windows.Globalization.NumberFormatting.RoundingAlgorithm RoundingAlgorithm()
	{
		Windows.Globalization.NumberFormatting.RoundingAlgorithm _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.IIncrementNumberRounder)this.asInterface(uuid("70a64ff8-66ab-4155-9da1-739e46764543"))).get_RoundingAlgorithm(&_ret));
		return _ret;
	}
	final void RoundingAlgorithm(Windows.Globalization.NumberFormatting.RoundingAlgorithm value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.IIncrementNumberRounder)this.asInterface(uuid("70a64ff8-66ab-4155-9da1-739e46764543"))).set_RoundingAlgorithm(value));
	}
	final double Increment()
	{
		double _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.IIncrementNumberRounder)this.asInterface(uuid("70a64ff8-66ab-4155-9da1-739e46764543"))).get_Increment(&_ret));
		return _ret;
	}
	final void Increment(double value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.IIncrementNumberRounder)this.asInterface(uuid("70a64ff8-66ab-4155-9da1-739e46764543"))).set_Increment(value));
	}
	static IncrementNumberRounder New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(IncrementNumberRounder).abi_ActivateInstance(&ret));
		return cast(IncrementNumberRounder) ret;
	}
}

interface NumeralSystemTranslator : Windows.Globalization.NumberFormatting.INumeralSystemTranslator
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Languages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumeralSystemTranslator)this.asInterface(uuid("28f5bc2c-8c23-4234-ad2e-fa5a3a426e9b"))).get_Languages(&_ret));
		return _ret;
	}
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumeralSystemTranslator)this.asInterface(uuid("28f5bc2c-8c23-4234-ad2e-fa5a3a426e9b"))).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final HSTRING NumeralSystem()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumeralSystemTranslator)this.asInterface(uuid("28f5bc2c-8c23-4234-ad2e-fa5a3a426e9b"))).get_NumeralSystem(&_ret));
		return _ret;
	}
	final void NumeralSystem(HSTRING value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumeralSystemTranslator)this.asInterface(uuid("28f5bc2c-8c23-4234-ad2e-fa5a3a426e9b"))).set_NumeralSystem(value));
	}
	final HSTRING TranslateNumerals(HSTRING value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumeralSystemTranslator)this.asInterface(uuid("28f5bc2c-8c23-4234-ad2e-fa5a3a426e9b"))).abi_TranslateNumerals(value, &_ret));
		return _ret;
	}
	static NumeralSystemTranslator New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(NumeralSystemTranslator).abi_ActivateInstance(&ret));
		return cast(NumeralSystemTranslator) ret;
	}
	static Windows.Globalization.NumberFormatting.NumeralSystemTranslator New(Windows.Foundation.Collections.IIterable!(HSTRING) languages)
	{
		auto factory = factory!(Windows.Globalization.NumberFormatting.INumeralSystemTranslatorFactory);
		Windows.Globalization.NumberFormatting.NumeralSystemTranslator _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumeralSystemTranslatorFactory)factory.asInterface(uuid("9630c8da-36ef-4d88-a85c-6f0d98d620a6"))).abi_Create(languages, &_ret));
		return _ret;
	}
}

interface PercentFormatter : Windows.Globalization.NumberFormatting.INumberFormatterOptions, Windows.Globalization.NumberFormatting.INumberFormatter, Windows.Globalization.NumberFormatting.INumberFormatter2, Windows.Globalization.NumberFormatting.INumberParser, Windows.Globalization.NumberFormatting.ISignificantDigitsOption, Windows.Globalization.NumberFormatting.INumberRounderOption, Windows.Globalization.NumberFormatting.ISignedZeroOption
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Languages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_Languages(&_ret));
		return _ret;
	}
	final HSTRING GeographicRegion()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_GeographicRegion(&_ret));
		return _ret;
	}
	final INT32 IntegerDigits()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_IntegerDigits(&_ret));
		return _ret;
	}
	final void IntegerDigits(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_IntegerDigits(value));
	}
	final INT32 FractionDigits()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_FractionDigits(&_ret));
		return _ret;
	}
	final void FractionDigits(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_FractionDigits(value));
	}
	final bool IsGrouped()
	{
		bool _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_IsGrouped(&_ret));
		return _ret;
	}
	final void IsGrouped(bool value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_IsGrouped(value));
	}
	final bool IsDecimalPointAlwaysDisplayed()
	{
		bool _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_IsDecimalPointAlwaysDisplayed(&_ret));
		return _ret;
	}
	final void IsDecimalPointAlwaysDisplayed(bool value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_IsDecimalPointAlwaysDisplayed(value));
	}
	final HSTRING NumeralSystem()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_NumeralSystem(&_ret));
		return _ret;
	}
	final void NumeralSystem(HSTRING value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_NumeralSystem(value));
	}
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final HSTRING ResolvedGeographicRegion()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_ResolvedGeographicRegion(&_ret));
		return _ret;
	}
	final HSTRING FormatInt(INT64 value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter)this.asInterface(uuid("a5007c49-7676-4db7-8631-1b6ff265caa9"))).abi_FormatInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatUInt(ulong value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter)this.asInterface(uuid("a5007c49-7676-4db7-8631-1b6ff265caa9"))).abi_FormatUInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatDouble(double value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter)this.asInterface(uuid("a5007c49-7676-4db7-8631-1b6ff265caa9"))).abi_FormatDouble(value, &_ret));
		return _ret;
	}
	final HSTRING FormatInt(INT64 value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter2)this.asInterface(uuid("d4a8c1f0-80d0-4b0d-a89e-882c1e8f8310"))).abi_FormatInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatUInt(ulong value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter2)this.asInterface(uuid("d4a8c1f0-80d0-4b0d-a89e-882c1e8f8310"))).abi_FormatUInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatDouble(double value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter2)this.asInterface(uuid("d4a8c1f0-80d0-4b0d-a89e-882c1e8f8310"))).abi_FormatDouble(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(INT64) ParseInt(HSTRING text)
	{
		Windows.Foundation.IReference!(INT64) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberParser)this.asInterface(uuid("e6659412-4a13-4a53-83a1-392fbe4cff9f"))).abi_ParseInt(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(ulong) ParseUInt(HSTRING text)
	{
		Windows.Foundation.IReference!(ulong) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberParser)this.asInterface(uuid("e6659412-4a13-4a53-83a1-392fbe4cff9f"))).abi_ParseUInt(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) ParseDouble(HSTRING text)
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberParser)this.asInterface(uuid("e6659412-4a13-4a53-83a1-392fbe4cff9f"))).abi_ParseDouble(text, &_ret));
		return _ret;
	}
	final INT32 SignificantDigits()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignificantDigitsOption)this.asInterface(uuid("1d4dfcdd-2d43-4ee8-bbf1-c1b26a711a58"))).get_SignificantDigits(&_ret));
		return _ret;
	}
	final void SignificantDigits(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignificantDigitsOption)this.asInterface(uuid("1d4dfcdd-2d43-4ee8-bbf1-c1b26a711a58"))).set_SignificantDigits(value));
	}
	final Windows.Globalization.NumberFormatting.INumberRounder NumberRounder()
	{
		Windows.Globalization.NumberFormatting.INumberRounder _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounderOption)this.asInterface(uuid("3b088433-646f-4efe-8d48-66eb2e49e736"))).get_NumberRounder(&_ret));
		return _ret;
	}
	final void NumberRounder(Windows.Globalization.NumberFormatting.INumberRounder value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounderOption)this.asInterface(uuid("3b088433-646f-4efe-8d48-66eb2e49e736"))).set_NumberRounder(value));
	}
	final bool IsZeroSigned()
	{
		bool _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignedZeroOption)this.asInterface(uuid("fd1cdd31-0a3c-49c4-a642-96a1564f4f30"))).get_IsZeroSigned(&_ret));
		return _ret;
	}
	final void IsZeroSigned(bool value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignedZeroOption)this.asInterface(uuid("fd1cdd31-0a3c-49c4-a642-96a1564f4f30"))).set_IsZeroSigned(value));
	}
	static PercentFormatter New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PercentFormatter).abi_ActivateInstance(&ret));
		return cast(PercentFormatter) ret;
	}
	static Windows.Globalization.NumberFormatting.PercentFormatter New(Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING geographicRegion)
	{
		auto factory = factory!(Windows.Globalization.NumberFormatting.IPercentFormatterFactory);
		Windows.Globalization.NumberFormatting.PercentFormatter _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.IPercentFormatterFactory)factory.asInterface(uuid("b7828aef-fed4-4018-a6e2-e09961e03765"))).abi_CreatePercentFormatter(languages, geographicRegion, &_ret));
		return _ret;
	}
}

interface PermilleFormatter : Windows.Globalization.NumberFormatting.INumberFormatterOptions, Windows.Globalization.NumberFormatting.INumberFormatter, Windows.Globalization.NumberFormatting.INumberFormatter2, Windows.Globalization.NumberFormatting.INumberParser, Windows.Globalization.NumberFormatting.ISignificantDigitsOption, Windows.Globalization.NumberFormatting.INumberRounderOption, Windows.Globalization.NumberFormatting.ISignedZeroOption
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Languages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_Languages(&_ret));
		return _ret;
	}
	final HSTRING GeographicRegion()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_GeographicRegion(&_ret));
		return _ret;
	}
	final INT32 IntegerDigits()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_IntegerDigits(&_ret));
		return _ret;
	}
	final void IntegerDigits(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_IntegerDigits(value));
	}
	final INT32 FractionDigits()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_FractionDigits(&_ret));
		return _ret;
	}
	final void FractionDigits(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_FractionDigits(value));
	}
	final bool IsGrouped()
	{
		bool _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_IsGrouped(&_ret));
		return _ret;
	}
	final void IsGrouped(bool value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_IsGrouped(value));
	}
	final bool IsDecimalPointAlwaysDisplayed()
	{
		bool _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_IsDecimalPointAlwaysDisplayed(&_ret));
		return _ret;
	}
	final void IsDecimalPointAlwaysDisplayed(bool value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_IsDecimalPointAlwaysDisplayed(value));
	}
	final HSTRING NumeralSystem()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_NumeralSystem(&_ret));
		return _ret;
	}
	final void NumeralSystem(HSTRING value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).set_NumeralSystem(value));
	}
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final HSTRING ResolvedGeographicRegion()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatterOptions)this.asInterface(uuid("80332d21-aee1-4a39-baa2-07ed8c96daf6"))).get_ResolvedGeographicRegion(&_ret));
		return _ret;
	}
	final HSTRING FormatInt(INT64 value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter)this.asInterface(uuid("a5007c49-7676-4db7-8631-1b6ff265caa9"))).abi_FormatInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatUInt(ulong value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter)this.asInterface(uuid("a5007c49-7676-4db7-8631-1b6ff265caa9"))).abi_FormatUInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatDouble(double value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter)this.asInterface(uuid("a5007c49-7676-4db7-8631-1b6ff265caa9"))).abi_FormatDouble(value, &_ret));
		return _ret;
	}
	final HSTRING FormatInt(INT64 value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter2)this.asInterface(uuid("d4a8c1f0-80d0-4b0d-a89e-882c1e8f8310"))).abi_FormatInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatUInt(ulong value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter2)this.asInterface(uuid("d4a8c1f0-80d0-4b0d-a89e-882c1e8f8310"))).abi_FormatUInt(value, &_ret));
		return _ret;
	}
	final HSTRING FormatDouble(double value)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberFormatter2)this.asInterface(uuid("d4a8c1f0-80d0-4b0d-a89e-882c1e8f8310"))).abi_FormatDouble(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(INT64) ParseInt(HSTRING text)
	{
		Windows.Foundation.IReference!(INT64) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberParser)this.asInterface(uuid("e6659412-4a13-4a53-83a1-392fbe4cff9f"))).abi_ParseInt(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(ulong) ParseUInt(HSTRING text)
	{
		Windows.Foundation.IReference!(ulong) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberParser)this.asInterface(uuid("e6659412-4a13-4a53-83a1-392fbe4cff9f"))).abi_ParseUInt(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) ParseDouble(HSTRING text)
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberParser)this.asInterface(uuid("e6659412-4a13-4a53-83a1-392fbe4cff9f"))).abi_ParseDouble(text, &_ret));
		return _ret;
	}
	final INT32 SignificantDigits()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignificantDigitsOption)this.asInterface(uuid("1d4dfcdd-2d43-4ee8-bbf1-c1b26a711a58"))).get_SignificantDigits(&_ret));
		return _ret;
	}
	final void SignificantDigits(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignificantDigitsOption)this.asInterface(uuid("1d4dfcdd-2d43-4ee8-bbf1-c1b26a711a58"))).set_SignificantDigits(value));
	}
	final Windows.Globalization.NumberFormatting.INumberRounder NumberRounder()
	{
		Windows.Globalization.NumberFormatting.INumberRounder _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounderOption)this.asInterface(uuid("3b088433-646f-4efe-8d48-66eb2e49e736"))).get_NumberRounder(&_ret));
		return _ret;
	}
	final void NumberRounder(Windows.Globalization.NumberFormatting.INumberRounder value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounderOption)this.asInterface(uuid("3b088433-646f-4efe-8d48-66eb2e49e736"))).set_NumberRounder(value));
	}
	final bool IsZeroSigned()
	{
		bool _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignedZeroOption)this.asInterface(uuid("fd1cdd31-0a3c-49c4-a642-96a1564f4f30"))).get_IsZeroSigned(&_ret));
		return _ret;
	}
	final void IsZeroSigned(bool value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignedZeroOption)this.asInterface(uuid("fd1cdd31-0a3c-49c4-a642-96a1564f4f30"))).set_IsZeroSigned(value));
	}
	static PermilleFormatter New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PermilleFormatter).abi_ActivateInstance(&ret));
		return cast(PermilleFormatter) ret;
	}
	static Windows.Globalization.NumberFormatting.PermilleFormatter New(Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING geographicRegion)
	{
		auto factory = factory!(Windows.Globalization.NumberFormatting.IPermilleFormatterFactory);
		Windows.Globalization.NumberFormatting.PermilleFormatter _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.IPermilleFormatterFactory)factory.asInterface(uuid("2b37b4ac-e638-4ed5-a998-62f6b06a49ae"))).abi_CreatePermilleFormatter(languages, geographicRegion, &_ret));
		return _ret;
	}
}

interface SignificantDigitsNumberRounder : Windows.Globalization.NumberFormatting.INumberRounder, Windows.Globalization.NumberFormatting.ISignificantDigitsNumberRounder
{
extern(Windows):
	final INT32 RoundInt32(INT32 value)
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounder)this.asInterface(uuid("5473c375-38ed-4631-b80c-ef34fc48b7f5"))).abi_RoundInt32(value, &_ret));
		return _ret;
	}
	final UINT32 RoundUInt32(UINT32 value)
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounder)this.asInterface(uuid("5473c375-38ed-4631-b80c-ef34fc48b7f5"))).abi_RoundUInt32(value, &_ret));
		return _ret;
	}
	final INT64 RoundInt64(INT64 value)
	{
		INT64 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounder)this.asInterface(uuid("5473c375-38ed-4631-b80c-ef34fc48b7f5"))).abi_RoundInt64(value, &_ret));
		return _ret;
	}
	final ulong RoundUInt64(ulong value)
	{
		ulong _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounder)this.asInterface(uuid("5473c375-38ed-4631-b80c-ef34fc48b7f5"))).abi_RoundUInt64(value, &_ret));
		return _ret;
	}
	final float RoundSingle(float value)
	{
		float _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounder)this.asInterface(uuid("5473c375-38ed-4631-b80c-ef34fc48b7f5"))).abi_RoundSingle(value, &_ret));
		return _ret;
	}
	final double RoundDouble(double value)
	{
		double _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.INumberRounder)this.asInterface(uuid("5473c375-38ed-4631-b80c-ef34fc48b7f5"))).abi_RoundDouble(value, &_ret));
		return _ret;
	}
	final Windows.Globalization.NumberFormatting.RoundingAlgorithm RoundingAlgorithm()
	{
		Windows.Globalization.NumberFormatting.RoundingAlgorithm _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignificantDigitsNumberRounder)this.asInterface(uuid("f5941bca-6646-4913-8c76-1b191ff94dfd"))).get_RoundingAlgorithm(&_ret));
		return _ret;
	}
	final void RoundingAlgorithm(Windows.Globalization.NumberFormatting.RoundingAlgorithm value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignificantDigitsNumberRounder)this.asInterface(uuid("f5941bca-6646-4913-8c76-1b191ff94dfd"))).set_RoundingAlgorithm(value));
	}
	final UINT32 SignificantDigits()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignificantDigitsNumberRounder)this.asInterface(uuid("f5941bca-6646-4913-8c76-1b191ff94dfd"))).get_SignificantDigits(&_ret));
		return _ret;
	}
	final void SignificantDigits(UINT32 value)
	{
		Debug.OK((cast(Windows.Globalization.NumberFormatting.ISignificantDigitsNumberRounder)this.asInterface(uuid("f5941bca-6646-4913-8c76-1b191ff94dfd"))).set_SignificantDigits(value));
	}
	static SignificantDigitsNumberRounder New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SignificantDigitsNumberRounder).abi_ActivateInstance(&ret));
		return cast(SignificantDigitsNumberRounder) ret;
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