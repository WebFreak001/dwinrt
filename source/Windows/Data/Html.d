module Windows.Data.Html;

import dwinrt;

@uuid("fec00add-2399-4fac-b5a7-05e9acd7181d")
@WinrtFactory("Windows.Data.Html.HtmlUtilities")
interface IHtmlUtilities : IInspectable
{
extern(Windows):
	HRESULT abi_ConvertToText(HSTRING html, HSTRING* return_text);
}

interface HtmlUtilities
{
}