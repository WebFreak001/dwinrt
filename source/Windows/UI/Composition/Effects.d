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
}