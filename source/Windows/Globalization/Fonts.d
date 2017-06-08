module Windows.Globalization.Fonts;

import dwinrt;

@uuid("b12e5c3a-b76d-459b-beeb-901151cd77d1")
@WinrtFactory("Windows.Globalization.Fonts.LanguageFont")
interface ILanguageFont : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateLanguageFontGroup(HSTRING languageTag, Windows.Globalization.Fonts.LanguageFontGroup* return_recommendedFonts);
}

interface LanguageFont
{
}

interface LanguageFontGroup
{
}