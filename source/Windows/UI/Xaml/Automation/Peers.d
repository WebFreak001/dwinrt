module Windows.UI.Xaml.Automation.Peers;

import dwinrt;

struct RawElementProviderRuntimeId
{
	UINT32 Part1;
	UINT32 Part2;
}

@uuid("8b4acfeb-89fa-4f13-84be-35ca5b7c9590")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AppBarAutomationPeer")
interface IAppBarAutomationPeer : IInspectable
{
}

@uuid("8360f4e2-e396-4517-af5d-f4cf34c54edf")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AppBarAutomationPeer")
interface IAppBarAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.AppBar owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.AppBarAutomationPeer* return_instance);
}

@uuid("443262b2-4f6d-4b76-9d2e-3eff777e8864")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AppBarButtonAutomationPeer")
interface IAppBarButtonAutomationPeer : IInspectable
{
}

@uuid("aef0342a-acb7-42dc-97e3-847071865fd6")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AppBarButtonAutomationPeer")
interface IAppBarButtonAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.AppBarButton owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.AppBarButtonAutomationPeer* return_instance);
}

@uuid("8464efad-9655-4aff-9550-63ae9ec8fe9c")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AppBarToggleButtonAutomationPeer")
interface IAppBarToggleButtonAutomationPeer : IInspectable
{
}

@uuid("d6f9139d-02c1-4221-9591-7d4efeb74701")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AppBarToggleButtonAutomationPeer")
interface IAppBarToggleButtonAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.AppBarToggleButton owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.AppBarToggleButtonAutomationPeer* return_instance);
}

@uuid("2f32c302-f99b-491d-9726-a5e181643efa")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutoSuggestBoxAutomationPeer")
interface IAutoSuggestBoxAutomationPeer : IInspectable
{
}

@uuid("80046849-18e7-4475-b362-4bbd53d24562")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutoSuggestBoxAutomationPeer")
interface IAutoSuggestBoxAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.AutoSuggestBox owner, Windows.UI.Xaml.Automation.Peers.AutoSuggestBoxAutomationPeer* return_instance);
}

@uuid("35aac87a-62ee-4d3e-a24c-2bc8432d68b7")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeer : IInspectable
{
extern(Windows):
	HRESULT get_EventsSource(Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_value);
	HRESULT set_EventsSource(Windows.UI.Xaml.Automation.Peers.AutomationPeer value);
	HRESULT abi_GetPattern(Windows.UI.Xaml.Automation.Peers.PatternInterface patternInterface, IInspectable* return_returnValue);
	HRESULT abi_RaiseAutomationEvent(Windows.UI.Xaml.Automation.Peers.AutomationEvents eventId);
	HRESULT abi_RaisePropertyChangedEvent(Windows.UI.Xaml.Automation.AutomationProperty automationProperty, IInspectable oldValue, IInspectable newValue);
	HRESULT abi_GetAcceleratorKey(HSTRING* return_returnValue);
	HRESULT abi_GetAccessKey(HSTRING* return_returnValue);
	HRESULT abi_GetAutomationControlType(Windows.UI.Xaml.Automation.Peers.AutomationControlType* return_returnValue);
	HRESULT abi_GetAutomationId(HSTRING* return_returnValue);
	HRESULT abi_GetBoundingRectangle(Windows.Foundation.Rect* return_returnValue);
	HRESULT abi_GetChildren(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Automation.Peers.AutomationPeer)* return_returnValue);
	HRESULT abi_GetClassName(HSTRING* return_returnValue);
	HRESULT abi_GetClickablePoint(Windows.Foundation.Point* return_returnValue);
	HRESULT abi_GetHelpText(HSTRING* return_returnValue);
	HRESULT abi_GetItemStatus(HSTRING* return_returnValue);
	HRESULT abi_GetItemType(HSTRING* return_returnValue);
	HRESULT abi_GetLabeledBy(Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue);
	HRESULT abi_GetLocalizedControlType(HSTRING* return_returnValue);
	HRESULT abi_GetName(HSTRING* return_returnValue);
	HRESULT abi_GetOrientation(Windows.UI.Xaml.Automation.Peers.AutomationOrientation* return_returnValue);
	HRESULT abi_HasKeyboardFocus(bool* return_returnValue);
	HRESULT abi_IsContentElement(bool* return_returnValue);
	HRESULT abi_IsControlElement(bool* return_returnValue);
	HRESULT abi_IsEnabled(bool* return_returnValue);
	HRESULT abi_IsKeyboardFocusable(bool* return_returnValue);
	HRESULT abi_IsOffscreen(bool* return_returnValue);
	HRESULT abi_IsPassword(bool* return_returnValue);
	HRESULT abi_IsRequiredForForm(bool* return_returnValue);
	HRESULT abi_SetFocus();
	deprecated("Consider using Navigate with AutomationNavigationDirection::Parent, which is an improved version of GetParent. For more info, see MSDN.")
	HRESULT abi_GetParent(Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue);
	HRESULT abi_InvalidatePeer();
	deprecated("Consider using GetElementFromPoint, which is an improved version of GetPeerFromPoint. For more info, see MSDN.")
	HRESULT abi_GetPeerFromPoint(Windows.Foundation.Point point, Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue);
	HRESULT abi_GetLiveSetting(Windows.UI.Xaml.Automation.Peers.AutomationLiveSetting* return_returnValue);
}

@uuid("ea1f89c7-ebf5-4ab8-88f7-680d821dac61")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeer2 : IInspectable
{
}

@uuid("d3cfb977-0084-41d7-a221-28158d3bc32c")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeer3 : IInspectable
{
extern(Windows):
	HRESULT abi_Navigate(Windows.UI.Xaml.Automation.Peers.AutomationNavigationDirection direction, IInspectable* return_returnValue);
	HRESULT abi_GetElementFromPoint(Windows.Foundation.Point pointInWindowCoordinates, IInspectable* return_returnValue);
	HRESULT abi_GetFocusedElement(IInspectable* return_returnValue);
	HRESULT abi_ShowContextMenu();
	HRESULT abi_GetControlledPeers(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Automation.Peers.AutomationPeer)* return_returnValue);
	HRESULT abi_GetAnnotations(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Automation.Peers.AutomationPeerAnnotation)* return_returnValue);
	HRESULT abi_SetParent(Windows.UI.Xaml.Automation.Peers.AutomationPeer peer);
	HRESULT abi_RaiseTextEditTextChangedEvent(Windows.UI.Xaml.Automation.AutomationTextEditChangeType automationTextEditChangeType, Windows.Foundation.Collections.IVectorView!(HSTRING) changedData);
	HRESULT abi_GetPositionInSet(INT32* return_returnValue);
	HRESULT abi_GetSizeOfSet(INT32* return_returnValue);
	HRESULT abi_GetLevel(INT32* return_returnValue);
	HRESULT abi_RaiseStructureChangedEvent(Windows.UI.Xaml.Automation.Peers.AutomationStructureChangeType structureChangeType, Windows.UI.Xaml.Automation.Peers.AutomationPeer child);
}

@uuid("761ce752-73c1-4f44-be75-43c49ec0d4d5")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeer4 : IInspectable
{
extern(Windows):
	HRESULT abi_GetLandmarkType(Windows.UI.Xaml.Automation.Peers.AutomationLandmarkType* return_returnValue);
	HRESULT abi_GetLocalizedLandmarkType(HSTRING* return_returnValue);
}

@uuid("f632e1c6-0a3f-4574-9fef-cdc151765674")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeer5 : IInspectable
{
extern(Windows):
	HRESULT abi_IsPeripheral(bool* return_returnValue);
	HRESULT abi_IsDataValidForForm(bool* return_returnValue);
	HRESULT abi_GetFullDescription(HSTRING* return_returnValue);
}

@uuid("caf8608f-13ff-42fb-866d-22206434cc6b")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeer6 : IInspectable
{
extern(Windows):
	HRESULT abi_GetCulture(INT32* return_returnValue);
}

@uuid("0c456061-52cf-43fa-82f8-07f137351e5a")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeerAnnotation")
interface IAutomationPeerAnnotation : IInspectable
{
extern(Windows):
	HRESULT get_Type(Windows.UI.Xaml.Automation.AnnotationType* return_value);
	HRESULT set_Type(Windows.UI.Xaml.Automation.AnnotationType value);
	HRESULT get_Peer(Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_value);
	HRESULT set_Peer(Windows.UI.Xaml.Automation.Peers.AutomationPeer value);
}

@uuid("f59c439e-c65b-43cd-9009-03fc023363a7")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeerAnnotation")
interface IAutomationPeerAnnotationFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(Windows.UI.Xaml.Automation.AnnotationType type, Windows.UI.Xaml.Automation.Peers.AutomationPeerAnnotation* return_instance);
	HRESULT abi_CreateWithPeerParameter(Windows.UI.Xaml.Automation.AnnotationType type, Windows.UI.Xaml.Automation.Peers.AutomationPeer peer, Windows.UI.Xaml.Automation.Peers.AutomationPeerAnnotation* return_instance);
}

@uuid("8809a87d-09b2-4d45-b78b-1d3b3b09f661")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeerAnnotation")
interface IAutomationPeerAnnotationStatics : IInspectable
{
extern(Windows):
	HRESULT get_TypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PeerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("20c27545-a88b-43c8-bc24-cea9dafd04a3")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_instance);
}

@uuid("bea93e67-dbee-4f7b-af0d-a79aae5333bf")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_GetPatternCore(Windows.UI.Xaml.Automation.Peers.PatternInterface patternInterface, IInspectable* return_returnValue);
	HRESULT abi_GetAcceleratorKeyCore(HSTRING* return_returnValue);
	HRESULT abi_GetAccessKeyCore(HSTRING* return_returnValue);
	HRESULT abi_GetAutomationControlTypeCore(Windows.UI.Xaml.Automation.Peers.AutomationControlType* return_returnValue);
	HRESULT abi_GetAutomationIdCore(HSTRING* return_returnValue);
	HRESULT abi_GetBoundingRectangleCore(Windows.Foundation.Rect* return_returnValue);
	HRESULT abi_GetChildrenCore(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Automation.Peers.AutomationPeer)* return_returnValue);
	HRESULT abi_GetClassNameCore(HSTRING* return_returnValue);
	HRESULT abi_GetClickablePointCore(Windows.Foundation.Point* return_returnValue);
	HRESULT abi_GetHelpTextCore(HSTRING* return_returnValue);
	HRESULT abi_GetItemStatusCore(HSTRING* return_returnValue);
	HRESULT abi_GetItemTypeCore(HSTRING* return_returnValue);
	HRESULT abi_GetLabeledByCore(Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue);
	HRESULT abi_GetLocalizedControlTypeCore(HSTRING* return_returnValue);
	HRESULT abi_GetNameCore(HSTRING* return_returnValue);
	HRESULT abi_GetOrientationCore(Windows.UI.Xaml.Automation.Peers.AutomationOrientation* return_returnValue);
	HRESULT abi_HasKeyboardFocusCore(bool* return_returnValue);
	HRESULT abi_IsContentElementCore(bool* return_returnValue);
	HRESULT abi_IsControlElementCore(bool* return_returnValue);
	HRESULT abi_IsEnabledCore(bool* return_returnValue);
	HRESULT abi_IsKeyboardFocusableCore(bool* return_returnValue);
	HRESULT abi_IsOffscreenCore(bool* return_returnValue);
	HRESULT abi_IsPasswordCore(bool* return_returnValue);
	HRESULT abi_IsRequiredForFormCore(bool* return_returnValue);
	HRESULT abi_SetFocusCore();
	HRESULT abi_GetPeerFromPointCore(Windows.Foundation.Point point, Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue);
	HRESULT abi_GetLiveSettingCore(Windows.UI.Xaml.Automation.Peers.AutomationLiveSetting* return_returnValue);
}

@uuid("2603682a-9da6-4023-b496-496e5ef228d2")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerOverrides2 : IInspectable
{
extern(Windows):
	HRESULT abi_ShowContextMenuCore();
	HRESULT abi_GetControlledPeersCore(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Automation.Peers.AutomationPeer)* return_returnValue);
}

@uuid("b6f0c4ad-4d39-49e6-bb91-d924eefd8538")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerOverrides3 : IInspectable
{
extern(Windows):
	HRESULT abi_NavigateCore(Windows.UI.Xaml.Automation.Peers.AutomationNavigationDirection direction, IInspectable* return_returnValue);
	HRESULT abi_GetElementFromPointCore(Windows.Foundation.Point pointInWindowCoordinates, IInspectable* return_returnValue);
	HRESULT abi_GetFocusedElementCore(IInspectable* return_returnValue);
	HRESULT abi_GetAnnotationsCore(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Automation.Peers.AutomationPeerAnnotation)* return_returnValue);
	HRESULT abi_GetPositionInSetCore(INT32* return_returnValue);
	HRESULT abi_GetSizeOfSetCore(INT32* return_returnValue);
	HRESULT abi_GetLevelCore(INT32* return_returnValue);
}

@uuid("b186cda2-5d46-4bcd-a811-269ad15b3aee")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerOverrides4 : IInspectable
{
extern(Windows):
	HRESULT abi_GetLandmarkTypeCore(Windows.UI.Xaml.Automation.Peers.AutomationLandmarkType* return_returnValue);
	HRESULT abi_GetLocalizedLandmarkTypeCore(HSTRING* return_returnValue);
}

@uuid("2c847c85-781e-49f7-9fef-b9e14d014707")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerOverrides5 : IInspectable
{
extern(Windows):
	HRESULT abi_IsPeripheralCore(bool* return_returnValue);
	HRESULT abi_IsDataValidForFormCore(bool* return_returnValue);
	HRESULT abi_GetFullDescriptionCore(HSTRING* return_returnValue);
	HRESULT abi_GetDescribedByCore(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Automation.Peers.AutomationPeer)* return_returnValue);
	HRESULT abi_GetFlowsToCore(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Automation.Peers.AutomationPeer)* return_returnValue);
	HRESULT abi_GetFlowsFromCore(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Automation.Peers.AutomationPeer)* return_returnValue);
}

@uuid("e98babe7-f6ff-444c-9c0d-277eaf0ad9c0")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerOverrides6 : IInspectable
{
extern(Windows):
	HRESULT abi_GetCultureCore(INT32* return_returnValue);
}

@uuid("f4b40e52-642f-4629-a54a-ea5d2349c448")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerProtected : IInspectable
{
extern(Windows):
	HRESULT abi_PeerFromProvider(Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple provider, Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue);
	HRESULT abi_ProviderFromPeer(Windows.UI.Xaml.Automation.Peers.AutomationPeer peer, Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple* return_returnValue);
}

@uuid("562f7fb0-a331-4a9c-9dec-bfb7586fffff")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_ListenerExists(Windows.UI.Xaml.Automation.Peers.AutomationEvents eventId, bool* return_returnValue);
}

@uuid("572c5714-7f87-4271-819f-6cf4c4d022d0")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_GenerateRawElementProviderRuntimeId(Windows.UI.Xaml.Automation.Peers.RawElementProviderRuntimeId* return_returnValue);
}

@uuid("fb77efbe-39ec-4508-8ac3-51a1424027d7")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ButtonAutomationPeer")
interface IButtonAutomationPeer : IInspectable
{
}

@uuid("3fdb9f49-f4ab-4780-8644-03376299a175")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ButtonAutomationPeer")
interface IButtonAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Button owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ButtonAutomationPeer* return_instance);
}

@uuid("a4f3b5b6-7585-4e0b-96d2-08cf6f28befa")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ButtonBaseAutomationPeer")
interface IButtonBaseAutomationPeer : IInspectable
{
}

@uuid("8a04091e-e6b2-4c60-a759-c13ca45165ed")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ButtonBaseAutomationPeer")
interface IButtonBaseAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Primitives.ButtonBase owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ButtonBaseAutomationPeer* return_instance);
}

@uuid("dcc44ee0-fa45-45c6-8bb7-320d808f5958")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.CaptureElementAutomationPeer")
interface ICaptureElementAutomationPeer : IInspectable
{
}

@uuid("9b92ef48-85e9-4869-b175-8f7cf45a6d9f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.CaptureElementAutomationPeer")
interface ICaptureElementAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.CaptureElement owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.CaptureElementAutomationPeer* return_instance);
}

@uuid("eb15bc42-c0a9-46c6-ac24-b83de429c733")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.CheckBoxAutomationPeer")
interface ICheckBoxAutomationPeer : IInspectable
{
}

@uuid("b75c775d-eb8f-44ef-a27c-e26ac7de8333")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.CheckBoxAutomationPeer")
interface ICheckBoxAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.CheckBox owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.CheckBoxAutomationPeer* return_instance);
}

@uuid("7eb40d0b-75c5-4263-ba6a-d4a54fb0f239")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ComboBoxAutomationPeer")
interface IComboBoxAutomationPeer : IInspectable
{
}

@uuid("098e5b0d-1b90-40b9-9be3-b23267eb13cf")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ComboBoxAutomationPeer")
interface IComboBoxAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ComboBox owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ComboBoxAutomationPeer* return_instance);
}

@uuid("12ddc76e-9552-446a-82ee-938cc371800f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ComboBoxItemAutomationPeer")
interface IComboBoxItemAutomationPeer : IInspectable
{
}

@uuid("134ac7fc-397a-403f-a6ec-1ce8beda15e5")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ComboBoxItemAutomationPeer")
interface IComboBoxItemAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ComboBoxItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ComboBoxItemAutomationPeer* return_instance);
}

@uuid("4fef6df2-289c-4c04-831b-5a668c6d7104")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ComboBoxItemDataAutomationPeer")
interface IComboBoxItemDataAutomationPeer : IInspectable
{
}

@uuid("14a8d4f6-469a-41ba-9d93-44a1a55da872")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ComboBoxItemDataAutomationPeer")
interface IComboBoxItemDataAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithParentAndItem(IInspectable item, Windows.UI.Xaml.Automation.Peers.ComboBoxAutomationPeer parent, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ComboBoxItemDataAutomationPeer* return_instance);
}

@uuid("d07d357f-a0b9-45dc-991a-76c505e7d0f5")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.DatePickerAutomationPeer")
interface IDatePickerAutomationPeer : IInspectable
{
}

@uuid("e5667d19-9157-4436-9f4d-7fb99174b48e")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.DatePickerAutomationPeer")
interface IDatePickerAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.DatePicker owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.DatePickerAutomationPeer* return_instance);
}

@uuid("752aed38-c2bf-4880-82b2-a6c05e90c135")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.DatePickerFlyoutPresenterAutomationPeer")
interface IDatePickerFlyoutPresenterAutomationPeer : IInspectable
{
}

@uuid("8ec0353a-4284-4b00-aef8-a2688ea5e3c4")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FlipViewAutomationPeer")
interface IFlipViewAutomationPeer : IInspectable
{
}

@uuid("4395ab0d-8d83-483c-88eb-e2617b0d293f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FlipViewAutomationPeer")
interface IFlipViewAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.FlipView owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.FlipViewAutomationPeer* return_instance);
}

@uuid("c83034de-fa08-4bd3-aeb2-d2e5bfa04df9")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FlipViewItemAutomationPeer")
interface IFlipViewItemAutomationPeer : IInspectable
{
}

@uuid("69109356-d0e5-4c10-a09c-ad0bf1b0cb01")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FlipViewItemAutomationPeer")
interface IFlipViewItemAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.FlipViewItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.FlipViewItemAutomationPeer* return_instance);
}

@uuid("b0986175-00bc-4118-8a6f-16ee9c15d968")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FlipViewItemDataAutomationPeer")
interface IFlipViewItemDataAutomationPeer : IInspectable
{
}

@uuid("3c864393-0aea-4e78-bc11-b775cac4114c")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FlipViewItemDataAutomationPeer")
interface IFlipViewItemDataAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithParentAndItem(IInspectable item, Windows.UI.Xaml.Automation.Peers.FlipViewAutomationPeer parent, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.FlipViewItemDataAutomationPeer* return_instance);
}

@uuid("a01840b4-5fca-456f-98ea-300eb40b585e")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FlyoutPresenterAutomationPeer")
interface IFlyoutPresenterAutomationPeer : IInspectable
{
}

@uuid("f350155f-8924-44c0-ba44-653fe79f1efb")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FlyoutPresenterAutomationPeer")
interface IFlyoutPresenterAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.FlyoutPresenter owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.FlyoutPresenterAutomationPeer* return_instance);
}

@uuid("b90ad781-bfeb-4451-bd47-9f3a63ebd24a")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer")
interface IFrameworkElementAutomationPeer : IInspectable
{
extern(Windows):
	HRESULT get_Owner(Windows.UI.Xaml.UIElement* return_value);
}

@uuid("0db9b8bc-b812-48e3-af1f-dbc57600c325")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer")
interface IFrameworkElementAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.FrameworkElement owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer* return_instance);
}

@uuid("b9c0b997-2820-44a1-a5a8-9b801edc269e")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer")
interface IFrameworkElementAutomationPeerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromElement(Windows.UI.Xaml.UIElement element, Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue);
	HRESULT abi_CreatePeerForElement(Windows.UI.Xaml.UIElement element, Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue);
}

@uuid("1c4401a4-d951-49ca-8f82-c7f3c60681b0")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.GridViewAutomationPeer")
interface IGridViewAutomationPeer : IInspectable
{
}

@uuid("8aca59dd-22a7-4800-894b-c1f485f38953")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.GridViewAutomationPeer")
interface IGridViewAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.GridView owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.GridViewAutomationPeer* return_instance);
}

@uuid("e3dcef3a-e08a-48e7-b23a-2be5b66e474e")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.GridViewHeaderItemAutomationPeer")
interface IGridViewHeaderItemAutomationPeer : IInspectable
{
}

@uuid("2c80b4d2-ffc2-4157-88dd-59cd92e39715")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.GridViewHeaderItemAutomationPeer")
interface IGridViewHeaderItemAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.GridViewHeaderItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.GridViewHeaderItemAutomationPeer* return_instance);
}

@uuid("93ef2d07-346c-4166-a4ba-bc6a181e7f33")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.GridViewItemAutomationPeer")
interface IGridViewItemAutomationPeer : IInspectable
{
}

@uuid("fafec376-f22e-466d-913c-ae24ccdb160f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.GridViewItemAutomationPeer")
interface IGridViewItemAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.GridViewItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.GridViewItemAutomationPeer* return_instance);
}

@uuid("f3f4868f-29d4-4094-8c54-ea61a88294a4")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.GridViewItemDataAutomationPeer")
interface IGridViewItemDataAutomationPeer : IInspectable
{
}

@uuid("a65e7a88-770d-402c-996f-67506af2a4af")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.GridViewItemDataAutomationPeer")
interface IGridViewItemDataAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithParentAndItem(IInspectable item, Windows.UI.Xaml.Automation.Peers.GridViewAutomationPeer parent, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.GridViewItemDataAutomationPeer* return_instance);
}

@uuid("1914fe6d-0740-4236-9ee1-38cf19c1c388")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.GroupItemAutomationPeer")
interface IGroupItemAutomationPeer : IInspectable
{
}

@uuid("56a64567-f21c-4c90-b379-15a27c7f8409")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.GroupItemAutomationPeer")
interface IGroupItemAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.GroupItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.GroupItemAutomationPeer* return_instance);
}

@uuid("4ddee056-4ebc-4620-a05d-903e3c9a4ead")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.HubAutomationPeer")
interface IHubAutomationPeer : IInspectable
{
}

@uuid("c762d43f-79dd-43ee-8777-8d08b39aa065")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.HubAutomationPeer")
interface IHubAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Hub owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.HubAutomationPeer* return_instance);
}

@uuid("16d91ff7-7431-4d82-83ce-cfa3192b0f18")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.HubSectionAutomationPeer")
interface IHubSectionAutomationPeer : IInspectable
{
}

@uuid("c68e27e8-17ec-4329-91ae-2d0b2339d498")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.HubSectionAutomationPeer")
interface IHubSectionAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.HubSection owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.HubSectionAutomationPeer* return_instance);
}

@uuid("aa7afcb1-0edf-46d9-aa9e-0eb21d140097")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.HyperlinkButtonAutomationPeer")
interface IHyperlinkButtonAutomationPeer : IInspectable
{
}

@uuid("59bc1661-c182-49af-9526-44b88e628455")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.HyperlinkButtonAutomationPeer")
interface IHyperlinkButtonAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.HyperlinkButton owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.HyperlinkButtonAutomationPeer* return_instance);
}

@uuid("9b0bbf8c-60a2-48bf-ab2c-1a52a451d2d4")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ImageAutomationPeer")
interface IImageAutomationPeer : IInspectable
{
}

@uuid("90304003-687d-47bf-b3a2-4babcad8ef50")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ImageAutomationPeer")
interface IImageAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Image owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ImageAutomationPeer* return_instance);
}

@uuid("123baaa4-f2e8-4bcb-9382-5dfdd11fe45f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.InkToolbarAutomationPeer")
interface IInkToolbarAutomationPeer : IInspectable
{
}

@uuid("953c34f6-3b31-47a7-b3bf-25d3ae99c317")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer")
interface IItemAutomationPeer : IInspectable
{
extern(Windows):
	HRESULT get_Item(IInspectable* return_value);
	HRESULT get_ItemsControlAutomationPeer(Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer* return_value);
}

@uuid("29065073-de3d-4d3f-97b4-4d6f9d53444d")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer")
interface IItemAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithParentAndItem(IInspectable item, Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer parent, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer* return_instance);
}

@uuid("96e76bf1-37f7-4088-925d-65268e83e34d")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer")
interface IItemsControlAutomationPeer : IInspectable
{
}

@uuid("c48d8917-95a8-47b8-a517-bf891a6c039b")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer")
interface IItemsControlAutomationPeer2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateItemAutomationPeer(IInspectable item, Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer* return_returnValue);
}

@uuid("4038a259-2e1a-49ca-a533-c64f181577e6")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer")
interface IItemsControlAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ItemsControl owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer* return_instance);
}

@uuid("361dc0e8-b56f-45e9-80fe-10a0fb0fe177")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer")
interface IItemsControlAutomationPeerOverrides2 : IInspectable
{
extern(Windows):
	HRESULT abi_OnCreateItemAutomationPeer(IInspectable item, Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer* return_returnValue);
}

@uuid("8cd0d608-b402-4a6e-bd9a-343f8845eb32")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListBoxAutomationPeer")
interface IListBoxAutomationPeer : IInspectable
{
}

@uuid("e2362185-7df6-49f7-8abc-4c33f1a3d46e")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListBoxAutomationPeer")
interface IListBoxAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ListBox owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListBoxAutomationPeer* return_instance);
}

@uuid("1bc6e1c6-2997-42df-99eb-92bc1dd149fb")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListBoxItemAutomationPeer")
interface IListBoxItemAutomationPeer : IInspectable
{
}

@uuid("509f9dd8-b0aa-443f-a110-41209af44f1c")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListBoxItemAutomationPeer")
interface IListBoxItemAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ListBoxItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListBoxItemAutomationPeer* return_instance);
}

@uuid("fd7d5fee-fde0-482a-8084-dcebba5b9806")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListBoxItemDataAutomationPeer")
interface IListBoxItemDataAutomationPeer : IInspectable
{
}

@uuid("d7924e16-bd8d-4662-a995-20ff9a056093")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListBoxItemDataAutomationPeer")
interface IListBoxItemDataAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithParentAndItem(IInspectable item, Windows.UI.Xaml.Automation.Peers.ListBoxAutomationPeer parent, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListBoxItemDataAutomationPeer* return_instance);
}

@uuid("56dfdc58-2395-4060-8047-8ea463698a24")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListPickerFlyoutPresenterAutomationPeer")
interface IListPickerFlyoutPresenterAutomationPeer : IInspectable
{
}

@uuid("73cecc87-c0dc-4260-9148-75e9864a7230")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewAutomationPeer")
interface IListViewAutomationPeer : IInspectable
{
}

@uuid("65f39174-eaa2-4e44-8be6-4cca28cd0288")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewAutomationPeer")
interface IListViewAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ListView owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListViewAutomationPeer* return_instance);
}

@uuid("87ec7649-b83d-4e55-9afd-bd835e748f5c")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewBaseAutomationPeer")
interface IListViewBaseAutomationPeer : IInspectable
{
}

@uuid("70d3c2be-8950-4647-9362-fd002f8ff82e")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewBaseAutomationPeer")
interface IListViewBaseAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ListViewBase owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListViewBaseAutomationPeer* return_instance);
}

@uuid("7cb8b732-c1f0-4a3c-bc14-85dd48dedb85")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewBaseHeaderItemAutomationPeer")
interface IListViewBaseHeaderItemAutomationPeer : IInspectable
{
}

@uuid("40ec995f-d631-4004-832e-6d8643e51561")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewBaseHeaderItemAutomationPeer")
interface IListViewBaseHeaderItemAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ListViewBaseHeaderItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListViewBaseHeaderItemAutomationPeer* return_instance);
}

@uuid("67ab1e4b-ad61-4c88-ba45-0f3a8d061f8f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewHeaderItemAutomationPeer")
interface IListViewHeaderItemAutomationPeer : IInspectable
{
}

@uuid("07668694-2ca5-4be4-a8b9-592d48f76087")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewHeaderItemAutomationPeer")
interface IListViewHeaderItemAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ListViewHeaderItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListViewHeaderItemAutomationPeer* return_instance);
}

@uuid("ca114e70-a16d-4d09-a1cf-1856ef98a9ec")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewItemAutomationPeer")
interface IListViewItemAutomationPeer : IInspectable
{
}

@uuid("c47dfbc0-facc-4024-a73b-17ec4e662654")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewItemAutomationPeer")
interface IListViewItemAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ListViewItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListViewItemAutomationPeer* return_instance);
}

@uuid("15a8d7fd-d7a5-4a6c-963c-6f7ce464671a")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewItemDataAutomationPeer")
interface IListViewItemDataAutomationPeer : IInspectable
{
}

@uuid("d0db12bb-d715-4523-acc0-1e1072d8e32b")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewItemDataAutomationPeer")
interface IListViewItemDataAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithParentAndItem(IInspectable item, Windows.UI.Xaml.Automation.Peers.ListViewBaseAutomationPeer parent, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListViewItemDataAutomationPeer* return_instance);
}

@uuid("50b406ca-bae9-4816-8a3a-0cb4f96478a2")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.LoopingSelectorAutomationPeer")
interface ILoopingSelectorAutomationPeer : IInspectable
{
}

@uuid("d3fa68bf-04cf-4f4c-8d3e-4780a19d4788")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.LoopingSelectorItemAutomationPeer")
interface ILoopingSelectorItemAutomationPeer : IInspectable
{
}

@uuid("ef567e32-7cd2-4d32-9590-1f588d5ef38d")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.LoopingSelectorItemDataAutomationPeer")
interface ILoopingSelectorItemDataAutomationPeer : IInspectable
{
}

@uuid("425beee4-f2e8-4bcb-9382-5dfdd11fe45f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.MapControlAutomationPeer")
interface IMapControlAutomationPeer : IInspectable
{
}

@uuid("ba0b9fc2-a6e2-41a5-b17a-d1594613efba")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.MediaElementAutomationPeer")
interface IMediaElementAutomationPeer : IInspectable
{
}

@uuid("b2ad3b28-7575-4173-9bc7-80367a164ed2")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.MediaElementAutomationPeer")
interface IMediaElementAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.MediaElement owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.MediaElementAutomationPeer* return_instance);
}

@uuid("02bed209-3f65-4fdd-b5ca-c4750d4e6ea4")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.MediaPlayerElementAutomationPeer")
interface IMediaPlayerElementAutomationPeer : IInspectable
{
}

@uuid("08848077-82af-4d19-b170-282a9e0e7f37")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.MediaPlayerElementAutomationPeer")
interface IMediaPlayerElementAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.MediaPlayerElement owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.MediaPlayerElementAutomationPeer* return_instance);
}

@uuid("a3ad8d93-79f8-4958-a3c8-980defb83d15")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.MediaTransportControlsAutomationPeer")
interface IMediaTransportControlsAutomationPeer : IInspectable
{
}

@uuid("f41cb003-e103-4ab0-812a-a08fbdb570ce")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.MediaTransportControlsAutomationPeer")
interface IMediaTransportControlsAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.MediaTransportControls owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.MediaTransportControlsAutomationPeer* return_instance);
}

@uuid("1fc19462-21df-456e-aa11-8fac6b4b2af6")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.MenuFlyoutItemAutomationPeer")
interface IMenuFlyoutItemAutomationPeer : IInspectable
{
}

@uuid("d08bfcb8-20d1-45d8-a2c2-2f130df714e0")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.MenuFlyoutItemAutomationPeer")
interface IMenuFlyoutItemAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.MenuFlyoutItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.MenuFlyoutItemAutomationPeer* return_instance);
}

@uuid("e244a871-fcbb-48fc-8a93-41ea134b53ce")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.MenuFlyoutPresenterAutomationPeer")
interface IMenuFlyoutPresenterAutomationPeer : IInspectable
{
}

@uuid("07b5172d-761d-452b-9e6d-fa2a8be0ad26")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.MenuFlyoutPresenterAutomationPeer")
interface IMenuFlyoutPresenterAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.MenuFlyoutPresenter owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.MenuFlyoutPresenterAutomationPeer* return_instance);
}

@uuid("684f065e-3df3-4b9f-82ad-8819db3b218a")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.PasswordBoxAutomationPeer")
interface IPasswordBoxAutomationPeer : IInspectable
{
}

@uuid("ac3d7ede-dca4-481c-b520-4a9b3f3b179c")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.PasswordBoxAutomationPeer")
interface IPasswordBoxAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.PasswordBox owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.PasswordBoxAutomationPeer* return_instance);
}

@uuid("28414bf7-8382-4eae-93c1-d6f035aa8155")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.PickerFlyoutPresenterAutomationPeer")
interface IPickerFlyoutPresenterAutomationPeer : IInspectable
{
}

@uuid("e715a8f8-3b9d-402c-81e2-6e912ef58981")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.PivotAutomationPeer")
interface IPivotAutomationPeer : IInspectable
{
}

@uuid("3efe0f94-0c91-4341-b9ac-1b56b4e6b84f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.PivotAutomationPeer")
interface IPivotAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Pivot owner, Windows.UI.Xaml.Automation.Peers.PivotAutomationPeer* return_instance);
}

@uuid("1a4241ad-5d55-4d27-b40f-2d37506fbe78")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.PivotItemAutomationPeer")
interface IPivotItemAutomationPeer : IInspectable
{
}

@uuid("f2810471-183f-416b-b41a-1e5a958a91f4")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.PivotItemAutomationPeer")
interface IPivotItemAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.PivotItem owner, Windows.UI.Xaml.Automation.Peers.PivotItemAutomationPeer* return_instance);
}

@uuid("a2a3b788-ea1d-48b7-88ee-f08b6aa07fee")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.PivotItemDataAutomationPeer")
interface IPivotItemDataAutomationPeer : IInspectable
{
}

@uuid("517a2480-d3b6-412e-82b6-94a0a84c13b0")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.PivotItemDataAutomationPeer")
interface IPivotItemDataAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithParentAndItem(IInspectable item, Windows.UI.Xaml.Automation.Peers.PivotAutomationPeer parent, Windows.UI.Xaml.Automation.Peers.PivotItemDataAutomationPeer* return_instance);
}

@uuid("93f48f86-d840-4fb6-ac2f-5f779b854b0d")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ProgressBarAutomationPeer")
interface IProgressBarAutomationPeer : IInspectable
{
}

@uuid("364679ab-b80f-41b4-8eea-2f5251bc739c")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ProgressBarAutomationPeer")
interface IProgressBarAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ProgressBar owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ProgressBarAutomationPeer* return_instance);
}

@uuid("bc305eee-39d3-4eeb-ac33-2394de123e2e")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ProgressRingAutomationPeer")
interface IProgressRingAutomationPeer : IInspectable
{
}

@uuid("f3db204b-157e-40bc-9593-55bc5c71a4f6")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ProgressRingAutomationPeer")
interface IProgressRingAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ProgressRing owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ProgressRingAutomationPeer* return_instance);
}

@uuid("7e6a5ed8-0b30-4743-b102-dcdf548e3131")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RadioButtonAutomationPeer")
interface IRadioButtonAutomationPeer : IInspectable
{
}

@uuid("4940c4fd-3d88-49ca-8f31-924187af0bfe")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RadioButtonAutomationPeer")
interface IRadioButtonAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.RadioButton owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.RadioButtonAutomationPeer* return_instance);
}

@uuid("e454b549-4b2c-42ad-b04b-d35947d1ee50")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RangeBaseAutomationPeer")
interface IRangeBaseAutomationPeer : IInspectable
{
}

@uuid("827c7601-3078-4479-95ea-91374ca06207")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RangeBaseAutomationPeer")
interface IRangeBaseAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Primitives.RangeBase owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.RangeBaseAutomationPeer* return_instance);
}

@uuid("29e41ad5-a8ac-4e8a-83d8-09e37e054257")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RepeatButtonAutomationPeer")
interface IRepeatButtonAutomationPeer : IInspectable
{
}

@uuid("6a6ff9d4-575e-4e60-bdd6-ec14419b4ff6")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RepeatButtonAutomationPeer")
interface IRepeatButtonAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Primitives.RepeatButton owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.RepeatButtonAutomationPeer* return_instance);
}

@uuid("c69f5c04-16ee-467a-a833-c3da8458ad64")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RichEditBoxAutomationPeer")
interface IRichEditBoxAutomationPeer : IInspectable
{
}

@uuid("752c8399-d296-4d87-9020-a4750e885b3c")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RichEditBoxAutomationPeer")
interface IRichEditBoxAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.RichEditBox owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.RichEditBoxAutomationPeer* return_instance);
}

@uuid("93a01a9c-9609-41fa-82f3-909c09f49a72")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RichTextBlockAutomationPeer")
interface IRichTextBlockAutomationPeer : IInspectable
{
}

@uuid("2038ae61-1389-467a-aed6-37334da9622b")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RichTextBlockAutomationPeer")
interface IRichTextBlockAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.RichTextBlock owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.RichTextBlockAutomationPeer* return_instance);
}

@uuid("8c9a409a-2736-437b-ab36-a16a202f105d")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RichTextBlockOverflowAutomationPeer")
interface IRichTextBlockOverflowAutomationPeer : IInspectable
{
}

@uuid("bd5eb663-2c14-4665-adef-f2b033947beb")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RichTextBlockOverflowAutomationPeer")
interface IRichTextBlockOverflowAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.RichTextBlockOverflow owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.RichTextBlockOverflowAutomationPeer* return_instance);
}

@uuid("69e0c369-bbe7-41f2-87ca-aad813fe550e")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ScrollBarAutomationPeer")
interface IScrollBarAutomationPeer : IInspectable
{
}

@uuid("e1302110-afeb-4595-8e3d-edc0844a2b21")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ScrollBarAutomationPeer")
interface IScrollBarAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Primitives.ScrollBar owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ScrollBarAutomationPeer* return_instance);
}

@uuid("d985f259-1b09-4e88-88fd-421750dc6b45")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ScrollViewerAutomationPeer")
interface IScrollViewerAutomationPeer : IInspectable
{
}

@uuid("270dff7d-d96d-48f9-a36a-c252aa9c4670")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ScrollViewerAutomationPeer")
interface IScrollViewerAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ScrollViewer owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ScrollViewerAutomationPeer* return_instance);
}

@uuid("854011a4-18a6-4f30-939b-8871afa3f5e9")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SearchBoxAutomationPeer")
interface ISearchBoxAutomationPeer : IInspectable
{
}

@uuid("b3c01430-7faa-41bb-8e91-7c761c5267f1")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SearchBoxAutomationPeer")
interface ISearchBoxAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.SearchBox owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.SearchBoxAutomationPeer* return_instance);
}

@uuid("162ac829-7115-43ec-b383-a7b71644069d")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SelectorAutomationPeer")
interface ISelectorAutomationPeer : IInspectable
{
}

@uuid("7b525646-829b-4dcc-bd52-5a8d0399387a")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SelectorAutomationPeer")
interface ISelectorAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Primitives.Selector owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.SelectorAutomationPeer* return_instance);
}

@uuid("ae8b3477-860a-45bb-bf7c-e1b27419d1dd")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SelectorItemAutomationPeer")
interface ISelectorItemAutomationPeer : IInspectable
{
}

@uuid("66d7edfb-786d-4362-a964-ebfb21776c30")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SelectorItemAutomationPeer")
interface ISelectorItemAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithParentAndItem(IInspectable item, Windows.UI.Xaml.Automation.Peers.SelectorAutomationPeer parent, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.SelectorItemAutomationPeer* return_instance);
}

@uuid("3c2fac6c-a977-47fc-b44e-2754c0b2bea9")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SemanticZoomAutomationPeer")
interface ISemanticZoomAutomationPeer : IInspectable
{
}

@uuid("f518d44d-a493-4496-b077-9674c7f4c5fa")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SemanticZoomAutomationPeer")
interface ISemanticZoomAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.SemanticZoom owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.SemanticZoomAutomationPeer* return_instance);
}

@uuid("d0de0cdb-30cf-47a6-a5eb-9c77f0b0d6dd")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SettingsFlyoutAutomationPeer")
interface ISettingsFlyoutAutomationPeer : IInspectable
{
}

@uuid("f94762bd-8a14-40e4-94a7-3f33c922e945")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SettingsFlyoutAutomationPeer")
interface ISettingsFlyoutAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.SettingsFlyout owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.SettingsFlyoutAutomationPeer* return_instance);
}

@uuid("ec30015a-d611-46d0-ae4f-6ecf27dfbaa5")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SliderAutomationPeer")
interface ISliderAutomationPeer : IInspectable
{
}

@uuid("971b8056-9a7a-4df9-95fa-6f5c04c91cac")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SliderAutomationPeer")
interface ISliderAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Slider owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.SliderAutomationPeer* return_instance);
}

@uuid("be2057f5-6715-4e69-a050-92bd0ce232a9")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.TextBlockAutomationPeer")
interface ITextBlockAutomationPeer : IInspectable
{
}

@uuid("76bf924b-7ca0-4b01-bc5c-a8cf4d3691de")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.TextBlockAutomationPeer")
interface ITextBlockAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.TextBlock owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.TextBlockAutomationPeer* return_instance);
}

@uuid("3a4f1ca0-5e5d-4d26-9067-e740bf657a9f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.TextBoxAutomationPeer")
interface ITextBoxAutomationPeer : IInspectable
{
}

@uuid("01f0c067-966b-4130-b872-469e42bd4a7f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.TextBoxAutomationPeer")
interface ITextBoxAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.TextBox owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.TextBoxAutomationPeer* return_instance);
}

@uuid("dc2949b5-b45e-4d6d-892f-d9422c950efb")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ThumbAutomationPeer")
interface IThumbAutomationPeer : IInspectable
{
}

@uuid("970743ff-af41-4600-b55d-26d43df860e1")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ThumbAutomationPeer")
interface IThumbAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Primitives.Thumb owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ThumbAutomationPeer* return_instance);
}

@uuid("a43d44ef-3285-4df7-b4a4-e4cdf36a3a17")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.TimePickerAutomationPeer")
interface ITimePickerAutomationPeer : IInspectable
{
}

@uuid("978f6671-47f8-40a7-9e21-68128b16b4fd")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.TimePickerAutomationPeer")
interface ITimePickerAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.TimePicker owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.TimePickerAutomationPeer* return_instance);
}

@uuid("da93ee27-82f1-4701-8706-be297bf06043")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.TimePickerFlyoutPresenterAutomationPeer")
interface ITimePickerFlyoutPresenterAutomationPeer : IInspectable
{
}

@uuid("62dbe6c5-bc0a-45bb-bf77-ea0f1502891f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ToggleButtonAutomationPeer")
interface IToggleButtonAutomationPeer : IInspectable
{
}

@uuid("c9218cc4-ad4b-4d03-a6a4-7d59e6360004")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ToggleButtonAutomationPeer")
interface IToggleButtonAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Primitives.ToggleButton owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ToggleButtonAutomationPeer* return_instance);
}

@uuid("6b57eafe-6af1-4903-8373-3437bf352345")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ToggleMenuFlyoutItemAutomationPeer")
interface IToggleMenuFlyoutItemAutomationPeer : IInspectable
{
}

@uuid("94364b77-8f6c-4837-aae3-94d010d8d162")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ToggleMenuFlyoutItemAutomationPeer")
interface IToggleMenuFlyoutItemAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ToggleMenuFlyoutItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ToggleMenuFlyoutItemAutomationPeer* return_instance);
}

@uuid("c011f174-e89e-4790-bf9a-78ebb5f59e9f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ToggleSwitchAutomationPeer")
interface IToggleSwitchAutomationPeer : IInspectable
{
}

@uuid("31f933e3-fef8-4419-9df5-d9ef7196ea34")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ToggleSwitchAutomationPeer")
interface IToggleSwitchAutomationPeerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ToggleSwitch owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ToggleSwitchAutomationPeer* return_instance);
}

interface AppBarAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IAppBarAutomationPeer, Windows.UI.Xaml.Automation.Provider.IToggleProvider, Windows.UI.Xaml.Automation.Provider.IExpandCollapseProvider, Windows.UI.Xaml.Automation.Provider.IWindowProvider
{
extern(Windows):
	final Windows.UI.Xaml.Automation.ToggleState ToggleState()
	{
		Windows.UI.Xaml.Automation.ToggleState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IToggleProvider).get_ToggleState(&_ret));
		return _ret;
	}
	final void Toggle()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IToggleProvider).abi_Toggle());
	}
	final Windows.UI.Xaml.Automation.ExpandCollapseState ExpandCollapseState()
	{
		Windows.UI.Xaml.Automation.ExpandCollapseState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IExpandCollapseProvider).get_ExpandCollapseState(&_ret));
		return _ret;
	}
	final void Collapse()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IExpandCollapseProvider).abi_Collapse());
	}
	final void Expand()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IExpandCollapseProvider).abi_Expand());
	}
	final bool IsModal()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).get_IsModal(&_ret));
		return _ret;
	}
	final bool IsTopmost()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).get_IsTopmost(&_ret));
		return _ret;
	}
	final bool Maximizable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).get_Maximizable(&_ret));
		return _ret;
	}
	final bool Minimizable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).get_Minimizable(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.WindowInteractionState InteractionState()
	{
		Windows.UI.Xaml.Automation.WindowInteractionState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).get_InteractionState(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.WindowVisualState VisualState()
	{
		Windows.UI.Xaml.Automation.WindowVisualState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).get_VisualState(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).abi_Close());
	}
	final void SetVisualState(Windows.UI.Xaml.Automation.WindowVisualState state)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).abi_SetVisualState(state));
	}
	final bool WaitForInputIdle(INT32 milliseconds)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).abi_WaitForInputIdle(milliseconds, &_ret));
		return _ret;
	}
}

interface AppBarButtonAutomationPeer : Windows.UI.Xaml.Automation.Peers.ButtonAutomationPeer, Windows.UI.Xaml.Automation.Peers.IAppBarButtonAutomationPeer
{
}

interface AppBarToggleButtonAutomationPeer : Windows.UI.Xaml.Automation.Peers.ToggleButtonAutomationPeer, Windows.UI.Xaml.Automation.Peers.IAppBarToggleButtonAutomationPeer
{
}

interface AutoSuggestBoxAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IAutoSuggestBoxAutomationPeer
{
}

interface AutomationPeer : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Automation.Peers.IAutomationPeer, Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides, Windows.UI.Xaml.Automation.Peers.IAutomationPeerProtected, Windows.UI.Xaml.Automation.Peers.IAutomationPeer2, Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides2, Windows.UI.Xaml.Automation.Peers.IAutomationPeer3, Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides3, Windows.UI.Xaml.Automation.Peers.IAutomationPeer4, Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides4, Windows.UI.Xaml.Automation.Peers.IAutomationPeer5, Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides5, Windows.UI.Xaml.Automation.Peers.IAutomationPeer6, Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides6
{
extern(Windows):
	final Windows.UI.Xaml.Automation.Peers.AutomationPeer EventsSource()
	{
		Windows.UI.Xaml.Automation.Peers.AutomationPeer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).get_EventsSource(&_ret));
		return _ret;
	}
	final void EventsSource(Windows.UI.Xaml.Automation.Peers.AutomationPeer value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).set_EventsSource(value));
	}
	final IInspectable GetPattern(Windows.UI.Xaml.Automation.Peers.PatternInterface patternInterface)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetPattern(patternInterface, &_ret));
		return _ret;
	}
	final void RaiseAutomationEvent(Windows.UI.Xaml.Automation.Peers.AutomationEvents eventId)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_RaiseAutomationEvent(eventId));
	}
	final void RaisePropertyChangedEvent(Windows.UI.Xaml.Automation.AutomationProperty automationProperty, IInspectable oldValue, IInspectable newValue)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_RaisePropertyChangedEvent(automationProperty, oldValue, newValue));
	}
	final HSTRING GetAcceleratorKey()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetAcceleratorKey(&_ret));
		return _ret;
	}
	final HSTRING GetAccessKey()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetAccessKey(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Peers.AutomationControlType GetAutomationControlType()
	{
		Windows.UI.Xaml.Automation.Peers.AutomationControlType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetAutomationControlType(&_ret));
		return _ret;
	}
	final HSTRING GetAutomationId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetAutomationId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect GetBoundingRectangle()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetBoundingRectangle(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Automation.Peers.AutomationPeer) GetChildren()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Automation.Peers.AutomationPeer) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetChildren(&_ret));
		return _ret;
	}
	final HSTRING GetClassName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetClassName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point GetClickablePoint()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetClickablePoint(&_ret));
		return _ret;
	}
	final HSTRING GetHelpText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetHelpText(&_ret));
		return _ret;
	}
	final HSTRING GetItemStatus()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetItemStatus(&_ret));
		return _ret;
	}
	final HSTRING GetItemType()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetItemType(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Peers.AutomationPeer GetLabeledBy()
	{
		Windows.UI.Xaml.Automation.Peers.AutomationPeer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetLabeledBy(&_ret));
		return _ret;
	}
	final HSTRING GetLocalizedControlType()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetLocalizedControlType(&_ret));
		return _ret;
	}
	final HSTRING GetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetName(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Peers.AutomationOrientation GetOrientation()
	{
		Windows.UI.Xaml.Automation.Peers.AutomationOrientation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetOrientation(&_ret));
		return _ret;
	}
	final bool HasKeyboardFocus()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_HasKeyboardFocus(&_ret));
		return _ret;
	}
	final bool IsContentElement()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_IsContentElement(&_ret));
		return _ret;
	}
	final bool IsControlElement()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_IsControlElement(&_ret));
		return _ret;
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_IsEnabled(&_ret));
		return _ret;
	}
	final bool IsKeyboardFocusable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_IsKeyboardFocusable(&_ret));
		return _ret;
	}
	final bool IsOffscreen()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_IsOffscreen(&_ret));
		return _ret;
	}
	final bool IsPassword()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_IsPassword(&_ret));
		return _ret;
	}
	final bool IsRequiredForForm()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_IsRequiredForForm(&_ret));
		return _ret;
	}
	final void SetFocus()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_SetFocus());
	}
	deprecated("Consider using Navigate with AutomationNavigationDirection::Parent, which is an improved version of GetParent. For more info, see MSDN.")
	final Windows.UI.Xaml.Automation.Peers.AutomationPeer GetParent()
	{
		Windows.UI.Xaml.Automation.Peers.AutomationPeer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetParent(&_ret));
		return _ret;
	}
	final void InvalidatePeer()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_InvalidatePeer());
	}
	deprecated("Consider using GetElementFromPoint, which is an improved version of GetPeerFromPoint. For more info, see MSDN.")
	final Windows.UI.Xaml.Automation.Peers.AutomationPeer GetPeerFromPoint(Windows.Foundation.Point point)
	{
		Windows.UI.Xaml.Automation.Peers.AutomationPeer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetPeerFromPoint(point, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Peers.AutomationLiveSetting GetLiveSetting()
	{
		Windows.UI.Xaml.Automation.Peers.AutomationLiveSetting _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer).abi_GetLiveSetting(&_ret));
		return _ret;
	}
	final IInspectable GetPatternCore(Windows.UI.Xaml.Automation.Peers.PatternInterface patternInterface)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetPatternCore(patternInterface, &_ret));
		return _ret;
	}
	final HSTRING GetAcceleratorKeyCore()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetAcceleratorKeyCore(&_ret));
		return _ret;
	}
	final HSTRING GetAccessKeyCore()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetAccessKeyCore(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Peers.AutomationControlType GetAutomationControlTypeCore()
	{
		Windows.UI.Xaml.Automation.Peers.AutomationControlType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetAutomationControlTypeCore(&_ret));
		return _ret;
	}
	final HSTRING GetAutomationIdCore()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetAutomationIdCore(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect GetBoundingRectangleCore()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetBoundingRectangleCore(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Automation.Peers.AutomationPeer) GetChildrenCore()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Automation.Peers.AutomationPeer) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetChildrenCore(&_ret));
		return _ret;
	}
	final HSTRING GetClassNameCore()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetClassNameCore(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point GetClickablePointCore()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetClickablePointCore(&_ret));
		return _ret;
	}
	final HSTRING GetHelpTextCore()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetHelpTextCore(&_ret));
		return _ret;
	}
	final HSTRING GetItemStatusCore()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetItemStatusCore(&_ret));
		return _ret;
	}
	final HSTRING GetItemTypeCore()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetItemTypeCore(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Peers.AutomationPeer GetLabeledByCore()
	{
		Windows.UI.Xaml.Automation.Peers.AutomationPeer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetLabeledByCore(&_ret));
		return _ret;
	}
	final HSTRING GetLocalizedControlTypeCore()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetLocalizedControlTypeCore(&_ret));
		return _ret;
	}
	final HSTRING GetNameCore()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetNameCore(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Peers.AutomationOrientation GetOrientationCore()
	{
		Windows.UI.Xaml.Automation.Peers.AutomationOrientation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetOrientationCore(&_ret));
		return _ret;
	}
	final bool HasKeyboardFocusCore()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_HasKeyboardFocusCore(&_ret));
		return _ret;
	}
	final bool IsContentElementCore()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_IsContentElementCore(&_ret));
		return _ret;
	}
	final bool IsControlElementCore()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_IsControlElementCore(&_ret));
		return _ret;
	}
	final bool IsEnabledCore()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_IsEnabledCore(&_ret));
		return _ret;
	}
	final bool IsKeyboardFocusableCore()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_IsKeyboardFocusableCore(&_ret));
		return _ret;
	}
	final bool IsOffscreenCore()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_IsOffscreenCore(&_ret));
		return _ret;
	}
	final bool IsPasswordCore()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_IsPasswordCore(&_ret));
		return _ret;
	}
	final bool IsRequiredForFormCore()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_IsRequiredForFormCore(&_ret));
		return _ret;
	}
	final void SetFocusCore()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_SetFocusCore());
	}
	final Windows.UI.Xaml.Automation.Peers.AutomationPeer GetPeerFromPointCore(Windows.Foundation.Point point)
	{
		Windows.UI.Xaml.Automation.Peers.AutomationPeer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetPeerFromPointCore(point, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Peers.AutomationLiveSetting GetLiveSettingCore()
	{
		Windows.UI.Xaml.Automation.Peers.AutomationLiveSetting _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides).abi_GetLiveSettingCore(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Peers.AutomationPeer PeerFromProvider(Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple provider)
	{
		Windows.UI.Xaml.Automation.Peers.AutomationPeer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerProtected).abi_PeerFromProvider(provider, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple ProviderFromPeer(Windows.UI.Xaml.Automation.Peers.AutomationPeer peer)
	{
		Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerProtected).abi_ProviderFromPeer(peer, &_ret));
		return _ret;
	}
	final void ShowContextMenuCore()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides2).abi_ShowContextMenuCore());
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Automation.Peers.AutomationPeer) GetControlledPeersCore()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Automation.Peers.AutomationPeer) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides2).abi_GetControlledPeersCore(&_ret));
		return _ret;
	}
	final IInspectable Navigate(Windows.UI.Xaml.Automation.Peers.AutomationNavigationDirection direction)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer3).abi_Navigate(direction, &_ret));
		return _ret;
	}
	final IInspectable GetElementFromPoint(Windows.Foundation.Point pointInWindowCoordinates)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer3).abi_GetElementFromPoint(pointInWindowCoordinates, &_ret));
		return _ret;
	}
	final IInspectable GetFocusedElement()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer3).abi_GetFocusedElement(&_ret));
		return _ret;
	}
	final void ShowContextMenu()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer3).abi_ShowContextMenu());
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Automation.Peers.AutomationPeer) GetControlledPeers()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Automation.Peers.AutomationPeer) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer3).abi_GetControlledPeers(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Automation.Peers.AutomationPeerAnnotation) GetAnnotations()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Automation.Peers.AutomationPeerAnnotation) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer3).abi_GetAnnotations(&_ret));
		return _ret;
	}
	final void SetParent(Windows.UI.Xaml.Automation.Peers.AutomationPeer peer)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer3).abi_SetParent(peer));
	}
	final void RaiseTextEditTextChangedEvent(Windows.UI.Xaml.Automation.AutomationTextEditChangeType automationTextEditChangeType, Windows.Foundation.Collections.IVectorView!(HSTRING) changedData)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer3).abi_RaiseTextEditTextChangedEvent(automationTextEditChangeType, changedData));
	}
	final INT32 GetPositionInSet()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer3).abi_GetPositionInSet(&_ret));
		return _ret;
	}
	final INT32 GetSizeOfSet()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer3).abi_GetSizeOfSet(&_ret));
		return _ret;
	}
	final INT32 GetLevel()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer3).abi_GetLevel(&_ret));
		return _ret;
	}
	final void RaiseStructureChangedEvent(Windows.UI.Xaml.Automation.Peers.AutomationStructureChangeType structureChangeType, Windows.UI.Xaml.Automation.Peers.AutomationPeer child)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer3).abi_RaiseStructureChangedEvent(structureChangeType, child));
	}
	final IInspectable NavigateCore(Windows.UI.Xaml.Automation.Peers.AutomationNavigationDirection direction)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides3).abi_NavigateCore(direction, &_ret));
		return _ret;
	}
	final IInspectable GetElementFromPointCore(Windows.Foundation.Point pointInWindowCoordinates)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides3).abi_GetElementFromPointCore(pointInWindowCoordinates, &_ret));
		return _ret;
	}
	final IInspectable GetFocusedElementCore()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides3).abi_GetFocusedElementCore(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Automation.Peers.AutomationPeerAnnotation) GetAnnotationsCore()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Automation.Peers.AutomationPeerAnnotation) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides3).abi_GetAnnotationsCore(&_ret));
		return _ret;
	}
	final INT32 GetPositionInSetCore()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides3).abi_GetPositionInSetCore(&_ret));
		return _ret;
	}
	final INT32 GetSizeOfSetCore()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides3).abi_GetSizeOfSetCore(&_ret));
		return _ret;
	}
	final INT32 GetLevelCore()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides3).abi_GetLevelCore(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Peers.AutomationLandmarkType GetLandmarkType()
	{
		Windows.UI.Xaml.Automation.Peers.AutomationLandmarkType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer4).abi_GetLandmarkType(&_ret));
		return _ret;
	}
	final HSTRING GetLocalizedLandmarkType()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer4).abi_GetLocalizedLandmarkType(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Peers.AutomationLandmarkType GetLandmarkTypeCore()
	{
		Windows.UI.Xaml.Automation.Peers.AutomationLandmarkType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides4).abi_GetLandmarkTypeCore(&_ret));
		return _ret;
	}
	final HSTRING GetLocalizedLandmarkTypeCore()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides4).abi_GetLocalizedLandmarkTypeCore(&_ret));
		return _ret;
	}
	final bool IsPeripheral()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer5).abi_IsPeripheral(&_ret));
		return _ret;
	}
	final bool IsDataValidForForm()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer5).abi_IsDataValidForForm(&_ret));
		return _ret;
	}
	final HSTRING GetFullDescription()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer5).abi_GetFullDescription(&_ret));
		return _ret;
	}
	final bool IsPeripheralCore()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides5).abi_IsPeripheralCore(&_ret));
		return _ret;
	}
	final bool IsDataValidForFormCore()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides5).abi_IsDataValidForFormCore(&_ret));
		return _ret;
	}
	final HSTRING GetFullDescriptionCore()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides5).abi_GetFullDescriptionCore(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Automation.Peers.AutomationPeer) GetDescribedByCore()
	{
		Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Automation.Peers.AutomationPeer) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides5).abi_GetDescribedByCore(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Automation.Peers.AutomationPeer) GetFlowsToCore()
	{
		Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Automation.Peers.AutomationPeer) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides5).abi_GetFlowsToCore(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Automation.Peers.AutomationPeer) GetFlowsFromCore()
	{
		Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Automation.Peers.AutomationPeer) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides5).abi_GetFlowsFromCore(&_ret));
		return _ret;
	}
	final INT32 GetCulture()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeer6).abi_GetCulture(&_ret));
		return _ret;
	}
	final INT32 GetCultureCore()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides6).abi_GetCultureCore(&_ret));
		return _ret;
	}
}

interface AutomationPeerAnnotation : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Automation.Peers.IAutomationPeerAnnotation
{
extern(Windows):
	final Windows.UI.Xaml.Automation.AnnotationType Type()
	{
		Windows.UI.Xaml.Automation.AnnotationType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerAnnotation).get_Type(&_ret));
		return _ret;
	}
	final void Type(Windows.UI.Xaml.Automation.AnnotationType value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerAnnotation).set_Type(value));
	}
	final Windows.UI.Xaml.Automation.Peers.AutomationPeer Peer()
	{
		Windows.UI.Xaml.Automation.Peers.AutomationPeer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerAnnotation).get_Peer(&_ret));
		return _ret;
	}
	final void Peer(Windows.UI.Xaml.Automation.Peers.AutomationPeer value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IAutomationPeerAnnotation).set_Peer(value));
	}
}

interface ButtonAutomationPeer : Windows.UI.Xaml.Automation.Peers.ButtonBaseAutomationPeer, Windows.UI.Xaml.Automation.Peers.IButtonAutomationPeer, Windows.UI.Xaml.Automation.Provider.IInvokeProvider
{
extern(Windows):
	final void Invoke()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IInvokeProvider).abi_Invoke());
	}
}

interface ButtonBaseAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IButtonBaseAutomationPeer
{
}

interface CaptureElementAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.ICaptureElementAutomationPeer
{
}

interface CheckBoxAutomationPeer : Windows.UI.Xaml.Automation.Peers.ToggleButtonAutomationPeer, Windows.UI.Xaml.Automation.Peers.ICheckBoxAutomationPeer
{
}

interface ComboBoxAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorAutomationPeer, Windows.UI.Xaml.Automation.Peers.IComboBoxAutomationPeer, Windows.UI.Xaml.Automation.Provider.IExpandCollapseProvider, Windows.UI.Xaml.Automation.Provider.IValueProvider, Windows.UI.Xaml.Automation.Provider.IWindowProvider
{
extern(Windows):
	final Windows.UI.Xaml.Automation.ExpandCollapseState ExpandCollapseState()
	{
		Windows.UI.Xaml.Automation.ExpandCollapseState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IExpandCollapseProvider).get_ExpandCollapseState(&_ret));
		return _ret;
	}
	final void Collapse()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IExpandCollapseProvider).abi_Collapse());
	}
	final void Expand()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IExpandCollapseProvider).abi_Expand());
	}
	final bool IsReadOnly()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IValueProvider).get_IsReadOnly(&_ret));
		return _ret;
	}
	final HSTRING Value()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IValueProvider).get_Value(&_ret));
		return _ret;
	}
	final void SetValue(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IValueProvider).abi_SetValue(value));
	}
	final bool IsModal()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).get_IsModal(&_ret));
		return _ret;
	}
	final bool IsTopmost()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).get_IsTopmost(&_ret));
		return _ret;
	}
	final bool Maximizable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).get_Maximizable(&_ret));
		return _ret;
	}
	final bool Minimizable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).get_Minimizable(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.WindowInteractionState InteractionState()
	{
		Windows.UI.Xaml.Automation.WindowInteractionState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).get_InteractionState(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.WindowVisualState VisualState()
	{
		Windows.UI.Xaml.Automation.WindowVisualState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).get_VisualState(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).abi_Close());
	}
	final void SetVisualState(Windows.UI.Xaml.Automation.WindowVisualState state)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).abi_SetVisualState(state));
	}
	final bool WaitForInputIdle(INT32 milliseconds)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IWindowProvider).abi_WaitForInputIdle(milliseconds, &_ret));
		return _ret;
	}
}

interface ComboBoxItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IComboBoxItemAutomationPeer
{
}

interface ComboBoxItemDataAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorItemAutomationPeer, Windows.UI.Xaml.Automation.Peers.IComboBoxItemDataAutomationPeer, Windows.UI.Xaml.Automation.Provider.IScrollItemProvider
{
extern(Windows):
	final void ScrollIntoView()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollItemProvider).abi_ScrollIntoView());
	}
}

interface DatePickerAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IDatePickerAutomationPeer
{
}

interface DatePickerFlyoutPresenterAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IDatePickerFlyoutPresenterAutomationPeer
{
}

interface FlipViewAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorAutomationPeer, Windows.UI.Xaml.Automation.Peers.IFlipViewAutomationPeer
{
}

interface FlipViewItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IFlipViewItemAutomationPeer
{
}

interface FlipViewItemDataAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorItemAutomationPeer, Windows.UI.Xaml.Automation.Peers.IFlipViewItemDataAutomationPeer, Windows.UI.Xaml.Automation.Provider.IScrollItemProvider
{
extern(Windows):
	final void ScrollIntoView()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollItemProvider).abi_ScrollIntoView());
	}
}

interface FlyoutPresenterAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IFlyoutPresenterAutomationPeer
{
}

interface FrameworkElementAutomationPeer : Windows.UI.Xaml.Automation.Peers.AutomationPeer, Windows.UI.Xaml.Automation.Peers.IFrameworkElementAutomationPeer
{
extern(Windows):
	final Windows.UI.Xaml.UIElement Owner()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IFrameworkElementAutomationPeer).get_Owner(&_ret));
		return _ret;
	}
}

interface GridViewAutomationPeer : Windows.UI.Xaml.Automation.Peers.ListViewBaseAutomationPeer, Windows.UI.Xaml.Automation.Peers.IGridViewAutomationPeer
{
}

interface GridViewHeaderItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.ListViewBaseHeaderItemAutomationPeer, Windows.UI.Xaml.Automation.Peers.IGridViewHeaderItemAutomationPeer
{
}

interface GridViewItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IGridViewItemAutomationPeer
{
}

interface GridViewItemDataAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorItemAutomationPeer, Windows.UI.Xaml.Automation.Peers.IGridViewItemDataAutomationPeer, Windows.UI.Xaml.Automation.Provider.IScrollItemProvider
{
extern(Windows):
	final void ScrollIntoView()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollItemProvider).abi_ScrollIntoView());
	}
}

interface GroupItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IGroupItemAutomationPeer
{
}

interface HubAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IHubAutomationPeer
{
}

interface HubSectionAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IHubSectionAutomationPeer, Windows.UI.Xaml.Automation.Provider.IScrollItemProvider
{
extern(Windows):
	final void ScrollIntoView()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollItemProvider).abi_ScrollIntoView());
	}
}

interface HyperlinkButtonAutomationPeer : Windows.UI.Xaml.Automation.Peers.ButtonBaseAutomationPeer, Windows.UI.Xaml.Automation.Peers.IHyperlinkButtonAutomationPeer, Windows.UI.Xaml.Automation.Provider.IInvokeProvider
{
extern(Windows):
	final void Invoke()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IInvokeProvider).abi_Invoke());
	}
}

interface ImageAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IImageAutomationPeer
{
}

interface InkToolbarAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IInkToolbarAutomationPeer
{
}

interface ItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.AutomationPeer, Windows.UI.Xaml.Automation.Peers.IItemAutomationPeer, Windows.UI.Xaml.Automation.Provider.IVirtualizedItemProvider
{
extern(Windows):
	final IInspectable Item()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IItemAutomationPeer).get_Item(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer ItemsControlAutomationPeer()
	{
		Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IItemAutomationPeer).get_ItemsControlAutomationPeer(&_ret));
		return _ret;
	}
	final void Realize()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IVirtualizedItemProvider).abi_Realize());
	}
}

interface ItemsControlAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IItemsControlAutomationPeer, Windows.UI.Xaml.Automation.Provider.IItemContainerProvider, Windows.UI.Xaml.Automation.Peers.IItemsControlAutomationPeer2, Windows.UI.Xaml.Automation.Peers.IItemsControlAutomationPeerOverrides2
{
extern(Windows):
	final Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple FindItemByProperty(Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple startAfter, Windows.UI.Xaml.Automation.AutomationProperty automationProperty, IInspectable value)
	{
		Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IItemContainerProvider).abi_FindItemByProperty(startAfter, automationProperty, value, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer CreateItemAutomationPeer(IInspectable item)
	{
		Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IItemsControlAutomationPeer2).abi_CreateItemAutomationPeer(item, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer OnCreateItemAutomationPeer(IInspectable item)
	{
		Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Peers.IItemsControlAutomationPeerOverrides2).abi_OnCreateItemAutomationPeer(item, &_ret));
		return _ret;
	}
}

interface ListBoxAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorAutomationPeer, Windows.UI.Xaml.Automation.Peers.IListBoxAutomationPeer
{
}

interface ListBoxItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IListBoxItemAutomationPeer
{
}

interface ListBoxItemDataAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorItemAutomationPeer, Windows.UI.Xaml.Automation.Peers.IListBoxItemDataAutomationPeer, Windows.UI.Xaml.Automation.Provider.IScrollItemProvider
{
extern(Windows):
	final void ScrollIntoView()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollItemProvider).abi_ScrollIntoView());
	}
}

interface ListPickerFlyoutPresenterAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IListPickerFlyoutPresenterAutomationPeer
{
}

interface ListViewAutomationPeer : Windows.UI.Xaml.Automation.Peers.ListViewBaseAutomationPeer, Windows.UI.Xaml.Automation.Peers.IListViewAutomationPeer
{
}

interface ListViewBaseAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorAutomationPeer, Windows.UI.Xaml.Automation.Peers.IListViewBaseAutomationPeer, Windows.UI.Xaml.Automation.Provider.IDropTargetProvider
{
extern(Windows):
	final HSTRING DropEffect()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IDropTargetProvider).get_DropEffect(&_ret));
		return _ret;
	}
	final HSTRING* DropEffects(UINT32* out___valueSize)
	{
		HSTRING* _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IDropTargetProvider).get_DropEffects(out___valueSize, &_ret));
		return _ret;
	}
}

interface ListViewBaseHeaderItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IListViewBaseHeaderItemAutomationPeer
{
}

interface ListViewHeaderItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.ListViewBaseHeaderItemAutomationPeer, Windows.UI.Xaml.Automation.Peers.IListViewHeaderItemAutomationPeer
{
}

interface ListViewItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IListViewItemAutomationPeer
{
}

interface ListViewItemDataAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorItemAutomationPeer, Windows.UI.Xaml.Automation.Peers.IListViewItemDataAutomationPeer, Windows.UI.Xaml.Automation.Provider.IScrollItemProvider
{
extern(Windows):
	final void ScrollIntoView()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollItemProvider).abi_ScrollIntoView());
	}
}

interface LoopingSelectorAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.ILoopingSelectorAutomationPeer, Windows.UI.Xaml.Automation.Provider.IExpandCollapseProvider, Windows.UI.Xaml.Automation.Provider.IItemContainerProvider, Windows.UI.Xaml.Automation.Provider.IScrollProvider, Windows.UI.Xaml.Automation.Provider.ISelectionProvider
{
extern(Windows):
	final Windows.UI.Xaml.Automation.ExpandCollapseState ExpandCollapseState()
	{
		Windows.UI.Xaml.Automation.ExpandCollapseState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IExpandCollapseProvider).get_ExpandCollapseState(&_ret));
		return _ret;
	}
	final void Collapse()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IExpandCollapseProvider).abi_Collapse());
	}
	final void Expand()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IExpandCollapseProvider).abi_Expand());
	}
	final Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple FindItemByProperty(Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple startAfter, Windows.UI.Xaml.Automation.AutomationProperty automationProperty, IInspectable value)
	{
		Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IItemContainerProvider).abi_FindItemByProperty(startAfter, automationProperty, value, &_ret));
		return _ret;
	}
	final bool HorizontallyScrollable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_HorizontallyScrollable(&_ret));
		return _ret;
	}
	final double HorizontalScrollPercent()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_HorizontalScrollPercent(&_ret));
		return _ret;
	}
	final double HorizontalViewSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_HorizontalViewSize(&_ret));
		return _ret;
	}
	final bool VerticallyScrollable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_VerticallyScrollable(&_ret));
		return _ret;
	}
	final double VerticalScrollPercent()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_VerticalScrollPercent(&_ret));
		return _ret;
	}
	final double VerticalViewSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_VerticalViewSize(&_ret));
		return _ret;
	}
	final void Scroll(Windows.UI.Xaml.Automation.ScrollAmount horizontalAmount, Windows.UI.Xaml.Automation.ScrollAmount verticalAmount)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).abi_Scroll(horizontalAmount, verticalAmount));
	}
	final void SetScrollPercent(double horizontalPercent, double verticalPercent)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).abi_SetScrollPercent(horizontalPercent, verticalPercent));
	}
	final bool CanSelectMultiple()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionProvider).get_CanSelectMultiple(&_ret));
		return _ret;
	}
	final bool IsSelectionRequired()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionProvider).get_IsSelectionRequired(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple* GetSelection(UINT32* out___returnValueSize)
	{
		Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple* _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionProvider).abi_GetSelection(out___returnValueSize, &_ret));
		return _ret;
	}
}

interface LoopingSelectorItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.ILoopingSelectorItemAutomationPeer, Windows.UI.Xaml.Automation.Provider.IScrollItemProvider, Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider
{
extern(Windows):
	final void ScrollIntoView()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollItemProvider).abi_ScrollIntoView());
	}
	final bool IsSelected()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).get_IsSelected(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple SelectionContainer()
	{
		Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).get_SelectionContainer(&_ret));
		return _ret;
	}
	final void AddToSelection()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).abi_AddToSelection());
	}
	final void RemoveFromSelection()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).abi_RemoveFromSelection());
	}
	final void Select()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).abi_Select());
	}
}

interface LoopingSelectorItemDataAutomationPeer : Windows.UI.Xaml.Automation.Peers.AutomationPeer, Windows.UI.Xaml.Automation.Peers.ILoopingSelectorItemDataAutomationPeer, Windows.UI.Xaml.Automation.Provider.IVirtualizedItemProvider
{
extern(Windows):
	final void Realize()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IVirtualizedItemProvider).abi_Realize());
	}
}

interface MapControlAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IMapControlAutomationPeer, Windows.UI.Xaml.Automation.Provider.IScrollProvider, Windows.UI.Xaml.Automation.Provider.ITransformProvider2, Windows.UI.Xaml.Automation.Provider.ITransformProvider
{
extern(Windows):
	final bool HorizontallyScrollable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_HorizontallyScrollable(&_ret));
		return _ret;
	}
	final double HorizontalScrollPercent()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_HorizontalScrollPercent(&_ret));
		return _ret;
	}
	final double HorizontalViewSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_HorizontalViewSize(&_ret));
		return _ret;
	}
	final bool VerticallyScrollable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_VerticallyScrollable(&_ret));
		return _ret;
	}
	final double VerticalScrollPercent()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_VerticalScrollPercent(&_ret));
		return _ret;
	}
	final double VerticalViewSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_VerticalViewSize(&_ret));
		return _ret;
	}
	final void Scroll(Windows.UI.Xaml.Automation.ScrollAmount horizontalAmount, Windows.UI.Xaml.Automation.ScrollAmount verticalAmount)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).abi_Scroll(horizontalAmount, verticalAmount));
	}
	final void SetScrollPercent(double horizontalPercent, double verticalPercent)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).abi_SetScrollPercent(horizontalPercent, verticalPercent));
	}
	final bool CanZoom()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ITransformProvider2).get_CanZoom(&_ret));
		return _ret;
	}
	final double ZoomLevel()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ITransformProvider2).get_ZoomLevel(&_ret));
		return _ret;
	}
	final double MaxZoom()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ITransformProvider2).get_MaxZoom(&_ret));
		return _ret;
	}
	final double MinZoom()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ITransformProvider2).get_MinZoom(&_ret));
		return _ret;
	}
	final void Zoom(double zoom)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ITransformProvider2).abi_Zoom(zoom));
	}
	final void ZoomByUnit(Windows.UI.Xaml.Automation.ZoomUnit zoomUnit)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ITransformProvider2).abi_ZoomByUnit(zoomUnit));
	}
	final bool CanMove()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ITransformProvider).get_CanMove(&_ret));
		return _ret;
	}
	final bool CanResize()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ITransformProvider).get_CanResize(&_ret));
		return _ret;
	}
	final bool CanRotate()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ITransformProvider).get_CanRotate(&_ret));
		return _ret;
	}
	final void Move(double x, double y)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ITransformProvider).abi_Move(x, y));
	}
	final void Resize(double width, double height)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ITransformProvider).abi_Resize(width, height));
	}
	final void Rotate(double degrees)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ITransformProvider).abi_Rotate(degrees));
	}
}

interface MediaElementAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IMediaElementAutomationPeer
{
}

interface MediaPlayerElementAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IMediaPlayerElementAutomationPeer
{
}

interface MediaTransportControlsAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IMediaTransportControlsAutomationPeer
{
}

interface MenuFlyoutItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IMenuFlyoutItemAutomationPeer, Windows.UI.Xaml.Automation.Provider.IInvokeProvider
{
extern(Windows):
	final void Invoke()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IInvokeProvider).abi_Invoke());
	}
}

interface MenuFlyoutPresenterAutomationPeer : Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer, Windows.UI.Xaml.Automation.Peers.IMenuFlyoutPresenterAutomationPeer
{
}

interface PasswordBoxAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IPasswordBoxAutomationPeer
{
}

interface PickerFlyoutPresenterAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IPickerFlyoutPresenterAutomationPeer
{
}

interface PivotAutomationPeer : Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer, Windows.UI.Xaml.Automation.Peers.IPivotAutomationPeer, Windows.UI.Xaml.Automation.Provider.IScrollProvider, Windows.UI.Xaml.Automation.Provider.ISelectionProvider
{
extern(Windows):
	final bool HorizontallyScrollable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_HorizontallyScrollable(&_ret));
		return _ret;
	}
	final double HorizontalScrollPercent()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_HorizontalScrollPercent(&_ret));
		return _ret;
	}
	final double HorizontalViewSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_HorizontalViewSize(&_ret));
		return _ret;
	}
	final bool VerticallyScrollable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_VerticallyScrollable(&_ret));
		return _ret;
	}
	final double VerticalScrollPercent()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_VerticalScrollPercent(&_ret));
		return _ret;
	}
	final double VerticalViewSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_VerticalViewSize(&_ret));
		return _ret;
	}
	final void Scroll(Windows.UI.Xaml.Automation.ScrollAmount horizontalAmount, Windows.UI.Xaml.Automation.ScrollAmount verticalAmount)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).abi_Scroll(horizontalAmount, verticalAmount));
	}
	final void SetScrollPercent(double horizontalPercent, double verticalPercent)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).abi_SetScrollPercent(horizontalPercent, verticalPercent));
	}
	final bool CanSelectMultiple()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionProvider).get_CanSelectMultiple(&_ret));
		return _ret;
	}
	final bool IsSelectionRequired()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionProvider).get_IsSelectionRequired(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple* GetSelection(UINT32* out___returnValueSize)
	{
		Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple* _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionProvider).abi_GetSelection(out___returnValueSize, &_ret));
		return _ret;
	}
}

interface PivotItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IPivotItemAutomationPeer
{
}

interface PivotItemDataAutomationPeer : Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer, Windows.UI.Xaml.Automation.Peers.IPivotItemDataAutomationPeer, Windows.UI.Xaml.Automation.Provider.IScrollItemProvider, Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider, Windows.UI.Xaml.Automation.Provider.IVirtualizedItemProvider
{
extern(Windows):
	final void ScrollIntoView()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollItemProvider).abi_ScrollIntoView());
	}
	final bool IsSelected()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).get_IsSelected(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple SelectionContainer()
	{
		Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).get_SelectionContainer(&_ret));
		return _ret;
	}
	final void AddToSelection()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).abi_AddToSelection());
	}
	final void RemoveFromSelection()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).abi_RemoveFromSelection());
	}
	final void Select()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).abi_Select());
	}
	final void Realize()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IVirtualizedItemProvider).abi_Realize());
	}
}

interface ProgressBarAutomationPeer : Windows.UI.Xaml.Automation.Peers.RangeBaseAutomationPeer, Windows.UI.Xaml.Automation.Peers.IProgressBarAutomationPeer
{
}

interface ProgressRingAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IProgressRingAutomationPeer
{
}

interface RadioButtonAutomationPeer : Windows.UI.Xaml.Automation.Peers.ToggleButtonAutomationPeer, Windows.UI.Xaml.Automation.Peers.IRadioButtonAutomationPeer, Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider
{
extern(Windows):
	final bool IsSelected()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).get_IsSelected(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple SelectionContainer()
	{
		Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).get_SelectionContainer(&_ret));
		return _ret;
	}
	final void AddToSelection()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).abi_AddToSelection());
	}
	final void RemoveFromSelection()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).abi_RemoveFromSelection());
	}
	final void Select()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).abi_Select());
	}
}

interface RangeBaseAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IRangeBaseAutomationPeer, Windows.UI.Xaml.Automation.Provider.IRangeValueProvider
{
extern(Windows):
	final bool IsReadOnly()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IRangeValueProvider).get_IsReadOnly(&_ret));
		return _ret;
	}
	final double LargeChange()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IRangeValueProvider).get_LargeChange(&_ret));
		return _ret;
	}
	final double Maximum()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IRangeValueProvider).get_Maximum(&_ret));
		return _ret;
	}
	final double Minimum()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IRangeValueProvider).get_Minimum(&_ret));
		return _ret;
	}
	final double SmallChange()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IRangeValueProvider).get_SmallChange(&_ret));
		return _ret;
	}
	final double Value()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IRangeValueProvider).get_Value(&_ret));
		return _ret;
	}
	final void SetValue(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IRangeValueProvider).abi_SetValue(value));
	}
}

interface RepeatButtonAutomationPeer : Windows.UI.Xaml.Automation.Peers.ButtonBaseAutomationPeer, Windows.UI.Xaml.Automation.Peers.IRepeatButtonAutomationPeer, Windows.UI.Xaml.Automation.Provider.IInvokeProvider
{
extern(Windows):
	final void Invoke()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IInvokeProvider).abi_Invoke());
	}
}

interface RichEditBoxAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IRichEditBoxAutomationPeer
{
}

interface RichTextBlockAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IRichTextBlockAutomationPeer
{
}

interface RichTextBlockOverflowAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IRichTextBlockOverflowAutomationPeer
{
}

interface ScrollBarAutomationPeer : Windows.UI.Xaml.Automation.Peers.RangeBaseAutomationPeer, Windows.UI.Xaml.Automation.Peers.IScrollBarAutomationPeer
{
}

interface ScrollViewerAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IScrollViewerAutomationPeer, Windows.UI.Xaml.Automation.Provider.IScrollProvider
{
extern(Windows):
	final bool HorizontallyScrollable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_HorizontallyScrollable(&_ret));
		return _ret;
	}
	final double HorizontalScrollPercent()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_HorizontalScrollPercent(&_ret));
		return _ret;
	}
	final double HorizontalViewSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_HorizontalViewSize(&_ret));
		return _ret;
	}
	final bool VerticallyScrollable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_VerticallyScrollable(&_ret));
		return _ret;
	}
	final double VerticalScrollPercent()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_VerticalScrollPercent(&_ret));
		return _ret;
	}
	final double VerticalViewSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).get_VerticalViewSize(&_ret));
		return _ret;
	}
	final void Scroll(Windows.UI.Xaml.Automation.ScrollAmount horizontalAmount, Windows.UI.Xaml.Automation.ScrollAmount verticalAmount)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).abi_Scroll(horizontalAmount, verticalAmount));
	}
	final void SetScrollPercent(double horizontalPercent, double verticalPercent)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IScrollProvider).abi_SetScrollPercent(horizontalPercent, verticalPercent));
	}
}

interface SearchBoxAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.ISearchBoxAutomationPeer
{
}

interface SelectorAutomationPeer : Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer, Windows.UI.Xaml.Automation.Peers.ISelectorAutomationPeer, Windows.UI.Xaml.Automation.Provider.ISelectionProvider
{
extern(Windows):
	final bool CanSelectMultiple()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionProvider).get_CanSelectMultiple(&_ret));
		return _ret;
	}
	final bool IsSelectionRequired()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionProvider).get_IsSelectionRequired(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple* GetSelection(UINT32* out___returnValueSize)
	{
		Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple* _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionProvider).abi_GetSelection(out___returnValueSize, &_ret));
		return _ret;
	}
}

interface SelectorItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer, Windows.UI.Xaml.Automation.Peers.ISelectorItemAutomationPeer, Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider
{
extern(Windows):
	final bool IsSelected()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).get_IsSelected(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple SelectionContainer()
	{
		Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).get_SelectionContainer(&_ret));
		return _ret;
	}
	final void AddToSelection()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).abi_AddToSelection());
	}
	final void RemoveFromSelection()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).abi_RemoveFromSelection());
	}
	final void Select()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.ISelectionItemProvider).abi_Select());
	}
}

interface SemanticZoomAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.ISemanticZoomAutomationPeer, Windows.UI.Xaml.Automation.Provider.IToggleProvider
{
extern(Windows):
	final Windows.UI.Xaml.Automation.ToggleState ToggleState()
	{
		Windows.UI.Xaml.Automation.ToggleState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IToggleProvider).get_ToggleState(&_ret));
		return _ret;
	}
	final void Toggle()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IToggleProvider).abi_Toggle());
	}
}

interface SettingsFlyoutAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.ISettingsFlyoutAutomationPeer
{
}

interface SliderAutomationPeer : Windows.UI.Xaml.Automation.Peers.RangeBaseAutomationPeer, Windows.UI.Xaml.Automation.Peers.ISliderAutomationPeer
{
}

interface TextBlockAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.ITextBlockAutomationPeer
{
}

interface TextBoxAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.ITextBoxAutomationPeer
{
}

interface ThumbAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IThumbAutomationPeer
{
}

interface TimePickerAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.ITimePickerAutomationPeer
{
}

interface TimePickerFlyoutPresenterAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.ITimePickerFlyoutPresenterAutomationPeer
{
}

interface ToggleButtonAutomationPeer : Windows.UI.Xaml.Automation.Peers.ButtonBaseAutomationPeer, Windows.UI.Xaml.Automation.Peers.IToggleButtonAutomationPeer, Windows.UI.Xaml.Automation.Provider.IToggleProvider
{
extern(Windows):
	final Windows.UI.Xaml.Automation.ToggleState ToggleState()
	{
		Windows.UI.Xaml.Automation.ToggleState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IToggleProvider).get_ToggleState(&_ret));
		return _ret;
	}
	final void Toggle()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IToggleProvider).abi_Toggle());
	}
}

interface ToggleMenuFlyoutItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IToggleMenuFlyoutItemAutomationPeer, Windows.UI.Xaml.Automation.Provider.IToggleProvider
{
extern(Windows):
	final Windows.UI.Xaml.Automation.ToggleState ToggleState()
	{
		Windows.UI.Xaml.Automation.ToggleState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IToggleProvider).get_ToggleState(&_ret));
		return _ret;
	}
	final void Toggle()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IToggleProvider).abi_Toggle());
	}
}

interface ToggleSwitchAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer, Windows.UI.Xaml.Automation.Peers.IToggleSwitchAutomationPeer, Windows.UI.Xaml.Automation.Provider.IToggleProvider
{
extern(Windows):
	final Windows.UI.Xaml.Automation.ToggleState ToggleState()
	{
		Windows.UI.Xaml.Automation.ToggleState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IToggleProvider).get_ToggleState(&_ret));
		return _ret;
	}
	final void Toggle()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Automation.Provider.IToggleProvider).abi_Toggle());
	}
}

enum AccessibilityView
{
	Raw = 0,
	Control = 1,
	Content = 2
}

enum AutomationControlType
{
	Button = 0,
	Calendar = 1,
	CheckBox = 2,
	ComboBox = 3,
	Edit = 4,
	Hyperlink = 5,
	Image = 6,
	ListItem = 7,
	List = 8,
	Menu = 9,
	MenuBar = 10,
	MenuItem = 11,
	ProgressBar = 12,
	RadioButton = 13,
	ScrollBar = 14,
	Slider = 15,
	Spinner = 16,
	StatusBar = 17,
	Tab = 18,
	TabItem = 19,
	Text = 20,
	ToolBar = 21,
	ToolTip = 22,
	Tree = 23,
	TreeItem = 24,
	Custom = 25,
	Group = 26,
	Thumb = 27,
	DataGrid = 28,
	DataItem = 29,
	Document = 30,
	SplitButton = 31,
	Window = 32,
	Pane = 33,
	Header = 34,
	HeaderItem = 35,
	Table = 36,
	TitleBar = 37,
	Separator = 38,
	SemanticZoom = 39,
	AppBar = 40
}

enum AutomationEvents
{
	ToolTipOpened = 0,
	ToolTipClosed = 1,
	MenuOpened = 2,
	MenuClosed = 3,
	AutomationFocusChanged = 4,
	InvokePatternOnInvoked = 5,
	SelectionItemPatternOnElementAddedToSelection = 6,
	SelectionItemPatternOnElementRemovedFromSelection = 7,
	SelectionItemPatternOnElementSelected = 8,
	SelectionPatternOnInvalidated = 9,
	TextPatternOnTextSelectionChanged = 10,
	TextPatternOnTextChanged = 11,
	AsyncContentLoaded = 12,
	PropertyChanged = 13,
	StructureChanged = 14,
	DragStart = 15,
	DragCancel = 16,
	DragComplete = 17,
	DragEnter = 18,
	DragLeave = 19,
	Dropped = 20,
	LiveRegionChanged = 21,
	InputReachedTarget = 22,
	InputReachedOtherElement = 23,
	InputDiscarded = 24,
	WindowClosed = 25,
	WindowOpened = 26,
	ConversionTargetChanged = 27,
	TextEditTextChanged = 28,
	LayoutInvalidated = 29
}

enum AutomationLandmarkType
{
	None = 0,
	Custom = 1,
	Form = 2,
	Main = 3,
	Navigation = 4,
	Search = 5
}

enum AutomationLiveSetting
{
	Off = 0,
	Polite = 1,
	Assertive = 2
}

enum AutomationNavigationDirection
{
	Parent = 0,
	NextSibling = 1,
	PreviousSibling = 2,
	FirstChild = 3,
	LastChild = 4
}

enum AutomationOrientation
{
	None = 0,
	Horizontal = 1,
	Vertical = 2
}

enum AutomationStructureChangeType
{
	ChildAdded = 0,
	ChildRemoved = 1,
	ChildrenInvalidated = 2,
	ChildrenBulkAdded = 3,
	ChildrenBulkRemoved = 4,
	ChildrenReordered = 5
}

enum PatternInterface
{
	Invoke = 0,
	Selection = 1,
	Value = 2,
	RangeValue = 3,
	Scroll = 4,
	ScrollItem = 5,
	ExpandCollapse = 6,
	Grid = 7,
	GridItem = 8,
	MultipleView = 9,
	Window = 10,
	SelectionItem = 11,
	Dock = 12,
	Table = 13,
	TableItem = 14,
	Toggle = 15,
	Transform = 16,
	Text = 17,
	ItemContainer = 18,
	VirtualizedItem = 19,
	Text2 = 20,
	TextChild = 21,
	TextRange = 22,
	Annotation = 23,
	Drag = 24,
	DropTarget = 25,
	ObjectModel = 26,
	Spreadsheet = 27,
	SpreadsheetItem = 28,
	Styles = 29,
	Transform2 = 30,
	SynchronizedInput = 31,
	TextEdit = 32,
	CustomNavigation = 33
}