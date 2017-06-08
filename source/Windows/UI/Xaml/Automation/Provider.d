module Windows.UI.Xaml.Automation.Provider;

import dwinrt;

@uuid("95ba1417-4437-451b-9461-050a49b59d06")
interface IAnnotationProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AnnotationTypeId(INT32* return_value);
	HRESULT get_AnnotationTypeName(HSTRING* return_value);
	HRESULT get_Author(HSTRING* return_value);
	HRESULT get_DateTime(HSTRING* return_value);
	HRESULT get_Target(Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple* return_value);
}

@uuid("2bd8a6d0-2fa3-4717-b28c-4917ce54928d")
interface ICustomNavigationProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_NavigateCustom(Windows.UI.Xaml.Automation.Peers.AutomationNavigationDirection direction, IInspectable* return_returnValue);
}

@uuid("48c243f8-78b1-44a0-ac5f-750757bcde3c")
interface IDockProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DockPosition(Windows.UI.Xaml.Automation.DockPosition* return_value);
	HRESULT abi_SetDockPosition(Windows.UI.Xaml.Automation.DockPosition dockPosition);
}

@uuid("2e7786a9-7ffc-4f57-b965-1ef1f373f546")
interface IDragProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsGrabbed(bool* return_value);
	HRESULT get_DropEffect(HSTRING* return_value);
	HRESULT get_DropEffects(UINT32* out___valueSize, HSTRING** return_value);
	HRESULT abi_GetGrabbedItems(UINT32* out___returnValueSize, Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple** return_returnValue);
}

@uuid("7a245bdd-b458-4fe0-98c8-aac89df56d61")
interface IDropTargetProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DropEffect(HSTRING* return_value);
	HRESULT get_DropEffects(UINT32* out___valueSize, HSTRING** return_value);
}

@uuid("49ac8399-d626-4543-94b9-a6d9a9593af6")
interface IExpandCollapseProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ExpandCollapseState(Windows.UI.Xaml.Automation.ExpandCollapseState* return_value);
	HRESULT abi_Collapse();
	HRESULT abi_Expand();
}

@uuid("fff3683c-7407-45bb-a936-df3ed6d3837d")
interface IGridItemProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Column(INT32* return_value);
	HRESULT get_ColumnSpan(INT32* return_value);
	HRESULT get_ContainingGrid(Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple* return_value);
	HRESULT get_Row(INT32* return_value);
	HRESULT get_RowSpan(INT32* return_value);
}

@uuid("8b62b7a0-932c-4490-9a13-02fdb39a8f5b")
interface IGridProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ColumnCount(INT32* return_value);
	HRESULT get_RowCount(INT32* return_value);
	HRESULT abi_GetItem(INT32 row, INT32 column, Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple* return_returnValue);
}

@uuid("ec752224-9b77-4720-bb21-4ac89fdb1afd")
@WinrtFactory("Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple")
interface IIRawElementProviderSimple : IInspectable
{
}

@uuid("f7d1a187-b13c-4540-b09e-6778e2dc9ba5")
interface IInvokeProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Invoke();
}

@uuid("ef5cd845-e1d4-40f4-bad5-c7fad44a703e")
interface IItemContainerProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FindItemByProperty(Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple startAfter, Windows.UI.Xaml.Automation.AutomationProperty automationProperty, IInspectable value, Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple* return_returnValue);
}

@uuid("d014e196-0e50-4843-a5d2-c22897c8845a")
interface IMultipleViewProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CurrentView(INT32* return_value);
	HRESULT abi_GetSupportedViews(UINT32* out___returnValueSize, INT32** return_returnValue);
	HRESULT abi_GetViewName(INT32 viewId, HSTRING* return_returnValue);
	HRESULT abi_SetCurrentView(INT32 viewId);
}

@uuid("c3ca36b9-0793-4ed0-bbf4-9ff4e0f98f80")
interface IObjectModelProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetUnderlyingObjectModel(IInspectable* return_returnValue);
}

@uuid("838a34a8-7d5f-4079-af03-c3d015e93413")
interface IRangeValueProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsReadOnly(bool* return_value);
	HRESULT get_LargeChange(double* return_value);
	HRESULT get_Maximum(double* return_value);
	HRESULT get_Minimum(double* return_value);
	HRESULT get_SmallChange(double* return_value);
	HRESULT get_Value(double* return_value);
	HRESULT abi_SetValue(double value);
}

@uuid("9a3ec090-5d2c-4e42-9ee6-9d58db100b55")
interface IScrollItemProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ScrollIntoView();
}

@uuid("374bf581-7716-4bbc-82eb-d997006ea999")
interface IScrollProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HorizontallyScrollable(bool* return_value);
	HRESULT get_HorizontalScrollPercent(double* return_value);
	HRESULT get_HorizontalViewSize(double* return_value);
	HRESULT get_VerticallyScrollable(bool* return_value);
	HRESULT get_VerticalScrollPercent(double* return_value);
	HRESULT get_VerticalViewSize(double* return_value);
	HRESULT abi_Scroll(Windows.UI.Xaml.Automation.ScrollAmount horizontalAmount, Windows.UI.Xaml.Automation.ScrollAmount verticalAmount);
	HRESULT abi_SetScrollPercent(double horizontalPercent, double verticalPercent);
}

@uuid("6a4977c1-830d-42d2-bf62-042ebddecc19")
interface ISelectionItemProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsSelected(bool* return_value);
	HRESULT get_SelectionContainer(Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple* return_value);
	HRESULT abi_AddToSelection();
	HRESULT abi_RemoveFromSelection();
	HRESULT abi_Select();
}

@uuid("1f018fca-b944-4395-8de1-88f674af51d3")
interface ISelectionProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CanSelectMultiple(bool* return_value);
	HRESULT get_IsSelectionRequired(bool* return_value);
	HRESULT abi_GetSelection(UINT32* out___returnValueSize, Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple** return_returnValue);
}

@uuid("ebde8f92-6015-4826-b719-47521a81c67e")
interface ISpreadsheetItemProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Formula(HSTRING* return_value);
	HRESULT abi_GetAnnotationObjects(UINT32* out___returnValueSize, Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple** return_returnValue);
	HRESULT abi_GetAnnotationTypes(UINT32* out___returnValueSize, Windows.UI.Xaml.Automation.AnnotationType** return_returnValue);
}

@uuid("15359093-bd99-4cfd-9f07-3b14b315e23d")
interface ISpreadsheetProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetItemByName(HSTRING name, Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple* return_returnValue);
}

@uuid("1a5b7a17-7c01-4bec-9cd4-2dfa7dc246cd")
interface IStylesProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ExtendedProperties(HSTRING* return_value);
	HRESULT get_FillColor(Windows.UI.Color* return_value);
	HRESULT get_FillPatternColor(Windows.UI.Color* return_value);
	HRESULT get_FillPatternStyle(HSTRING* return_value);
	HRESULT get_Shape(HSTRING* return_value);
	HRESULT get_StyleId(INT32* return_value);
	HRESULT get_StyleName(HSTRING* return_value);
}

@uuid("3d60cecb-da54-4aa3-b915-e3244427d4ac")
interface ISynchronizedInputProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Cancel();
	HRESULT abi_StartListening(Windows.UI.Xaml.Automation.SynchronizedInputType inputType);
}

@uuid("3b2c49cd-1de2-4ee2-a3e1-fb553559d15d")
interface ITableItemProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetColumnHeaderItems(UINT32* out___returnValueSize, Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple** return_returnValue);
	HRESULT abi_GetRowHeaderItems(UINT32* out___returnValueSize, Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple** return_returnValue);
}

@uuid("7a8ed399-6824-4595-bab3-464bc9a04417")
interface ITableProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RowOrColumnMajor(Windows.UI.Xaml.Automation.RowOrColumnMajor* return_value);
	HRESULT abi_GetColumnHeaders(UINT32* out___returnValueSize, Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple** return_returnValue);
	HRESULT abi_GetRowHeaders(UINT32* out___returnValueSize, Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple** return_returnValue);
}

@uuid("1133c336-a89b-4130-9be6-55e33334f557")
interface ITextChildProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TextContainer(Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple* return_value);
	HRESULT get_TextRange(Windows.UI.Xaml.Automation.Provider.ITextRangeProvider* return_value);
}

@uuid("ea3605b4-3a05-400e-b5f9-4e91b40f6176")
interface ITextEditProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetActiveComposition(Windows.UI.Xaml.Automation.Provider.ITextRangeProvider* return_returnValue);
	HRESULT abi_GetConversionTarget(Windows.UI.Xaml.Automation.Provider.ITextRangeProvider* return_returnValue);
}

@uuid("db5bbc9f-4807-4f2a-8678-1b13f3c60e22")
interface ITextProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DocumentRange(Windows.UI.Xaml.Automation.Provider.ITextRangeProvider* return_value);
	HRESULT get_SupportedTextSelection(Windows.UI.Xaml.Automation.SupportedTextSelection* return_value);
	HRESULT abi_GetSelection(UINT32* out___returnValueSize, Windows.UI.Xaml.Automation.Provider.ITextRangeProvider** return_returnValue);
	HRESULT abi_GetVisibleRanges(UINT32* out___returnValueSize, Windows.UI.Xaml.Automation.Provider.ITextRangeProvider** return_returnValue);
	HRESULT abi_RangeFromChild(Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple childElement, Windows.UI.Xaml.Automation.Provider.ITextRangeProvider* return_returnValue);
	HRESULT abi_RangeFromPoint(Windows.Foundation.Point screenLocation, Windows.UI.Xaml.Automation.Provider.ITextRangeProvider* return_returnValue);
}

@uuid("df1d48bc-0487-4e7f-9d5e-f09e77e41246")
interface ITextProvider2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RangeFromAnnotation(Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple annotationElement, Windows.UI.Xaml.Automation.Provider.ITextRangeProvider* return_returnValue);
	HRESULT abi_GetCaretRange(bool* out_isActive, Windows.UI.Xaml.Automation.Provider.ITextRangeProvider* return_returnValue);
}

@uuid("0274688d-06e9-4f66-9446-28a5be98fbd0")
interface ITextRangeProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Clone(Windows.UI.Xaml.Automation.Provider.ITextRangeProvider* return_returnValue);
	HRESULT abi_Compare(Windows.UI.Xaml.Automation.Provider.ITextRangeProvider textRangeProvider, bool* return_returnValue);
	HRESULT abi_CompareEndpoints(Windows.UI.Xaml.Automation.Text.TextPatternRangeEndpoint endpoint, Windows.UI.Xaml.Automation.Provider.ITextRangeProvider textRangeProvider, Windows.UI.Xaml.Automation.Text.TextPatternRangeEndpoint targetEndpoint, INT32* return_returnValue);
	HRESULT abi_ExpandToEnclosingUnit(Windows.UI.Xaml.Automation.Text.TextUnit unit);
	HRESULT abi_FindAttribute(INT32 attributeId, IInspectable value, bool backward, Windows.UI.Xaml.Automation.Provider.ITextRangeProvider* return_returnValue);
	HRESULT abi_FindText(HSTRING text, bool backward, bool ignoreCase, Windows.UI.Xaml.Automation.Provider.ITextRangeProvider* return_returnValue);
	HRESULT abi_GetAttributeValue(INT32 attributeId, IInspectable* return_returnValue);
	HRESULT abi_GetBoundingRectangles(UINT32* out___returnValueSize, double** out_returnValue);
	HRESULT abi_GetEnclosingElement(Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple* return_returnValue);
	HRESULT abi_GetText(INT32 maxLength, HSTRING* return_returnValue);
	HRESULT abi_Move(Windows.UI.Xaml.Automation.Text.TextUnit unit, INT32 count, INT32* return_returnValue);
	HRESULT abi_MoveEndpointByUnit(Windows.UI.Xaml.Automation.Text.TextPatternRangeEndpoint endpoint, Windows.UI.Xaml.Automation.Text.TextUnit unit, INT32 count, INT32* return_returnValue);
	HRESULT abi_MoveEndpointByRange(Windows.UI.Xaml.Automation.Text.TextPatternRangeEndpoint endpoint, Windows.UI.Xaml.Automation.Provider.ITextRangeProvider textRangeProvider, Windows.UI.Xaml.Automation.Text.TextPatternRangeEndpoint targetEndpoint);
	HRESULT abi_Select();
	HRESULT abi_AddToSelection();
	HRESULT abi_RemoveFromSelection();
	HRESULT abi_ScrollIntoView(bool alignToTop);
	HRESULT abi_GetChildren(UINT32* out___returnValueSize, Windows.UI.Xaml.Automation.Provider.IRawElementProviderSimple** return_returnValue);
}

@uuid("d3be3dfb-9f54-4642-a7a5-5c18d5ee2a3f")
interface ITextRangeProvider2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ShowContextMenu();
}

@uuid("93b88290-656f-44f7-aeaf-78b8f944d062")
interface IToggleProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ToggleState(Windows.UI.Xaml.Automation.ToggleState* return_value);
	HRESULT abi_Toggle();
}

@uuid("79670fdd-f6a9-4a65-af17-861db799a2da")
interface ITransformProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CanMove(bool* return_value);
	HRESULT get_CanResize(bool* return_value);
	HRESULT get_CanRotate(bool* return_value);
	HRESULT abi_Move(double x, double y);
	HRESULT abi_Resize(double width, double height);
	HRESULT abi_Rotate(double degrees);
}

@uuid("a8b11756-a39f-4e97-8c7d-c1ea8dd633c5")
interface ITransformProvider2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CanZoom(bool* return_value);
	HRESULT get_ZoomLevel(double* return_value);
	HRESULT get_MaxZoom(double* return_value);
	HRESULT get_MinZoom(double* return_value);
	HRESULT abi_Zoom(double zoom);
	HRESULT abi_ZoomByUnit(Windows.UI.Xaml.Automation.ZoomUnit zoomUnit);
}

@uuid("2086b7a7-ac0e-47d1-ab9b-2a64292afdf8")
interface IValueProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsReadOnly(bool* return_value);
	HRESULT get_Value(HSTRING* return_value);
	HRESULT abi_SetValue(HSTRING value);
}

@uuid("17d4a04b-d658-48e0-a574-5a516c58dfa7")
interface IVirtualizedItemProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Realize();
}

@uuid("1baa8b3d-38cf-415a-85d3-20e43a0ec1b1")
interface IWindowProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsModal(bool* return_value);
	HRESULT get_IsTopmost(bool* return_value);
	HRESULT get_Maximizable(bool* return_value);
	HRESULT get_Minimizable(bool* return_value);
	HRESULT get_InteractionState(Windows.UI.Xaml.Automation.WindowInteractionState* return_value);
	HRESULT get_VisualState(Windows.UI.Xaml.Automation.WindowVisualState* return_value);
	HRESULT abi_Close();
	HRESULT abi_SetVisualState(Windows.UI.Xaml.Automation.WindowVisualState state);
	HRESULT abi_WaitForInputIdle(INT32 milliseconds, bool* return_returnValue);
}

interface IRawElementProviderSimple : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Automation.Provider.IIRawElementProviderSimple
{
}