module Windows.UI.Xaml.Automation.Peers;

import dwinrt;

struct RawElementProviderRuntimeId
{
	UINT32 Part1;
	UINT32 Part2;
}

@uuid("8360f4e2-e396-4517-af5d-f4cf34c54edf")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AppBarAutomationPeer")
interface IAppBarAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.AppBar owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.AppBarAutomationPeer* return_instance);
}

@uuid("aef0342a-acb7-42dc-97e3-847071865fd6")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AppBarButtonAutomationPeer")
interface IAppBarButtonAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.AppBarButton owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.AppBarButtonAutomationPeer* return_instance);
}

@uuid("d6f9139d-02c1-4221-9591-7d4efeb74701")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AppBarToggleButtonAutomationPeer")
interface IAppBarToggleButtonAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.AppBarToggleButton owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.AppBarToggleButtonAutomationPeer* return_instance);
}

@uuid("80046849-18e7-4475-b362-4bbd53d24562")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutoSuggestBoxAutomationPeer")
interface IAutoSuggestBoxAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.AutoSuggestBox owner, Windows.UI.Xaml.Automation.Peers.AutoSuggestBoxAutomationPeer* return_instance);
}

@uuid("35aac87a-62ee-4d3e-a24c-2bc8432d68b7")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("d3cfb977-0084-41d7-a221-28158d3bc32c")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeer3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetLandmarkType(Windows.UI.Xaml.Automation.Peers.AutomationLandmarkType* return_returnValue);
	HRESULT abi_GetLocalizedLandmarkType(HSTRING* return_returnValue);
}

@uuid("f632e1c6-0a3f-4574-9fef-cdc151765674")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeer5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_IsPeripheral(bool* return_returnValue);
	HRESULT abi_IsDataValidForForm(bool* return_returnValue);
	HRESULT abi_GetFullDescription(HSTRING* return_returnValue);
}

@uuid("caf8608f-13ff-42fb-866d-22206434cc6b")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeer6 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetCulture(INT32* return_returnValue);
}

@uuid("0c456061-52cf-43fa-82f8-07f137351e5a")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeerAnnotation")
interface IAutomationPeerAnnotation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(Windows.UI.Xaml.Automation.AnnotationType type, Windows.UI.Xaml.Automation.Peers.AutomationPeerAnnotation* return_instance);
	HRESULT abi_CreateWithPeerParameter(Windows.UI.Xaml.Automation.AnnotationType type, Windows.UI.Xaml.Automation.Peers.AutomationPeer peer, Windows.UI.Xaml.Automation.Peers.AutomationPeerAnnotation* return_instance);
}

@uuid("8809a87d-09b2-4d45-b78b-1d3b3b09f661")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeerAnnotation")
interface IAutomationPeerAnnotationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PeerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("20c27545-a88b-43c8-bc24-cea9dafd04a3")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_instance);
}

@uuid("bea93e67-dbee-4f7b-af0d-a79aae5333bf")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ShowContextMenuCore();
	HRESULT abi_GetControlledPeersCore(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Automation.Peers.AutomationPeer)* return_returnValue);
}

@uuid("b6f0c4ad-4d39-49e6-bb91-d924eefd8538")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerOverrides3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetLandmarkTypeCore(Windows.UI.Xaml.Automation.Peers.AutomationLandmarkType* return_returnValue);
	HRESULT abi_GetLocalizedLandmarkTypeCore(HSTRING* return_returnValue);
}

@uuid("2c847c85-781e-49f7-9fef-b9e14d014707")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerOverrides5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetCultureCore(INT32* return_returnValue);
}

@uuid("f4b40e52-642f-4629-a54a-ea5d2349c448")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerProtected : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_PeerFromProvider(Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple provider, Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue);
	HRESULT abi_ProviderFromPeer(Windows.UI.Xaml.Automation.Peers.AutomationPeer peer, Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple* return_returnValue);
}

@uuid("562f7fb0-a331-4a9c-9dec-bfb7586fffff")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ListenerExists(Windows.UI.Xaml.Automation.Peers.AutomationEvents eventId, bool* return_returnValue);
}

@uuid("572c5714-7f87-4271-819f-6cf4c4d022d0")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.AutomationPeer")
interface IAutomationPeerStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GenerateRawElementProviderRuntimeId(Windows.UI.Xaml.Automation.Peers.RawElementProviderRuntimeId* return_returnValue);
}

@uuid("3fdb9f49-f4ab-4780-8644-03376299a175")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ButtonAutomationPeer")
interface IButtonAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Button owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ButtonAutomationPeer* return_instance);
}

@uuid("8a04091e-e6b2-4c60-a759-c13ca45165ed")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ButtonBaseAutomationPeer")
interface IButtonBaseAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Primitives.ButtonBase owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ButtonBaseAutomationPeer* return_instance);
}

@uuid("9b92ef48-85e9-4869-b175-8f7cf45a6d9f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.CaptureElementAutomationPeer")
interface ICaptureElementAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.CaptureElement owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.CaptureElementAutomationPeer* return_instance);
}

@uuid("b75c775d-eb8f-44ef-a27c-e26ac7de8333")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.CheckBoxAutomationPeer")
interface ICheckBoxAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.CheckBox owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.CheckBoxAutomationPeer* return_instance);
}

@uuid("098e5b0d-1b90-40b9-9be3-b23267eb13cf")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ComboBoxAutomationPeer")
interface IComboBoxAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ComboBox owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ComboBoxAutomationPeer* return_instance);
}

@uuid("134ac7fc-397a-403f-a6ec-1ce8beda15e5")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ComboBoxItemAutomationPeer")
interface IComboBoxItemAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ComboBoxItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ComboBoxItemAutomationPeer* return_instance);
}

@uuid("14a8d4f6-469a-41ba-9d93-44a1a55da872")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ComboBoxItemDataAutomationPeer")
interface IComboBoxItemDataAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithParentAndItem(IInspectable item, Windows.UI.Xaml.Automation.Peers.ComboBoxAutomationPeer parent, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ComboBoxItemDataAutomationPeer* return_instance);
}

@uuid("e5667d19-9157-4436-9f4d-7fb99174b48e")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.DatePickerAutomationPeer")
interface IDatePickerAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.DatePicker owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.DatePickerAutomationPeer* return_instance);
}

@uuid("4395ab0d-8d83-483c-88eb-e2617b0d293f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FlipViewAutomationPeer")
interface IFlipViewAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.FlipView owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.FlipViewAutomationPeer* return_instance);
}

@uuid("69109356-d0e5-4c10-a09c-ad0bf1b0cb01")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FlipViewItemAutomationPeer")
interface IFlipViewItemAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.FlipViewItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.FlipViewItemAutomationPeer* return_instance);
}

@uuid("3c864393-0aea-4e78-bc11-b775cac4114c")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FlipViewItemDataAutomationPeer")
interface IFlipViewItemDataAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithParentAndItem(IInspectable item, Windows.UI.Xaml.Automation.Peers.FlipViewAutomationPeer parent, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.FlipViewItemDataAutomationPeer* return_instance);
}

@uuid("f350155f-8924-44c0-ba44-653fe79f1efb")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FlyoutPresenterAutomationPeer")
interface IFlyoutPresenterAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.FlyoutPresenter owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.FlyoutPresenterAutomationPeer* return_instance);
}

@uuid("b90ad781-bfeb-4451-bd47-9f3a63ebd24a")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer")
interface IFrameworkElementAutomationPeer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Owner(Windows.UI.Xaml.UIElement* return_value);
}

@uuid("0db9b8bc-b812-48e3-af1f-dbc57600c325")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer")
interface IFrameworkElementAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.FrameworkElement owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer* return_instance);
}

@uuid("b9c0b997-2820-44a1-a5a8-9b801edc269e")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer")
interface IFrameworkElementAutomationPeerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromElement(Windows.UI.Xaml.UIElement element, Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue);
	HRESULT abi_CreatePeerForElement(Windows.UI.Xaml.UIElement element, Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue);
}

@uuid("8aca59dd-22a7-4800-894b-c1f485f38953")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.GridViewAutomationPeer")
interface IGridViewAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.GridView owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.GridViewAutomationPeer* return_instance);
}

@uuid("2c80b4d2-ffc2-4157-88dd-59cd92e39715")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.GridViewHeaderItemAutomationPeer")
interface IGridViewHeaderItemAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.GridViewHeaderItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.GridViewHeaderItemAutomationPeer* return_instance);
}

@uuid("fafec376-f22e-466d-913c-ae24ccdb160f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.GridViewItemAutomationPeer")
interface IGridViewItemAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.GridViewItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.GridViewItemAutomationPeer* return_instance);
}

@uuid("a65e7a88-770d-402c-996f-67506af2a4af")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.GridViewItemDataAutomationPeer")
interface IGridViewItemDataAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithParentAndItem(IInspectable item, Windows.UI.Xaml.Automation.Peers.GridViewAutomationPeer parent, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.GridViewItemDataAutomationPeer* return_instance);
}

@uuid("56a64567-f21c-4c90-b379-15a27c7f8409")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.GroupItemAutomationPeer")
interface IGroupItemAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.GroupItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.GroupItemAutomationPeer* return_instance);
}

@uuid("c762d43f-79dd-43ee-8777-8d08b39aa065")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.HubAutomationPeer")
interface IHubAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Hub owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.HubAutomationPeer* return_instance);
}

@uuid("c68e27e8-17ec-4329-91ae-2d0b2339d498")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.HubSectionAutomationPeer")
interface IHubSectionAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.HubSection owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.HubSectionAutomationPeer* return_instance);
}

@uuid("59bc1661-c182-49af-9526-44b88e628455")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.HyperlinkButtonAutomationPeer")
interface IHyperlinkButtonAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.HyperlinkButton owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.HyperlinkButtonAutomationPeer* return_instance);
}

@uuid("90304003-687d-47bf-b3a2-4babcad8ef50")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ImageAutomationPeer")
interface IImageAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Image owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ImageAutomationPeer* return_instance);
}

@uuid("953c34f6-3b31-47a7-b3bf-25d3ae99c317")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer")
interface IItemAutomationPeer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Item(IInspectable* return_value);
	HRESULT get_ItemsControlAutomationPeer(Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer* return_value);
}

@uuid("29065073-de3d-4d3f-97b4-4d6f9d53444d")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer")
interface IItemAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithParentAndItem(IInspectable item, Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer parent, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer* return_instance);
}

@uuid("c48d8917-95a8-47b8-a517-bf891a6c039b")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer")
interface IItemsControlAutomationPeer2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateItemAutomationPeer(IInspectable item, Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer* return_returnValue);
}

@uuid("4038a259-2e1a-49ca-a533-c64f181577e6")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer")
interface IItemsControlAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ItemsControl owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer* return_instance);
}

@uuid("361dc0e8-b56f-45e9-80fe-10a0fb0fe177")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer")
interface IItemsControlAutomationPeerOverrides2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OnCreateItemAutomationPeer(IInspectable item, Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer* return_returnValue);
}

@uuid("e2362185-7df6-49f7-8abc-4c33f1a3d46e")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListBoxAutomationPeer")
interface IListBoxAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ListBox owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListBoxAutomationPeer* return_instance);
}

@uuid("509f9dd8-b0aa-443f-a110-41209af44f1c")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListBoxItemAutomationPeer")
interface IListBoxItemAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ListBoxItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListBoxItemAutomationPeer* return_instance);
}

@uuid("d7924e16-bd8d-4662-a995-20ff9a056093")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListBoxItemDataAutomationPeer")
interface IListBoxItemDataAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithParentAndItem(IInspectable item, Windows.UI.Xaml.Automation.Peers.ListBoxAutomationPeer parent, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListBoxItemDataAutomationPeer* return_instance);
}

@uuid("65f39174-eaa2-4e44-8be6-4cca28cd0288")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewAutomationPeer")
interface IListViewAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ListView owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListViewAutomationPeer* return_instance);
}

@uuid("70d3c2be-8950-4647-9362-fd002f8ff82e")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewBaseAutomationPeer")
interface IListViewBaseAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ListViewBase owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListViewBaseAutomationPeer* return_instance);
}

@uuid("40ec995f-d631-4004-832e-6d8643e51561")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewBaseHeaderItemAutomationPeer")
interface IListViewBaseHeaderItemAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ListViewBaseHeaderItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListViewBaseHeaderItemAutomationPeer* return_instance);
}

@uuid("07668694-2ca5-4be4-a8b9-592d48f76087")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewHeaderItemAutomationPeer")
interface IListViewHeaderItemAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ListViewHeaderItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListViewHeaderItemAutomationPeer* return_instance);
}

@uuid("c47dfbc0-facc-4024-a73b-17ec4e662654")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewItemAutomationPeer")
interface IListViewItemAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ListViewItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListViewItemAutomationPeer* return_instance);
}

@uuid("d0db12bb-d715-4523-acc0-1e1072d8e32b")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ListViewItemDataAutomationPeer")
interface IListViewItemDataAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithParentAndItem(IInspectable item, Windows.UI.Xaml.Automation.Peers.ListViewBaseAutomationPeer parent, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ListViewItemDataAutomationPeer* return_instance);
}

@uuid("b2ad3b28-7575-4173-9bc7-80367a164ed2")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.MediaElementAutomationPeer")
interface IMediaElementAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.MediaElement owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.MediaElementAutomationPeer* return_instance);
}

@uuid("08848077-82af-4d19-b170-282a9e0e7f37")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.MediaPlayerElementAutomationPeer")
interface IMediaPlayerElementAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.MediaPlayerElement owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.MediaPlayerElementAutomationPeer* return_instance);
}

@uuid("f41cb003-e103-4ab0-812a-a08fbdb570ce")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.MediaTransportControlsAutomationPeer")
interface IMediaTransportControlsAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.MediaTransportControls owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.MediaTransportControlsAutomationPeer* return_instance);
}

@uuid("d08bfcb8-20d1-45d8-a2c2-2f130df714e0")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.MenuFlyoutItemAutomationPeer")
interface IMenuFlyoutItemAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.MenuFlyoutItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.MenuFlyoutItemAutomationPeer* return_instance);
}

@uuid("07b5172d-761d-452b-9e6d-fa2a8be0ad26")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.MenuFlyoutPresenterAutomationPeer")
interface IMenuFlyoutPresenterAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.MenuFlyoutPresenter owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.MenuFlyoutPresenterAutomationPeer* return_instance);
}

@uuid("ac3d7ede-dca4-481c-b520-4a9b3f3b179c")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.PasswordBoxAutomationPeer")
interface IPasswordBoxAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.PasswordBox owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.PasswordBoxAutomationPeer* return_instance);
}

@uuid("3efe0f94-0c91-4341-b9ac-1b56b4e6b84f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.PivotAutomationPeer")
interface IPivotAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Pivot owner, Windows.UI.Xaml.Automation.Peers.PivotAutomationPeer* return_instance);
}

@uuid("f2810471-183f-416b-b41a-1e5a958a91f4")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.PivotItemAutomationPeer")
interface IPivotItemAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.PivotItem owner, Windows.UI.Xaml.Automation.Peers.PivotItemAutomationPeer* return_instance);
}

@uuid("517a2480-d3b6-412e-82b6-94a0a84c13b0")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.PivotItemDataAutomationPeer")
interface IPivotItemDataAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithParentAndItem(IInspectable item, Windows.UI.Xaml.Automation.Peers.PivotAutomationPeer parent, Windows.UI.Xaml.Automation.Peers.PivotItemDataAutomationPeer* return_instance);
}

@uuid("364679ab-b80f-41b4-8eea-2f5251bc739c")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ProgressBarAutomationPeer")
interface IProgressBarAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ProgressBar owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ProgressBarAutomationPeer* return_instance);
}

@uuid("f3db204b-157e-40bc-9593-55bc5c71a4f6")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ProgressRingAutomationPeer")
interface IProgressRingAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ProgressRing owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ProgressRingAutomationPeer* return_instance);
}

@uuid("4940c4fd-3d88-49ca-8f31-924187af0bfe")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RadioButtonAutomationPeer")
interface IRadioButtonAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.RadioButton owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.RadioButtonAutomationPeer* return_instance);
}

@uuid("827c7601-3078-4479-95ea-91374ca06207")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RangeBaseAutomationPeer")
interface IRangeBaseAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Primitives.RangeBase owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.RangeBaseAutomationPeer* return_instance);
}

@uuid("6a6ff9d4-575e-4e60-bdd6-ec14419b4ff6")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RepeatButtonAutomationPeer")
interface IRepeatButtonAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Primitives.RepeatButton owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.RepeatButtonAutomationPeer* return_instance);
}

@uuid("752c8399-d296-4d87-9020-a4750e885b3c")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RichEditBoxAutomationPeer")
interface IRichEditBoxAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.RichEditBox owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.RichEditBoxAutomationPeer* return_instance);
}

@uuid("2038ae61-1389-467a-aed6-37334da9622b")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RichTextBlockAutomationPeer")
interface IRichTextBlockAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.RichTextBlock owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.RichTextBlockAutomationPeer* return_instance);
}

@uuid("bd5eb663-2c14-4665-adef-f2b033947beb")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.RichTextBlockOverflowAutomationPeer")
interface IRichTextBlockOverflowAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.RichTextBlockOverflow owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.RichTextBlockOverflowAutomationPeer* return_instance);
}

@uuid("e1302110-afeb-4595-8e3d-edc0844a2b21")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ScrollBarAutomationPeer")
interface IScrollBarAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Primitives.ScrollBar owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ScrollBarAutomationPeer* return_instance);
}

@uuid("270dff7d-d96d-48f9-a36a-c252aa9c4670")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ScrollViewerAutomationPeer")
interface IScrollViewerAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ScrollViewer owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ScrollViewerAutomationPeer* return_instance);
}

@uuid("b3c01430-7faa-41bb-8e91-7c761c5267f1")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SearchBoxAutomationPeer")
interface ISearchBoxAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.SearchBox owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.SearchBoxAutomationPeer* return_instance);
}

@uuid("7b525646-829b-4dcc-bd52-5a8d0399387a")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SelectorAutomationPeer")
interface ISelectorAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Primitives.Selector owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.SelectorAutomationPeer* return_instance);
}

@uuid("66d7edfb-786d-4362-a964-ebfb21776c30")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SelectorItemAutomationPeer")
interface ISelectorItemAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithParentAndItem(IInspectable item, Windows.UI.Xaml.Automation.Peers.SelectorAutomationPeer parent, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.SelectorItemAutomationPeer* return_instance);
}

@uuid("f518d44d-a493-4496-b077-9674c7f4c5fa")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SemanticZoomAutomationPeer")
interface ISemanticZoomAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.SemanticZoom owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.SemanticZoomAutomationPeer* return_instance);
}

@uuid("f94762bd-8a14-40e4-94a7-3f33c922e945")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SettingsFlyoutAutomationPeer")
interface ISettingsFlyoutAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.SettingsFlyout owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.SettingsFlyoutAutomationPeer* return_instance);
}

@uuid("971b8056-9a7a-4df9-95fa-6f5c04c91cac")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.SliderAutomationPeer")
interface ISliderAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Slider owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.SliderAutomationPeer* return_instance);
}

@uuid("76bf924b-7ca0-4b01-bc5c-a8cf4d3691de")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.TextBlockAutomationPeer")
interface ITextBlockAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.TextBlock owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.TextBlockAutomationPeer* return_instance);
}

@uuid("01f0c067-966b-4130-b872-469e42bd4a7f")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.TextBoxAutomationPeer")
interface ITextBoxAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.TextBox owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.TextBoxAutomationPeer* return_instance);
}

@uuid("970743ff-af41-4600-b55d-26d43df860e1")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ThumbAutomationPeer")
interface IThumbAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Primitives.Thumb owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ThumbAutomationPeer* return_instance);
}

@uuid("978f6671-47f8-40a7-9e21-68128b16b4fd")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.TimePickerAutomationPeer")
interface ITimePickerAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.TimePicker owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.TimePickerAutomationPeer* return_instance);
}

@uuid("c9218cc4-ad4b-4d03-a6a4-7d59e6360004")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ToggleButtonAutomationPeer")
interface IToggleButtonAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.Primitives.ToggleButton owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ToggleButtonAutomationPeer* return_instance);
}

@uuid("94364b77-8f6c-4837-aae3-94d010d8d162")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ToggleMenuFlyoutItemAutomationPeer")
interface IToggleMenuFlyoutItemAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ToggleMenuFlyoutItem owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ToggleMenuFlyoutItemAutomationPeer* return_instance);
}

@uuid("31f933e3-fef8-4419-9df5-d9ef7196ea34")
@WinrtFactory("Windows.UI.Xaml.Automation.Peers.ToggleSwitchAutomationPeer")
interface IToggleSwitchAutomationPeerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithOwner(Windows.UI.Xaml.Controls.ToggleSwitch owner, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Automation.Peers.ToggleSwitchAutomationPeer* return_instance);
}

interface AppBarAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface AppBarButtonAutomationPeer : Windows.UI.Xaml.Automation.Peers.ButtonAutomationPeer
{
}

interface AppBarToggleButtonAutomationPeer : Windows.UI.Xaml.Automation.Peers.ToggleButtonAutomationPeer
{
}

interface AutoSuggestBoxAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface AutomationPeer : Windows.UI.Xaml.DependencyObject
{
}

interface AutomationPeerAnnotation : Windows.UI.Xaml.DependencyObject
{
}

interface ButtonAutomationPeer : Windows.UI.Xaml.Automation.Peers.ButtonBaseAutomationPeer
{
}

interface ButtonBaseAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface CaptureElementAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface CheckBoxAutomationPeer : Windows.UI.Xaml.Automation.Peers.ToggleButtonAutomationPeer
{
}

interface ComboBoxAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorAutomationPeer
{
}

interface ComboBoxItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface ComboBoxItemDataAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorItemAutomationPeer
{
}

interface DatePickerAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface DatePickerFlyoutPresenterAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface FlipViewAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorAutomationPeer
{
}

interface FlipViewItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface FlipViewItemDataAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorItemAutomationPeer
{
}

interface FlyoutPresenterAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface FrameworkElementAutomationPeer : Windows.UI.Xaml.Automation.Peers.AutomationPeer
{
}

interface GridViewAutomationPeer : Windows.UI.Xaml.Automation.Peers.ListViewBaseAutomationPeer
{
}

interface GridViewHeaderItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.ListViewBaseHeaderItemAutomationPeer
{
}

interface GridViewItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface GridViewItemDataAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorItemAutomationPeer
{
}

interface GroupItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface HubAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface HubSectionAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface HyperlinkButtonAutomationPeer : Windows.UI.Xaml.Automation.Peers.ButtonBaseAutomationPeer
{
}

interface ImageAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface InkToolbarAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface ItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.AutomationPeer
{
}

interface ItemsControlAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface ListBoxAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorAutomationPeer
{
}

interface ListBoxItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface ListBoxItemDataAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorItemAutomationPeer
{
}

interface ListPickerFlyoutPresenterAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface ListViewAutomationPeer : Windows.UI.Xaml.Automation.Peers.ListViewBaseAutomationPeer
{
}

interface ListViewBaseAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorAutomationPeer
{
}

interface ListViewBaseHeaderItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface ListViewHeaderItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.ListViewBaseHeaderItemAutomationPeer
{
}

interface ListViewItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface ListViewItemDataAutomationPeer : Windows.UI.Xaml.Automation.Peers.SelectorItemAutomationPeer
{
}

interface LoopingSelectorAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface LoopingSelectorItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface LoopingSelectorItemDataAutomationPeer : Windows.UI.Xaml.Automation.Peers.AutomationPeer
{
}

interface MapControlAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface MediaElementAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface MediaPlayerElementAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface MediaTransportControlsAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface MenuFlyoutItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface MenuFlyoutPresenterAutomationPeer : Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer
{
}

interface PasswordBoxAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface PickerFlyoutPresenterAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface PivotAutomationPeer : Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer
{
}

interface PivotItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface PivotItemDataAutomationPeer : Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer
{
}

interface ProgressBarAutomationPeer : Windows.UI.Xaml.Automation.Peers.RangeBaseAutomationPeer
{
}

interface ProgressRingAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface RadioButtonAutomationPeer : Windows.UI.Xaml.Automation.Peers.ToggleButtonAutomationPeer
{
}

interface RangeBaseAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface RepeatButtonAutomationPeer : Windows.UI.Xaml.Automation.Peers.ButtonBaseAutomationPeer
{
}

interface RichEditBoxAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface RichTextBlockAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface RichTextBlockOverflowAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface ScrollBarAutomationPeer : Windows.UI.Xaml.Automation.Peers.RangeBaseAutomationPeer
{
}

interface ScrollViewerAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface SearchBoxAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface SelectorAutomationPeer : Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer
{
}

interface SelectorItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer
{
}

interface SemanticZoomAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface SettingsFlyoutAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface SliderAutomationPeer : Windows.UI.Xaml.Automation.Peers.RangeBaseAutomationPeer
{
}

interface TextBlockAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface TextBoxAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface ThumbAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface TimePickerAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface TimePickerFlyoutPresenterAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface ToggleButtonAutomationPeer : Windows.UI.Xaml.Automation.Peers.ButtonBaseAutomationPeer
{
}

interface ToggleMenuFlyoutItemAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
}

interface ToggleSwitchAutomationPeer : Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer
{
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