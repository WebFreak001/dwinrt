module Windows.UI.Input;

import dwinrt;

struct CrossSlideThresholds
{
	float SelectionStart;
	float SpeedBumpStart;
	float SpeedBumpEnd;
	float RearrangeStart;
}

struct ManipulationDelta
{
	Windows.Foundation.Point Translation;
	float Scale;
	float Rotation;
	float Expansion;
}

struct ManipulationVelocities
{
	Windows.Foundation.Point Linear;
	float Angular;
	float Expansion;
}

@uuid("e9374738-6f88-41d9-8720-78e08e398349")
@WinrtFactory("Windows.UI.Input.CrossSlidingEventArgs")
interface ICrossSlidingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_CrossSlidingState(Windows.UI.Input.CrossSlidingState* return_value);
}

@uuid("1c905384-083c-4bd3-b559-179cddeb33ec")
@WinrtFactory("Windows.UI.Input.DraggingEventArgs")
interface IDraggingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_DraggingState(Windows.UI.Input.DraggingState* return_value);
}

@uuid("580d5292-2ab1-49aa-a7f0-33bd3f8df9f1")
@WinrtFactory("Windows.UI.Input.EdgeGesture")
interface IEdgeGesture : IInspectable
{
extern(Windows):
	HRESULT add_Starting(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.EdgeGesture, Windows.UI.Input.EdgeGestureEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Starting(EventRegistrationToken token);
	HRESULT add_Completed(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.EdgeGesture, Windows.UI.Input.EdgeGestureEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Completed(EventRegistrationToken token);
	HRESULT add_Canceled(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.EdgeGesture, Windows.UI.Input.EdgeGestureEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Canceled(EventRegistrationToken token);
}

@uuid("44fa4a24-2d09-42e1-8b5e-368208796a4c")
@WinrtFactory("Windows.UI.Input.EdgeGestureEventArgs")
interface IEdgeGestureEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.UI.Input.EdgeGestureKind* return_value);
}

@uuid("bc6a8519-18ee-4043-9839-4fc584d60a14")
@WinrtFactory("Windows.UI.Input.EdgeGesture")
interface IEdgeGestureStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Input.EdgeGesture* return_current);
}

@uuid("b47a37bf-3d6b-4f88-83e8-6dcb4012ffb0")
@WinrtFactory("Windows.UI.Input.GestureRecognizer")
interface IGestureRecognizer : IInspectable
{
extern(Windows):
	HRESULT get_GestureSettings(Windows.UI.Input.GestureSettings* return_value);
	HRESULT set_GestureSettings(Windows.UI.Input.GestureSettings value);
	HRESULT get_IsInertial(bool* return_value);
	HRESULT get_IsActive(bool* return_value);
	HRESULT get_ShowGestureFeedback(bool* return_value);
	HRESULT set_ShowGestureFeedback(bool value);
	HRESULT get_PivotCenter(Windows.Foundation.Point* return_value);
	HRESULT set_PivotCenter(Windows.Foundation.Point value);
	HRESULT get_PivotRadius(float* return_value);
	HRESULT set_PivotRadius(float value);
	HRESULT get_InertiaTranslationDeceleration(float* return_value);
	HRESULT set_InertiaTranslationDeceleration(float value);
	HRESULT get_InertiaRotationDeceleration(float* return_value);
	HRESULT set_InertiaRotationDeceleration(float value);
	HRESULT get_InertiaExpansionDeceleration(float* return_value);
	HRESULT set_InertiaExpansionDeceleration(float value);
	HRESULT get_InertiaTranslationDisplacement(float* return_value);
	HRESULT set_InertiaTranslationDisplacement(float value);
	HRESULT get_InertiaRotationAngle(float* return_value);
	HRESULT set_InertiaRotationAngle(float value);
	HRESULT get_InertiaExpansion(float* return_value);
	HRESULT set_InertiaExpansion(float value);
	HRESULT get_ManipulationExact(bool* return_value);
	HRESULT set_ManipulationExact(bool value);
	HRESULT get_CrossSlideThresholds(Windows.UI.Input.CrossSlideThresholds* return_value);
	HRESULT set_CrossSlideThresholds(Windows.UI.Input.CrossSlideThresholds value);
	HRESULT get_CrossSlideHorizontally(bool* return_value);
	HRESULT set_CrossSlideHorizontally(bool value);
	HRESULT get_CrossSlideExact(bool* return_value);
	HRESULT set_CrossSlideExact(bool value);
	HRESULT get_AutoProcessInertia(bool* return_value);
	HRESULT set_AutoProcessInertia(bool value);
	HRESULT get_MouseWheelParameters(Windows.UI.Input.MouseWheelParameters* return_value);
	HRESULT abi_CanBeDoubleTap(Windows.UI.Input.PointerPoint value, bool* return_canBeDoubleTap);
	HRESULT abi_ProcessDownEvent(Windows.UI.Input.PointerPoint value);
	HRESULT abi_ProcessMoveEvents(Windows.Foundation.Collections.IVector!(Windows.UI.Input.PointerPoint) value);
	HRESULT abi_ProcessUpEvent(Windows.UI.Input.PointerPoint value);
	HRESULT abi_ProcessMouseWheelEvent(Windows.UI.Input.PointerPoint value, bool isShiftKeyDown, bool isControlKeyDown);
	HRESULT abi_ProcessInertia();
	HRESULT abi_CompleteGesture();
	HRESULT add_Tapped(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.TappedEventArgs) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_Tapped(EventRegistrationToken cookie);
	HRESULT add_RightTapped(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.RightTappedEventArgs) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_RightTapped(EventRegistrationToken cookie);
	HRESULT add_Holding(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.HoldingEventArgs) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_Holding(EventRegistrationToken cookie);
	HRESULT add_Dragging(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.DraggingEventArgs) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_Dragging(EventRegistrationToken cookie);
	HRESULT add_ManipulationStarted(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.ManipulationStartedEventArgs) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_ManipulationStarted(EventRegistrationToken cookie);
	HRESULT add_ManipulationUpdated(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.ManipulationUpdatedEventArgs) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_ManipulationUpdated(EventRegistrationToken cookie);
	HRESULT add_ManipulationInertiaStarting(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.ManipulationInertiaStartingEventArgs) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_ManipulationInertiaStarting(EventRegistrationToken cookie);
	HRESULT add_ManipulationCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.ManipulationCompletedEventArgs) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_ManipulationCompleted(EventRegistrationToken cookie);
	HRESULT add_CrossSliding(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.CrossSlidingEventArgs) handler, EventRegistrationToken* return_pCookie);
	HRESULT remove_CrossSliding(EventRegistrationToken cookie);
}

@uuid("2bf755c5-e799-41b4-bb40-242f40959b71")
@WinrtFactory("Windows.UI.Input.HoldingEventArgs")
interface IHoldingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_HoldingState(Windows.UI.Input.HoldingState* return_value);
}

@uuid("b4baf068-8f49-446c-8db5-8c0ffe85cc9e")
@WinrtFactory("Windows.UI.Input.KeyboardDeliveryInterceptor")
interface IKeyboardDeliveryInterceptor : IInspectable
{
extern(Windows):
	HRESULT get_IsInterceptionEnabledWhenInForeground(bool* return_value);
	HRESULT set_IsInterceptionEnabledWhenInForeground(bool value);
	HRESULT add_KeyDown(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.KeyboardDeliveryInterceptor, Windows.UI.Core.KeyEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_KeyDown(EventRegistrationToken token);
	HRESULT add_KeyUp(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.KeyboardDeliveryInterceptor, Windows.UI.Core.KeyEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_KeyUp(EventRegistrationToken token);
}

@uuid("f9f63ba2-ceba-4755-8a7e-14c0ffecd239")
@WinrtFactory("Windows.UI.Input.KeyboardDeliveryInterceptor")
interface IKeyboardDeliveryInterceptorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Input.KeyboardDeliveryInterceptor* return_keyboardDeliverySettings);
}

@uuid("b34ab22b-d19b-46ff-9f38-dec7754bb9e7")
@WinrtFactory("Windows.UI.Input.ManipulationCompletedEventArgs")
interface IManipulationCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_Cumulative(Windows.UI.Input.ManipulationDelta* return_value);
	HRESULT get_Velocities(Windows.UI.Input.ManipulationVelocities* return_value);
}

@uuid("dd37a898-26bf-467a-9ce5-ccf3fb11371e")
@WinrtFactory("Windows.UI.Input.ManipulationInertiaStartingEventArgs")
interface IManipulationInertiaStartingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_Delta(Windows.UI.Input.ManipulationDelta* return_value);
	HRESULT get_Cumulative(Windows.UI.Input.ManipulationDelta* return_value);
	HRESULT get_Velocities(Windows.UI.Input.ManipulationVelocities* return_value);
}

@uuid("ddec873e-cfce-4932-8c1d-3c3d011a34c0")
@WinrtFactory("Windows.UI.Input.ManipulationStartedEventArgs")
interface IManipulationStartedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_Cumulative(Windows.UI.Input.ManipulationDelta* return_value);
}

@uuid("cb354ce5-abb8-4f9f-b3ce-8181aa61ad82")
@WinrtFactory("Windows.UI.Input.ManipulationUpdatedEventArgs")
interface IManipulationUpdatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_Delta(Windows.UI.Input.ManipulationDelta* return_value);
	HRESULT get_Cumulative(Windows.UI.Input.ManipulationDelta* return_value);
	HRESULT get_Velocities(Windows.UI.Input.ManipulationVelocities* return_value);
}

@uuid("ead0ca44-9ded-4037-8149-5e4cc2564468")
@WinrtFactory("Windows.UI.Input.MouseWheelParameters")
interface IMouseWheelParameters : IInspectable
{
extern(Windows):
	HRESULT get_CharTranslation(Windows.Foundation.Point* return_value);
	HRESULT set_CharTranslation(Windows.Foundation.Point value);
	HRESULT get_DeltaScale(float* return_value);
	HRESULT set_DeltaScale(float value);
	HRESULT get_DeltaRotationAngle(float* return_value);
	HRESULT set_DeltaRotationAngle(float value);
	HRESULT get_PageTranslation(Windows.Foundation.Point* return_value);
	HRESULT set_PageTranslation(Windows.Foundation.Point value);
}

@uuid("e995317d-7296-42d9-8233-c5be73b74a4a")
@WinrtFactory("Windows.UI.Input.PointerPoint")
interface IPointerPoint : IInspectable
{
extern(Windows):
	HRESULT get_PointerDevice(Windows.Devices.Input.PointerDevice* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_RawPosition(Windows.Foundation.Point* return_value);
	HRESULT get_PointerId(UINT32* return_value);
	HRESULT get_FrameId(UINT32* return_value);
	HRESULT get_Timestamp(ulong* return_value);
	HRESULT get_IsInContact(bool* return_value);
	HRESULT get_Properties(Windows.UI.Input.PointerPointProperties* return_value);
}

@uuid("c79d8a4b-c163-4ee7-803f-67ce79f9972d")
@WinrtFactory("Windows.UI.Input.PointerPointProperties")
interface IPointerPointProperties : IInspectable
{
extern(Windows):
	HRESULT get_Pressure(float* return_value);
	HRESULT get_IsInverted(bool* return_value);
	HRESULT get_IsEraser(bool* return_value);
	HRESULT get_Orientation(float* return_value);
	HRESULT get_XTilt(float* return_value);
	HRESULT get_YTilt(float* return_value);
	HRESULT get_Twist(float* return_value);
	HRESULT get_ContactRect(Windows.Foundation.Rect* return_value);
	HRESULT get_ContactRectRaw(Windows.Foundation.Rect* return_value);
	HRESULT get_TouchConfidence(bool* return_value);
	HRESULT get_IsLeftButtonPressed(bool* return_value);
	HRESULT get_IsRightButtonPressed(bool* return_value);
	HRESULT get_IsMiddleButtonPressed(bool* return_value);
	HRESULT get_MouseWheelDelta(INT32* return_value);
	HRESULT get_IsHorizontalMouseWheel(bool* return_value);
	HRESULT get_IsPrimary(bool* return_value);
	HRESULT get_IsInRange(bool* return_value);
	HRESULT get_IsCanceled(bool* return_value);
	HRESULT get_IsBarrelButtonPressed(bool* return_value);
	HRESULT get_IsXButton1Pressed(bool* return_value);
	HRESULT get_IsXButton2Pressed(bool* return_value);
	HRESULT get_PointerUpdateKind(Windows.UI.Input.PointerUpdateKind* return_value);
	HRESULT abi_HasUsage(UINT32 usagePage, UINT32 usageId, bool* return_value);
	HRESULT abi_GetUsageValue(UINT32 usagePage, UINT32 usageId, INT32* return_value);
}

@uuid("22c3433a-c83b-41c0-a296-5e232d64d6af")
@WinrtFactory("Windows.UI.Input.PointerPointProperties")
interface IPointerPointProperties2 : IInspectable
{
extern(Windows):
	HRESULT get_ZDistance(Windows.Foundation.IReference!(float)* return_value);
}

@uuid("a506638d-2a1a-413e-bc75-9f38381cc069")
@WinrtFactory("Windows.UI.Input.PointerPoint")
interface IPointerPointStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentPoint(UINT32 pointerId, Windows.UI.Input.PointerPoint* return_pointerPoint);
	HRESULT abi_GetIntermediatePoints(UINT32 pointerId, Windows.Foundation.Collections.IVector!(Windows.UI.Input.PointerPoint)* return_pointerPoints);
	HRESULT abi_GetCurrentPointTransformed(UINT32 pointerId, Windows.UI.Input.IPointerPointTransform transform, Windows.UI.Input.PointerPoint* return_pointerPoint);
	HRESULT abi_GetIntermediatePointsTransformed(UINT32 pointerId, Windows.UI.Input.IPointerPointTransform transform, Windows.Foundation.Collections.IVector!(Windows.UI.Input.PointerPoint)* return_pointerPoints);
}

@uuid("4d5fe14f-b87c-4028-bc9c-59e9947fb056")
interface IPointerPointTransform : IInspectable
{
extern(Windows):
	HRESULT get_Inverse(Windows.UI.Input.IPointerPointTransform* return_value);
	HRESULT abi_TryTransform(Windows.Foundation.Point inPoint, Windows.Foundation.Point* out_outPoint, bool* return_returnValue);
	HRESULT abi_TransformBounds(Windows.Foundation.Rect rect, Windows.Foundation.Rect* return_returnValue);
}

@uuid("4d1e6461-84f7-499d-bd91-2a36e2b7aaa2")
@WinrtFactory("Windows.UI.Input.PointerVisualizationSettings")
interface IPointerVisualizationSettings : IInspectable
{
extern(Windows):
	HRESULT set_IsContactFeedbackEnabled(bool value);
	HRESULT get_IsContactFeedbackEnabled(bool* return_value);
	HRESULT set_IsBarrelButtonFeedbackEnabled(bool value);
	HRESULT get_IsBarrelButtonFeedbackEnabled(bool* return_value);
}

@uuid("68870edb-165b-4214-b4f3-584eca8c8a69")
@WinrtFactory("Windows.UI.Input.PointerVisualizationSettings")
interface IPointerVisualizationSettingsStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Input.PointerVisualizationSettings* return_visualizationSettings);
}

@uuid("3055d1c8-df51-43d4-b23b-0e1037467a09")
@WinrtFactory("Windows.UI.Input.RadialController")
interface IRadialController : IInspectable
{
extern(Windows):
	HRESULT get_Menu(Windows.UI.Input.RadialControllerMenu* return_value);
	HRESULT get_RotationResolutionInDegrees(double* return_value);
	HRESULT set_RotationResolutionInDegrees(double value);
	HRESULT get_UseAutomaticHapticFeedback(bool* return_value);
	HRESULT set_UseAutomaticHapticFeedback(bool value);
	HRESULT add_ScreenContactStarted(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerScreenContactStartedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_ScreenContactStarted(EventRegistrationToken cookie);
	HRESULT add_ScreenContactEnded(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_ScreenContactEnded(EventRegistrationToken cookie);
	HRESULT add_ScreenContactContinued(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerScreenContactContinuedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_ScreenContactContinued(EventRegistrationToken cookie);
	HRESULT add_ControlLost(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_ControlLost(EventRegistrationToken cookie);
	HRESULT add_RotationChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerRotationChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RotationChanged(EventRegistrationToken token);
	HRESULT add_ButtonClicked(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerButtonClickedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ButtonClicked(EventRegistrationToken token);
	HRESULT add_ControlAcquired(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerControlAcquiredEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_ControlAcquired(EventRegistrationToken cookie);
}

@uuid("3d577eff-4cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialController")
interface IRadialController2 : IInspectable
{
extern(Windows):
	HRESULT add_ButtonPressed(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerButtonPressedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ButtonPressed(EventRegistrationToken token);
	HRESULT add_ButtonHolding(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerButtonHoldingEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ButtonHolding(EventRegistrationToken token);
	HRESULT add_ButtonReleased(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerButtonReleasedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ButtonReleased(EventRegistrationToken token);
}

@uuid("206aa438-e651-11e5-bf62-2c27d7404e85")
@WinrtFactory("Windows.UI.Input.RadialControllerButtonClickedEventArgs")
interface IRadialControllerButtonClickedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Contact(Windows.UI.Input.RadialControllerScreenContact* return_value);
}

@uuid("3d577ef3-3cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerButtonClickedEventArgs")
interface IRadialControllerButtonClickedEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("3d577eee-3cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerButtonHoldingEventArgs")
interface IRadialControllerButtonHoldingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Contact(Windows.UI.Input.RadialControllerScreenContact* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("3d577eed-4cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerButtonPressedEventArgs")
interface IRadialControllerButtonPressedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Contact(Windows.UI.Input.RadialControllerScreenContact* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("3d577eef-3cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerButtonReleasedEventArgs")
interface IRadialControllerButtonReleasedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Contact(Windows.UI.Input.RadialControllerScreenContact* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("a6b79ecb-6a52-4430-910c-56370a9d6b42")
@WinrtFactory("Windows.UI.Input.RadialControllerConfiguration")
interface IRadialControllerConfiguration : IInspectable
{
extern(Windows):
	HRESULT abi_SetDefaultMenuItems(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.RadialControllerSystemMenuItemKind) buttons);
	HRESULT abi_ResetToDefaultMenuItems();
	HRESULT abi_TrySelectDefaultMenuItem(Windows.UI.Input.RadialControllerSystemMenuItemKind type, bool* return_result);
}

@uuid("3d577ef7-3cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerConfiguration")
interface IRadialControllerConfiguration2 : IInspectable
{
extern(Windows):
	HRESULT set_ActiveControllerWhenMenuIsSuppressed(Windows.UI.Input.RadialController value);
	HRESULT get_ActiveControllerWhenMenuIsSuppressed(Windows.UI.Input.RadialController* return_value);
	HRESULT set_IsMenuSuppressed(bool value);
	HRESULT get_IsMenuSuppressed(bool* return_value);
}

@uuid("79b6b0e5-069a-4486-a99d-8db772b9642f")
@WinrtFactory("Windows.UI.Input.RadialControllerConfiguration")
interface IRadialControllerConfigurationStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Input.RadialControllerConfiguration* return_configuration);
}

@uuid("206aa439-e651-11e5-bf62-2c27d7404e85")
@WinrtFactory("Windows.UI.Input.RadialControllerControlAcquiredEventArgs")
interface IRadialControllerControlAcquiredEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Contact(Windows.UI.Input.RadialControllerScreenContact* return_value);
}

@uuid("3d577ef4-3cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerControlAcquiredEventArgs")
interface IRadialControllerControlAcquiredEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_IsButtonPressed(bool* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("8506b35d-f640-4412-aba0-bad077e5ea8a")
@WinrtFactory("Windows.UI.Input.RadialControllerMenu")
interface IRadialControllerMenu : IInspectable
{
extern(Windows):
	HRESULT get_Items(Windows.Foundation.Collections.IVector!(Windows.UI.Input.RadialControllerMenuItem)* return_value);
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT set_IsEnabled(bool value);
	HRESULT abi_GetSelectedMenuItem(Windows.UI.Input.RadialControllerMenuItem* return_result);
	HRESULT abi_SelectMenuItem(Windows.UI.Input.RadialControllerMenuItem menuItem);
	HRESULT abi_TrySelectPreviouslySelectedMenuItem(bool* return_result);
}

@uuid("c80fc98d-ad0b-4c9c-8f2f-136a2373a6ba")
@WinrtFactory("Windows.UI.Input.RadialControllerMenuItem")
interface IRadialControllerMenuItem : IInspectable
{
extern(Windows):
	HRESULT get_DisplayText(HSTRING* return_value);
	HRESULT get_Tag(IInspectable* return_value);
	HRESULT set_Tag(IInspectable value);
	HRESULT add_Invoked(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialControllerMenuItem, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Invoked(EventRegistrationToken token);
}

@uuid("249e0887-d842-4524-9df8-e0d647edc887")
@WinrtFactory("Windows.UI.Input.RadialControllerMenuItem")
interface IRadialControllerMenuItemStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromIcon(HSTRING displayText, Windows.Storage.Streams.RandomAccessStreamReference icon, Windows.UI.Input.RadialControllerMenuItem* return_result);
	HRESULT abi_CreateFromKnownIcon(HSTRING displayText, Windows.UI.Input.RadialControllerMenuKnownIcon value, Windows.UI.Input.RadialControllerMenuItem* return_result);
}

@uuid("0cbb70be-7e3e-48bd-be04-2c7fcaa9c1ff")
@WinrtFactory("Windows.UI.Input.RadialControllerMenuItem")
interface IRadialControllerMenuItemStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromFontGlyph(HSTRING displayText, HSTRING glyph, HSTRING fontFamily, Windows.UI.Input.RadialControllerMenuItem* return_result);
	HRESULT abi_CreateFromFontGlyphWithUri(HSTRING displayText, HSTRING glyph, HSTRING fontFamily, Windows.Foundation.Uri fontUri, Windows.UI.Input.RadialControllerMenuItem* return_result);
}

@uuid("206aa435-e651-11e5-bf62-2c27d7404e85")
@WinrtFactory("Windows.UI.Input.RadialControllerRotationChangedEventArgs")
interface IRadialControllerRotationChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_RotationDeltaInDegrees(double* return_value);
	HRESULT get_Contact(Windows.UI.Input.RadialControllerScreenContact* return_value);
}

@uuid("3d577eec-4cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerRotationChangedEventArgs")
interface IRadialControllerRotationChangedEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_IsButtonPressed(bool* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("206aa434-e651-11e5-bf62-2c27d7404e85")
@WinrtFactory("Windows.UI.Input.RadialControllerScreenContact")
interface IRadialControllerScreenContact : IInspectable
{
extern(Windows):
	HRESULT get_Bounds(Windows.Foundation.Rect* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
}

@uuid("206aa437-e651-11e5-bf62-2c27d7404e85")
@WinrtFactory("Windows.UI.Input.RadialControllerScreenContactContinuedEventArgs")
interface IRadialControllerScreenContactContinuedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Contact(Windows.UI.Input.RadialControllerScreenContact* return_value);
}

@uuid("3d577ef1-3cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerScreenContactContinuedEventArgs")
interface IRadialControllerScreenContactContinuedEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_IsButtonPressed(bool* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("3d577ef2-3cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerScreenContactEndedEventArgs")
interface IRadialControllerScreenContactEndedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_IsButtonPressed(bool* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("206aa436-e651-11e5-bf62-2c27d7404e85")
@WinrtFactory("Windows.UI.Input.RadialControllerScreenContactStartedEventArgs")
interface IRadialControllerScreenContactStartedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Contact(Windows.UI.Input.RadialControllerScreenContact* return_value);
}

@uuid("3d577ef0-3cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerScreenContactStartedEventArgs")
interface IRadialControllerScreenContactStartedEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_IsButtonPressed(bool* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("faded0b7-b84c-4894-87aa-8f25aa5f288b")
@WinrtFactory("Windows.UI.Input.RadialController")
interface IRadialControllerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_IsSupported(bool* return_result);
	HRESULT abi_CreateForCurrentView(Windows.UI.Input.RadialController* return_result);
}

@uuid("4cbf40bd-af7a-4a36-9476-b1dce141709a")
@WinrtFactory("Windows.UI.Input.RightTappedEventArgs")
interface IRightTappedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
}

@uuid("cfa126e4-253a-4c3c-953b-395c37aed309")
@WinrtFactory("Windows.UI.Input.TappedEventArgs")
interface ITappedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_TapCount(UINT32* return_value);
}

interface CrossSlidingEventArgs : Windows.UI.Input.ICrossSlidingEventArgs
{
extern(Windows):
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Input.ICrossSlidingEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.ICrossSlidingEventArgs).get_Position(&_ret));
		return _ret;
	}
	final Windows.UI.Input.CrossSlidingState CrossSlidingState()
	{
		Windows.UI.Input.CrossSlidingState _ret;
		Debug.OK(this.as!(Windows.UI.Input.ICrossSlidingEventArgs).get_CrossSlidingState(&_ret));
		return _ret;
	}
}

interface DraggingEventArgs : Windows.UI.Input.IDraggingEventArgs
{
extern(Windows):
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Input.IDraggingEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.IDraggingEventArgs).get_Position(&_ret));
		return _ret;
	}
	final Windows.UI.Input.DraggingState DraggingState()
	{
		Windows.UI.Input.DraggingState _ret;
		Debug.OK(this.as!(Windows.UI.Input.IDraggingEventArgs).get_DraggingState(&_ret));
		return _ret;
	}
}

interface EdgeGesture : Windows.UI.Input.IEdgeGesture
{
extern(Windows):
	final EventRegistrationToken OnStarting(void delegate(Windows.UI.Input.EdgeGesture, Windows.UI.Input.EdgeGestureEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IEdgeGesture).add_Starting(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.EdgeGesture, Windows.UI.Input.EdgeGestureEventArgs), Windows.UI.Input.EdgeGesture, Windows.UI.Input.EdgeGestureEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStarting(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Input.IEdgeGesture).remove_Starting(token));
	}
	final EventRegistrationToken OnCompleted(void delegate(Windows.UI.Input.EdgeGesture, Windows.UI.Input.EdgeGestureEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IEdgeGesture).add_Completed(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.EdgeGesture, Windows.UI.Input.EdgeGestureEventArgs), Windows.UI.Input.EdgeGesture, Windows.UI.Input.EdgeGestureEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCompleted(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Input.IEdgeGesture).remove_Completed(token));
	}
	final EventRegistrationToken OnCanceled(void delegate(Windows.UI.Input.EdgeGesture, Windows.UI.Input.EdgeGestureEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IEdgeGesture).add_Canceled(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.EdgeGesture, Windows.UI.Input.EdgeGestureEventArgs), Windows.UI.Input.EdgeGesture, Windows.UI.Input.EdgeGestureEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCanceled(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Input.IEdgeGesture).remove_Canceled(token));
	}

	private static Windows.UI.Input.IEdgeGestureStatics _staticInstance;
	public static Windows.UI.Input.IEdgeGestureStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Input.IEdgeGestureStatics);
		return _staticInstance;
	}
	static Windows.UI.Input.EdgeGesture GetForCurrentView()
	{
		Windows.UI.Input.EdgeGesture _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Input.IEdgeGestureStatics).abi_GetForCurrentView(&_ret));
		return _ret;
	}
}

interface EdgeGestureEventArgs : Windows.UI.Input.IEdgeGestureEventArgs
{
extern(Windows):
	final Windows.UI.Input.EdgeGestureKind Kind()
	{
		Windows.UI.Input.EdgeGestureKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.IEdgeGestureEventArgs).get_Kind(&_ret));
		return _ret;
	}
}

interface GestureRecognizer : Windows.UI.Input.IGestureRecognizer
{
extern(Windows):
	final Windows.UI.Input.GestureSettings GestureSettings()
	{
		Windows.UI.Input.GestureSettings _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_GestureSettings(&_ret));
		return _ret;
	}
	final void GestureSettings(Windows.UI.Input.GestureSettings value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).set_GestureSettings(value));
	}
	final bool IsInertial()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_IsInertial(&_ret));
		return _ret;
	}
	final bool IsActive()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_IsActive(&_ret));
		return _ret;
	}
	final bool ShowGestureFeedback()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_ShowGestureFeedback(&_ret));
		return _ret;
	}
	final void ShowGestureFeedback(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).set_ShowGestureFeedback(value));
	}
	final Windows.Foundation.Point PivotCenter()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_PivotCenter(&_ret));
		return _ret;
	}
	final void PivotCenter(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).set_PivotCenter(value));
	}
	final float PivotRadius()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_PivotRadius(&_ret));
		return _ret;
	}
	final void PivotRadius(float value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).set_PivotRadius(value));
	}
	final float InertiaTranslationDeceleration()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_InertiaTranslationDeceleration(&_ret));
		return _ret;
	}
	final void InertiaTranslationDeceleration(float value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).set_InertiaTranslationDeceleration(value));
	}
	final float InertiaRotationDeceleration()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_InertiaRotationDeceleration(&_ret));
		return _ret;
	}
	final void InertiaRotationDeceleration(float value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).set_InertiaRotationDeceleration(value));
	}
	final float InertiaExpansionDeceleration()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_InertiaExpansionDeceleration(&_ret));
		return _ret;
	}
	final void InertiaExpansionDeceleration(float value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).set_InertiaExpansionDeceleration(value));
	}
	final float InertiaTranslationDisplacement()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_InertiaTranslationDisplacement(&_ret));
		return _ret;
	}
	final void InertiaTranslationDisplacement(float value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).set_InertiaTranslationDisplacement(value));
	}
	final float InertiaRotationAngle()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_InertiaRotationAngle(&_ret));
		return _ret;
	}
	final void InertiaRotationAngle(float value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).set_InertiaRotationAngle(value));
	}
	final float InertiaExpansion()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_InertiaExpansion(&_ret));
		return _ret;
	}
	final void InertiaExpansion(float value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).set_InertiaExpansion(value));
	}
	final bool ManipulationExact()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_ManipulationExact(&_ret));
		return _ret;
	}
	final void ManipulationExact(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).set_ManipulationExact(value));
	}
	final Windows.UI.Input.CrossSlideThresholds CrossSlideThresholds()
	{
		Windows.UI.Input.CrossSlideThresholds _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_CrossSlideThresholds(&_ret));
		return _ret;
	}
	final void CrossSlideThresholds(Windows.UI.Input.CrossSlideThresholds value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).set_CrossSlideThresholds(value));
	}
	final bool CrossSlideHorizontally()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_CrossSlideHorizontally(&_ret));
		return _ret;
	}
	final void CrossSlideHorizontally(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).set_CrossSlideHorizontally(value));
	}
	final bool CrossSlideExact()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_CrossSlideExact(&_ret));
		return _ret;
	}
	final void CrossSlideExact(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).set_CrossSlideExact(value));
	}
	final bool AutoProcessInertia()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_AutoProcessInertia(&_ret));
		return _ret;
	}
	final void AutoProcessInertia(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).set_AutoProcessInertia(value));
	}
	final Windows.UI.Input.MouseWheelParameters MouseWheelParameters()
	{
		Windows.UI.Input.MouseWheelParameters _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).get_MouseWheelParameters(&_ret));
		return _ret;
	}
	final bool CanBeDoubleTap(Windows.UI.Input.PointerPoint value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).abi_CanBeDoubleTap(value, &_ret));
		return _ret;
	}
	final void ProcessDownEvent(Windows.UI.Input.PointerPoint value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).abi_ProcessDownEvent(value));
	}
	final void ProcessMoveEvents(Windows.Foundation.Collections.IVector!(Windows.UI.Input.PointerPoint) value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).abi_ProcessMoveEvents(value));
	}
	final void ProcessUpEvent(Windows.UI.Input.PointerPoint value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).abi_ProcessUpEvent(value));
	}
	final void ProcessMouseWheelEvent(Windows.UI.Input.PointerPoint value, bool isShiftKeyDown, bool isControlKeyDown)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).abi_ProcessMouseWheelEvent(value, isShiftKeyDown, isControlKeyDown));
	}
	final void ProcessInertia()
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).abi_ProcessInertia());
	}
	final void CompleteGesture()
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).abi_CompleteGesture());
	}
	final EventRegistrationToken OnTapped(void delegate(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.TappedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).add_Tapped(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.TappedEventArgs), Windows.UI.Input.GestureRecognizer, Windows.UI.Input.TappedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTapped(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).remove_Tapped(cookie));
	}
	final EventRegistrationToken OnRightTapped(void delegate(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.RightTappedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).add_RightTapped(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.RightTappedEventArgs), Windows.UI.Input.GestureRecognizer, Windows.UI.Input.RightTappedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRightTapped(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).remove_RightTapped(cookie));
	}
	final EventRegistrationToken OnHolding(void delegate(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.HoldingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).add_Holding(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.HoldingEventArgs), Windows.UI.Input.GestureRecognizer, Windows.UI.Input.HoldingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeHolding(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).remove_Holding(cookie));
	}
	final EventRegistrationToken OnDragging(void delegate(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.DraggingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).add_Dragging(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.DraggingEventArgs), Windows.UI.Input.GestureRecognizer, Windows.UI.Input.DraggingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDragging(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).remove_Dragging(cookie));
	}
	final EventRegistrationToken OnManipulationStarted(void delegate(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.ManipulationStartedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).add_ManipulationStarted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.ManipulationStartedEventArgs), Windows.UI.Input.GestureRecognizer, Windows.UI.Input.ManipulationStartedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeManipulationStarted(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).remove_ManipulationStarted(cookie));
	}
	final EventRegistrationToken OnManipulationUpdated(void delegate(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.ManipulationUpdatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).add_ManipulationUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.ManipulationUpdatedEventArgs), Windows.UI.Input.GestureRecognizer, Windows.UI.Input.ManipulationUpdatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeManipulationUpdated(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).remove_ManipulationUpdated(cookie));
	}
	final EventRegistrationToken OnManipulationInertiaStarting(void delegate(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.ManipulationInertiaStartingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).add_ManipulationInertiaStarting(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.ManipulationInertiaStartingEventArgs), Windows.UI.Input.GestureRecognizer, Windows.UI.Input.ManipulationInertiaStartingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeManipulationInertiaStarting(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).remove_ManipulationInertiaStarting(cookie));
	}
	final EventRegistrationToken OnManipulationCompleted(void delegate(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.ManipulationCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).add_ManipulationCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.ManipulationCompletedEventArgs), Windows.UI.Input.GestureRecognizer, Windows.UI.Input.ManipulationCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeManipulationCompleted(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).remove_ManipulationCompleted(cookie));
	}
	final EventRegistrationToken OnCrossSliding(void delegate(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.CrossSlidingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).add_CrossSliding(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.GestureRecognizer, Windows.UI.Input.CrossSlidingEventArgs), Windows.UI.Input.GestureRecognizer, Windows.UI.Input.CrossSlidingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCrossSliding(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.UI.Input.IGestureRecognizer).remove_CrossSliding(cookie));
	}
	static GestureRecognizer New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(GestureRecognizer).abi_ActivateInstance(&ret));
		return ret.as!(GestureRecognizer);
	}
}

interface HoldingEventArgs : Windows.UI.Input.IHoldingEventArgs
{
extern(Windows):
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Input.IHoldingEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.IHoldingEventArgs).get_Position(&_ret));
		return _ret;
	}
	final Windows.UI.Input.HoldingState HoldingState()
	{
		Windows.UI.Input.HoldingState _ret;
		Debug.OK(this.as!(Windows.UI.Input.IHoldingEventArgs).get_HoldingState(&_ret));
		return _ret;
	}
}

interface KeyboardDeliveryInterceptor : Windows.UI.Input.IKeyboardDeliveryInterceptor
{
extern(Windows):
	final bool IsInterceptionEnabledWhenInForeground()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IKeyboardDeliveryInterceptor).get_IsInterceptionEnabledWhenInForeground(&_ret));
		return _ret;
	}
	final void IsInterceptionEnabledWhenInForeground(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IKeyboardDeliveryInterceptor).set_IsInterceptionEnabledWhenInForeground(value));
	}
	final EventRegistrationToken OnKeyDown(void delegate(Windows.UI.Input.KeyboardDeliveryInterceptor, Windows.UI.Core.KeyEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IKeyboardDeliveryInterceptor).add_KeyDown(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.KeyboardDeliveryInterceptor, Windows.UI.Core.KeyEventArgs), Windows.UI.Input.KeyboardDeliveryInterceptor, Windows.UI.Core.KeyEventArgs)(fn), &tok));
		return tok;
	}
	final void removeKeyDown(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Input.IKeyboardDeliveryInterceptor).remove_KeyDown(token));
	}
	final EventRegistrationToken OnKeyUp(void delegate(Windows.UI.Input.KeyboardDeliveryInterceptor, Windows.UI.Core.KeyEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IKeyboardDeliveryInterceptor).add_KeyUp(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.KeyboardDeliveryInterceptor, Windows.UI.Core.KeyEventArgs), Windows.UI.Input.KeyboardDeliveryInterceptor, Windows.UI.Core.KeyEventArgs)(fn), &tok));
		return tok;
	}
	final void removeKeyUp(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Input.IKeyboardDeliveryInterceptor).remove_KeyUp(token));
	}

	private static Windows.UI.Input.IKeyboardDeliveryInterceptorStatics _staticInstance;
	public static Windows.UI.Input.IKeyboardDeliveryInterceptorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Input.IKeyboardDeliveryInterceptorStatics);
		return _staticInstance;
	}
	static Windows.UI.Input.KeyboardDeliveryInterceptor GetForCurrentView()
	{
		Windows.UI.Input.KeyboardDeliveryInterceptor _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Input.IKeyboardDeliveryInterceptorStatics).abi_GetForCurrentView(&_ret));
		return _ret;
	}
}

interface ManipulationCompletedEventArgs : Windows.UI.Input.IManipulationCompletedEventArgs
{
extern(Windows):
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationCompletedEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationCompletedEventArgs).get_Position(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationDelta Cumulative()
	{
		Windows.UI.Input.ManipulationDelta _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationCompletedEventArgs).get_Cumulative(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationVelocities Velocities()
	{
		Windows.UI.Input.ManipulationVelocities _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationCompletedEventArgs).get_Velocities(&_ret));
		return _ret;
	}
}

interface ManipulationInertiaStartingEventArgs : Windows.UI.Input.IManipulationInertiaStartingEventArgs
{
extern(Windows):
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationInertiaStartingEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationInertiaStartingEventArgs).get_Position(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationDelta Delta()
	{
		Windows.UI.Input.ManipulationDelta _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationInertiaStartingEventArgs).get_Delta(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationDelta Cumulative()
	{
		Windows.UI.Input.ManipulationDelta _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationInertiaStartingEventArgs).get_Cumulative(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationVelocities Velocities()
	{
		Windows.UI.Input.ManipulationVelocities _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationInertiaStartingEventArgs).get_Velocities(&_ret));
		return _ret;
	}
}

interface ManipulationStartedEventArgs : Windows.UI.Input.IManipulationStartedEventArgs
{
extern(Windows):
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationStartedEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationStartedEventArgs).get_Position(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationDelta Cumulative()
	{
		Windows.UI.Input.ManipulationDelta _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationStartedEventArgs).get_Cumulative(&_ret));
		return _ret;
	}
}

interface ManipulationUpdatedEventArgs : Windows.UI.Input.IManipulationUpdatedEventArgs
{
extern(Windows):
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationUpdatedEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationUpdatedEventArgs).get_Position(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationDelta Delta()
	{
		Windows.UI.Input.ManipulationDelta _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationUpdatedEventArgs).get_Delta(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationDelta Cumulative()
	{
		Windows.UI.Input.ManipulationDelta _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationUpdatedEventArgs).get_Cumulative(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationVelocities Velocities()
	{
		Windows.UI.Input.ManipulationVelocities _ret;
		Debug.OK(this.as!(Windows.UI.Input.IManipulationUpdatedEventArgs).get_Velocities(&_ret));
		return _ret;
	}
}

interface MouseWheelParameters : Windows.UI.Input.IMouseWheelParameters
{
extern(Windows):
	final Windows.Foundation.Point CharTranslation()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.IMouseWheelParameters).get_CharTranslation(&_ret));
		return _ret;
	}
	final void CharTranslation(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IMouseWheelParameters).set_CharTranslation(value));
	}
	final float DeltaScale()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.Input.IMouseWheelParameters).get_DeltaScale(&_ret));
		return _ret;
	}
	final void DeltaScale(float value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IMouseWheelParameters).set_DeltaScale(value));
	}
	final float DeltaRotationAngle()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.Input.IMouseWheelParameters).get_DeltaRotationAngle(&_ret));
		return _ret;
	}
	final void DeltaRotationAngle(float value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IMouseWheelParameters).set_DeltaRotationAngle(value));
	}
	final Windows.Foundation.Point PageTranslation()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.IMouseWheelParameters).get_PageTranslation(&_ret));
		return _ret;
	}
	final void PageTranslation(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IMouseWheelParameters).set_PageTranslation(value));
	}
}

interface PointerPoint : Windows.UI.Input.IPointerPoint
{
extern(Windows):
	final Windows.Devices.Input.PointerDevice PointerDevice()
	{
		Windows.Devices.Input.PointerDevice _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPoint).get_PointerDevice(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPoint).get_Position(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point RawPosition()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPoint).get_RawPosition(&_ret));
		return _ret;
	}
	final UINT32 PointerId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPoint).get_PointerId(&_ret));
		return _ret;
	}
	final UINT32 FrameId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPoint).get_FrameId(&_ret));
		return _ret;
	}
	final ulong Timestamp()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPoint).get_Timestamp(&_ret));
		return _ret;
	}
	final bool IsInContact()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPoint).get_IsInContact(&_ret));
		return _ret;
	}
	final Windows.UI.Input.PointerPointProperties Properties()
	{
		Windows.UI.Input.PointerPointProperties _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPoint).get_Properties(&_ret));
		return _ret;
	}

	private static Windows.UI.Input.IPointerPointStatics _staticInstance;
	public static Windows.UI.Input.IPointerPointStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Input.IPointerPointStatics);
		return _staticInstance;
	}
	static Windows.UI.Input.PointerPoint GetCurrentPoint(UINT32 pointerId)
	{
		Windows.UI.Input.PointerPoint _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Input.IPointerPointStatics).abi_GetCurrentPoint(pointerId, &_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVector!(Windows.UI.Input.PointerPoint) GetIntermediatePoints(UINT32 pointerId)
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Input.PointerPoint) _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Input.IPointerPointStatics).abi_GetIntermediatePoints(pointerId, &_ret));
		return _ret;
	}
	static Windows.UI.Input.PointerPoint GetCurrentPointTransformed(UINT32 pointerId, Windows.UI.Input.IPointerPointTransform transform)
	{
		Windows.UI.Input.PointerPoint _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Input.IPointerPointStatics).abi_GetCurrentPointTransformed(pointerId, transform, &_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVector!(Windows.UI.Input.PointerPoint) GetIntermediatePointsTransformed(UINT32 pointerId, Windows.UI.Input.IPointerPointTransform transform)
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Input.PointerPoint) _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Input.IPointerPointStatics).abi_GetIntermediatePointsTransformed(pointerId, transform, &_ret));
		return _ret;
	}
}

interface PointerPointProperties : Windows.UI.Input.IPointerPointProperties, Windows.UI.Input.IPointerPointProperties2
{
extern(Windows):
	final float Pressure()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_Pressure(&_ret));
		return _ret;
	}
	final bool IsInverted()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_IsInverted(&_ret));
		return _ret;
	}
	final bool IsEraser()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_IsEraser(&_ret));
		return _ret;
	}
	final float Orientation()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_Orientation(&_ret));
		return _ret;
	}
	final float XTilt()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_XTilt(&_ret));
		return _ret;
	}
	final float YTilt()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_YTilt(&_ret));
		return _ret;
	}
	final float Twist()
	{
		float _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_Twist(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect ContactRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_ContactRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect ContactRectRaw()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_ContactRectRaw(&_ret));
		return _ret;
	}
	final bool TouchConfidence()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_TouchConfidence(&_ret));
		return _ret;
	}
	final bool IsLeftButtonPressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_IsLeftButtonPressed(&_ret));
		return _ret;
	}
	final bool IsRightButtonPressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_IsRightButtonPressed(&_ret));
		return _ret;
	}
	final bool IsMiddleButtonPressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_IsMiddleButtonPressed(&_ret));
		return _ret;
	}
	final INT32 MouseWheelDelta()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_MouseWheelDelta(&_ret));
		return _ret;
	}
	final bool IsHorizontalMouseWheel()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_IsHorizontalMouseWheel(&_ret));
		return _ret;
	}
	final bool IsPrimary()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_IsPrimary(&_ret));
		return _ret;
	}
	final bool IsInRange()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_IsInRange(&_ret));
		return _ret;
	}
	final bool IsCanceled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_IsCanceled(&_ret));
		return _ret;
	}
	final bool IsBarrelButtonPressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_IsBarrelButtonPressed(&_ret));
		return _ret;
	}
	final bool IsXButton1Pressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_IsXButton1Pressed(&_ret));
		return _ret;
	}
	final bool IsXButton2Pressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_IsXButton2Pressed(&_ret));
		return _ret;
	}
	final Windows.UI.Input.PointerUpdateKind PointerUpdateKind()
	{
		Windows.UI.Input.PointerUpdateKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).get_PointerUpdateKind(&_ret));
		return _ret;
	}
	final bool HasUsage(UINT32 usagePage, UINT32 usageId)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).abi_HasUsage(usagePage, usageId, &_ret));
		return _ret;
	}
	final INT32 GetUsageValue(UINT32 usagePage, UINT32 usageId)
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties).abi_GetUsageValue(usagePage, usageId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(float) ZDistance()
	{
		Windows.Foundation.IReference!(float) _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerPointProperties2).get_ZDistance(&_ret));
		return _ret;
	}
}

interface PointerVisualizationSettings : Windows.UI.Input.IPointerVisualizationSettings
{
extern(Windows):
	final void IsContactFeedbackEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IPointerVisualizationSettings).set_IsContactFeedbackEnabled(value));
	}
	final bool IsContactFeedbackEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerVisualizationSettings).get_IsContactFeedbackEnabled(&_ret));
		return _ret;
	}
	final void IsBarrelButtonFeedbackEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IPointerVisualizationSettings).set_IsBarrelButtonFeedbackEnabled(value));
	}
	final bool IsBarrelButtonFeedbackEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IPointerVisualizationSettings).get_IsBarrelButtonFeedbackEnabled(&_ret));
		return _ret;
	}

	private static Windows.UI.Input.IPointerVisualizationSettingsStatics _staticInstance;
	public static Windows.UI.Input.IPointerVisualizationSettingsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Input.IPointerVisualizationSettingsStatics);
		return _staticInstance;
	}
	static Windows.UI.Input.PointerVisualizationSettings GetForCurrentView()
	{
		Windows.UI.Input.PointerVisualizationSettings _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Input.IPointerVisualizationSettingsStatics).abi_GetForCurrentView(&_ret));
		return _ret;
	}
}

interface RadialController : Windows.UI.Input.IRadialController, Windows.UI.Input.IRadialController2
{
extern(Windows):
	final Windows.UI.Input.RadialControllerMenu Menu()
	{
		Windows.UI.Input.RadialControllerMenu _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).get_Menu(&_ret));
		return _ret;
	}
	final double RotationResolutionInDegrees()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).get_RotationResolutionInDegrees(&_ret));
		return _ret;
	}
	final void RotationResolutionInDegrees(double value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).set_RotationResolutionInDegrees(value));
	}
	final bool UseAutomaticHapticFeedback()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).get_UseAutomaticHapticFeedback(&_ret));
		return _ret;
	}
	final void UseAutomaticHapticFeedback(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).set_UseAutomaticHapticFeedback(value));
	}
	final EventRegistrationToken OnScreenContactStarted(void delegate(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerScreenContactStartedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).add_ScreenContactStarted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerScreenContactStartedEventArgs), Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerScreenContactStartedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeScreenContactStarted(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).remove_ScreenContactStarted(cookie));
	}
	final EventRegistrationToken OnScreenContactEnded(void delegate(Windows.UI.Input.RadialController, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).add_ScreenContactEnded(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, IInspectable), Windows.UI.Input.RadialController, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeScreenContactEnded(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).remove_ScreenContactEnded(cookie));
	}
	final EventRegistrationToken OnScreenContactContinued(void delegate(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerScreenContactContinuedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).add_ScreenContactContinued(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerScreenContactContinuedEventArgs), Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerScreenContactContinuedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeScreenContactContinued(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).remove_ScreenContactContinued(cookie));
	}
	final EventRegistrationToken OnControlLost(void delegate(Windows.UI.Input.RadialController, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).add_ControlLost(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, IInspectable), Windows.UI.Input.RadialController, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeControlLost(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).remove_ControlLost(cookie));
	}
	final EventRegistrationToken OnRotationChanged(void delegate(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerRotationChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).add_RotationChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerRotationChangedEventArgs), Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerRotationChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRotationChanged(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).remove_RotationChanged(token));
	}
	final EventRegistrationToken OnButtonClicked(void delegate(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerButtonClickedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).add_ButtonClicked(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerButtonClickedEventArgs), Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerButtonClickedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeButtonClicked(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).remove_ButtonClicked(token));
	}
	final EventRegistrationToken OnControlAcquired(void delegate(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerControlAcquiredEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).add_ControlAcquired(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerControlAcquiredEventArgs), Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerControlAcquiredEventArgs)(fn), &tok));
		return tok;
	}
	final void removeControlAcquired(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialController).remove_ControlAcquired(cookie));
	}
	final EventRegistrationToken OnButtonPressed(void delegate(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerButtonPressedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IRadialController2).add_ButtonPressed(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerButtonPressedEventArgs), Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerButtonPressedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeButtonPressed(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialController2).remove_ButtonPressed(token));
	}
	final EventRegistrationToken OnButtonHolding(void delegate(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerButtonHoldingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IRadialController2).add_ButtonHolding(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerButtonHoldingEventArgs), Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerButtonHoldingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeButtonHolding(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialController2).remove_ButtonHolding(token));
	}
	final EventRegistrationToken OnButtonReleased(void delegate(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerButtonReleasedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IRadialController2).add_ButtonReleased(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerButtonReleasedEventArgs), Windows.UI.Input.RadialController, Windows.UI.Input.RadialControllerButtonReleasedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeButtonReleased(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialController2).remove_ButtonReleased(token));
	}

	private static Windows.UI.Input.IRadialControllerStatics _staticInstance;
	public static Windows.UI.Input.IRadialControllerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Input.IRadialControllerStatics);
		return _staticInstance;
	}
	static bool IsSupported()
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Input.IRadialControllerStatics).abi_IsSupported(&_ret));
		return _ret;
	}
	static Windows.UI.Input.RadialController CreateForCurrentView()
	{
		Windows.UI.Input.RadialController _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Input.IRadialControllerStatics).abi_CreateForCurrentView(&_ret));
		return _ret;
	}
}

interface RadialControllerButtonClickedEventArgs : Windows.UI.Input.IRadialControllerButtonClickedEventArgs, Windows.UI.Input.IRadialControllerButtonClickedEventArgs2
{
extern(Windows):
	final Windows.UI.Input.RadialControllerScreenContact Contact()
	{
		Windows.UI.Input.RadialControllerScreenContact _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerButtonClickedEventArgs).get_Contact(&_ret));
		return _ret;
	}
	final Windows.Devices.Haptics.SimpleHapticsController SimpleHapticsController()
	{
		Windows.Devices.Haptics.SimpleHapticsController _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerButtonClickedEventArgs2).get_SimpleHapticsController(&_ret));
		return _ret;
	}
}

interface RadialControllerButtonHoldingEventArgs : Windows.UI.Input.IRadialControllerButtonHoldingEventArgs
{
extern(Windows):
	final Windows.UI.Input.RadialControllerScreenContact Contact()
	{
		Windows.UI.Input.RadialControllerScreenContact _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerButtonHoldingEventArgs).get_Contact(&_ret));
		return _ret;
	}
	final Windows.Devices.Haptics.SimpleHapticsController SimpleHapticsController()
	{
		Windows.Devices.Haptics.SimpleHapticsController _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerButtonHoldingEventArgs).get_SimpleHapticsController(&_ret));
		return _ret;
	}
}

interface RadialControllerButtonPressedEventArgs : Windows.UI.Input.IRadialControllerButtonPressedEventArgs
{
extern(Windows):
	final Windows.UI.Input.RadialControllerScreenContact Contact()
	{
		Windows.UI.Input.RadialControllerScreenContact _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerButtonPressedEventArgs).get_Contact(&_ret));
		return _ret;
	}
	final Windows.Devices.Haptics.SimpleHapticsController SimpleHapticsController()
	{
		Windows.Devices.Haptics.SimpleHapticsController _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerButtonPressedEventArgs).get_SimpleHapticsController(&_ret));
		return _ret;
	}
}

interface RadialControllerButtonReleasedEventArgs : Windows.UI.Input.IRadialControllerButtonReleasedEventArgs
{
extern(Windows):
	final Windows.UI.Input.RadialControllerScreenContact Contact()
	{
		Windows.UI.Input.RadialControllerScreenContact _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerButtonReleasedEventArgs).get_Contact(&_ret));
		return _ret;
	}
	final Windows.Devices.Haptics.SimpleHapticsController SimpleHapticsController()
	{
		Windows.Devices.Haptics.SimpleHapticsController _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerButtonReleasedEventArgs).get_SimpleHapticsController(&_ret));
		return _ret;
	}
}

interface RadialControllerConfiguration : Windows.UI.Input.IRadialControllerConfiguration, Windows.UI.Input.IRadialControllerConfiguration2
{
extern(Windows):
	final void SetDefaultMenuItems(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.RadialControllerSystemMenuItemKind) buttons)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerConfiguration).abi_SetDefaultMenuItems(buttons));
	}
	final void ResetToDefaultMenuItems()
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerConfiguration).abi_ResetToDefaultMenuItems());
	}
	final bool TrySelectDefaultMenuItem(Windows.UI.Input.RadialControllerSystemMenuItemKind type)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerConfiguration).abi_TrySelectDefaultMenuItem(type, &_ret));
		return _ret;
	}
	final void ActiveControllerWhenMenuIsSuppressed(Windows.UI.Input.RadialController value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerConfiguration2).set_ActiveControllerWhenMenuIsSuppressed(value));
	}
	final Windows.UI.Input.RadialController ActiveControllerWhenMenuIsSuppressed()
	{
		Windows.UI.Input.RadialController _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerConfiguration2).get_ActiveControllerWhenMenuIsSuppressed(&_ret));
		return _ret;
	}
	final void IsMenuSuppressed(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerConfiguration2).set_IsMenuSuppressed(value));
	}
	final bool IsMenuSuppressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerConfiguration2).get_IsMenuSuppressed(&_ret));
		return _ret;
	}

	private static Windows.UI.Input.IRadialControllerConfigurationStatics _staticInstance;
	public static Windows.UI.Input.IRadialControllerConfigurationStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Input.IRadialControllerConfigurationStatics);
		return _staticInstance;
	}
	static Windows.UI.Input.RadialControllerConfiguration GetForCurrentView()
	{
		Windows.UI.Input.RadialControllerConfiguration _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Input.IRadialControllerConfigurationStatics).abi_GetForCurrentView(&_ret));
		return _ret;
	}
}

interface RadialControllerControlAcquiredEventArgs : Windows.UI.Input.IRadialControllerControlAcquiredEventArgs, Windows.UI.Input.IRadialControllerControlAcquiredEventArgs2
{
extern(Windows):
	final Windows.UI.Input.RadialControllerScreenContact Contact()
	{
		Windows.UI.Input.RadialControllerScreenContact _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerControlAcquiredEventArgs).get_Contact(&_ret));
		return _ret;
	}
	final bool IsButtonPressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerControlAcquiredEventArgs2).get_IsButtonPressed(&_ret));
		return _ret;
	}
	final Windows.Devices.Haptics.SimpleHapticsController SimpleHapticsController()
	{
		Windows.Devices.Haptics.SimpleHapticsController _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerControlAcquiredEventArgs2).get_SimpleHapticsController(&_ret));
		return _ret;
	}
}

interface RadialControllerMenu : Windows.UI.Input.IRadialControllerMenu
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.UI.Input.RadialControllerMenuItem) Items()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Input.RadialControllerMenuItem) _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerMenu).get_Items(&_ret));
		return _ret;
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerMenu).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerMenu).set_IsEnabled(value));
	}
	final Windows.UI.Input.RadialControllerMenuItem GetSelectedMenuItem()
	{
		Windows.UI.Input.RadialControllerMenuItem _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerMenu).abi_GetSelectedMenuItem(&_ret));
		return _ret;
	}
	final void SelectMenuItem(Windows.UI.Input.RadialControllerMenuItem menuItem)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerMenu).abi_SelectMenuItem(menuItem));
	}
	final bool TrySelectPreviouslySelectedMenuItem()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerMenu).abi_TrySelectPreviouslySelectedMenuItem(&_ret));
		return _ret;
	}
}

interface RadialControllerMenuItem : Windows.UI.Input.IRadialControllerMenuItem
{
extern(Windows):
	final HSTRING DisplayText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerMenuItem).get_DisplayText(&_ret));
		return _ret;
	}
	final IInspectable Tag()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerMenuItem).get_Tag(&_ret));
		return _ret;
	}
	final void Tag(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerMenuItem).set_Tag(value));
	}
	final EventRegistrationToken OnInvoked(void delegate(Windows.UI.Input.RadialControllerMenuItem, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerMenuItem).add_Invoked(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.RadialControllerMenuItem, IInspectable), Windows.UI.Input.RadialControllerMenuItem, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeInvoked(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerMenuItem).remove_Invoked(token));
	}

	private static Windows.UI.Input.IRadialControllerMenuItemStatics _staticInstance;
	public static Windows.UI.Input.IRadialControllerMenuItemStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Input.IRadialControllerMenuItemStatics);
		return _staticInstance;
	}
	static Windows.UI.Input.RadialControllerMenuItem CreateFromIcon(HSTRING displayText, Windows.Storage.Streams.RandomAccessStreamReference icon)
	{
		Windows.UI.Input.RadialControllerMenuItem _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Input.IRadialControllerMenuItemStatics).abi_CreateFromIcon(displayText, icon, &_ret));
		return _ret;
	}
	static Windows.UI.Input.RadialControllerMenuItem CreateFromKnownIcon(HSTRING displayText, Windows.UI.Input.RadialControllerMenuKnownIcon value)
	{
		Windows.UI.Input.RadialControllerMenuItem _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Input.IRadialControllerMenuItemStatics).abi_CreateFromKnownIcon(displayText, value, &_ret));
		return _ret;
	}
}

interface RadialControllerRotationChangedEventArgs : Windows.UI.Input.IRadialControllerRotationChangedEventArgs, Windows.UI.Input.IRadialControllerRotationChangedEventArgs2
{
extern(Windows):
	final double RotationDeltaInDegrees()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerRotationChangedEventArgs).get_RotationDeltaInDegrees(&_ret));
		return _ret;
	}
	final Windows.UI.Input.RadialControllerScreenContact Contact()
	{
		Windows.UI.Input.RadialControllerScreenContact _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerRotationChangedEventArgs).get_Contact(&_ret));
		return _ret;
	}
	final bool IsButtonPressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerRotationChangedEventArgs2).get_IsButtonPressed(&_ret));
		return _ret;
	}
	final Windows.Devices.Haptics.SimpleHapticsController SimpleHapticsController()
	{
		Windows.Devices.Haptics.SimpleHapticsController _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerRotationChangedEventArgs2).get_SimpleHapticsController(&_ret));
		return _ret;
	}
}

interface RadialControllerScreenContact : Windows.UI.Input.IRadialControllerScreenContact
{
extern(Windows):
	final Windows.Foundation.Rect Bounds()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerScreenContact).get_Bounds(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerScreenContact).get_Position(&_ret));
		return _ret;
	}
}

interface RadialControllerScreenContactContinuedEventArgs : Windows.UI.Input.IRadialControllerScreenContactContinuedEventArgs, Windows.UI.Input.IRadialControllerScreenContactContinuedEventArgs2
{
extern(Windows):
	final Windows.UI.Input.RadialControllerScreenContact Contact()
	{
		Windows.UI.Input.RadialControllerScreenContact _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerScreenContactContinuedEventArgs).get_Contact(&_ret));
		return _ret;
	}
	final bool IsButtonPressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerScreenContactContinuedEventArgs2).get_IsButtonPressed(&_ret));
		return _ret;
	}
	final Windows.Devices.Haptics.SimpleHapticsController SimpleHapticsController()
	{
		Windows.Devices.Haptics.SimpleHapticsController _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerScreenContactContinuedEventArgs2).get_SimpleHapticsController(&_ret));
		return _ret;
	}
}

interface RadialControllerScreenContactEndedEventArgs : Windows.UI.Input.IRadialControllerScreenContactEndedEventArgs
{
extern(Windows):
	final bool IsButtonPressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerScreenContactEndedEventArgs).get_IsButtonPressed(&_ret));
		return _ret;
	}
	final Windows.Devices.Haptics.SimpleHapticsController SimpleHapticsController()
	{
		Windows.Devices.Haptics.SimpleHapticsController _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerScreenContactEndedEventArgs).get_SimpleHapticsController(&_ret));
		return _ret;
	}
}

interface RadialControllerScreenContactStartedEventArgs : Windows.UI.Input.IRadialControllerScreenContactStartedEventArgs, Windows.UI.Input.IRadialControllerScreenContactStartedEventArgs2
{
extern(Windows):
	final Windows.UI.Input.RadialControllerScreenContact Contact()
	{
		Windows.UI.Input.RadialControllerScreenContact _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerScreenContactStartedEventArgs).get_Contact(&_ret));
		return _ret;
	}
	final bool IsButtonPressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerScreenContactStartedEventArgs2).get_IsButtonPressed(&_ret));
		return _ret;
	}
	final Windows.Devices.Haptics.SimpleHapticsController SimpleHapticsController()
	{
		Windows.Devices.Haptics.SimpleHapticsController _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRadialControllerScreenContactStartedEventArgs2).get_SimpleHapticsController(&_ret));
		return _ret;
	}
}

interface RightTappedEventArgs : Windows.UI.Input.IRightTappedEventArgs
{
extern(Windows):
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRightTappedEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.IRightTappedEventArgs).get_Position(&_ret));
		return _ret;
	}
}

interface TappedEventArgs : Windows.UI.Input.ITappedEventArgs
{
extern(Windows):
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Input.ITappedEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.ITappedEventArgs).get_Position(&_ret));
		return _ret;
	}
	final UINT32 TapCount()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.UI.Input.ITappedEventArgs).get_TapCount(&_ret));
		return _ret;
	}
}

enum CrossSlidingState
{
	Started = 0,
	Dragging = 1,
	Selecting = 2,
	SelectSpeedBumping = 3,
	SpeedBumping = 4,
	Rearranging = 5,
	Completed = 6
}

enum DraggingState
{
	Started = 0,
	Continuing = 1,
	Completed = 2
}

enum EdgeGestureKind
{
	Touch = 0,
	Keyboard = 1,
	Mouse = 2
}

@bitflags
enum GestureSettings
{
	None = 0x0,
	Tap = 0x1,
	DoubleTap = 0x2,
	Hold = 0x4,
	HoldWithMouse = 0x8,
	RightTap = 0x10,
	Drag = 0x20,
	ManipulationTranslateX = 0x40,
	ManipulationTranslateY = 0x80,
	ManipulationTranslateRailsX = 0x100,
	ManipulationTranslateRailsY = 0x200,
	ManipulationRotate = 0x400,
	ManipulationScale = 0x800,
	ManipulationTranslateInertia = 0x1000,
	ManipulationRotateInertia = 0x2000,
	ManipulationScaleInertia = 0x4000,
	CrossSlide = 0x8000,
	ManipulationMultipleFingerPanning = 0x10000
}

enum HoldingState
{
	Started = 0,
	Completed = 1,
	Canceled = 2
}

enum PointerUpdateKind
{
	Other = 0,
	LeftButtonPressed = 1,
	LeftButtonReleased = 2,
	RightButtonPressed = 3,
	RightButtonReleased = 4,
	MiddleButtonPressed = 5,
	MiddleButtonReleased = 6,
	XButton1Pressed = 7,
	XButton1Released = 8,
	XButton2Pressed = 9,
	XButton2Released = 10
}

enum RadialControllerMenuKnownIcon
{
	Scroll = 0,
	Zoom = 1,
	UndoRedo = 2,
	Volume = 3,
	NextPreviousTrack = 4,
	Ruler = 5,
	InkColor = 6,
	InkThickness = 7,
	PenType = 8
}

enum RadialControllerSystemMenuItemKind
{
	Scroll = 0,
	Zoom = 1,
	UndoRedo = 2,
	Volume = 3,
	NextPreviousTrack = 4
}