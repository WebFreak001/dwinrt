module Windows.Media.ClosedCaptioning;

import dwinrt;

@uuid("10aa1f84-cc30-4141-b503-5272289e0c20")
@WinrtFactory("Windows.Media.ClosedCaptioning.ClosedCaptionProperties")
interface IClosedCaptionPropertiesStatics : IInspectable
{
extern(Windows):
	HRESULT get_FontColor(Windows.Media.ClosedCaptioning.ClosedCaptionColor* return_value);
	HRESULT get_ComputedFontColor(Windows.UI.Color* return_value);
	HRESULT get_FontOpacity(Windows.Media.ClosedCaptioning.ClosedCaptionOpacity* return_value);
	HRESULT get_FontSize(Windows.Media.ClosedCaptioning.ClosedCaptionSize* return_value);
	HRESULT get_FontStyle(Windows.Media.ClosedCaptioning.ClosedCaptionStyle* return_value);
	HRESULT get_FontEffect(Windows.Media.ClosedCaptioning.ClosedCaptionEdgeEffect* return_value);
	HRESULT get_BackgroundColor(Windows.Media.ClosedCaptioning.ClosedCaptionColor* return_value);
	HRESULT get_ComputedBackgroundColor(Windows.UI.Color* return_value);
	HRESULT get_BackgroundOpacity(Windows.Media.ClosedCaptioning.ClosedCaptionOpacity* return_value);
	HRESULT get_RegionColor(Windows.Media.ClosedCaptioning.ClosedCaptionColor* return_value);
	HRESULT get_ComputedRegionColor(Windows.UI.Color* return_value);
	HRESULT get_RegionOpacity(Windows.Media.ClosedCaptioning.ClosedCaptionOpacity* return_value);
}

interface ClosedCaptionProperties
{
}

enum ClosedCaptionColor
{
	Default = 0,
	White = 1,
	Black = 2,
	Red = 3,
	Green = 4,
	Blue = 5,
	Yellow = 6,
	Magenta = 7,
	Cyan = 8
}

enum ClosedCaptionEdgeEffect
{
	Default = 0,
	None = 1,
	Raised = 2,
	Depressed = 3,
	Uniform = 4,
	DropShadow = 5
}

enum ClosedCaptionOpacity
{
	Default = 0,
	OneHundredPercent = 1,
	SeventyFivePercent = 2,
	TwentyFivePercent = 3,
	ZeroPercent = 4
}

enum ClosedCaptionSize
{
	Default = 0,
	FiftyPercent = 1,
	OneHundredPercent = 2,
	OneHundredFiftyPercent = 3,
	TwoHundredPercent = 4
}

enum ClosedCaptionStyle
{
	Default = 0,
	MonospacedWithSerifs = 1,
	ProportionalWithSerifs = 2,
	MonospacedWithoutSerifs = 3,
	ProportionalWithoutSerifs = 4,
	Casual = 5,
	Cursive = 6,
	SmallCapitals = 7
}