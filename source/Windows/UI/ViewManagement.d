module Windows.UI.ViewManagement;

import dwinrt;

@uuid("fe0e8147-c4c0-4562-b962-1327b52ad5b9")
@WinrtFactory("Windows.UI.ViewManagement.AccessibilitySettings")
interface IAccessibilitySettings : IInspectable
{
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
extern(Windows):
	HRESULT abi_ShowAsStandaloneAsync(INT32 viewId, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_ShowAsStandaloneWithSizePreferenceAsync(INT32 viewId, Windows.UI.ViewManagement.ViewSizePreference sizePreference, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_IsViewPresentedOnActivationVirtualDesktop(INT32 viewId, bool* return_value);
}

@uuid("d222d519-4361-451e-96c4-60f4f9742db0")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationView")
interface IApplicationView : IInspectable
{
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
extern(Windows):
	HRESULT get_IsUserInitiated(bool* return_value);
}

@uuid("1c199ecc-6dc1-40f4-afee-07d9ea296430")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationViewConsolidatedEventArgs")
interface IApplicationViewConsolidatedEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_IsAppInitiated(bool* return_value);
}

@uuid("bc792ebd-64fe-4b65-a0c0-901ce2b68636")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationView")
interface IApplicationViewFullscreenStatics : IInspectable
{
extern(Windows):
	deprecated("IApplicationViewFullscreenStatics is deprecated after Windows 8. Please use other resize APIs.")
	HRESULT abi_TryUnsnapToFullscreen(bool* return_success);
}

@uuid("c446fb5d-4793-4896-a8e2-be57a8bb0f50")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationView")
interface IApplicationViewInteropStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetApplicationViewIdForWindow(Windows.UI.Core.ICoreWindow window, INT32* return_id);
}

@uuid("1d0ddc23-23f3-4b2d-84fe-74bf37b48b66")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationViewScaling")
interface IApplicationViewScaling : IInspectable
{
}

@uuid("b08fecf0-b946-45c8-a5e3-71f5aa78f861")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationViewScaling")
interface IApplicationViewScalingStatics : IInspectable
{
extern(Windows):
	HRESULT get_DisableLayoutScaling(bool* return_value);
	HRESULT abi_TrySetDisableLayoutScaling(bool disableLayoutScaling, bool* return_success);
}

@uuid("010a6306-c433-44e5-a9f2-bd84d4030a95")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationView")
interface IApplicationViewStatics : IInspectable
{
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
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.ViewManagement.ApplicationView* return_current);
	HRESULT get_TerminateAppOnFinalViewClose(bool* return_value);
	HRESULT set_TerminateAppOnFinalViewClose(bool value);
}

@uuid("a28d7594-8c41-4e13-9719-5164796fe4c7")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationView")
interface IApplicationViewStatics3 : IInspectable
{
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
extern(Windows):
	HRESULT abi_DisableSystemViewActivationPolicy();
}

@uuid("92059420-80a7-486d-b21f-c7a4a242a383")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationViewSwitcher")
interface IApplicationViewSwitcherStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_TryShowAsViewModeAsync(INT32 viewId, Windows.UI.ViewManagement.ApplicationViewMode viewMode, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_TryShowAsViewModeWithPreferencesAsync(INT32 viewId, Windows.UI.ViewManagement.ApplicationViewMode viewMode, Windows.UI.ViewManagement.ViewModePreferences viewModePreferences, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationViewTitleBar")
interface IApplicationViewTitleBar : IInspectable
{
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
extern(Windows):
	HRESULT get_ViewId(INT32* return_value);
	HRESULT set_ViewId(INT32 value);
}

@uuid("15a89d92-dd79-4b0b-bc47-d5f195f14661")
@WinrtFactory("Windows.UI.ViewManagement.ApplicationViewTransferContext")
interface IApplicationViewTransferContextStatics : IInspectable
{
extern(Windows):
	HRESULT get_DataPackageFormatId(HSTRING* return_value);
}

@uuid("640ada70-06f3-4c87-a678-9829c9127c28")
@WinrtFactory("Windows.UI.ViewManagement.InputPane")
interface IInputPane : IInspectable
{
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
extern(Windows):
	HRESULT abi_TryShow(bool* return_result);
	HRESULT abi_TryHide(bool* return_result);
}

@uuid("088bb24f-962f-489d-aa6e-c6be1a0a6e52")
@WinrtFactory("Windows.UI.ViewManagement.InputPane")
interface IInputPaneControl : IInspectable
{
extern(Windows):
	HRESULT get_Visible(bool* return_value);
	HRESULT set_Visible(bool value);
}

@uuid("95f4af3a-ef47-424a-9741-fd2815eba2bd")
@WinrtFactory("Windows.UI.ViewManagement.InputPane")
interface IInputPaneStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.ViewManagement.InputPane* return_inputPane);
}

@uuid("d243e016-d907-4fcc-bb8d-f77baa5028f1")
@WinrtFactory("Windows.UI.ViewManagement.InputPaneVisibilityEventArgs")
interface IInputPaneVisibilityEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_OccludedRect(Windows.Foundation.Rect* return_value);
	HRESULT set_EnsuredFocusedElementInView(bool value);
	HRESULT get_EnsuredFocusedElementInView(bool* return_value);
}

@uuid("b65f913d-e2f0-4ffd-ba95-34241647e45c")
@WinrtFactory("Windows.UI.ViewManagement.ProjectionManager")
interface IProjectionManagerStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_TextScaleFactor(double* return_value);
	HRESULT add_TextScaleFactorChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.UISettings, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_TextScaleFactorChanged(EventRegistrationToken cookie);
}

@uuid("03021be4-5254-4781-8194-5168f7d06d7b")
@WinrtFactory("Windows.UI.ViewManagement.UISettings")
interface IUISettings3 : IInspectable
{
extern(Windows):
	HRESULT abi_GetColorValue(Windows.UI.ViewManagement.UIColorType desiredColor, Windows.UI.Color* return_value);
	HRESULT add_ColorValuesChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.UISettings, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_ColorValuesChanged(EventRegistrationToken cookie);
}

@uuid("52bb3002-919b-4d6b-9b78-8dd66ff4b93b")
@WinrtFactory("Windows.UI.ViewManagement.UISettings")
interface IUISettings4 : IInspectable
{
extern(Windows):
	HRESULT get_AdvancedEffectsEnabled(bool* return_value);
	HRESULT add_AdvancedEffectsEnabledChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.UISettings, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_AdvancedEffectsEnabledChanged(EventRegistrationToken cookie);
}

@uuid("c63657f6-8850-470d-88f8-455e16ea2c26")
@WinrtFactory("Windows.UI.ViewManagement.UIViewSettings")
interface IUIViewSettings : IInspectable
{
extern(Windows):
	HRESULT get_UserInteractionMode(Windows.UI.ViewManagement.UserInteractionMode* return_value);
}

@uuid("595c97a5-f8f6-41cf-b0fb-aacdb81fd5f6")
@WinrtFactory("Windows.UI.ViewManagement.UIViewSettings")
interface IUIViewSettingsStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.ViewManagement.UIViewSettings* return_current);
}

@uuid("878fcd3a-0b99-42c9-84d0-d3f1d403554b")
@WinrtFactory("Windows.UI.ViewManagement.ViewModePreferences")
interface IViewModePreferences : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateDefault(Windows.UI.ViewManagement.ApplicationViewMode mode, Windows.UI.ViewManagement.ViewModePreferences* return_result);
}

interface AccessibilitySettings : Windows.UI.ViewManagement.IAccessibilitySettings
{
extern(Windows):
	final bool HighContrast()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IAccessibilitySettings)this.asInterface(uuid("fe0e8147-c4c0-4562-b962-1327b52ad5b9"))).get_HighContrast(&_ret));
		return _ret;
	}
	final HSTRING HighContrastScheme()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IAccessibilitySettings)this.asInterface(uuid("fe0e8147-c4c0-4562-b962-1327b52ad5b9"))).get_HighContrastScheme(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnHighContrastChanged(void delegate(Windows.UI.ViewManagement.AccessibilitySettings, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.ViewManagement.IAccessibilitySettings)this.asInterface(uuid("fe0e8147-c4c0-4562-b962-1327b52ad5b9"))).add_HighContrastChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.AccessibilitySettings, IInspectable), Windows.UI.ViewManagement.AccessibilitySettings, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeHighContrastChanged(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IAccessibilitySettings)this.asInterface(uuid("fe0e8147-c4c0-4562-b962-1327b52ad5b9"))).remove_HighContrastChanged(cookie));
	}
	static AccessibilitySettings New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(AccessibilitySettings).abi_ActivateInstance(&ret));
		return cast(AccessibilitySettings) ret;
	}
}

interface ActivationViewSwitcher : Windows.UI.ViewManagement.IActivationViewSwitcher
{
extern(Windows):
	final Windows.Foundation.IAsyncAction ShowAsStandaloneAsync(INT32 viewId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IActivationViewSwitcher)this.asInterface(uuid("dca71bb6-7350-492b-aac7-c8a13d7224ad"))).abi_ShowAsStandaloneAsync(viewId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ShowAsStandaloneWithSizePreferenceAsync(INT32 viewId, Windows.UI.ViewManagement.ViewSizePreference sizePreference)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IActivationViewSwitcher)this.asInterface(uuid("dca71bb6-7350-492b-aac7-c8a13d7224ad"))).abi_ShowAsStandaloneWithSizePreferenceAsync(viewId, sizePreference, &_ret));
		return _ret;
	}
	alias ShowAsStandaloneAsync = ShowAsStandaloneWithSizePreferenceAsync;
	final bool IsViewPresentedOnActivationVirtualDesktop(INT32 viewId)
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IActivationViewSwitcher)this.asInterface(uuid("dca71bb6-7350-492b-aac7-c8a13d7224ad"))).abi_IsViewPresentedOnActivationVirtualDesktop(viewId, &_ret));
		return _ret;
	}
}

interface ApplicationView : Windows.UI.ViewManagement.IApplicationView, Windows.UI.ViewManagement.IApplicationView2, Windows.UI.ViewManagement.IApplicationView3, Windows.UI.ViewManagement.IApplicationView4
{
extern(Windows):
	final Windows.UI.ViewManagement.ApplicationViewOrientation Orientation()
	{
		Windows.UI.ViewManagement.ApplicationViewOrientation _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView)this.asInterface(uuid("d222d519-4361-451e-96c4-60f4f9742db0"))).get_Orientation(&_ret));
		return _ret;
	}
	final bool AdjacentToLeftDisplayEdge()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView)this.asInterface(uuid("d222d519-4361-451e-96c4-60f4f9742db0"))).get_AdjacentToLeftDisplayEdge(&_ret));
		return _ret;
	}
	final bool AdjacentToRightDisplayEdge()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView)this.asInterface(uuid("d222d519-4361-451e-96c4-60f4f9742db0"))).get_AdjacentToRightDisplayEdge(&_ret));
		return _ret;
	}
	deprecated("To check full screen mode, use IsFullScreenMode. To check if the view is adjacent to both edges, use AdjacentToLeftDisplayEdge and AdjacentToRightDisplayEdge. For more info, see MSDN.")
	final bool IsFullScreen()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView)this.asInterface(uuid("d222d519-4361-451e-96c4-60f4f9742db0"))).get_IsFullScreen(&_ret));
		return _ret;
	}
	final bool IsOnLockScreen()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView)this.asInterface(uuid("d222d519-4361-451e-96c4-60f4f9742db0"))).get_IsOnLockScreen(&_ret));
		return _ret;
	}
	final bool IsScreenCaptureEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView)this.asInterface(uuid("d222d519-4361-451e-96c4-60f4f9742db0"))).get_IsScreenCaptureEnabled(&_ret));
		return _ret;
	}
	final void IsScreenCaptureEnabled(bool value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView)this.asInterface(uuid("d222d519-4361-451e-96c4-60f4f9742db0"))).set_IsScreenCaptureEnabled(value));
	}
	final void Title(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView)this.asInterface(uuid("d222d519-4361-451e-96c4-60f4f9742db0"))).set_Title(value));
	}
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView)this.asInterface(uuid("d222d519-4361-451e-96c4-60f4f9742db0"))).get_Title(&_ret));
		return _ret;
	}
	final INT32 Id()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView)this.asInterface(uuid("d222d519-4361-451e-96c4-60f4f9742db0"))).get_Id(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnConsolidated(void delegate(Windows.UI.ViewManagement.ApplicationView, Windows.UI.ViewManagement.ApplicationViewConsolidatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView)this.asInterface(uuid("d222d519-4361-451e-96c4-60f4f9742db0"))).add_Consolidated(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.ApplicationView, Windows.UI.ViewManagement.ApplicationViewConsolidatedEventArgs), Windows.UI.ViewManagement.ApplicationView, Windows.UI.ViewManagement.ApplicationViewConsolidatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeConsolidated(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView)this.asInterface(uuid("d222d519-4361-451e-96c4-60f4f9742db0"))).remove_Consolidated(token));
	}
	deprecated("Use the TryEnterFullScreen method and IsFullScreenMode property instead of SuppressSystemOverlays. For more info, see MSDN.")
	final bool SuppressSystemOverlays()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView2)this.asInterface(uuid("e876b196-a545-40dc-b594-450cba68cc00"))).get_SuppressSystemOverlays(&_ret));
		return _ret;
	}
	deprecated("Use the TryEnterFullScreen method and IsFullScreenMode property instead of SuppressSystemOverlays. For more info, see MSDN.")
	final void SuppressSystemOverlays(bool value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView2)this.asInterface(uuid("e876b196-a545-40dc-b594-450cba68cc00"))).set_SuppressSystemOverlays(value));
	}
	final Windows.Foundation.Rect VisibleBounds()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView2)this.asInterface(uuid("e876b196-a545-40dc-b594-450cba68cc00"))).get_VisibleBounds(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnVisibleBoundsChanged(void delegate(Windows.UI.ViewManagement.ApplicationView, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView2)this.asInterface(uuid("e876b196-a545-40dc-b594-450cba68cc00"))).add_VisibleBoundsChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.ApplicationView, IInspectable), Windows.UI.ViewManagement.ApplicationView, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeVisibleBoundsChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView2)this.asInterface(uuid("e876b196-a545-40dc-b594-450cba68cc00"))).remove_VisibleBoundsChanged(token));
	}
	final bool SetDesiredBoundsMode(Windows.UI.ViewManagement.ApplicationViewBoundsMode boundsMode)
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView2)this.asInterface(uuid("e876b196-a545-40dc-b594-450cba68cc00"))).abi_SetDesiredBoundsMode(boundsMode, &_ret));
		return _ret;
	}
	final Windows.UI.ViewManagement.ApplicationViewBoundsMode DesiredBoundsMode()
	{
		Windows.UI.ViewManagement.ApplicationViewBoundsMode _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView2)this.asInterface(uuid("e876b196-a545-40dc-b594-450cba68cc00"))).get_DesiredBoundsMode(&_ret));
		return _ret;
	}
	final Windows.UI.ViewManagement.ApplicationViewTitleBar TitleBar()
	{
		Windows.UI.ViewManagement.ApplicationViewTitleBar _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView3)this.asInterface(uuid("903c9ce5-793a-4fdf-a2b2-af1ac21e3108"))).get_TitleBar(&_ret));
		return _ret;
	}
	final Windows.UI.ViewManagement.FullScreenSystemOverlayMode FullScreenSystemOverlayMode()
	{
		Windows.UI.ViewManagement.FullScreenSystemOverlayMode _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView3)this.asInterface(uuid("903c9ce5-793a-4fdf-a2b2-af1ac21e3108"))).get_FullScreenSystemOverlayMode(&_ret));
		return _ret;
	}
	final void FullScreenSystemOverlayMode(Windows.UI.ViewManagement.FullScreenSystemOverlayMode value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView3)this.asInterface(uuid("903c9ce5-793a-4fdf-a2b2-af1ac21e3108"))).set_FullScreenSystemOverlayMode(value));
	}
	final bool IsFullScreenMode()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView3)this.asInterface(uuid("903c9ce5-793a-4fdf-a2b2-af1ac21e3108"))).get_IsFullScreenMode(&_ret));
		return _ret;
	}
	final bool TryEnterFullScreenMode()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView3)this.asInterface(uuid("903c9ce5-793a-4fdf-a2b2-af1ac21e3108"))).abi_TryEnterFullScreenMode(&_ret));
		return _ret;
	}
	final void ExitFullScreenMode()
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView3)this.asInterface(uuid("903c9ce5-793a-4fdf-a2b2-af1ac21e3108"))).abi_ExitFullScreenMode());
	}
	final void ShowStandardSystemOverlays()
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView3)this.asInterface(uuid("903c9ce5-793a-4fdf-a2b2-af1ac21e3108"))).abi_ShowStandardSystemOverlays());
	}
	final bool TryResizeView(Windows.Foundation.Size value)
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView3)this.asInterface(uuid("903c9ce5-793a-4fdf-a2b2-af1ac21e3108"))).abi_TryResizeView(value, &_ret));
		return _ret;
	}
	final void SetPreferredMinSize(Windows.Foundation.Size minSize)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView3)this.asInterface(uuid("903c9ce5-793a-4fdf-a2b2-af1ac21e3108"))).abi_SetPreferredMinSize(minSize));
	}
	final Windows.UI.ViewManagement.ApplicationViewMode ViewMode()
	{
		Windows.UI.ViewManagement.ApplicationViewMode _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView4)this.asInterface(uuid("15e5cbec-9e0f-46b5-bc3f-9bf653e74b5e"))).get_ViewMode(&_ret));
		return _ret;
	}
	final bool IsViewModeSupported(Windows.UI.ViewManagement.ApplicationViewMode viewMode)
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView4)this.asInterface(uuid("15e5cbec-9e0f-46b5-bc3f-9bf653e74b5e"))).abi_IsViewModeSupported(viewMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryEnterViewModeAsync(Windows.UI.ViewManagement.ApplicationViewMode viewMode)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView4)this.asInterface(uuid("15e5cbec-9e0f-46b5-bc3f-9bf653e74b5e"))).abi_TryEnterViewModeAsync(viewMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryEnterViewModeWithPreferencesAsync(Windows.UI.ViewManagement.ApplicationViewMode viewMode, Windows.UI.ViewManagement.ViewModePreferences viewModePreferences)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView4)this.asInterface(uuid("15e5cbec-9e0f-46b5-bc3f-9bf653e74b5e"))).abi_TryEnterViewModeWithPreferencesAsync(viewMode, viewModePreferences, &_ret));
		return _ret;
	}
	alias TryEnterViewModeAsync = TryEnterViewModeWithPreferencesAsync;
	final Windows.Foundation.IAsyncOperation!(bool) TryConsolidateAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationView4)this.asInterface(uuid("15e5cbec-9e0f-46b5-bc3f-9bf653e74b5e"))).abi_TryConsolidateAsync(&_ret));
		return _ret;
	}

	private static Windows.UI.ViewManagement.IApplicationViewFullscreenStatics _staticInstance;
	public static Windows.UI.ViewManagement.IApplicationViewFullscreenStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.ViewManagement.IApplicationViewFullscreenStatics);
		return _staticInstance;
	}
	deprecated("IApplicationViewFullscreenStatics is deprecated after Windows 8. Please use other resize APIs.")
	static bool TryUnsnapToFullscreen()
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryUnsnapToFullscreen(&_ret));
		return _ret;
	}
}

interface ApplicationViewConsolidatedEventArgs : Windows.UI.ViewManagement.IApplicationViewConsolidatedEventArgs, Windows.UI.ViewManagement.IApplicationViewConsolidatedEventArgs2
{
extern(Windows):
	final bool IsUserInitiated()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewConsolidatedEventArgs)this.asInterface(uuid("514449ec-7ea2-4de7-a6a6-7dfbaaebb6fb"))).get_IsUserInitiated(&_ret));
		return _ret;
	}
	final bool IsAppInitiated()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewConsolidatedEventArgs2)this.asInterface(uuid("1c199ecc-6dc1-40f4-afee-07d9ea296430"))).get_IsAppInitiated(&_ret));
		return _ret;
	}
}

interface ApplicationViewScaling : Windows.UI.ViewManagement.IApplicationViewScaling
{
	private static Windows.UI.ViewManagement.IApplicationViewScalingStatics _staticInstance;
	public static Windows.UI.ViewManagement.IApplicationViewScalingStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.ViewManagement.IApplicationViewScalingStatics);
		return _staticInstance;
	}
	static bool DisableLayoutScaling()
	{
		bool _ret;
		Debug.OK(staticInstance.get_DisableLayoutScaling(&_ret));
		return _ret;
	}
	static bool TrySetDisableLayoutScaling(bool disableLayoutScaling)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TrySetDisableLayoutScaling(disableLayoutScaling, &_ret));
		return _ret;
	}
}

interface ApplicationViewSwitcher
{
	private static Windows.UI.ViewManagement.IApplicationViewSwitcherStatics _staticInstance;
	public static Windows.UI.ViewManagement.IApplicationViewSwitcherStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.ViewManagement.IApplicationViewSwitcherStatics);
		return _staticInstance;
	}
	static void DisableShowingMainViewOnActivation()
	{
		Debug.OK(staticInstance.abi_DisableShowingMainViewOnActivation());
	}
	static Windows.Foundation.IAsyncOperation!(bool) TryShowAsStandaloneAsync(INT32 viewId)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(staticInstance.abi_TryShowAsStandaloneAsync(viewId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(bool) TryShowAsStandaloneWithSizePreferenceAsync(INT32 viewId, Windows.UI.ViewManagement.ViewSizePreference sizePreference)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(staticInstance.abi_TryShowAsStandaloneWithSizePreferenceAsync(viewId, sizePreference, &_ret));
		return _ret;
	}
	alias TryShowAsStandaloneAsync = TryShowAsStandaloneWithSizePreferenceAsync;
	static Windows.Foundation.IAsyncOperation!(bool) TryShowAsStandaloneWithAnchorViewAndSizePreferenceAsync(INT32 viewId, Windows.UI.ViewManagement.ViewSizePreference sizePreference, INT32 anchorViewId, Windows.UI.ViewManagement.ViewSizePreference anchorSizePreference)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(staticInstance.abi_TryShowAsStandaloneWithAnchorViewAndSizePreferenceAsync(viewId, sizePreference, anchorViewId, anchorSizePreference, &_ret));
		return _ret;
	}
	alias TryShowAsStandaloneAsync = TryShowAsStandaloneWithAnchorViewAndSizePreferenceAsync;
	static Windows.Foundation.IAsyncAction SwitchAsync(INT32 viewId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_SwitchAsync(viewId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction SwitchFromViewAsync(INT32 toViewId, INT32 fromViewId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_SwitchFromViewAsync(toViewId, fromViewId, &_ret));
		return _ret;
	}
	alias SwitchAsync = SwitchFromViewAsync;
	static Windows.Foundation.IAsyncAction SwitchFromViewWithOptionsAsync(INT32 toViewId, INT32 fromViewId, Windows.UI.ViewManagement.ApplicationViewSwitchingOptions options)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_SwitchFromViewWithOptionsAsync(toViewId, fromViewId, options, &_ret));
		return _ret;
	}
	alias SwitchAsync = SwitchFromViewWithOptionsAsync;
	static Windows.Foundation.IAsyncOperation!(bool) PrepareForCustomAnimatedSwitchAsync(INT32 toViewId, INT32 fromViewId, Windows.UI.ViewManagement.ApplicationViewSwitchingOptions options)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(staticInstance.abi_PrepareForCustomAnimatedSwitchAsync(toViewId, fromViewId, options, &_ret));
		return _ret;
	}
}

interface ApplicationViewTitleBar : Windows.UI.ViewManagement.IApplicationViewTitleBar
{
extern(Windows):
	final void ForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).set_ForegroundColor(value));
	}
	final Windows.Foundation.IReference!(Windows.UI.Color) ForegroundColor()
	{
		Windows.Foundation.IReference!(Windows.UI.Color) _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).get_ForegroundColor(&_ret));
		return _ret;
	}
	final void BackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).set_BackgroundColor(value));
	}
	final Windows.Foundation.IReference!(Windows.UI.Color) BackgroundColor()
	{
		Windows.Foundation.IReference!(Windows.UI.Color) _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).get_BackgroundColor(&_ret));
		return _ret;
	}
	final void ButtonForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).set_ButtonForegroundColor(value));
	}
	final Windows.Foundation.IReference!(Windows.UI.Color) ButtonForegroundColor()
	{
		Windows.Foundation.IReference!(Windows.UI.Color) _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).get_ButtonForegroundColor(&_ret));
		return _ret;
	}
	final void ButtonBackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).set_ButtonBackgroundColor(value));
	}
	final Windows.Foundation.IReference!(Windows.UI.Color) ButtonBackgroundColor()
	{
		Windows.Foundation.IReference!(Windows.UI.Color) _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).get_ButtonBackgroundColor(&_ret));
		return _ret;
	}
	final void ButtonHoverForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).set_ButtonHoverForegroundColor(value));
	}
	final Windows.Foundation.IReference!(Windows.UI.Color) ButtonHoverForegroundColor()
	{
		Windows.Foundation.IReference!(Windows.UI.Color) _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).get_ButtonHoverForegroundColor(&_ret));
		return _ret;
	}
	final void ButtonHoverBackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).set_ButtonHoverBackgroundColor(value));
	}
	final Windows.Foundation.IReference!(Windows.UI.Color) ButtonHoverBackgroundColor()
	{
		Windows.Foundation.IReference!(Windows.UI.Color) _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).get_ButtonHoverBackgroundColor(&_ret));
		return _ret;
	}
	final void ButtonPressedForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).set_ButtonPressedForegroundColor(value));
	}
	final Windows.Foundation.IReference!(Windows.UI.Color) ButtonPressedForegroundColor()
	{
		Windows.Foundation.IReference!(Windows.UI.Color) _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).get_ButtonPressedForegroundColor(&_ret));
		return _ret;
	}
	final void ButtonPressedBackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).set_ButtonPressedBackgroundColor(value));
	}
	final Windows.Foundation.IReference!(Windows.UI.Color) ButtonPressedBackgroundColor()
	{
		Windows.Foundation.IReference!(Windows.UI.Color) _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).get_ButtonPressedBackgroundColor(&_ret));
		return _ret;
	}
	final void InactiveForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).set_InactiveForegroundColor(value));
	}
	final Windows.Foundation.IReference!(Windows.UI.Color) InactiveForegroundColor()
	{
		Windows.Foundation.IReference!(Windows.UI.Color) _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).get_InactiveForegroundColor(&_ret));
		return _ret;
	}
	final void InactiveBackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).set_InactiveBackgroundColor(value));
	}
	final Windows.Foundation.IReference!(Windows.UI.Color) InactiveBackgroundColor()
	{
		Windows.Foundation.IReference!(Windows.UI.Color) _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).get_InactiveBackgroundColor(&_ret));
		return _ret;
	}
	final void ButtonInactiveForegroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).set_ButtonInactiveForegroundColor(value));
	}
	final Windows.Foundation.IReference!(Windows.UI.Color) ButtonInactiveForegroundColor()
	{
		Windows.Foundation.IReference!(Windows.UI.Color) _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).get_ButtonInactiveForegroundColor(&_ret));
		return _ret;
	}
	final void ButtonInactiveBackgroundColor(Windows.Foundation.IReference!(Windows.UI.Color) value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).set_ButtonInactiveBackgroundColor(value));
	}
	final Windows.Foundation.IReference!(Windows.UI.Color) ButtonInactiveBackgroundColor()
	{
		Windows.Foundation.IReference!(Windows.UI.Color) _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTitleBar)this.asInterface(uuid("00924ac0-932b-4a6b-9c4b-dc38c82478ce"))).get_ButtonInactiveBackgroundColor(&_ret));
		return _ret;
	}
}

interface ApplicationViewTransferContext : Windows.UI.ViewManagement.IApplicationViewTransferContext
{
extern(Windows):
	final INT32 ViewId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTransferContext)this.asInterface(uuid("8574bc63-3c17-408e-9408-8a1a9ea81bfa"))).get_ViewId(&_ret));
		return _ret;
	}
	final void ViewId(INT32 value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IApplicationViewTransferContext)this.asInterface(uuid("8574bc63-3c17-408e-9408-8a1a9ea81bfa"))).set_ViewId(value));
	}

	private static Windows.UI.ViewManagement.IApplicationViewTransferContextStatics _staticInstance;
	public static Windows.UI.ViewManagement.IApplicationViewTransferContextStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.ViewManagement.IApplicationViewTransferContextStatics);
		return _staticInstance;
	}
	static HSTRING DataPackageFormatId()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_DataPackageFormatId(&_ret));
		return _ret;
	}
	static ApplicationViewTransferContext New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ApplicationViewTransferContext).abi_ActivateInstance(&ret));
		return cast(ApplicationViewTransferContext) ret;
	}
}

interface InputPane : Windows.UI.ViewManagement.IInputPane, Windows.UI.ViewManagement.IInputPane2, Windows.UI.ViewManagement.IInputPaneControl
{
extern(Windows):
	final EventRegistrationToken OnShowing(void delegate(Windows.UI.ViewManagement.InputPane, Windows.UI.ViewManagement.InputPaneVisibilityEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.ViewManagement.IInputPane)this.asInterface(uuid("640ada70-06f3-4c87-a678-9829c9127c28"))).add_Showing(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.InputPane, Windows.UI.ViewManagement.InputPaneVisibilityEventArgs), Windows.UI.ViewManagement.InputPane, Windows.UI.ViewManagement.InputPaneVisibilityEventArgs)(fn), &tok));
		return tok;
	}
	final void removeShowing(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IInputPane)this.asInterface(uuid("640ada70-06f3-4c87-a678-9829c9127c28"))).remove_Showing(token));
	}
	final EventRegistrationToken OnHiding(void delegate(Windows.UI.ViewManagement.InputPane, Windows.UI.ViewManagement.InputPaneVisibilityEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.ViewManagement.IInputPane)this.asInterface(uuid("640ada70-06f3-4c87-a678-9829c9127c28"))).add_Hiding(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.InputPane, Windows.UI.ViewManagement.InputPaneVisibilityEventArgs), Windows.UI.ViewManagement.InputPane, Windows.UI.ViewManagement.InputPaneVisibilityEventArgs)(fn), &tok));
		return tok;
	}
	final void removeHiding(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IInputPane)this.asInterface(uuid("640ada70-06f3-4c87-a678-9829c9127c28"))).remove_Hiding(token));
	}
	final Windows.Foundation.Rect OccludedRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IInputPane)this.asInterface(uuid("640ada70-06f3-4c87-a678-9829c9127c28"))).get_OccludedRect(&_ret));
		return _ret;
	}
	final bool TryShow()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IInputPane2)this.asInterface(uuid("8a6b3f26-7090-4793-944c-c3f2cde26276"))).abi_TryShow(&_ret));
		return _ret;
	}
	final bool TryHide()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IInputPane2)this.asInterface(uuid("8a6b3f26-7090-4793-944c-c3f2cde26276"))).abi_TryHide(&_ret));
		return _ret;
	}
	final bool Visible()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IInputPaneControl)this.asInterface(uuid("088bb24f-962f-489d-aa6e-c6be1a0a6e52"))).get_Visible(&_ret));
		return _ret;
	}
	final void Visible(bool value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IInputPaneControl)this.asInterface(uuid("088bb24f-962f-489d-aa6e-c6be1a0a6e52"))).set_Visible(value));
	}

	private static Windows.UI.ViewManagement.IInputPaneStatics _staticInstance;
	public static Windows.UI.ViewManagement.IInputPaneStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.ViewManagement.IInputPaneStatics);
		return _staticInstance;
	}
	static Windows.UI.ViewManagement.InputPane GetForCurrentView()
	{
		Windows.UI.ViewManagement.InputPane _ret;
		Debug.OK(staticInstance.abi_GetForCurrentView(&_ret));
		return _ret;
	}
}

interface InputPaneVisibilityEventArgs : Windows.UI.ViewManagement.IInputPaneVisibilityEventArgs
{
extern(Windows):
	final Windows.Foundation.Rect OccludedRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IInputPaneVisibilityEventArgs)this.asInterface(uuid("d243e016-d907-4fcc-bb8d-f77baa5028f1"))).get_OccludedRect(&_ret));
		return _ret;
	}
	final void EnsuredFocusedElementInView(bool value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IInputPaneVisibilityEventArgs)this.asInterface(uuid("d243e016-d907-4fcc-bb8d-f77baa5028f1"))).set_EnsuredFocusedElementInView(value));
	}
	final bool EnsuredFocusedElementInView()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IInputPaneVisibilityEventArgs)this.asInterface(uuid("d243e016-d907-4fcc-bb8d-f77baa5028f1"))).get_EnsuredFocusedElementInView(&_ret));
		return _ret;
	}
}

interface ProjectionManager
{
	private static Windows.UI.ViewManagement.IProjectionManagerStatics _staticInstance;
	public static Windows.UI.ViewManagement.IProjectionManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.ViewManagement.IProjectionManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncAction StartProjectingAsync(INT32 projectionViewId, INT32 anchorViewId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_StartProjectingAsync(projectionViewId, anchorViewId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction SwapDisplaysForViewsAsync(INT32 projectionViewId, INT32 anchorViewId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_SwapDisplaysForViewsAsync(projectionViewId, anchorViewId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction StopProjectingAsync(INT32 projectionViewId, INT32 anchorViewId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_StopProjectingAsync(projectionViewId, anchorViewId, &_ret));
		return _ret;
	}
	static bool ProjectionDisplayAvailable()
	{
		bool _ret;
		Debug.OK(staticInstance.get_ProjectionDisplayAvailable(&_ret));
		return _ret;
	}
	static EventRegistrationToken OnProjectionDisplayAvailableChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_ProjectionDisplayAvailableChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeProjectionDisplayAvailableChanged(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_ProjectionDisplayAvailableChanged(token));
	}
}

interface UISettings : Windows.UI.ViewManagement.IUISettings, Windows.UI.ViewManagement.IUISettings2, Windows.UI.ViewManagement.IUISettings3, Windows.UI.ViewManagement.IUISettings4
{
extern(Windows):
	final Windows.UI.ViewManagement.HandPreference HandPreference()
	{
		Windows.UI.ViewManagement.HandPreference _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings)this.asInterface(uuid("85361600-1c63-4627-bcb1-3a89e0bc9c55"))).get_HandPreference(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size CursorSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings)this.asInterface(uuid("85361600-1c63-4627-bcb1-3a89e0bc9c55"))).get_CursorSize(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size ScrollBarSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings)this.asInterface(uuid("85361600-1c63-4627-bcb1-3a89e0bc9c55"))).get_ScrollBarSize(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size ScrollBarArrowSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings)this.asInterface(uuid("85361600-1c63-4627-bcb1-3a89e0bc9c55"))).get_ScrollBarArrowSize(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size ScrollBarThumbBoxSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings)this.asInterface(uuid("85361600-1c63-4627-bcb1-3a89e0bc9c55"))).get_ScrollBarThumbBoxSize(&_ret));
		return _ret;
	}
	final UINT32 MessageDuration()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings)this.asInterface(uuid("85361600-1c63-4627-bcb1-3a89e0bc9c55"))).get_MessageDuration(&_ret));
		return _ret;
	}
	final bool AnimationsEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings)this.asInterface(uuid("85361600-1c63-4627-bcb1-3a89e0bc9c55"))).get_AnimationsEnabled(&_ret));
		return _ret;
	}
	final bool CaretBrowsingEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings)this.asInterface(uuid("85361600-1c63-4627-bcb1-3a89e0bc9c55"))).get_CaretBrowsingEnabled(&_ret));
		return _ret;
	}
	final UINT32 CaretBlinkRate()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings)this.asInterface(uuid("85361600-1c63-4627-bcb1-3a89e0bc9c55"))).get_CaretBlinkRate(&_ret));
		return _ret;
	}
	final UINT32 CaretWidth()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings)this.asInterface(uuid("85361600-1c63-4627-bcb1-3a89e0bc9c55"))).get_CaretWidth(&_ret));
		return _ret;
	}
	final UINT32 DoubleClickTime()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings)this.asInterface(uuid("85361600-1c63-4627-bcb1-3a89e0bc9c55"))).get_DoubleClickTime(&_ret));
		return _ret;
	}
	final UINT32 MouseHoverTime()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings)this.asInterface(uuid("85361600-1c63-4627-bcb1-3a89e0bc9c55"))).get_MouseHoverTime(&_ret));
		return _ret;
	}
	final Windows.UI.Color UIElementColor(Windows.UI.ViewManagement.UIElementType desiredElement)
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings)this.asInterface(uuid("85361600-1c63-4627-bcb1-3a89e0bc9c55"))).abi_UIElementColor(desiredElement, &_ret));
		return _ret;
	}
	final double TextScaleFactor()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings2)this.asInterface(uuid("bad82401-2721-44f9-bb91-2bb228be442f"))).get_TextScaleFactor(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnTextScaleFactorChanged(void delegate(Windows.UI.ViewManagement.UISettings, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings2)this.asInterface(uuid("bad82401-2721-44f9-bb91-2bb228be442f"))).add_TextScaleFactorChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.UISettings, IInspectable), Windows.UI.ViewManagement.UISettings, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeTextScaleFactorChanged(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings2)this.asInterface(uuid("bad82401-2721-44f9-bb91-2bb228be442f"))).remove_TextScaleFactorChanged(cookie));
	}
	final Windows.UI.Color GetColorValue(Windows.UI.ViewManagement.UIColorType desiredColor)
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings3)this.asInterface(uuid("03021be4-5254-4781-8194-5168f7d06d7b"))).abi_GetColorValue(desiredColor, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnColorValuesChanged(void delegate(Windows.UI.ViewManagement.UISettings, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings3)this.asInterface(uuid("03021be4-5254-4781-8194-5168f7d06d7b"))).add_ColorValuesChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.UISettings, IInspectable), Windows.UI.ViewManagement.UISettings, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeColorValuesChanged(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings3)this.asInterface(uuid("03021be4-5254-4781-8194-5168f7d06d7b"))).remove_ColorValuesChanged(cookie));
	}
	final bool AdvancedEffectsEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings4)this.asInterface(uuid("52bb3002-919b-4d6b-9b78-8dd66ff4b93b"))).get_AdvancedEffectsEnabled(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnAdvancedEffectsEnabledChanged(void delegate(Windows.UI.ViewManagement.UISettings, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings4)this.asInterface(uuid("52bb3002-919b-4d6b-9b78-8dd66ff4b93b"))).add_AdvancedEffectsEnabledChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.ViewManagement.UISettings, IInspectable), Windows.UI.ViewManagement.UISettings, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeAdvancedEffectsEnabledChanged(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IUISettings4)this.asInterface(uuid("52bb3002-919b-4d6b-9b78-8dd66ff4b93b"))).remove_AdvancedEffectsEnabledChanged(cookie));
	}
	static UISettings New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(UISettings).abi_ActivateInstance(&ret));
		return cast(UISettings) ret;
	}
}

interface UIViewSettings : Windows.UI.ViewManagement.IUIViewSettings
{
extern(Windows):
	final Windows.UI.ViewManagement.UserInteractionMode UserInteractionMode()
	{
		Windows.UI.ViewManagement.UserInteractionMode _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IUIViewSettings)this.asInterface(uuid("c63657f6-8850-470d-88f8-455e16ea2c26"))).get_UserInteractionMode(&_ret));
		return _ret;
	}

	private static Windows.UI.ViewManagement.IUIViewSettingsStatics _staticInstance;
	public static Windows.UI.ViewManagement.IUIViewSettingsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.ViewManagement.IUIViewSettingsStatics);
		return _staticInstance;
	}
	static Windows.UI.ViewManagement.UIViewSettings GetForCurrentView()
	{
		Windows.UI.ViewManagement.UIViewSettings _ret;
		Debug.OK(staticInstance.abi_GetForCurrentView(&_ret));
		return _ret;
	}
}

interface ViewModePreferences : Windows.UI.ViewManagement.IViewModePreferences
{
extern(Windows):
	final Windows.UI.ViewManagement.ViewSizePreference ViewSizePreference()
	{
		Windows.UI.ViewManagement.ViewSizePreference _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IViewModePreferences)this.asInterface(uuid("878fcd3a-0b99-42c9-84d0-d3f1d403554b"))).get_ViewSizePreference(&_ret));
		return _ret;
	}
	final void ViewSizePreference(Windows.UI.ViewManagement.ViewSizePreference value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IViewModePreferences)this.asInterface(uuid("878fcd3a-0b99-42c9-84d0-d3f1d403554b"))).set_ViewSizePreference(value));
	}
	final Windows.Foundation.Size CustomSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.UI.ViewManagement.IViewModePreferences)this.asInterface(uuid("878fcd3a-0b99-42c9-84d0-d3f1d403554b"))).get_CustomSize(&_ret));
		return _ret;
	}
	final void CustomSize(Windows.Foundation.Size value)
	{
		Debug.OK((cast(Windows.UI.ViewManagement.IViewModePreferences)this.asInterface(uuid("878fcd3a-0b99-42c9-84d0-d3f1d403554b"))).set_CustomSize(value));
	}

	private static Windows.UI.ViewManagement.IViewModePreferencesStatics _staticInstance;
	public static Windows.UI.ViewManagement.IViewModePreferencesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.ViewManagement.IViewModePreferencesStatics);
		return _staticInstance;
	}
	static Windows.UI.ViewManagement.ViewModePreferences CreateDefault(Windows.UI.ViewManagement.ApplicationViewMode mode)
	{
		Windows.UI.ViewManagement.ViewModePreferences _ret;
		Debug.OK(staticInstance.abi_CreateDefault(mode, &_ret));
		return _ret;
	}
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