module Windows.UI;

import dwinrt;

struct Color
{
	BYTE A;
	BYTE R;
	BYTE G;
	BYTE B;
}

@uuid("8504dbea-fb6a-4144-a6c2-33499c9284f5")
@WinrtFactory("Windows.UI.ColorHelper")
interface IColorHelperStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromArgb(BYTE a, BYTE r, BYTE g, BYTE b, Windows.UI.Color* return_returnValue);
}

@uuid("24d9af02-6eb0-4b94-855c-fcf0818d9a16")
@WinrtFactory("Windows.UI.ColorHelper")
interface IColorHelperStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ToDisplayName(Windows.UI.Color color, HSTRING* return_returnValue);
}

@uuid("cff52e04-cca6-4614-a17e-754910c84a99")
@WinrtFactory("Windows.UI.Colors")
interface IColorsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AliceBlue(Windows.UI.Color* return_value);
	HRESULT get_AntiqueWhite(Windows.UI.Color* return_value);
	HRESULT get_Aqua(Windows.UI.Color* return_value);
	HRESULT get_Aquamarine(Windows.UI.Color* return_value);
	HRESULT get_Azure(Windows.UI.Color* return_value);
	HRESULT get_Beige(Windows.UI.Color* return_value);
	HRESULT get_Bisque(Windows.UI.Color* return_value);
	HRESULT get_Black(Windows.UI.Color* return_value);
	HRESULT get_BlanchedAlmond(Windows.UI.Color* return_value);
	HRESULT get_Blue(Windows.UI.Color* return_value);
	HRESULT get_BlueViolet(Windows.UI.Color* return_value);
	HRESULT get_Brown(Windows.UI.Color* return_value);
	HRESULT get_BurlyWood(Windows.UI.Color* return_value);
	HRESULT get_CadetBlue(Windows.UI.Color* return_value);
	HRESULT get_Chartreuse(Windows.UI.Color* return_value);
	HRESULT get_Chocolate(Windows.UI.Color* return_value);
	HRESULT get_Coral(Windows.UI.Color* return_value);
	HRESULT get_CornflowerBlue(Windows.UI.Color* return_value);
	HRESULT get_Cornsilk(Windows.UI.Color* return_value);
	HRESULT get_Crimson(Windows.UI.Color* return_value);
	HRESULT get_Cyan(Windows.UI.Color* return_value);
	HRESULT get_DarkBlue(Windows.UI.Color* return_value);
	HRESULT get_DarkCyan(Windows.UI.Color* return_value);
	HRESULT get_DarkGoldenrod(Windows.UI.Color* return_value);
	HRESULT get_DarkGray(Windows.UI.Color* return_value);
	HRESULT get_DarkGreen(Windows.UI.Color* return_value);
	HRESULT get_DarkKhaki(Windows.UI.Color* return_value);
	HRESULT get_DarkMagenta(Windows.UI.Color* return_value);
	HRESULT get_DarkOliveGreen(Windows.UI.Color* return_value);
	HRESULT get_DarkOrange(Windows.UI.Color* return_value);
	HRESULT get_DarkOrchid(Windows.UI.Color* return_value);
	HRESULT get_DarkRed(Windows.UI.Color* return_value);
	HRESULT get_DarkSalmon(Windows.UI.Color* return_value);
	HRESULT get_DarkSeaGreen(Windows.UI.Color* return_value);
	HRESULT get_DarkSlateBlue(Windows.UI.Color* return_value);
	HRESULT get_DarkSlateGray(Windows.UI.Color* return_value);
	HRESULT get_DarkTurquoise(Windows.UI.Color* return_value);
	HRESULT get_DarkViolet(Windows.UI.Color* return_value);
	HRESULT get_DeepPink(Windows.UI.Color* return_value);
	HRESULT get_DeepSkyBlue(Windows.UI.Color* return_value);
	HRESULT get_DimGray(Windows.UI.Color* return_value);
	HRESULT get_DodgerBlue(Windows.UI.Color* return_value);
	HRESULT get_Firebrick(Windows.UI.Color* return_value);
	HRESULT get_FloralWhite(Windows.UI.Color* return_value);
	HRESULT get_ForestGreen(Windows.UI.Color* return_value);
	HRESULT get_Fuchsia(Windows.UI.Color* return_value);
	HRESULT get_Gainsboro(Windows.UI.Color* return_value);
	HRESULT get_GhostWhite(Windows.UI.Color* return_value);
	HRESULT get_Gold(Windows.UI.Color* return_value);
	HRESULT get_Goldenrod(Windows.UI.Color* return_value);
	HRESULT get_Gray(Windows.UI.Color* return_value);
	HRESULT get_Green(Windows.UI.Color* return_value);
	HRESULT get_GreenYellow(Windows.UI.Color* return_value);
	HRESULT get_Honeydew(Windows.UI.Color* return_value);
	HRESULT get_HotPink(Windows.UI.Color* return_value);
	HRESULT get_IndianRed(Windows.UI.Color* return_value);
	HRESULT get_Indigo(Windows.UI.Color* return_value);
	HRESULT get_Ivory(Windows.UI.Color* return_value);
	HRESULT get_Khaki(Windows.UI.Color* return_value);
	HRESULT get_Lavender(Windows.UI.Color* return_value);
	HRESULT get_LavenderBlush(Windows.UI.Color* return_value);
	HRESULT get_LawnGreen(Windows.UI.Color* return_value);
	HRESULT get_LemonChiffon(Windows.UI.Color* return_value);
	HRESULT get_LightBlue(Windows.UI.Color* return_value);
	HRESULT get_LightCoral(Windows.UI.Color* return_value);
	HRESULT get_LightCyan(Windows.UI.Color* return_value);
	HRESULT get_LightGoldenrodYellow(Windows.UI.Color* return_value);
	HRESULT get_LightGreen(Windows.UI.Color* return_value);
	HRESULT get_LightGray(Windows.UI.Color* return_value);
	HRESULT get_LightPink(Windows.UI.Color* return_value);
	HRESULT get_LightSalmon(Windows.UI.Color* return_value);
	HRESULT get_LightSeaGreen(Windows.UI.Color* return_value);
	HRESULT get_LightSkyBlue(Windows.UI.Color* return_value);
	HRESULT get_LightSlateGray(Windows.UI.Color* return_value);
	HRESULT get_LightSteelBlue(Windows.UI.Color* return_value);
	HRESULT get_LightYellow(Windows.UI.Color* return_value);
	HRESULT get_Lime(Windows.UI.Color* return_value);
	HRESULT get_LimeGreen(Windows.UI.Color* return_value);
	HRESULT get_Linen(Windows.UI.Color* return_value);
	HRESULT get_Magenta(Windows.UI.Color* return_value);
	HRESULT get_Maroon(Windows.UI.Color* return_value);
	HRESULT get_MediumAquamarine(Windows.UI.Color* return_value);
	HRESULT get_MediumBlue(Windows.UI.Color* return_value);
	HRESULT get_MediumOrchid(Windows.UI.Color* return_value);
	HRESULT get_MediumPurple(Windows.UI.Color* return_value);
	HRESULT get_MediumSeaGreen(Windows.UI.Color* return_value);
	HRESULT get_MediumSlateBlue(Windows.UI.Color* return_value);
	HRESULT get_MediumSpringGreen(Windows.UI.Color* return_value);
	HRESULT get_MediumTurquoise(Windows.UI.Color* return_value);
	HRESULT get_MediumVioletRed(Windows.UI.Color* return_value);
	HRESULT get_MidnightBlue(Windows.UI.Color* return_value);
	HRESULT get_MintCream(Windows.UI.Color* return_value);
	HRESULT get_MistyRose(Windows.UI.Color* return_value);
	HRESULT get_Moccasin(Windows.UI.Color* return_value);
	HRESULT get_NavajoWhite(Windows.UI.Color* return_value);
	HRESULT get_Navy(Windows.UI.Color* return_value);
	HRESULT get_OldLace(Windows.UI.Color* return_value);
	HRESULT get_Olive(Windows.UI.Color* return_value);
	HRESULT get_OliveDrab(Windows.UI.Color* return_value);
	HRESULT get_Orange(Windows.UI.Color* return_value);
	HRESULT get_OrangeRed(Windows.UI.Color* return_value);
	HRESULT get_Orchid(Windows.UI.Color* return_value);
	HRESULT get_PaleGoldenrod(Windows.UI.Color* return_value);
	HRESULT get_PaleGreen(Windows.UI.Color* return_value);
	HRESULT get_PaleTurquoise(Windows.UI.Color* return_value);
	HRESULT get_PaleVioletRed(Windows.UI.Color* return_value);
	HRESULT get_PapayaWhip(Windows.UI.Color* return_value);
	HRESULT get_PeachPuff(Windows.UI.Color* return_value);
	HRESULT get_Peru(Windows.UI.Color* return_value);
	HRESULT get_Pink(Windows.UI.Color* return_value);
	HRESULT get_Plum(Windows.UI.Color* return_value);
	HRESULT get_PowderBlue(Windows.UI.Color* return_value);
	HRESULT get_Purple(Windows.UI.Color* return_value);
	HRESULT get_Red(Windows.UI.Color* return_value);
	HRESULT get_RosyBrown(Windows.UI.Color* return_value);
	HRESULT get_RoyalBlue(Windows.UI.Color* return_value);
	HRESULT get_SaddleBrown(Windows.UI.Color* return_value);
	HRESULT get_Salmon(Windows.UI.Color* return_value);
	HRESULT get_SandyBrown(Windows.UI.Color* return_value);
	HRESULT get_SeaGreen(Windows.UI.Color* return_value);
	HRESULT get_SeaShell(Windows.UI.Color* return_value);
	HRESULT get_Sienna(Windows.UI.Color* return_value);
	HRESULT get_Silver(Windows.UI.Color* return_value);
	HRESULT get_SkyBlue(Windows.UI.Color* return_value);
	HRESULT get_SlateBlue(Windows.UI.Color* return_value);
	HRESULT get_SlateGray(Windows.UI.Color* return_value);
	HRESULT get_Snow(Windows.UI.Color* return_value);
	HRESULT get_SpringGreen(Windows.UI.Color* return_value);
	HRESULT get_SteelBlue(Windows.UI.Color* return_value);
	HRESULT get_Tan(Windows.UI.Color* return_value);
	HRESULT get_Teal(Windows.UI.Color* return_value);
	HRESULT get_Thistle(Windows.UI.Color* return_value);
	HRESULT get_Tomato(Windows.UI.Color* return_value);
	HRESULT get_Transparent(Windows.UI.Color* return_value);
	HRESULT get_Turquoise(Windows.UI.Color* return_value);
	HRESULT get_Violet(Windows.UI.Color* return_value);
	HRESULT get_Wheat(Windows.UI.Color* return_value);
	HRESULT get_White(Windows.UI.Color* return_value);
	HRESULT get_WhiteSmoke(Windows.UI.Color* return_value);
	HRESULT get_Yellow(Windows.UI.Color* return_value);
	HRESULT get_YellowGreen(Windows.UI.Color* return_value);
}

interface ColorHelper
{
}

interface Colors
{
}