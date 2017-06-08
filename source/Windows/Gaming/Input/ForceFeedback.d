module Windows.Gaming.Input.ForceFeedback;

import dwinrt;

@uuid("32d1ea68-3695-4e69-85c0-cd1944189140")
@WinrtFactory("Windows.Gaming.Input.ForceFeedback.ConditionForceEffect")
interface IConditionForceEffect : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Kind(Windows.Gaming.Input.ForceFeedback.ConditionForceEffectKind* return_value);
	HRESULT abi_SetParameters(Windows.Foundation.Numerics.Vector3 direction, FLOAT positiveCoefficient, FLOAT negativeCoefficient, FLOAT maxPositiveMagnitude, FLOAT maxNegativeMagnitude, FLOAT deadZone, FLOAT bias);
}

@uuid("91a99264-1810-4eb6-a773-bfd3b8cddbab")
@WinrtFactory("Windows.Gaming.Input.ForceFeedback.ConditionForceEffect")
interface IConditionForceEffectFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(Windows.Gaming.Input.ForceFeedback.ConditionForceEffectKind effectKind, Windows.Gaming.Input.ForceFeedback.ConditionForceEffect* return_value);
}

@uuid("9bfa0140-f3c7-415c-b068-0f068734bce0")
@WinrtFactory("Windows.Gaming.Input.ForceFeedback.ConstantForceEffect")
interface IConstantForceEffect : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetParameters(Windows.Foundation.Numerics.Vector3 vector, Windows.Foundation.TimeSpan duration);
	HRESULT abi_SetParametersWithEnvelope(Windows.Foundation.Numerics.Vector3 vector, FLOAT attackGain, FLOAT sustainGain, FLOAT releaseGain, Windows.Foundation.TimeSpan startDelay, Windows.Foundation.TimeSpan attackDuration, Windows.Foundation.TimeSpan sustainDuration, Windows.Foundation.TimeSpan releaseDuration, UINT32 repeatCount);
}

@uuid("a17fba0c-2ae4-48c2-8063-eabd0777cb89")
interface IForceFeedbackEffect : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
interface IPeriodicForceEffect : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Kind(Windows.Gaming.Input.ForceFeedback.PeriodicForceEffectKind* return_value);
	HRESULT abi_SetParameters(Windows.Foundation.Numerics.Vector3 vector, FLOAT frequency, FLOAT phase, FLOAT bias, Windows.Foundation.TimeSpan duration);
	HRESULT abi_SetParametersWithEnvelope(Windows.Foundation.Numerics.Vector3 vector, FLOAT frequency, FLOAT phase, FLOAT bias, FLOAT attackGain, FLOAT sustainGain, FLOAT releaseGain, Windows.Foundation.TimeSpan startDelay, Windows.Foundation.TimeSpan attackDuration, Windows.Foundation.TimeSpan sustainDuration, Windows.Foundation.TimeSpan releaseDuration, UINT32 repeatCount);
}

@uuid("6f62eb1a-9851-477b-b318-35ecaa15070f")
@WinrtFactory("Windows.Gaming.Input.ForceFeedback.PeriodicForceEffect")
interface IPeriodicForceEffectFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(Windows.Gaming.Input.ForceFeedback.PeriodicForceEffectKind effectKind, Windows.Gaming.Input.ForceFeedback.PeriodicForceEffect* return_value);
}

@uuid("f1f81259-1ca6-4080-b56d-b43f3354d052")
@WinrtFactory("Windows.Gaming.Input.ForceFeedback.RampForceEffect")
interface IRampForceEffect : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetParameters(Windows.Foundation.Numerics.Vector3 startVector, Windows.Foundation.Numerics.Vector3 endVector, Windows.Foundation.TimeSpan duration);
	HRESULT abi_SetParametersWithEnvelope(Windows.Foundation.Numerics.Vector3 startVector, Windows.Foundation.Numerics.Vector3 endVector, FLOAT attackGain, FLOAT sustainGain, FLOAT releaseGain, Windows.Foundation.TimeSpan startDelay, Windows.Foundation.TimeSpan attackDuration, Windows.Foundation.TimeSpan sustainDuration, Windows.Foundation.TimeSpan releaseDuration, UINT32 repeatCount);
}

interface ConditionForceEffect
{
}

interface ConstantForceEffect
{
}

interface ForceFeedbackMotor
{
}

interface PeriodicForceEffect
{
}

interface RampForceEffect
{
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