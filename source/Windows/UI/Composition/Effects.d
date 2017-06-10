module Windows.UI.Composition.Effects;

import dwinrt;

@uuid("91bb5e52-95d1-4f8b-9a5a-6408b24b8c6a")
@WinrtFactory("Windows.UI.Composition.Effects.SceneLightingEffect")
interface ISceneLightingEffect : IInspectable
{
extern(Windows):
	HRESULT get_AmbientAmount(FLOAT* return_value);
	HRESULT set_AmbientAmount(FLOAT value);
	HRESULT get_DiffuseAmount(FLOAT* return_value);
	HRESULT set_DiffuseAmount(FLOAT value);
	HRESULT get_NormalMapSource(Windows.Graphics.Effects.IGraphicsEffectSource* return_value);
	HRESULT set_NormalMapSource(Windows.Graphics.Effects.IGraphicsEffectSource value);
	HRESULT get_SpecularAmount(FLOAT* return_value);
	HRESULT set_SpecularAmount(FLOAT value);
	HRESULT get_SpecularShine(FLOAT* return_value);
	HRESULT set_SpecularShine(FLOAT value);
}

interface SceneLightingEffect : Windows.UI.Composition.Effects.ISceneLightingEffect, Windows.Graphics.Effects.IGraphicsEffect, Windows.Graphics.Effects.IGraphicsEffectSource
{
extern(Windows):
	final FLOAT AmbientAmount()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Effects.ISceneLightingEffect).get_AmbientAmount(&_ret));
		return _ret;
	}
	final void AmbientAmount(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Effects.ISceneLightingEffect).set_AmbientAmount(value));
	}
	final FLOAT DiffuseAmount()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Effects.ISceneLightingEffect).get_DiffuseAmount(&_ret));
		return _ret;
	}
	final void DiffuseAmount(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Effects.ISceneLightingEffect).set_DiffuseAmount(value));
	}
	final Windows.Graphics.Effects.IGraphicsEffectSource NormalMapSource()
	{
		Windows.Graphics.Effects.IGraphicsEffectSource _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Effects.ISceneLightingEffect).get_NormalMapSource(&_ret));
		return _ret;
	}
	final void NormalMapSource(Windows.Graphics.Effects.IGraphicsEffectSource value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Effects.ISceneLightingEffect).set_NormalMapSource(value));
	}
	final FLOAT SpecularAmount()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Effects.ISceneLightingEffect).get_SpecularAmount(&_ret));
		return _ret;
	}
	final void SpecularAmount(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Effects.ISceneLightingEffect).set_SpecularAmount(value));
	}
	final FLOAT SpecularShine()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Effects.ISceneLightingEffect).get_SpecularShine(&_ret));
		return _ret;
	}
	final void SpecularShine(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Effects.ISceneLightingEffect).set_SpecularShine(value));
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Graphics.Effects.IGraphicsEffect).get_Name(&_ret));
		return _ret;
	}
	final void Name(HSTRING name)
	{
		Debug.OK(this.as!(Windows.Graphics.Effects.IGraphicsEffect).set_Name(name));
	}
}