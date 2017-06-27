module Windows.Globalization.Fonts;

import dwinrt;

@uuid("b12e5c3a-b76d-459b-beeb-901151cd77d1")
@WinrtFactory("Windows.Globalization.Fonts.LanguageFont")
interface ILanguageFont : IInspectable
{
extern(Windows):
	HRESULT get_FontFamily(HSTRING* return_value);
	HRESULT get_FontWeight(Windows.UI.Text.FontWeight* return_weight);
	HRESULT get_FontStretch(Windows.UI.Text.FontStretch* return_stretch);
	HRESULT get_FontStyle(Windows.UI.Text.FontStyle* return_style);
	HRESULT get_ScaleFactor(double* return_scale);
}

@uuid("f33a7fc3-3a5c-4aea-b9ff-b39fb242f7f6")
@WinrtFactory("Windows.Globalization.Fonts.LanguageFontGroup")
interface ILanguageFontGroup : IInspectable
{
extern(Windows):
	HRESULT get_UITextFont(Windows.Globalization.Fonts.LanguageFont* return_value);
	HRESULT get_UIHeadingFont(Windows.Globalization.Fonts.LanguageFont* return_value);
	HRESULT get_UITitleFont(Windows.Globalization.Fonts.LanguageFont* return_value);
	HRESULT get_UICaptionFont(Windows.Globalization.Fonts.LanguageFont* return_value);
	HRESULT get_UINotificationHeadingFont(Windows.Globalization.Fonts.LanguageFont* return_value);
	HRESULT get_TraditionalDocumentFont(Windows.Globalization.Fonts.LanguageFont* return_value);
	HRESULT get_ModernDocumentFont(Windows.Globalization.Fonts.LanguageFont* return_value);
	HRESULT get_DocumentHeadingFont(Windows.Globalization.Fonts.LanguageFont* return_value);
	HRESULT get_FixedWidthTextFont(Windows.Globalization.Fonts.LanguageFont* return_value);
	HRESULT get_DocumentAlternate1Font(Windows.Globalization.Fonts.LanguageFont* return_value);
	HRESULT get_DocumentAlternate2Font(Windows.Globalization.Fonts.LanguageFont* return_value);
}

@uuid("fcaeac67-4e77-49c7-b856-dde934fc735b")
@WinrtFactory("Windows.Globalization.Fonts.LanguageFontGroup")
interface ILanguageFontGroupFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateLanguageFontGroup(HSTRING languageTag, Windows.Globalization.Fonts.LanguageFontGroup* return_recommendedFonts);
}

interface LanguageFont : Windows.Globalization.Fonts.ILanguageFont
{
extern(Windows):
	final HSTRING FontFamily()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFont)this.asInterface(uuid("b12e5c3a-b76d-459b-beeb-901151cd77d1"))).get_FontFamily(&_ret));
		return _ret;
	}
	final Windows.UI.Text.FontWeight FontWeight()
	{
		Windows.UI.Text.FontWeight _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFont)this.asInterface(uuid("b12e5c3a-b76d-459b-beeb-901151cd77d1"))).get_FontWeight(&_ret));
		return _ret;
	}
	final Windows.UI.Text.FontStretch FontStretch()
	{
		Windows.UI.Text.FontStretch _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFont)this.asInterface(uuid("b12e5c3a-b76d-459b-beeb-901151cd77d1"))).get_FontStretch(&_ret));
		return _ret;
	}
	final Windows.UI.Text.FontStyle FontStyle()
	{
		Windows.UI.Text.FontStyle _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFont)this.asInterface(uuid("b12e5c3a-b76d-459b-beeb-901151cd77d1"))).get_FontStyle(&_ret));
		return _ret;
	}
	final double ScaleFactor()
	{
		double _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFont)this.asInterface(uuid("b12e5c3a-b76d-459b-beeb-901151cd77d1"))).get_ScaleFactor(&_ret));
		return _ret;
	}
}

interface LanguageFontGroup : Windows.Globalization.Fonts.ILanguageFontGroup
{
extern(Windows):
	final Windows.Globalization.Fonts.LanguageFont UITextFont()
	{
		Windows.Globalization.Fonts.LanguageFont _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFontGroup)this.asInterface(uuid("f33a7fc3-3a5c-4aea-b9ff-b39fb242f7f6"))).get_UITextFont(&_ret));
		return _ret;
	}
	final Windows.Globalization.Fonts.LanguageFont UIHeadingFont()
	{
		Windows.Globalization.Fonts.LanguageFont _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFontGroup)this.asInterface(uuid("f33a7fc3-3a5c-4aea-b9ff-b39fb242f7f6"))).get_UIHeadingFont(&_ret));
		return _ret;
	}
	final Windows.Globalization.Fonts.LanguageFont UITitleFont()
	{
		Windows.Globalization.Fonts.LanguageFont _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFontGroup)this.asInterface(uuid("f33a7fc3-3a5c-4aea-b9ff-b39fb242f7f6"))).get_UITitleFont(&_ret));
		return _ret;
	}
	final Windows.Globalization.Fonts.LanguageFont UICaptionFont()
	{
		Windows.Globalization.Fonts.LanguageFont _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFontGroup)this.asInterface(uuid("f33a7fc3-3a5c-4aea-b9ff-b39fb242f7f6"))).get_UICaptionFont(&_ret));
		return _ret;
	}
	final Windows.Globalization.Fonts.LanguageFont UINotificationHeadingFont()
	{
		Windows.Globalization.Fonts.LanguageFont _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFontGroup)this.asInterface(uuid("f33a7fc3-3a5c-4aea-b9ff-b39fb242f7f6"))).get_UINotificationHeadingFont(&_ret));
		return _ret;
	}
	final Windows.Globalization.Fonts.LanguageFont TraditionalDocumentFont()
	{
		Windows.Globalization.Fonts.LanguageFont _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFontGroup)this.asInterface(uuid("f33a7fc3-3a5c-4aea-b9ff-b39fb242f7f6"))).get_TraditionalDocumentFont(&_ret));
		return _ret;
	}
	final Windows.Globalization.Fonts.LanguageFont ModernDocumentFont()
	{
		Windows.Globalization.Fonts.LanguageFont _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFontGroup)this.asInterface(uuid("f33a7fc3-3a5c-4aea-b9ff-b39fb242f7f6"))).get_ModernDocumentFont(&_ret));
		return _ret;
	}
	final Windows.Globalization.Fonts.LanguageFont DocumentHeadingFont()
	{
		Windows.Globalization.Fonts.LanguageFont _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFontGroup)this.asInterface(uuid("f33a7fc3-3a5c-4aea-b9ff-b39fb242f7f6"))).get_DocumentHeadingFont(&_ret));
		return _ret;
	}
	final Windows.Globalization.Fonts.LanguageFont FixedWidthTextFont()
	{
		Windows.Globalization.Fonts.LanguageFont _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFontGroup)this.asInterface(uuid("f33a7fc3-3a5c-4aea-b9ff-b39fb242f7f6"))).get_FixedWidthTextFont(&_ret));
		return _ret;
	}
	final Windows.Globalization.Fonts.LanguageFont DocumentAlternate1Font()
	{
		Windows.Globalization.Fonts.LanguageFont _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFontGroup)this.asInterface(uuid("f33a7fc3-3a5c-4aea-b9ff-b39fb242f7f6"))).get_DocumentAlternate1Font(&_ret));
		return _ret;
	}
	final Windows.Globalization.Fonts.LanguageFont DocumentAlternate2Font()
	{
		Windows.Globalization.Fonts.LanguageFont _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFontGroup)this.asInterface(uuid("f33a7fc3-3a5c-4aea-b9ff-b39fb242f7f6"))).get_DocumentAlternate2Font(&_ret));
		return _ret;
	}
	static Windows.Globalization.Fonts.LanguageFontGroup New(HSTRING languageTag)
	{
		auto factory = factory!(Windows.Globalization.Fonts.ILanguageFontGroupFactory);
		Windows.Globalization.Fonts.LanguageFontGroup _ret;
		Debug.OK((cast(Windows.Globalization.Fonts.ILanguageFontGroupFactory)factory.asInterface(uuid("fcaeac67-4e77-49c7-b856-dde934fc735b"))).abi_CreateLanguageFontGroup(languageTag, &_ret));
		return _ret;
	}
}