module Windows.UI.Input;

import dwinrt;

struct CrossSlideThresholds
{
	FLOAT SelectionStart;
	FLOAT SpeedBumpStart;
	FLOAT SpeedBumpEnd;
	FLOAT RearrangeStart;
}

struct ManipulationDelta
{
	Windows.Foundation.Point Translation;
	FLOAT Scale;
	FLOAT Rotation;
	FLOAT Expansion;
}

struct ManipulationVelocities
{
	Windows.Foundation.Point Linear;
	FLOAT Angular;
	FLOAT Expansion;
}

@uuid("e9374738-6f88-41d9-8720-78e08e398349")
@WinrtFactory("Windows.UI.Input.CrossSlidingEventArgs")
interface ICrossSlidingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_CrossSlidingState(Windows.UI.Input.CrossSlidingState* return_value);
}

@uuid("1c905384-083c-4bd3-b559-179cddeb33ec")
@WinrtFactory("Windows.UI.Input.DraggingEventArgs")
interface IDraggingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_DraggingState(Windows.UI.Input.DraggingState* return_value);
}

@uuid("580d5292-2ab1-49aa-a7f0-33bd3f8df9f1")
@WinrtFactory("Windows.UI.Input.EdgeGesture")
interface IEdgeGesture : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Kind(Windows.UI.Input.EdgeGestureKind* return_value);
}

@uuid("bc6a8519-18ee-4043-9839-4fc584d60a14")
@WinrtFactory("Windows.UI.Input.EdgeGesture")
interface IEdgeGestureStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Input.EdgeGesture* return_current);
}

@uuid("b47a37bf-3d6b-4f88-83e8-6dcb4012ffb0")
@WinrtFactory("Windows.UI.Input.GestureRecognizer")
interface IGestureRecognizer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_GestureSettings(Windows.UI.Input.GestureSettings* return_value);
	HRESULT set_GestureSettings(Windows.UI.Input.GestureSettings value);
	HRESULT get_IsInertial(bool* return_value);
	HRESULT get_IsActive(bool* return_value);
	HRESULT get_ShowGestureFeedback(bool* return_value);
	HRESULT set_ShowGestureFeedback(bool value);
	HRESULT get_PivotCenter(Windows.Foundation.Point* return_value);
	HRESULT set_PivotCenter(Windows.Foundation.Point value);
	HRESULT get_PivotRadius(FLOAT* return_value);
	HRESULT set_PivotRadius(FLOAT value);
	HRESULT get_InertiaTranslationDeceleration(FLOAT* return_value);
	HRESULT set_InertiaTranslationDeceleration(FLOAT value);
	HRESULT get_InertiaRotationDeceleration(FLOAT* return_value);
	HRESULT set_InertiaRotationDeceleration(FLOAT value);
	HRESULT get_InertiaExpansionDeceleration(FLOAT* return_value);
	HRESULT set_InertiaExpansionDeceleration(FLOAT value);
	HRESULT get_InertiaTranslationDisplacement(FLOAT* return_value);
	HRESULT set_InertiaTranslationDisplacement(FLOAT value);
	HRESULT get_InertiaRotationAngle(FLOAT* return_value);
	HRESULT set_InertiaRotationAngle(FLOAT value);
	HRESULT get_InertiaExpansion(FLOAT* return_value);
	HRESULT set_InertiaExpansion(FLOAT value);
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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_HoldingState(Windows.UI.Input.HoldingState* return_value);
}

@uuid("b4baf068-8f49-446c-8db5-8c0ffe85cc9e")
@WinrtFactory("Windows.UI.Input.KeyboardDeliveryInterceptor")
interface IKeyboardDeliveryInterceptor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Input.KeyboardDeliveryInterceptor* return_keyboardDeliverySettings);
}

@uuid("b34ab22b-d19b-46ff-9f38-dec7754bb9e7")
@WinrtFactory("Windows.UI.Input.ManipulationCompletedEventArgs")
interface IManipulationCompletedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_Cumulative(Windows.UI.Input.ManipulationDelta* return_value);
}

@uuid("cb354ce5-abb8-4f9f-b3ce-8181aa61ad82")
@WinrtFactory("Windows.UI.Input.ManipulationUpdatedEventArgs")
interface IManipulationUpdatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CharTranslation(Windows.Foundation.Point* return_value);
	HRESULT set_CharTranslation(Windows.Foundation.Point value);
	HRESULT get_DeltaScale(FLOAT* return_value);
	HRESULT set_DeltaScale(FLOAT value);
	HRESULT get_DeltaRotationAngle(FLOAT* return_value);
	HRESULT set_DeltaRotationAngle(FLOAT value);
	HRESULT get_PageTranslation(Windows.Foundation.Point* return_value);
	HRESULT set_PageTranslation(Windows.Foundation.Point value);
}

@uuid("e995317d-7296-42d9-8233-c5be73b74a4a")
@WinrtFactory("Windows.UI.Input.PointerPoint")
interface IPointerPoint : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PointerDevice(Windows.Devices.Input.PointerDevice* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_RawPosition(Windows.Foundation.Point* return_value);
	HRESULT get_PointerId(UINT32* return_value);
	HRESULT get_FrameId(UINT32* return_value);
	HRESULT get_Timestamp(UINT64* return_value);
	HRESULT get_IsInContact(bool* return_value);
	HRESULT get_Properties(Windows.UI.Input.PointerPointProperties* return_value);
}

@uuid("c79d8a4b-c163-4ee7-803f-67ce79f9972d")
@WinrtFactory("Windows.UI.Input.PointerPointProperties")
interface IPointerPointProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Pressure(FLOAT* return_value);
	HRESULT get_IsInverted(bool* return_value);
	HRESULT get_IsEraser(bool* return_value);
	HRESULT get_Orientation(FLOAT* return_value);
	HRESULT get_XTilt(FLOAT* return_value);
	HRESULT get_YTilt(FLOAT* return_value);
	HRESULT get_Twist(FLOAT* return_value);
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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ZDistance(Windows.Foundation.IReference!(FLOAT)* return_value);
}

@uuid("a506638d-2a1a-413e-bc75-9f38381cc069")
@WinrtFactory("Windows.UI.Input.PointerPoint")
interface IPointerPointStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetCurrentPoint(UINT32 pointerId, Windows.UI.Input.PointerPoint* return_pointerPoint);
	HRESULT abi_GetIntermediatePoints(UINT32 pointerId, Windows.Foundation.Collections.IVector!(Windows.UI.Input.PointerPoint)* return_pointerPoints);
	HRESULT abi_GetCurrentPointTransformed(UINT32 pointerId, Windows.UI.Input.IPointerPointTransform transform, Windows.UI.Input.PointerPoint* return_pointerPoint);
	HRESULT abi_GetIntermediatePointsTransformed(UINT32 pointerId, Windows.UI.Input.IPointerPointTransform transform, Windows.Foundation.Collections.IVector!(Windows.UI.Input.PointerPoint)* return_pointerPoints);
}

@uuid("4d5fe14f-b87c-4028-bc9c-59e9947fb056")
interface IPointerPointTransform : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Inverse(Windows.UI.Input.IPointerPointTransform* return_value);
	HRESULT abi_TryTransform(Windows.Foundation.Point inPoint, Windows.Foundation.Point* out_outPoint, bool* return_returnValue);
	HRESULT abi_TransformBounds(Windows.Foundation.Rect rect, Windows.Foundation.Rect* return_returnValue);
}

@uuid("4d1e6461-84f7-499d-bd91-2a36e2b7aaa2")
@WinrtFactory("Windows.UI.Input.PointerVisualizationSettings")
interface IPointerVisualizationSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Input.PointerVisualizationSettings* return_visualizationSettings);
}

@uuid("3055d1c8-df51-43d4-b23b-0e1037467a09")
@WinrtFactory("Windows.UI.Input.RadialController")
interface IRadialController : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Contact(Windows.UI.Input.RadialControllerScreenContact* return_value);
}

@uuid("3d577ef3-3cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerButtonClickedEventArgs")
interface IRadialControllerButtonClickedEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("3d577eee-3cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerButtonHoldingEventArgs")
interface IRadialControllerButtonHoldingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Contact(Windows.UI.Input.RadialControllerScreenContact* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("3d577eed-4cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerButtonPressedEventArgs")
interface IRadialControllerButtonPressedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Contact(Windows.UI.Input.RadialControllerScreenContact* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("3d577eef-3cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerButtonReleasedEventArgs")
interface IRadialControllerButtonReleasedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Contact(Windows.UI.Input.RadialControllerScreenContact* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("a6b79ecb-6a52-4430-910c-56370a9d6b42")
@WinrtFactory("Windows.UI.Input.RadialControllerConfiguration")
interface IRadialControllerConfiguration : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetDefaultMenuItems(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.RadialControllerSystemMenuItemKind) buttons);
	HRESULT abi_ResetToDefaultMenuItems();
	HRESULT abi_TrySelectDefaultMenuItem(Windows.UI.Input.RadialControllerSystemMenuItemKind type, bool* return_result);
}

@uuid("3d577ef7-3cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerConfiguration")
interface IRadialControllerConfiguration2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Input.RadialControllerConfiguration* return_configuration);
}

@uuid("206aa439-e651-11e5-bf62-2c27d7404e85")
@WinrtFactory("Windows.UI.Input.RadialControllerControlAcquiredEventArgs")
interface IRadialControllerControlAcquiredEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Contact(Windows.UI.Input.RadialControllerScreenContact* return_value);
}

@uuid("3d577ef4-3cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerControlAcquiredEventArgs")
interface IRadialControllerControlAcquiredEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsButtonPressed(bool* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("8506b35d-f640-4412-aba0-bad077e5ea8a")
@WinrtFactory("Windows.UI.Input.RadialControllerMenu")
interface IRadialControllerMenu : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFromIcon(HSTRING displayText, Windows.Storage.Streams.RandomAccessStreamReference icon, Windows.UI.Input.RadialControllerMenuItem* return_result);
	HRESULT abi_CreateFromKnownIcon(HSTRING displayText, Windows.UI.Input.RadialControllerMenuKnownIcon value, Windows.UI.Input.RadialControllerMenuItem* return_result);
}

@uuid("0cbb70be-7e3e-48bd-be04-2c7fcaa9c1ff")
@WinrtFactory("Windows.UI.Input.RadialControllerMenuItem")
interface IRadialControllerMenuItemStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFromFontGlyph(HSTRING displayText, HSTRING glyph, HSTRING fontFamily, Windows.UI.Input.RadialControllerMenuItem* return_result);
	HRESULT abi_CreateFromFontGlyphWithUri(HSTRING displayText, HSTRING glyph, HSTRING fontFamily, Windows.Foundation.Uri fontUri, Windows.UI.Input.RadialControllerMenuItem* return_result);
}

@uuid("206aa435-e651-11e5-bf62-2c27d7404e85")
@WinrtFactory("Windows.UI.Input.RadialControllerRotationChangedEventArgs")
interface IRadialControllerRotationChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RotationDeltaInDegrees(double* return_value);
	HRESULT get_Contact(Windows.UI.Input.RadialControllerScreenContact* return_value);
}

@uuid("3d577eec-4cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerRotationChangedEventArgs")
interface IRadialControllerRotationChangedEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsButtonPressed(bool* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("206aa434-e651-11e5-bf62-2c27d7404e85")
@WinrtFactory("Windows.UI.Input.RadialControllerScreenContact")
interface IRadialControllerScreenContact : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Bounds(Windows.Foundation.Rect* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
}

@uuid("206aa437-e651-11e5-bf62-2c27d7404e85")
@WinrtFactory("Windows.UI.Input.RadialControllerScreenContactContinuedEventArgs")
interface IRadialControllerScreenContactContinuedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Contact(Windows.UI.Input.RadialControllerScreenContact* return_value);
}

@uuid("3d577ef1-3cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerScreenContactContinuedEventArgs")
interface IRadialControllerScreenContactContinuedEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsButtonPressed(bool* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("3d577ef2-3cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerScreenContactEndedEventArgs")
interface IRadialControllerScreenContactEndedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsButtonPressed(bool* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("206aa436-e651-11e5-bf62-2c27d7404e85")
@WinrtFactory("Windows.UI.Input.RadialControllerScreenContactStartedEventArgs")
interface IRadialControllerScreenContactStartedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Contact(Windows.UI.Input.RadialControllerScreenContact* return_value);
}

@uuid("3d577ef0-3cee-11e6-b535-001bdc06ab3b")
@WinrtFactory("Windows.UI.Input.RadialControllerScreenContactStartedEventArgs")
interface IRadialControllerScreenContactStartedEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsButtonPressed(bool* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
}

@uuid("faded0b7-b84c-4894-87aa-8f25aa5f288b")
@WinrtFactory("Windows.UI.Input.RadialController")
interface IRadialControllerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_IsSupported(bool* return_result);
	HRESULT abi_CreateForCurrentView(Windows.UI.Input.RadialController* return_result);
}

@uuid("4cbf40bd-af7a-4a36-9476-b1dce141709a")
@WinrtFactory("Windows.UI.Input.RightTappedEventArgs")
interface IRightTappedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
}

@uuid("cfa126e4-253a-4c3c-953b-395c37aed309")
@WinrtFactory("Windows.UI.Input.TappedEventArgs")
interface ITappedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_TapCount(UINT32* return_value);
}

interface CrossSlidingEventArgs : Windows.UI.Input.ICrossSlidingEventArgs
{
}

interface DraggingEventArgs : Windows.UI.Input.IDraggingEventArgs
{
}

interface EdgeGesture : Windows.UI.Input.IEdgeGesture
{
}

interface EdgeGestureEventArgs : Windows.UI.Input.IEdgeGestureEventArgs
{
}

interface GestureRecognizer : Windows.UI.Input.IGestureRecognizer
{
}

interface HoldingEventArgs : Windows.UI.Input.IHoldingEventArgs
{
}

interface KeyboardDeliveryInterceptor : Windows.UI.Input.IKeyboardDeliveryInterceptor
{
}

interface ManipulationCompletedEventArgs : Windows.UI.Input.IManipulationCompletedEventArgs
{
}

interface ManipulationInertiaStartingEventArgs : Windows.UI.Input.IManipulationInertiaStartingEventArgs
{
}

interface ManipulationStartedEventArgs : Windows.UI.Input.IManipulationStartedEventArgs
{
}

interface ManipulationUpdatedEventArgs : Windows.UI.Input.IManipulationUpdatedEventArgs
{
}

interface MouseWheelParameters : Windows.UI.Input.IMouseWheelParameters
{
}

interface PointerPoint : Windows.UI.Input.IPointerPoint
{
}

interface PointerPointProperties : Windows.UI.Input.IPointerPointProperties, Windows.UI.Input.IPointerPointProperties2
{
}

interface PointerVisualizationSettings : Windows.UI.Input.IPointerVisualizationSettings
{
}

interface RadialController : Windows.UI.Input.IRadialController, Windows.UI.Input.IRadialController2
{
}

interface RadialControllerButtonClickedEventArgs : Windows.UI.Input.IRadialControllerButtonClickedEventArgs, Windows.UI.Input.IRadialControllerButtonClickedEventArgs2
{
}

interface RadialControllerButtonHoldingEventArgs : Windows.UI.Input.IRadialControllerButtonHoldingEventArgs
{
}

interface RadialControllerButtonPressedEventArgs : Windows.UI.Input.IRadialControllerButtonPressedEventArgs
{
}

interface RadialControllerButtonReleasedEventArgs : Windows.UI.Input.IRadialControllerButtonReleasedEventArgs
{
}

interface RadialControllerConfiguration : Windows.UI.Input.IRadialControllerConfiguration, Windows.UI.Input.IRadialControllerConfiguration2
{
}

interface RadialControllerControlAcquiredEventArgs : Windows.UI.Input.IRadialControllerControlAcquiredEventArgs, Windows.UI.Input.IRadialControllerControlAcquiredEventArgs2
{
}

interface RadialControllerMenu : Windows.UI.Input.IRadialControllerMenu
{
}

interface RadialControllerMenuItem : Windows.UI.Input.IRadialControllerMenuItem
{
}

interface RadialControllerRotationChangedEventArgs : Windows.UI.Input.IRadialControllerRotationChangedEventArgs, Windows.UI.Input.IRadialControllerRotationChangedEventArgs2
{
}

interface RadialControllerScreenContact : Windows.UI.Input.IRadialControllerScreenContact
{
}

interface RadialControllerScreenContactContinuedEventArgs : Windows.UI.Input.IRadialControllerScreenContactContinuedEventArgs, Windows.UI.Input.IRadialControllerScreenContactContinuedEventArgs2
{
}

interface RadialControllerScreenContactEndedEventArgs : Windows.UI.Input.IRadialControllerScreenContactEndedEventArgs
{
}

interface RadialControllerScreenContactStartedEventArgs : Windows.UI.Input.IRadialControllerScreenContactStartedEventArgs, Windows.UI.Input.IRadialControllerScreenContactStartedEventArgs2
{
}

interface RightTappedEventArgs : Windows.UI.Input.IRightTappedEventArgs
{
}

interface TappedEventArgs : Windows.UI.Input.ITappedEventArgs
{
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