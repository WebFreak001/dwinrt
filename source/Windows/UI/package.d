module Windows.UI;

import dwinrt;

struct Color
{
	ubyte A;
	ubyte R;
	ubyte G;
	ubyte B;
}

@uuid("193cfbe7-65c7-4540-ad08-6283ba76879a")
@WinrtFactory("Windows.UI.ColorHelper")
interface IColorHelper : IInspectable
{
}

@uuid("8504dbea-fb6a-4144-a6c2-33499c9284f5")
@WinrtFactory("Windows.UI.ColorHelper")
interface IColorHelperStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromArgb(ubyte a, ubyte r, ubyte g, ubyte b, Windows.UI.Color* return_returnValue);
}

@uuid("24d9af02-6eb0-4b94-855c-fcf0818d9a16")
@WinrtFactory("Windows.UI.ColorHelper")
interface IColorHelperStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_ToDisplayName(Windows.UI.Color color, HSTRING* return_returnValue);
}

@uuid("9b8c9326-4ca6-4ce5-8994-9eff65cabdcc")
@WinrtFactory("Windows.UI.Colors")
interface IColors : IInspectable
{
}

@uuid("cff52e04-cca6-4614-a17e-754910c84a99")
@WinrtFactory("Windows.UI.Colors")
interface IColorsStatics : IInspectable
{
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

interface ColorHelper : Windows.UI.IColorHelper
{
	private static Windows.UI.IColorHelperStatics _staticInstance;
	public static Windows.UI.IColorHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.IColorHelperStatics);
		return _staticInstance;
	}
	static Windows.UI.Color FromArgb(ubyte a, ubyte r, ubyte g, ubyte b)
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.abi_FromArgb(a, r, g, b, &_ret));
		return _ret;
	}
}

interface Colors : Windows.UI.IColors
{
	private static Windows.UI.IColorsStatics _staticInstance;
	public static Windows.UI.IColorsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.IColorsStatics);
		return _staticInstance;
	}
	static Windows.UI.Color AliceBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_AliceBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color AntiqueWhite()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_AntiqueWhite(&_ret));
		return _ret;
	}
	static Windows.UI.Color Aqua()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Aqua(&_ret));
		return _ret;
	}
	static Windows.UI.Color Aquamarine()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Aquamarine(&_ret));
		return _ret;
	}
	static Windows.UI.Color Azure()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Azure(&_ret));
		return _ret;
	}
	static Windows.UI.Color Beige()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Beige(&_ret));
		return _ret;
	}
	static Windows.UI.Color Bisque()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Bisque(&_ret));
		return _ret;
	}
	static Windows.UI.Color Black()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Black(&_ret));
		return _ret;
	}
	static Windows.UI.Color BlanchedAlmond()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_BlanchedAlmond(&_ret));
		return _ret;
	}
	static Windows.UI.Color Blue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Blue(&_ret));
		return _ret;
	}
	static Windows.UI.Color BlueViolet()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_BlueViolet(&_ret));
		return _ret;
	}
	static Windows.UI.Color Brown()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Brown(&_ret));
		return _ret;
	}
	static Windows.UI.Color BurlyWood()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_BurlyWood(&_ret));
		return _ret;
	}
	static Windows.UI.Color CadetBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_CadetBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color Chartreuse()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Chartreuse(&_ret));
		return _ret;
	}
	static Windows.UI.Color Chocolate()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Chocolate(&_ret));
		return _ret;
	}
	static Windows.UI.Color Coral()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Coral(&_ret));
		return _ret;
	}
	static Windows.UI.Color CornflowerBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_CornflowerBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color Cornsilk()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Cornsilk(&_ret));
		return _ret;
	}
	static Windows.UI.Color Crimson()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Crimson(&_ret));
		return _ret;
	}
	static Windows.UI.Color Cyan()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Cyan(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkCyan()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkCyan(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkGoldenrod()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkGoldenrod(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkGray()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkGray(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkGreen()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkGreen(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkKhaki()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkKhaki(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkMagenta()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkMagenta(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkOliveGreen()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkOliveGreen(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkOrange()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkOrange(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkOrchid()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkOrchid(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkRed()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkRed(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkSalmon()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkSalmon(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkSeaGreen()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkSeaGreen(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkSlateBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkSlateBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkSlateGray()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkSlateGray(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkTurquoise()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkTurquoise(&_ret));
		return _ret;
	}
	static Windows.UI.Color DarkViolet()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DarkViolet(&_ret));
		return _ret;
	}
	static Windows.UI.Color DeepPink()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DeepPink(&_ret));
		return _ret;
	}
	static Windows.UI.Color DeepSkyBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DeepSkyBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color DimGray()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DimGray(&_ret));
		return _ret;
	}
	static Windows.UI.Color DodgerBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_DodgerBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color Firebrick()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Firebrick(&_ret));
		return _ret;
	}
	static Windows.UI.Color FloralWhite()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_FloralWhite(&_ret));
		return _ret;
	}
	static Windows.UI.Color ForestGreen()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_ForestGreen(&_ret));
		return _ret;
	}
	static Windows.UI.Color Fuchsia()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Fuchsia(&_ret));
		return _ret;
	}
	static Windows.UI.Color Gainsboro()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Gainsboro(&_ret));
		return _ret;
	}
	static Windows.UI.Color GhostWhite()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_GhostWhite(&_ret));
		return _ret;
	}
	static Windows.UI.Color Gold()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Gold(&_ret));
		return _ret;
	}
	static Windows.UI.Color Goldenrod()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Goldenrod(&_ret));
		return _ret;
	}
	static Windows.UI.Color Gray()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Gray(&_ret));
		return _ret;
	}
	static Windows.UI.Color Green()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Green(&_ret));
		return _ret;
	}
	static Windows.UI.Color GreenYellow()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_GreenYellow(&_ret));
		return _ret;
	}
	static Windows.UI.Color Honeydew()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Honeydew(&_ret));
		return _ret;
	}
	static Windows.UI.Color HotPink()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_HotPink(&_ret));
		return _ret;
	}
	static Windows.UI.Color IndianRed()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_IndianRed(&_ret));
		return _ret;
	}
	static Windows.UI.Color Indigo()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Indigo(&_ret));
		return _ret;
	}
	static Windows.UI.Color Ivory()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Ivory(&_ret));
		return _ret;
	}
	static Windows.UI.Color Khaki()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Khaki(&_ret));
		return _ret;
	}
	static Windows.UI.Color Lavender()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Lavender(&_ret));
		return _ret;
	}
	static Windows.UI.Color LavenderBlush()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LavenderBlush(&_ret));
		return _ret;
	}
	static Windows.UI.Color LawnGreen()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LawnGreen(&_ret));
		return _ret;
	}
	static Windows.UI.Color LemonChiffon()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LemonChiffon(&_ret));
		return _ret;
	}
	static Windows.UI.Color LightBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LightBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color LightCoral()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LightCoral(&_ret));
		return _ret;
	}
	static Windows.UI.Color LightCyan()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LightCyan(&_ret));
		return _ret;
	}
	static Windows.UI.Color LightGoldenrodYellow()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LightGoldenrodYellow(&_ret));
		return _ret;
	}
	static Windows.UI.Color LightGreen()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LightGreen(&_ret));
		return _ret;
	}
	static Windows.UI.Color LightGray()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LightGray(&_ret));
		return _ret;
	}
	static Windows.UI.Color LightPink()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LightPink(&_ret));
		return _ret;
	}
	static Windows.UI.Color LightSalmon()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LightSalmon(&_ret));
		return _ret;
	}
	static Windows.UI.Color LightSeaGreen()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LightSeaGreen(&_ret));
		return _ret;
	}
	static Windows.UI.Color LightSkyBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LightSkyBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color LightSlateGray()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LightSlateGray(&_ret));
		return _ret;
	}
	static Windows.UI.Color LightSteelBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LightSteelBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color LightYellow()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LightYellow(&_ret));
		return _ret;
	}
	static Windows.UI.Color Lime()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Lime(&_ret));
		return _ret;
	}
	static Windows.UI.Color LimeGreen()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_LimeGreen(&_ret));
		return _ret;
	}
	static Windows.UI.Color Linen()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Linen(&_ret));
		return _ret;
	}
	static Windows.UI.Color Magenta()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Magenta(&_ret));
		return _ret;
	}
	static Windows.UI.Color Maroon()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Maroon(&_ret));
		return _ret;
	}
	static Windows.UI.Color MediumAquamarine()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_MediumAquamarine(&_ret));
		return _ret;
	}
	static Windows.UI.Color MediumBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_MediumBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color MediumOrchid()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_MediumOrchid(&_ret));
		return _ret;
	}
	static Windows.UI.Color MediumPurple()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_MediumPurple(&_ret));
		return _ret;
	}
	static Windows.UI.Color MediumSeaGreen()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_MediumSeaGreen(&_ret));
		return _ret;
	}
	static Windows.UI.Color MediumSlateBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_MediumSlateBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color MediumSpringGreen()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_MediumSpringGreen(&_ret));
		return _ret;
	}
	static Windows.UI.Color MediumTurquoise()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_MediumTurquoise(&_ret));
		return _ret;
	}
	static Windows.UI.Color MediumVioletRed()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_MediumVioletRed(&_ret));
		return _ret;
	}
	static Windows.UI.Color MidnightBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_MidnightBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color MintCream()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_MintCream(&_ret));
		return _ret;
	}
	static Windows.UI.Color MistyRose()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_MistyRose(&_ret));
		return _ret;
	}
	static Windows.UI.Color Moccasin()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Moccasin(&_ret));
		return _ret;
	}
	static Windows.UI.Color NavajoWhite()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_NavajoWhite(&_ret));
		return _ret;
	}
	static Windows.UI.Color Navy()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Navy(&_ret));
		return _ret;
	}
	static Windows.UI.Color OldLace()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_OldLace(&_ret));
		return _ret;
	}
	static Windows.UI.Color Olive()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Olive(&_ret));
		return _ret;
	}
	static Windows.UI.Color OliveDrab()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_OliveDrab(&_ret));
		return _ret;
	}
	static Windows.UI.Color Orange()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Orange(&_ret));
		return _ret;
	}
	static Windows.UI.Color OrangeRed()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_OrangeRed(&_ret));
		return _ret;
	}
	static Windows.UI.Color Orchid()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Orchid(&_ret));
		return _ret;
	}
	static Windows.UI.Color PaleGoldenrod()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_PaleGoldenrod(&_ret));
		return _ret;
	}
	static Windows.UI.Color PaleGreen()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_PaleGreen(&_ret));
		return _ret;
	}
	static Windows.UI.Color PaleTurquoise()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_PaleTurquoise(&_ret));
		return _ret;
	}
	static Windows.UI.Color PaleVioletRed()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_PaleVioletRed(&_ret));
		return _ret;
	}
	static Windows.UI.Color PapayaWhip()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_PapayaWhip(&_ret));
		return _ret;
	}
	static Windows.UI.Color PeachPuff()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_PeachPuff(&_ret));
		return _ret;
	}
	static Windows.UI.Color Peru()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Peru(&_ret));
		return _ret;
	}
	static Windows.UI.Color Pink()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Pink(&_ret));
		return _ret;
	}
	static Windows.UI.Color Plum()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Plum(&_ret));
		return _ret;
	}
	static Windows.UI.Color PowderBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_PowderBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color Purple()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Purple(&_ret));
		return _ret;
	}
	static Windows.UI.Color Red()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Red(&_ret));
		return _ret;
	}
	static Windows.UI.Color RosyBrown()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_RosyBrown(&_ret));
		return _ret;
	}
	static Windows.UI.Color RoyalBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_RoyalBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color SaddleBrown()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_SaddleBrown(&_ret));
		return _ret;
	}
	static Windows.UI.Color Salmon()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Salmon(&_ret));
		return _ret;
	}
	static Windows.UI.Color SandyBrown()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_SandyBrown(&_ret));
		return _ret;
	}
	static Windows.UI.Color SeaGreen()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_SeaGreen(&_ret));
		return _ret;
	}
	static Windows.UI.Color SeaShell()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_SeaShell(&_ret));
		return _ret;
	}
	static Windows.UI.Color Sienna()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Sienna(&_ret));
		return _ret;
	}
	static Windows.UI.Color Silver()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Silver(&_ret));
		return _ret;
	}
	static Windows.UI.Color SkyBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_SkyBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color SlateBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_SlateBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color SlateGray()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_SlateGray(&_ret));
		return _ret;
	}
	static Windows.UI.Color Snow()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Snow(&_ret));
		return _ret;
	}
	static Windows.UI.Color SpringGreen()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_SpringGreen(&_ret));
		return _ret;
	}
	static Windows.UI.Color SteelBlue()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_SteelBlue(&_ret));
		return _ret;
	}
	static Windows.UI.Color Tan()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Tan(&_ret));
		return _ret;
	}
	static Windows.UI.Color Teal()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Teal(&_ret));
		return _ret;
	}
	static Windows.UI.Color Thistle()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Thistle(&_ret));
		return _ret;
	}
	static Windows.UI.Color Tomato()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Tomato(&_ret));
		return _ret;
	}
	static Windows.UI.Color Transparent()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Transparent(&_ret));
		return _ret;
	}
	static Windows.UI.Color Turquoise()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Turquoise(&_ret));
		return _ret;
	}
	static Windows.UI.Color Violet()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Violet(&_ret));
		return _ret;
	}
	static Windows.UI.Color Wheat()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Wheat(&_ret));
		return _ret;
	}
	static Windows.UI.Color White()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_White(&_ret));
		return _ret;
	}
	static Windows.UI.Color WhiteSmoke()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_WhiteSmoke(&_ret));
		return _ret;
	}
	static Windows.UI.Color Yellow()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_Yellow(&_ret));
		return _ret;
	}
	static Windows.UI.Color YellowGreen()
	{
		Windows.UI.Color _ret;
		Debug.OK(staticInstance.get_YellowGreen(&_ret));
		return _ret;
	}
}