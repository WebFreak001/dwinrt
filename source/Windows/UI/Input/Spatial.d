module Windows.UI.Input.Spatial;

import dwinrt;

@uuid("71605bcc-0c35-4673-adbd-cc04caa6ef45")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialGestureRecognizer")
interface ISpatialGestureRecognizer : IInspectable
{
extern(Windows):
	HRESULT add_RecognitionStarted(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialRecognitionStartedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RecognitionStarted(EventRegistrationToken token);
	HRESULT add_RecognitionEnded(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialRecognitionEndedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RecognitionEnded(EventRegistrationToken token);
	HRESULT add_Tapped(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialTappedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Tapped(EventRegistrationToken token);
	HRESULT add_HoldStarted(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialHoldStartedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_HoldStarted(EventRegistrationToken token);
	HRESULT add_HoldCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialHoldCompletedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_HoldCompleted(EventRegistrationToken token);
	HRESULT add_HoldCanceled(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialHoldCanceledEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_HoldCanceled(EventRegistrationToken token);
	HRESULT add_ManipulationStarted(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialManipulationStartedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ManipulationStarted(EventRegistrationToken token);
	HRESULT add_ManipulationUpdated(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialManipulationUpdatedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ManipulationUpdated(EventRegistrationToken token);
	HRESULT add_ManipulationCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialManipulationCompletedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ManipulationCompleted(EventRegistrationToken token);
	HRESULT add_ManipulationCanceled(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialManipulationCanceledEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ManipulationCanceled(EventRegistrationToken token);
	HRESULT add_NavigationStarted(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialNavigationStartedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_NavigationStarted(EventRegistrationToken token);
	HRESULT add_NavigationUpdated(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialNavigationUpdatedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_NavigationUpdated(EventRegistrationToken token);
	HRESULT add_NavigationCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialNavigationCompletedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_NavigationCompleted(EventRegistrationToken token);
	HRESULT add_NavigationCanceled(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialNavigationCanceledEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_NavigationCanceled(EventRegistrationToken token);
	HRESULT abi_CaptureInteraction(Windows.UI.Input.Spatial.SpatialInteraction interaction);
	HRESULT abi_CancelPendingGestures();
	HRESULT abi_TrySetGestureSettings(Windows.UI.Input.Spatial.SpatialGestureSettings settings, bool* return_succeeded);
	HRESULT get_GestureSettings(Windows.UI.Input.Spatial.SpatialGestureSettings* return_value);
}

@uuid("77214186-57b9-3150-8382-698b24e264d0")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialGestureRecognizer")
interface ISpatialGestureRecognizerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.UI.Input.Spatial.SpatialGestureSettings settings, Windows.UI.Input.Spatial.SpatialGestureRecognizer* return_value);
}

@uuid("5dfcb667-4caa-4093-8c35-b601a839f31b")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialHoldCanceledEventArgs")
interface ISpatialHoldCanceledEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSourceKind(Windows.UI.Input.Spatial.SpatialInteractionSourceKind* return_value);
}

@uuid("3f64470b-4cfd-43da-8dc4-e64552173971")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialHoldCompletedEventArgs")
interface ISpatialHoldCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSourceKind(Windows.UI.Input.Spatial.SpatialInteractionSourceKind* return_value);
}

@uuid("8e343d79-acb6-4144-8615-2cfba8a3cb3f")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialHoldStartedEventArgs")
interface ISpatialHoldStartedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSourceKind(Windows.UI.Input.Spatial.SpatialInteractionSourceKind* return_value);
	HRESULT abi_TryGetPointerPose(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.UI.Input.Spatial.SpatialPointerPose* return_value);
}

@uuid("fc967639-88e6-4646-9112-4344aaec9dfa")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteraction")
interface ISpatialInteraction : IInspectable
{
extern(Windows):
	HRESULT get_SourceState(Windows.UI.Input.Spatial.SpatialInteractionSourceState* return_value);
}

@uuid("5f0e5ba3-0954-4e97-86c5-e7f30b114dfd")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionController")
interface ISpatialInteractionController : IInspectable
{
extern(Windows):
	HRESULT get_HasTouchpad(bool* return_value);
	HRESULT get_HasThumbstick(bool* return_value);
	HRESULT get_SimpleHapticsController(Windows.Devices.Haptics.SimpleHapticsController* return_value);
	HRESULT get_VendorId(UINT16* return_value);
	HRESULT get_ProductId(UINT16* return_value);
	HRESULT get_Version(UINT16* return_value);
}

@uuid("61056fb1-7ba9-4e35-b93f-9272cba9b28b")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionControllerProperties")
interface ISpatialInteractionControllerProperties : IInspectable
{
extern(Windows):
	HRESULT get_IsTouchpadTouched(bool* return_value);
	HRESULT get_IsTouchpadPressed(bool* return_value);
	HRESULT get_IsThumbstickPressed(bool* return_value);
	HRESULT get_ThumbstickX(double* return_value);
	HRESULT get_ThumbstickY(double* return_value);
	HRESULT get_TouchpadX(double* return_value);
	HRESULT get_TouchpadY(double* return_value);
}

@uuid("075878e4-5961-3b41-9dfb-cea5d89cc38a")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionDetectedEventArgs")
interface ISpatialInteractionDetectedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSourceKind(Windows.UI.Input.Spatial.SpatialInteractionSourceKind* return_value);
	HRESULT abi_TryGetPointerPose(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.UI.Input.Spatial.SpatialPointerPose* return_value);
	HRESULT get_Interaction(Windows.UI.Input.Spatial.SpatialInteraction* return_value);
}

@uuid("7b263e93-5f13-419c-97d5-834678266aa6")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionDetectedEventArgs")
interface ISpatialInteractionDetectedEventArgs2_Base : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSource(Windows.UI.Input.Spatial.SpatialInteractionSource* return_value);
}
@uuid("7b263e93-5f13-419c-97d5-834678266aa6")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionDetectedEventArgs")
interface ISpatialInteractionDetectedEventArgs2 : ISpatialInteractionDetectedEventArgs2_Base, Windows.UI.Input.Spatial.ISpatialInteractionDetectedEventArgs {}

@uuid("32a64ea8-a15a-3995-b8bd-80513cb5adef")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionManager")
interface ISpatialInteractionManager : IInspectable
{
extern(Windows):
	HRESULT add_SourceDetected(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SourceDetected(EventRegistrationToken token);
	HRESULT add_SourceLost(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SourceLost(EventRegistrationToken token);
	HRESULT add_SourceUpdated(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SourceUpdated(EventRegistrationToken token);
	HRESULT add_SourcePressed(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SourcePressed(EventRegistrationToken token);
	HRESULT add_SourceReleased(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SourceReleased(EventRegistrationToken token);
	HRESULT add_InteractionDetected(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionDetectedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_InteractionDetected(EventRegistrationToken token);
	HRESULT abi_GetDetectedSourcesAtTimestamp(Windows.Perception.PerceptionTimestamp timeStamp, Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Spatial.SpatialInteractionSourceState)* return_value);
}

@uuid("00e31fa6-8ca2-30bf-91fe-d9cb4a008990")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionManager")
interface ISpatialInteractionManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Input.Spatial.SpatialInteractionManager* return_value);
}

@uuid("fb5433ba-b0b3-3148-9f3b-e9f5de568f5d")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionSource")
interface ISpatialInteractionSource : IInspectable
{
extern(Windows):
	HRESULT get_Id(UINT32* return_value);
	HRESULT get_Kind(Windows.UI.Input.Spatial.SpatialInteractionSourceKind* return_value);
}

@uuid("e4c5b70c-0470-4028-88c0-a0eb44d34efe")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionSource")
interface ISpatialInteractionSource2_Base : IInspectable
{
extern(Windows):
	HRESULT get_IsPointingSupported(bool* return_value);
	HRESULT get_IsMenuSupported(bool* return_value);
	HRESULT get_IsGraspSupported(bool* return_value);
	HRESULT get_Controller(Windows.UI.Input.Spatial.SpatialInteractionController* return_value);
	HRESULT abi_TryGetStateAtTimestamp(Windows.Perception.PerceptionTimestamp timestamp, Windows.UI.Input.Spatial.SpatialInteractionSourceState* return_value);
}
@uuid("e4c5b70c-0470-4028-88c0-a0eb44d34efe")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionSource")
interface ISpatialInteractionSource2 : ISpatialInteractionSource2_Base, Windows.UI.Input.Spatial.ISpatialInteractionSource {}

@uuid("23b786cf-ec23-3979-b27c-eb0e12feb7c7")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs")
interface ISpatialInteractionSourceEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_State(Windows.UI.Input.Spatial.SpatialInteractionSourceState* return_value);
}

@uuid("d8b4b467-e648-4d52-ab49-e0d227199f63")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs")
interface ISpatialInteractionSourceEventArgs2_Base : IInspectable
{
extern(Windows):
	HRESULT get_PressKind(Windows.UI.Input.Spatial.SpatialInteractionPressKind* return_value);
}
@uuid("d8b4b467-e648-4d52-ab49-e0d227199f63")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs")
interface ISpatialInteractionSourceEventArgs2 : ISpatialInteractionSourceEventArgs2_Base, Windows.UI.Input.Spatial.ISpatialInteractionSourceEventArgs {}

@uuid("ea4696c4-7e8b-30ca-bcc5-c77189cea30a")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionSourceLocation")
interface ISpatialInteractionSourceLocation : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3)* return_value);
	HRESULT get_Velocity(Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3)* return_value);
}

@uuid("4c671045-3917-40fc-a9ac-31c9cf5ff91b")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionSourceLocation")
interface ISpatialInteractionSourceLocation2 : IInspectable
{
extern(Windows):
	HRESULT get_Orientation(Windows.Foundation.IReference!(Windows.Foundation.Numerics.Quaternion)* return_value);
}

@uuid("05604542-3ef7-3222-9f53-63c9cb7e3bc7")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionSourceProperties")
interface ISpatialInteractionSourceProperties : IInspectable
{
extern(Windows):
	HRESULT abi_TryGetSourceLossMitigationDirection(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3)* return_value);
	HRESULT get_SourceLossRisk(double* return_value);
	HRESULT abi_TryGetLocation(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.UI.Input.Spatial.SpatialInteractionSourceLocation* return_value);
}

@uuid("d5c475ef-4b63-37ec-98b9-9fc652b9d2f2")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionSourceState")
interface ISpatialInteractionSourceState : IInspectable
{
extern(Windows):
	HRESULT get_Source(Windows.UI.Input.Spatial.SpatialInteractionSource* return_value);
	HRESULT get_Properties(Windows.UI.Input.Spatial.SpatialInteractionSourceProperties* return_value);
	HRESULT get_IsPressed(bool* return_value);
	HRESULT get_Timestamp(Windows.Perception.PerceptionTimestamp* return_value);
	HRESULT abi_TryGetPointerPose(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.UI.Input.Spatial.SpatialPointerPose* return_value);
}

@uuid("45f6d0bd-1773-492e-9ba3-8ac1cbe77c08")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionSourceState")
interface ISpatialInteractionSourceState2_Base : IInspectable
{
extern(Windows):
	HRESULT get_IsSelectPressed(bool* return_value);
	HRESULT get_IsMenuPressed(bool* return_value);
	HRESULT get_IsGrasped(bool* return_value);
	HRESULT get_SelectPressedValue(double* return_value);
	HRESULT get_ControllerProperties(Windows.UI.Input.Spatial.SpatialInteractionControllerProperties* return_value);
}
@uuid("45f6d0bd-1773-492e-9ba3-8ac1cbe77c08")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialInteractionSourceState")
interface ISpatialInteractionSourceState2 : ISpatialInteractionSourceState2_Base, Windows.UI.Input.Spatial.ISpatialInteractionSourceState {}

@uuid("2d40d1cb-e7da-4220-b0bf-819301674780")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialManipulationCanceledEventArgs")
interface ISpatialManipulationCanceledEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSourceKind(Windows.UI.Input.Spatial.SpatialInteractionSourceKind* return_value);
}

@uuid("05086802-f301-4343-9250-2fbaa5f87a37")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialManipulationCompletedEventArgs")
interface ISpatialManipulationCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSourceKind(Windows.UI.Input.Spatial.SpatialInteractionSourceKind* return_value);
	HRESULT abi_TryGetCumulativeDelta(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.UI.Input.Spatial.SpatialManipulationDelta* return_value);
}

@uuid("a7ec967a-d123-3a81-a15b-992923dcbe91")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialManipulationDelta")
interface ISpatialManipulationDelta : IInspectable
{
extern(Windows):
	HRESULT get_Translation(Windows.Foundation.Numerics.Vector3* return_value);
}

@uuid("a1d6bbce-42a5-377b-ada6-d28e3d384737")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialManipulationStartedEventArgs")
interface ISpatialManipulationStartedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSourceKind(Windows.UI.Input.Spatial.SpatialInteractionSourceKind* return_value);
	HRESULT abi_TryGetPointerPose(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.UI.Input.Spatial.SpatialPointerPose* return_value);
}

@uuid("5f230b9b-60c6-4dc6-bdc9-9f4a6f15fe49")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialManipulationUpdatedEventArgs")
interface ISpatialManipulationUpdatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSourceKind(Windows.UI.Input.Spatial.SpatialInteractionSourceKind* return_value);
	HRESULT abi_TryGetCumulativeDelta(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.UI.Input.Spatial.SpatialManipulationDelta* return_value);
}

@uuid("ce503edc-e8a5-46f0-92d4-3c122b35112a")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialNavigationCanceledEventArgs")
interface ISpatialNavigationCanceledEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSourceKind(Windows.UI.Input.Spatial.SpatialInteractionSourceKind* return_value);
}

@uuid("012e80b7-af3b-42c2-9e41-baaa0e721f3a")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialNavigationCompletedEventArgs")
interface ISpatialNavigationCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSourceKind(Windows.UI.Input.Spatial.SpatialInteractionSourceKind* return_value);
	HRESULT get_NormalizedOffset(Windows.Foundation.Numerics.Vector3* return_value);
}

@uuid("754a348a-fb64-4656-8ebd-9deecaafe475")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialNavigationStartedEventArgs")
interface ISpatialNavigationStartedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSourceKind(Windows.UI.Input.Spatial.SpatialInteractionSourceKind* return_value);
	HRESULT abi_TryGetPointerPose(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.UI.Input.Spatial.SpatialPointerPose* return_value);
	HRESULT get_IsNavigatingX(bool* return_value);
	HRESULT get_IsNavigatingY(bool* return_value);
	HRESULT get_IsNavigatingZ(bool* return_value);
}

@uuid("9b713fd7-839d-4a74-8732-45466fc044b5")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialNavigationUpdatedEventArgs")
interface ISpatialNavigationUpdatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSourceKind(Windows.UI.Input.Spatial.SpatialInteractionSourceKind* return_value);
	HRESULT get_NormalizedOffset(Windows.Foundation.Numerics.Vector3* return_value);
}

@uuid("a7104307-2c2b-4d3a-92a7-80ced7c4a0d0")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialPointerInteractionSourcePose")
interface ISpatialPointerInteractionSourcePose : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_ForwardDirection(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_UpDirection(Windows.Foundation.Numerics.Vector3* return_value);
}

@uuid("6953a42e-c17e-357d-97a1-7269d0ed2d10")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialPointerPose")
interface ISpatialPointerPose : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Perception.PerceptionTimestamp* return_value);
	HRESULT get_Head(Windows.Perception.People.HeadPose* return_value);
}

@uuid("9d202b17-954e-4e0c-96d1-b6790b6fc2fd")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialPointerPose")
interface ISpatialPointerPose2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_TryGetInteractionSourcePose(Windows.UI.Input.Spatial.SpatialInteractionSource source, Windows.UI.Input.Spatial.SpatialPointerInteractionSourcePose* return_value);
}
@uuid("9d202b17-954e-4e0c-96d1-b6790b6fc2fd")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialPointerPose")
interface ISpatialPointerPose2 : ISpatialPointerPose2_Base, Windows.UI.Input.Spatial.ISpatialPointerPose {}

@uuid("a25591a9-aca1-3ee0-9816-785cfb2e3fb8")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialPointerPose")
interface ISpatialPointerPoseStatics : IInspectable
{
extern(Windows):
	HRESULT abi_TryGetAtTimestamp(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Perception.PerceptionTimestamp timestamp, Windows.UI.Input.Spatial.SpatialPointerPose* return_value);
}

@uuid("0e35f5cb-3f75-43f3-ac81-d1dc2df9b1fb")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialRecognitionEndedEventArgs")
interface ISpatialRecognitionEndedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSourceKind(Windows.UI.Input.Spatial.SpatialInteractionSourceKind* return_value);
}

@uuid("24da128f-0008-4a6d-aa50-2a76f9cfb264")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialRecognitionStartedEventArgs")
interface ISpatialRecognitionStartedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSourceKind(Windows.UI.Input.Spatial.SpatialInteractionSourceKind* return_value);
	HRESULT abi_TryGetPointerPose(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.UI.Input.Spatial.SpatialPointerPose* return_value);
	HRESULT abi_IsGesturePossible(Windows.UI.Input.Spatial.SpatialGestureSettings gesture, bool* return_value);
}

@uuid("296d83de-f444-4aa1-b2bf-9dc88d567da6")
@WinrtFactory("Windows.UI.Input.Spatial.SpatialTappedEventArgs")
interface ISpatialTappedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSourceKind(Windows.UI.Input.Spatial.SpatialInteractionSourceKind* return_value);
	HRESULT abi_TryGetPointerPose(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.UI.Input.Spatial.SpatialPointerPose* return_value);
	HRESULT get_TapCount(UINT32* return_value);
}

interface SpatialGestureRecognizer : Windows.UI.Input.Spatial.ISpatialGestureRecognizer
{
extern(Windows):
	final EventRegistrationToken OnRecognitionStarted(void delegate(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialRecognitionStartedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_RecognitionStarted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialRecognitionStartedEventArgs), Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialRecognitionStartedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRecognitionStarted(EventRegistrationToken token)
	{
		Debug.OK(remove_RecognitionStarted(token));
	}
	final EventRegistrationToken OnRecognitionEnded(void delegate(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialRecognitionEndedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_RecognitionEnded(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialRecognitionEndedEventArgs), Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialRecognitionEndedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRecognitionEnded(EventRegistrationToken token)
	{
		Debug.OK(remove_RecognitionEnded(token));
	}
	final EventRegistrationToken OnTapped(void delegate(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialTappedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Tapped(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialTappedEventArgs), Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialTappedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTapped(EventRegistrationToken token)
	{
		Debug.OK(remove_Tapped(token));
	}
	final EventRegistrationToken OnHoldStarted(void delegate(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialHoldStartedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HoldStarted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialHoldStartedEventArgs), Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialHoldStartedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeHoldStarted(EventRegistrationToken token)
	{
		Debug.OK(remove_HoldStarted(token));
	}
	final EventRegistrationToken OnHoldCompleted(void delegate(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialHoldCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HoldCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialHoldCompletedEventArgs), Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialHoldCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeHoldCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_HoldCompleted(token));
	}
	final EventRegistrationToken OnHoldCanceled(void delegate(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialHoldCanceledEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HoldCanceled(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialHoldCanceledEventArgs), Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialHoldCanceledEventArgs)(fn), &tok));
		return tok;
	}
	final void removeHoldCanceled(EventRegistrationToken token)
	{
		Debug.OK(remove_HoldCanceled(token));
	}
	final EventRegistrationToken OnManipulationStarted(void delegate(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialManipulationStartedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ManipulationStarted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialManipulationStartedEventArgs), Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialManipulationStartedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeManipulationStarted(EventRegistrationToken token)
	{
		Debug.OK(remove_ManipulationStarted(token));
	}
	final EventRegistrationToken OnManipulationUpdated(void delegate(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialManipulationUpdatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ManipulationUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialManipulationUpdatedEventArgs), Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialManipulationUpdatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeManipulationUpdated(EventRegistrationToken token)
	{
		Debug.OK(remove_ManipulationUpdated(token));
	}
	final EventRegistrationToken OnManipulationCompleted(void delegate(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialManipulationCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ManipulationCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialManipulationCompletedEventArgs), Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialManipulationCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeManipulationCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_ManipulationCompleted(token));
	}
	final EventRegistrationToken OnManipulationCanceled(void delegate(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialManipulationCanceledEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ManipulationCanceled(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialManipulationCanceledEventArgs), Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialManipulationCanceledEventArgs)(fn), &tok));
		return tok;
	}
	final void removeManipulationCanceled(EventRegistrationToken token)
	{
		Debug.OK(remove_ManipulationCanceled(token));
	}
	final EventRegistrationToken OnNavigationStarted(void delegate(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialNavigationStartedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_NavigationStarted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialNavigationStartedEventArgs), Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialNavigationStartedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeNavigationStarted(EventRegistrationToken token)
	{
		Debug.OK(remove_NavigationStarted(token));
	}
	final EventRegistrationToken OnNavigationUpdated(void delegate(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialNavigationUpdatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_NavigationUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialNavigationUpdatedEventArgs), Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialNavigationUpdatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeNavigationUpdated(EventRegistrationToken token)
	{
		Debug.OK(remove_NavigationUpdated(token));
	}
	final EventRegistrationToken OnNavigationCompleted(void delegate(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialNavigationCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_NavigationCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialNavigationCompletedEventArgs), Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialNavigationCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeNavigationCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_NavigationCompleted(token));
	}
	final EventRegistrationToken OnNavigationCanceled(void delegate(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialNavigationCanceledEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_NavigationCanceled(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialNavigationCanceledEventArgs), Windows.UI.Input.Spatial.SpatialGestureRecognizer, Windows.UI.Input.Spatial.SpatialNavigationCanceledEventArgs)(fn), &tok));
		return tok;
	}
	final void removeNavigationCanceled(EventRegistrationToken token)
	{
		Debug.OK(remove_NavigationCanceled(token));
	}
	final void CaptureInteraction(Windows.UI.Input.Spatial.SpatialInteraction interaction)
	{
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialGestureRecognizer).abi_CaptureInteraction(interaction));
	}
	final void CancelPendingGestures()
	{
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialGestureRecognizer).abi_CancelPendingGestures());
	}
	final bool TrySetGestureSettings(Windows.UI.Input.Spatial.SpatialGestureSettings settings)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialGestureRecognizer).abi_TrySetGestureSettings(settings, &_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialGestureSettings GestureSettings()
	{
		Windows.UI.Input.Spatial.SpatialGestureSettings _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialGestureRecognizer).get_GestureSettings(&_ret));
		return _ret;
	}
}

interface SpatialHoldCanceledEventArgs : Windows.UI.Input.Spatial.ISpatialHoldCanceledEventArgs
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceKind InteractionSourceKind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialHoldCanceledEventArgs).get_InteractionSourceKind(&_ret));
		return _ret;
	}
}

interface SpatialHoldCompletedEventArgs : Windows.UI.Input.Spatial.ISpatialHoldCompletedEventArgs
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceKind InteractionSourceKind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialHoldCompletedEventArgs).get_InteractionSourceKind(&_ret));
		return _ret;
	}
}

interface SpatialHoldStartedEventArgs : Windows.UI.Input.Spatial.ISpatialHoldStartedEventArgs
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceKind InteractionSourceKind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialHoldStartedEventArgs).get_InteractionSourceKind(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialPointerPose TryGetPointerPose(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem)
	{
		Windows.UI.Input.Spatial.SpatialPointerPose _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialHoldStartedEventArgs).abi_TryGetPointerPose(coordinateSystem, &_ret));
		return _ret;
	}
}

interface SpatialInteraction : Windows.UI.Input.Spatial.ISpatialInteraction
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceState SourceState()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceState _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteraction).get_SourceState(&_ret));
		return _ret;
	}
}

interface SpatialInteractionController : Windows.UI.Input.Spatial.ISpatialInteractionController
{
extern(Windows):
	final bool HasTouchpad()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionController).get_HasTouchpad(&_ret));
		return _ret;
	}
	final bool HasThumbstick()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionController).get_HasThumbstick(&_ret));
		return _ret;
	}
	final Windows.Devices.Haptics.SimpleHapticsController SimpleHapticsController()
	{
		Windows.Devices.Haptics.SimpleHapticsController _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionController).get_SimpleHapticsController(&_ret));
		return _ret;
	}
	final UINT16 VendorId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionController).get_VendorId(&_ret));
		return _ret;
	}
	final UINT16 ProductId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionController).get_ProductId(&_ret));
		return _ret;
	}
	final UINT16 Version()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionController).get_Version(&_ret));
		return _ret;
	}
}

interface SpatialInteractionControllerProperties : Windows.UI.Input.Spatial.ISpatialInteractionControllerProperties
{
extern(Windows):
	final bool IsTouchpadTouched()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionControllerProperties).get_IsTouchpadTouched(&_ret));
		return _ret;
	}
	final bool IsTouchpadPressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionControllerProperties).get_IsTouchpadPressed(&_ret));
		return _ret;
	}
	final bool IsThumbstickPressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionControllerProperties).get_IsThumbstickPressed(&_ret));
		return _ret;
	}
	final double ThumbstickX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionControllerProperties).get_ThumbstickX(&_ret));
		return _ret;
	}
	final double ThumbstickY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionControllerProperties).get_ThumbstickY(&_ret));
		return _ret;
	}
	final double TouchpadX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionControllerProperties).get_TouchpadX(&_ret));
		return _ret;
	}
	final double TouchpadY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionControllerProperties).get_TouchpadY(&_ret));
		return _ret;
	}
}

interface SpatialInteractionDetectedEventArgs : Windows.UI.Input.Spatial.ISpatialInteractionDetectedEventArgs, Windows.UI.Input.Spatial.ISpatialInteractionDetectedEventArgs2
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceKind InteractionSourceKind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionDetectedEventArgs).get_InteractionSourceKind(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialPointerPose TryGetPointerPose(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem)
	{
		Windows.UI.Input.Spatial.SpatialPointerPose _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionDetectedEventArgs).abi_TryGetPointerPose(coordinateSystem, &_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialInteraction Interaction()
	{
		Windows.UI.Input.Spatial.SpatialInteraction _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionDetectedEventArgs).get_Interaction(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialInteractionSource InteractionSource()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSource _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionDetectedEventArgs2).get_InteractionSource(&_ret));
		return _ret;
	}
}

interface SpatialInteractionManager : Windows.UI.Input.Spatial.ISpatialInteractionManager
{
extern(Windows):
	final EventRegistrationToken OnSourceDetected(void delegate(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SourceDetected(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs), Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSourceDetected(EventRegistrationToken token)
	{
		Debug.OK(remove_SourceDetected(token));
	}
	final EventRegistrationToken OnSourceLost(void delegate(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SourceLost(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs), Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSourceLost(EventRegistrationToken token)
	{
		Debug.OK(remove_SourceLost(token));
	}
	final EventRegistrationToken OnSourceUpdated(void delegate(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SourceUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs), Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSourceUpdated(EventRegistrationToken token)
	{
		Debug.OK(remove_SourceUpdated(token));
	}
	final EventRegistrationToken OnSourcePressed(void delegate(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SourcePressed(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs), Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSourcePressed(EventRegistrationToken token)
	{
		Debug.OK(remove_SourcePressed(token));
	}
	final EventRegistrationToken OnSourceReleased(void delegate(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SourceReleased(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs), Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSourceReleased(EventRegistrationToken token)
	{
		Debug.OK(remove_SourceReleased(token));
	}
	final EventRegistrationToken OnInteractionDetected(void delegate(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionDetectedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_InteractionDetected(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionDetectedEventArgs), Windows.UI.Input.Spatial.SpatialInteractionManager, Windows.UI.Input.Spatial.SpatialInteractionDetectedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeInteractionDetected(EventRegistrationToken token)
	{
		Debug.OK(remove_InteractionDetected(token));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Spatial.SpatialInteractionSourceState) GetDetectedSourcesAtTimestamp(Windows.Perception.PerceptionTimestamp timeStamp)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Spatial.SpatialInteractionSourceState) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionManager).abi_GetDetectedSourcesAtTimestamp(timeStamp, &_ret));
		return _ret;
	}
}

interface SpatialInteractionSource : Windows.UI.Input.Spatial.ISpatialInteractionSource, Windows.UI.Input.Spatial.ISpatialInteractionSource2
{
extern(Windows):
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSource).get_Id(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialInteractionSourceKind Kind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSource).get_Kind(&_ret));
		return _ret;
	}
	final bool IsPointingSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSource2).get_IsPointingSupported(&_ret));
		return _ret;
	}
	final bool IsMenuSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSource2).get_IsMenuSupported(&_ret));
		return _ret;
	}
	final bool IsGraspSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSource2).get_IsGraspSupported(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialInteractionController Controller()
	{
		Windows.UI.Input.Spatial.SpatialInteractionController _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSource2).get_Controller(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialInteractionSourceState TryGetStateAtTimestamp(Windows.Perception.PerceptionTimestamp timestamp)
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceState _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSource2).abi_TryGetStateAtTimestamp(timestamp, &_ret));
		return _ret;
	}
}

interface SpatialInteractionSourceEventArgs : Windows.UI.Input.Spatial.ISpatialInteractionSourceEventArgs, Windows.UI.Input.Spatial.ISpatialInteractionSourceEventArgs2
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceState State()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceState _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceEventArgs).get_State(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialInteractionPressKind PressKind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionPressKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceEventArgs2).get_PressKind(&_ret));
		return _ret;
	}
}

interface SpatialInteractionSourceLocation : Windows.UI.Input.Spatial.ISpatialInteractionSourceLocation, Windows.UI.Input.Spatial.ISpatialInteractionSourceLocation2
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) Position()
	{
		Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceLocation).get_Position(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) Velocity()
	{
		Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceLocation).get_Velocity(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.Numerics.Quaternion) Orientation()
	{
		Windows.Foundation.IReference!(Windows.Foundation.Numerics.Quaternion) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceLocation2).get_Orientation(&_ret));
		return _ret;
	}
}

interface SpatialInteractionSourceProperties : Windows.UI.Input.Spatial.ISpatialInteractionSourceProperties
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) TryGetSourceLossMitigationDirection(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem)
	{
		Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceProperties).abi_TryGetSourceLossMitigationDirection(coordinateSystem, &_ret));
		return _ret;
	}
	final double SourceLossRisk()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceProperties).get_SourceLossRisk(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialInteractionSourceLocation TryGetLocation(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem)
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceLocation _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceProperties).abi_TryGetLocation(coordinateSystem, &_ret));
		return _ret;
	}
}

interface SpatialInteractionSourceState : Windows.UI.Input.Spatial.ISpatialInteractionSourceState, Windows.UI.Input.Spatial.ISpatialInteractionSourceState2
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSource Source()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSource _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceState).get_Source(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialInteractionSourceProperties Properties()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceProperties _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceState).get_Properties(&_ret));
		return _ret;
	}
	final bool IsPressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceState).get_IsPressed(&_ret));
		return _ret;
	}
	final Windows.Perception.PerceptionTimestamp Timestamp()
	{
		Windows.Perception.PerceptionTimestamp _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceState).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialPointerPose TryGetPointerPose(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem)
	{
		Windows.UI.Input.Spatial.SpatialPointerPose _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceState).abi_TryGetPointerPose(coordinateSystem, &_ret));
		return _ret;
	}
	final bool IsSelectPressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceState2).get_IsSelectPressed(&_ret));
		return _ret;
	}
	final bool IsMenuPressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceState2).get_IsMenuPressed(&_ret));
		return _ret;
	}
	final bool IsGrasped()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceState2).get_IsGrasped(&_ret));
		return _ret;
	}
	final double SelectPressedValue()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceState2).get_SelectPressedValue(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialInteractionControllerProperties ControllerProperties()
	{
		Windows.UI.Input.Spatial.SpatialInteractionControllerProperties _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialInteractionSourceState2).get_ControllerProperties(&_ret));
		return _ret;
	}
}

interface SpatialManipulationCanceledEventArgs : Windows.UI.Input.Spatial.ISpatialManipulationCanceledEventArgs
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceKind InteractionSourceKind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialManipulationCanceledEventArgs).get_InteractionSourceKind(&_ret));
		return _ret;
	}
}

interface SpatialManipulationCompletedEventArgs : Windows.UI.Input.Spatial.ISpatialManipulationCompletedEventArgs
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceKind InteractionSourceKind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialManipulationCompletedEventArgs).get_InteractionSourceKind(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialManipulationDelta TryGetCumulativeDelta(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem)
	{
		Windows.UI.Input.Spatial.SpatialManipulationDelta _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialManipulationCompletedEventArgs).abi_TryGetCumulativeDelta(coordinateSystem, &_ret));
		return _ret;
	}
}

interface SpatialManipulationDelta : Windows.UI.Input.Spatial.ISpatialManipulationDelta
{
extern(Windows):
	final Windows.Foundation.Numerics.Vector3 Translation()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialManipulationDelta).get_Translation(&_ret));
		return _ret;
	}
}

interface SpatialManipulationStartedEventArgs : Windows.UI.Input.Spatial.ISpatialManipulationStartedEventArgs
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceKind InteractionSourceKind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialManipulationStartedEventArgs).get_InteractionSourceKind(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialPointerPose TryGetPointerPose(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem)
	{
		Windows.UI.Input.Spatial.SpatialPointerPose _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialManipulationStartedEventArgs).abi_TryGetPointerPose(coordinateSystem, &_ret));
		return _ret;
	}
}

interface SpatialManipulationUpdatedEventArgs : Windows.UI.Input.Spatial.ISpatialManipulationUpdatedEventArgs
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceKind InteractionSourceKind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialManipulationUpdatedEventArgs).get_InteractionSourceKind(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialManipulationDelta TryGetCumulativeDelta(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem)
	{
		Windows.UI.Input.Spatial.SpatialManipulationDelta _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialManipulationUpdatedEventArgs).abi_TryGetCumulativeDelta(coordinateSystem, &_ret));
		return _ret;
	}
}

interface SpatialNavigationCanceledEventArgs : Windows.UI.Input.Spatial.ISpatialNavigationCanceledEventArgs
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceKind InteractionSourceKind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialNavigationCanceledEventArgs).get_InteractionSourceKind(&_ret));
		return _ret;
	}
}

interface SpatialNavigationCompletedEventArgs : Windows.UI.Input.Spatial.ISpatialNavigationCompletedEventArgs
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceKind InteractionSourceKind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialNavigationCompletedEventArgs).get_InteractionSourceKind(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 NormalizedOffset()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialNavigationCompletedEventArgs).get_NormalizedOffset(&_ret));
		return _ret;
	}
}

interface SpatialNavigationStartedEventArgs : Windows.UI.Input.Spatial.ISpatialNavigationStartedEventArgs
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceKind InteractionSourceKind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialNavigationStartedEventArgs).get_InteractionSourceKind(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialPointerPose TryGetPointerPose(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem)
	{
		Windows.UI.Input.Spatial.SpatialPointerPose _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialNavigationStartedEventArgs).abi_TryGetPointerPose(coordinateSystem, &_ret));
		return _ret;
	}
	final bool IsNavigatingX()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialNavigationStartedEventArgs).get_IsNavigatingX(&_ret));
		return _ret;
	}
	final bool IsNavigatingY()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialNavigationStartedEventArgs).get_IsNavigatingY(&_ret));
		return _ret;
	}
	final bool IsNavigatingZ()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialNavigationStartedEventArgs).get_IsNavigatingZ(&_ret));
		return _ret;
	}
}

interface SpatialNavigationUpdatedEventArgs : Windows.UI.Input.Spatial.ISpatialNavigationUpdatedEventArgs
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceKind InteractionSourceKind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialNavigationUpdatedEventArgs).get_InteractionSourceKind(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 NormalizedOffset()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialNavigationUpdatedEventArgs).get_NormalizedOffset(&_ret));
		return _ret;
	}
}

interface SpatialPointerInteractionSourcePose : Windows.UI.Input.Spatial.ISpatialPointerInteractionSourcePose
{
extern(Windows):
	final Windows.Foundation.Numerics.Vector3 Position()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialPointerInteractionSourcePose).get_Position(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 ForwardDirection()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialPointerInteractionSourcePose).get_ForwardDirection(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 UpDirection()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialPointerInteractionSourcePose).get_UpDirection(&_ret));
		return _ret;
	}
}

interface SpatialPointerPose : Windows.UI.Input.Spatial.ISpatialPointerPose, Windows.UI.Input.Spatial.ISpatialPointerPose2
{
extern(Windows):
	final Windows.Perception.PerceptionTimestamp Timestamp()
	{
		Windows.Perception.PerceptionTimestamp _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialPointerPose).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Perception.People.HeadPose Head()
	{
		Windows.Perception.People.HeadPose _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialPointerPose).get_Head(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialPointerInteractionSourcePose TryGetInteractionSourcePose(Windows.UI.Input.Spatial.SpatialInteractionSource source)
	{
		Windows.UI.Input.Spatial.SpatialPointerInteractionSourcePose _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialPointerPose2).abi_TryGetInteractionSourcePose(source, &_ret));
		return _ret;
	}
}

interface SpatialRecognitionEndedEventArgs : Windows.UI.Input.Spatial.ISpatialRecognitionEndedEventArgs
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceKind InteractionSourceKind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialRecognitionEndedEventArgs).get_InteractionSourceKind(&_ret));
		return _ret;
	}
}

interface SpatialRecognitionStartedEventArgs : Windows.UI.Input.Spatial.ISpatialRecognitionStartedEventArgs
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceKind InteractionSourceKind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialRecognitionStartedEventArgs).get_InteractionSourceKind(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialPointerPose TryGetPointerPose(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem)
	{
		Windows.UI.Input.Spatial.SpatialPointerPose _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialRecognitionStartedEventArgs).abi_TryGetPointerPose(coordinateSystem, &_ret));
		return _ret;
	}
	final bool IsGesturePossible(Windows.UI.Input.Spatial.SpatialGestureSettings gesture)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialRecognitionStartedEventArgs).abi_IsGesturePossible(gesture, &_ret));
		return _ret;
	}
}

interface SpatialTappedEventArgs : Windows.UI.Input.Spatial.ISpatialTappedEventArgs
{
extern(Windows):
	final Windows.UI.Input.Spatial.SpatialInteractionSourceKind InteractionSourceKind()
	{
		Windows.UI.Input.Spatial.SpatialInteractionSourceKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialTappedEventArgs).get_InteractionSourceKind(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Spatial.SpatialPointerPose TryGetPointerPose(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem)
	{
		Windows.UI.Input.Spatial.SpatialPointerPose _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialTappedEventArgs).abi_TryGetPointerPose(coordinateSystem, &_ret));
		return _ret;
	}
	final UINT32 TapCount()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Spatial.ISpatialTappedEventArgs).get_TapCount(&_ret));
		return _ret;
	}
}

@bitflags
enum SpatialGestureSettings
{
	None = 0x0,
	Tap = 0x1,
	DoubleTap = 0x2,
	Hold = 0x4,
	ManipulationTranslate = 0x8,
	NavigationX = 0x10,
	NavigationY = 0x20,
	NavigationZ = 0x40,
	NavigationRailsX = 0x80,
	NavigationRailsY = 0x100,
	NavigationRailsZ = 0x200
}

enum SpatialInteractionPressKind
{
	None = 0,
	Select = 1,
	Menu = 2,
	Grasp = 3,
	Touchpad = 4,
	Thumbstick = 5
}

enum SpatialInteractionSourceKind
{
	Other = 0,
	Hand = 1,
	Voice = 2,
	Controller = 3
}