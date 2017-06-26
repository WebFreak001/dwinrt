module Windows.Gaming.Input.ForceFeedback;

import dwinrt;

@uuid("32d1ea68-3695-4e69-85c0-cd1944189140")
@WinrtFactory("Windows.Gaming.Input.ForceFeedback.ConditionForceEffect")
interface IConditionForceEffect_Base : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.Gaming.Input.ForceFeedback.ConditionForceEffectKind* return_value);
	HRESULT abi_SetParameters(Windows.Foundation.Numerics.Vector3 direction, float positiveCoefficient, float negativeCoefficient, float maxPositiveMagnitude, float maxNegativeMagnitude, float deadZone, float bias);
}
@uuid("32d1ea68-3695-4e69-85c0-cd1944189140")
@WinrtFactory("Windows.Gaming.Input.ForceFeedback.ConditionForceEffect")
interface IConditionForceEffect : IConditionForceEffect_Base, Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect {}

@uuid("91a99264-1810-4eb6-a773-bfd3b8cddbab")
@WinrtFactory("Windows.Gaming.Input.ForceFeedback.ConditionForceEffect")
interface IConditionForceEffectFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(Windows.Gaming.Input.ForceFeedback.ConditionForceEffectKind effectKind, Windows.Gaming.Input.ForceFeedback.ConditionForceEffect* return_value);
}

@uuid("9bfa0140-f3c7-415c-b068-0f068734bce0")
@WinrtFactory("Windows.Gaming.Input.ForceFeedback.ConstantForceEffect")
interface IConstantForceEffect_Base : IInspectable
{
extern(Windows):
	HRESULT abi_SetParameters(Windows.Foundation.Numerics.Vector3 vector, Windows.Foundation.TimeSpan duration);
	HRESULT abi_SetParametersWithEnvelope(Windows.Foundation.Numerics.Vector3 vector, float attackGain, float sustainGain, float releaseGain, Windows.Foundation.TimeSpan startDelay, Windows.Foundation.TimeSpan attackDuration, Windows.Foundation.TimeSpan sustainDuration, Windows.Foundation.TimeSpan releaseDuration, UINT32 repeatCount);
}
@uuid("9bfa0140-f3c7-415c-b068-0f068734bce0")
@WinrtFactory("Windows.Gaming.Input.ForceFeedback.ConstantForceEffect")
interface IConstantForceEffect : IConstantForceEffect_Base, Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect {}

@uuid("a17fba0c-2ae4-48c2-8063-eabd0777cb89")
interface IForceFeedbackEffect : IInspectable
{
extern(Windows):
	HRESULT get_Gain(double* return_value);
	HRESULT set_Gain(double value);
	HRESULT get_State(Windows.Gaming.Input.ForceFeedback.ForceFeedbackEffectState* return_value);
	HRESULT abi_Start();
	HRESULT abi_Stop();
}

@uuid("8d3d417c-a5ea-4516-8026-2b00f74ef6e5")
@WinrtFactory("Windows.Gaming.Input.ForceFeedback.ForceFeedbackMotor")
interface IForceFeedbackMotor : IInspectable
{
extern(Windows):
	HRESULT get_AreEffectsPaused(bool* return_value);
	HRESULT get_MasterGain(double* return_value);
	HRESULT set_MasterGain(double value);
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT get_SupportedAxes(Windows.Gaming.Input.ForceFeedback.ForceFeedbackEffectAxes* return_value);
	HRESULT abi_LoadEffectAsync(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect effect, Windows.Foundation.IAsyncOperation!(Windows.Gaming.Input.ForceFeedback.ForceFeedbackLoadEffectResult)* return_asyncOperation);
	HRESULT abi_PauseAllEffects();
	HRESULT abi_ResumeAllEffects();
	HRESULT abi_StopAllEffects();
	HRESULT abi_TryDisableAsync(Windows.Foundation.IAsyncOperation!(bool)* return_asyncOperation);
	HRESULT abi_TryEnableAsync(Windows.Foundation.IAsyncOperation!(bool)* return_asyncOperation);
	HRESULT abi_TryResetAsync(Windows.Foundation.IAsyncOperation!(bool)* return_asyncOperation);
	HRESULT abi_TryUnloadEffectAsync(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect effect, Windows.Foundation.IAsyncOperation!(bool)* return_asyncOperation);
}

@uuid("5c5138d7-fc75-4d52-9a0a-efe4cab5fe64")
@WinrtFactory("Windows.Gaming.Input.ForceFeedback.PeriodicForceEffect")
interface IPeriodicForceEffect_Base : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.Gaming.Input.ForceFeedback.PeriodicForceEffectKind* return_value);
	HRESULT abi_SetParameters(Windows.Foundation.Numerics.Vector3 vector, float frequency, float phase, float bias, Windows.Foundation.TimeSpan duration);
	HRESULT abi_SetParametersWithEnvelope(Windows.Foundation.Numerics.Vector3 vector, float frequency, float phase, float bias, float attackGain, float sustainGain, float releaseGain, Windows.Foundation.TimeSpan startDelay, Windows.Foundation.TimeSpan attackDuration, Windows.Foundation.TimeSpan sustainDuration, Windows.Foundation.TimeSpan releaseDuration, UINT32 repeatCount);
}
@uuid("5c5138d7-fc75-4d52-9a0a-efe4cab5fe64")
@WinrtFactory("Windows.Gaming.Input.ForceFeedback.PeriodicForceEffect")
interface IPeriodicForceEffect : IPeriodicForceEffect_Base, Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect {}

@uuid("6f62eb1a-9851-477b-b318-35ecaa15070f")
@WinrtFactory("Windows.Gaming.Input.ForceFeedback.PeriodicForceEffect")
interface IPeriodicForceEffectFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(Windows.Gaming.Input.ForceFeedback.PeriodicForceEffectKind effectKind, Windows.Gaming.Input.ForceFeedback.PeriodicForceEffect* return_value);
}

@uuid("f1f81259-1ca6-4080-b56d-b43f3354d052")
@WinrtFactory("Windows.Gaming.Input.ForceFeedback.RampForceEffect")
interface IRampForceEffect_Base : IInspectable
{
extern(Windows):
	HRESULT abi_SetParameters(Windows.Foundation.Numerics.Vector3 startVector, Windows.Foundation.Numerics.Vector3 endVector, Windows.Foundation.TimeSpan duration);
	HRESULT abi_SetParametersWithEnvelope(Windows.Foundation.Numerics.Vector3 startVector, Windows.Foundation.Numerics.Vector3 endVector, float attackGain, float sustainGain, float releaseGain, Windows.Foundation.TimeSpan startDelay, Windows.Foundation.TimeSpan attackDuration, Windows.Foundation.TimeSpan sustainDuration, Windows.Foundation.TimeSpan releaseDuration, UINT32 repeatCount);
}
@uuid("f1f81259-1ca6-4080-b56d-b43f3354d052")
@WinrtFactory("Windows.Gaming.Input.ForceFeedback.RampForceEffect")
interface IRampForceEffect : IRampForceEffect_Base, Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect {}

interface ConditionForceEffect : Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect, Windows.Gaming.Input.ForceFeedback.IConditionForceEffect
{
extern(Windows):
	final double Gain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).get_Gain(&_ret));
		return _ret;
	}
	final void Gain(double value)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).set_Gain(value));
	}
	final Windows.Gaming.Input.ForceFeedback.ForceFeedbackEffectState State()
	{
		Windows.Gaming.Input.ForceFeedback.ForceFeedbackEffectState _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).get_State(&_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).abi_Stop());
	}
	final Windows.Gaming.Input.ForceFeedback.ConditionForceEffectKind Kind()
	{
		Windows.Gaming.Input.ForceFeedback.ConditionForceEffectKind _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IConditionForceEffect).get_Kind(&_ret));
		return _ret;
	}
	final void SetParameters(Windows.Foundation.Numerics.Vector3 direction, float positiveCoefficient, float negativeCoefficient, float maxPositiveMagnitude, float maxNegativeMagnitude, float deadZone, float bias)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IConditionForceEffect).abi_SetParameters(direction, positiveCoefficient, negativeCoefficient, maxPositiveMagnitude, maxNegativeMagnitude, deadZone, bias));
	}
	static Windows.Gaming.Input.ForceFeedback.ConditionForceEffect New(Windows.Gaming.Input.ForceFeedback.ConditionForceEffectKind effectKind)
	{
		auto factory = factory!(Windows.Gaming.Input.ForceFeedback.IConditionForceEffectFactory);
		Windows.Gaming.Input.ForceFeedback.ConditionForceEffect _ret;
		Debug.OK(factory.as!(Windows.Gaming.Input.ForceFeedback.IConditionForceEffectFactory).abi_CreateInstance(effectKind, &_ret));
		return _ret;
	}
}

interface ConstantForceEffect : Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect, Windows.Gaming.Input.ForceFeedback.IConstantForceEffect
{
extern(Windows):
	final double Gain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).get_Gain(&_ret));
		return _ret;
	}
	final void Gain(double value)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).set_Gain(value));
	}
	final Windows.Gaming.Input.ForceFeedback.ForceFeedbackEffectState State()
	{
		Windows.Gaming.Input.ForceFeedback.ForceFeedbackEffectState _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).get_State(&_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).abi_Stop());
	}
	final void SetParameters(Windows.Foundation.Numerics.Vector3 vector, Windows.Foundation.TimeSpan duration)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IConstantForceEffect).abi_SetParameters(vector, duration));
	}
	final void SetParametersWithEnvelope(Windows.Foundation.Numerics.Vector3 vector, float attackGain, float sustainGain, float releaseGain, Windows.Foundation.TimeSpan startDelay, Windows.Foundation.TimeSpan attackDuration, Windows.Foundation.TimeSpan sustainDuration, Windows.Foundation.TimeSpan releaseDuration, UINT32 repeatCount)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IConstantForceEffect).abi_SetParametersWithEnvelope(vector, attackGain, sustainGain, releaseGain, startDelay, attackDuration, sustainDuration, releaseDuration, repeatCount));
	}
}

interface ForceFeedbackMotor : Windows.Gaming.Input.ForceFeedback.IForceFeedbackMotor
{
extern(Windows):
	final bool AreEffectsPaused()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackMotor).get_AreEffectsPaused(&_ret));
		return _ret;
	}
	final double MasterGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackMotor).get_MasterGain(&_ret));
		return _ret;
	}
	final void MasterGain(double value)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackMotor).set_MasterGain(value));
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackMotor).get_IsEnabled(&_ret));
		return _ret;
	}
	final Windows.Gaming.Input.ForceFeedback.ForceFeedbackEffectAxes SupportedAxes()
	{
		Windows.Gaming.Input.ForceFeedback.ForceFeedbackEffectAxes _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackMotor).get_SupportedAxes(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Gaming.Input.ForceFeedback.ForceFeedbackLoadEffectResult) LoadEffectAsync(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect effect)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Gaming.Input.ForceFeedback.ForceFeedbackLoadEffectResult) _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackMotor).abi_LoadEffectAsync(effect, &_ret));
		return _ret;
	}
	final void PauseAllEffects()
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackMotor).abi_PauseAllEffects());
	}
	final void ResumeAllEffects()
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackMotor).abi_ResumeAllEffects());
	}
	final void StopAllEffects()
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackMotor).abi_StopAllEffects());
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryDisableAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackMotor).abi_TryDisableAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryEnableAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackMotor).abi_TryEnableAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryResetAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackMotor).abi_TryResetAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryUnloadEffectAsync(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect effect)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackMotor).abi_TryUnloadEffectAsync(effect, &_ret));
		return _ret;
	}
}

interface PeriodicForceEffect : Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect, Windows.Gaming.Input.ForceFeedback.IPeriodicForceEffect
{
extern(Windows):
	final double Gain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).get_Gain(&_ret));
		return _ret;
	}
	final void Gain(double value)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).set_Gain(value));
	}
	final Windows.Gaming.Input.ForceFeedback.ForceFeedbackEffectState State()
	{
		Windows.Gaming.Input.ForceFeedback.ForceFeedbackEffectState _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).get_State(&_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).abi_Stop());
	}
	final Windows.Gaming.Input.ForceFeedback.PeriodicForceEffectKind Kind()
	{
		Windows.Gaming.Input.ForceFeedback.PeriodicForceEffectKind _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IPeriodicForceEffect).get_Kind(&_ret));
		return _ret;
	}
	final void SetParameters(Windows.Foundation.Numerics.Vector3 vector, float frequency, float phase, float bias, Windows.Foundation.TimeSpan duration)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IPeriodicForceEffect).abi_SetParameters(vector, frequency, phase, bias, duration));
	}
	final void SetParametersWithEnvelope(Windows.Foundation.Numerics.Vector3 vector, float frequency, float phase, float bias, float attackGain, float sustainGain, float releaseGain, Windows.Foundation.TimeSpan startDelay, Windows.Foundation.TimeSpan attackDuration, Windows.Foundation.TimeSpan sustainDuration, Windows.Foundation.TimeSpan releaseDuration, UINT32 repeatCount)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IPeriodicForceEffect).abi_SetParametersWithEnvelope(vector, frequency, phase, bias, attackGain, sustainGain, releaseGain, startDelay, attackDuration, sustainDuration, releaseDuration, repeatCount));
	}
	static Windows.Gaming.Input.ForceFeedback.PeriodicForceEffect New(Windows.Gaming.Input.ForceFeedback.PeriodicForceEffectKind effectKind)
	{
		auto factory = factory!(Windows.Gaming.Input.ForceFeedback.IPeriodicForceEffectFactory);
		Windows.Gaming.Input.ForceFeedback.PeriodicForceEffect _ret;
		Debug.OK(factory.as!(Windows.Gaming.Input.ForceFeedback.IPeriodicForceEffectFactory).abi_CreateInstance(effectKind, &_ret));
		return _ret;
	}
}

interface RampForceEffect : Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect, Windows.Gaming.Input.ForceFeedback.IRampForceEffect
{
extern(Windows):
	final double Gain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).get_Gain(&_ret));
		return _ret;
	}
	final void Gain(double value)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).set_Gain(value));
	}
	final Windows.Gaming.Input.ForceFeedback.ForceFeedbackEffectState State()
	{
		Windows.Gaming.Input.ForceFeedback.ForceFeedbackEffectState _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).get_State(&_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IForceFeedbackEffect).abi_Stop());
	}
	final void SetParameters(Windows.Foundation.Numerics.Vector3 startVector, Windows.Foundation.Numerics.Vector3 endVector, Windows.Foundation.TimeSpan duration)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IRampForceEffect).abi_SetParameters(startVector, endVector, duration));
	}
	final void SetParametersWithEnvelope(Windows.Foundation.Numerics.Vector3 startVector, Windows.Foundation.Numerics.Vector3 endVector, float attackGain, float sustainGain, float releaseGain, Windows.Foundation.TimeSpan startDelay, Windows.Foundation.TimeSpan attackDuration, Windows.Foundation.TimeSpan sustainDuration, Windows.Foundation.TimeSpan releaseDuration, UINT32 repeatCount)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.ForceFeedback.IRampForceEffect).abi_SetParametersWithEnvelope(startVector, endVector, attackGain, sustainGain, releaseGain, startDelay, attackDuration, sustainDuration, releaseDuration, repeatCount));
	}
}

enum ConditionForceEffectKind
{
	Spring = 0,
	Damper = 1,
	Inertia = 2,
	Friction = 3
}

@bitflags
enum ForceFeedbackEffectAxes
{
	None = 0x0,
	X = 0x1,
	Y = 0x2,
	Z = 0x4
}

enum ForceFeedbackEffectState
{
	Stopped = 0,
	Running = 1,
	Paused = 2,
	Faulted = 3
}

enum ForceFeedbackLoadEffectResult
{
	Succeeded = 0,
	EffectStorageFull = 1,
	EffectNotSupported = 2
}

enum PeriodicForceEffectKind
{
	SquareWave = 0,
	SineWave = 1,
	TriangleWave = 2,
	SawtoothWaveUp = 3,
	SawtoothWaveDown = 4
}