module Windows.Graphics.Effects;

import dwinrt;

@uuid("cb51c0ce-8fe6-4636-b202-861faa07d8f3")
interface IGraphicsEffect_Base : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_name);
	HRESULT set_Name(HSTRING name);
}
@uuid("cb51c0ce-8fe6-4636-b202-861faa07d8f3")
interface IGraphicsEffect : IGraphicsEffect_Base, Windows.Graphics.Effects.IGraphicsEffectSource {}

@uuid("2d8f9ddc-4339-4eb9-9216-f9deb75658a2")
interface IGraphicsEffectSource : IInspectable
{
}