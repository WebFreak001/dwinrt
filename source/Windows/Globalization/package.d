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
	private static Windows.Globalization.IApplicationLanguagesStatics _staticInstance;
	public static Windows.Globalization.IApplicationLanguagesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Globalization.IApplicationLanguagesStatics);
		return _staticInstance;
	}
	static HSTRING PrimaryLanguageOverride()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.IApplicationLanguagesStatics).get_PrimaryLanguageOverride(&_ret));
		return _ret;
	}
	static void PrimaryLanguageOverride(HSTRING value)
	{
		Debug.OK(staticInstance.as!(Windows.Globalization.IApplicationLanguagesStatics).set_PrimaryLanguageOverride(value));
	}
	static Windows.Foundation.Collections.IVectorView!(HSTRING) Languages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.IApplicationLanguagesStatics).get_Languages(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(HSTRING) ManifestLanguages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.IApplicationLanguagesStatics).get_ManifestLanguages(&_ret));
		return _ret;
	}
}

interface Calendar : Windows.Globalization.ICalendar, Windows.Globalization.ITimeZoneOnCalendar
{
extern(Windows):
	final Windows.Globalization.Calendar Clone()
	{
		Windows.Globalization.Calendar _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_Clone(&_ret));
		return _ret;
	}
	final void SetToMin()
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_SetToMin());
	}
	final void SetToMax()
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_SetToMax());
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Languages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_Languages(&_ret));
		return _ret;
	}
	final HSTRING NumeralSystem()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_NumeralSystem(&_ret));
		return _ret;
	}
	final void NumeralSystem(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).set_NumeralSystem(value));
	}
	final HSTRING GetCalendarSystem()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_GetCalendarSystem(&_ret));
		return _ret;
	}
	final void ChangeCalendarSystem(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_ChangeCalendarSystem(value));
	}
	final HSTRING GetClock()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_GetClock(&_ret));
		return _ret;
	}
	final void ChangeClock(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_ChangeClock(value));
	}
	final Windows.Foundation.DateTime GetDateTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_GetDateTime(&_ret));
		return _ret;
	}
	final void SetDateTime(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_SetDateTime(value));
	}
	final void SetToNow()
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_SetToNow());
	}
	final INT32 FirstEra()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_FirstEra(&_ret));
		return _ret;
	}
	final INT32 LastEra()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_LastEra(&_ret));
		return _ret;
	}
	final INT32 NumberOfEras()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_NumberOfEras(&_ret));
		return _ret;
	}
	final INT32 Era()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_Era(&_ret));
		return _ret;
	}
	final void Era(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).set_Era(value));
	}
	final void AddEras(INT32 eras)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_AddEras(eras));
	}
	final HSTRING EraAsFullString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_EraAsFullString(&_ret));
		return _ret;
	}
	final HSTRING EraAsString(INT32 idealLength)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_EraAsString(idealLength, &_ret));
		return _ret;
	}
	final INT32 FirstYearInThisEra()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_FirstYearInThisEra(&_ret));
		return _ret;
	}
	final INT32 LastYearInThisEra()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_LastYearInThisEra(&_ret));
		return _ret;
	}
	final INT32 NumberOfYearsInThisEra()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_NumberOfYearsInThisEra(&_ret));
		return _ret;
	}
	final INT32 Year()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_Year(&_ret));
		return _ret;
	}
	final void Year(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).set_Year(value));
	}
	final void AddYears(INT32 years)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_AddYears(years));
	}
	final HSTRING YearAsString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_YearAsString(&_ret));
		return _ret;
	}
	final HSTRING YearAsTruncatedString(INT32 remainingDigits)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_YearAsTruncatedString(remainingDigits, &_ret));
		return _ret;
	}
	final HSTRING YearAsPaddedString(INT32 minDigits)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_YearAsPaddedString(minDigits, &_ret));
		return _ret;
	}
	final INT32 FirstMonthInThisYear()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_FirstMonthInThisYear(&_ret));
		return _ret;
	}
	final INT32 LastMonthInThisYear()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_LastMonthInThisYear(&_ret));
		return _ret;
	}
	final INT32 NumberOfMonthsInThisYear()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_NumberOfMonthsInThisYear(&_ret));
		return _ret;
	}
	final INT32 Month()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_Month(&_ret));
		return _ret;
	}
	final void Month(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).set_Month(value));
	}
	final void AddMonths(INT32 months)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_AddMonths(months));
	}
	final HSTRING MonthAsFullString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_MonthAsFullString(&_ret));
		return _ret;
	}
	final HSTRING MonthAsString(INT32 idealLength)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_MonthAsString(idealLength, &_ret));
		return _ret;
	}
	final HSTRING MonthAsFullSoloString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_MonthAsFullSoloString(&_ret));
		return _ret;
	}
	final HSTRING MonthAsSoloString(INT32 idealLength)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_MonthAsSoloString(idealLength, &_ret));
		return _ret;
	}
	final HSTRING MonthAsNumericString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_MonthAsNumericString(&_ret));
		return _ret;
	}
	final HSTRING MonthAsPaddedNumericString(INT32 minDigits)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_MonthAsPaddedNumericString(minDigits, &_ret));
		return _ret;
	}
	final void AddWeeks(INT32 weeks)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_AddWeeks(weeks));
	}
	final INT32 FirstDayInThisMonth()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_FirstDayInThisMonth(&_ret));
		return _ret;
	}
	final INT32 LastDayInThisMonth()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_LastDayInThisMonth(&_ret));
		return _ret;
	}
	final INT32 NumberOfDaysInThisMonth()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_NumberOfDaysInThisMonth(&_ret));
		return _ret;
	}
	final INT32 Day()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_Day(&_ret));
		return _ret;
	}
	final void Day(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).set_Day(value));
	}
	final void AddDays(INT32 days)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_AddDays(days));
	}
	final HSTRING DayAsString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_DayAsString(&_ret));
		return _ret;
	}
	final HSTRING DayAsPaddedString(INT32 minDigits)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_DayAsPaddedString(minDigits, &_ret));
		return _ret;
	}
	final Windows.Globalization.DayOfWeek DayOfWeek()
	{
		Windows.Globalization.DayOfWeek _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_DayOfWeek(&_ret));
		return _ret;
	}
	final HSTRING DayOfWeekAsFullString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_DayOfWeekAsFullString(&_ret));
		return _ret;
	}
	final HSTRING DayOfWeekAsString(INT32 idealLength)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_DayOfWeekAsString(idealLength, &_ret));
		return _ret;
	}
	final HSTRING DayOfWeekAsFullSoloString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_DayOfWeekAsFullSoloString(&_ret));
		return _ret;
	}
	final HSTRING DayOfWeekAsSoloString(INT32 idealLength)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_DayOfWeekAsSoloString(idealLength, &_ret));
		return _ret;
	}
	final INT32 FirstPeriodInThisDay()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_FirstPeriodInThisDay(&_ret));
		return _ret;
	}
	final INT32 LastPeriodInThisDay()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_LastPeriodInThisDay(&_ret));
		return _ret;
	}
	final INT32 NumberOfPeriodsInThisDay()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_NumberOfPeriodsInThisDay(&_ret));
		return _ret;
	}
	final INT32 Period()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_Period(&_ret));
		return _ret;
	}
	final void Period(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).set_Period(value));
	}
	final void AddPeriods(INT32 periods)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_AddPeriods(periods));
	}
	final HSTRING PeriodAsFullString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_PeriodAsFullString(&_ret));
		return _ret;
	}
	final HSTRING PeriodAsString(INT32 idealLength)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_PeriodAsString(idealLength, &_ret));
		return _ret;
	}
	final INT32 FirstHourInThisPeriod()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_FirstHourInThisPeriod(&_ret));
		return _ret;
	}
	final INT32 LastHourInThisPeriod()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_LastHourInThisPeriod(&_ret));
		return _ret;
	}
	final INT32 NumberOfHoursInThisPeriod()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_NumberOfHoursInThisPeriod(&_ret));
		return _ret;
	}
	final INT32 Hour()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_Hour(&_ret));
		return _ret;
	}
	final void Hour(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).set_Hour(value));
	}
	final void AddHours(INT32 hours)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_AddHours(hours));
	}
	final HSTRING HourAsString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_HourAsString(&_ret));
		return _ret;
	}
	final HSTRING HourAsPaddedString(INT32 minDigits)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_HourAsPaddedString(minDigits, &_ret));
		return _ret;
	}
	final INT32 Minute()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_Minute(&_ret));
		return _ret;
	}
	final void Minute(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).set_Minute(value));
	}
	final void AddMinutes(INT32 minutes)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_AddMinutes(minutes));
	}
	final HSTRING MinuteAsString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_MinuteAsString(&_ret));
		return _ret;
	}
	final HSTRING MinuteAsPaddedString(INT32 minDigits)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_MinuteAsPaddedString(minDigits, &_ret));
		return _ret;
	}
	final INT32 Second()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_Second(&_ret));
		return _ret;
	}
	final void Second(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).set_Second(value));
	}
	final void AddSeconds(INT32 seconds)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_AddSeconds(seconds));
	}
	final HSTRING SecondAsString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_SecondAsString(&_ret));
		return _ret;
	}
	final HSTRING SecondAsPaddedString(INT32 minDigits)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_SecondAsPaddedString(minDigits, &_ret));
		return _ret;
	}
	final INT32 Nanosecond()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_Nanosecond(&_ret));
		return _ret;
	}
	final void Nanosecond(INT32 value)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).set_Nanosecond(value));
	}
	final void AddNanoseconds(INT32 nanoseconds)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_AddNanoseconds(nanoseconds));
	}
	final HSTRING NanosecondAsString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_NanosecondAsString(&_ret));
		return _ret;
	}
	final HSTRING NanosecondAsPaddedString(INT32 minDigits)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_NanosecondAsPaddedString(minDigits, &_ret));
		return _ret;
	}
	final INT32 Compare(Windows.Globalization.Calendar other)
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_Compare(other, &_ret));
		return _ret;
	}
	final INT32 CompareDateTime(Windows.Foundation.DateTime other)
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_CompareDateTime(other, &_ret));
		return _ret;
	}
	final void CopyTo(Windows.Globalization.Calendar other)
	{
		Debug.OK(this.as!(Windows.Globalization.ICalendar).abi_CopyTo(other));
	}
	final INT32 FirstMinuteInThisHour()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_FirstMinuteInThisHour(&_ret));
		return _ret;
	}
	final INT32 LastMinuteInThisHour()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_LastMinuteInThisHour(&_ret));
		return _ret;
	}
	final INT32 NumberOfMinutesInThisHour()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_NumberOfMinutesInThisHour(&_ret));
		return _ret;
	}
	final INT32 FirstSecondInThisMinute()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_FirstSecondInThisMinute(&_ret));
		return _ret;
	}
	final INT32 LastSecondInThisMinute()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_LastSecondInThisMinute(&_ret));
		return _ret;
	}
	final INT32 NumberOfSecondsInThisMinute()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_NumberOfSecondsInThisMinute(&_ret));
		return _ret;
	}
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final bool IsDaylightSavingTime()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Globalization.ICalendar).get_IsDaylightSavingTime(&_ret));
		return _ret;
	}
	final HSTRING GetTimeZone()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ITimeZoneOnCalendar).abi_GetTimeZone(&_ret));
		return _ret;
	}
	final void ChangeTimeZone(HSTRING timeZoneId)
	{
		Debug.OK(this.as!(Windows.Globalization.ITimeZoneOnCalendar).abi_ChangeTimeZone(timeZoneId));
	}
	final HSTRING TimeZoneAsFullString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ITimeZoneOnCalendar).abi_TimeZoneAsFullString(&_ret));
		return _ret;
	}
	final HSTRING TimeZoneAsString(INT32 idealLength)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ITimeZoneOnCalendar).abi_TimeZoneAsString(idealLength, &_ret));
		return _ret;
	}
	static Calendar New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(Calendar).abi_ActivateInstance(&ret));
		return ret.as!(Calendar);
	}
	static Windows.Globalization.Calendar New(Windows.Foundation.Collections.IIterable!(HSTRING) languages)
	{
		auto factory = factory!(Windows.Globalization.ICalendarFactory);
		Windows.Globalization.Calendar _ret;
		Debug.OK(factory.as!(Windows.Globalization.ICalendarFactory).abi_CreateCalendarDefaultCalendarAndClock(languages, &_ret));
		return _ret;
	}
	static Windows.Globalization.Calendar New(Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING calendar, HSTRING clock)
	{
		auto factory = factory!(Windows.Globalization.ICalendarFactory);
		Windows.Globalization.Calendar _ret;
		Debug.OK(factory.as!(Windows.Globalization.ICalendarFactory).abi_CreateCalendar(languages, calendar, clock, &_ret));
		return _ret;
	}
}

interface CalendarIdentifiers
{
	private static Windows.Globalization.ICalendarIdentifiersStatics _staticInstance;
	public static Windows.Globalization.ICalendarIdentifiersStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Globalization.ICalendarIdentifiersStatics);
		return _staticInstance;
	}
	static HSTRING Gregorian()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICalendarIdentifiersStatics).get_Gregorian(&_ret));
		return _ret;
	}
	static HSTRING Hebrew()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICalendarIdentifiersStatics).get_Hebrew(&_ret));
		return _ret;
	}
	static HSTRING Hijri()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICalendarIdentifiersStatics).get_Hijri(&_ret));
		return _ret;
	}
	static HSTRING Japanese()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICalendarIdentifiersStatics).get_Japanese(&_ret));
		return _ret;
	}
	static HSTRING Julian()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICalendarIdentifiersStatics).get_Julian(&_ret));
		return _ret;
	}
	static HSTRING Korean()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICalendarIdentifiersStatics).get_Korean(&_ret));
		return _ret;
	}
	static HSTRING Taiwan()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICalendarIdentifiersStatics).get_Taiwan(&_ret));
		return _ret;
	}
	static HSTRING Thai()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICalendarIdentifiersStatics).get_Thai(&_ret));
		return _ret;
	}
	static HSTRING UmAlQura()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICalendarIdentifiersStatics).get_UmAlQura(&_ret));
		return _ret;
	}
}

interface ClockIdentifiers
{
	private static Windows.Globalization.IClockIdentifiersStatics _staticInstance;
	public static Windows.Globalization.IClockIdentifiersStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Globalization.IClockIdentifiersStatics);
		return _staticInstance;
	}
	static HSTRING TwelveHour()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.IClockIdentifiersStatics).get_TwelveHour(&_ret));
		return _ret;
	}
	static HSTRING TwentyFourHour()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.IClockIdentifiersStatics).get_TwentyFourHour(&_ret));
		return _ret;
	}
}

interface CurrencyIdentifiers
{
	private static Windows.Globalization.ICurrencyIdentifiersStatics _staticInstance;
	public static Windows.Globalization.ICurrencyIdentifiersStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Globalization.ICurrencyIdentifiersStatics);
		return _staticInstance;
	}
	static HSTRING AED()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_AED(&_ret));
		return _ret;
	}
	static HSTRING AFN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_AFN(&_ret));
		return _ret;
	}
	static HSTRING ALL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_ALL(&_ret));
		return _ret;
	}
	static HSTRING AMD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_AMD(&_ret));
		return _ret;
	}
	static HSTRING ANG()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_ANG(&_ret));
		return _ret;
	}
	static HSTRING AOA()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_AOA(&_ret));
		return _ret;
	}
	static HSTRING ARS()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_ARS(&_ret));
		return _ret;
	}
	static HSTRING AUD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_AUD(&_ret));
		return _ret;
	}
	static HSTRING AWG()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_AWG(&_ret));
		return _ret;
	}
	static HSTRING AZN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_AZN(&_ret));
		return _ret;
	}
	static HSTRING BAM()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_BAM(&_ret));
		return _ret;
	}
	static HSTRING BBD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_BBD(&_ret));
		return _ret;
	}
	static HSTRING BDT()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_BDT(&_ret));
		return _ret;
	}
	static HSTRING BGN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_BGN(&_ret));
		return _ret;
	}
	static HSTRING BHD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_BHD(&_ret));
		return _ret;
	}
	static HSTRING BIF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_BIF(&_ret));
		return _ret;
	}
	static HSTRING BMD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_BMD(&_ret));
		return _ret;
	}
	static HSTRING BND()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_BND(&_ret));
		return _ret;
	}
	static HSTRING BOB()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_BOB(&_ret));
		return _ret;
	}
	static HSTRING BRL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_BRL(&_ret));
		return _ret;
	}
	static HSTRING BSD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_BSD(&_ret));
		return _ret;
	}
	static HSTRING BTN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_BTN(&_ret));
		return _ret;
	}
	static HSTRING BWP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_BWP(&_ret));
		return _ret;
	}
	static HSTRING BYR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_BYR(&_ret));
		return _ret;
	}
	static HSTRING BZD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_BZD(&_ret));
		return _ret;
	}
	static HSTRING CAD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_CAD(&_ret));
		return _ret;
	}
	static HSTRING CDF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_CDF(&_ret));
		return _ret;
	}
	static HSTRING CHF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_CHF(&_ret));
		return _ret;
	}
	static HSTRING CLP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_CLP(&_ret));
		return _ret;
	}
	static HSTRING CNY()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_CNY(&_ret));
		return _ret;
	}
	static HSTRING COP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_COP(&_ret));
		return _ret;
	}
	static HSTRING CRC()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_CRC(&_ret));
		return _ret;
	}
	static HSTRING CUP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_CUP(&_ret));
		return _ret;
	}
	static HSTRING CVE()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_CVE(&_ret));
		return _ret;
	}
	static HSTRING CZK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_CZK(&_ret));
		return _ret;
	}
	static HSTRING DJF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_DJF(&_ret));
		return _ret;
	}
	static HSTRING DKK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_DKK(&_ret));
		return _ret;
	}
	static HSTRING DOP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_DOP(&_ret));
		return _ret;
	}
	static HSTRING DZD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_DZD(&_ret));
		return _ret;
	}
	static HSTRING EGP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_EGP(&_ret));
		return _ret;
	}
	static HSTRING ERN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_ERN(&_ret));
		return _ret;
	}
	static HSTRING ETB()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_ETB(&_ret));
		return _ret;
	}
	static HSTRING EUR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_EUR(&_ret));
		return _ret;
	}
	static HSTRING FJD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_FJD(&_ret));
		return _ret;
	}
	static HSTRING FKP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_FKP(&_ret));
		return _ret;
	}
	static HSTRING GBP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_GBP(&_ret));
		return _ret;
	}
	static HSTRING GEL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_GEL(&_ret));
		return _ret;
	}
	static HSTRING GHS()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_GHS(&_ret));
		return _ret;
	}
	static HSTRING GIP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_GIP(&_ret));
		return _ret;
	}
	static HSTRING GMD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_GMD(&_ret));
		return _ret;
	}
	static HSTRING GNF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_GNF(&_ret));
		return _ret;
	}
	static HSTRING GTQ()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_GTQ(&_ret));
		return _ret;
	}
	static HSTRING GYD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_GYD(&_ret));
		return _ret;
	}
	static HSTRING HKD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_HKD(&_ret));
		return _ret;
	}
	static HSTRING HNL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_HNL(&_ret));
		return _ret;
	}
	static HSTRING HRK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_HRK(&_ret));
		return _ret;
	}
	static HSTRING HTG()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_HTG(&_ret));
		return _ret;
	}
	static HSTRING HUF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_HUF(&_ret));
		return _ret;
	}
	static HSTRING IDR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_IDR(&_ret));
		return _ret;
	}
	static HSTRING ILS()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_ILS(&_ret));
		return _ret;
	}
	static HSTRING INR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_INR(&_ret));
		return _ret;
	}
	static HSTRING IQD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_IQD(&_ret));
		return _ret;
	}
	static HSTRING IRR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_IRR(&_ret));
		return _ret;
	}
	static HSTRING ISK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_ISK(&_ret));
		return _ret;
	}
	static HSTRING JMD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_JMD(&_ret));
		return _ret;
	}
	static HSTRING JOD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_JOD(&_ret));
		return _ret;
	}
	static HSTRING JPY()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_JPY(&_ret));
		return _ret;
	}
	static HSTRING KES()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_KES(&_ret));
		return _ret;
	}
	static HSTRING KGS()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_KGS(&_ret));
		return _ret;
	}
	static HSTRING KHR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_KHR(&_ret));
		return _ret;
	}
	static HSTRING KMF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_KMF(&_ret));
		return _ret;
	}
	static HSTRING KPW()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_KPW(&_ret));
		return _ret;
	}
	static HSTRING KRW()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_KRW(&_ret));
		return _ret;
	}
	static HSTRING KWD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_KWD(&_ret));
		return _ret;
	}
	static HSTRING KYD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_KYD(&_ret));
		return _ret;
	}
	static HSTRING KZT()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_KZT(&_ret));
		return _ret;
	}
	static HSTRING LAK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_LAK(&_ret));
		return _ret;
	}
	static HSTRING LBP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_LBP(&_ret));
		return _ret;
	}
	static HSTRING LKR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_LKR(&_ret));
		return _ret;
	}
	static HSTRING LRD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_LRD(&_ret));
		return _ret;
	}
	static HSTRING LSL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_LSL(&_ret));
		return _ret;
	}
	static HSTRING LTL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_LTL(&_ret));
		return _ret;
	}
	static HSTRING LVL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_LVL(&_ret));
		return _ret;
	}
	static HSTRING LYD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_LYD(&_ret));
		return _ret;
	}
	static HSTRING MAD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_MAD(&_ret));
		return _ret;
	}
	static HSTRING MDL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_MDL(&_ret));
		return _ret;
	}
	static HSTRING MGA()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_MGA(&_ret));
		return _ret;
	}
	static HSTRING MKD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_MKD(&_ret));
		return _ret;
	}
	static HSTRING MMK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_MMK(&_ret));
		return _ret;
	}
	static HSTRING MNT()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_MNT(&_ret));
		return _ret;
	}
	static HSTRING MOP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_MOP(&_ret));
		return _ret;
	}
	static HSTRING MRO()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_MRO(&_ret));
		return _ret;
	}
	static HSTRING MUR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_MUR(&_ret));
		return _ret;
	}
	static HSTRING MVR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_MVR(&_ret));
		return _ret;
	}
	static HSTRING MWK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_MWK(&_ret));
		return _ret;
	}
	static HSTRING MXN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_MXN(&_ret));
		return _ret;
	}
	static HSTRING MYR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_MYR(&_ret));
		return _ret;
	}
	static HSTRING MZN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_MZN(&_ret));
		return _ret;
	}
	static HSTRING NAD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_NAD(&_ret));
		return _ret;
	}
	static HSTRING NGN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_NGN(&_ret));
		return _ret;
	}
	static HSTRING NIO()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_NIO(&_ret));
		return _ret;
	}
	static HSTRING NOK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_NOK(&_ret));
		return _ret;
	}
	static HSTRING NPR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_NPR(&_ret));
		return _ret;
	}
	static HSTRING NZD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_NZD(&_ret));
		return _ret;
	}
	static HSTRING OMR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_OMR(&_ret));
		return _ret;
	}
	static HSTRING PAB()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_PAB(&_ret));
		return _ret;
	}
	static HSTRING PEN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_PEN(&_ret));
		return _ret;
	}
	static HSTRING PGK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_PGK(&_ret));
		return _ret;
	}
	static HSTRING PHP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_PHP(&_ret));
		return _ret;
	}
	static HSTRING PKR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_PKR(&_ret));
		return _ret;
	}
	static HSTRING PLN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_PLN(&_ret));
		return _ret;
	}
	static HSTRING PYG()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_PYG(&_ret));
		return _ret;
	}
	static HSTRING QAR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_QAR(&_ret));
		return _ret;
	}
	static HSTRING RON()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_RON(&_ret));
		return _ret;
	}
	static HSTRING RSD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_RSD(&_ret));
		return _ret;
	}
	static HSTRING RUB()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_RUB(&_ret));
		return _ret;
	}
	static HSTRING RWF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_RWF(&_ret));
		return _ret;
	}
	static HSTRING SAR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_SAR(&_ret));
		return _ret;
	}
	static HSTRING SBD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_SBD(&_ret));
		return _ret;
	}
	static HSTRING SCR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_SCR(&_ret));
		return _ret;
	}
	static HSTRING SDG()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_SDG(&_ret));
		return _ret;
	}
	static HSTRING SEK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_SEK(&_ret));
		return _ret;
	}
	static HSTRING SGD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_SGD(&_ret));
		return _ret;
	}
	static HSTRING SHP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_SHP(&_ret));
		return _ret;
	}
	static HSTRING SLL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_SLL(&_ret));
		return _ret;
	}
	static HSTRING SOS()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_SOS(&_ret));
		return _ret;
	}
	static HSTRING SRD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_SRD(&_ret));
		return _ret;
	}
	static HSTRING STD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_STD(&_ret));
		return _ret;
	}
	static HSTRING SYP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_SYP(&_ret));
		return _ret;
	}
	static HSTRING SZL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_SZL(&_ret));
		return _ret;
	}
	static HSTRING THB()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_THB(&_ret));
		return _ret;
	}
	static HSTRING TJS()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_TJS(&_ret));
		return _ret;
	}
	static HSTRING TMT()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_TMT(&_ret));
		return _ret;
	}
	static HSTRING TND()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_TND(&_ret));
		return _ret;
	}
	static HSTRING TOP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_TOP(&_ret));
		return _ret;
	}
	static HSTRING TRY()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_TRY(&_ret));
		return _ret;
	}
	static HSTRING TTD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_TTD(&_ret));
		return _ret;
	}
	static HSTRING TWD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_TWD(&_ret));
		return _ret;
	}
	static HSTRING TZS()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_TZS(&_ret));
		return _ret;
	}
	static HSTRING UAH()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_UAH(&_ret));
		return _ret;
	}
	static HSTRING UGX()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_UGX(&_ret));
		return _ret;
	}
	static HSTRING USD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_USD(&_ret));
		return _ret;
	}
	static HSTRING UYU()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_UYU(&_ret));
		return _ret;
	}
	static HSTRING UZS()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_UZS(&_ret));
		return _ret;
	}
	static HSTRING VEF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_VEF(&_ret));
		return _ret;
	}
	static HSTRING VND()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_VND(&_ret));
		return _ret;
	}
	static HSTRING VUV()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_VUV(&_ret));
		return _ret;
	}
	static HSTRING WST()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_WST(&_ret));
		return _ret;
	}
	static HSTRING XAF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_XAF(&_ret));
		return _ret;
	}
	static HSTRING XCD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_XCD(&_ret));
		return _ret;
	}
	static HSTRING XOF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_XOF(&_ret));
		return _ret;
	}
	static HSTRING XPF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_XPF(&_ret));
		return _ret;
	}
	static HSTRING XXX()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_XXX(&_ret));
		return _ret;
	}
	static HSTRING YER()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_YER(&_ret));
		return _ret;
	}
	static HSTRING ZAR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_ZAR(&_ret));
		return _ret;
	}
	static HSTRING ZMW()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_ZMW(&_ret));
		return _ret;
	}
	static HSTRING ZWL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ICurrencyIdentifiersStatics).get_ZWL(&_ret));
		return _ret;
	}
}

interface GeographicRegion : Windows.Globalization.IGeographicRegion
{
extern(Windows):
	final HSTRING Code()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.IGeographicRegion).get_Code(&_ret));
		return _ret;
	}
	final HSTRING CodeTwoLetter()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.IGeographicRegion).get_CodeTwoLetter(&_ret));
		return _ret;
	}
	final HSTRING CodeThreeLetter()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.IGeographicRegion).get_CodeThreeLetter(&_ret));
		return _ret;
	}
	final HSTRING CodeThreeDigit()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.IGeographicRegion).get_CodeThreeDigit(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.IGeographicRegion).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING NativeName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.IGeographicRegion).get_NativeName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) CurrenciesInUse()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Globalization.IGeographicRegion).get_CurrenciesInUse(&_ret));
		return _ret;
	}

	private static Windows.Globalization.IGeographicRegionStatics _staticInstance;
	public static Windows.Globalization.IGeographicRegionStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Globalization.IGeographicRegionStatics);
		return _staticInstance;
	}
	static bool IsSupported(HSTRING geographicRegionCode)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.IGeographicRegionStatics).abi_IsSupported(geographicRegionCode, &_ret));
		return _ret;
	}
	static GeographicRegion New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(GeographicRegion).abi_ActivateInstance(&ret));
		return ret.as!(GeographicRegion);
	}
	static Windows.Globalization.GeographicRegion New(HSTRING geographicRegionCode)
	{
		auto factory = factory!(Windows.Globalization.IGeographicRegionFactory);
		Windows.Globalization.GeographicRegion _ret;
		Debug.OK(factory.as!(Windows.Globalization.IGeographicRegionFactory).abi_CreateGeographicRegion(geographicRegionCode, &_ret));
		return _ret;
	}
}

interface JapanesePhoneme : Windows.Globalization.IJapanesePhoneme
{
extern(Windows):
	final HSTRING DisplayText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.IJapanesePhoneme).get_DisplayText(&_ret));
		return _ret;
	}
	final HSTRING YomiText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.IJapanesePhoneme).get_YomiText(&_ret));
		return _ret;
	}
	final bool IsPhraseStart()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Globalization.IJapanesePhoneme).get_IsPhraseStart(&_ret));
		return _ret;
	}
}

interface JapanesePhoneticAnalyzer
{
	private static Windows.Globalization.IJapanesePhoneticAnalyzerStatics _staticInstance;
	public static Windows.Globalization.IJapanesePhoneticAnalyzerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Globalization.IJapanesePhoneticAnalyzerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Globalization.JapanesePhoneme) GetWords(HSTRING input)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Globalization.JapanesePhoneme) _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.IJapanesePhoneticAnalyzerStatics).abi_GetWords(input, &_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Globalization.JapanesePhoneme) GetWordsWithMonoRubyOption(HSTRING input, bool monoRuby)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Globalization.JapanesePhoneme) _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.IJapanesePhoneticAnalyzerStatics).abi_GetWordsWithMonoRubyOption(input, monoRuby, &_ret));
		return _ret;
	}
}

interface Language : Windows.Globalization.ILanguage, Windows.Globalization.ILanguageExtensionSubtags
{
extern(Windows):
	final HSTRING LanguageTag()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ILanguage).get_LanguageTag(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ILanguage).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING NativeName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ILanguage).get_NativeName(&_ret));
		return _ret;
	}
	final HSTRING Script()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.ILanguage).get_Script(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) GetExtensionSubtags(HSTRING singleton)
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Globalization.ILanguageExtensionSubtags).abi_GetExtensionSubtags(singleton, &_ret));
		return _ret;
	}

	private static Windows.Globalization.ILanguageStatics _staticInstance;
	public static Windows.Globalization.ILanguageStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Globalization.ILanguageStatics);
		return _staticInstance;
	}
	static bool IsWellFormed(HSTRING languageTag)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ILanguageStatics).abi_IsWellFormed(languageTag, &_ret));
		return _ret;
	}
	static HSTRING CurrentInputMethodLanguageTag()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.ILanguageStatics).get_CurrentInputMethodLanguageTag(&_ret));
		return _ret;
	}
	static Windows.Globalization.Language New(HSTRING languageTag)
	{
		auto factory = factory!(Windows.Globalization.ILanguageFactory);
		Windows.Globalization.Language _ret;
		Debug.OK(factory.as!(Windows.Globalization.ILanguageFactory).abi_CreateLanguage(languageTag, &_ret));
		return _ret;
	}
}

interface NumeralSystemIdentifiers
{
	private static Windows.Globalization.INumeralSystemIdentifiersStatics _staticInstance;
	public static Windows.Globalization.INumeralSystemIdentifiersStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Globalization.INumeralSystemIdentifiersStatics);
		return _staticInstance;
	}
	static HSTRING Arab()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Arab(&_ret));
		return _ret;
	}
	static HSTRING ArabExt()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_ArabExt(&_ret));
		return _ret;
	}
	static HSTRING Bali()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Bali(&_ret));
		return _ret;
	}
	static HSTRING Beng()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Beng(&_ret));
		return _ret;
	}
	static HSTRING Cham()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Cham(&_ret));
		return _ret;
	}
	static HSTRING Deva()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Deva(&_ret));
		return _ret;
	}
	static HSTRING FullWide()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_FullWide(&_ret));
		return _ret;
	}
	static HSTRING Gujr()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Gujr(&_ret));
		return _ret;
	}
	static HSTRING Guru()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Guru(&_ret));
		return _ret;
	}
	static HSTRING HaniDec()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_HaniDec(&_ret));
		return _ret;
	}
	static HSTRING Java()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Java(&_ret));
		return _ret;
	}
	static HSTRING Kali()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Kali(&_ret));
		return _ret;
	}
	static HSTRING Khmr()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Khmr(&_ret));
		return _ret;
	}
	static HSTRING Knda()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Knda(&_ret));
		return _ret;
	}
	static HSTRING Lana()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Lana(&_ret));
		return _ret;
	}
	static HSTRING LanaTham()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_LanaTham(&_ret));
		return _ret;
	}
	static HSTRING Laoo()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Laoo(&_ret));
		return _ret;
	}
	static HSTRING Latn()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Latn(&_ret));
		return _ret;
	}
	static HSTRING Lepc()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Lepc(&_ret));
		return _ret;
	}
	static HSTRING Limb()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Limb(&_ret));
		return _ret;
	}
	static HSTRING Mlym()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Mlym(&_ret));
		return _ret;
	}
	static HSTRING Mong()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Mong(&_ret));
		return _ret;
	}
	static HSTRING Mtei()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Mtei(&_ret));
		return _ret;
	}
	static HSTRING Mymr()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Mymr(&_ret));
		return _ret;
	}
	static HSTRING MymrShan()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_MymrShan(&_ret));
		return _ret;
	}
	static HSTRING Nkoo()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Nkoo(&_ret));
		return _ret;
	}
	static HSTRING Olck()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Olck(&_ret));
		return _ret;
	}
	static HSTRING Orya()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Orya(&_ret));
		return _ret;
	}
	static HSTRING Saur()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Saur(&_ret));
		return _ret;
	}
	static HSTRING Sund()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Sund(&_ret));
		return _ret;
	}
	static HSTRING Talu()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Talu(&_ret));
		return _ret;
	}
	static HSTRING TamlDec()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_TamlDec(&_ret));
		return _ret;
	}
	static HSTRING Telu()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Telu(&_ret));
		return _ret;
	}
	static HSTRING Thai()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Thai(&_ret));
		return _ret;
	}
	static HSTRING Tibt()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Tibt(&_ret));
		return _ret;
	}
	static HSTRING Vaii()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.INumeralSystemIdentifiersStatics).get_Vaii(&_ret));
		return _ret;
	}
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