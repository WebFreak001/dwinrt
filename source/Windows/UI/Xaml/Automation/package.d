module Windows.UI.Xaml.Automation;

import dwinrt;

@uuid("d475a0c1-48b2-4e40-a6cf-3dc4b638c0de")
@WinrtFactory("Windows.UI.Xaml.Automation.AnnotationPatternIdentifiers")
interface IAnnotationPatternIdentifiers : IInspectable
{
}

@uuid("e0e3a35d-d167-46dc-95ab-330af61aebb5")
@WinrtFactory("Windows.UI.Xaml.Automation.AnnotationPatternIdentifiers")
interface IAnnotationPatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_AnnotationTypeIdProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_AnnotationTypeNameProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_AuthorProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_DateTimeProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_TargetProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("fb3c30ca-03d8-4618-91bf-e4d84f4af318")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationAnnotation")
interface IAutomationAnnotation : IInspectable
{
extern(Windows):
	HRESULT get_Type(Windows.UI.Xaml.Automation.AnnotationType* return_value);
	HRESULT set_Type(Windows.UI.Xaml.Automation.AnnotationType value);
	HRESULT get_Element(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_Element(Windows.UI.Xaml.UIElement value);
}

@uuid("4906fa52-ddc0-4e69-b76b-019d928d822f")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationAnnotation")
interface IAutomationAnnotationFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(Windows.UI.Xaml.Automation.AnnotationType type, Windows.UI.Xaml.Automation.AutomationAnnotation* return_instance);
	HRESULT abi_CreateWithElementParameter(Windows.UI.Xaml.Automation.AnnotationType type, Windows.UI.Xaml.UIElement element, Windows.UI.Xaml.Automation.AutomationAnnotation* return_instance);
}

@uuid("e503eab7-4ee5-48cb-b5b8-bbcd46c9d1da")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationAnnotation")
interface IAutomationAnnotationStatics : IInspectable
{
extern(Windows):
	HRESULT get_TypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ElementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e68a63cf-4345-4e2d-8a6a-49cce1fa2dcc")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationElementIdentifiers")
interface IAutomationElementIdentifiers : IInspectable
{
}

@uuid("4549399f-8340-4d67-b9bf-8c2ac6a0773a")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationElementIdentifiers")
interface IAutomationElementIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_AcceleratorKeyProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_AccessKeyProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_AutomationIdProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_BoundingRectangleProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_ClassNameProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_ClickablePointProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_ControlTypeProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_HasKeyboardFocusProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_HelpTextProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_IsContentElementProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_IsControlElementProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_IsEnabledProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_IsKeyboardFocusableProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_IsOffscreenProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_IsPasswordProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_IsRequiredForFormProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_ItemStatusProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_ItemTypeProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_LabeledByProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_LocalizedControlTypeProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_NameProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_OrientationProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_LiveSettingProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("b5cbb1e2-d55f-46a9-9eda-1a4742515dc3")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationElementIdentifiers")
interface IAutomationElementIdentifiersStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_ControlledPeersProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("0f5cbebd-b3eb-4083-adc7-0c2f39bb3543")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationElementIdentifiers")
interface IAutomationElementIdentifiersStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_PositionInSetProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_SizeOfSetProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_LevelProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_AnnotationsProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("5af51f75-5913-4d78-b330-a6f50b73ed9b")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationElementIdentifiers")
interface IAutomationElementIdentifiersStatics4 : IInspectable
{
extern(Windows):
	HRESULT get_LandmarkTypeProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_LocalizedLandmarkTypeProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("986a8206-de59-42f9-a1e7-62b8af9e756d")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationElementIdentifiers")
interface IAutomationElementIdentifiersStatics5 : IInspectable
{
extern(Windows):
	HRESULT get_IsPeripheralProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_IsDataValidForFormProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_FullDescriptionProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_DescribedByProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_FlowsToProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_FlowsFromProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("de52b00d-8328-4eae-8035-f8db99c8bac4")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationElementIdentifiers")
interface IAutomationElementIdentifiersStatics6 : IInspectable
{
extern(Windows):
	HRESULT get_CultureProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("68d7232c-e622-48e9-af0b-1ffa33cc5cba")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationProperties")
interface IAutomationProperties : IInspectable
{
}

@uuid("b618fd7b-32d0-4970-9c42-7c039ac7be78")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationProperties")
interface IAutomationPropertiesStatics : IInspectable
{
extern(Windows):
	HRESULT get_AcceleratorKeyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAcceleratorKey(Windows.UI.Xaml.DependencyObject element, HSTRING* return_value);
	HRESULT abi_SetAcceleratorKey(Windows.UI.Xaml.DependencyObject element, HSTRING value);
	HRESULT get_AccessKeyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAccessKey(Windows.UI.Xaml.DependencyObject element, HSTRING* return_value);
	HRESULT abi_SetAccessKey(Windows.UI.Xaml.DependencyObject element, HSTRING value);
	HRESULT get_AutomationIdProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAutomationId(Windows.UI.Xaml.DependencyObject element, HSTRING* return_value);
	HRESULT abi_SetAutomationId(Windows.UI.Xaml.DependencyObject element, HSTRING value);
	HRESULT get_HelpTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetHelpText(Windows.UI.Xaml.DependencyObject element, HSTRING* return_value);
	HRESULT abi_SetHelpText(Windows.UI.Xaml.DependencyObject element, HSTRING value);
	HRESULT get_IsRequiredForFormProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsRequiredForForm(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetIsRequiredForForm(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_ItemStatusProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetItemStatus(Windows.UI.Xaml.DependencyObject element, HSTRING* return_value);
	HRESULT abi_SetItemStatus(Windows.UI.Xaml.DependencyObject element, HSTRING value);
	HRESULT get_ItemTypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetItemType(Windows.UI.Xaml.DependencyObject element, HSTRING* return_value);
	HRESULT abi_SetItemType(Windows.UI.Xaml.DependencyObject element, HSTRING value);
	HRESULT get_LabeledByProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetLabeledBy(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.UIElement* return_value);
	HRESULT abi_SetLabeledBy(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.UIElement value);
	HRESULT get_NameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetName(Windows.UI.Xaml.DependencyObject element, HSTRING* return_value);
	HRESULT abi_SetName(Windows.UI.Xaml.DependencyObject element, HSTRING value);
	HRESULT get_LiveSettingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetLiveSetting(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Automation.Peers.AutomationLiveSetting* return_value);
	HRESULT abi_SetLiveSetting(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Automation.Peers.AutomationLiveSetting value);
}

@uuid("3976547f-7089-4801-8f1d-aab78090d1a0")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationProperties")
interface IAutomationPropertiesStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_AccessibilityViewProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAccessibilityView(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Automation.Peers.AccessibilityView* return_value);
	HRESULT abi_SetAccessibilityView(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Automation.Peers.AccessibilityView value);
	HRESULT get_ControlledPeersProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetControlledPeers(Windows.UI.Xaml.DependencyObject element, Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.UIElement)* return_value);
}

@uuid("7b75d735-5cb1-42ad-9b57-5faba8c1867f")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationProperties")
interface IAutomationPropertiesStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_PositionInSetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetPositionInSet(Windows.UI.Xaml.DependencyObject element, INT32* return_value);
	HRESULT abi_SetPositionInSet(Windows.UI.Xaml.DependencyObject element, INT32 value);
	HRESULT get_SizeOfSetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetSizeOfSet(Windows.UI.Xaml.DependencyObject element, INT32* return_value);
	HRESULT abi_SetSizeOfSet(Windows.UI.Xaml.DependencyObject element, INT32 value);
	HRESULT get_LevelProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetLevel(Windows.UI.Xaml.DependencyObject element, INT32* return_value);
	HRESULT abi_SetLevel(Windows.UI.Xaml.DependencyObject element, INT32 value);
	HRESULT get_AnnotationsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAnnotations(Windows.UI.Xaml.DependencyObject element, Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Automation.AutomationAnnotation)* return_value);
}

@uuid("f7d62655-311a-4b7c-a131-524e89cd3cf9")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationProperties")
interface IAutomationPropertiesStatics4 : IInspectable
{
extern(Windows):
	HRESULT get_LandmarkTypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetLandmarkType(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Automation.Peers.AutomationLandmarkType* return_value);
	HRESULT abi_SetLandmarkType(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Automation.Peers.AutomationLandmarkType value);
	HRESULT get_LocalizedLandmarkTypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetLocalizedLandmarkType(Windows.UI.Xaml.DependencyObject element, HSTRING* return_value);
	HRESULT abi_SetLocalizedLandmarkType(Windows.UI.Xaml.DependencyObject element, HSTRING value);
}

@uuid("0be35b26-c8f9-41a2-b4db-e6a7a32b0c34")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationProperties")
interface IAutomationPropertiesStatics5 : IInspectable
{
extern(Windows):
	HRESULT get_IsPeripheralProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsPeripheral(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetIsPeripheral(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_IsDataValidForFormProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsDataValidForForm(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetIsDataValidForForm(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_FullDescriptionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetFullDescription(Windows.UI.Xaml.DependencyObject element, HSTRING* return_value);
	HRESULT abi_SetFullDescription(Windows.UI.Xaml.DependencyObject element, HSTRING value);
	HRESULT get_LocalizedControlTypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetLocalizedControlType(Windows.UI.Xaml.DependencyObject element, HSTRING* return_value);
	HRESULT abi_SetLocalizedControlType(Windows.UI.Xaml.DependencyObject element, HSTRING value);
	HRESULT get_DescribedByProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetDescribedBy(Windows.UI.Xaml.DependencyObject element, Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject)* return_value);
	HRESULT get_FlowsToProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetFlowsTo(Windows.UI.Xaml.DependencyObject element, Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject)* return_value);
	HRESULT get_FlowsFromProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetFlowsFrom(Windows.UI.Xaml.DependencyObject element, Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject)* return_value);
}

@uuid("c61e030f-eb49-4e5d-b012-4c1c96c3901b")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationProperties")
interface IAutomationPropertiesStatics6 : IInspectable
{
extern(Windows):
	HRESULT get_CultureProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetCulture(Windows.UI.Xaml.DependencyObject element, INT32* return_value);
	HRESULT abi_SetCulture(Windows.UI.Xaml.DependencyObject element, INT32 value);
}

@uuid("b627195b-3227-4e16-9534-ddece30ddb46")
@WinrtFactory("Windows.UI.Xaml.Automation.AutomationProperty")
interface IAutomationProperty : IInspectable
{
}

@uuid("ccd7f4e6-e4f9-47ff-bde7-378b11f78e09")
@WinrtFactory("Windows.UI.Xaml.Automation.DockPatternIdentifiers")
interface IDockPatternIdentifiers : IInspectable
{
}

@uuid("2b87245c-ed80-4fe5-8eb4-708a39c841e5")
@WinrtFactory("Windows.UI.Xaml.Automation.DockPatternIdentifiers")
interface IDockPatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_DockPositionProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("6266e985-4d07-4e80-82eb-8f96690a1a0c")
@WinrtFactory("Windows.UI.Xaml.Automation.DragPatternIdentifiers")
interface IDragPatternIdentifiers : IInspectable
{
}

@uuid("2a05379d-1755-4082-9d90-46f1411d7986")
@WinrtFactory("Windows.UI.Xaml.Automation.DragPatternIdentifiers")
interface IDragPatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_DropEffectProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_DropEffectsProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_GrabbedItemsProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_IsGrabbedProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("11865133-a6fe-4634-bd18-0ef612b7b208")
@WinrtFactory("Windows.UI.Xaml.Automation.DropTargetPatternIdentifiers")
interface IDropTargetPatternIdentifiers : IInspectable
{
}

@uuid("1b693304-89fb-4b0a-9452-ca2c66aaf9f3")
@WinrtFactory("Windows.UI.Xaml.Automation.DropTargetPatternIdentifiers")
interface IDropTargetPatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_DropTargetEffectProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_DropTargetEffectsProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("b006bac0-751b-4d55-92cb-613ec1bdf5d0")
@WinrtFactory("Windows.UI.Xaml.Automation.ExpandCollapsePatternIdentifiers")
interface IExpandCollapsePatternIdentifiers : IInspectable
{
}

@uuid("d7816fd4-6ee0-4f38-8e14-56ef21adacfd")
@WinrtFactory("Windows.UI.Xaml.Automation.ExpandCollapsePatternIdentifiers")
interface IExpandCollapsePatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_ExpandCollapseStateProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("757744f1-3285-4fb1-803b-2545bd431599")
@WinrtFactory("Windows.UI.Xaml.Automation.GridItemPatternIdentifiers")
interface IGridItemPatternIdentifiers : IInspectable
{
}

@uuid("217d2402-5e46-4d61-8794-b8ee8e774714")
@WinrtFactory("Windows.UI.Xaml.Automation.GridItemPatternIdentifiers")
interface IGridItemPatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_ColumnProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_ColumnSpanProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_ContainingGridProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_RowProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_RowSpanProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("c902980f-96c5-450c-9044-7e52c24f9e94")
@WinrtFactory("Windows.UI.Xaml.Automation.GridPatternIdentifiers")
interface IGridPatternIdentifiers : IInspectable
{
}

@uuid("7bc452f3-a181-4137-8de9-1f9b1a8320ed")
@WinrtFactory("Windows.UI.Xaml.Automation.GridPatternIdentifiers")
interface IGridPatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_ColumnCountProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_RowCountProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("5d5cd3b8-1e12-488b-b0ea-5e6cb89816e1")
@WinrtFactory("Windows.UI.Xaml.Automation.MultipleViewPatternIdentifiers")
interface IMultipleViewPatternIdentifiers : IInspectable
{
}

@uuid("a9cfa66f-6b84-4d71-9e48-d764d3bcda8e")
@WinrtFactory("Windows.UI.Xaml.Automation.MultipleViewPatternIdentifiers")
interface IMultipleViewPatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_CurrentViewProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_SupportedViewsProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("f8760f45-33c9-467d-bc9e-d1515263ace1")
@WinrtFactory("Windows.UI.Xaml.Automation.RangeValuePatternIdentifiers")
interface IRangeValuePatternIdentifiers : IInspectable
{
}

@uuid("ce23450f-1c27-457f-b815-7a5e46863dbb")
@WinrtFactory("Windows.UI.Xaml.Automation.RangeValuePatternIdentifiers")
interface IRangeValuePatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsReadOnlyProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_LargeChangeProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_MaximumProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_MinimumProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_SmallChangeProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_ValueProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("366b1003-425c-4951-ae83-d521e73bc696")
@WinrtFactory("Windows.UI.Xaml.Automation.ScrollPatternIdentifiers")
interface IScrollPatternIdentifiers : IInspectable
{
}

@uuid("4bf8e0a1-fb7f-4fa4-83b3-cfaeb103a685")
@WinrtFactory("Windows.UI.Xaml.Automation.ScrollPatternIdentifiers")
interface IScrollPatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_HorizontallyScrollableProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_HorizontalScrollPercentProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_HorizontalViewSizeProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_NoScroll(double* return_value);
	HRESULT get_VerticallyScrollableProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_VerticalScrollPercentProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_VerticalViewSizeProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("2dafa41a-3ef8-4bb5-a02b-3ee1b2274740")
@WinrtFactory("Windows.UI.Xaml.Automation.SelectionItemPatternIdentifiers")
interface ISelectionItemPatternIdentifiers : IInspectable
{
}

@uuid("a918d163-487e-4e3e-9f86-7b44acbe27ce")
@WinrtFactory("Windows.UI.Xaml.Automation.SelectionItemPatternIdentifiers")
interface ISelectionItemPatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsSelectedProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_SelectionContainerProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("4aa66fb0-e3f7-475f-b78d-f8a83bb730c4")
@WinrtFactory("Windows.UI.Xaml.Automation.SelectionPatternIdentifiers")
interface ISelectionPatternIdentifiers : IInspectable
{
}

@uuid("93035b4c-6b50-40a1-b23f-5c78ddbd479a")
@WinrtFactory("Windows.UI.Xaml.Automation.SelectionPatternIdentifiers")
interface ISelectionPatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_CanSelectMultipleProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_IsSelectionRequiredProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_SelectionProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("84347e19-ca4b-46a2-a794-c87928a3b1ab")
@WinrtFactory("Windows.UI.Xaml.Automation.SpreadsheetItemPatternIdentifiers")
interface ISpreadsheetItemPatternIdentifiers : IInspectable
{
}

@uuid("43658779-5380-4f12-b468-b4f368ad4499")
@WinrtFactory("Windows.UI.Xaml.Automation.SpreadsheetItemPatternIdentifiers")
interface ISpreadsheetItemPatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_FormulaProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("b0e4e201-e89d-436b-8287-4f7903466879")
@WinrtFactory("Windows.UI.Xaml.Automation.StylesPatternIdentifiers")
interface IStylesPatternIdentifiers : IInspectable
{
}

@uuid("528a457a-bc3c-4d48-94af-1f68703ca296")
@WinrtFactory("Windows.UI.Xaml.Automation.StylesPatternIdentifiers")
interface IStylesPatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_ExtendedPropertiesProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_FillColorProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_FillPatternColorProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_FillPatternStyleProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_ShapeProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_StyleIdProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_StyleNameProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("c326e5ad-8077-4c64-98e4-e83bcf1b4389")
@WinrtFactory("Windows.UI.Xaml.Automation.TableItemPatternIdentifiers")
interface ITableItemPatternIdentifiers : IInspectable
{
}

@uuid("24c4b923-e9a2-4de9-b2a4-a8b22d0be362")
@WinrtFactory("Windows.UI.Xaml.Automation.TableItemPatternIdentifiers")
interface ITableItemPatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_ColumnHeaderItemsProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_RowHeaderItemsProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("38d104fe-0d0c-412a-bf8d-51ede683baf5")
@WinrtFactory("Windows.UI.Xaml.Automation.TablePatternIdentifiers")
interface ITablePatternIdentifiers : IInspectable
{
}

@uuid("75073d25-32c9-4903-aecf-dc3504cbd244")
@WinrtFactory("Windows.UI.Xaml.Automation.TablePatternIdentifiers")
interface ITablePatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_ColumnHeadersProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_RowHeadersProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_RowOrColumnMajorProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("7e191f6b-34d4-4ae7-83ac-29f88882d985")
@WinrtFactory("Windows.UI.Xaml.Automation.TogglePatternIdentifiers")
interface ITogglePatternIdentifiers : IInspectable
{
}

@uuid("c7f75544-14a5-4f2f-92fc-760524de06ea")
@WinrtFactory("Windows.UI.Xaml.Automation.TogglePatternIdentifiers")
interface ITogglePatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_ToggleStateProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("08aaa03d-dea7-402f-8097-9a2783d60e5d")
@WinrtFactory("Windows.UI.Xaml.Automation.TransformPattern2Identifiers")
interface ITransformPattern2Identifiers : IInspectable
{
}

@uuid("78963644-11f0-467c-a72b-5dac41c1f6fe")
@WinrtFactory("Windows.UI.Xaml.Automation.TransformPattern2Identifiers")
interface ITransformPattern2IdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_CanZoomProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_ZoomLevelProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_MaxZoomProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_MinZoomProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("e4115b8c-c3c8-4a37-b994-2709a7811665")
@WinrtFactory("Windows.UI.Xaml.Automation.TransformPatternIdentifiers")
interface ITransformPatternIdentifiers : IInspectable
{
}

@uuid("4570edab-d705-40c4-a1dc-e9acfcef85f6")
@WinrtFactory("Windows.UI.Xaml.Automation.TransformPatternIdentifiers")
interface ITransformPatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_CanMoveProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_CanResizeProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_CanRotateProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("425bf64c-5333-4e41-b470-2bad14ecd085")
@WinrtFactory("Windows.UI.Xaml.Automation.ValuePatternIdentifiers")
interface IValuePatternIdentifiers : IInspectable
{
}

@uuid("c247e8f7-adcc-440f-b123-33788a40525a")
@WinrtFactory("Windows.UI.Xaml.Automation.ValuePatternIdentifiers")
interface IValuePatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsReadOnlyProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_ValueProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

@uuid("39f78bb4-7032-41e2-b79e-27b74a8628de")
@WinrtFactory("Windows.UI.Xaml.Automation.WindowPatternIdentifiers")
interface IWindowPatternIdentifiers : IInspectable
{
}

@uuid("07d0ad06-6302-4d29-878b-19da03fc228d")
@WinrtFactory("Windows.UI.Xaml.Automation.WindowPatternIdentifiers")
interface IWindowPatternIdentifiersStatics : IInspectable
{
extern(Windows):
	HRESULT get_CanMaximizeProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_CanMinimizeProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_IsModalProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_IsTopmostProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_WindowInteractionStateProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
	HRESULT get_WindowVisualStateProperty(Windows.UI.Xaml.Automation.AutomationProperty* return_value);
}

interface AnnotationPatternIdentifiers : Windows.UI.Xaml.Automation.IAnnotationPatternIdentifiers
{
}

interface AutomationAnnotation : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Automation.IAutomationAnnotation
{
}

interface AutomationElementIdentifiers : Windows.UI.Xaml.Automation.IAutomationElementIdentifiers
{
}

interface AutomationProperties : Windows.UI.Xaml.Automation.IAutomationProperties
{
}

interface AutomationProperty : Windows.UI.Xaml.Automation.IAutomationProperty
{
}

interface DockPatternIdentifiers : Windows.UI.Xaml.Automation.IDockPatternIdentifiers
{
}

interface DragPatternIdentifiers : Windows.UI.Xaml.Automation.IDragPatternIdentifiers
{
}

interface DropTargetPatternIdentifiers : Windows.UI.Xaml.Automation.IDropTargetPatternIdentifiers
{
}

interface ExpandCollapsePatternIdentifiers : Windows.UI.Xaml.Automation.IExpandCollapsePatternIdentifiers
{
}

interface GridItemPatternIdentifiers : Windows.UI.Xaml.Automation.IGridItemPatternIdentifiers
{
}

interface GridPatternIdentifiers : Windows.UI.Xaml.Automation.IGridPatternIdentifiers
{
}

interface MultipleViewPatternIdentifiers : Windows.UI.Xaml.Automation.IMultipleViewPatternIdentifiers
{
}

interface RangeValuePatternIdentifiers : Windows.UI.Xaml.Automation.IRangeValuePatternIdentifiers
{
}

interface ScrollPatternIdentifiers : Windows.UI.Xaml.Automation.IScrollPatternIdentifiers
{
}

interface SelectionItemPatternIdentifiers : Windows.UI.Xaml.Automation.ISelectionItemPatternIdentifiers
{
}

interface SelectionPatternIdentifiers : Windows.UI.Xaml.Automation.ISelectionPatternIdentifiers
{
}

interface SpreadsheetItemPatternIdentifiers : Windows.UI.Xaml.Automation.ISpreadsheetItemPatternIdentifiers
{
}

interface StylesPatternIdentifiers : Windows.UI.Xaml.Automation.IStylesPatternIdentifiers
{
}

interface TableItemPatternIdentifiers : Windows.UI.Xaml.Automation.ITableItemPatternIdentifiers
{
}

interface TablePatternIdentifiers : Windows.UI.Xaml.Automation.ITablePatternIdentifiers
{
}

interface TogglePatternIdentifiers : Windows.UI.Xaml.Automation.ITogglePatternIdentifiers
{
}

interface TransformPattern2Identifiers : Windows.UI.Xaml.Automation.ITransformPattern2Identifiers
{
}

interface TransformPatternIdentifiers : Windows.UI.Xaml.Automation.ITransformPatternIdentifiers
{
}

interface ValuePatternIdentifiers : Windows.UI.Xaml.Automation.IValuePatternIdentifiers
{
}

interface WindowPatternIdentifiers : Windows.UI.Xaml.Automation.IWindowPatternIdentifiers
{
}

enum AnnotationType
{
	Unknown = 60000,
	SpellingError = 60001,
	GrammarError = 60002,
	Comment = 60003,
	FormulaError = 60004,
	TrackChanges = 60005,
	Header = 60006,
	Footer = 60007,
	Highlighted = 60008,
	Endnote = 60009,
	Footnote = 60010,
	InsertionChange = 60011,
	DeletionChange = 60012,
	MoveChange = 60013,
	FormatChange = 60014,
	UnsyncedChange = 60015,
	EditingLockedChange = 60016,
	ExternalChange = 60017,
	ConflictingChange = 60018,
	Author = 60019,
	AdvancedProofingIssue = 60020,
	DataValidationError = 60021,
	CircularReferenceError = 60022
}

enum AutomationActiveEnd
{
	None = 0,
	Start = 1,
	End = 2
}

enum AutomationAnimationStyle
{
	None = 0,
	LasVegasLights = 1,
	BlinkingBackground = 2,
	SparkleText = 3,
	MarchingBlackAnts = 4,
	MarchingRedAnts = 5,
	Shimmer = 6,
	Other = 7
}

enum AutomationBulletStyle
{
	None = 0,
	HollowRoundBullet = 1,
	FilledRoundBullet = 2,
	HollowSquareBullet = 3,
	FilledSquareBullet = 4,
	DashBullet = 5,
	Other = 6
}

enum AutomationCaretBidiMode
{
	LTR = 0,
	RTL = 1
}

enum AutomationCaretPosition
{
	Unknown = 0,
	EndOfLine = 1,
	BeginningOfLine = 2
}

enum AutomationFlowDirections
{
	Default = 0,
	RightToLeft = 1,
	BottomToTop = 2,
	Vertical = 3
}

enum AutomationOutlineStyles
{
	None = 0,
	Outline = 1,
	Shadow = 2,
	Engraved = 3,
	Embossed = 4
}

enum AutomationStyleId
{
	Heading1 = 70001,
	Heading2 = 70002,
	Heading3 = 70003,
	Heading4 = 70004,
	Heading5 = 70005,
	Heading6 = 70006,
	Heading7 = 70007,
	Heading8 = 70008,
	Heading9 = 70009,
	Title = 70010,
	Subtitle = 70011,
	Normal = 70012,
	Emphasis = 70013,
	Quote = 70014,
	BulletedList = 70015
}

enum AutomationTextDecorationLineStyle
{
	None = 0,
	Single = 1,
	WordsOnly = 2,
	Double = 3,
	Dot = 4,
	Dash = 5,
	DashDot = 6,
	DashDotDot = 7,
	Wavy = 8,
	ThickSingle = 9,
	DoubleWavy = 10,
	ThickWavy = 11,
	LongDash = 12,
	ThickDash = 13,
	ThickDashDot = 14,
	ThickDashDotDot = 15,
	ThickDot = 16,
	ThickLongDash = 17,
	Other = 18
}

enum AutomationTextEditChangeType
{
	None = 0,
	AutoCorrect = 1,
	Composition = 2,
	CompositionFinalized = 3
}

enum DockPosition
{
	Top = 0,
	Left = 1,
	Bottom = 2,
	Right = 3,
	Fill = 4,
	None = 5
}

enum ExpandCollapseState
{
	Collapsed = 0,
	Expanded = 1,
	PartiallyExpanded = 2,
	LeafNode = 3
}

enum RowOrColumnMajor
{
	RowMajor = 0,
	ColumnMajor = 1,
	Indeterminate = 2
}

enum ScrollAmount
{
	LargeDecrement = 0,
	SmallDecrement = 1,
	NoAmount = 2,
	LargeIncrement = 3,
	SmallIncrement = 4
}

enum SupportedTextSelection
{
	None = 0,
	Single = 1,
	Multiple = 2
}

enum SynchronizedInputType
{
	KeyUp = 1,
	KeyDown = 2,
	LeftMouseUp = 4,
	LeftMouseDown = 8,
	RightMouseUp = 16,
	RightMouseDown = 32
}

enum ToggleState
{
	Off = 0,
	On = 1,
	Indeterminate = 2
}

enum WindowInteractionState
{
	Running = 0,
	Closing = 1,
	ReadyForUserInteraction = 2,
	BlockedByModalWindow = 3,
	NotResponding = 4
}

enum WindowVisualState
{
	Normal = 0,
	Maximized = 1,
	Minimized = 2
}

enum ZoomUnit
{
	NoAmount = 0,
	LargeDecrement = 1,
	SmallDecrement = 2,
	LargeIncrement = 3,
	SmallIncrement = 4
}