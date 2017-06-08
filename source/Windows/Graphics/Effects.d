module Windows.Graphics.Effects;

import dwinrt;

@uuid("cb51c0ce-8fe6-4636-b202-861faa07d8f3")
interface IGraphicsEffect : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_name);
	HRESULT set_Name(HSTRING name);
}