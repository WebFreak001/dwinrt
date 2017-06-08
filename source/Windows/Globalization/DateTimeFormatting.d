module Windows.Globalization.DateTimeFormatting;

import dwinrt;

@uuid("95eeca10-73e0-4e4b-a183-3d6ad0ba35ec")
@WinrtFactory("Windows.Globalization.DateTimeFormatting.DateTimeFormatter")
interface IDateTimeFormatter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Languages(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_GeographicRegion(HSTRING* return_value);
	HRESULT get_Calendar(HSTRING* return_value);
	HRESULT get_Clock(HSTRING* return_value);
	HRESULT get_NumeralSystem(HSTRING* return_value);
	HRESULT set_NumeralSystem(HSTRING value);
	HRESULT get_Patterns(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_Template(HSTRING* return_value);
	HRESULT abi_Format(Windows.Foundation.DateTime value, HSTRING* return_result);
	HRESULT get_IncludeYear(Windows.Globalization.DateTimeFormatting.YearFormat* return_value);
	HRESULT get_IncludeMonth(Windows.Globalization.DateTimeFormatting.MonthFormat* return_value);
	HRESULT get_IncludeDayOfWeek(Windows.Globalization.DateTimeFormatting.DayOfWeekFormat* return_value);
	HRESULT get_IncludeDay(Windows.Globalization.DateTimeFormatting.DayFormat* return_value);
	HRESULT get_IncludeHour(Windows.Globalization.DateTimeFormatting.HourFormat* return_value);
	HRESULT get_IncludeMinute(Windows.Globalization.DateTimeFormatting.MinuteFormat* return_value);
	HRESULT get_IncludeSecond(Windows.Globalization.DateTimeFormatting.SecondFormat* return_value);
	HRESULT get_ResolvedLanguage(HSTRING* return_value);
	HRESULT get_ResolvedGeographicRegion(HSTRING* return_value);
}

@uuid("27c91a86-bdaa-4fd0-9e36-671d5aa5ee03")
@WinrtFactory("Windows.Globalization.DateTimeFormatting.DateTimeFormatter")
interface IDateTimeFormatter2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FormatUsingTimeZone(Windows.Foundation.DateTime datetime, HSTRING timeZoneId, HSTRING* return_result);
}

@uuid("ec8d8a53-1a2e-412d-8815-3b745fb1a2a0")
@WinrtFactory("Windows.Globalization.DateTimeFormatting.DateTimeFormatter")
interface IDateTimeFormatterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateDateTimeFormatter(HSTRING formatTemplate, Windows.Globalization.DateTimeFormatting.DateTimeFormatter* return_result);
	HRESULT abi_CreateDateTimeFormatterLanguages(HSTRING formatTemplate, Windows.Foundation.Collections.IIterable!(HSTRING) languages, Windows.Globalization.DateTimeFormatting.DateTimeFormatter* return_result);
	HRESULT abi_CreateDateTimeFormatterContext(HSTRING formatTemplate, Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING geographicRegion, HSTRING calendar, HSTRING clock, Windows.Globalization.DateTimeFormatting.DateTimeFormatter* return_result);
	HRESULT abi_CreateDateTimeFormatterDate(Windows.Globalization.DateTimeFormatting.YearFormat yearFormat, Windows.Globalization.DateTimeFormatting.MonthFormat monthFormat, Windows.Globalization.DateTimeFormatting.DayFormat dayFormat, Windows.Globalization.DateTimeFormatting.DayOfWeekFormat dayOfWeekFormat, Windows.Globalization.DateTimeFormatting.DateTimeFormatter* return_result);
	HRESULT abi_CreateDateTimeFormatterTime(Windows.Globalization.DateTimeFormatting.HourFormat hourFormat, Windows.Globalization.DateTimeFormatting.MinuteFormat minuteFormat, Windows.Globalization.DateTimeFormatting.SecondFormat secondFormat, Windows.Globalization.DateTimeFormatting.DateTimeFormatter* return_result);
	HRESULT abi_CreateDateTimeFormatterDateTimeLanguages(Windows.Globalization.DateTimeFormatting.YearFormat yearFormat, Windows.Globalization.DateTimeFormatting.MonthFormat monthFormat, Windows.Globalization.DateTimeFormatting.DayFormat dayFormat, Windows.Globalization.DateTimeFormatting.DayOfWeekFormat dayOfWeekFormat, Windows.Globalization.DateTimeFormatting.HourFormat hourFormat, Windows.Globalization.DateTimeFormatting.MinuteFormat minuteFormat, Windows.Globalization.DateTimeFormatting.SecondFormat secondFormat, Windows.Foundation.Collections.IIterable!(HSTRING) languages, Windows.Globalization.DateTimeFormatting.DateTimeFormatter* return_result);
	HRESULT abi_CreateDateTimeFormatterDateTimeContext(Windows.Globalization.DateTimeFormatting.YearFormat yearFormat, Windows.Globalization.DateTimeFormatting.MonthFormat monthFormat, Windows.Globalization.DateTimeFormatting.DayFormat dayFormat, Windows.Globalization.DateTimeFormatting.DayOfWeekFormat dayOfWeekFormat, Windows.Globalization.DateTimeFormatting.HourFormat hourFormat, Windows.Globalization.DateTimeFormatting.MinuteFormat minuteFormat, Windows.Globalization.DateTimeFormatting.SecondFormat secondFormat, Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING geographicRegion, HSTRING calendar, HSTRING clock, Windows.Globalization.DateTimeFormatting.DateTimeFormatter* return_result);
}

@uuid("bfcde7c0-df4c-4a2e-9012-f47daf3f1212")
@WinrtFactory("Windows.Globalization.DateTimeFormatting.DateTimeFormatter")
interface IDateTimeFormatterStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LongDate(Windows.Globalization.DateTimeFormatting.DateTimeFormatter* return_value);
	HRESULT get_LongTime(Windows.Globalization.DateTimeFormatting.DateTimeFormatter* return_value);
	HRESULT get_ShortDate(Windows.Globalization.DateTimeFormatting.DateTimeFormatter* return_value);
	HRESULT get_ShortTime(Windows.Globalization.DateTimeFormatting.DateTimeFormatter* return_value);
}

interface DateTimeFormatter
{
}

enum DayFormat
{
	None = 0,
	Default = 1
}

enum DayOfWeekFormat
{
	None = 0,
	Default = 1,
	Abbreviated = 2,
	Full = 3
}

enum HourFormat
{
	None = 0,
	Default = 1
}

enum MinuteFormat
{
	None = 0,
	Default = 1
}

enum MonthFormat
{
	None = 0,
	Default = 1,
	Abbreviated = 2,
	Full = 3,
	Numeric = 4
}

enum SecondFormat
{
	None = 0,
	Default = 1
}

enum YearFormat
{
	None = 0,
	Default = 1,
	Abbreviated = 2,
	Full = 3
}