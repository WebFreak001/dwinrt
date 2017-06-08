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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefaultForSystem(Windows.Graphics.Display.BrightnessOverride* return_value);
	HRESULT abi_GetForCurrentView(Windows.Graphics.Display.BrightnessOverride* return_value);
	HRESULT abi_SaveForSystemAsync(Windows.Graphics.Display.BrightnessOverride value, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("bed112ae-adc3-4dc9-ae65-851f4d7d4799")
@WinrtFactory("Windows.Graphics.Display.DisplayInformation")
interface IDisplayInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CurrentOrientation(Windows.Graphics.Display.DisplayOrientations* return_value);
	HRESULT get_NativeOrientation(Windows.Graphics.Display.DisplayOrientations* return_value);
	HRESULT add_OrientationChanged(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.DisplayInformation, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_OrientationChanged(EventRegistrationToken token);
	HRESULT get_ResolutionScale(Windows.Graphics.Display.ResolutionScale* return_value);
	HRESULT get_LogicalDpi(FLOAT* return_value);
	HRESULT get_RawDpiX(FLOAT* return_value);
	HRESULT get_RawDpiY(FLOAT* return_value);
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
interface IDisplayInformation2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RawPixelsPerViewPixel(double* return_value);
}

@uuid("db15011d-0f09-4466-8ff3-11de9a3c929a")
@WinrtFactory("Windows.Graphics.Display.DisplayInformation")
interface IDisplayInformation3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DiagonalSizeInInches(Windows.Foundation.IReference!(double)* return_value);
}

@uuid("c972ce2f-1242-46be-b536-e1aafe9e7acf")
@WinrtFactory("Windows.Graphics.Display.DisplayInformation")
interface IDisplayInformation4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ScreenWidthInRawPixels(UINT32* return_value);
	HRESULT get_ScreenHeightInRawPixels(UINT32* return_value);
}

@uuid("c6a02a6c-d452-44dc-ba07-96f3c6adf9d1")
@WinrtFactory("Windows.Graphics.Display.DisplayInformation")
interface IDisplayInformationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	HRESULT get_LogicalDpi(FLOAT* return_value);
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

interface BrightnessOverride
{
}

interface DisplayInformation
{
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