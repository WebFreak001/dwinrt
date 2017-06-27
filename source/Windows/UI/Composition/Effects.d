module Windows.UI.Composition.Effects;

import dwinrt;

@uuid("91bb5e52-95d1-4f8b-9a5a-6408b24b8c6a")
@WinrtFactory("Windows.UI.Composition.Effects.SceneLightingEffect")
interface ISceneLightingEffect : IInspectable
{
extern(Windows):
	HRESULT get_AmbientAmount(float* return_value);
	HRESULT set_AmbientAmount(float value);
	HRESULT get_DiffuseAmount(float* return_value);
	HRESULT set_DiffuseAmount(float value);
	HRESULT get_NormalMapSource(Windows.Graphics.Effects.IGraphicsEffectSource* return_value);
	HRESULT set_NormalMapSource(Windows.Graphics.Effects.IGraphicsEffectSource value);
	HRESULT get_SpecularAmount(float* return_value);
	HRESULT set_SpecularAmount(float value);
	HRESULT get_SpecularShine(float* return_value);
	HRESULT set_SpecularShine(float value);
}

interface SceneLightingEffect : Windows.UI.Composition.Effects.ISceneLightingEffect, Windows.Graphics.Effects.IGraphicsEffect, Windows.Graphics.Effects.IGraphicsEffectSource
{
extern(Windows):
	final float AmbientAmount()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.Effects.ISceneLightingEffect)this.asInterface(uuid("91bb5e52-95d1-4f8b-9a5a-6408b24b8c6a"))).get_AmbientAmount(&_ret));
		return _ret;
	}
	final void AmbientAmount(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.Effects.ISceneLightingEffect)this.asInterface(uuid("91bb5e52-95d1-4f8b-9a5a-6408b24b8c6a"))).set_AmbientAmount(value));
	}
	final float DiffuseAmount()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.Effects.ISceneLightingEffect)this.asInterface(uuid("91bb5e52-95d1-4f8b-9a5a-6408b24b8c6a"))).get_DiffuseAmount(&_ret));
		return _ret;
	}
	final void DiffuseAmount(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.Effects.ISceneLightingEffect)this.asInterface(uuid("91bb5e52-95d1-4f8b-9a5a-6408b24b8c6a"))).set_DiffuseAmount(value));
	}
	final Windows.Graphics.Effects.IGraphicsEffectSource NormalMapSource()
	{
		Windows.Graphics.Effects.IGraphicsEffectSource _ret;
		Debug.OK((cast(Windows.UI.Composition.Effects.ISceneLightingEffect)this.asInterface(uuid("91bb5e52-95d1-4f8b-9a5a-6408b24b8c6a"))).get_NormalMapSource(&_ret));
		return _ret;
	}
	final void NormalMapSource(Windows.Graphics.Effects.IGraphicsEffectSource value)
	{
		Debug.OK((cast(Windows.UI.Composition.Effects.ISceneLightingEffect)this.asInterface(uuid("91bb5e52-95d1-4f8b-9a5a-6408b24b8c6a"))).set_NormalMapSource(value));
	}
	final float SpecularAmount()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.Effects.ISceneLightingEffect)this.asInterface(uuid("91bb5e52-95d1-4f8b-9a5a-6408b24b8c6a"))).get_SpecularAmount(&_ret));
		return _ret;
	}
	final void SpecularAmount(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.Effects.ISceneLightingEffect)this.asInterface(uuid("91bb5e52-95d1-4f8b-9a5a-6408b24b8c6a"))).set_SpecularAmount(value));
	}
	final float SpecularShine()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.Effects.ISceneLightingEffect)this.asInterface(uuid("91bb5e52-95d1-4f8b-9a5a-6408b24b8c6a"))).get_SpecularShine(&_ret));
		return _ret;
	}
	final void SpecularShine(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.Effects.ISceneLightingEffect)this.asInterface(uuid("91bb5e52-95d1-4f8b-9a5a-6408b24b8c6a"))).set_SpecularShine(value));
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Effects.IGraphicsEffect)this.asInterface(uuid("cb51c0ce-8fe6-4636-b202-861faa07d8f3"))).get_Name(&_ret));
		return _ret;
	}
	final void Name(HSTRING name)
	{
		Debug.OK((cast(Windows.Graphics.Effects.IGraphicsEffect)this.asInterface(uuid("cb51c0ce-8fe6-4636-b202-861faa07d8f3"))).set_Name(name));
	}
	static SceneLightingEffect New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SceneLightingEffect).abi_ActivateInstance(&ret));
		return cast(SceneLightingEffect) ret;
	}
}