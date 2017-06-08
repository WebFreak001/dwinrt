module Windows.Globalization;

import dwinrt;

@uuid("75b40847-0a4c-4a92-9565-fd63c95f7aed")
@WinrtFactory("Windows.Globalization.ApplicationLanguages")
interface IApplicationLanguagesStatics : IInspectable
{
extern(Windows):
	HRESULT get_PrimaryLanguageOverride(HSTRING* return_value);
	HRESULT set_PrimaryLanguageOverride(HSTRING value);
	HRESULT get_Languages(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_ManifestLanguages(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}

@uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea")
@WinrtFactory("Windows.Globalization.Calendar")
interface ICalendar : IInspectable
{
extern(Windows):
	HRESULT abi_Clone(Windows.Globalization.Calendar* return_value);
	HRESULT abi_SetToMin();
	HRESULT abi_SetToMax();
	HRESULT get_Languages(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_NumeralSystem(HSTRING* return_value);
	HRESULT set_NumeralSystem(HSTRING value);
	HRESULT abi_GetCalendarSystem(HSTRING* return_value);
	HRESULT abi_ChangeCalendarSystem(HSTRING value);
	HRESULT abi_GetClock(HSTRING* return_value);
	HRESULT abi_ChangeClock(HSTRING value);
	HRESULT abi_GetDateTime(Windows.Foundation.DateTime* return_result);
	HRESULT abi_SetDateTime(Windows.Foundation.DateTime value);
	HRESULT abi_SetToNow();
	HRESULT get_FirstEra(INT32* return_value);
	HRESULT get_LastEra(INT32* return_value);
	HRESULT get_NumberOfEras(INT32* return_value);
	HRESULT get_Era(INT32* return_value);
	HRESULT set_Era(INT32 value);
	HRESULT abi_AddEras(INT32 eras);
	HRESULT abi_EraAsFullString(HSTRING* return_result);
	HRESULT abi_EraAsString(INT32 idealLength, HSTRING* return_result);
	HRESULT get_FirstYearInThisEra(INT32* return_value);
	HRESULT get_LastYearInThisEra(INT32* return_value);
	HRESULT get_NumberOfYearsInThisEra(INT32* return_value);
	HRESULT get_Year(INT32* return_value);
	HRESULT set_Year(INT32 value);
	HRESULT abi_AddYears(INT32 years);
	HRESULT abi_YearAsString(HSTRING* return_result);
	HRESULT abi_YearAsTruncatedString(INT32 remainingDigits, HSTRING* return_result);
	HRESULT abi_YearAsPaddedString(INT32 minDigits, HSTRING* return_result);
	HRESULT get_FirstMonthInThisYear(INT32* return_value);
	HRESULT get_LastMonthInThisYear(INT32* return_value);
	HRESULT get_NumberOfMonthsInThisYear(INT32* return_value);
	HRESULT get_Month(INT32* return_value);
	HRESULT set_Month(INT32 value);
	HRESULT abi_AddMonths(INT32 months);
	HRESULT abi_MonthAsFullString(HSTRING* return_result);
	HRESULT abi_MonthAsString(INT32 idealLength, HSTRING* return_result);
	HRESULT abi_MonthAsFullSoloString(HSTRING* return_result);
	HRESULT abi_MonthAsSoloString(INT32 idealLength, HSTRING* return_result);
	HRESULT abi_MonthAsNumericString(HSTRING* return_result);
	HRESULT abi_MonthAsPaddedNumericString(INT32 minDigits, HSTRING* return_result);
	HRESULT abi_AddWeeks(INT32 weeks);
	HRESULT get_FirstDayInThisMonth(INT32* return_value);
	HRESULT get_LastDayInThisMonth(INT32* return_value);
	HRESULT get_NumberOfDaysInThisMonth(INT32* return_value);
	HRESULT get_Day(INT32* return_value);
	HRESULT set_Day(INT32 value);
	HRESULT abi_AddDays(INT32 days);
	HRESULT abi_DayAsString(HSTRING* return_result);
	HRESULT abi_DayAsPaddedString(INT32 minDigits, HSTRING* return_result);
	HRESULT get_DayOfWeek(Windows.Globalization.DayOfWeek* return_value);
	HRESULT abi_DayOfWeekAsFullString(HSTRING* return_result);
	HRESULT abi_DayOfWeekAsString(INT32 idealLength, HSTRING* return_result);
	HRESULT abi_DayOfWeekAsFullSoloString(HSTRING* return_result);
	HRESULT abi_DayOfWeekAsSoloString(INT32 idealLength, HSTRING* return_result);
	HRESULT get_FirstPeriodInThisDay(INT32* return_value);
	HRESULT get_LastPeriodInThisDay(INT32* return_value);
	HRESULT get_NumberOfPeriodsInThisDay(INT32* return_value);
	HRESULT get_Period(INT32* return_value);
	HRESULT set_Period(INT32 value);
	HRESULT abi_AddPeriods(INT32 periods);
	HRESULT abi_PeriodAsFullString(HSTRING* return_result);
	HRESULT abi_PeriodAsString(INT32 idealLength, HSTRING* return_result);
	HRESULT get_FirstHourInThisPeriod(INT32* return_value);
	HRESULT get_LastHourInThisPeriod(INT32* return_value);
	HRESULT get_NumberOfHoursInThisPeriod(INT32* return_value);
	HRESULT get_Hour(INT32* return_value);
	HRESULT set_Hour(INT32 value);
	HRESULT abi_AddHours(INT32 hours);
	HRESULT abi_HourAsString(HSTRING* return_result);
	HRESULT abi_HourAsPaddedString(INT32 minDigits, HSTRING* return_result);
	HRESULT get_Minute(INT32* return_value);
	HRESULT set_Minute(INT32 value);
	HRESULT abi_AddMinutes(INT32 minutes);
	HRESULT abi_MinuteAsString(HSTRING* return_result);
	HRESULT abi_MinuteAsPaddedString(INT32 minDigits, HSTRING* return_result);
	HRESULT get_Second(INT32* return_value);
	HRESULT set_Second(INT32 value);
	HRESULT abi_AddSeconds(INT32 seconds);
	HRESULT abi_SecondAsString(HSTRING* return_result);
	HRESULT abi_SecondAsPaddedString(INT32 minDigits, HSTRING* return_result);
	HRESULT get_Nanosecond(INT32* return_value);
	HRESULT set_Nanosecond(INT32 value);
	HRESULT abi_AddNanoseconds(INT32 nanoseconds);
	HRESULT abi_NanosecondAsString(HSTRING* return_result);
	HRESULT abi_NanosecondAsPaddedString(INT32 minDigits, HSTRING* return_result);
	HRESULT abi_Compare(Windows.Globalization.Calendar other, INT32* return_result);
	HRESULT abi_CompareDateTime(Windows.Foundation.DateTime other, INT32* return_result);
	HRESULT abi_CopyTo(Windows.Globalization.Calendar other);
	HRESULT get_FirstMinuteInThisHour(INT32* return_value);
	HRESULT get_LastMinuteInThisHour(INT32* return_value);
	HRESULT get_NumberOfMinutesInThisHour(INT32* return_value);
	HRESULT get_FirstSecondInThisMinute(INT32* return_value);
	HRESULT get_LastSecondInThisMinute(INT32* return_value);
	HRESULT get_NumberOfSecondsInThisMinute(INT32* return_value);
	HRESULT get_ResolvedLanguage(HSTRING* return_value);
	HRESULT get_IsDaylightSavingTime(bool* return_value);
}

@uuid("83f58412-e56b-4c75-a66e-0f63d57758a6")
@WinrtFactory("Windows.Globalization.Calendar")
interface ICalendarFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateCalendarDefaultCalendarAndClock(Windows.Foundation.Collections.IIterable!(HSTRING) languages, Windows.Globalization.Calendar* return_result);
	HRESULT abi_CreateCalendar(Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING calendar, HSTRING clock, Windows.Globalization.Calendar* return_result);
}

@uuid("b44b378c-ca7e-4590-9e72-ea2bec1a5115")
@WinrtFactory("Windows.Globalization.Calendar")
interface ICalendarFactory2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateCalendarWithTimeZone(Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING calendar, HSTRING clock, HSTRING timeZoneId, Windows.Globalization.Calendar* return_result);
}

@uuid("80653f68-2cb2-4c1f-b590-f0f52bf4fd1a")
@WinrtFactory("Windows.Globalization.CalendarIdentifiers")
interface ICalendarIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_Gregorian(HSTRING* return_value);
	HRESULT get_Hebrew(HSTRING* return_value);
	HRESULT get_Hijri(HSTRING* return_value);
	HRESULT get_Japanese(HSTRING* return_value);
	HRESULT get_Julian(HSTRING* return_value);
	HRESULT get_Korean(HSTRING* return_value);
	HRESULT get_Taiwan(HSTRING* return_value);
	HRESULT get_Thai(HSTRING* return_value);
	HRESULT get_UmAlQura(HSTRING* return_value);
}

@uuid("7df4d488-5fd0-42a7-95b5-7d98d823075f")
@WinrtFactory("Windows.Globalization.CalendarIdentifiers")
interface ICalendarIdentifiersStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_Persian(HSTRING* return_value);
}

@uuid("2c225423-1fad-40c0-9334-a8eb90db04f5")
@WinrtFactory("Windows.Globalization.CalendarIdentifiers")
interface ICalendarIdentifiersStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_ChineseLunar(HSTRING* return_value);
	HRESULT get_JapaneseLunar(HSTRING* return_value);
	HRESULT get_KoreanLunar(HSTRING* return_value);
	HRESULT get_TaiwanLunar(HSTRING* return_value);
	HRESULT get_VietnameseLunar(HSTRING* return_value);
}

@uuid("523805bb-12ec-4f83-bc31-b1b4376b0808")
@WinrtFactory("Windows.Globalization.ClockIdentifiers")
interface IClockIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_TwelveHour(HSTRING* return_value);
	HRESULT get_TwentyFourHour(HSTRING* return_value);
}

@uuid("9f1d091b-d586-4913-9b6a-a9bd2dc12874")
@WinrtFactory("Windows.Globalization.CurrencyIdentifiers")
interface ICurrencyIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_AED(HSTRING* return_value);
	HRESULT get_AFN(HSTRING* return_value);
	HRESULT get_ALL(HSTRING* return_value);
	HRESULT get_AMD(HSTRING* return_value);
	HRESULT get_ANG(HSTRING* return_value);
	HRESULT get_AOA(HSTRING* return_value);
	HRESULT get_ARS(HSTRING* return_value);
	HRESULT get_AUD(HSTRING* return_value);
	HRESULT get_AWG(HSTRING* return_value);
	HRESULT get_AZN(HSTRING* return_value);
	HRESULT get_BAM(HSTRING* return_value);
	HRESULT get_BBD(HSTRING* return_value);
	HRESULT get_BDT(HSTRING* return_value);
	HRESULT get_BGN(HSTRING* return_value);
	HRESULT get_BHD(HSTRING* return_value);
	HRESULT get_BIF(HSTRING* return_value);
	HRESULT get_BMD(HSTRING* return_value);
	HRESULT get_BND(HSTRING* return_value);
	HRESULT get_BOB(HSTRING* return_value);
	HRESULT get_BRL(HSTRING* return_value);
	HRESULT get_BSD(HSTRING* return_value);
	HRESULT get_BTN(HSTRING* return_value);
	HRESULT get_BWP(HSTRING* return_value);
	HRESULT get_BYR(HSTRING* return_value);
	HRESULT get_BZD(HSTRING* return_value);
	HRESULT get_CAD(HSTRING* return_value);
	HRESULT get_CDF(HSTRING* return_value);
	HRESULT get_CHF(HSTRING* return_value);
	HRESULT get_CLP(HSTRING* return_value);
	HRESULT get_CNY(HSTRING* return_value);
	HRESULT get_COP(HSTRING* return_value);
	HRESULT get_CRC(HSTRING* return_value);
	HRESULT get_CUP(HSTRING* return_value);
	HRESULT get_CVE(HSTRING* return_value);
	HRESULT get_CZK(HSTRING* return_value);
	HRESULT get_DJF(HSTRING* return_value);
	HRESULT get_DKK(HSTRING* return_value);
	HRESULT get_DOP(HSTRING* return_value);
	HRESULT get_DZD(HSTRING* return_value);
	HRESULT get_EGP(HSTRING* return_value);
	HRESULT get_ERN(HSTRING* return_value);
	HRESULT get_ETB(HSTRING* return_value);
	HRESULT get_EUR(HSTRING* return_value);
	HRESULT get_FJD(HSTRING* return_value);
	HRESULT get_FKP(HSTRING* return_value);
	HRESULT get_GBP(HSTRING* return_value);
	HRESULT get_GEL(HSTRING* return_value);
	HRESULT get_GHS(HSTRING* return_value);
	HRESULT get_GIP(HSTRING* return_value);
	HRESULT get_GMD(HSTRING* return_value);
	HRESULT get_GNF(HSTRING* return_value);
	HRESULT get_GTQ(HSTRING* return_value);
	HRESULT get_GYD(HSTRING* return_value);
	HRESULT get_HKD(HSTRING* return_value);
	HRESULT get_HNL(HSTRING* return_value);
	HRESULT get_HRK(HSTRING* return_value);
	HRESULT get_HTG(HSTRING* return_value);
	HRESULT get_HUF(HSTRING* return_value);
	HRESULT get_IDR(HSTRING* return_value);
	HRESULT get_ILS(HSTRING* return_value);
	HRESULT get_INR(HSTRING* return_value);
	HRESULT get_IQD(HSTRING* return_value);
	HRESULT get_IRR(HSTRING* return_value);
	HRESULT get_ISK(HSTRING* return_value);
	HRESULT get_JMD(HSTRING* return_value);
	HRESULT get_JOD(HSTRING* return_value);
	HRESULT get_JPY(HSTRING* return_value);
	HRESULT get_KES(HSTRING* return_value);
	HRESULT get_KGS(HSTRING* return_value);
	HRESULT get_KHR(HSTRING* return_value);
	HRESULT get_KMF(HSTRING* return_value);
	HRESULT get_KPW(HSTRING* return_value);
	HRESULT get_KRW(HSTRING* return_value);
	HRESULT get_KWD(HSTRING* return_value);
	HRESULT get_KYD(HSTRING* return_value);
	HRESULT get_KZT(HSTRING* return_value);
	HRESULT get_LAK(HSTRING* return_value);
	HRESULT get_LBP(HSTRING* return_value);
	HRESULT get_LKR(HSTRING* return_value);
	HRESULT get_LRD(HSTRING* return_value);
	HRESULT get_LSL(HSTRING* return_value);
	HRESULT get_LTL(HSTRING* return_value);
	HRESULT get_LVL(HSTRING* return_value);
	HRESULT get_LYD(HSTRING* return_value);
	HRESULT get_MAD(HSTRING* return_value);
	HRESULT get_MDL(HSTRING* return_value);
	HRESULT get_MGA(HSTRING* return_value);
	HRESULT get_MKD(HSTRING* return_value);
	HRESULT get_MMK(HSTRING* return_value);
	HRESULT get_MNT(HSTRING* return_value);
	HRESULT get_MOP(HSTRING* return_value);
	HRESULT get_MRO(HSTRING* return_value);
	HRESULT get_MUR(HSTRING* return_value);
	HRESULT get_MVR(HSTRING* return_value);
	HRESULT get_MWK(HSTRING* return_value);
	HRESULT get_MXN(HSTRING* return_value);
	HRESULT get_MYR(HSTRING* return_value);
	HRESULT get_MZN(HSTRING* return_value);
	HRESULT get_NAD(HSTRING* return_value);
	HRESULT get_NGN(HSTRING* return_value);
	HRESULT get_NIO(HSTRING* return_value);
	HRESULT get_NOK(HSTRING* return_value);
	HRESULT get_NPR(HSTRING* return_value);
	HRESULT get_NZD(HSTRING* return_value);
	HRESULT get_OMR(HSTRING* return_value);
	HRESULT get_PAB(HSTRING* return_value);
	HRESULT get_PEN(HSTRING* return_value);
	HRESULT get_PGK(HSTRING* return_value);
	HRESULT get_PHP(HSTRING* return_value);
	HRESULT get_PKR(HSTRING* return_value);
	HRESULT get_PLN(HSTRING* return_value);
	HRESULT get_PYG(HSTRING* return_value);
	HRESULT get_QAR(HSTRING* return_value);
	HRESULT get_RON(HSTRING* return_value);
	HRESULT get_RSD(HSTRING* return_value);
	HRESULT get_RUB(HSTRING* return_value);
	HRESULT get_RWF(HSTRING* return_value);
	HRESULT get_SAR(HSTRING* return_value);
	HRESULT get_SBD(HSTRING* return_value);
	HRESULT get_SCR(HSTRING* return_value);
	HRESULT get_SDG(HSTRING* return_value);
	HRESULT get_SEK(HSTRING* return_value);
	HRESULT get_SGD(HSTRING* return_value);
	HRESULT get_SHP(HSTRING* return_value);
	HRESULT get_SLL(HSTRING* return_value);
	HRESULT get_SOS(HSTRING* return_value);
	HRESULT get_SRD(HSTRING* return_value);
	HRESULT get_STD(HSTRING* return_value);
	HRESULT get_SYP(HSTRING* return_value);
	HRESULT get_SZL(HSTRING* return_value);
	HRESULT get_THB(HSTRING* return_value);
	HRESULT get_TJS(HSTRING* return_value);
	HRESULT get_TMT(HSTRING* return_value);
	HRESULT get_TND(HSTRING* return_value);
	HRESULT get_TOP(HSTRING* return_value);
	HRESULT get_TRY(HSTRING* return_value);
	HRESULT get_TTD(HSTRING* return_value);
	HRESULT get_TWD(HSTRING* return_value);
	HRESULT get_TZS(HSTRING* return_value);
	HRESULT get_UAH(HSTRING* return_value);
	HRESULT get_UGX(HSTRING* return_value);
	HRESULT get_USD(HSTRING* return_value);
	HRESULT get_UYU(HSTRING* return_value);
	HRESULT get_UZS(HSTRING* return_value);
	HRESULT get_VEF(HSTRING* return_value);
	HRESULT get_VND(HSTRING* return_value);
	HRESULT get_VUV(HSTRING* return_value);
	HRESULT get_WST(HSTRING* return_value);
	HRESULT get_XAF(HSTRING* return_value);
	HRESULT get_XCD(HSTRING* return_value);
	HRESULT get_XOF(HSTRING* return_value);
	HRESULT get_XPF(HSTRING* return_value);
	HRESULT get_XXX(HSTRING* return_value);
	HRESULT get_YER(HSTRING* return_value);
	HRESULT get_ZAR(HSTRING* return_value);
	HRESULT get_ZMW(HSTRING* return_value);
	HRESULT get_ZWL(HSTRING* return_value);
}

@uuid("1814797f-c3b2-4c33-9591-980011950d37")
@WinrtFactory("Windows.Globalization.CurrencyIdentifiers")
interface ICurrencyIdentifiersStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_BYN(HSTRING* return_value);
}

@uuid("01e9a621-4a64-4ed9-954f-9edeb07bd903")
@WinrtFactory("Windows.Globalization.GeographicRegion")
interface IGeographicRegion : IInspectable
{
extern(Windows):
	HRESULT get_Code(HSTRING* return_value);
	HRESULT get_CodeTwoLetter(HSTRING* return_value);
	HRESULT get_CodeThreeLetter(HSTRING* return_value);
	HRESULT get_CodeThreeDigit(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_NativeName(HSTRING* return_value);
	HRESULT get_CurrenciesInUse(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}

@uuid("53425270-77b4-426b-859f-81e19d512546")
@WinrtFactory("Windows.Globalization.GeographicRegion")
interface IGeographicRegionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateGeographicRegion(HSTRING geographicRegionCode, Windows.Globalization.GeographicRegion* return_result);
}

@uuid("29e28974-7ad9-4ef4-8799-b3b44fadec08")
@WinrtFactory("Windows.Globalization.GeographicRegion")
interface IGeographicRegionStatics : IInspectable
{
extern(Windows):
	HRESULT abi_IsSupported(HSTRING geographicRegionCode, bool* return_result);
}

@uuid("2f6a9300-e85b-43e6-897d-5d82f862df21")
@WinrtFactory("Windows.Globalization.JapanesePhoneme")
interface IJapanesePhoneme : IInspectable
{
extern(Windows):
	HRESULT get_DisplayText(HSTRING* return_value);
	HRESULT get_YomiText(HSTRING* return_value);
	HRESULT get_IsPhraseStart(bool* return_value);
}

@uuid("88ab9e90-93de-41b2-b4d5-8edb227fd1c2")
@WinrtFactory("Windows.Globalization.JapanesePhoneticAnalyzer")
interface IJapanesePhoneticAnalyzerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetWords(HSTRING input, Windows.Foundation.Collections.IVectorView!(Windows.Globalization.JapanesePhoneme)* return_result);
	HRESULT abi_GetWordsWithMonoRubyOption(HSTRING input, bool monoRuby, Windows.Foundation.Collections.IVectorView!(Windows.Globalization.JapanesePhoneme)* return_result);
}

@uuid("ea79a752-f7c2-4265-b1bd-c4dec4e4f080")
@WinrtFactory("Windows.Globalization.Language")
interface ILanguage : IInspectable
{
extern(Windows):
	HRESULT get_LanguageTag(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_NativeName(HSTRING* return_value);
	HRESULT get_Script(HSTRING* return_value);
}

@uuid("7d7daf45-368d-4364-852b-dec927037b85")
@WinrtFactory("Windows.Globalization.Language")
interface ILanguageExtensionSubtags : IInspectable
{
extern(Windows):
	HRESULT abi_GetExtensionSubtags(HSTRING singleton, Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}

@uuid("9b0252ac-0c27-44f8-b792-9793fb66c63e")
@WinrtFactory("Windows.Globalization.Language")
interface ILanguageFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateLanguage(HSTRING languageTag, Windows.Globalization.Language* return_result);
}

@uuid("b23cd557-0865-46d4-89b8-d59be8990f0d")
@WinrtFactory("Windows.Globalization.Language")
interface ILanguageStatics : IInspectable
{
extern(Windows):
	HRESULT abi_IsWellFormed(HSTRING languageTag, bool* return_result);
	HRESULT get_CurrentInputMethodLanguageTag(HSTRING* return_value);
}

@uuid("30199f6e-914b-4b2a-9d6e-e3b0e27dbe4f")
@WinrtFactory("Windows.Globalization.Language")
interface ILanguageStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_TrySetInputMethodLanguageTag(HSTRING languageTag, bool* return_result);
}

@uuid("a5c662c3-68c9-4d3d-b765-972029e21dec")
@WinrtFactory("Windows.Globalization.NumeralSystemIdentifiers")
interface INumeralSystemIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_Arab(HSTRING* return_value);
	HRESULT get_ArabExt(HSTRING* return_value);
	HRESULT get_Bali(HSTRING* return_value);
	HRESULT get_Beng(HSTRING* return_value);
	HRESULT get_Cham(HSTRING* return_value);
	HRESULT get_Deva(HSTRING* return_value);
	HRESULT get_FullWide(HSTRING* return_value);
	HRESULT get_Gujr(HSTRING* return_value);
	HRESULT get_Guru(HSTRING* return_value);
	HRESULT get_HaniDec(HSTRING* return_value);
	HRESULT get_Java(HSTRING* return_value);
	HRESULT get_Kali(HSTRING* return_value);
	HRESULT get_Khmr(HSTRING* return_value);
	HRESULT get_Knda(HSTRING* return_value);
	HRESULT get_Lana(HSTRING* return_value);
	HRESULT get_LanaTham(HSTRING* return_value);
	HRESULT get_Laoo(HSTRING* return_value);
	HRESULT get_Latn(HSTRING* return_value);
	HRESULT get_Lepc(HSTRING* return_value);
	HRESULT get_Limb(HSTRING* return_value);
	HRESULT get_Mlym(HSTRING* return_value);
	HRESULT get_Mong(HSTRING* return_value);
	HRESULT get_Mtei(HSTRING* return_value);
	HRESULT get_Mymr(HSTRING* return_value);
	HRESULT get_MymrShan(HSTRING* return_value);
	HRESULT get_Nkoo(HSTRING* return_value);
	HRESULT get_Olck(HSTRING* return_value);
	HRESULT get_Orya(HSTRING* return_value);
	HRESULT get_Saur(HSTRING* return_value);
	HRESULT get_Sund(HSTRING* return_value);
	HRESULT get_Talu(HSTRING* return_value);
	HRESULT get_TamlDec(HSTRING* return_value);
	HRESULT get_Telu(HSTRING* return_value);
	HRESULT get_Thai(HSTRING* return_value);
	HRESULT get_Tibt(HSTRING* return_value);
	HRESULT get_Vaii(HSTRING* return_value);
}

@uuid("7f003228-9ddb-4a34-9104-0260c091a7c7")
@WinrtFactory("Windows.Globalization.NumeralSystemIdentifiers")
interface INumeralSystemIdentifiersStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_Brah(HSTRING* return_value);
	HRESULT get_Osma(HSTRING* return_value);
	HRESULT get_MathBold(HSTRING* return_value);
	HRESULT get_MathDbl(HSTRING* return_value);
	HRESULT get_MathSans(HSTRING* return_value);
	HRESULT get_MathSanb(HSTRING* return_value);
	HRESULT get_MathMono(HSTRING* return_value);
	HRESULT get_ZmthBold(HSTRING* return_value);
	HRESULT get_ZmthDbl(HSTRING* return_value);
	HRESULT get_ZmthSans(HSTRING* return_value);
	HRESULT get_ZmthSanb(HSTRING* return_value);
	HRESULT get_ZmthMono(HSTRING* return_value);
}

@uuid("bb3c25e5-46cf-4317-a3f5-02621ad54478")
@WinrtFactory("Windows.Globalization.Calendar")
interface ITimeZoneOnCalendar : IInspectable
{
extern(Windows):
	HRESULT abi_GetTimeZone(HSTRING* return_value);
	HRESULT abi_ChangeTimeZone(HSTRING timeZoneId);
	HRESULT abi_TimeZoneAsFullString(HSTRING* return_result);
	HRESULT abi_TimeZoneAsString(INT32 idealLength, HSTRING* return_result);
}

interface ApplicationLanguages
{
}

interface Calendar : Windows.Globalization.ICalendar, Windows.Globalization.ITimeZoneOnCalendar
{
}

interface CalendarIdentifiers
{
}

interface ClockIdentifiers
{
}

interface CurrencyIdentifiers
{
}

interface GeographicRegion : Windows.Globalization.IGeographicRegion
{
}

interface JapanesePhoneme : Windows.Globalization.IJapanesePhoneme
{
}

interface JapanesePhoneticAnalyzer
{
}

interface Language : Windows.Globalization.ILanguage, Windows.Globalization.ILanguageExtensionSubtags
{
}

interface NumeralSystemIdentifiers
{
}

enum DayOfWeek
{
	Sunday = 0,
	Monday = 1,
	Tuesday = 2,
	Wednesday = 3,
	Thursday = 4,
	Friday = 5,
	Saturday = 6
}