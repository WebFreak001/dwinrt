module Windows.Devices.Haptics;

import dwinrt;

@uuid("3d577ef7-4cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.Devices.Haptics.KnownSimpleHapticsControllerWaveforms")
interface IKnownSimpleHapticsControllerWaveformsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Click(UINT16* return_value);
	HRESULT get_BuzzContinuous(UINT16* return_value);
	HRESULT get_RumbleContinuous(UINT16* return_value);
	HRESULT get_Press(UINT16* return_value);
	HRESULT get_Release(UINT16* return_value);
}

@uuid("3d577ef9-4cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.Devices.Haptics.SimpleHapticsController")
interface ISimpleHapticsController : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_SupportedFeedback(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Haptics.SimpleHapticsControllerFeedback)* return_value);
	HRESULT get_IsIntensitySupported(bool* return_value);
	HRESULT get_IsPlayCountSupported(bool* return_value);
	HRESULT get_IsPlayDurationSupported(bool* return_value);
	HRESULT get_IsReplayPauseIntervalSupported(bool* return_value);
	HRESULT abi_StopFeedback();
	HRESULT abi_SendHapticFeedback(Windows.Devices.Haptics.SimpleHapticsControllerFeedback feedback);
	HRESULT abi_SendHapticFeedbackWithIntensity(Windows.Devices.Haptics.SimpleHapticsControllerFeedback feedback, double intensity);
	HRESULT abi_SendHapticFeedbackForDuration(Windows.Devices.Haptics.SimpleHapticsControllerFeedback feedback, double intensity, Windows.Foundation.TimeSpan playDuration);
	HRESULT abi_SendHapticFeedbackForPlayCount(Windows.Devices.Haptics.SimpleHapticsControllerFeedback feedback, double intensity, INT32 playCount, Windows.Foundation.TimeSpan replayPauseInterval);
}

@uuid("3d577ef8-4cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.Devices.Haptics.SimpleHapticsControllerFeedback")
interface ISimpleHapticsControllerFeedback : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Waveform(UINT16* return_value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
}

@uuid("40f21a3e-8844-47ff-b312-06185a3844da")
@WinrtFactory("Windows.Devices.Haptics.VibrationDevice")
interface IVibrationDevice : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("53e2eded-2290-4ac9-8eb3-1a84122eb71c")
@WinrtFactory("Windows.Devices.Haptics.VibrationDevice")
interface IVibrationDeviceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Haptics.VibrationAccessStatus)* return_operation);
	HRESULT abi_GetDeviceSelector(HSTRING* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Haptics.VibrationDevice)* return_operation);
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Haptics.VibrationDevice)* return_operation);
	HRESULT abi_FindAllAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Haptics.VibrationDevice))* return_operation);
}

interface SimpleHapticsController
{
}

interface SimpleHapticsControllerFeedback
{
}

interface VibrationDevice
{
}

enum VibrationAccessStatus
{
	Allowed = 0,
	DeniedByUser = 1,
	DeniedBySystem = 2,
	DeniedByEnergySaver = 3
}