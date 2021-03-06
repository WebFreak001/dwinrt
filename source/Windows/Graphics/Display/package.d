module Windows.Graphics.Display;

import dwinrt;

@uuid("dbdd8b01-f1a1-46d1-9ee3-543bcc995980")
interface DisplayPropertiesEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender);
}

@uuid("96c9621a-c143-4392-bedd-4a7e9574c8fd")
@WinrtFactory("Windows.Graphics.Display.BrightnessOverride")
interface IBrightnessOverride : IInspectable
{
extern(Windows):
	HRESULT get_IsSupported(bool* return_value);
	HRESULT get_IsOverrideActive(bool* return_value);
	HRESULT get_BrightnessLevel(double* return_level);
	HRESULT abi_SetBrightnessLevel(double brightnessLevel, Windows.Graphics.Display.DisplayBrightnessOverrideOptions options);
	HRESULT abi_SetBrightnessScenario(Windows.Graphics.Display.DisplayBrightnessScenario scenario, Windows.Graphics.Display.DisplayBrightnessOverrideOptions options);
	HRESULT abi_GetLevelForScenario(Windows.Graphics.Display.DisplayBrightnessScenario scenario, double* return_brightnessLevel);
	HRESULT abi_StartOverride();
	HRESULT abi_StopOverride();
	HRESULT add_IsSupportedChanged(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.BrightnessOverride, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_IsSupportedChanged(EventRegistrationToken token);
	HRESULT add_IsOverrideActiveChanged(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.BrightnessOverride, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_IsOverrideActiveChanged(EventRegistrationToken token);
	HRESULT add_BrightnessLevelChanged(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.BrightnessOverride, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_BrightnessLevelChanged(EventRegistrationToken token);
}

@uuid("03a7b9ed-e1f1-4a68-a11f-946ad8ce5393")
@WinrtFactory("Windows.Graphics.Display.BrightnessOverride")
interface IBrightnessOverrideStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefaultForSystem(Windows.Graphics.Display.BrightnessOverride* return_value);
	HRESULT abi_GetForCurrentView(Windows.Graphics.Display.BrightnessOverride* return_value);
	HRESULT abi_SaveForSystemAsync(Windows.Graphics.Display.BrightnessOverride value, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799")
@WinrtFactory("Windows.Graphics.Display.DisplayInformation")
interface IDisplayInformation : IInspectable
{
extern(Windows):
	HRESULT get_CurrentOrientation(Windows.Graphics.Display.DisplayOrientations* return_value);
	HRESULT get_NativeOrientation(Windows.Graphics.Display.DisplayOrientations* return_value);
	HRESULT add_OrientationChanged(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.DisplayInformation, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_OrientationChanged(EventRegistrationToken token);
	HRESULT get_ResolutionScale(Windows.Graphics.Display.ResolutionScale* return_value);
	HRESULT get_LogicalDpi(float* return_value);
	HRESULT get_RawDpiX(float* return_value);
	HRESULT get_RawDpiY(float* return_value);
	HRESULT add_DpiChanged(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.DisplayInformation, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_DpiChanged(EventRegistrationToken token);
	HRESULT get_StereoEnabled(bool* return_value);
	HRESULT add_StereoEnabledChanged(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.DisplayInformation, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_StereoEnabledChanged(EventRegistrationToken token);
	HRESULT abi_GetColorProfileAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream)* return_asyncInfo);
	HRESULT add_ColorProfileChanged(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.DisplayInformation, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_ColorProfileChanged(EventRegistrationToken token);
}

@uuid("4dcd0021-fad1-4b8e-8edf-775887b8bf19")
@WinrtFactory("Windows.Graphics.Display.DisplayInformation")
interface IDisplayInformation2_Base : IInspectable
{
extern(Windows):
	HRESULT get_RawPixelsPerViewPixel(double* return_value);
}
@uuid("4dcd0021-fad1-4b8e-8edf-775887b8bf19")
@WinrtFactory("Windows.Graphics.Display.DisplayInformation")
interface IDisplayInformation2 : IDisplayInformation2_Base, Windows.Graphics.Display.IDisplayInformation {}

@uuid("db15011d-0f09-4466-8ff3-11de9a3c929a")
@WinrtFactory("Windows.Graphics.Display.DisplayInformation")
interface IDisplayInformation3 : IInspectable
{
extern(Windows):
	HRESULT get_DiagonalSizeInInches(Windows.Foundation.IReference!(double)* return_value);
}

@uuid("c972ce2f-1242-46be-b536-e1aafe9e7acf")
@WinrtFactory("Windows.Graphics.Display.DisplayInformation")
interface IDisplayInformation4 : IInspectable
{
extern(Windows):
	HRESULT get_ScreenWidthInRawPixels(UINT32* return_value);
	HRESULT get_ScreenHeightInRawPixels(UINT32* return_value);
}

@uuid("c6a02a6c-d452-44dc-ba07-96f3c6adf9d1")
@WinrtFactory("Windows.Graphics.Display.DisplayInformation")
interface IDisplayInformationStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.Graphics.Display.DisplayInformation* return_current);
	HRESULT get_AutoRotationPreferences(Windows.Graphics.Display.DisplayOrientations* return_value);
	HRESULT set_AutoRotationPreferences(Windows.Graphics.Display.DisplayOrientations value);
	HRESULT add_DisplayContentsInvalidated(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.DisplayInformation, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_DisplayContentsInvalidated(EventRegistrationToken token);
}

@uuid("6937ed8d-30ea-4ded-8271-4553ff02f68a")
@WinrtFactory("Windows.Graphics.Display.DisplayProperties")
interface IDisplayPropertiesStatics : IInspectable
{
extern(Windows):
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT get_CurrentOrientation(Windows.Graphics.Display.DisplayOrientations* return_value);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT get_NativeOrientation(Windows.Graphics.Display.DisplayOrientations* return_value);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT get_AutoRotationPreferences(Windows.Graphics.Display.DisplayOrientations* return_value);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT set_AutoRotationPreferences(Windows.Graphics.Display.DisplayOrientations value);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT add_OrientationChanged(Windows.Graphics.Display.DisplayPropertiesEventHandler handler, EventRegistrationToken* return_token);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT remove_OrientationChanged(EventRegistrationToken token);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT get_ResolutionScale(Windows.Graphics.Display.ResolutionScale* return_value);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT get_LogicalDpi(float* return_value);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT add_LogicalDpiChanged(Windows.Graphics.Display.DisplayPropertiesEventHandler handler, EventRegistrationToken* return_token);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT remove_LogicalDpiChanged(EventRegistrationToken token);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT get_StereoEnabled(bool* return_value);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT add_StereoEnabledChanged(Windows.Graphics.Display.DisplayPropertiesEventHandler handler, EventRegistrationToken* return_token);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT remove_StereoEnabledChanged(EventRegistrationToken token);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT abi_GetColorProfileAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream)* return_asyncInfo);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT add_ColorProfileChanged(Windows.Graphics.Display.DisplayPropertiesEventHandler handler, EventRegistrationToken* return_token);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT remove_ColorProfileChanged(EventRegistrationToken token);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT add_DisplayContentsInvalidated(Windows.Graphics.Display.DisplayPropertiesEventHandler handler, EventRegistrationToken* return_token);
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	HRESULT remove_DisplayContentsInvalidated(EventRegistrationToken token);
}

interface BrightnessOverride : Windows.Graphics.Display.IBrightnessOverride
{
extern(Windows):
	final bool IsSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Display.IBrightnessOverride)this.asInterface(uuid("96c9621a-c143-4392-bedd-4a7e9574c8fd"))).get_IsSupported(&_ret));
		return _ret;
	}
	final bool IsOverrideActive()
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Display.IBrightnessOverride)this.asInterface(uuid("96c9621a-c143-4392-bedd-4a7e9574c8fd"))).get_IsOverrideActive(&_ret));
		return _ret;
	}
	final double BrightnessLevel()
	{
		double _ret;
		Debug.OK((cast(Windows.Graphics.Display.IBrightnessOverride)this.asInterface(uuid("96c9621a-c143-4392-bedd-4a7e9574c8fd"))).get_BrightnessLevel(&_ret));
		return _ret;
	}
	final void SetBrightnessLevel(double brightnessLevel, Windows.Graphics.Display.DisplayBrightnessOverrideOptions options)
	{
		Debug.OK((cast(Windows.Graphics.Display.IBrightnessOverride)this.asInterface(uuid("96c9621a-c143-4392-bedd-4a7e9574c8fd"))).abi_SetBrightnessLevel(brightnessLevel, options));
	}
	final void SetBrightnessScenario(Windows.Graphics.Display.DisplayBrightnessScenario scenario, Windows.Graphics.Display.DisplayBrightnessOverrideOptions options)
	{
		Debug.OK((cast(Windows.Graphics.Display.IBrightnessOverride)this.asInterface(uuid("96c9621a-c143-4392-bedd-4a7e9574c8fd"))).abi_SetBrightnessScenario(scenario, options));
	}
	final double GetLevelForScenario(Windows.Graphics.Display.DisplayBrightnessScenario scenario)
	{
		double _ret;
		Debug.OK((cast(Windows.Graphics.Display.IBrightnessOverride)this.asInterface(uuid("96c9621a-c143-4392-bedd-4a7e9574c8fd"))).abi_GetLevelForScenario(scenario, &_ret));
		return _ret;
	}
	final void StartOverride()
	{
		Debug.OK((cast(Windows.Graphics.Display.IBrightnessOverride)this.asInterface(uuid("96c9621a-c143-4392-bedd-4a7e9574c8fd"))).abi_StartOverride());
	}
	final void StopOverride()
	{
		Debug.OK((cast(Windows.Graphics.Display.IBrightnessOverride)this.asInterface(uuid("96c9621a-c143-4392-bedd-4a7e9574c8fd"))).abi_StopOverride());
	}
	final EventRegistrationToken OnIsSupportedChanged(void delegate(Windows.Graphics.Display.BrightnessOverride, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Graphics.Display.IBrightnessOverride)this.asInterface(uuid("96c9621a-c143-4392-bedd-4a7e9574c8fd"))).add_IsSupportedChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.BrightnessOverride, IInspectable), Windows.Graphics.Display.BrightnessOverride, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeIsSupportedChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Graphics.Display.IBrightnessOverride)this.asInterface(uuid("96c9621a-c143-4392-bedd-4a7e9574c8fd"))).remove_IsSupportedChanged(token));
	}
	final EventRegistrationToken OnIsOverrideActiveChanged(void delegate(Windows.Graphics.Display.BrightnessOverride, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Graphics.Display.IBrightnessOverride)this.asInterface(uuid("96c9621a-c143-4392-bedd-4a7e9574c8fd"))).add_IsOverrideActiveChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.BrightnessOverride, IInspectable), Windows.Graphics.Display.BrightnessOverride, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeIsOverrideActiveChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Graphics.Display.IBrightnessOverride)this.asInterface(uuid("96c9621a-c143-4392-bedd-4a7e9574c8fd"))).remove_IsOverrideActiveChanged(token));
	}
	final EventRegistrationToken OnBrightnessLevelChanged(void delegate(Windows.Graphics.Display.BrightnessOverride, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Graphics.Display.IBrightnessOverride)this.asInterface(uuid("96c9621a-c143-4392-bedd-4a7e9574c8fd"))).add_BrightnessLevelChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.BrightnessOverride, IInspectable), Windows.Graphics.Display.BrightnessOverride, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeBrightnessLevelChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Graphics.Display.IBrightnessOverride)this.asInterface(uuid("96c9621a-c143-4392-bedd-4a7e9574c8fd"))).remove_BrightnessLevelChanged(token));
	}

	private static Windows.Graphics.Display.IBrightnessOverrideStatics _staticInstance;
	public static Windows.Graphics.Display.IBrightnessOverrideStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Graphics.Display.IBrightnessOverrideStatics);
		return _staticInstance;
	}
	static Windows.Graphics.Display.BrightnessOverride GetDefaultForSystem()
	{
		Windows.Graphics.Display.BrightnessOverride _ret;
		Debug.OK(staticInstance.abi_GetDefaultForSystem(&_ret));
		return _ret;
	}
	static Windows.Graphics.Display.BrightnessOverride GetForCurrentView()
	{
		Windows.Graphics.Display.BrightnessOverride _ret;
		Debug.OK(staticInstance.abi_GetForCurrentView(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(bool) SaveForSystemAsync(Windows.Graphics.Display.BrightnessOverride value)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(staticInstance.abi_SaveForSystemAsync(value, &_ret));
		return _ret;
	}
}

interface DisplayInformation : Windows.Graphics.Display.IDisplayInformation, Windows.Graphics.Display.IDisplayInformation2, Windows.Graphics.Display.IDisplayInformation3, Windows.Graphics.Display.IDisplayInformation4
{
extern(Windows):
	final Windows.Graphics.Display.DisplayOrientations CurrentOrientation()
	{
		Windows.Graphics.Display.DisplayOrientations _ret;
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation)this.asInterface(uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799"))).get_CurrentOrientation(&_ret));
		return _ret;
	}
	final Windows.Graphics.Display.DisplayOrientations NativeOrientation()
	{
		Windows.Graphics.Display.DisplayOrientations _ret;
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation)this.asInterface(uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799"))).get_NativeOrientation(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnOrientationChanged(void delegate(Windows.Graphics.Display.DisplayInformation, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation)this.asInterface(uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799"))).add_OrientationChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.DisplayInformation, IInspectable), Windows.Graphics.Display.DisplayInformation, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeOrientationChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation)this.asInterface(uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799"))).remove_OrientationChanged(token));
	}
	final Windows.Graphics.Display.ResolutionScale ResolutionScale()
	{
		Windows.Graphics.Display.ResolutionScale _ret;
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation)this.asInterface(uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799"))).get_ResolutionScale(&_ret));
		return _ret;
	}
	final float LogicalDpi()
	{
		float _ret;
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation)this.asInterface(uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799"))).get_LogicalDpi(&_ret));
		return _ret;
	}
	final float RawDpiX()
	{
		float _ret;
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation)this.asInterface(uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799"))).get_RawDpiX(&_ret));
		return _ret;
	}
	final float RawDpiY()
	{
		float _ret;
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation)this.asInterface(uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799"))).get_RawDpiY(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnDpiChanged(void delegate(Windows.Graphics.Display.DisplayInformation, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation)this.asInterface(uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799"))).add_DpiChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.DisplayInformation, IInspectable), Windows.Graphics.Display.DisplayInformation, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeDpiChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation)this.asInterface(uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799"))).remove_DpiChanged(token));
	}
	final bool StereoEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation)this.asInterface(uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799"))).get_StereoEnabled(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnStereoEnabledChanged(void delegate(Windows.Graphics.Display.DisplayInformation, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation)this.asInterface(uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799"))).add_StereoEnabledChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.DisplayInformation, IInspectable), Windows.Graphics.Display.DisplayInformation, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeStereoEnabledChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation)this.asInterface(uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799"))).remove_StereoEnabledChanged(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream) GetColorProfileAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream) _ret;
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation)this.asInterface(uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799"))).abi_GetColorProfileAsync(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnColorProfileChanged(void delegate(Windows.Graphics.Display.DisplayInformation, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation)this.asInterface(uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799"))).add_ColorProfileChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.DisplayInformation, IInspectable), Windows.Graphics.Display.DisplayInformation, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeColorProfileChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation)this.asInterface(uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799"))).remove_ColorProfileChanged(token));
	}
	final double RawPixelsPerViewPixel()
	{
		double _ret;
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation2)this.asInterface(uuid("4dcd0021-fad1-4b8e-8edf-775887b8bf19"))).get_RawPixelsPerViewPixel(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) DiagonalSizeInInches()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation3)this.asInterface(uuid("db15011d-0f09-4466-8ff3-11de9a3c929a"))).get_DiagonalSizeInInches(&_ret));
		return _ret;
	}
	final UINT32 ScreenWidthInRawPixels()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation4)this.asInterface(uuid("c972ce2f-1242-46be-b536-e1aafe9e7acf"))).get_ScreenWidthInRawPixels(&_ret));
		return _ret;
	}
	final UINT32 ScreenHeightInRawPixels()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Graphics.Display.IDisplayInformation4)this.asInterface(uuid("c972ce2f-1242-46be-b536-e1aafe9e7acf"))).get_ScreenHeightInRawPixels(&_ret));
		return _ret;
	}

	private static Windows.Graphics.Display.IDisplayInformationStatics _staticInstance;
	public static Windows.Graphics.Display.IDisplayInformationStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Graphics.Display.IDisplayInformationStatics);
		return _staticInstance;
	}
	static Windows.Graphics.Display.DisplayInformation GetForCurrentView()
	{
		Windows.Graphics.Display.DisplayInformation _ret;
		Debug.OK(staticInstance.abi_GetForCurrentView(&_ret));
		return _ret;
	}
	static Windows.Graphics.Display.DisplayOrientations AutoRotationPreferences()
	{
		Windows.Graphics.Display.DisplayOrientations _ret;
		Debug.OK(staticInstance.get_AutoRotationPreferences(&_ret));
		return _ret;
	}
	static void AutoRotationPreferences(Windows.Graphics.Display.DisplayOrientations value)
	{
		Debug.OK(staticInstance.set_AutoRotationPreferences(value));
	}
	static EventRegistrationToken OnDisplayContentsInvalidated(void delegate(Windows.Graphics.Display.DisplayInformation, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_DisplayContentsInvalidated(event!(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.DisplayInformation, IInspectable), Windows.Graphics.Display.DisplayInformation, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeDisplayContentsInvalidated(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_DisplayContentsInvalidated(token));
	}
}

interface DisplayProperties
{
	private static Windows.Graphics.Display.IDisplayPropertiesStatics _staticInstance;
	public static Windows.Graphics.Display.IDisplayPropertiesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Graphics.Display.IDisplayPropertiesStatics);
		return _staticInstance;
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static Windows.Graphics.Display.DisplayOrientations CurrentOrientation()
	{
		Windows.Graphics.Display.DisplayOrientations _ret;
		Debug.OK(staticInstance.get_CurrentOrientation(&_ret));
		return _ret;
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static Windows.Graphics.Display.DisplayOrientations NativeOrientation()
	{
		Windows.Graphics.Display.DisplayOrientations _ret;
		Debug.OK(staticInstance.get_NativeOrientation(&_ret));
		return _ret;
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static Windows.Graphics.Display.DisplayOrientations AutoRotationPreferences()
	{
		Windows.Graphics.Display.DisplayOrientations _ret;
		Debug.OK(staticInstance.get_AutoRotationPreferences(&_ret));
		return _ret;
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static void AutoRotationPreferences(Windows.Graphics.Display.DisplayOrientations value)
	{
		Debug.OK(staticInstance.set_AutoRotationPreferences(value));
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static EventRegistrationToken OnOrientationChanged(void delegate(IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_OrientationChanged(event!(Windows.Graphics.Display.DisplayPropertiesEventHandler, IInspectable)(fn), &tok));
		return tok;
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static void removeOrientationChanged(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_OrientationChanged(token));
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static Windows.Graphics.Display.ResolutionScale ResolutionScale()
	{
		Windows.Graphics.Display.ResolutionScale _ret;
		Debug.OK(staticInstance.get_ResolutionScale(&_ret));
		return _ret;
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static float LogicalDpi()
	{
		float _ret;
		Debug.OK(staticInstance.get_LogicalDpi(&_ret));
		return _ret;
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static EventRegistrationToken OnLogicalDpiChanged(void delegate(IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_LogicalDpiChanged(event!(Windows.Graphics.Display.DisplayPropertiesEventHandler, IInspectable)(fn), &tok));
		return tok;
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static void removeLogicalDpiChanged(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_LogicalDpiChanged(token));
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static bool StereoEnabled()
	{
		bool _ret;
		Debug.OK(staticInstance.get_StereoEnabled(&_ret));
		return _ret;
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static EventRegistrationToken OnStereoEnabledChanged(void delegate(IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_StereoEnabledChanged(event!(Windows.Graphics.Display.DisplayPropertiesEventHandler, IInspectable)(fn), &tok));
		return tok;
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static void removeStereoEnabledChanged(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_StereoEnabledChanged(token));
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream) GetColorProfileAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream) _ret;
		Debug.OK(staticInstance.abi_GetColorProfileAsync(&_ret));
		return _ret;
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static EventRegistrationToken OnColorProfileChanged(void delegate(IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_ColorProfileChanged(event!(Windows.Graphics.Display.DisplayPropertiesEventHandler, IInspectable)(fn), &tok));
		return tok;
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static void removeColorProfileChanged(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_ColorProfileChanged(token));
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static EventRegistrationToken OnDisplayContentsInvalidated(void delegate(IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_DisplayContentsInvalidated(event!(Windows.Graphics.Display.DisplayPropertiesEventHandler, IInspectable)(fn), &tok));
		return tok;
	}
	deprecated("DisplayProperties may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayInformation.")
	static void removeDisplayContentsInvalidated(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_DisplayContentsInvalidated(token));
	}
}

@bitflags
enum DisplayBrightnessOverrideOptions
{
	None = 0x0,
	UseDimmedPolicyWhenBatteryIsLow = 0x1
}

enum DisplayBrightnessScenario
{
	DefaultBrightness = 0,
	IdleBrightness = 1,
	BarcodeReadingBrightness = 2,
	FullBrightness = 3
}

@bitflags
enum DisplayOrientations
{
	None = 0x0,
	Landscape = 0x1,
	Portrait = 0x2,
	LandscapeFlipped = 0x4,
	PortraitFlipped = 0x8
}

enum ResolutionScale
{
	Invalid = 0,
	Scale100Percent = 100,
	Scale120Percent = 120,
	Scale125Percent = 125,
	Scale140Percent = 140,
	Scale150Percent = 150,
	Scale160Percent = 160,
	Scale175Percent = 175,
	Scale180Percent = 180,
	Scale200Percent = 200,
	Scale225Percent = 225,
	Scale250Percent = 250,
	Scale300Percent = 300,
	Scale350Percent = 350,
	Scale400Percent = 400,
	Scale450Percent = 450,
	Scale500Percent = 500
}