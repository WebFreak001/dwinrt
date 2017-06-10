module Windows.UI.Xaml.Input;

import dwinrt;

@uuid("3124d025-04a7-4d45-825e-8204a624dbf4")
interface DoubleTappedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Input.DoubleTappedRoutedEventArgs e);
}

@uuid("ecae8ccd-8e5e-4fbe-9846-30a6370afcdf")
interface HoldingEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Input.HoldingRoutedEventArgs e);
}

@uuid("7c63d2e5-7a0e-4e12-b96a-7715aa6ff1c8")
interface KeyEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Input.KeyRoutedEventArgs e);
}

@uuid("38ef4b0f-14f8-42df-9a1e-a4bcc4af77f4")
interface ManipulationCompletedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Input.ManipulationCompletedRoutedEventArgs e);
}

@uuid("aa1160cb-dfb9-4c56-abdc-711b63c8eb94")
interface ManipulationDeltaEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Input.ManipulationDeltaRoutedEventArgs e);
}

@uuid("d39d6322-7c9c-481b-827b-c8b2d9bb6fc7")
interface ManipulationInertiaStartingEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Input.ManipulationInertiaStartingRoutedEventArgs e);
}

@uuid("f88345f8-e0a3-4be2-b90c-dc20e6d8beb0")
interface ManipulationStartedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Input.ManipulationStartedRoutedEventArgs e);
}

@uuid("10d0b04e-bfe4-42cb-823c-3fecd8770ef8")
interface ManipulationStartingEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Input.ManipulationStartingRoutedEventArgs e);
}

@uuid("e4385929-c004-4bcf-8970-359486e39f88")
interface PointerEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Input.PointerRoutedEventArgs e);
}

@uuid("2532a062-f447-4950-9c46-f1e34a2c2238")
interface RightTappedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Input.RightTappedRoutedEventArgs e);
}

@uuid("68d940cc-9ff0-49ce-b141-3f07ec477b97")
interface TappedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Input.TappedRoutedEventArgs e);
}

@uuid("8a610dc6-d72d-4ca8-9f66-556f35b513da")
@WinrtFactory("Windows.UI.Xaml.Input.AccessKeyDisplayDismissedEventArgs")
interface IAccessKeyDisplayDismissedEventArgs : IInspectable
{
}

@uuid("0c079e55-13fe-4d03-a61d-e12f06567286")
@WinrtFactory("Windows.UI.Xaml.Input.AccessKeyDisplayRequestedEventArgs")
interface IAccessKeyDisplayRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PressedKeys(HSTRING* return_value);
}

@uuid("cfe9cd97-c718-4091-b7dd-adf1c072b1e1")
@WinrtFactory("Windows.UI.Xaml.Input.AccessKeyInvokedEventArgs")
interface IAccessKeyInvokedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("ecc973b0-2ee9-4b1c-98d7-6e0e816d334b")
@WinrtFactory("Windows.UI.Xaml.Input.AccessKeyManager")
interface IAccessKeyManager : IInspectable
{
}

@uuid("4ca0efe6-d9c8-4ebc-b4c7-30d1838a81f1")
@WinrtFactory("Windows.UI.Xaml.Input.AccessKeyManager")
interface IAccessKeyManagerStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsDisplayModeEnabled(bool* return_value);
	HRESULT add_IsDisplayModeEnabledChanged(Windows.Foundation.TypedEventHandler!(IInspectable, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_IsDisplayModeEnabledChanged(EventRegistrationToken token);
	HRESULT abi_ExitDisplayMode();
}

@uuid("962bb594-2ab3-47c5-954b-7092f355f797")
@WinrtFactory("Windows.UI.Xaml.Input.AccessKeyManager")
interface IAccessKeyManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_AreKeyTipsEnabled(bool* return_value);
	HRESULT set_AreKeyTipsEnabled(bool value);
}

@uuid("e5af3542-ca67-4081-995b-709dd13792df")
interface ICommand : IInspectable
{
extern(Windows):
	HRESULT add_CanExecuteChanged(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_CanExecuteChanged(EventRegistrationToken token);
	HRESULT abi_CanExecute(IInspectable parameter, bool* return_returnValue);
	HRESULT abi_Execute(IInspectable parameter);
}

@uuid("42618e0a-1cb6-46fb-8374-0aec68aa5e51")
@WinrtFactory("Windows.UI.Xaml.Input.ContextRequestedEventArgs")
interface IContextRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_TryGetPosition(Windows.UI.Xaml.UIElement relativeTo, Windows.Foundation.Point* out_point, bool* return_returnValue);
}

@uuid("af404424-26df-44f4-8714-9359249b62d3")
@WinrtFactory("Windows.UI.Xaml.Input.DoubleTappedRoutedEventArgs")
interface IDoubleTappedRoutedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetPosition(Windows.UI.Xaml.UIElement relativeTo, Windows.Foundation.Point* return_returnValue);
}

@uuid("d88ae22b-46c2-41fc-897e-b5961977b89d")
@WinrtFactory("Windows.UI.Xaml.Input.FindNextElementOptions")
interface IFindNextElementOptions : IInspectable
{
extern(Windows):
	HRESULT get_SearchRoot(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_SearchRoot(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_ExclusionRect(Windows.Foundation.Rect* return_value);
	HRESULT set_ExclusionRect(Windows.Foundation.Rect value);
	HRESULT get_HintRect(Windows.Foundation.Rect* return_value);
	HRESULT set_HintRect(Windows.Foundation.Rect value);
	HRESULT get_XYFocusNavigationStrategyOverride(Windows.UI.Xaml.Input.XYFocusNavigationStrategyOverride* return_value);
	HRESULT set_XYFocusNavigationStrategyOverride(Windows.UI.Xaml.Input.XYFocusNavigationStrategyOverride value);
}

@uuid("c843f50b-3b83-4da1-9d6f-557c1169f341")
@WinrtFactory("Windows.UI.Xaml.Input.FocusManager")
interface IFocusManager : IInspectable
{
}

@uuid("1eccd326-8182-4482-826a-0918e9ed9af7")
@WinrtFactory("Windows.UI.Xaml.Input.FocusManager")
interface IFocusManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetFocusedElement(IInspectable* return_returnValue);
}

@uuid("a920d761-dd87-4f31-beda-ef417fe7c04a")
@WinrtFactory("Windows.UI.Xaml.Input.FocusManager")
interface IFocusManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_TryMoveFocus(Windows.UI.Xaml.Input.FocusNavigationDirection focusNavigationDirection, bool* return_returnValue);
}

@uuid("60805ebf-b149-417d-83f1-baeb560e2a47")
@WinrtFactory("Windows.UI.Xaml.Input.FocusManager")
interface IFocusManagerStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_FindNextFocusableElement(Windows.UI.Xaml.Input.FocusNavigationDirection focusNavigationDirection, Windows.UI.Xaml.UIElement* return_result);
	HRESULT abi_FindNextFocusableElementWithHint(Windows.UI.Xaml.Input.FocusNavigationDirection focusNavigationDirection, Windows.Foundation.Rect hintRect, Windows.UI.Xaml.UIElement* return_result);
}

@uuid("29276e9c-1c6c-414a-ba1c-96efd5962bcd")
@WinrtFactory("Windows.UI.Xaml.Input.FocusManager")
interface IFocusManagerStatics4 : IInspectable
{
extern(Windows):
	HRESULT abi_TryMoveFocusWithOptions(Windows.UI.Xaml.Input.FocusNavigationDirection focusNavigationDirection, Windows.UI.Xaml.Input.FindNextElementOptions focusNavigationOptions, bool* return_returnValue);
	HRESULT abi_FindNextElement(Windows.UI.Xaml.Input.FocusNavigationDirection focusNavigationDirection, Windows.UI.Xaml.DependencyObject* return_returnValue);
	HRESULT abi_FindFirstFocusableElement(Windows.UI.Xaml.DependencyObject searchScope, Windows.UI.Xaml.DependencyObject* return_returnValue);
	HRESULT abi_FindLastFocusableElement(Windows.UI.Xaml.DependencyObject searchScope, Windows.UI.Xaml.DependencyObject* return_returnValue);
	HRESULT abi_FindNextElementWithOptions(Windows.UI.Xaml.Input.FocusNavigationDirection focusNavigationDirection, Windows.UI.Xaml.Input.FindNextElementOptions focusNavigationOptions, Windows.UI.Xaml.DependencyObject* return_returnValue);
}

@uuid("fa05b9ce-c67c-4be8-8fd4-c44d67877e0d")
@WinrtFactory("Windows.UI.Xaml.Input.GettingFocusEventArgs")
interface IGettingFocusEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_OldFocusedElement(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT get_NewFocusedElement(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_NewFocusedElement(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_FocusState(Windows.UI.Xaml.FocusState* return_value);
	HRESULT get_Direction(Windows.UI.Xaml.Input.FocusNavigationDirection* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT get_InputDevice(Windows.UI.Xaml.Input.FocusInputDeviceKind* return_value);
	HRESULT get_Cancel(bool* return_value);
	HRESULT set_Cancel(bool value);
}

@uuid("c246ff23-d80d-44de-8db9-0d815e269ac0")
@WinrtFactory("Windows.UI.Xaml.Input.HoldingRoutedEventArgs")
interface IHoldingRoutedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_HoldingState(Windows.UI.Input.HoldingState* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetPosition(Windows.UI.Xaml.UIElement relativeTo, Windows.Foundation.Point* return_returnValue);
}

@uuid("751d87e5-8d42-44c5-965e-3cd30cc9d6f7")
@WinrtFactory("Windows.UI.Xaml.Input.InertiaExpansionBehavior")
interface IInertiaExpansionBehavior : IInspectable
{
extern(Windows):
	HRESULT get_DesiredDeceleration(double* return_value);
	HRESULT set_DesiredDeceleration(double value);
	HRESULT get_DesiredExpansion(double* return_value);
	HRESULT set_DesiredExpansion(double value);
}

@uuid("424cfb2e-bbfd-4625-ae78-20c65bf1efaf")
@WinrtFactory("Windows.UI.Xaml.Input.InertiaRotationBehavior")
interface IInertiaRotationBehavior : IInspectable
{
extern(Windows):
	HRESULT get_DesiredDeceleration(double* return_value);
	HRESULT set_DesiredDeceleration(double value);
	HRESULT get_DesiredRotation(double* return_value);
	HRESULT set_DesiredRotation(double value);
}

@uuid("45d3a512-3b32-4882-a4c2-ecfa2d4b6df0")
@WinrtFactory("Windows.UI.Xaml.Input.InertiaTranslationBehavior")
interface IInertiaTranslationBehavior : IInspectable
{
extern(Windows):
	HRESULT get_DesiredDeceleration(double* return_value);
	HRESULT set_DesiredDeceleration(double value);
	HRESULT get_DesiredDisplacement(double* return_value);
	HRESULT set_DesiredDisplacement(double value);
}

@uuid("5c0f85f3-f9d8-4220-b666-045d074d9bfa")
@WinrtFactory("Windows.UI.Xaml.Input.InputScope")
interface IInputScope : IInspectable
{
extern(Windows):
	HRESULT get_Names(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Input.InputScopeName)* return_value);
}

@uuid("fd3e6997-08fb-4cba-a021-792d7589fd5a")
@WinrtFactory("Windows.UI.Xaml.Input.InputScopeName")
interface IInputScopeName : IInspectable
{
extern(Windows):
	HRESULT get_NameValue(Windows.UI.Xaml.Input.InputScopeNameValue* return_value);
	HRESULT set_NameValue(Windows.UI.Xaml.Input.InputScopeNameValue value);
}

@uuid("4a40bb52-4bd7-4e54-8617-1cda8a1eda7f")
@WinrtFactory("Windows.UI.Xaml.Input.InputScopeName")
interface IInputScopeNameFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(Windows.UI.Xaml.Input.InputScopeNameValue nameValue, Windows.UI.Xaml.Input.InputScopeName* return_instance);
}

@uuid("d4cd3dfe-4079-42e9-a39a-3095d3f049c6")
@WinrtFactory("Windows.UI.Xaml.Input.KeyRoutedEventArgs")
interface IKeyRoutedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Key(Windows.System.VirtualKey* return_value);
	HRESULT get_KeyStatus(Windows.UI.Core.CorePhysicalKeyStatus* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("1b02d57a-9634-4f14-91b2-133e42fdb3cd")
@WinrtFactory("Windows.UI.Xaml.Input.KeyRoutedEventArgs")
interface IKeyRoutedEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_OriginalKey(Windows.System.VirtualKey* return_value);
}

@uuid("2779f5b4-ca41-411b-a8ef-f4fc78e78057")
@WinrtFactory("Windows.UI.Xaml.Input.KeyRoutedEventArgs")
interface IKeyRoutedEventArgs3 : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("f9f683c7-d789-472b-aa93-6d4105e6dabe")
@WinrtFactory("Windows.UI.Xaml.Input.LosingFocusEventArgs")
interface ILosingFocusEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_OldFocusedElement(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT get_NewFocusedElement(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_NewFocusedElement(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_FocusState(Windows.UI.Xaml.FocusState* return_value);
	HRESULT get_Direction(Windows.UI.Xaml.Input.FocusNavigationDirection* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT get_InputDevice(Windows.UI.Xaml.Input.FocusInputDeviceKind* return_value);
	HRESULT get_Cancel(bool* return_value);
	HRESULT set_Cancel(bool value);
}

@uuid("b5ad9b23-2f41-498e-8319-015ee8a75346")
@WinrtFactory("Windows.UI.Xaml.Input.ManipulationCompletedRoutedEventArgs")
interface IManipulationCompletedRoutedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Container(Windows.UI.Xaml.UIElement* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_IsInertial(bool* return_value);
	HRESULT get_Cumulative(Windows.UI.Input.ManipulationDelta* return_value);
	HRESULT get_Velocities(Windows.UI.Input.ManipulationVelocities* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
}

@uuid("400d5794-4c6f-491d-82d6-3517109399c6")
@WinrtFactory("Windows.UI.Xaml.Input.ManipulationDeltaRoutedEventArgs")
interface IManipulationDeltaRoutedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Container(Windows.UI.Xaml.UIElement* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_IsInertial(bool* return_value);
	HRESULT get_Delta(Windows.UI.Input.ManipulationDelta* return_value);
	HRESULT get_Cumulative(Windows.UI.Input.ManipulationDelta* return_value);
	HRESULT get_Velocities(Windows.UI.Input.ManipulationVelocities* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT abi_Complete();
}

@uuid("246a91a9-ca43-4c0b-acef-81e8b8147520")
@WinrtFactory("Windows.UI.Xaml.Input.ManipulationInertiaStartingRoutedEventArgs")
interface IManipulationInertiaStartingRoutedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Container(Windows.UI.Xaml.UIElement* return_value);
	HRESULT get_ExpansionBehavior(Windows.UI.Xaml.Input.InertiaExpansionBehavior* return_value);
	HRESULT set_ExpansionBehavior(Windows.UI.Xaml.Input.InertiaExpansionBehavior value);
	HRESULT get_RotationBehavior(Windows.UI.Xaml.Input.InertiaRotationBehavior* return_value);
	HRESULT set_RotationBehavior(Windows.UI.Xaml.Input.InertiaRotationBehavior value);
	HRESULT get_TranslationBehavior(Windows.UI.Xaml.Input.InertiaTranslationBehavior* return_value);
	HRESULT set_TranslationBehavior(Windows.UI.Xaml.Input.InertiaTranslationBehavior value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Delta(Windows.UI.Input.ManipulationDelta* return_value);
	HRESULT get_Cumulative(Windows.UI.Input.ManipulationDelta* return_value);
	HRESULT get_Velocities(Windows.UI.Input.ManipulationVelocities* return_value);
}

@uuid("2e3838a5-e6c2-4998-82ac-18748b141666")
@WinrtFactory("Windows.UI.Xaml.Input.ManipulationPivot")
interface IManipulationPivot : IInspectable
{
extern(Windows):
	HRESULT get_Center(Windows.Foundation.Point* return_value);
	HRESULT set_Center(Windows.Foundation.Point value);
	HRESULT get_Radius(double* return_value);
	HRESULT set_Radius(double value);
}

@uuid("6d05b039-3702-4396-ad9b-a825efa63a3b")
@WinrtFactory("Windows.UI.Xaml.Input.ManipulationPivot")
interface IManipulationPivotFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithCenterAndRadius(Windows.Foundation.Point center, double radius, Windows.UI.Xaml.Input.ManipulationPivot* return_instance);
}

@uuid("5db1aa05-9f80-48b6-ae6c-4f119de8ff13")
@WinrtFactory("Windows.UI.Xaml.Input.ManipulationStartedRoutedEventArgs")
interface IManipulationStartedRoutedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Container(Windows.UI.Xaml.UIElement* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Cumulative(Windows.UI.Input.ManipulationDelta* return_value);
	HRESULT abi_Complete();
}

@uuid("84c1daa7-7272-4463-b6c3-a40b9ba151fc")
@WinrtFactory("Windows.UI.Xaml.Input.ManipulationStartedRoutedEventArgs")
interface IManipulationStartedRoutedEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Input.ManipulationStartedRoutedEventArgs* return_instance);
}

@uuid("18d636b7-53a4-4c15-a498-f3a9ca212a42")
@WinrtFactory("Windows.UI.Xaml.Input.ManipulationStartingRoutedEventArgs")
interface IManipulationStartingRoutedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Mode(Windows.UI.Xaml.Input.ManipulationModes* return_value);
	HRESULT set_Mode(Windows.UI.Xaml.Input.ManipulationModes value);
	HRESULT get_Container(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_Container(Windows.UI.Xaml.UIElement value);
	HRESULT get_Pivot(Windows.UI.Xaml.Input.ManipulationPivot* return_value);
	HRESULT set_Pivot(Windows.UI.Xaml.Input.ManipulationPivot value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("ec3601a7-1007-48f9-b6b3-ed0bea53937d")
@WinrtFactory("Windows.UI.Xaml.Input.NoFocusCandidateFoundEventArgs")
interface INoFocusCandidateFoundEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Direction(Windows.UI.Xaml.Input.FocusNavigationDirection* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT get_InputDevice(Windows.UI.Xaml.Input.FocusInputDeviceKind* return_value);
}

@uuid("5ee8f39f-747d-4171-90e6-cd37a9dffb11")
@WinrtFactory("Windows.UI.Xaml.Input.Pointer")
interface IPointer : IInspectable
{
extern(Windows):
	HRESULT get_PointerId(UINT32* return_value);
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_IsInContact(bool* return_value);
	HRESULT get_IsInRange(bool* return_value);
}

@uuid("da628f0a-9752-49e2-bde2-49eccab9194d")
@WinrtFactory("Windows.UI.Xaml.Input.PointerRoutedEventArgs")
interface IPointerRoutedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Pointer(Windows.UI.Xaml.Input.Pointer* return_value);
	HRESULT get_KeyModifiers(Windows.System.VirtualKeyModifiers* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetCurrentPoint(Windows.UI.Xaml.UIElement relativeTo, Windows.UI.Input.PointerPoint* return_returnValue);
	HRESULT abi_GetIntermediatePoints(Windows.UI.Xaml.UIElement relativeTo, Windows.Foundation.Collections.IVector!(Windows.UI.Input.PointerPoint)* return_returnValue);
}

@uuid("6834869d-7bd5-4033-b237-172f79abe393")
@WinrtFactory("Windows.UI.Xaml.Input.RightTappedRoutedEventArgs")
interface IRightTappedRoutedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetPosition(Windows.UI.Xaml.UIElement relativeTo, Windows.Foundation.Point* return_returnValue);
}

@uuid("a099e6be-e624-459a-bb1d-e05c73e2cc66")
@WinrtFactory("Windows.UI.Xaml.Input.TappedRoutedEventArgs")
interface ITappedRoutedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_GetPosition(Windows.UI.Xaml.UIElement relativeTo, Windows.Foundation.Point* return_returnValue);
}

interface AccessKeyDisplayDismissedEventArgs : Windows.UI.Xaml.Input.IAccessKeyDisplayDismissedEventArgs
{
}

interface AccessKeyDisplayRequestedEventArgs : Windows.UI.Xaml.Input.IAccessKeyDisplayRequestedEventArgs
{
extern(Windows):
	final HSTRING PressedKeys()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IAccessKeyDisplayRequestedEventArgs).get_PressedKeys(&_ret));
		return _ret;
	}
}

interface AccessKeyInvokedEventArgs : Windows.UI.Xaml.Input.IAccessKeyInvokedEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IAccessKeyInvokedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IAccessKeyInvokedEventArgs).set_Handled(value));
	}
}

interface AccessKeyManager : Windows.UI.Xaml.Input.IAccessKeyManager
{
}

interface ContextRequestedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Input.IContextRequestedEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IContextRequestedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IContextRequestedEventArgs).set_Handled(value));
	}
	final bool TryGetPosition(Windows.UI.Xaml.UIElement relativeTo, Windows.Foundation.Point* out_point)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IContextRequestedEventArgs).abi_TryGetPosition(relativeTo, out_point, &_ret));
		return _ret;
	}
}

interface DoubleTappedRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Input.IDoubleTappedRoutedEventArgs
{
extern(Windows):
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IDoubleTappedRoutedEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IDoubleTappedRoutedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IDoubleTappedRoutedEventArgs).set_Handled(value));
	}
	final Windows.Foundation.Point GetPosition(Windows.UI.Xaml.UIElement relativeTo)
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IDoubleTappedRoutedEventArgs).abi_GetPosition(relativeTo, &_ret));
		return _ret;
	}
}

interface FindNextElementOptions : Windows.UI.Xaml.Input.IFindNextElementOptions
{
extern(Windows):
	final Windows.UI.Xaml.DependencyObject SearchRoot()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IFindNextElementOptions).get_SearchRoot(&_ret));
		return _ret;
	}
	final void SearchRoot(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IFindNextElementOptions).set_SearchRoot(value));
	}
	final Windows.Foundation.Rect ExclusionRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IFindNextElementOptions).get_ExclusionRect(&_ret));
		return _ret;
	}
	final void ExclusionRect(Windows.Foundation.Rect value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IFindNextElementOptions).set_ExclusionRect(value));
	}
	final Windows.Foundation.Rect HintRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IFindNextElementOptions).get_HintRect(&_ret));
		return _ret;
	}
	final void HintRect(Windows.Foundation.Rect value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IFindNextElementOptions).set_HintRect(value));
	}
	final Windows.UI.Xaml.Input.XYFocusNavigationStrategyOverride XYFocusNavigationStrategyOverride()
	{
		Windows.UI.Xaml.Input.XYFocusNavigationStrategyOverride _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IFindNextElementOptions).get_XYFocusNavigationStrategyOverride(&_ret));
		return _ret;
	}
	final void XYFocusNavigationStrategyOverride(Windows.UI.Xaml.Input.XYFocusNavigationStrategyOverride value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IFindNextElementOptions).set_XYFocusNavigationStrategyOverride(value));
	}
}

interface FocusManager : Windows.UI.Xaml.Input.IFocusManager
{
}

interface GettingFocusEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Input.IGettingFocusEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.DependencyObject OldFocusedElement()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IGettingFocusEventArgs).get_OldFocusedElement(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DependencyObject NewFocusedElement()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IGettingFocusEventArgs).get_NewFocusedElement(&_ret));
		return _ret;
	}
	final void NewFocusedElement(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IGettingFocusEventArgs).set_NewFocusedElement(value));
	}
	final Windows.UI.Xaml.FocusState FocusState()
	{
		Windows.UI.Xaml.FocusState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IGettingFocusEventArgs).get_FocusState(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Input.FocusNavigationDirection Direction()
	{
		Windows.UI.Xaml.Input.FocusNavigationDirection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IGettingFocusEventArgs).get_Direction(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IGettingFocusEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IGettingFocusEventArgs).set_Handled(value));
	}
	final Windows.UI.Xaml.Input.FocusInputDeviceKind InputDevice()
	{
		Windows.UI.Xaml.Input.FocusInputDeviceKind _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IGettingFocusEventArgs).get_InputDevice(&_ret));
		return _ret;
	}
	final bool Cancel()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IGettingFocusEventArgs).get_Cancel(&_ret));
		return _ret;
	}
	final void Cancel(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IGettingFocusEventArgs).set_Cancel(value));
	}
}

interface HoldingRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Input.IHoldingRoutedEventArgs
{
extern(Windows):
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IHoldingRoutedEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final Windows.UI.Input.HoldingState HoldingState()
	{
		Windows.UI.Input.HoldingState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IHoldingRoutedEventArgs).get_HoldingState(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IHoldingRoutedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IHoldingRoutedEventArgs).set_Handled(value));
	}
	final Windows.Foundation.Point GetPosition(Windows.UI.Xaml.UIElement relativeTo)
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IHoldingRoutedEventArgs).abi_GetPosition(relativeTo, &_ret));
		return _ret;
	}
}

interface InertiaExpansionBehavior : Windows.UI.Xaml.Input.IInertiaExpansionBehavior
{
extern(Windows):
	final double DesiredDeceleration()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IInertiaExpansionBehavior).get_DesiredDeceleration(&_ret));
		return _ret;
	}
	final void DesiredDeceleration(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IInertiaExpansionBehavior).set_DesiredDeceleration(value));
	}
	final double DesiredExpansion()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IInertiaExpansionBehavior).get_DesiredExpansion(&_ret));
		return _ret;
	}
	final void DesiredExpansion(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IInertiaExpansionBehavior).set_DesiredExpansion(value));
	}
}

interface InertiaRotationBehavior : Windows.UI.Xaml.Input.IInertiaRotationBehavior
{
extern(Windows):
	final double DesiredDeceleration()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IInertiaRotationBehavior).get_DesiredDeceleration(&_ret));
		return _ret;
	}
	final void DesiredDeceleration(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IInertiaRotationBehavior).set_DesiredDeceleration(value));
	}
	final double DesiredRotation()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IInertiaRotationBehavior).get_DesiredRotation(&_ret));
		return _ret;
	}
	final void DesiredRotation(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IInertiaRotationBehavior).set_DesiredRotation(value));
	}
}

interface InertiaTranslationBehavior : Windows.UI.Xaml.Input.IInertiaTranslationBehavior
{
extern(Windows):
	final double DesiredDeceleration()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IInertiaTranslationBehavior).get_DesiredDeceleration(&_ret));
		return _ret;
	}
	final void DesiredDeceleration(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IInertiaTranslationBehavior).set_DesiredDeceleration(value));
	}
	final double DesiredDisplacement()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IInertiaTranslationBehavior).get_DesiredDisplacement(&_ret));
		return _ret;
	}
	final void DesiredDisplacement(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IInertiaTranslationBehavior).set_DesiredDisplacement(value));
	}
}

interface InputScope : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Input.IInputScope
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Input.InputScopeName) Names()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Input.InputScopeName) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IInputScope).get_Names(&_ret));
		return _ret;
	}
}

interface InputScopeName : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Input.IInputScopeName
{
extern(Windows):
	final Windows.UI.Xaml.Input.InputScopeNameValue NameValue()
	{
		Windows.UI.Xaml.Input.InputScopeNameValue _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IInputScopeName).get_NameValue(&_ret));
		return _ret;
	}
	final void NameValue(Windows.UI.Xaml.Input.InputScopeNameValue value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IInputScopeName).set_NameValue(value));
	}
}

interface KeyRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Input.IKeyRoutedEventArgs, Windows.UI.Xaml.Input.IKeyRoutedEventArgs2, Windows.UI.Xaml.Input.IKeyRoutedEventArgs3
{
extern(Windows):
	final Windows.System.VirtualKey Key()
	{
		Windows.System.VirtualKey _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IKeyRoutedEventArgs).get_Key(&_ret));
		return _ret;
	}
	final Windows.UI.Core.CorePhysicalKeyStatus KeyStatus()
	{
		Windows.UI.Core.CorePhysicalKeyStatus _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IKeyRoutedEventArgs).get_KeyStatus(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IKeyRoutedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IKeyRoutedEventArgs).set_Handled(value));
	}
	final Windows.System.VirtualKey OriginalKey()
	{
		Windows.System.VirtualKey _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IKeyRoutedEventArgs2).get_OriginalKey(&_ret));
		return _ret;
	}
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IKeyRoutedEventArgs3).get_DeviceId(&_ret));
		return _ret;
	}
}

interface LosingFocusEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Input.ILosingFocusEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.DependencyObject OldFocusedElement()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.ILosingFocusEventArgs).get_OldFocusedElement(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DependencyObject NewFocusedElement()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.ILosingFocusEventArgs).get_NewFocusedElement(&_ret));
		return _ret;
	}
	final void NewFocusedElement(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.ILosingFocusEventArgs).set_NewFocusedElement(value));
	}
	final Windows.UI.Xaml.FocusState FocusState()
	{
		Windows.UI.Xaml.FocusState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.ILosingFocusEventArgs).get_FocusState(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Input.FocusNavigationDirection Direction()
	{
		Windows.UI.Xaml.Input.FocusNavigationDirection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.ILosingFocusEventArgs).get_Direction(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.ILosingFocusEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.ILosingFocusEventArgs).set_Handled(value));
	}
	final Windows.UI.Xaml.Input.FocusInputDeviceKind InputDevice()
	{
		Windows.UI.Xaml.Input.FocusInputDeviceKind _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.ILosingFocusEventArgs).get_InputDevice(&_ret));
		return _ret;
	}
	final bool Cancel()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.ILosingFocusEventArgs).get_Cancel(&_ret));
		return _ret;
	}
	final void Cancel(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.ILosingFocusEventArgs).set_Cancel(value));
	}
}

interface ManipulationCompletedRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Input.IManipulationCompletedRoutedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.UIElement Container()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationCompletedRoutedEventArgs).get_Container(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationCompletedRoutedEventArgs).get_Position(&_ret));
		return _ret;
	}
	final bool IsInertial()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationCompletedRoutedEventArgs).get_IsInertial(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationDelta Cumulative()
	{
		Windows.UI.Input.ManipulationDelta _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationCompletedRoutedEventArgs).get_Cumulative(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationVelocities Velocities()
	{
		Windows.UI.Input.ManipulationVelocities _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationCompletedRoutedEventArgs).get_Velocities(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationCompletedRoutedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationCompletedRoutedEventArgs).set_Handled(value));
	}
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationCompletedRoutedEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
}

interface ManipulationDeltaRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Input.IManipulationDeltaRoutedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.UIElement Container()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationDeltaRoutedEventArgs).get_Container(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationDeltaRoutedEventArgs).get_Position(&_ret));
		return _ret;
	}
	final bool IsInertial()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationDeltaRoutedEventArgs).get_IsInertial(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationDelta Delta()
	{
		Windows.UI.Input.ManipulationDelta _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationDeltaRoutedEventArgs).get_Delta(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationDelta Cumulative()
	{
		Windows.UI.Input.ManipulationDelta _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationDeltaRoutedEventArgs).get_Cumulative(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationVelocities Velocities()
	{
		Windows.UI.Input.ManipulationVelocities _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationDeltaRoutedEventArgs).get_Velocities(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationDeltaRoutedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationDeltaRoutedEventArgs).set_Handled(value));
	}
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationDeltaRoutedEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final void Complete()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationDeltaRoutedEventArgs).abi_Complete());
	}
}

interface ManipulationInertiaStartingRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Input.IManipulationInertiaStartingRoutedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.UIElement Container()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationInertiaStartingRoutedEventArgs).get_Container(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Input.InertiaExpansionBehavior ExpansionBehavior()
	{
		Windows.UI.Xaml.Input.InertiaExpansionBehavior _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationInertiaStartingRoutedEventArgs).get_ExpansionBehavior(&_ret));
		return _ret;
	}
	final void ExpansionBehavior(Windows.UI.Xaml.Input.InertiaExpansionBehavior value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationInertiaStartingRoutedEventArgs).set_ExpansionBehavior(value));
	}
	final Windows.UI.Xaml.Input.InertiaRotationBehavior RotationBehavior()
	{
		Windows.UI.Xaml.Input.InertiaRotationBehavior _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationInertiaStartingRoutedEventArgs).get_RotationBehavior(&_ret));
		return _ret;
	}
	final void RotationBehavior(Windows.UI.Xaml.Input.InertiaRotationBehavior value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationInertiaStartingRoutedEventArgs).set_RotationBehavior(value));
	}
	final Windows.UI.Xaml.Input.InertiaTranslationBehavior TranslationBehavior()
	{
		Windows.UI.Xaml.Input.InertiaTranslationBehavior _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationInertiaStartingRoutedEventArgs).get_TranslationBehavior(&_ret));
		return _ret;
	}
	final void TranslationBehavior(Windows.UI.Xaml.Input.InertiaTranslationBehavior value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationInertiaStartingRoutedEventArgs).set_TranslationBehavior(value));
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationInertiaStartingRoutedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationInertiaStartingRoutedEventArgs).set_Handled(value));
	}
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationInertiaStartingRoutedEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationDelta Delta()
	{
		Windows.UI.Input.ManipulationDelta _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationInertiaStartingRoutedEventArgs).get_Delta(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationDelta Cumulative()
	{
		Windows.UI.Input.ManipulationDelta _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationInertiaStartingRoutedEventArgs).get_Cumulative(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationVelocities Velocities()
	{
		Windows.UI.Input.ManipulationVelocities _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationInertiaStartingRoutedEventArgs).get_Velocities(&_ret));
		return _ret;
	}
}

interface ManipulationPivot : Windows.UI.Xaml.Input.IManipulationPivot
{
extern(Windows):
	final Windows.Foundation.Point Center()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationPivot).get_Center(&_ret));
		return _ret;
	}
	final void Center(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationPivot).set_Center(value));
	}
	final double Radius()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationPivot).get_Radius(&_ret));
		return _ret;
	}
	final void Radius(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationPivot).set_Radius(value));
	}
}

interface ManipulationStartedRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Input.IManipulationStartedRoutedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.UIElement Container()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationStartedRoutedEventArgs).get_Container(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationStartedRoutedEventArgs).get_Position(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationStartedRoutedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationStartedRoutedEventArgs).set_Handled(value));
	}
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationStartedRoutedEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final Windows.UI.Input.ManipulationDelta Cumulative()
	{
		Windows.UI.Input.ManipulationDelta _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationStartedRoutedEventArgs).get_Cumulative(&_ret));
		return _ret;
	}
	final void Complete()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationStartedRoutedEventArgs).abi_Complete());
	}
}

interface ManipulationStartingRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Input.IManipulationStartingRoutedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Input.ManipulationModes Mode()
	{
		Windows.UI.Xaml.Input.ManipulationModes _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationStartingRoutedEventArgs).get_Mode(&_ret));
		return _ret;
	}
	final void Mode(Windows.UI.Xaml.Input.ManipulationModes value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationStartingRoutedEventArgs).set_Mode(value));
	}
	final Windows.UI.Xaml.UIElement Container()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationStartingRoutedEventArgs).get_Container(&_ret));
		return _ret;
	}
	final void Container(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationStartingRoutedEventArgs).set_Container(value));
	}
	final Windows.UI.Xaml.Input.ManipulationPivot Pivot()
	{
		Windows.UI.Xaml.Input.ManipulationPivot _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationStartingRoutedEventArgs).get_Pivot(&_ret));
		return _ret;
	}
	final void Pivot(Windows.UI.Xaml.Input.ManipulationPivot value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationStartingRoutedEventArgs).set_Pivot(value));
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationStartingRoutedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IManipulationStartingRoutedEventArgs).set_Handled(value));
	}
}

interface NoFocusCandidateFoundEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Input.INoFocusCandidateFoundEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Input.FocusNavigationDirection Direction()
	{
		Windows.UI.Xaml.Input.FocusNavigationDirection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.INoFocusCandidateFoundEventArgs).get_Direction(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.INoFocusCandidateFoundEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.INoFocusCandidateFoundEventArgs).set_Handled(value));
	}
	final Windows.UI.Xaml.Input.FocusInputDeviceKind InputDevice()
	{
		Windows.UI.Xaml.Input.FocusInputDeviceKind _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.INoFocusCandidateFoundEventArgs).get_InputDevice(&_ret));
		return _ret;
	}
}

interface Pointer : Windows.UI.Xaml.Input.IPointer
{
extern(Windows):
	final UINT32 PointerId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IPointer).get_PointerId(&_ret));
		return _ret;
	}
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IPointer).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final bool IsInContact()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IPointer).get_IsInContact(&_ret));
		return _ret;
	}
	final bool IsInRange()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IPointer).get_IsInRange(&_ret));
		return _ret;
	}
}

interface PointerRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Input.IPointerRoutedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Input.Pointer Pointer()
	{
		Windows.UI.Xaml.Input.Pointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IPointerRoutedEventArgs).get_Pointer(&_ret));
		return _ret;
	}
	final Windows.System.VirtualKeyModifiers KeyModifiers()
	{
		Windows.System.VirtualKeyModifiers _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IPointerRoutedEventArgs).get_KeyModifiers(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IPointerRoutedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IPointerRoutedEventArgs).set_Handled(value));
	}
	final Windows.UI.Input.PointerPoint GetCurrentPoint(Windows.UI.Xaml.UIElement relativeTo)
	{
		Windows.UI.Input.PointerPoint _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IPointerRoutedEventArgs).abi_GetCurrentPoint(relativeTo, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Input.PointerPoint) GetIntermediatePoints(Windows.UI.Xaml.UIElement relativeTo)
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Input.PointerPoint) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IPointerRoutedEventArgs).abi_GetIntermediatePoints(relativeTo, &_ret));
		return _ret;
	}
}

interface RightTappedRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Input.IRightTappedRoutedEventArgs
{
extern(Windows):
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IRightTappedRoutedEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IRightTappedRoutedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IRightTappedRoutedEventArgs).set_Handled(value));
	}
	final Windows.Foundation.Point GetPosition(Windows.UI.Xaml.UIElement relativeTo)
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.IRightTappedRoutedEventArgs).abi_GetPosition(relativeTo, &_ret));
		return _ret;
	}
}

interface TappedRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Input.ITappedRoutedEventArgs
{
extern(Windows):
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.ITappedRoutedEventArgs).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.ITappedRoutedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Input.ITappedRoutedEventArgs).set_Handled(value));
	}
	final Windows.Foundation.Point GetPosition(Windows.UI.Xaml.UIElement relativeTo)
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Input.ITappedRoutedEventArgs).abi_GetPosition(relativeTo, &_ret));
		return _ret;
	}
}

enum FocusInputDeviceKind
{
	None = 0,
	Mouse = 1,
	Touch = 2,
	Pen = 3,
	Keyboard = 4,
	GameController = 5
}

enum FocusNavigationDirection
{
	Next = 0,
	Previous = 1,
	Up = 2,
	Down = 3,
	Left = 4,
	Right = 5,
	None = 6
}

enum InputScopeNameValue
{
	Default = 0,
	Url = 1,
	EmailSmtpAddress = 5,
	PersonalFullName = 7,
	CurrencyAmountAndSymbol = 20,
	CurrencyAmount = 21,
	DateMonthNumber = 23,
	DateDayNumber = 24,
	DateYear = 25,
	Digits = 28,
	Number = 29,
	Password = 31,
	TelephoneNumber = 32,
	TelephoneCountryCode = 33,
	TelephoneAreaCode = 34,
	TelephoneLocalNumber = 35,
	TimeHour = 37,
	TimeMinutesOrSeconds = 38,
	NumberFullWidth = 39,
	AlphanumericHalfWidth = 40,
	AlphanumericFullWidth = 41,
	Hiragana = 44,
	KatakanaHalfWidth = 45,
	KatakanaFullWidth = 46,
	Hanja = 47,
	HangulHalfWidth = 48,
	HangulFullWidth = 49,
	Search = 50,
	Formula = 51,
	SearchIncremental = 52,
	ChineseHalfWidth = 53,
	ChineseFullWidth = 54,
	NativeScript = 55,
	Text = 57,
	Chat = 58,
	NameOrPhoneNumber = 59,
	EmailNameOrAddress = 60,
	Maps = 62,
	NumericPassword = 63,
	NumericPin = 64,
	AlphanumericPin = 65,
	FormulaNumber = 67,
	ChatWithoutEmoji = 68
}

enum KeyTipPlacementMode
{
	Auto = 0,
	Bottom = 1,
	Top = 2,
	Left = 3,
	Right = 4,
	Center = 5,
	Hidden = 6
}

enum KeyboardNavigationMode
{
	Local = 0,
	Cycle = 1,
	Once = 2
}

@bitflags
enum ManipulationModes
{
	None = 0x0,
	TranslateX = 0x1,
	TranslateY = 0x2,
	TranslateRailsX = 0x4,
	TranslateRailsY = 0x8,
	Rotate = 0x10,
	Scale = 0x20,
	TranslateInertia = 0x40,
	RotateInertia = 0x80,
	ScaleInertia = 0x100,
	All = 0xFFFF,
	System = 0x10000
}

enum XYFocusKeyboardNavigationMode
{
	Auto = 0,
	Enabled = 1,
	Disabled = 2
}

enum XYFocusNavigationStrategy
{
	Auto = 0,
	Projection = 1,
	NavigationDirectionDistance = 2,
	RectilinearDistance = 3
}

enum XYFocusNavigationStrategyOverride
{
	None = 0,
	Auto = 1,
	Projection = 2,
	NavigationDirectionDistance = 3,
	RectilinearDistance = 4
}