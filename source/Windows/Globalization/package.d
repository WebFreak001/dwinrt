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
	static wstring PrimaryLanguageOverride()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_PrimaryLanguageOverride(&_ret));
		return hstring(_ret).d_str;
	}
	static void PrimaryLanguageOverride(wstring value)
	{
		Debug.OK(staticInstance.set_PrimaryLanguageOverride(hstring(value).handle));
	}
	static Windows.Foundation.Collections.IVectorView!(HSTRING) Languages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(staticInstance.get_Languages(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(HSTRING) ManifestLanguages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(staticInstance.get_ManifestLanguages(&_ret));
		return _ret;
	}
}

interface Calendar : Windows.Globalization.ICalendar, Windows.Globalization.ITimeZoneOnCalendar
{
extern(Windows):
	final Windows.Globalization.Calendar Clone()
	{
		Windows.Globalization.Calendar _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_Clone(&_ret));
		return _ret;
	}
	final void SetToMin()
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_SetToMin());
	}
	final void SetToMax()
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_SetToMax());
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Languages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_Languages(&_ret));
		return _ret;
	}
	final wstring NumeralSystem()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_NumeralSystem(&_ret));
		return hstring(_ret).d_str;
	}
	final void NumeralSystem(wstring value)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).set_NumeralSystem(hstring(value).handle));
	}
	final wstring GetCalendarSystem()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_GetCalendarSystem(&_ret));
		return hstring(_ret).d_str;
	}
	final void ChangeCalendarSystem(wstring value)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_ChangeCalendarSystem(hstring(value).handle));
	}
	final wstring GetClock()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_GetClock(&_ret));
		return hstring(_ret).d_str;
	}
	final void ChangeClock(wstring value)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_ChangeClock(hstring(value).handle));
	}
	final Windows.Foundation.DateTime GetDateTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_GetDateTime(&_ret));
		return _ret;
	}
	final void SetDateTime(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_SetDateTime(value));
	}
	final void SetToNow()
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_SetToNow());
	}
	final INT32 FirstEra()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_FirstEra(&_ret));
		return _ret;
	}
	final INT32 LastEra()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_LastEra(&_ret));
		return _ret;
	}
	final INT32 NumberOfEras()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_NumberOfEras(&_ret));
		return _ret;
	}
	final INT32 Era()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_Era(&_ret));
		return _ret;
	}
	final void Era(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).set_Era(value));
	}
	final void AddEras(INT32 eras)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_AddEras(eras));
	}
	final wstring EraAsFullString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_EraAsFullString(&_ret));
		return hstring(_ret).d_str;
	}
	alias EraAsString = EraAsFullString;
	final wstring EraAsString(INT32 idealLength)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_EraAsString(idealLength, &_ret));
		return hstring(_ret).d_str;
	}
	final INT32 FirstYearInThisEra()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_FirstYearInThisEra(&_ret));
		return _ret;
	}
	final INT32 LastYearInThisEra()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_LastYearInThisEra(&_ret));
		return _ret;
	}
	final INT32 NumberOfYearsInThisEra()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_NumberOfYearsInThisEra(&_ret));
		return _ret;
	}
	final INT32 Year()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_Year(&_ret));
		return _ret;
	}
	final void Year(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).set_Year(value));
	}
	final void AddYears(INT32 years)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_AddYears(years));
	}
	final wstring YearAsString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_YearAsString(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring YearAsTruncatedString(INT32 remainingDigits)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_YearAsTruncatedString(remainingDigits, &_ret));
		return hstring(_ret).d_str;
	}
	final wstring YearAsPaddedString(INT32 minDigits)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_YearAsPaddedString(minDigits, &_ret));
		return hstring(_ret).d_str;
	}
	final INT32 FirstMonthInThisYear()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_FirstMonthInThisYear(&_ret));
		return _ret;
	}
	final INT32 LastMonthInThisYear()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_LastMonthInThisYear(&_ret));
		return _ret;
	}
	final INT32 NumberOfMonthsInThisYear()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_NumberOfMonthsInThisYear(&_ret));
		return _ret;
	}
	final INT32 Month()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_Month(&_ret));
		return _ret;
	}
	final void Month(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).set_Month(value));
	}
	final void AddMonths(INT32 months)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_AddMonths(months));
	}
	final wstring MonthAsFullString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_MonthAsFullString(&_ret));
		return hstring(_ret).d_str;
	}
	alias MonthAsString = MonthAsFullString;
	final wstring MonthAsString(INT32 idealLength)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_MonthAsString(idealLength, &_ret));
		return hstring(_ret).d_str;
	}
	final wstring MonthAsFullSoloString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_MonthAsFullSoloString(&_ret));
		return hstring(_ret).d_str;
	}
	alias MonthAsSoloString = MonthAsFullSoloString;
	final wstring MonthAsSoloString(INT32 idealLength)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_MonthAsSoloString(idealLength, &_ret));
		return hstring(_ret).d_str;
	}
	final wstring MonthAsNumericString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_MonthAsNumericString(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring MonthAsPaddedNumericString(INT32 minDigits)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_MonthAsPaddedNumericString(minDigits, &_ret));
		return hstring(_ret).d_str;
	}
	final void AddWeeks(INT32 weeks)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_AddWeeks(weeks));
	}
	final INT32 FirstDayInThisMonth()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_FirstDayInThisMonth(&_ret));
		return _ret;
	}
	final INT32 LastDayInThisMonth()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_LastDayInThisMonth(&_ret));
		return _ret;
	}
	final INT32 NumberOfDaysInThisMonth()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_NumberOfDaysInThisMonth(&_ret));
		return _ret;
	}
	final INT32 Day()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_Day(&_ret));
		return _ret;
	}
	final void Day(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).set_Day(value));
	}
	final void AddDays(INT32 days)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_AddDays(days));
	}
	final wstring DayAsString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_DayAsString(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring DayAsPaddedString(INT32 minDigits)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_DayAsPaddedString(minDigits, &_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Globalization.DayOfWeek DayOfWeek()
	{
		Windows.Globalization.DayOfWeek _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_DayOfWeek(&_ret));
		return _ret;
	}
	final wstring DayOfWeekAsFullString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_DayOfWeekAsFullString(&_ret));
		return hstring(_ret).d_str;
	}
	alias DayOfWeekAsString = DayOfWeekAsFullString;
	final wstring DayOfWeekAsString(INT32 idealLength)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_DayOfWeekAsString(idealLength, &_ret));
		return hstring(_ret).d_str;
	}
	final wstring DayOfWeekAsFullSoloString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_DayOfWeekAsFullSoloString(&_ret));
		return hstring(_ret).d_str;
	}
	alias DayOfWeekAsSoloString = DayOfWeekAsFullSoloString;
	final wstring DayOfWeekAsSoloString(INT32 idealLength)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_DayOfWeekAsSoloString(idealLength, &_ret));
		return hstring(_ret).d_str;
	}
	final INT32 FirstPeriodInThisDay()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_FirstPeriodInThisDay(&_ret));
		return _ret;
	}
	final INT32 LastPeriodInThisDay()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_LastPeriodInThisDay(&_ret));
		return _ret;
	}
	final INT32 NumberOfPeriodsInThisDay()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_NumberOfPeriodsInThisDay(&_ret));
		return _ret;
	}
	final INT32 Period()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_Period(&_ret));
		return _ret;
	}
	final void Period(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).set_Period(value));
	}
	final void AddPeriods(INT32 periods)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_AddPeriods(periods));
	}
	final wstring PeriodAsFullString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_PeriodAsFullString(&_ret));
		return hstring(_ret).d_str;
	}
	alias PeriodAsString = PeriodAsFullString;
	final wstring PeriodAsString(INT32 idealLength)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_PeriodAsString(idealLength, &_ret));
		return hstring(_ret).d_str;
	}
	final INT32 FirstHourInThisPeriod()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_FirstHourInThisPeriod(&_ret));
		return _ret;
	}
	final INT32 LastHourInThisPeriod()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_LastHourInThisPeriod(&_ret));
		return _ret;
	}
	final INT32 NumberOfHoursInThisPeriod()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_NumberOfHoursInThisPeriod(&_ret));
		return _ret;
	}
	final INT32 Hour()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_Hour(&_ret));
		return _ret;
	}
	final void Hour(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).set_Hour(value));
	}
	final void AddHours(INT32 hours)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_AddHours(hours));
	}
	final wstring HourAsString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_HourAsString(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring HourAsPaddedString(INT32 minDigits)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_HourAsPaddedString(minDigits, &_ret));
		return hstring(_ret).d_str;
	}
	final INT32 Minute()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_Minute(&_ret));
		return _ret;
	}
	final void Minute(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).set_Minute(value));
	}
	final void AddMinutes(INT32 minutes)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_AddMinutes(minutes));
	}
	final wstring MinuteAsString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_MinuteAsString(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring MinuteAsPaddedString(INT32 minDigits)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_MinuteAsPaddedString(minDigits, &_ret));
		return hstring(_ret).d_str;
	}
	final INT32 Second()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_Second(&_ret));
		return _ret;
	}
	final void Second(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).set_Second(value));
	}
	final void AddSeconds(INT32 seconds)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_AddSeconds(seconds));
	}
	final wstring SecondAsString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_SecondAsString(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring SecondAsPaddedString(INT32 minDigits)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_SecondAsPaddedString(minDigits, &_ret));
		return hstring(_ret).d_str;
	}
	final INT32 Nanosecond()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_Nanosecond(&_ret));
		return _ret;
	}
	final void Nanosecond(INT32 value)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).set_Nanosecond(value));
	}
	final void AddNanoseconds(INT32 nanoseconds)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_AddNanoseconds(nanoseconds));
	}
	final wstring NanosecondAsString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_NanosecondAsString(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring NanosecondAsPaddedString(INT32 minDigits)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_NanosecondAsPaddedString(minDigits, &_ret));
		return hstring(_ret).d_str;
	}
	final INT32 Compare(Windows.Globalization.Calendar other)
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_Compare(other, &_ret));
		return _ret;
	}
	final INT32 CompareDateTime(Windows.Foundation.DateTime other)
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_CompareDateTime(other, &_ret));
		return _ret;
	}
	final void CopyTo(Windows.Globalization.Calendar other)
	{
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).abi_CopyTo(other));
	}
	final INT32 FirstMinuteInThisHour()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_FirstMinuteInThisHour(&_ret));
		return _ret;
	}
	final INT32 LastMinuteInThisHour()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_LastMinuteInThisHour(&_ret));
		return _ret;
	}
	final INT32 NumberOfMinutesInThisHour()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_NumberOfMinutesInThisHour(&_ret));
		return _ret;
	}
	final INT32 FirstSecondInThisMinute()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_FirstSecondInThisMinute(&_ret));
		return _ret;
	}
	final INT32 LastSecondInThisMinute()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_LastSecondInThisMinute(&_ret));
		return _ret;
	}
	final INT32 NumberOfSecondsInThisMinute()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_NumberOfSecondsInThisMinute(&_ret));
		return _ret;
	}
	final wstring ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_ResolvedLanguage(&_ret));
		return hstring(_ret).d_str;
	}
	final bool IsDaylightSavingTime()
	{
		bool _ret;
		Debug.OK((cast(Windows.Globalization.ICalendar)this.asInterface(uuid("ca30221d-86d9-40fb-a26b-d44eb7cf08ea"))).get_IsDaylightSavingTime(&_ret));
		return _ret;
	}
	final wstring GetTimeZone()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ITimeZoneOnCalendar)this.asInterface(uuid("bb3c25e5-46cf-4317-a3f5-02621ad54478"))).abi_GetTimeZone(&_ret));
		return hstring(_ret).d_str;
	}
	final void ChangeTimeZone(wstring timeZoneId)
	{
		Debug.OK((cast(Windows.Globalization.ITimeZoneOnCalendar)this.asInterface(uuid("bb3c25e5-46cf-4317-a3f5-02621ad54478"))).abi_ChangeTimeZone(hstring(timeZoneId).handle));
	}
	final wstring TimeZoneAsFullString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ITimeZoneOnCalendar)this.asInterface(uuid("bb3c25e5-46cf-4317-a3f5-02621ad54478"))).abi_TimeZoneAsFullString(&_ret));
		return hstring(_ret).d_str;
	}
	alias TimeZoneAsString = TimeZoneAsFullString;
	final wstring TimeZoneAsString(INT32 idealLength)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ITimeZoneOnCalendar)this.asInterface(uuid("bb3c25e5-46cf-4317-a3f5-02621ad54478"))).abi_TimeZoneAsString(idealLength, &_ret));
		return hstring(_ret).d_str;
	}
	static Calendar New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(Calendar).abi_ActivateInstance(&ret));
		return cast(Calendar) ret;
	}
	static Windows.Globalization.Calendar New(Windows.Foundation.Collections.IIterable!(HSTRING) languages)
	{
		auto factory = factory!(Windows.Globalization.ICalendarFactory);
		Windows.Globalization.Calendar _ret;
		Debug.OK((cast(Windows.Globalization.ICalendarFactory)factory.asInterface(uuid("83f58412-e56b-4c75-a66e-0f63d57758a6"))).abi_CreateCalendarDefaultCalendarAndClock(languages, &_ret));
		return _ret;
	}
	static Windows.Globalization.Calendar New(Windows.Foundation.Collections.IIterable!(HSTRING) languages, wstring calendar, wstring clock)
	{
		auto factory = factory!(Windows.Globalization.ICalendarFactory);
		Windows.Globalization.Calendar _ret;
		Debug.OK((cast(Windows.Globalization.ICalendarFactory)factory.asInterface(uuid("83f58412-e56b-4c75-a66e-0f63d57758a6"))).abi_CreateCalendar(languages, hstring(calendar).handle, hstring(clock).handle, &_ret));
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
	static wstring Gregorian()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Gregorian(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Hebrew()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Hebrew(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Hijri()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Hijri(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Japanese()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Japanese(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Julian()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Julian(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Korean()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Korean(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Taiwan()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Taiwan(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Thai()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Thai(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring UmAlQura()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_UmAlQura(&_ret));
		return hstring(_ret).d_str;
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
	static wstring TwelveHour()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TwelveHour(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring TwentyFourHour()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TwentyFourHour(&_ret));
		return hstring(_ret).d_str;
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
	static wstring AED()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AED(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring AFN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AFN(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ALL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ALL(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring AMD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AMD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ANG()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ANG(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring AOA()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AOA(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ARS()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ARS(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring AUD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AUD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring AWG()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AWG(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring AZN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AZN(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BAM()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BAM(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BBD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BBD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BDT()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BDT(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BGN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BGN(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BHD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BHD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BIF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BIF(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BMD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BMD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BND()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BND(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BOB()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BOB(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BRL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BRL(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BSD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BSD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BTN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BTN(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BWP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BWP(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BYR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BYR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BZD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BZD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring CAD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_CAD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring CDF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_CDF(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring CHF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_CHF(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring CLP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_CLP(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring CNY()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_CNY(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring COP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_COP(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring CRC()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_CRC(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring CUP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_CUP(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring CVE()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_CVE(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring CZK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_CZK(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring DJF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_DJF(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring DKK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_DKK(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring DOP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_DOP(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring DZD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_DZD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring EGP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_EGP(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ERN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ERN(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ETB()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ETB(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring EUR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_EUR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring FJD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_FJD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring FKP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_FKP(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring GBP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_GBP(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring GEL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_GEL(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring GHS()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_GHS(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring GIP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_GIP(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring GMD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_GMD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring GNF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_GNF(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring GTQ()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_GTQ(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring GYD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_GYD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring HKD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HKD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring HNL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HNL(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring HRK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HRK(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring HTG()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HTG(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring HUF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HUF(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring IDR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_IDR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ILS()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ILS(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring INR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_INR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring IQD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_IQD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring IRR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_IRR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ISK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ISK(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring JMD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_JMD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring JOD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_JOD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring JPY()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_JPY(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring KES()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_KES(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring KGS()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_KGS(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring KHR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_KHR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring KMF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_KMF(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring KPW()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_KPW(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring KRW()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_KRW(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring KWD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_KWD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring KYD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_KYD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring KZT()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_KZT(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring LAK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_LAK(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring LBP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_LBP(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring LKR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_LKR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring LRD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_LRD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring LSL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_LSL(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring LTL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_LTL(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring LVL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_LVL(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring LYD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_LYD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MAD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MAD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MDL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MDL(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MGA()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MGA(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MKD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MKD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MMK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MMK(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MNT()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MNT(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MOP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MOP(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MRO()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MRO(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MUR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MUR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MVR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MVR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MWK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MWK(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MXN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MXN(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MYR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MYR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MZN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MZN(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring NAD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_NAD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring NGN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_NGN(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring NIO()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_NIO(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring NOK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_NOK(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring NPR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_NPR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring NZD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_NZD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring OMR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_OMR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring PAB()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_PAB(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring PEN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_PEN(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring PGK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_PGK(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring PHP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_PHP(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring PKR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_PKR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring PLN()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_PLN(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring PYG()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_PYG(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring QAR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_QAR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring RON()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RON(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring RSD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RSD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring RUB()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RUB(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring RWF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RWF(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SAR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SAR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SBD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SBD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SCR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SCR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SDG()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SDG(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SEK()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SEK(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SGD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SGD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SHP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SHP(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SLL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SLL(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SOS()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SOS(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SRD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SRD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring STD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_STD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SYP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SYP(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring SZL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SZL(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring THB()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_THB(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring TJS()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TJS(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring TMT()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TMT(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring TND()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TND(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring TOP()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TOP(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring TRY()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TRY(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring TTD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TTD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring TWD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TWD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring TZS()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TZS(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring UAH()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_UAH(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring UGX()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_UGX(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring USD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_USD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring UYU()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_UYU(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring UZS()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_UZS(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring VEF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_VEF(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring VND()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_VND(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring VUV()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_VUV(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring WST()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_WST(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring XAF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_XAF(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring XCD()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_XCD(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring XOF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_XOF(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring XPF()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_XPF(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring XXX()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_XXX(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring YER()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_YER(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ZAR()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ZAR(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ZMW()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ZMW(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ZWL()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ZWL(&_ret));
		return hstring(_ret).d_str;
	}
}

interface GeographicRegion : Windows.Globalization.IGeographicRegion
{
extern(Windows):
	final wstring Code()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.IGeographicRegion)this.asInterface(uuid("01e9a621-4a64-4ed9-954f-9edeb07bd903"))).get_Code(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring CodeTwoLetter()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.IGeographicRegion)this.asInterface(uuid("01e9a621-4a64-4ed9-954f-9edeb07bd903"))).get_CodeTwoLetter(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring CodeThreeLetter()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.IGeographicRegion)this.asInterface(uuid("01e9a621-4a64-4ed9-954f-9edeb07bd903"))).get_CodeThreeLetter(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring CodeThreeDigit()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.IGeographicRegion)this.asInterface(uuid("01e9a621-4a64-4ed9-954f-9edeb07bd903"))).get_CodeThreeDigit(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.IGeographicRegion)this.asInterface(uuid("01e9a621-4a64-4ed9-954f-9edeb07bd903"))).get_DisplayName(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring NativeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.IGeographicRegion)this.asInterface(uuid("01e9a621-4a64-4ed9-954f-9edeb07bd903"))).get_NativeName(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) CurrenciesInUse()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Globalization.IGeographicRegion)this.asInterface(uuid("01e9a621-4a64-4ed9-954f-9edeb07bd903"))).get_CurrenciesInUse(&_ret));
		return _ret;
	}

	private static Windows.Globalization.IGeographicRegionStatics _staticInstance;
	public static Windows.Globalization.IGeographicRegionStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Globalization.IGeographicRegionStatics);
		return _staticInstance;
	}
	static bool IsSupported(wstring geographicRegionCode)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsSupported(hstring(geographicRegionCode).handle, &_ret));
		return _ret;
	}
	static GeographicRegion New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(GeographicRegion).abi_ActivateInstance(&ret));
		return cast(GeographicRegion) ret;
	}
	static Windows.Globalization.GeographicRegion New(wstring geographicRegionCode)
	{
		auto factory = factory!(Windows.Globalization.IGeographicRegionFactory);
		Windows.Globalization.GeographicRegion _ret;
		Debug.OK((cast(Windows.Globalization.IGeographicRegionFactory)factory.asInterface(uuid("53425270-77b4-426b-859f-81e19d512546"))).abi_CreateGeographicRegion(hstring(geographicRegionCode).handle, &_ret));
		return _ret;
	}
}

interface JapanesePhoneme : Windows.Globalization.IJapanesePhoneme
{
extern(Windows):
	final wstring DisplayText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.IJapanesePhoneme)this.asInterface(uuid("2f6a9300-e85b-43e6-897d-5d82f862df21"))).get_DisplayText(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring YomiText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.IJapanesePhoneme)this.asInterface(uuid("2f6a9300-e85b-43e6-897d-5d82f862df21"))).get_YomiText(&_ret));
		return hstring(_ret).d_str;
	}
	final bool IsPhraseStart()
	{
		bool _ret;
		Debug.OK((cast(Windows.Globalization.IJapanesePhoneme)this.asInterface(uuid("2f6a9300-e85b-43e6-897d-5d82f862df21"))).get_IsPhraseStart(&_ret));
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
	static Windows.Foundation.Collections.IVectorView!(Windows.Globalization.JapanesePhoneme) GetWords(wstring input)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Globalization.JapanesePhoneme) _ret;
		Debug.OK(staticInstance.abi_GetWords(hstring(input).handle, &_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Globalization.JapanesePhoneme) GetWordsWithMonoRubyOption(wstring input, bool monoRuby)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Globalization.JapanesePhoneme) _ret;
		Debug.OK(staticInstance.abi_GetWordsWithMonoRubyOption(hstring(input).handle, monoRuby, &_ret));
		return _ret;
	}
	alias GetWords = GetWordsWithMonoRubyOption;
}

interface Language : Windows.Globalization.ILanguage, Windows.Globalization.ILanguageExtensionSubtags
{
extern(Windows):
	final wstring LanguageTag()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ILanguage)this.asInterface(uuid("ea79a752-f7c2-4265-b1bd-c4dec4e4f080"))).get_LanguageTag(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ILanguage)this.asInterface(uuid("ea79a752-f7c2-4265-b1bd-c4dec4e4f080"))).get_DisplayName(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring NativeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ILanguage)this.asInterface(uuid("ea79a752-f7c2-4265-b1bd-c4dec4e4f080"))).get_NativeName(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Script()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.ILanguage)this.asInterface(uuid("ea79a752-f7c2-4265-b1bd-c4dec4e4f080"))).get_Script(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) GetExtensionSubtags(wstring singleton)
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Globalization.ILanguageExtensionSubtags)this.asInterface(uuid("7d7daf45-368d-4364-852b-dec927037b85"))).abi_GetExtensionSubtags(hstring(singleton).handle, &_ret));
		return _ret;
	}

	private static Windows.Globalization.ILanguageStatics _staticInstance;
	public static Windows.Globalization.ILanguageStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Globalization.ILanguageStatics);
		return _staticInstance;
	}
	static bool IsWellFormed(wstring languageTag)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsWellFormed(hstring(languageTag).handle, &_ret));
		return _ret;
	}
	static wstring CurrentInputMethodLanguageTag()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_CurrentInputMethodLanguageTag(&_ret));
		return hstring(_ret).d_str;
	}
	static Windows.Globalization.Language New(wstring languageTag)
	{
		auto factory = factory!(Windows.Globalization.ILanguageFactory);
		Windows.Globalization.Language _ret;
		Debug.OK((cast(Windows.Globalization.ILanguageFactory)factory.asInterface(uuid("9b0252ac-0c27-44f8-b792-9793fb66c63e"))).abi_CreateLanguage(hstring(languageTag).handle, &_ret));
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
	static wstring Arab()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Arab(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ArabExt()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ArabExt(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Bali()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Bali(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Beng()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Beng(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Cham()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Cham(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Deva()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Deva(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring FullWide()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_FullWide(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Gujr()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Gujr(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Guru()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Guru(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring HaniDec()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HaniDec(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Java()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Java(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Kali()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Kali(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Khmr()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Khmr(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Knda()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Knda(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Lana()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Lana(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring LanaTham()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_LanaTham(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Laoo()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Laoo(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Latn()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Latn(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Lepc()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Lepc(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Limb()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Limb(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Mlym()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Mlym(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Mong()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Mong(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Mtei()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Mtei(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Mymr()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Mymr(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring MymrShan()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_MymrShan(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Nkoo()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Nkoo(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Olck()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Olck(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Orya()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Orya(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Saur()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Saur(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Sund()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Sund(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Talu()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Talu(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring TamlDec()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TamlDec(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Telu()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Telu(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Thai()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Thai(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Tibt()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Tibt(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Vaii()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Vaii(&_ret));
		return hstring(_ret).d_str;
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