module Windows.Devices.Haptics;

import dwinrt;

@uuid("3d577ef7-4cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.Devices.Haptics.KnownSimpleHapticsControllerWaveforms")
interface IKnownSimpleHapticsControllerWaveformsStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_Waveform(UINT16* return_value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
}

@uuid("40f21a3e-8844-47ff-b312-06185a3844da")
@WinrtFactory("Windows.Devices.Haptics.VibrationDevice")
interface IVibrationDevice : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("53e2eded-2290-4ac9-8eb3-1a84122eb71c")
@WinrtFactory("Windows.Devices.Haptics.VibrationDevice")
interface IVibrationDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Haptics.VibrationAccessStatus)* return_operation);
	HRESULT abi_GetDeviceSelector(HSTRING* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Haptics.VibrationDevice)* return_operation);
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Haptics.VibrationDevice)* return_operation);
	HRESULT abi_FindAllAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Haptics.VibrationDevice))* return_operation);
}

interface KnownSimpleHapticsControllerWaveforms
{
	private static Windows.Devices.Haptics.IKnownSimpleHapticsControllerWaveformsStatics _staticInstance;
	public static Windows.Devices.Haptics.IKnownSimpleHapticsControllerWaveformsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Haptics.IKnownSimpleHapticsControllerWaveformsStatics);
		return _staticInstance;
	}
	static UINT16 Click()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.get_Click(&_ret));
		return _ret;
	}
	static UINT16 BuzzContinuous()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.get_BuzzContinuous(&_ret));
		return _ret;
	}
	static UINT16 RumbleContinuous()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.get_RumbleContinuous(&_ret));
		return _ret;
	}
	static UINT16 Press()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.get_Press(&_ret));
		return _ret;
	}
	static UINT16 Release()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.get_Release(&_ret));
		return _ret;
	}
}

interface SimpleHapticsController : Windows.Devices.Haptics.ISimpleHapticsController
{
extern(Windows):
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Haptics.ISimpleHapticsController)this.asInterface(uuid("3d577ef9-4cee-11e6-b535-001bdc06ab3b"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Haptics.SimpleHapticsControllerFeedback) SupportedFeedback()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Haptics.SimpleHapticsControllerFeedback) _ret;
		Debug.OK((cast(Windows.Devices.Haptics.ISimpleHapticsController)this.asInterface(uuid("3d577ef9-4cee-11e6-b535-001bdc06ab3b"))).get_SupportedFeedback(&_ret));
		return _ret;
	}
	final bool IsIntensitySupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Haptics.ISimpleHapticsController)this.asInterface(uuid("3d577ef9-4cee-11e6-b535-001bdc06ab3b"))).get_IsIntensitySupported(&_ret));
		return _ret;
	}
	final bool IsPlayCountSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Haptics.ISimpleHapticsController)this.asInterface(uuid("3d577ef9-4cee-11e6-b535-001bdc06ab3b"))).get_IsPlayCountSupported(&_ret));
		return _ret;
	}
	final bool IsPlayDurationSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Haptics.ISimpleHapticsController)this.asInterface(uuid("3d577ef9-4cee-11e6-b535-001bdc06ab3b"))).get_IsPlayDurationSupported(&_ret));
		return _ret;
	}
	final bool IsReplayPauseIntervalSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Haptics.ISimpleHapticsController)this.asInterface(uuid("3d577ef9-4cee-11e6-b535-001bdc06ab3b"))).get_IsReplayPauseIntervalSupported(&_ret));
		return _ret;
	}
	final void StopFeedback()
	{
		Debug.OK((cast(Windows.Devices.Haptics.ISimpleHapticsController)this.asInterface(uuid("3d577ef9-4cee-11e6-b535-001bdc06ab3b"))).abi_StopFeedback());
	}
	final void SendHapticFeedback(Windows.Devices.Haptics.SimpleHapticsControllerFeedback feedback)
	{
		Debug.OK((cast(Windows.Devices.Haptics.ISimpleHapticsController)this.asInterface(uuid("3d577ef9-4cee-11e6-b535-001bdc06ab3b"))).abi_SendHapticFeedback(feedback));
	}
	final void SendHapticFeedbackWithIntensity(Windows.Devices.Haptics.SimpleHapticsControllerFeedback feedback, double intensity)
	{
		Debug.OK((cast(Windows.Devices.Haptics.ISimpleHapticsController)this.asInterface(uuid("3d577ef9-4cee-11e6-b535-001bdc06ab3b"))).abi_SendHapticFeedbackWithIntensity(feedback, intensity));
	}
	alias SendHapticFeedback = SendHapticFeedbackWithIntensity;
	final void SendHapticFeedbackForDuration(Windows.Devices.Haptics.SimpleHapticsControllerFeedback feedback, double intensity, Windows.Foundation.TimeSpan playDuration)
	{
		Debug.OK((cast(Windows.Devices.Haptics.ISimpleHapticsController)this.asInterface(uuid("3d577ef9-4cee-11e6-b535-001bdc06ab3b"))).abi_SendHapticFeedbackForDuration(feedback, intensity, playDuration));
	}
	final void SendHapticFeedbackForPlayCount(Windows.Devices.Haptics.SimpleHapticsControllerFeedback feedback, double intensity, INT32 playCount, Windows.Foundation.TimeSpan replayPauseInterval)
	{
		Debug.OK((cast(Windows.Devices.Haptics.ISimpleHapticsController)this.asInterface(uuid("3d577ef9-4cee-11e6-b535-001bdc06ab3b"))).abi_SendHapticFeedbackForPlayCount(feedback, intensity, playCount, replayPauseInterval));
	}
}

interface SimpleHapticsControllerFeedback : Windows.Devices.Haptics.ISimpleHapticsControllerFeedback
{
extern(Windows):
	final UINT16 Waveform()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.Haptics.ISimpleHapticsControllerFeedback)this.asInterface(uuid("3d577ef8-4cee-11e6-b535-001bdc06ab3b"))).get_Waveform(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Haptics.ISimpleHapticsControllerFeedback)this.asInterface(uuid("3d577ef8-4cee-11e6-b535-001bdc06ab3b"))).get_Duration(&_ret));
		return _ret;
	}
}

interface VibrationDevice : Windows.Devices.Haptics.IVibrationDevice
{
extern(Windows):
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Haptics.IVibrationDevice)this.asInterface(uuid("40f21a3e-8844-47ff-b312-06185a3844da"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Devices.Haptics.SimpleHapticsController SimpleHapticsController()
	{
		Windows.Devices.Haptics.SimpleHapticsController _ret;
		Debug.OK((cast(Windows.Devices.Haptics.IVibrationDevice)this.asInterface(uuid("40f21a3e-8844-47ff-b312-06185a3844da"))).get_SimpleHapticsController(&_ret));
		return _ret;
	}

	private static Windows.Devices.Haptics.IVibrationDeviceStatics _staticInstance;
	public static Windows.Devices.Haptics.IVibrationDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Haptics.IVibrationDeviceStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Haptics.VibrationAccessStatus) RequestAccessAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Haptics.VibrationAccessStatus) _ret;
		Debug.OK(staticInstance.abi_RequestAccessAsync(&_ret));
		return _ret;
	}
	static wstring GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return hstring(_ret).d_str;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Haptics.VibrationDevice) FromIdAsync(wstring deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Haptics.VibrationDevice) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(hstring(deviceId).handle, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Haptics.VibrationDevice) GetDefaultAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Haptics.VibrationDevice) _ret;
		Debug.OK(staticInstance.abi_GetDefaultAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Haptics.VibrationDevice)) FindAllAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Haptics.VibrationDevice)) _ret;
		Debug.OK(staticInstance.abi_FindAllAsync(&_ret));
		return _ret;
	}
}

enum VibrationAccessStatus
{
	Allowed = 0,
	DeniedByUser = 1,
	DeniedBySystem = 2,
	DeniedByEnergySaver = 3
}