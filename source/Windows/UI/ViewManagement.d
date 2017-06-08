module Windows.UI.ViewManagement;

import dwinrt;

@uuid("fe0e8147-c4c0-4562-b962-1327b52ad5b9")
@WinrtFactory("Windows.UI.ViewManagement.AccessibilitySettings")
interface IAccessibilitySettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HighContrast(bool* return_value);
	HRESULT get_HighContrastScheme(HSTRING* return_value);
	HRESULT add_HighContrastChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.AccessibilitySettings, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_HighContrastChanged(EventRegistrationToken cookie);
}

@uuid("dca71bb6-7350-492b-aac7-c8a13d7224ad")
@WinrtFactory("Windows.UI.ViewManagement.ActivationViewSwitcher")
interface IActivationViewSwitcher : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ShowAsStandaloneAsync(INT32 viewId, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_ShowAsStandaloneWithSizePreferenceAsync(INT32 viewId, Windows.UI.ViewManagement.ViewSizePreference sizePreference, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_IsViewPresentedOnActivationVirtualDesktop(INT32 viewId, bool* return_value);
}

@uuid("d222d519-4361-451e-96c4-60f4f9742db0")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationView")
interface IApplicationView : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Orientation(Windows.UI.ViewManagement.ApplicationViewOrientation* return_value);
	HRESULT get_AdjacentToLeftDisplayEdge(bool* return_value);
	HRESULT get_AdjacentToRightDisplayEdge(bool* return_value);
	deprecated("To check full screen mode, use IsFullScreenMode. To check if the view is adjacent to both edges, use AdjacentToLeftDisplayEdge and AdjacentToRightDisplayEdge. For more info, see MSDN.")
	HRESULT get_IsFullScreen(bool* return_value);
	HRESULT get_IsOnLockScreen(bool* return_value);
	HRESULT get_IsScreenCaptureEnabled(bool* return_value);
	HRESULT set_IsScreenCaptureEnabled(bool value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT get_Id(INT32* return_value);
	HRESULT add_Consolidated(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.ApplicationView, Windows.UI.ViewManagement.ApplicationViewConsolidatedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Consolidated(EventRegistrationToken token);
}

@uuid("e876b196-a545-40dc-b594-450cba68cc00")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationView")
interface IApplicationView2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("Use the TryEnterFullScreen method and IsFullScreenMode property instead of SuppressSystemOverlays. For more info, see MSDN.")
	HRESULT get_SuppressSystemOverlays(bool* return_value);
	deprecated("Use the TryEnterFullScreen method and IsFullScreenMode property instead of SuppressSystemOverlays. For more info, see MSDN.")
	HRESULT set_SuppressSystemOverlays(bool value);
	HRESULT get_VisibleBounds(Windows.Foundation.Rect* return_value);
	HRESULT add_VisibleBoundsChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.ApplicationView, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_VisibleBoundsChanged(EventRegistrationToken token);
	HRESULT abi_SetDesiredBoundsMode(Windows.UI.ViewManagement.ApplicationViewBoundsMode boundsMode, bool* return_success);
	HRESULT get_DesiredBoundsMode(Windows.UI.ViewManagement.ApplicationViewBoundsMode* return_value);
}

@uuid("903c9ce5-793a-4fdf-a2b2-af1ac21e3108")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationView")
interface IApplicationView3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TitleBar(Windows.UI.ViewManagement.ApplicationViewTitleBar* return_value);
	HRESULT get_FullScreenSystemOverlayMode(Windows.UI.ViewManagement.FullScreenSystemOverlayMode* return_value);
	HRESULT set_FullScreenSystemOverlayMode(Windows.UI.ViewManagement.FullScreenSystemOverlayMode value);
	HRESULT get_IsFullScreenMode(bool* return_value);
	HRESULT abi_TryEnterFullScreenMode(bool* return_success);
	HRESULT abi_ExitFullScreenMode();
	HRESULT abi_ShowStandardSystemOverlays();
	HRESULT abi_TryResizeView(Windows.Foundation.Size value, bool* return_success);
	HRESULT abi_SetPreferredMinSize(Windows.Foundation.Size minSize);
}

@uuid("15e5cbec-9e0f-46b5-bc3f-9bf653e74b5e")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationView")
interface IApplicationView4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ViewMode(Windows.UI.ViewManagement.ApplicationViewMode* return_value);
	HRESULT abi_IsViewModeSupported(Windows.UI.ViewManagement.ApplicationViewMode viewMode, bool* return_isViewModeSupported);
	HRESULT abi_TryEnterViewModeAsync(Windows.UI.ViewManagement.ApplicationViewMode viewMode, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_TryEnterViewModeWithPreferencesAsync(Windows.UI.ViewManagement.ApplicationViewMode viewMode, Windows.UI.ViewManagement.ViewModePreferences viewModePreferences, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_TryConsolidateAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("514449ec-7ea2-4de7-a6a6-7dfbaaebb6fb")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationViewConsolidatedEventArgs")
interface IApplicationViewConsolidatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsUserInitiated(bool* return_value);
}

@uuid("1c199ecc-6dc1-40f4-afee-07d9ea296430")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationViewConsolidatedEventArgs")
interface IApplicationViewConsolidatedEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsAppInitiated(bool* return_value);
}

@uuid("bc792ebd-64fe-4b65-a0c0-901ce2b68636")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationView")
interface IApplicationViewFullscreenStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("IApplicationViewFullscreenStatics is deprecated after Windows 8. Please use other resize APIs.")
	HRESULT abi_TryUnsnapToFullscreen(bool* return_success);
}

@uuid("c446fb5d-4793-4896-a8e2-be57a8bb0f50")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationView")
interface IApplicationViewInteropStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetApplicationViewIdForWindow(Windows.UI.Core.ICoreWindow window, INT32* return_id);
}

@uuid("b08fecf0-b946-45c8-a5e3-71f5aa78f861")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationViewScaling")
interface IApplicationViewScalingStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DisableLayoutScaling(bool* return_value);
	HRESULT abi_TrySetDisableLayoutScaling(bool disableLayoutScaling, bool* return_success);
}

@uuid("010a6306-c433-44e5-a9f2-bd84d4030a95")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationView")
interface IApplicationViewStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("Value may be altered or unavailable for releases after Windows 8.1. Instead, query for window layout sizes directly.")
	HRESULT get_Value(Windows.UI.ViewManagement.ApplicationViewState* return_value);
	deprecated("TryUnsnap may be altered or unavailable for releases after Windows 8.1. Apps can be continuously resized, but cannot be snapped, starting in Windows 8.1.")
	HRESULT abi_TryUnsnap(bool* return_success);
}

@uuid("af338ae5-cf64-423c-85e5-f3e72448fb23")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationView")
interface IApplicationViewStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.ViewManagement.ApplicationView* return_current);
	HRESULT get_TerminateAppOnFinalViewClose(bool* return_value);
	HRESULT set_TerminateAppOnFinalViewClose(bool value);
}

@uuid("a28d7594-8c41-4e13-9719-5164796fe4c7")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationView")
interface IApplicationViewStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PreferredLaunchWindowingMode(Windows.UI.ViewManagement.ApplicationViewWindowingMode* return_value);
	HRESULT set_PreferredLaunchWindowingMode(Windows.UI.ViewManagement.ApplicationViewWindowingMode value);
	HRESULT get_PreferredLaunchViewSize(Windows.Foundation.Size* return_value);
	HRESULT set_PreferredLaunchViewSize(Windows.Foundation.Size value);
}

@uuid("975f2f1e-e656-4c5e-a0a1-717c6ffa7d64")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationViewSwitcher")
interface IApplicationViewSwitcherStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_DisableShowingMainViewOnActivation();
	HRESULT abi_TryShowAsStandaloneAsync(INT32 viewId, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_TryShowAsStandaloneWithSizePreferenceAsync(INT32 viewId, Windows.UI.ViewManagement.ViewSizePreference sizePreference, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_TryShowAsStandaloneWithAnchorViewAndSizePreferenceAsync(INT32 viewId, Windows.UI.ViewManagement.ViewSizePreference sizePreference, INT32 anchorViewId, Windows.UI.ViewManagement.ViewSizePreference anchorSizePreference, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_SwitchAsync(INT32 viewId, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_SwitchFromViewAsync(INT32 toViewId, INT32 fromViewId, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_SwitchFromViewWithOptionsAsync(INT32 toViewId, INT32 fromViewId, Windows.UI.ViewManagement.ApplicationViewSwitchingOptions options, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_PrepareForCustomAnimatedSwitchAsync(INT32 toViewId, INT32 fromViewId, Windows.UI.ViewManagement.ApplicationViewSwitchingOptions options, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("60e995cd-4fc2-48c4-b8e3-395f2b9f0fc1")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationViewSwitcher")
interface IApplicationViewSwitcherStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_DisableSystemViewActivationPolicy();
}

@uuid("92059420-80a7-486d-b21f-c7a4a242a383")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationViewSwitcher")
interface IApplicationViewSwitcherStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TryShowAsViewModeAsync(INT32 viewId, Windows.UI.ViewManagement.ApplicationViewMode viewMode, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_TryShowAsViewModeWithPreferencesAsync(INT32 viewId, Windows.UI.ViewManagement.ApplicationViewMode viewMode, Windows.UI.ViewManagement.ViewModePreferences viewModePreferences, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationViewTitleBar")
interface IApplicationViewTitleBar : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_ForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value);
	HRESULT get_ForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color)* return_value);
	HRESULT set_BackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value);
	HRESULT get_BackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color)* return_value);
	HRESULT set_ButtonForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value);
	HRESULT get_ButtonForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color)* return_value);
	HRESULT set_ButtonBackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value);
	HRESULT get_ButtonBackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color)* return_value);
	HRESULT set_ButtonHoverForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value);
	HRESULT get_ButtonHoverForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color)* return_value);
	HRESULT set_ButtonHoverBackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value);
	HRESULT get_ButtonHoverBackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color)* return_value);
	HRESULT set_ButtonPressedForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value);
	HRESULT get_ButtonPressedForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color)* return_value);
	HRESULT set_ButtonPressedBackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value);
	HRESULT get_ButtonPressedBackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color)* return_value);
	HRESULT set_InactiveForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value);
	HRESULT get_InactiveForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color)* return_value);
	HRESULT set_InactiveBackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value);
	HRESULT get_InactiveBackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color)* return_value);
	HRESULT set_ButtonInactiveForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value);
	HRESULT get_ButtonInactiveForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color)* return_value);
	HRESULT set_ButtonInactiveBackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value);
	HRESULT get_ButtonInactiveBackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color)* return_value);
}

@uuid("8574bc63-3c17-408e-9408-8a1a9ea81bfa")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationViewTransferContext")
interface IApplicationViewTransferContext : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ViewId(INT32* return_value);
	HRESULT set_ViewId(INT32 value);
}

@uuid("15a89d92-dd79-4b0b-bc47-d5f195f14661")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationViewTransferContext")
interface IApplicationViewTransferContextStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DataPackageFormatId(HSTRING* return_value);
}

@uuid("640ada70-06f3-4c87-a678-9829c9127c28")
@WinrtFactory("Windows.UI.ViewManagement.InputPane")
interface IInputPane : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_Showing(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.InputPane, Windows.UI.ViewManagement.InputPaneVisibilityEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Showing(EventRegistrationToken token);
	HRESULT add_Hiding(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.InputPane, Windows.UI.ViewManagement.InputPaneVisibilityEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Hiding(EventRegistrationToken token);
	HRESULT get_OccludedRect(Windows.Foundation.Rect* return_value);
}

@uuid("8a6b3f26-7090-4793-944c-c3f2cde26276")
@WinrtFactory("Windows.UI.ViewManagement.InputPane")
interface IInputPane2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TryShow(bool* return_result);
	HRESULT abi_TryHide(bool* return_result);
}

@uuid("088bb24f-962f-489d-aa6e-c6be1a0a6e52")
@WinrtFactory("Windows.UI.ViewManagement.InputPane")
interface IInputPaneControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Visible(bool* return_value);
	HRESULT set_Visible(bool value);
}

@uuid("95f4af3a-ef47-424a-9741-fd2815eba2bd")
@WinrtFactory("Windows.UI.ViewManagement.InputPane")
interface IInputPaneStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.ViewManagement.InputPane* return_inputPane);
}

@uuid("d243e016-d907-4fcc-bb8d-f77baa5028f1")
@WinrtFactory("Windows.UI.ViewManagement.InputPaneVisibilityEventArgs")
interface IInputPaneVisibilityEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OccludedRect(Windows.Foundation.Rect* return_value);
	HRESULT set_EnsuredFocusedElementInView(bool value);
	HRESULT get_EnsuredFocusedElementInView(bool* return_value);
}

@uuid("b65f913d-e2f0-4ffd-ba95-34241647e45c")
@WinrtFactory("Windows.UI.ViewManagement.ProjectionManager")
interface IProjectionManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_StartProjectingAsync(INT32 projectionViewId, INT32 anchorViewId, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_SwapDisplaysForViewsAsync(INT32 projectionViewId, INT32 anchorViewId, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_StopProjectingAsync(INT32 projectionViewId, INT32 anchorViewId, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT get_ProjectionDisplayAvailable(bool* return_value);
	HRESULT add_ProjectionDisplayAvailableChanged(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_ProjectionDisplayAvailableChanged(EventRegistrationToken token);
}

@uuid("f33d2f43-2749-4cde-b977-c0c41e7415d1")
@WinrtFactory("Windows.UI.ViewManagement.ProjectionManager")
interface IProjectionManagerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_StartProjectingWithDeviceInfoAsync(INT32 projectionViewId, INT32 anchorViewId, Windows.Devices.Enumeration.DeviceInformation displayDeviceInfo, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_RequestStartProjectingAsync(INT32 projectionViewId, INT32 anchorViewId, Windows.Foundation.Rect selection, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestStartProjectingWithPlacementAsync(INT32 projectionViewId, INT32 anchorViewId, Windows.Foundation.Rect selection, Windows.UI.Popups.Placement prefferedPlacement, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_GetDeviceSelector(HSTRING* return_selector);
}

@uuid("85361600-1c63-4627-bcb1-3a89e0bc9c55")
@WinrtFactory("Windows.UI.ViewManagement.UISettings")
interface IUISettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HandPreference(Windows.UI.ViewManagement.HandPreference* return_value);
	HRESULT get_CursorSize(Windows.Foundation.Size* return_value);
	HRESULT get_ScrollBarSize(Windows.Foundation.Size* return_value);
	HRESULT get_ScrollBarArrowSize(Windows.Foundation.Size* return_value);
	HRESULT get_ScrollBarThumbBoxSize(Windows.Foundation.Size* return_value);
	HRESULT get_MessageDuration(UINT32* return_value);
	HRESULT get_AnimationsEnabled(bool* return_value);
	HRESULT get_CaretBrowsingEnabled(bool* return_value);
	HRESULT get_CaretBlinkRate(UINT32* return_value);
	HRESULT get_CaretWidth(UINT32* return_value);
	HRESULT get_DoubleClickTime(UINT32* return_value);
	HRESULT get_MouseHoverTime(UINT32* return_value);
	HRESULT abi_UIElementColor(Windows.UI.ViewManagement.UIElementType desiredElement, Windows.UI.Color* return_value);
}

@uuid("bad82401-2721-44f9-bb91-2bb228be442f")
@WinrtFactory("Windows.UI.ViewManagement.UISettings")
interface IUISettings2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TextScaleFactor(double* return_value);
	HRESULT add_TextScaleFactorChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.UISettings, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_TextScaleFactorChanged(EventRegistrationToken cookie);
}

@uuid("03021be4-5254-4781-8194-5168f7d06d7b")
@WinrtFactory("Windows.UI.ViewManagement.UISettings")
interface IUISettings3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetColorValue(Windows.UI.ViewManagement.UIColorType desiredColor, Windows.UI.Color* return_value);
	HRESULT add_ColorValuesChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.UISettings, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_ColorValuesChanged(EventRegistrationToken cookie);
}

@uuid("52bb3002-919b-4d6b-9b78-8dd66ff4b93b")
@WinrtFactory("Windows.UI.ViewManagement.UISettings")
interface IUISettings4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AdvancedEffectsEnabled(bool* return_value);
	HRESULT add_AdvancedEffectsEnabledChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.UISettings, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_AdvancedEffectsEnabledChanged(EventRegistrationToken cookie);
}

@uuid("c63657f6-8850-470d-88f8-455e16ea2c26")
@WinrtFactory("Windows.UI.ViewManagement.UIViewSettings")
interface IUIViewSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UserInteractionMode(Windows.UI.ViewManagement.UserInteractionMode* return_value);
}

@uuid("595c97a5-f8f6-41cf-b0fb-aacdb81fd5f6")
@WinrtFactory("Windows.UI.ViewManagement.UIViewSettings")
interface IUIViewSettingsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.ViewManagement.UIViewSettings* return_current);
}

@uuid("878fcd3a-0b99-42c9-84d0-d3f1d403554b")
@WinrtFactory("Windows.UI.ViewManagement.ViewModePreferences")
interface IViewModePreferences : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ViewSizePreference(Windows.UI.ViewManagement.ViewSizePreference* return_value);
	HRESULT set_ViewSizePreference(Windows.UI.ViewManagement.ViewSizePreference value);
	HRESULT get_CustomSize(Windows.Foundation.Size* return_value);
	HRESULT set_CustomSize(Windows.Foundation.Size value);
}

@uuid("69b60a65-5de5-40d8-8306-3833df7a2274")
@WinrtFactory("Windows.UI.ViewManagement.ViewModePreferences")
interface IViewModePreferencesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateDefault(Windows.UI.ViewManagement.ApplicationViewMode mode, Windows.UI.ViewManagement.ViewModePreferences* return_result);
}

interface AccessibilitySettings
{
}

interface ActivationViewSwitcher
{
}

interface ApplicationView
{
}

interface ApplicationViewConsolidatedEventArgs
{
}

interface ApplicationViewScaling
{
}

interface ApplicationViewTitleBar
{
}

interface ApplicationViewTransferContext
{
}

interface InputPane
{
}

interface InputPaneVisibilityEventArgs
{
}

interface UISettings
{
}

interface UIViewSettings
{
}

interface ViewModePreferences
{
}

enum ApplicationViewBoundsMode
{
	UseVisible = 0,
	UseCoreWindow = 1
}

enum ApplicationViewMode
{
	Default = 0,
	CompactOverlay = 1
}

enum ApplicationViewOrientation
{
	Landscape = 0,
	Portrait = 1
}

enum ApplicationViewState
{
	FullScreenLandscape = 0,
	Filled = 1,
	Snapped = 2,
	FullScreenPortrait = 3
}

@bitflags
enum ApplicationViewSwitchingOptions
{
	Default = 0x0,
	SkipAnimation = 0x1,
	ConsolidateViews = 0x2
}

enum ApplicationViewWindowingMode
{
	Auto = 0,
	PreferredLaunchViewSize = 1,
	FullScreen = 2
}

enum FullScreenSystemOverlayMode
{
	Standard = 0,
	Minimal = 1
}

enum HandPreference
{
	LeftHanded = 0,
	RightHanded = 1
}

enum UIColorType
{
	Background = 0,
	Foreground = 1,
	AccentDark3 = 2,
	AccentDark2 = 3,
	AccentDark1 = 4,
	Accent = 5,
	AccentLight1 = 6,
	AccentLight2 = 7,
	AccentLight3 = 8,
	Complement = 9
}

enum UIElementType
{
	ActiveCaption = 0,
	Background = 1,
	ButtonFace = 2,
	ButtonText = 3,
	CaptionText = 4,
	GrayText = 5,
	Highlight = 6,
	HighlightText = 7,
	Hotlight = 8,
	InactiveCaption = 9,
	InactiveCaptionText = 10,
	Window = 11,
	WindowText = 12
}

enum UserInteractionMode
{
	Mouse = 0,
	Touch = 1
}

enum ViewSizePreference
{
	Default = 0,
	UseLess = 1,
	UseHalf = 2,
	UseMore = 3,
	UseMinimum = 4,
	UseNone = 5,
	Custom = 6
}