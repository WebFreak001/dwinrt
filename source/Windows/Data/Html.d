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
	private static Windows.Data.Html.IHtmlUtilities _staticInstance;
	public static Windows.Data.Html.IHtmlUtilities staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Data.Html.IHtmlUtilities);
		return _staticInstance;
	}
	static wstring ConvertToText(wstring html)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_ConvertToText(hstring(html).handle, &_ret));
		return hstring(_ret).d_str;
	}
}