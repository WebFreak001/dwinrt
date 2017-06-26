module Windows.Globalization.DateTimeFormatting;

import dwinrt;

@uuid("95eeca10-73e0-4e4b-a183-3d6ad0ba35ec")
@WinrtFactory("Windows.Globalization.DateTimeFormatting.DateTimeFormatter")
interface IDateTimeFormatter : IInspectable
{
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
extern(Windows):
	HRESULT abi_FormatUsingTimeZone(Windows.Foundation.DateTime datetime, HSTRING timeZoneId, HSTRING* return_result);
}

@uuid("ec8d8a53-1a2e-412d-8815-3b745fb1a2a0")
@WinrtFactory("Windows.Globalization.DateTimeFormatting.DateTimeFormatter")
interface IDateTimeFormatterFactory : IInspectable
{
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
extern(Windows):
	HRESULT get_LongDate(Windows.Globalization.DateTimeFormatting.DateTimeFormatter* return_value);
	HRESULT get_LongTime(Windows.Globalization.DateTimeFormatting.DateTimeFormatter* return_value);
	HRESULT get_ShortDate(Windows.Globalization.DateTimeFormatting.DateTimeFormatter* return_value);
	HRESULT get_ShortTime(Windows.Globalization.DateTimeFormatting.DateTimeFormatter* return_value);
}

interface DateTimeFormatter : Windows.Globalization.DateTimeFormatting.IDateTimeFormatter, Windows.Globalization.DateTimeFormatting.IDateTimeFormatter2
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Languages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).get_Languages(&_ret));
		return _ret;
	}
	final HSTRING GeographicRegion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).get_GeographicRegion(&_ret));
		return _ret;
	}
	final HSTRING Calendar()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).get_Calendar(&_ret));
		return _ret;
	}
	final HSTRING Clock()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).get_Clock(&_ret));
		return _ret;
	}
	final HSTRING NumeralSystem()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).get_NumeralSystem(&_ret));
		return _ret;
	}
	final void NumeralSystem(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).set_NumeralSystem(value));
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Patterns()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).get_Patterns(&_ret));
		return _ret;
	}
	final HSTRING Template()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).get_Template(&_ret));
		return _ret;
	}
	final HSTRING Format(Windows.Foundation.DateTime value)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).abi_Format(value, &_ret));
		return _ret;
	}
	final Windows.Globalization.DateTimeFormatting.YearFormat IncludeYear()
	{
		Windows.Globalization.DateTimeFormatting.YearFormat _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).get_IncludeYear(&_ret));
		return _ret;
	}
	final Windows.Globalization.DateTimeFormatting.MonthFormat IncludeMonth()
	{
		Windows.Globalization.DateTimeFormatting.MonthFormat _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).get_IncludeMonth(&_ret));
		return _ret;
	}
	final Windows.Globalization.DateTimeFormatting.DayOfWeekFormat IncludeDayOfWeek()
	{
		Windows.Globalization.DateTimeFormatting.DayOfWeekFormat _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).get_IncludeDayOfWeek(&_ret));
		return _ret;
	}
	final Windows.Globalization.DateTimeFormatting.DayFormat IncludeDay()
	{
		Windows.Globalization.DateTimeFormatting.DayFormat _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).get_IncludeDay(&_ret));
		return _ret;
	}
	final Windows.Globalization.DateTimeFormatting.HourFormat IncludeHour()
	{
		Windows.Globalization.DateTimeFormatting.HourFormat _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).get_IncludeHour(&_ret));
		return _ret;
	}
	final Windows.Globalization.DateTimeFormatting.MinuteFormat IncludeMinute()
	{
		Windows.Globalization.DateTimeFormatting.MinuteFormat _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).get_IncludeMinute(&_ret));
		return _ret;
	}
	final Windows.Globalization.DateTimeFormatting.SecondFormat IncludeSecond()
	{
		Windows.Globalization.DateTimeFormatting.SecondFormat _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).get_IncludeSecond(&_ret));
		return _ret;
	}
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final HSTRING ResolvedGeographicRegion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter).get_ResolvedGeographicRegion(&_ret));
		return _ret;
	}
	final HSTRING FormatUsingTimeZone(Windows.Foundation.DateTime datetime, HSTRING timeZoneId)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatter2).abi_FormatUsingTimeZone(datetime, timeZoneId, &_ret));
		return _ret;
	}

	private static Windows.Globalization.DateTimeFormatting.IDateTimeFormatterStatics _staticInstance;
	public static Windows.Globalization.DateTimeFormatting.IDateTimeFormatterStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterStatics);
		return _staticInstance;
	}
	static Windows.Globalization.DateTimeFormatting.DateTimeFormatter LongDate()
	{
		Windows.Globalization.DateTimeFormatting.DateTimeFormatter _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterStatics).get_LongDate(&_ret));
		return _ret;
	}
	static Windows.Globalization.DateTimeFormatting.DateTimeFormatter LongTime()
	{
		Windows.Globalization.DateTimeFormatting.DateTimeFormatter _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterStatics).get_LongTime(&_ret));
		return _ret;
	}
	static Windows.Globalization.DateTimeFormatting.DateTimeFormatter ShortDate()
	{
		Windows.Globalization.DateTimeFormatting.DateTimeFormatter _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterStatics).get_ShortDate(&_ret));
		return _ret;
	}
	static Windows.Globalization.DateTimeFormatting.DateTimeFormatter ShortTime()
	{
		Windows.Globalization.DateTimeFormatting.DateTimeFormatter _ret;
		Debug.OK(staticInstance.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterStatics).get_ShortTime(&_ret));
		return _ret;
	}
	static Windows.Globalization.DateTimeFormatting.DateTimeFormatter New(HSTRING formatTemplate)
	{
		auto factory = factory!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterFactory);
		Windows.Globalization.DateTimeFormatting.DateTimeFormatter _ret;
		Debug.OK(factory.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterFactory).abi_CreateDateTimeFormatter(formatTemplate, &_ret));
		return _ret;
	}
	static Windows.Globalization.DateTimeFormatting.DateTimeFormatter New(HSTRING formatTemplate, Windows.Foundation.Collections.IIterable!(HSTRING) languages)
	{
		auto factory = factory!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterFactory);
		Windows.Globalization.DateTimeFormatting.DateTimeFormatter _ret;
		Debug.OK(factory.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterFactory).abi_CreateDateTimeFormatterLanguages(formatTemplate, languages, &_ret));
		return _ret;
	}
	static Windows.Globalization.DateTimeFormatting.DateTimeFormatter New(HSTRING formatTemplate, Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING geographicRegion, HSTRING calendar, HSTRING clock)
	{
		auto factory = factory!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterFactory);
		Windows.Globalization.DateTimeFormatting.DateTimeFormatter _ret;
		Debug.OK(factory.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterFactory).abi_CreateDateTimeFormatterContext(formatTemplate, languages, geographicRegion, calendar, clock, &_ret));
		return _ret;
	}
	static Windows.Globalization.DateTimeFormatting.DateTimeFormatter New(Windows.Globalization.DateTimeFormatting.YearFormat yearFormat, Windows.Globalization.DateTimeFormatting.MonthFormat monthFormat, Windows.Globalization.DateTimeFormatting.DayFormat dayFormat, Windows.Globalization.DateTimeFormatting.DayOfWeekFormat dayOfWeekFormat)
	{
		auto factory = factory!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterFactory);
		Windows.Globalization.DateTimeFormatting.DateTimeFormatter _ret;
		Debug.OK(factory.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterFactory).abi_CreateDateTimeFormatterDate(yearFormat, monthFormat, dayFormat, dayOfWeekFormat, &_ret));
		return _ret;
	}
	static Windows.Globalization.DateTimeFormatting.DateTimeFormatter New(Windows.Globalization.DateTimeFormatting.HourFormat hourFormat, Windows.Globalization.DateTimeFormatting.MinuteFormat minuteFormat, Windows.Globalization.DateTimeFormatting.SecondFormat secondFormat)
	{
		auto factory = factory!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterFactory);
		Windows.Globalization.DateTimeFormatting.DateTimeFormatter _ret;
		Debug.OK(factory.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterFactory).abi_CreateDateTimeFormatterTime(hourFormat, minuteFormat, secondFormat, &_ret));
		return _ret;
	}
	static Windows.Globalization.DateTimeFormatting.DateTimeFormatter New(Windows.Globalization.DateTimeFormatting.YearFormat yearFormat, Windows.Globalization.DateTimeFormatting.MonthFormat monthFormat, Windows.Globalization.DateTimeFormatting.DayFormat dayFormat, Windows.Globalization.DateTimeFormatting.DayOfWeekFormat dayOfWeekFormat, Windows.Globalization.DateTimeFormatting.HourFormat hourFormat, Windows.Globalization.DateTimeFormatting.MinuteFormat minuteFormat, Windows.Globalization.DateTimeFormatting.SecondFormat secondFormat, Windows.Foundation.Collections.IIterable!(HSTRING) languages)
	{
		auto factory = factory!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterFactory);
		Windows.Globalization.DateTimeFormatting.DateTimeFormatter _ret;
		Debug.OK(factory.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterFactory).abi_CreateDateTimeFormatterDateTimeLanguages(yearFormat, monthFormat, dayFormat, dayOfWeekFormat, hourFormat, minuteFormat, secondFormat, languages, &_ret));
		return _ret;
	}
	static Windows.Globalization.DateTimeFormatting.DateTimeFormatter New(Windows.Globalization.DateTimeFormatting.YearFormat yearFormat, Windows.Globalization.DateTimeFormatting.MonthFormat monthFormat, Windows.Globalization.DateTimeFormatting.DayFormat dayFormat, Windows.Globalization.DateTimeFormatting.DayOfWeekFormat dayOfWeekFormat, Windows.Globalization.DateTimeFormatting.HourFormat hourFormat, Windows.Globalization.DateTimeFormatting.MinuteFormat minuteFormat, Windows.Globalization.DateTimeFormatting.SecondFormat secondFormat, Windows.Foundation.Collections.IIterable!(HSTRING) languages, HSTRING geographicRegion, HSTRING calendar, HSTRING clock)
	{
		auto factory = factory!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterFactory);
		Windows.Globalization.DateTimeFormatting.DateTimeFormatter _ret;
		Debug.OK(factory.as!(Windows.Globalization.DateTimeFormatting.IDateTimeFormatterFactory).abi_CreateDateTimeFormatterDateTimeContext(yearFormat, monthFormat, dayFormat, dayOfWeekFormat, hourFormat, minuteFormat, secondFormat, languages, geographicRegion, calendar, clock, &_ret));
		return _ret;
	}
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