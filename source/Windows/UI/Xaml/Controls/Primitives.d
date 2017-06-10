module Windows.UI.Xaml.Controls.Primitives;

import dwinrt;

struct GeneratorPosition
{
	INT32 Index;
	INT32 Offset;
}

@uuid("36b28888-19ac-4b4e-9137-a6cf2b023883")
interface DragCompletedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.Primitives.DragCompletedEventArgs e);
}

@uuid("4ac24f9f-ac28-49e9-9189-dccffeb66472")
interface DragDeltaEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.Primitives.DragDeltaEventArgs e);
}

@uuid("d2eea48a-c65a-495d-a2f1-72c66989142d")
interface DragStartedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.Primitives.DragStartedEventArgs e);
}

@uuid("178257be-a304-482f-8bf0-b9d2e39612a3")
interface ItemsChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.Primitives.ItemsChangedEventArgs e);
}

@uuid("e3906fd9-4d1b-4ac8-a43c-c3b908742799")
interface RangeBaseValueChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.Primitives.RangeBaseValueChangedEventArgs e);
}

@uuid("8860b0a4-a383-4c83-b306-a1c39d7db87f")
interface ScrollEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.Primitives.ScrollEventArgs e);
}

@uuid("bcc2a863-eb35-423c-8389-d7827be3bf67")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.AppBarTemplateSettings")
interface IAppBarTemplateSettings : IInspectable
{
extern(Windows):
	HRESULT get_ClipRect(Windows.Foundation.Rect* return_value);
	HRESULT get_CompactVerticalDelta(double* return_value);
	HRESULT get_CompactRootMargin(Windows.UI.Xaml.Thickness* return_value);
	HRESULT get_MinimalVerticalDelta(double* return_value);
	HRESULT get_MinimalRootMargin(Windows.UI.Xaml.Thickness* return_value);
	HRESULT get_HiddenVerticalDelta(double* return_value);
	HRESULT get_HiddenRootMargin(Windows.UI.Xaml.Thickness* return_value);
}

@uuid("fa002c1a-494e-46cf-91d4-e14a8d798674")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ButtonBase")
interface IButtonBase : IInspectable
{
extern(Windows):
	HRESULT get_ClickMode(Windows.UI.Xaml.Controls.ClickMode* return_value);
	HRESULT set_ClickMode(Windows.UI.Xaml.Controls.ClickMode value);
	HRESULT get_IsPointerOver(bool* return_value);
	HRESULT get_IsPressed(bool* return_value);
	HRESULT get_Command(Windows.UI.Xaml.Input.ICommand* return_value);
	HRESULT set_Command(Windows.UI.Xaml.Input.ICommand value);
	HRESULT get_CommandParameter(IInspectable* return_value);
	HRESULT set_CommandParameter(IInspectable value);
	HRESULT add_Click(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Click(EventRegistrationToken token);
}

@uuid("389b7c71-5220-42b2-9992-2690c1a6702f")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ButtonBase")
interface IButtonBaseFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Primitives.ButtonBase* return_instance);
}

@uuid("67ef17e1-fe37-474f-9e97-3b5e0b30f2df")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ButtonBase")
interface IButtonBaseStatics : IInspectable
{
extern(Windows):
	HRESULT get_ClickModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsPointerOverProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsPressedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CommandProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CommandParameterProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("fcd55a2d-02d3-4ee6-9a90-9df3ead00994")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.CalendarPanel")
interface ICalendarPanel : IInspectable
{
}

@uuid("56c71483-64e1-477c-8a0b-cb2f3334b9b0")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.CalendarViewTemplateSettings")
interface ICalendarViewTemplateSettings : IInspectable
{
extern(Windows):
	HRESULT get_MinViewWidth(double* return_value);
	HRESULT get_HeaderText(HSTRING* return_value);
	HRESULT get_WeekDay1(HSTRING* return_value);
	HRESULT get_WeekDay2(HSTRING* return_value);
	HRESULT get_WeekDay3(HSTRING* return_value);
	HRESULT get_WeekDay4(HSTRING* return_value);
	HRESULT get_WeekDay5(HSTRING* return_value);
	HRESULT get_WeekDay6(HSTRING* return_value);
	HRESULT get_WeekDay7(HSTRING* return_value);
	HRESULT get_HasMoreContentAfter(bool* return_value);
	HRESULT get_HasMoreContentBefore(bool* return_value);
	HRESULT get_HasMoreViews(bool* return_value);
	HRESULT get_ClipRect(Windows.Foundation.Rect* return_value);
	HRESULT get_CenterX(double* return_value);
	HRESULT get_CenterY(double* return_value);
}

@uuid("deab78b2-373b-4151-8785-e544d0d9362b")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.CarouselPanel")
interface ICarouselPanel : IInspectable
{
extern(Windows):
	HRESULT get_CanVerticallyScroll(bool* return_value);
	HRESULT set_CanVerticallyScroll(bool value);
	HRESULT get_CanHorizontallyScroll(bool* return_value);
	HRESULT set_CanHorizontallyScroll(bool value);
	HRESULT get_ExtentWidth(double* return_value);
	HRESULT get_ExtentHeight(double* return_value);
	HRESULT get_ViewportWidth(double* return_value);
	HRESULT get_ViewportHeight(double* return_value);
	HRESULT get_HorizontalOffset(double* return_value);
	HRESULT get_VerticalOffset(double* return_value);
	HRESULT get_ScrollOwner(IInspectable* return_value);
	HRESULT set_ScrollOwner(IInspectable value);
	HRESULT abi_LineUp();
	HRESULT abi_LineDown();
	HRESULT abi_LineLeft();
	HRESULT abi_LineRight();
	HRESULT abi_PageUp();
	HRESULT abi_PageDown();
	HRESULT abi_PageLeft();
	HRESULT abi_PageRight();
	HRESULT abi_MouseWheelUp();
	HRESULT abi_MouseWheelDown();
	HRESULT abi_MouseWheelLeft();
	HRESULT abi_MouseWheelRight();
	HRESULT abi_SetHorizontalOffset(double offset);
	HRESULT abi_SetVerticalOffset(double offset);
	HRESULT abi_MakeVisible(Windows.UI.Xaml.UIElement visual, Windows.Foundation.Rect rectangle, Windows.Foundation.Rect* return_returnValue);
}

@uuid("c1109404-9ae1-440e-a0dd-bbb6e2293cbe")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.CarouselPanel")
interface ICarouselPanelFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Primitives.CarouselPanel* return_instance);
}

@uuid("83285c4e-17f6-4aa3-b61b-e87c718604ea")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ComboBoxTemplateSettings")
interface IComboBoxTemplateSettings : IInspectable
{
extern(Windows):
	HRESULT get_DropDownOpenedHeight(double* return_value);
	HRESULT get_DropDownClosedHeight(double* return_value);
	HRESULT get_DropDownOffset(double* return_value);
	HRESULT get_SelectedItemDirection(Windows.UI.Xaml.Controls.Primitives.AnimationDirection* return_value);
}

@uuid("00e90cd7-68be-449d-b5a7-76e26f703e9b")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ComboBoxTemplateSettings")
interface IComboBoxTemplateSettings2 : IInspectable
{
extern(Windows):
	HRESULT get_DropDownContentMinWidth(double* return_value);
}

@uuid("61c8f92c-05aa-414a-a2ae-482c5a46c08e")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.CommandBarTemplateSettings")
interface ICommandBarTemplateSettings : IInspectable
{
extern(Windows):
	HRESULT get_ContentHeight(double* return_value);
	HRESULT get_OverflowContentClipRect(Windows.Foundation.Rect* return_value);
	HRESULT get_OverflowContentMinWidth(double* return_value);
	HRESULT get_OverflowContentMaxHeight(double* return_value);
	HRESULT get_OverflowContentHorizontalOffset(double* return_value);
	HRESULT get_OverflowContentHeight(double* return_value);
	HRESULT get_NegativeOverflowContentHeight(double* return_value);
}

@uuid("fbb24f93-c2e2-4177-a2b6-3cd705073cf6")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.CommandBarTemplateSettings")
interface ICommandBarTemplateSettings2 : IInspectable
{
extern(Windows):
	HRESULT get_OverflowContentMaxWidth(double* return_value);
}

@uuid("3bd71eba-3403-4bfe-842d-2ce8c511d245")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.CommandBarTemplateSettings")
interface ICommandBarTemplateSettings3 : IInspectable
{
extern(Windows):
	HRESULT get_EffectiveOverflowButtonVisibility(Windows.UI.Xaml.Visibility* return_value);
}

@uuid("b04f29a1-bd16-48f6-a511-9c2763641331")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.DragCompletedEventArgs")
interface IDragCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_HorizontalChange(double* return_value);
	HRESULT get_VerticalChange(double* return_value);
	HRESULT get_Canceled(bool* return_value);
}

@uuid("36a7d99d-148c-495f-a0fc-afc871d62f33")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.DragCompletedEventArgs")
interface IDragCompletedEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithHorizontalChangeVerticalChangeAndCanceled(double horizontalChange, double verticalChange, bool canceled, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Primitives.DragCompletedEventArgs* return_instance);
}

@uuid("2c2dd73c-2806-49fc-aae9-6d792b572b6a")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.DragDeltaEventArgs")
interface IDragDeltaEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_HorizontalChange(double* return_value);
	HRESULT get_VerticalChange(double* return_value);
}

@uuid("46e7a1ef-ae15-44a6-8a04-95b0bf9ab876")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.DragDeltaEventArgs")
interface IDragDeltaEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithHorizontalChangeAndVerticalChange(double horizontalChange, double verticalChange, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Primitives.DragDeltaEventArgs* return_instance);
}

@uuid("9f915dd0-a124-4366-bd85-2408214aeed4")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.DragStartedEventArgs")
interface IDragStartedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_HorizontalOffset(double* return_value);
	HRESULT get_VerticalOffset(double* return_value);
}

@uuid("5eefe579-c706-4781-a308-c9e7f4c6a1d7")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.DragStartedEventArgs")
interface IDragStartedEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithHorizontalOffsetAndVerticalOffset(double horizontalOffset, double verticalOffset, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Primitives.DragStartedEventArgs* return_instance);
}

@uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.FlyoutBase")
interface IFlyoutBase : IInspectable
{
extern(Windows):
	HRESULT get_Placement(Windows.UI.Xaml.Controls.Primitives.FlyoutPlacementMode* return_value);
	HRESULT set_Placement(Windows.UI.Xaml.Controls.Primitives.FlyoutPlacementMode value);
	HRESULT add_Opened(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Opened(EventRegistrationToken token);
	HRESULT add_Closed(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Closed(EventRegistrationToken token);
	HRESULT add_Opening(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Opening(EventRegistrationToken token);
	HRESULT abi_ShowAt(Windows.UI.Xaml.FrameworkElement placementTarget);
	HRESULT abi_Hide();
}

@uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.FlyoutBase")
interface IFlyoutBase2 : IInspectable
{
extern(Windows):
	HRESULT get_Target(Windows.UI.Xaml.FrameworkElement* return_value);
	HRESULT get_AllowFocusOnInteraction(bool* return_value);
	HRESULT set_AllowFocusOnInteraction(bool value);
	HRESULT get_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode* return_value);
	HRESULT set_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value);
	HRESULT get_AllowFocusWhenDisabled(bool* return_value);
	HRESULT set_AllowFocusWhenDisabled(bool value);
	HRESULT get_ElementSoundMode(Windows.UI.Xaml.ElementSoundMode* return_value);
	HRESULT set_ElementSoundMode(Windows.UI.Xaml.ElementSoundMode value);
	HRESULT add_Closing(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Primitives.FlyoutBase, Windows.UI.Xaml.Controls.Primitives.FlyoutBaseClosingEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_Closing(EventRegistrationToken token);
}

@uuid("a89c9712-48e0-4240-95b9-0dfd0826a8d3")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.FlyoutBase")
interface IFlyoutBase3 : IInspectable
{
extern(Windows):
	HRESULT get_OverlayInputPassThroughElement(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_OverlayInputPassThroughElement(Windows.UI.Xaml.DependencyObject value);
}

@uuid("d075852d-b09a-4fd1-b005-db2ba01206fb")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.FlyoutBaseClosingEventArgs")
interface IFlyoutBaseClosingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Cancel(bool* return_value);
	HRESULT set_Cancel(bool value);
}

@uuid("1c3363d7-fca7-407e-920e-70e15e9f0bf1")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.FlyoutBase")
interface IFlyoutBaseFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Primitives.FlyoutBase* return_instance);
}

@uuid("101dec86-6f4d-45a4-9d0e-3ece6f16977e")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.FlyoutBase")
interface IFlyoutBaseOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_CreatePresenter(Windows.UI.Xaml.Controls.Control* return_returnValue);
}

@uuid("e2d795e3-85c0-4de2-bac1-5294ca011a78")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.FlyoutBase")
interface IFlyoutBaseStatics : IInspectable
{
extern(Windows):
	HRESULT get_PlacementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AttachedFlyoutProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAttachedFlyout(Windows.UI.Xaml.FrameworkElement element, Windows.UI.Xaml.Controls.Primitives.FlyoutBase* return_value);
	HRESULT abi_SetAttachedFlyout(Windows.UI.Xaml.FrameworkElement element, Windows.UI.Xaml.Controls.Primitives.FlyoutBase value);
	HRESULT abi_ShowAttachedFlyout(Windows.UI.Xaml.FrameworkElement flyoutOwner);
}

@uuid("a8e913fe-2d60-4307-aad9-56b450121b58")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.FlyoutBase")
interface IFlyoutBaseStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_AllowFocusOnInteractionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LightDismissOverlayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AllowFocusWhenDisabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ElementSoundModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("7ba92e4f-dd16-4be4-99db-bd9d4406c0f8")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.FlyoutBase")
interface IFlyoutBaseStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_OverlayInputPassThroughElementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("cd40318d-7745-40d9-ab9d-abbda4a7ffea")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.GeneratorPositionHelper")
interface IGeneratorPositionHelper : IInspectable
{
}

@uuid("ad4095cd-60ec-4588-8d60-39d29097a4df")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.GeneratorPositionHelper")
interface IGeneratorPositionHelperStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromIndexAndOffset(INT32 index, INT32 offset, Windows.UI.Xaml.Controls.Primitives.GeneratorPosition* return_returnValue);
}

@uuid("214f9010-56e2-4821-8a1c-2305709af94b")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.GridViewItemPresenter")
interface IGridViewItemPresenter : IInspectable
{
extern(Windows):
	HRESULT get_SelectionCheckMarkVisualEnabled(bool* return_value);
	HRESULT set_SelectionCheckMarkVisualEnabled(bool value);
	HRESULT get_CheckHintBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_CheckHintBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_CheckSelectingBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_CheckSelectingBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_CheckBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_CheckBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_DragBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_DragBackground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_DragForeground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_DragForeground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_FocusBorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_FocusBorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_PlaceholderBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_PlaceholderBackground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_PointerOverBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_PointerOverBackground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_SelectedBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_SelectedBackground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_SelectedForeground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_SelectedForeground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_SelectedPointerOverBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_SelectedPointerOverBackground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_SelectedPointerOverBorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_SelectedPointerOverBorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_SelectedBorderThickness(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_SelectedBorderThickness(Windows.UI.Xaml.Thickness value);
	HRESULT get_DisabledOpacity(double* return_value);
	HRESULT set_DisabledOpacity(double value);
	HRESULT get_DragOpacity(double* return_value);
	HRESULT set_DragOpacity(double value);
	HRESULT get_ReorderHintOffset(double* return_value);
	HRESULT set_ReorderHintOffset(double value);
	deprecated("Use ContentPresenter.HorizontalContentAlignment instead of GridViewItemPresenterHorizontalContentAlignment. For more info, see MSDN.")
	HRESULT get_GridViewItemPresenterHorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment* return_value);
	deprecated("Use ContentPresenter.HorizontalContentAlignment instead of GridViewItemPresenterHorizontalContentAlignment. For more info, see MSDN.")
	HRESULT set_GridViewItemPresenterHorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment value);
	deprecated("Use ContentPresenter.VerticalContentAlignment instead of GridViewItemPresenterVerticalContentAlignment. For more info, see MSDN.")
	HRESULT get_GridViewItemPresenterVerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment* return_value);
	deprecated("Use ContentPresenter.VerticalContentAlignment instead of GridViewItemPresenterVerticalContentAlignment. For more info, see MSDN.")
	HRESULT set_GridViewItemPresenterVerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment value);
	deprecated("Use ContentPresenter.Padding instead of GridViewItemPresenterPadding. For more info, see MSDN.")
	HRESULT get_GridViewItemPresenterPadding(Windows.UI.Xaml.Thickness* return_value);
	deprecated("Use ContentPresenter.Padding instead of GridViewItemPresenterPadding. For more info, see MSDN.")
	HRESULT set_GridViewItemPresenterPadding(Windows.UI.Xaml.Thickness value);
	HRESULT get_PointerOverBackgroundMargin(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_PointerOverBackgroundMargin(Windows.UI.Xaml.Thickness value);
	HRESULT get_ContentMargin(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_ContentMargin(Windows.UI.Xaml.Thickness value);
}

@uuid("53c12178-63bb-4a65-a3f1-ab114cfc6ffe")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.GridViewItemPresenter")
interface IGridViewItemPresenterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Primitives.GridViewItemPresenter* return_instance);
}

@uuid("e958f8c4-277e-4a72-a01e-9e1688980178")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.GridViewItemPresenter")
interface IGridViewItemPresenterStatics : IInspectable
{
extern(Windows):
	HRESULT get_SelectionCheckMarkVisualEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CheckHintBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CheckSelectingBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CheckBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DragBackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DragForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FocusBorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PlaceholderBackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PointerOverBackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedBackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedPointerOverBackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedPointerOverBorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedBorderThicknessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DisabledOpacityProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DragOpacityProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ReorderHintOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	deprecated("Use ContentPresenter.HorizontalContentAlignment instead of GridViewItemPresenterHorizontalContentAlignment. For more info, see MSDN.")
	HRESULT get_GridViewItemPresenterHorizontalContentAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	deprecated("Use ContentPresenter.VerticalContentAlignment instead of GridViewItemPresenterVerticalContentAlignment. For more info, see MSDN.")
	HRESULT get_GridViewItemPresenterVerticalContentAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	deprecated("Use ContentPresenter.Padding instead of GridViewItemPresenterPadding. For more info, see MSDN.")
	HRESULT get_GridViewItemPresenterPaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PointerOverBackgroundMarginProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentMarginProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9e30baaf-165d-4267-a45e-1a43a75706ac")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.GridViewItemTemplateSettings")
interface IGridViewItemTemplateSettings : IInspectable
{
extern(Windows):
	HRESULT get_DragItemsCount(INT32* return_value);
}

@uuid("e8b45568-7d10-421e-be29-81839a91de20")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ItemsChangedEventArgs")
interface IItemsChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Action(INT32* return_value);
	HRESULT get_Position(Windows.UI.Xaml.Controls.Primitives.GeneratorPosition* return_value);
	HRESULT get_OldPosition(Windows.UI.Xaml.Controls.Primitives.GeneratorPosition* return_value);
	HRESULT get_ItemCount(INT32* return_value);
	HRESULT get_ItemUICount(INT32* return_value);
}

@uuid("81177858-d224-410c-b16c-c5b6bb6188b2")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.JumpListItemBackgroundConverter")
interface IJumpListItemBackgroundConverter : IInspectable
{
extern(Windows):
	HRESULT get_Enabled(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Enabled(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_Disabled(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Disabled(Windows.UI.Xaml.Media.Brush value);
}

@uuid("20e7c3dd-6f27-4808-b0be-83e0e9b5cc45")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.JumpListItemBackgroundConverter")
interface IJumpListItemBackgroundConverterStatics : IInspectable
{
extern(Windows):
	HRESULT get_EnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DisabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("1590ed38-c504-4796-a63a-5bfc9eefaae8")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.JumpListItemForegroundConverter")
interface IJumpListItemForegroundConverter : IInspectable
{
extern(Windows):
	HRESULT get_Enabled(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Enabled(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_Disabled(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Disabled(Windows.UI.Xaml.Media.Brush value);
}

@uuid("474e7352-210c-4673-ac6a-413f0e2c7750")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.JumpListItemForegroundConverter")
interface IJumpListItemForegroundConverterStatics : IInspectable
{
extern(Windows):
	HRESULT get_EnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DisabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b5384c9b-c8cf-41b3-bf16-18c8420e72c9")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.LayoutInformation")
interface ILayoutInformation : IInspectable
{
}

@uuid("cf06cf99-58e9-4682-8326-50caab65ed7c")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.LayoutInformation")
interface ILayoutInformationStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetLayoutExceptionElement(IInspectable dispatcher, Windows.UI.Xaml.UIElement* return_element);
	HRESULT abi_GetLayoutSlot(Windows.UI.Xaml.FrameworkElement element, Windows.Foundation.Rect* return_slot);
}

@uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenter")
interface IListViewItemPresenter : IInspectable
{
extern(Windows):
	HRESULT get_SelectionCheckMarkVisualEnabled(bool* return_value);
	HRESULT set_SelectionCheckMarkVisualEnabled(bool value);
	HRESULT get_CheckHintBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_CheckHintBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_CheckSelectingBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_CheckSelectingBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_CheckBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_CheckBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_DragBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_DragBackground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_DragForeground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_DragForeground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_FocusBorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_FocusBorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_PlaceholderBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_PlaceholderBackground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_PointerOverBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_PointerOverBackground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_SelectedBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_SelectedBackground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_SelectedForeground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_SelectedForeground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_SelectedPointerOverBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_SelectedPointerOverBackground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_SelectedPointerOverBorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_SelectedPointerOverBorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_SelectedBorderThickness(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_SelectedBorderThickness(Windows.UI.Xaml.Thickness value);
	HRESULT get_DisabledOpacity(double* return_value);
	HRESULT set_DisabledOpacity(double value);
	HRESULT get_DragOpacity(double* return_value);
	HRESULT set_DragOpacity(double value);
	HRESULT get_ReorderHintOffset(double* return_value);
	HRESULT set_ReorderHintOffset(double value);
	deprecated("Use ContentPresenter.HorizontalContentAlignment instead of ListViewItemPresenterHorizontalContentAlignment. For more info, see MSDN.")
	HRESULT get_ListViewItemPresenterHorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment* return_value);
	deprecated("Use ContentPresenter.HorizontalContentAlignment instead of ListViewItemPresenterHorizontalContentAlignment. For more info, see MSDN.")
	HRESULT set_ListViewItemPresenterHorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment value);
	deprecated("Use ContentPresenter.VerticalContentAlignment instead of ListViewItemPresenterVerticalContentAlignment. For more info, see MSDN.")
	HRESULT get_ListViewItemPresenterVerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment* return_value);
	deprecated("Use ContentPresenter.VerticalContentAlignment instead of ListViewItemPresenterVerticalContentAlignment. For more info, see MSDN.")
	HRESULT set_ListViewItemPresenterVerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment value);
	deprecated("Use ContentPresenter.Padding instead of GridViewItemPresenterPadding. For more info, see MSDN.")
	HRESULT get_ListViewItemPresenterPadding(Windows.UI.Xaml.Thickness* return_value);
	deprecated("Use ContentPresenter.Padding instead of GridViewItemPresenterPadding. For more info, see MSDN.")
	HRESULT set_ListViewItemPresenterPadding(Windows.UI.Xaml.Thickness value);
	HRESULT get_PointerOverBackgroundMargin(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_PointerOverBackgroundMargin(Windows.UI.Xaml.Thickness value);
	HRESULT get_ContentMargin(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_ContentMargin(Windows.UI.Xaml.Thickness value);
}

@uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenter")
interface IListViewItemPresenter2 : IInspectable
{
extern(Windows):
	HRESULT get_SelectedPressedBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_SelectedPressedBackground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_PressedBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_PressedBackground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_CheckBoxBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_CheckBoxBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_FocusSecondaryBorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_FocusSecondaryBorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_CheckMode(Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenterCheckMode* return_value);
	HRESULT set_CheckMode(Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenterCheckMode value);
	HRESULT get_PointerOverForeground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_PointerOverForeground(Windows.UI.Xaml.Media.Brush value);
}

@uuid("e0777cfd-f7e4-4a67-9ac0-a994fcacd020")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenter")
interface IListViewItemPresenterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenter* return_instance);
}

@uuid("6504a55a-15dd-42fb-aa5d-2d8ce2e9c294")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenter")
interface IListViewItemPresenterStatics : IInspectable
{
extern(Windows):
	HRESULT get_SelectionCheckMarkVisualEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CheckHintBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CheckSelectingBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CheckBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DragBackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DragForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FocusBorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PlaceholderBackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PointerOverBackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedBackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedPointerOverBackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedPointerOverBorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedBorderThicknessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DisabledOpacityProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DragOpacityProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ReorderHintOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	deprecated("Use ContentPresenter.HorizontalContentAlignment instead of ListViewItemPresenterHorizontalContentAlignment. For more info, see MSDN.")
	HRESULT get_ListViewItemPresenterHorizontalContentAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	deprecated("Use ContentPresenter.VerticalContentAlignment instead of ListViewItemPresenterVerticalContentAlignment. For more info, see MSDN.")
	HRESULT get_ListViewItemPresenterVerticalContentAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	deprecated("Use ContentPresenter.Padding instead of GridViewItemPresenterPadding. For more info, see MSDN.")
	HRESULT get_ListViewItemPresenterPaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PointerOverBackgroundMarginProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentMarginProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4cb3b945-d24d-42a3-9e83-a86d0618bf1b")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenter")
interface IListViewItemPresenterStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_SelectedPressedBackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PressedBackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CheckBoxBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FocusSecondaryBorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CheckModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PointerOverForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("67af84bf-8279-4686-9326-cd189f27575d")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ListViewItemTemplateSettings")
interface IListViewItemTemplateSettings : IInspectable
{
extern(Windows):
	HRESULT get_DragItemsCount(INT32* return_value);
}

@uuid("4c9a3e04-4827-49d9-8806-093957b0fd21")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.LoopingSelector")
interface ILoopingSelector : IInspectable
{
extern(Windows):
	HRESULT get_ShouldLoop(bool* return_value);
	HRESULT set_ShouldLoop(bool value);
	HRESULT get_Items(Windows.Foundation.Collections.IVector!(IInspectable)* return_value);
	HRESULT set_Items(Windows.Foundation.Collections.IVector!(IInspectable) value);
	HRESULT get_SelectedIndex(INT32* return_value);
	HRESULT set_SelectedIndex(INT32 value);
	HRESULT get_SelectedItem(IInspectable* return_value);
	HRESULT set_SelectedItem(IInspectable value);
	HRESULT get_ItemWidth(INT32* return_value);
	HRESULT set_ItemWidth(INT32 value);
	HRESULT get_ItemHeight(INT32* return_value);
	HRESULT set_ItemHeight(INT32 value);
	HRESULT get_ItemTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_ItemTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT add_SelectionChanged(Windows.UI.Xaml.Controls.SelectionChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_SelectionChanged(EventRegistrationToken token);
}

@uuid("c69714b9-27c6-4433-9d7c-0dbfb2f4344f")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.LoopingSelectorItem")
interface ILoopingSelectorItem : IInspectable
{
}

@uuid("40a9ba70-1011-4778-87f7-6bfd20d6377d")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.LoopingSelectorPanel")
interface ILoopingSelectorPanel : IInspectable
{
}

@uuid("03e8bafa-8c7d-4fc5-b92a-f049fb933cc5")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.LoopingSelector")
interface ILoopingSelectorStatics : IInspectable
{
extern(Windows):
	HRESULT get_ShouldLoopProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedIndexProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedItemProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d68fd00d-629d-4349-ac51-b877c80983b8")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.MenuFlyoutPresenterTemplateSettings")
interface IMenuFlyoutPresenterTemplateSettings : IInspectable
{
extern(Windows):
	HRESULT get_FlyoutContentMinWidth(double* return_value);
}

@uuid("f077b577-39bd-46ee-bdd7-0826beed71b8")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.OrientedVirtualizingPanel")
interface IOrientedVirtualizingPanel : IInspectable
{
extern(Windows):
	HRESULT get_CanVerticallyScroll(bool* return_value);
	HRESULT set_CanVerticallyScroll(bool value);
	HRESULT get_CanHorizontallyScroll(bool* return_value);
	HRESULT set_CanHorizontallyScroll(bool value);
	HRESULT get_ExtentWidth(double* return_value);
	HRESULT get_ExtentHeight(double* return_value);
	HRESULT get_ViewportWidth(double* return_value);
	HRESULT get_ViewportHeight(double* return_value);
	HRESULT get_HorizontalOffset(double* return_value);
	HRESULT get_VerticalOffset(double* return_value);
	HRESULT get_ScrollOwner(IInspectable* return_value);
	HRESULT set_ScrollOwner(IInspectable value);
	HRESULT abi_LineUp();
	HRESULT abi_LineDown();
	HRESULT abi_LineLeft();
	HRESULT abi_LineRight();
	HRESULT abi_PageUp();
	HRESULT abi_PageDown();
	HRESULT abi_PageLeft();
	HRESULT abi_PageRight();
	HRESULT abi_MouseWheelUp();
	HRESULT abi_MouseWheelDown();
	HRESULT abi_MouseWheelLeft();
	HRESULT abi_MouseWheelRight();
	HRESULT abi_SetHorizontalOffset(double offset);
	HRESULT abi_SetVerticalOffset(double offset);
	HRESULT abi_MakeVisible(Windows.UI.Xaml.UIElement visual, Windows.Foundation.Rect rectangle, Windows.Foundation.Rect* return_returnValue);
}

@uuid("7b8eaeaf-f92f-439d-9ebf-e9919f56c94d")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.OrientedVirtualizingPanel")
interface IOrientedVirtualizingPanelFactory : IInspectable
{
}

@uuid("e33574ea-1076-44d1-9383-dc24ac5cff2a")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.PickerFlyoutBase")
interface IPickerFlyoutBase : IInspectable
{
}

@uuid("7ec27a53-9502-4beb-b342-00566c8f16b0")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.PickerFlyoutBase")
interface IPickerFlyoutBaseFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Primitives.PickerFlyoutBase* return_instance);
}

@uuid("5bfc4f4a-4822-47b4-a958-77c20ba120d3")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.PickerFlyoutBase")
interface IPickerFlyoutBaseOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_OnConfirmed();
	HRESULT abi_ShouldShowConfirmationButtons(bool* return_returnValue);
}

@uuid("5a4d0ac5-89ae-40e5-a7f1-bb702355adf3")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.PickerFlyoutBase")
interface IPickerFlyoutBaseStatics : IInspectable
{
extern(Windows):
	HRESULT get_TitleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetTitle(Windows.UI.Xaml.DependencyObject element, HSTRING* return_value);
	HRESULT abi_SetTitle(Windows.UI.Xaml.DependencyObject element, HSTRING value);
}

@uuid("594572c2-82aa-410b-9e55-fd8e2c98862d")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.PivotHeaderItem")
interface IPivotHeaderItem : IInspectable
{
}

@uuid("14308b37-185b-4117-bc77-dda2eb261b99")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.PivotHeaderItem")
interface IPivotHeaderItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Primitives.PivotHeaderItem* return_instance);
}

@uuid("21484ebc-9241-4203-bd37-6c08fb096612")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.PivotHeaderPanel")
interface IPivotHeaderPanel : IInspectable
{
}

@uuid("ad4ebe80-22a9-4ca3-9212-2773b6359ff3")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.PivotPanel")
interface IPivotPanel : IInspectable
{
}

@uuid("62418240-e6d3-4705-a1dc-39156456ee29")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.Popup")
interface IPopup : IInspectable
{
extern(Windows):
	HRESULT get_Child(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_Child(Windows.UI.Xaml.UIElement value);
	HRESULT get_IsOpen(bool* return_value);
	HRESULT set_IsOpen(bool value);
	HRESULT get_HorizontalOffset(double* return_value);
	HRESULT set_HorizontalOffset(double value);
	HRESULT get_VerticalOffset(double* return_value);
	HRESULT set_VerticalOffset(double value);
	HRESULT get_ChildTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection* return_value);
	HRESULT set_ChildTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value);
	HRESULT get_IsLightDismissEnabled(bool* return_value);
	HRESULT set_IsLightDismissEnabled(bool value);
	HRESULT add_Opened(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Opened(EventRegistrationToken token);
	HRESULT add_Closed(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Closed(EventRegistrationToken token);
}

@uuid("376a8c4c-aac0-4b20-966a-0b9364feb4b5")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.Popup")
interface IPopup2 : IInspectable
{
extern(Windows):
	HRESULT get_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode* return_value);
	HRESULT set_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value);
}

@uuid("5ae3bf1a-6e34-40d6-8a7f-ca822aaf59e3")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.Popup")
interface IPopupStatics : IInspectable
{
extern(Windows):
	HRESULT get_ChildProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsOpenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ChildTransitionsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsLightDismissEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2b9ae9ec-55ef-43b6-b459-12e40ffa4302")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.Popup")
interface IPopupStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_LightDismissOverlayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("3fe2ea2a-e3f2-4c2b-9488-918d77d2bbe4")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ProgressBarTemplateSettings")
interface IProgressBarTemplateSettings : IInspectable
{
extern(Windows):
	HRESULT get_EllipseDiameter(double* return_value);
	HRESULT get_EllipseOffset(double* return_value);
	HRESULT get_EllipseAnimationWellPosition(double* return_value);
	HRESULT get_EllipseAnimationEndPosition(double* return_value);
	HRESULT get_ContainerAnimationStartPosition(double* return_value);
	HRESULT get_ContainerAnimationEndPosition(double* return_value);
	HRESULT get_IndicatorLengthDelta(double* return_value);
}

@uuid("b9b675ec-c723-42e6-83e9-9826272bdc0e")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ProgressRingTemplateSettings")
interface IProgressRingTemplateSettings : IInspectable
{
extern(Windows):
	HRESULT get_EllipseDiameter(double* return_value);
	HRESULT get_EllipseOffset(Windows.UI.Xaml.Thickness* return_value);
	HRESULT get_MaxSideLength(double* return_value);
}

@uuid("fa002c1a-494e-46cf-91d4-e14a8d798675")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.RangeBase")
interface IRangeBase : IInspectable
{
extern(Windows):
	HRESULT get_Minimum(double* return_value);
	HRESULT set_Minimum(double value);
	HRESULT get_Maximum(double* return_value);
	HRESULT set_Maximum(double value);
	HRESULT get_SmallChange(double* return_value);
	HRESULT set_SmallChange(double value);
	HRESULT get_LargeChange(double* return_value);
	HRESULT set_LargeChange(double value);
	HRESULT get_Value(double* return_value);
	HRESULT set_Value(double value);
	HRESULT add_ValueChanged(Windows.UI.Xaml.Controls.Primitives.RangeBaseValueChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ValueChanged(EventRegistrationToken token);
}

@uuid("389b7c71-5220-42b2-9992-2690c1a67030")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.RangeBase")
interface IRangeBaseFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Primitives.RangeBase* return_instance);
}

@uuid("4291af39-7f0b-4bc2-99c4-06e7062682d8")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.RangeBase")
interface IRangeBaseOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_OnMinimumChanged(double oldMinimum, double newMinimum);
	HRESULT abi_OnMaximumChanged(double oldMaximum, double newMaximum);
	HRESULT abi_OnValueChanged(double oldValue, double newValue);
}

@uuid("67ef17e1-fe37-474f-9e97-3b5e0b30f2e0")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.RangeBase")
interface IRangeBaseStatics : IInspectable
{
extern(Windows):
	HRESULT get_MinimumProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaximumProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SmallChangeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LargeChangeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ValueProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("a1921777-d5c1-4f9c-a7b0-0401b7e6dc5c")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.RangeBaseValueChangedEventArgs")
interface IRangeBaseValueChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_OldValue(double* return_value);
	HRESULT get_NewValue(double* return_value);
}

@uuid("02200df9-021a-484a-a93b-0f31020314e5")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.RepeatButton")
interface IRepeatButton : IInspectable
{
extern(Windows):
	HRESULT get_Delay(INT32* return_value);
	HRESULT set_Delay(INT32 value);
	HRESULT get_Interval(INT32* return_value);
	HRESULT set_Interval(INT32 value);
}

@uuid("3914ac4e-f462-4f73-8197-e8846639c682")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.RepeatButton")
interface IRepeatButtonStatics : IInspectable
{
extern(Windows):
	HRESULT get_DelayProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IntervalProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("f57ae6ca-d1a6-4b90-a4e9-54df1ba8d2ec")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ScrollBar")
interface IScrollBar : IInspectable
{
extern(Windows):
	HRESULT get_Orientation(Windows.UI.Xaml.Controls.Orientation* return_value);
	HRESULT set_Orientation(Windows.UI.Xaml.Controls.Orientation value);
	HRESULT get_ViewportSize(double* return_value);
	HRESULT set_ViewportSize(double value);
	HRESULT get_IndicatorMode(Windows.UI.Xaml.Controls.Primitives.ScrollingIndicatorMode* return_value);
	HRESULT set_IndicatorMode(Windows.UI.Xaml.Controls.Primitives.ScrollingIndicatorMode value);
	HRESULT add_Scroll(Windows.UI.Xaml.Controls.Primitives.ScrollEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Scroll(EventRegistrationToken token);
}

@uuid("45eaf38d-b814-48cf-97f2-539eb16dfd4d")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ScrollBar")
interface IScrollBarStatics : IInspectable
{
extern(Windows):
	HRESULT get_OrientationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ViewportSizeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IndicatorModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("c57e5168-3afe-448d-b752-2f364c75d743")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ScrollEventArgs")
interface IScrollEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_NewValue(double* return_value);
	HRESULT get_ScrollEventType(Windows.UI.Xaml.Controls.Primitives.ScrollEventType* return_value);
}

@uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c")
interface IScrollSnapPointsInfo : IInspectable
{
extern(Windows):
	HRESULT get_AreHorizontalSnapPointsRegular(bool* return_value);
	HRESULT get_AreVerticalSnapPointsRegular(bool* return_value);
	HRESULT add_HorizontalSnapPointsChanged(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_HorizontalSnapPointsChanged(EventRegistrationToken token);
	HRESULT add_VerticalSnapPointsChanged(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_VerticalSnapPointsChanged(EventRegistrationToken token);
	HRESULT abi_GetIrregularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment, Windows.Foundation.Collections.IVectorView!(FLOAT)* return_returnValue);
	HRESULT abi_GetRegularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment, FLOAT* out_offset, FLOAT* return_returnValue);
}

@uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.Selector")
interface ISelector : IInspectable
{
extern(Windows):
	HRESULT get_SelectedIndex(INT32* return_value);
	HRESULT set_SelectedIndex(INT32 value);
	HRESULT get_SelectedItem(IInspectable* return_value);
	HRESULT set_SelectedItem(IInspectable value);
	HRESULT get_SelectedValue(IInspectable* return_value);
	HRESULT set_SelectedValue(IInspectable value);
	HRESULT get_SelectedValuePath(HSTRING* return_value);
	HRESULT set_SelectedValuePath(HSTRING value);
	HRESULT get_IsSynchronizedWithCurrentItem(Windows.Foundation.IReference!(bool)* return_value);
	HRESULT set_IsSynchronizedWithCurrentItem(Windows.Foundation.IReference!(bool) value);
	HRESULT add_SelectionChanged(Windows.UI.Xaml.Controls.SelectionChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_SelectionChanged(EventRegistrationToken token);
}

@uuid("c9be2995-d136-4600-b187-8ad56079b48a")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.Selector")
interface ISelectorFactory : IInspectable
{
}

@uuid("541c8d6c-0283-4581-b945-2a64c28a0646")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.SelectorItem")
interface ISelectorItem : IInspectable
{
extern(Windows):
	HRESULT get_IsSelected(bool* return_value);
	HRESULT set_IsSelected(bool value);
}

@uuid("b9363945-c86a-4b1e-9440-1879378d5313")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.SelectorItem")
interface ISelectorItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Primitives.SelectorItem* return_instance);
}

@uuid("2a353ab8-cbe9-4303-92e7-c8906e218392")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.SelectorItem")
interface ISelectorItemStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsSelectedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("13300b06-bd10-4e09-bff7-71efb8bbb42b")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.Selector")
interface ISelectorStatics : IInspectable
{
extern(Windows):
	HRESULT get_SelectedIndexProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedItemProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedValueProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedValuePathProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsSynchronizedWithCurrentItemProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsSelectionActive(Windows.UI.Xaml.DependencyObject element, bool* return_returnValue);
}

@uuid("bcf14c10-cea7-43f1-9d68-57605ded69d4")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.SettingsFlyoutTemplateSettings")
interface ISettingsFlyoutTemplateSettings : IInspectable
{
extern(Windows):
	HRESULT get_HeaderBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT get_HeaderForeground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT get_BorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT get_BorderThickness(Windows.UI.Xaml.Thickness* return_value);
	HRESULT get_IconSource(Windows.UI.Xaml.Media.ImageSource* return_value);
	HRESULT get_ContentTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection* return_value);
}

@uuid("c16ab5a7-4996-4443-b199-6b6b89124eab")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.SplitViewTemplateSettings")
interface ISplitViewTemplateSettings : IInspectable
{
extern(Windows):
	HRESULT get_OpenPaneLength(double* return_value);
	HRESULT get_NegativeOpenPaneLength(double* return_value);
	HRESULT get_OpenPaneLengthMinusCompactLength(double* return_value);
	HRESULT get_NegativeOpenPaneLengthMinusCompactLength(double* return_value);
	HRESULT get_OpenPaneGridLength(Windows.UI.Xaml.GridLength* return_value);
	HRESULT get_CompactPaneGridLength(Windows.UI.Xaml.GridLength* return_value);
}

@uuid("e8b2b281-0d6a-45cf-b333-2402b037f099")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.Thumb")
interface IThumb : IInspectable
{
extern(Windows):
	HRESULT get_IsDragging(bool* return_value);
	HRESULT add_DragStarted(Windows.UI.Xaml.Controls.Primitives.DragStartedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_DragStarted(EventRegistrationToken token);
	HRESULT add_DragDelta(Windows.UI.Xaml.Controls.Primitives.DragDeltaEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_DragDelta(EventRegistrationToken token);
	HRESULT add_DragCompleted(Windows.UI.Xaml.Controls.Primitives.DragCompletedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_DragCompleted(EventRegistrationToken token);
	HRESULT abi_CancelDrag();
}

@uuid("955024eb-36f3-4672-a186-baaf626ac4ad")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.Thumb")
interface IThumbStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsDraggingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("994683fa-f1f6-487d-a5ac-c15921bfa995")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.TickBar")
interface ITickBar : IInspectable
{
extern(Windows):
	HRESULT get_Fill(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Fill(Windows.UI.Xaml.Media.Brush value);
}

@uuid("2c6d7e40-799d-4a54-be09-1fefc61d018e")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.TickBar")
interface ITickBarStatics : IInspectable
{
extern(Windows):
	HRESULT get_FillProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ToggleButton")
interface IToggleButton : IInspectable
{
extern(Windows):
	HRESULT get_IsChecked(Windows.Foundation.IReference!(bool)* return_value);
	HRESULT set_IsChecked(Windows.Foundation.IReference!(bool) value);
	HRESULT get_IsThreeState(bool* return_value);
	HRESULT set_IsThreeState(bool value);
	HRESULT add_Checked(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Checked(EventRegistrationToken token);
	HRESULT add_Unchecked(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Unchecked(EventRegistrationToken token);
	HRESULT add_Indeterminate(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Indeterminate(EventRegistrationToken token);
}

@uuid("d56aa2fc-fc7f-449c-9855-7a1055d668a8")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ToggleButton")
interface IToggleButtonFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Primitives.ToggleButton* return_instance);
}

@uuid("d20e4c28-f18b-491a-9a45-f1a04a9369a4")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ToggleButton")
interface IToggleButtonOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_OnToggle();
}

@uuid("af1eab12-0128-4f67-9c5a-82320c445d19")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ToggleButton")
interface IToggleButtonStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsCheckedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsThreeStateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("02b7bdcd-628a-4363-86e0-51d6e2e89e58")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ToggleSwitchTemplateSettings")
interface IToggleSwitchTemplateSettings : IInspectable
{
extern(Windows):
	HRESULT get_KnobCurrentToOnOffset(double* return_value);
	HRESULT get_KnobCurrentToOffOffset(double* return_value);
	HRESULT get_KnobOnToOffOffset(double* return_value);
	HRESULT get_KnobOffToOnOffset(double* return_value);
	HRESULT get_CurtainCurrentToOnOffset(double* return_value);
	HRESULT get_CurtainCurrentToOffOffset(double* return_value);
	HRESULT get_CurtainOnToOffOffset(double* return_value);
	HRESULT get_CurtainOffToOnOffset(double* return_value);
}

@uuid("d4388247-0ec4-4506-affd-afac2225b48c")
@WinrtFactory("Windows.UI.Xaml.Controls.Primitives.ToolTipTemplateSettings")
interface IToolTipTemplateSettings : IInspectable
{
extern(Windows):
	HRESULT get_FromHorizontalOffset(double* return_value);
	HRESULT get_FromVerticalOffset(double* return_value);
}

interface AppBarTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings
{
extern(Windows):
	final Windows.Foundation.Rect ClipRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings).get_ClipRect(&_ret));
		return _ret;
	}
	final double CompactVerticalDelta()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings).get_CompactVerticalDelta(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Thickness CompactRootMargin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings).get_CompactRootMargin(&_ret));
		return _ret;
	}
	final double MinimalVerticalDelta()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings).get_MinimalVerticalDelta(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Thickness MinimalRootMargin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings).get_MinimalRootMargin(&_ret));
		return _ret;
	}
	final double HiddenVerticalDelta()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings).get_HiddenVerticalDelta(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Thickness HiddenRootMargin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings).get_HiddenRootMargin(&_ret));
		return _ret;
	}
}

interface ButtonBase : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.Primitives.IButtonBase
{
extern(Windows):
	final Windows.UI.Xaml.Controls.ClickMode ClickMode()
	{
		Windows.UI.Xaml.Controls.ClickMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IButtonBase).get_ClickMode(&_ret));
		return _ret;
	}
	final void ClickMode(Windows.UI.Xaml.Controls.ClickMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IButtonBase).set_ClickMode(value));
	}
	final bool IsPointerOver()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IButtonBase).get_IsPointerOver(&_ret));
		return _ret;
	}
	final bool IsPressed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IButtonBase).get_IsPressed(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Input.ICommand Command()
	{
		Windows.UI.Xaml.Input.ICommand _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IButtonBase).get_Command(&_ret));
		return _ret;
	}
	final void Command(Windows.UI.Xaml.Input.ICommand value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IButtonBase).set_Command(value));
	}
	final IInspectable CommandParameter()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IButtonBase).get_CommandParameter(&_ret));
		return _ret;
	}
	final void CommandParameter(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IButtonBase).set_CommandParameter(value));
	}
}

interface CalendarPanel : Windows.UI.Xaml.Controls.Panel, Windows.UI.Xaml.Controls.Primitives.ICalendarPanel
{
}

interface CalendarViewTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings
{
extern(Windows):
	final double MinViewWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings).get_MinViewWidth(&_ret));
		return _ret;
	}
	final HSTRING HeaderText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings).get_HeaderText(&_ret));
		return _ret;
	}
	final HSTRING WeekDay1()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings).get_WeekDay1(&_ret));
		return _ret;
	}
	final HSTRING WeekDay2()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings).get_WeekDay2(&_ret));
		return _ret;
	}
	final HSTRING WeekDay3()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings).get_WeekDay3(&_ret));
		return _ret;
	}
	final HSTRING WeekDay4()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings).get_WeekDay4(&_ret));
		return _ret;
	}
	final HSTRING WeekDay5()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings).get_WeekDay5(&_ret));
		return _ret;
	}
	final HSTRING WeekDay6()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings).get_WeekDay6(&_ret));
		return _ret;
	}
	final HSTRING WeekDay7()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings).get_WeekDay7(&_ret));
		return _ret;
	}
	final bool HasMoreContentAfter()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings).get_HasMoreContentAfter(&_ret));
		return _ret;
	}
	final bool HasMoreContentBefore()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings).get_HasMoreContentBefore(&_ret));
		return _ret;
	}
	final bool HasMoreViews()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings).get_HasMoreViews(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect ClipRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings).get_ClipRect(&_ret));
		return _ret;
	}
	final double CenterX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings).get_CenterX(&_ret));
		return _ret;
	}
	final double CenterY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings).get_CenterY(&_ret));
		return _ret;
	}
}

interface CarouselPanel : Windows.UI.Xaml.Controls.VirtualizingPanel, Windows.UI.Xaml.Controls.Primitives.ICarouselPanel, Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo
{
extern(Windows):
	final bool CanVerticallyScroll()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).get_CanVerticallyScroll(&_ret));
		return _ret;
	}
	final void CanVerticallyScroll(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).set_CanVerticallyScroll(value));
	}
	final bool CanHorizontallyScroll()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).get_CanHorizontallyScroll(&_ret));
		return _ret;
	}
	final void CanHorizontallyScroll(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).set_CanHorizontallyScroll(value));
	}
	final double ExtentWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).get_ExtentWidth(&_ret));
		return _ret;
	}
	final double ExtentHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).get_ExtentHeight(&_ret));
		return _ret;
	}
	final double ViewportWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).get_ViewportWidth(&_ret));
		return _ret;
	}
	final double ViewportHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).get_ViewportHeight(&_ret));
		return _ret;
	}
	final double HorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).get_HorizontalOffset(&_ret));
		return _ret;
	}
	final double VerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).get_VerticalOffset(&_ret));
		return _ret;
	}
	final IInspectable ScrollOwner()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).get_ScrollOwner(&_ret));
		return _ret;
	}
	final void ScrollOwner(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).set_ScrollOwner(value));
	}
	final void LineUp()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).abi_LineUp());
	}
	final void LineDown()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).abi_LineDown());
	}
	final void LineLeft()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).abi_LineLeft());
	}
	final void LineRight()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).abi_LineRight());
	}
	final void PageUp()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).abi_PageUp());
	}
	final void PageDown()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).abi_PageDown());
	}
	final void PageLeft()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).abi_PageLeft());
	}
	final void PageRight()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).abi_PageRight());
	}
	final void MouseWheelUp()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).abi_MouseWheelUp());
	}
	final void MouseWheelDown()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).abi_MouseWheelDown());
	}
	final void MouseWheelLeft()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).abi_MouseWheelLeft());
	}
	final void MouseWheelRight()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).abi_MouseWheelRight());
	}
	final void SetHorizontalOffset(double offset)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).abi_SetHorizontalOffset(offset));
	}
	final void SetVerticalOffset(double offset)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).abi_SetVerticalOffset(offset));
	}
	final Windows.Foundation.Rect MakeVisible(Windows.UI.Xaml.UIElement visual, Windows.Foundation.Rect rectangle)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel).abi_MakeVisible(visual, rectangle, &_ret));
		return _ret;
	}
	final bool AreHorizontalSnapPointsRegular()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo).get_AreHorizontalSnapPointsRegular(&_ret));
		return _ret;
	}
	final bool AreVerticalSnapPointsRegular()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo).get_AreVerticalSnapPointsRegular(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(FLOAT) GetIrregularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment)
	{
		Windows.Foundation.Collections.IVectorView!(FLOAT) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo).abi_GetIrregularSnapPoints(orientation, alignment, &_ret));
		return _ret;
	}
	final FLOAT GetRegularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment, FLOAT* out_offset)
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo).abi_GetRegularSnapPoints(orientation, alignment, out_offset, &_ret));
		return _ret;
	}
}

interface ComboBoxTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings, Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings2
{
extern(Windows):
	final double DropDownOpenedHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings).get_DropDownOpenedHeight(&_ret));
		return _ret;
	}
	final double DropDownClosedHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings).get_DropDownClosedHeight(&_ret));
		return _ret;
	}
	final double DropDownOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings).get_DropDownOffset(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Primitives.AnimationDirection SelectedItemDirection()
	{
		Windows.UI.Xaml.Controls.Primitives.AnimationDirection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings).get_SelectedItemDirection(&_ret));
		return _ret;
	}
	final double DropDownContentMinWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings2).get_DropDownContentMinWidth(&_ret));
		return _ret;
	}
}

interface CommandBarTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings, Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings2, Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings3
{
extern(Windows):
	final double ContentHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings).get_ContentHeight(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect OverflowContentClipRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings).get_OverflowContentClipRect(&_ret));
		return _ret;
	}
	final double OverflowContentMinWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings).get_OverflowContentMinWidth(&_ret));
		return _ret;
	}
	final double OverflowContentMaxHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings).get_OverflowContentMaxHeight(&_ret));
		return _ret;
	}
	final double OverflowContentHorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings).get_OverflowContentHorizontalOffset(&_ret));
		return _ret;
	}
	final double OverflowContentHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings).get_OverflowContentHeight(&_ret));
		return _ret;
	}
	final double NegativeOverflowContentHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings).get_NegativeOverflowContentHeight(&_ret));
		return _ret;
	}
	final double OverflowContentMaxWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings2).get_OverflowContentMaxWidth(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Visibility EffectiveOverflowButtonVisibility()
	{
		Windows.UI.Xaml.Visibility _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings3).get_EffectiveOverflowButtonVisibility(&_ret));
		return _ret;
	}
}

interface DragCompletedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.Primitives.IDragCompletedEventArgs
{
extern(Windows):
	final double HorizontalChange()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IDragCompletedEventArgs).get_HorizontalChange(&_ret));
		return _ret;
	}
	final double VerticalChange()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IDragCompletedEventArgs).get_VerticalChange(&_ret));
		return _ret;
	}
	final bool Canceled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IDragCompletedEventArgs).get_Canceled(&_ret));
		return _ret;
	}
}

interface DragDeltaEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.Primitives.IDragDeltaEventArgs
{
extern(Windows):
	final double HorizontalChange()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IDragDeltaEventArgs).get_HorizontalChange(&_ret));
		return _ret;
	}
	final double VerticalChange()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IDragDeltaEventArgs).get_VerticalChange(&_ret));
		return _ret;
	}
}

interface DragStartedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.Primitives.IDragStartedEventArgs
{
extern(Windows):
	final double HorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IDragStartedEventArgs).get_HorizontalOffset(&_ret));
		return _ret;
	}
	final double VerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IDragStartedEventArgs).get_VerticalOffset(&_ret));
		return _ret;
	}
}

interface FlyoutBase : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IFlyoutBase, Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseOverrides, Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2, Windows.UI.Xaml.Controls.Primitives.IFlyoutBase3
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Primitives.FlyoutPlacementMode Placement()
	{
		Windows.UI.Xaml.Controls.Primitives.FlyoutPlacementMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase).get_Placement(&_ret));
		return _ret;
	}
	final void Placement(Windows.UI.Xaml.Controls.Primitives.FlyoutPlacementMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase).set_Placement(value));
	}
	final void ShowAt(Windows.UI.Xaml.FrameworkElement placementTarget)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase).abi_ShowAt(placementTarget));
	}
	final void Hide()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase).abi_Hide());
	}
	final Windows.UI.Xaml.Controls.Control CreatePresenter()
	{
		Windows.UI.Xaml.Controls.Control _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseOverrides).abi_CreatePresenter(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.FrameworkElement Target()
	{
		Windows.UI.Xaml.FrameworkElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2).get_Target(&_ret));
		return _ret;
	}
	final bool AllowFocusOnInteraction()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2).get_AllowFocusOnInteraction(&_ret));
		return _ret;
	}
	final void AllowFocusOnInteraction(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2).set_AllowFocusOnInteraction(value));
	}
	final Windows.UI.Xaml.Controls.LightDismissOverlayMode LightDismissOverlayMode()
	{
		Windows.UI.Xaml.Controls.LightDismissOverlayMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2).get_LightDismissOverlayMode(&_ret));
		return _ret;
	}
	final void LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2).set_LightDismissOverlayMode(value));
	}
	final bool AllowFocusWhenDisabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2).get_AllowFocusWhenDisabled(&_ret));
		return _ret;
	}
	final void AllowFocusWhenDisabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2).set_AllowFocusWhenDisabled(value));
	}
	final Windows.UI.Xaml.ElementSoundMode ElementSoundMode()
	{
		Windows.UI.Xaml.ElementSoundMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2).get_ElementSoundMode(&_ret));
		return _ret;
	}
	final void ElementSoundMode(Windows.UI.Xaml.ElementSoundMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2).set_ElementSoundMode(value));
	}
	final Windows.UI.Xaml.DependencyObject OverlayInputPassThroughElement()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase3).get_OverlayInputPassThroughElement(&_ret));
		return _ret;
	}
	final void OverlayInputPassThroughElement(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase3).set_OverlayInputPassThroughElement(value));
	}
}

interface FlyoutBaseClosingEventArgs : Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseClosingEventArgs
{
extern(Windows):
	final bool Cancel()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseClosingEventArgs).get_Cancel(&_ret));
		return _ret;
	}
	final void Cancel(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseClosingEventArgs).set_Cancel(value));
	}
}

interface GeneratorPositionHelper : Windows.UI.Xaml.Controls.Primitives.IGeneratorPositionHelper
{
}

interface GridViewItemPresenter : Windows.UI.Xaml.Controls.ContentPresenter, Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter
{
extern(Windows):
	final bool SelectionCheckMarkVisualEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_SelectionCheckMarkVisualEnabled(&_ret));
		return _ret;
	}
	final void SelectionCheckMarkVisualEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_SelectionCheckMarkVisualEnabled(value));
	}
	final Windows.UI.Xaml.Media.Brush CheckHintBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_CheckHintBrush(&_ret));
		return _ret;
	}
	final void CheckHintBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_CheckHintBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush CheckSelectingBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_CheckSelectingBrush(&_ret));
		return _ret;
	}
	final void CheckSelectingBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_CheckSelectingBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush CheckBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_CheckBrush(&_ret));
		return _ret;
	}
	final void CheckBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_CheckBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush DragBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_DragBackground(&_ret));
		return _ret;
	}
	final void DragBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_DragBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush DragForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_DragForeground(&_ret));
		return _ret;
	}
	final void DragForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_DragForeground(value));
	}
	final Windows.UI.Xaml.Media.Brush FocusBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_FocusBorderBrush(&_ret));
		return _ret;
	}
	final void FocusBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_FocusBorderBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush PlaceholderBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_PlaceholderBackground(&_ret));
		return _ret;
	}
	final void PlaceholderBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_PlaceholderBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush PointerOverBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_PointerOverBackground(&_ret));
		return _ret;
	}
	final void PointerOverBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_PointerOverBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_SelectedBackground(&_ret));
		return _ret;
	}
	final void SelectedBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_SelectedBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_SelectedForeground(&_ret));
		return _ret;
	}
	final void SelectedForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_SelectedForeground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedPointerOverBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_SelectedPointerOverBackground(&_ret));
		return _ret;
	}
	final void SelectedPointerOverBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_SelectedPointerOverBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedPointerOverBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_SelectedPointerOverBorderBrush(&_ret));
		return _ret;
	}
	final void SelectedPointerOverBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_SelectedPointerOverBorderBrush(value));
	}
	final Windows.UI.Xaml.Thickness SelectedBorderThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_SelectedBorderThickness(&_ret));
		return _ret;
	}
	final void SelectedBorderThickness(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_SelectedBorderThickness(value));
	}
	final double DisabledOpacity()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_DisabledOpacity(&_ret));
		return _ret;
	}
	final void DisabledOpacity(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_DisabledOpacity(value));
	}
	final double DragOpacity()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_DragOpacity(&_ret));
		return _ret;
	}
	final void DragOpacity(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_DragOpacity(value));
	}
	final double ReorderHintOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_ReorderHintOffset(&_ret));
		return _ret;
	}
	final void ReorderHintOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_ReorderHintOffset(value));
	}
	deprecated("Use ContentPresenter.HorizontalContentAlignment instead of GridViewItemPresenterHorizontalContentAlignment. For more info, see MSDN.")
	final Windows.UI.Xaml.HorizontalAlignment GridViewItemPresenterHorizontalContentAlignment()
	{
		Windows.UI.Xaml.HorizontalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_GridViewItemPresenterHorizontalContentAlignment(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.HorizontalContentAlignment instead of GridViewItemPresenterHorizontalContentAlignment. For more info, see MSDN.")
	final void GridViewItemPresenterHorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_GridViewItemPresenterHorizontalContentAlignment(value));
	}
	deprecated("Use ContentPresenter.VerticalContentAlignment instead of GridViewItemPresenterVerticalContentAlignment. For more info, see MSDN.")
	final Windows.UI.Xaml.VerticalAlignment GridViewItemPresenterVerticalContentAlignment()
	{
		Windows.UI.Xaml.VerticalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_GridViewItemPresenterVerticalContentAlignment(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.VerticalContentAlignment instead of GridViewItemPresenterVerticalContentAlignment. For more info, see MSDN.")
	final void GridViewItemPresenterVerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_GridViewItemPresenterVerticalContentAlignment(value));
	}
	deprecated("Use ContentPresenter.Padding instead of GridViewItemPresenterPadding. For more info, see MSDN.")
	final Windows.UI.Xaml.Thickness GridViewItemPresenterPadding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_GridViewItemPresenterPadding(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.Padding instead of GridViewItemPresenterPadding. For more info, see MSDN.")
	final void GridViewItemPresenterPadding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_GridViewItemPresenterPadding(value));
	}
	final Windows.UI.Xaml.Thickness PointerOverBackgroundMargin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_PointerOverBackgroundMargin(&_ret));
		return _ret;
	}
	final void PointerOverBackgroundMargin(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_PointerOverBackgroundMargin(value));
	}
	final Windows.UI.Xaml.Thickness ContentMargin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).get_ContentMargin(&_ret));
		return _ret;
	}
	final void ContentMargin(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter).set_ContentMargin(value));
	}
}

interface GridViewItemTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IGridViewItemTemplateSettings
{
extern(Windows):
	final INT32 DragItemsCount()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemTemplateSettings).get_DragItemsCount(&_ret));
		return _ret;
	}
}

interface ItemsChangedEventArgs : Windows.UI.Xaml.Controls.Primitives.IItemsChangedEventArgs
{
extern(Windows):
	final INT32 Action()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IItemsChangedEventArgs).get_Action(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Primitives.GeneratorPosition Position()
	{
		Windows.UI.Xaml.Controls.Primitives.GeneratorPosition _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IItemsChangedEventArgs).get_Position(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Primitives.GeneratorPosition OldPosition()
	{
		Windows.UI.Xaml.Controls.Primitives.GeneratorPosition _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IItemsChangedEventArgs).get_OldPosition(&_ret));
		return _ret;
	}
	final INT32 ItemCount()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IItemsChangedEventArgs).get_ItemCount(&_ret));
		return _ret;
	}
	final INT32 ItemUICount()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IItemsChangedEventArgs).get_ItemUICount(&_ret));
		return _ret;
	}
}

interface JumpListItemBackgroundConverter : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IJumpListItemBackgroundConverter, Windows.UI.Xaml.Data.IValueConverter
{
extern(Windows):
	final Windows.UI.Xaml.Media.Brush Enabled()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IJumpListItemBackgroundConverter).get_Enabled(&_ret));
		return _ret;
	}
	final void Enabled(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IJumpListItemBackgroundConverter).set_Enabled(value));
	}
	final Windows.UI.Xaml.Media.Brush Disabled()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IJumpListItemBackgroundConverter).get_Disabled(&_ret));
		return _ret;
	}
	final void Disabled(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IJumpListItemBackgroundConverter).set_Disabled(value));
	}
	final IInspectable Convert(IInspectable value, Windows.UI.Xaml.Interop.TypeName targetType, IInspectable parameter, HSTRING language)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IValueConverter).abi_Convert(value, targetType, parameter, language, &_ret));
		return _ret;
	}
	final IInspectable ConvertBack(IInspectable value, Windows.UI.Xaml.Interop.TypeName targetType, IInspectable parameter, HSTRING language)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IValueConverter).abi_ConvertBack(value, targetType, parameter, language, &_ret));
		return _ret;
	}
}

interface JumpListItemForegroundConverter : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IJumpListItemForegroundConverter, Windows.UI.Xaml.Data.IValueConverter
{
extern(Windows):
	final Windows.UI.Xaml.Media.Brush Enabled()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IJumpListItemForegroundConverter).get_Enabled(&_ret));
		return _ret;
	}
	final void Enabled(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IJumpListItemForegroundConverter).set_Enabled(value));
	}
	final Windows.UI.Xaml.Media.Brush Disabled()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IJumpListItemForegroundConverter).get_Disabled(&_ret));
		return _ret;
	}
	final void Disabled(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IJumpListItemForegroundConverter).set_Disabled(value));
	}
	final IInspectable Convert(IInspectable value, Windows.UI.Xaml.Interop.TypeName targetType, IInspectable parameter, HSTRING language)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IValueConverter).abi_Convert(value, targetType, parameter, language, &_ret));
		return _ret;
	}
	final IInspectable ConvertBack(IInspectable value, Windows.UI.Xaml.Interop.TypeName targetType, IInspectable parameter, HSTRING language)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IValueConverter).abi_ConvertBack(value, targetType, parameter, language, &_ret));
		return _ret;
	}
}

interface LayoutInformation : Windows.UI.Xaml.Controls.Primitives.ILayoutInformation
{
}

interface ListViewItemPresenter : Windows.UI.Xaml.Controls.ContentPresenter, Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter, Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2
{
extern(Windows):
	final bool SelectionCheckMarkVisualEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_SelectionCheckMarkVisualEnabled(&_ret));
		return _ret;
	}
	final void SelectionCheckMarkVisualEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_SelectionCheckMarkVisualEnabled(value));
	}
	final Windows.UI.Xaml.Media.Brush CheckHintBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_CheckHintBrush(&_ret));
		return _ret;
	}
	final void CheckHintBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_CheckHintBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush CheckSelectingBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_CheckSelectingBrush(&_ret));
		return _ret;
	}
	final void CheckSelectingBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_CheckSelectingBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush CheckBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_CheckBrush(&_ret));
		return _ret;
	}
	final void CheckBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_CheckBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush DragBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_DragBackground(&_ret));
		return _ret;
	}
	final void DragBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_DragBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush DragForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_DragForeground(&_ret));
		return _ret;
	}
	final void DragForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_DragForeground(value));
	}
	final Windows.UI.Xaml.Media.Brush FocusBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_FocusBorderBrush(&_ret));
		return _ret;
	}
	final void FocusBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_FocusBorderBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush PlaceholderBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_PlaceholderBackground(&_ret));
		return _ret;
	}
	final void PlaceholderBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_PlaceholderBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush PointerOverBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_PointerOverBackground(&_ret));
		return _ret;
	}
	final void PointerOverBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_PointerOverBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_SelectedBackground(&_ret));
		return _ret;
	}
	final void SelectedBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_SelectedBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_SelectedForeground(&_ret));
		return _ret;
	}
	final void SelectedForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_SelectedForeground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedPointerOverBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_SelectedPointerOverBackground(&_ret));
		return _ret;
	}
	final void SelectedPointerOverBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_SelectedPointerOverBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedPointerOverBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_SelectedPointerOverBorderBrush(&_ret));
		return _ret;
	}
	final void SelectedPointerOverBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_SelectedPointerOverBorderBrush(value));
	}
	final Windows.UI.Xaml.Thickness SelectedBorderThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_SelectedBorderThickness(&_ret));
		return _ret;
	}
	final void SelectedBorderThickness(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_SelectedBorderThickness(value));
	}
	final double DisabledOpacity()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_DisabledOpacity(&_ret));
		return _ret;
	}
	final void DisabledOpacity(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_DisabledOpacity(value));
	}
	final double DragOpacity()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_DragOpacity(&_ret));
		return _ret;
	}
	final void DragOpacity(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_DragOpacity(value));
	}
	final double ReorderHintOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_ReorderHintOffset(&_ret));
		return _ret;
	}
	final void ReorderHintOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_ReorderHintOffset(value));
	}
	deprecated("Use ContentPresenter.HorizontalContentAlignment instead of ListViewItemPresenterHorizontalContentAlignment. For more info, see MSDN.")
	final Windows.UI.Xaml.HorizontalAlignment ListViewItemPresenterHorizontalContentAlignment()
	{
		Windows.UI.Xaml.HorizontalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_ListViewItemPresenterHorizontalContentAlignment(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.HorizontalContentAlignment instead of ListViewItemPresenterHorizontalContentAlignment. For more info, see MSDN.")
	final void ListViewItemPresenterHorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_ListViewItemPresenterHorizontalContentAlignment(value));
	}
	deprecated("Use ContentPresenter.VerticalContentAlignment instead of ListViewItemPresenterVerticalContentAlignment. For more info, see MSDN.")
	final Windows.UI.Xaml.VerticalAlignment ListViewItemPresenterVerticalContentAlignment()
	{
		Windows.UI.Xaml.VerticalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_ListViewItemPresenterVerticalContentAlignment(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.VerticalContentAlignment instead of ListViewItemPresenterVerticalContentAlignment. For more info, see MSDN.")
	final void ListViewItemPresenterVerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_ListViewItemPresenterVerticalContentAlignment(value));
	}
	deprecated("Use ContentPresenter.Padding instead of GridViewItemPresenterPadding. For more info, see MSDN.")
	final Windows.UI.Xaml.Thickness ListViewItemPresenterPadding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_ListViewItemPresenterPadding(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.Padding instead of GridViewItemPresenterPadding. For more info, see MSDN.")
	final void ListViewItemPresenterPadding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_ListViewItemPresenterPadding(value));
	}
	final Windows.UI.Xaml.Thickness PointerOverBackgroundMargin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_PointerOverBackgroundMargin(&_ret));
		return _ret;
	}
	final void PointerOverBackgroundMargin(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_PointerOverBackgroundMargin(value));
	}
	final Windows.UI.Xaml.Thickness ContentMargin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).get_ContentMargin(&_ret));
		return _ret;
	}
	final void ContentMargin(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter).set_ContentMargin(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedPressedBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2).get_SelectedPressedBackground(&_ret));
		return _ret;
	}
	final void SelectedPressedBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2).set_SelectedPressedBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush PressedBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2).get_PressedBackground(&_ret));
		return _ret;
	}
	final void PressedBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2).set_PressedBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush CheckBoxBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2).get_CheckBoxBrush(&_ret));
		return _ret;
	}
	final void CheckBoxBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2).set_CheckBoxBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush FocusSecondaryBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2).get_FocusSecondaryBorderBrush(&_ret));
		return _ret;
	}
	final void FocusSecondaryBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2).set_FocusSecondaryBorderBrush(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenterCheckMode CheckMode()
	{
		Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenterCheckMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2).get_CheckMode(&_ret));
		return _ret;
	}
	final void CheckMode(Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenterCheckMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2).set_CheckMode(value));
	}
	final Windows.UI.Xaml.Media.Brush PointerOverForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2).get_PointerOverForeground(&_ret));
		return _ret;
	}
	final void PointerOverForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2).set_PointerOverForeground(value));
	}
}

interface ListViewItemTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IListViewItemTemplateSettings
{
extern(Windows):
	final INT32 DragItemsCount()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IListViewItemTemplateSettings).get_DragItemsCount(&_ret));
		return _ret;
	}
}

interface LoopingSelector : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.Primitives.ILoopingSelector
{
extern(Windows):
	final bool ShouldLoop()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector).get_ShouldLoop(&_ret));
		return _ret;
	}
	final void ShouldLoop(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector).set_ShouldLoop(value));
	}
	final Windows.Foundation.Collections.IVector!(IInspectable) Items()
	{
		Windows.Foundation.Collections.IVector!(IInspectable) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector).get_Items(&_ret));
		return _ret;
	}
	final void Items(Windows.Foundation.Collections.IVector!(IInspectable) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector).set_Items(value));
	}
	final INT32 SelectedIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector).get_SelectedIndex(&_ret));
		return _ret;
	}
	final void SelectedIndex(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector).set_SelectedIndex(value));
	}
	final IInspectable SelectedItem()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector).get_SelectedItem(&_ret));
		return _ret;
	}
	final void SelectedItem(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector).set_SelectedItem(value));
	}
	final INT32 ItemWidth()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector).get_ItemWidth(&_ret));
		return _ret;
	}
	final void ItemWidth(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector).set_ItemWidth(value));
	}
	final INT32 ItemHeight()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector).get_ItemHeight(&_ret));
		return _ret;
	}
	final void ItemHeight(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector).set_ItemHeight(value));
	}
	final Windows.UI.Xaml.DataTemplate ItemTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector).get_ItemTemplate(&_ret));
		return _ret;
	}
	final void ItemTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector).set_ItemTemplate(value));
	}
}

interface LoopingSelectorItem : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.Primitives.ILoopingSelectorItem
{
}

interface LoopingSelectorPanel : Windows.UI.Xaml.Controls.Canvas, Windows.UI.Xaml.Controls.Primitives.ILoopingSelectorPanel, Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo
{
extern(Windows):
	final bool AreHorizontalSnapPointsRegular()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo).get_AreHorizontalSnapPointsRegular(&_ret));
		return _ret;
	}
	final bool AreVerticalSnapPointsRegular()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo).get_AreVerticalSnapPointsRegular(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(FLOAT) GetIrregularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment)
	{
		Windows.Foundation.Collections.IVectorView!(FLOAT) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo).abi_GetIrregularSnapPoints(orientation, alignment, &_ret));
		return _ret;
	}
	final FLOAT GetRegularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment, FLOAT* out_offset)
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo).abi_GetRegularSnapPoints(orientation, alignment, out_offset, &_ret));
		return _ret;
	}
}

interface MenuFlyoutPresenterTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IMenuFlyoutPresenterTemplateSettings
{
extern(Windows):
	final double FlyoutContentMinWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IMenuFlyoutPresenterTemplateSettings).get_FlyoutContentMinWidth(&_ret));
		return _ret;
	}
}

interface OrientedVirtualizingPanel : Windows.UI.Xaml.Controls.VirtualizingPanel, Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel, Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo, Windows.UI.Xaml.Controls.IInsertionPanel
{
extern(Windows):
	final bool CanVerticallyScroll()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).get_CanVerticallyScroll(&_ret));
		return _ret;
	}
	final void CanVerticallyScroll(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).set_CanVerticallyScroll(value));
	}
	final bool CanHorizontallyScroll()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).get_CanHorizontallyScroll(&_ret));
		return _ret;
	}
	final void CanHorizontallyScroll(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).set_CanHorizontallyScroll(value));
	}
	final double ExtentWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).get_ExtentWidth(&_ret));
		return _ret;
	}
	final double ExtentHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).get_ExtentHeight(&_ret));
		return _ret;
	}
	final double ViewportWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).get_ViewportWidth(&_ret));
		return _ret;
	}
	final double ViewportHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).get_ViewportHeight(&_ret));
		return _ret;
	}
	final double HorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).get_HorizontalOffset(&_ret));
		return _ret;
	}
	final double VerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).get_VerticalOffset(&_ret));
		return _ret;
	}
	final IInspectable ScrollOwner()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).get_ScrollOwner(&_ret));
		return _ret;
	}
	final void ScrollOwner(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).set_ScrollOwner(value));
	}
	final void LineUp()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).abi_LineUp());
	}
	final void LineDown()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).abi_LineDown());
	}
	final void LineLeft()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).abi_LineLeft());
	}
	final void LineRight()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).abi_LineRight());
	}
	final void PageUp()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).abi_PageUp());
	}
	final void PageDown()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).abi_PageDown());
	}
	final void PageLeft()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).abi_PageLeft());
	}
	final void PageRight()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).abi_PageRight());
	}
	final void MouseWheelUp()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).abi_MouseWheelUp());
	}
	final void MouseWheelDown()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).abi_MouseWheelDown());
	}
	final void MouseWheelLeft()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).abi_MouseWheelLeft());
	}
	final void MouseWheelRight()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).abi_MouseWheelRight());
	}
	final void SetHorizontalOffset(double offset)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).abi_SetHorizontalOffset(offset));
	}
	final void SetVerticalOffset(double offset)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).abi_SetVerticalOffset(offset));
	}
	final Windows.Foundation.Rect MakeVisible(Windows.UI.Xaml.UIElement visual, Windows.Foundation.Rect rectangle)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel).abi_MakeVisible(visual, rectangle, &_ret));
		return _ret;
	}
	final bool AreHorizontalSnapPointsRegular()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo).get_AreHorizontalSnapPointsRegular(&_ret));
		return _ret;
	}
	final bool AreVerticalSnapPointsRegular()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo).get_AreVerticalSnapPointsRegular(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(FLOAT) GetIrregularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment)
	{
		Windows.Foundation.Collections.IVectorView!(FLOAT) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo).abi_GetIrregularSnapPoints(orientation, alignment, &_ret));
		return _ret;
	}
	final FLOAT GetRegularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment, FLOAT* out_offset)
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo).abi_GetRegularSnapPoints(orientation, alignment, out_offset, &_ret));
		return _ret;
	}
	final void GetInsertionIndexes(Windows.Foundation.Point position, INT32* out_first, INT32* out_second)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInsertionPanel).abi_GetInsertionIndexes(position, out_first, out_second));
	}
}

interface PickerFlyoutBase : Windows.UI.Xaml.Controls.Primitives.FlyoutBase, Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBase, Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBaseOverrides
{
extern(Windows):
	final void OnConfirmed()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBaseOverrides).abi_OnConfirmed());
	}
	final bool ShouldShowConfirmationButtons()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBaseOverrides).abi_ShouldShowConfirmationButtons(&_ret));
		return _ret;
	}
}

interface PivotHeaderItem : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.Primitives.IPivotHeaderItem
{
}

interface PivotHeaderPanel : Windows.UI.Xaml.Controls.Canvas, Windows.UI.Xaml.Controls.Primitives.IPivotHeaderPanel
{
}

interface PivotPanel : Windows.UI.Xaml.Controls.Panel, Windows.UI.Xaml.Controls.Primitives.IPivotPanel, Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo
{
extern(Windows):
	final bool AreHorizontalSnapPointsRegular()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo).get_AreHorizontalSnapPointsRegular(&_ret));
		return _ret;
	}
	final bool AreVerticalSnapPointsRegular()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo).get_AreVerticalSnapPointsRegular(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(FLOAT) GetIrregularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment)
	{
		Windows.Foundation.Collections.IVectorView!(FLOAT) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo).abi_GetIrregularSnapPoints(orientation, alignment, &_ret));
		return _ret;
	}
	final FLOAT GetRegularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment, FLOAT* out_offset)
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo).abi_GetRegularSnapPoints(orientation, alignment, out_offset, &_ret));
		return _ret;
	}
}

interface Popup : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.Primitives.IPopup, Windows.UI.Xaml.Controls.Primitives.IPopup2
{
extern(Windows):
	final Windows.UI.Xaml.UIElement Child()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IPopup).get_Child(&_ret));
		return _ret;
	}
	final void Child(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IPopup).set_Child(value));
	}
	final bool IsOpen()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IPopup).get_IsOpen(&_ret));
		return _ret;
	}
	final void IsOpen(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IPopup).set_IsOpen(value));
	}
	final double HorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IPopup).get_HorizontalOffset(&_ret));
		return _ret;
	}
	final void HorizontalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IPopup).set_HorizontalOffset(value));
	}
	final double VerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IPopup).get_VerticalOffset(&_ret));
		return _ret;
	}
	final void VerticalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IPopup).set_VerticalOffset(value));
	}
	final Windows.UI.Xaml.Media.Animation.TransitionCollection ChildTransitions()
	{
		Windows.UI.Xaml.Media.Animation.TransitionCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IPopup).get_ChildTransitions(&_ret));
		return _ret;
	}
	final void ChildTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IPopup).set_ChildTransitions(value));
	}
	final bool IsLightDismissEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IPopup).get_IsLightDismissEnabled(&_ret));
		return _ret;
	}
	final void IsLightDismissEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IPopup).set_IsLightDismissEnabled(value));
	}
	final Windows.UI.Xaml.Controls.LightDismissOverlayMode LightDismissOverlayMode()
	{
		Windows.UI.Xaml.Controls.LightDismissOverlayMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IPopup2).get_LightDismissOverlayMode(&_ret));
		return _ret;
	}
	final void LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IPopup2).set_LightDismissOverlayMode(value));
	}
}

interface ProgressBarTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings
{
extern(Windows):
	final double EllipseDiameter()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings).get_EllipseDiameter(&_ret));
		return _ret;
	}
	final double EllipseOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings).get_EllipseOffset(&_ret));
		return _ret;
	}
	final double EllipseAnimationWellPosition()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings).get_EllipseAnimationWellPosition(&_ret));
		return _ret;
	}
	final double EllipseAnimationEndPosition()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings).get_EllipseAnimationEndPosition(&_ret));
		return _ret;
	}
	final double ContainerAnimationStartPosition()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings).get_ContainerAnimationStartPosition(&_ret));
		return _ret;
	}
	final double ContainerAnimationEndPosition()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings).get_ContainerAnimationEndPosition(&_ret));
		return _ret;
	}
	final double IndicatorLengthDelta()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings).get_IndicatorLengthDelta(&_ret));
		return _ret;
	}
}

interface ProgressRingTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IProgressRingTemplateSettings
{
extern(Windows):
	final double EllipseDiameter()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IProgressRingTemplateSettings).get_EllipseDiameter(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Thickness EllipseOffset()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IProgressRingTemplateSettings).get_EllipseOffset(&_ret));
		return _ret;
	}
	final double MaxSideLength()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IProgressRingTemplateSettings).get_MaxSideLength(&_ret));
		return _ret;
	}
}

interface RangeBase : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.Primitives.IRangeBase, Windows.UI.Xaml.Controls.Primitives.IRangeBaseOverrides
{
extern(Windows):
	final double Minimum()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRangeBase).get_Minimum(&_ret));
		return _ret;
	}
	final void Minimum(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRangeBase).set_Minimum(value));
	}
	final double Maximum()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRangeBase).get_Maximum(&_ret));
		return _ret;
	}
	final void Maximum(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRangeBase).set_Maximum(value));
	}
	final double SmallChange()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRangeBase).get_SmallChange(&_ret));
		return _ret;
	}
	final void SmallChange(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRangeBase).set_SmallChange(value));
	}
	final double LargeChange()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRangeBase).get_LargeChange(&_ret));
		return _ret;
	}
	final void LargeChange(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRangeBase).set_LargeChange(value));
	}
	final double Value()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRangeBase).get_Value(&_ret));
		return _ret;
	}
	final void Value(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRangeBase).set_Value(value));
	}
	final void OnMinimumChanged(double oldMinimum, double newMinimum)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRangeBaseOverrides).abi_OnMinimumChanged(oldMinimum, newMinimum));
	}
	final void OnMaximumChanged(double oldMaximum, double newMaximum)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRangeBaseOverrides).abi_OnMaximumChanged(oldMaximum, newMaximum));
	}
	final void OnValueChanged(double oldValue, double newValue)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRangeBaseOverrides).abi_OnValueChanged(oldValue, newValue));
	}
}

interface RangeBaseValueChangedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.Primitives.IRangeBaseValueChangedEventArgs
{
extern(Windows):
	final double OldValue()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRangeBaseValueChangedEventArgs).get_OldValue(&_ret));
		return _ret;
	}
	final double NewValue()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRangeBaseValueChangedEventArgs).get_NewValue(&_ret));
		return _ret;
	}
}

interface RepeatButton : Windows.UI.Xaml.Controls.Primitives.ButtonBase, Windows.UI.Xaml.Controls.Primitives.IRepeatButton
{
extern(Windows):
	final INT32 Delay()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRepeatButton).get_Delay(&_ret));
		return _ret;
	}
	final void Delay(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRepeatButton).set_Delay(value));
	}
	final INT32 Interval()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRepeatButton).get_Interval(&_ret));
		return _ret;
	}
	final void Interval(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IRepeatButton).set_Interval(value));
	}
}

interface ScrollBar : Windows.UI.Xaml.Controls.Primitives.RangeBase, Windows.UI.Xaml.Controls.Primitives.IScrollBar
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Orientation Orientation()
	{
		Windows.UI.Xaml.Controls.Orientation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollBar).get_Orientation(&_ret));
		return _ret;
	}
	final void Orientation(Windows.UI.Xaml.Controls.Orientation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollBar).set_Orientation(value));
	}
	final double ViewportSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollBar).get_ViewportSize(&_ret));
		return _ret;
	}
	final void ViewportSize(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollBar).set_ViewportSize(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.ScrollingIndicatorMode IndicatorMode()
	{
		Windows.UI.Xaml.Controls.Primitives.ScrollingIndicatorMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollBar).get_IndicatorMode(&_ret));
		return _ret;
	}
	final void IndicatorMode(Windows.UI.Xaml.Controls.Primitives.ScrollingIndicatorMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollBar).set_IndicatorMode(value));
	}
}

interface ScrollEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.Primitives.IScrollEventArgs
{
extern(Windows):
	final double NewValue()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollEventArgs).get_NewValue(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Primitives.ScrollEventType ScrollEventType()
	{
		Windows.UI.Xaml.Controls.Primitives.ScrollEventType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IScrollEventArgs).get_ScrollEventType(&_ret));
		return _ret;
	}
}

interface Selector : Windows.UI.Xaml.Controls.ItemsControl, Windows.UI.Xaml.Controls.Primitives.ISelector
{
extern(Windows):
	final INT32 SelectedIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISelector).get_SelectedIndex(&_ret));
		return _ret;
	}
	final void SelectedIndex(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISelector).set_SelectedIndex(value));
	}
	final IInspectable SelectedItem()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISelector).get_SelectedItem(&_ret));
		return _ret;
	}
	final void SelectedItem(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISelector).set_SelectedItem(value));
	}
	final IInspectable SelectedValue()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISelector).get_SelectedValue(&_ret));
		return _ret;
	}
	final void SelectedValue(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISelector).set_SelectedValue(value));
	}
	final HSTRING SelectedValuePath()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISelector).get_SelectedValuePath(&_ret));
		return _ret;
	}
	final void SelectedValuePath(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISelector).set_SelectedValuePath(value));
	}
	final Windows.Foundation.IReference!(bool) IsSynchronizedWithCurrentItem()
	{
		Windows.Foundation.IReference!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISelector).get_IsSynchronizedWithCurrentItem(&_ret));
		return _ret;
	}
	final void IsSynchronizedWithCurrentItem(Windows.Foundation.IReference!(bool) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISelector).set_IsSynchronizedWithCurrentItem(value));
	}
}

interface SelectorItem : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.Primitives.ISelectorItem
{
extern(Windows):
	final bool IsSelected()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISelectorItem).get_IsSelected(&_ret));
		return _ret;
	}
	final void IsSelected(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISelectorItem).set_IsSelected(value));
	}
}

interface SettingsFlyoutTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.ISettingsFlyoutTemplateSettings
{
extern(Windows):
	final Windows.UI.Xaml.Media.Brush HeaderBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISettingsFlyoutTemplateSettings).get_HeaderBackground(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Brush HeaderForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISettingsFlyoutTemplateSettings).get_HeaderForeground(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Brush BorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISettingsFlyoutTemplateSettings).get_BorderBrush(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Thickness BorderThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISettingsFlyoutTemplateSettings).get_BorderThickness(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.ImageSource IconSource()
	{
		Windows.UI.Xaml.Media.ImageSource _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISettingsFlyoutTemplateSettings).get_IconSource(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Animation.TransitionCollection ContentTransitions()
	{
		Windows.UI.Xaml.Media.Animation.TransitionCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISettingsFlyoutTemplateSettings).get_ContentTransitions(&_ret));
		return _ret;
	}
}

interface SplitViewTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.ISplitViewTemplateSettings
{
extern(Windows):
	final double OpenPaneLength()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISplitViewTemplateSettings).get_OpenPaneLength(&_ret));
		return _ret;
	}
	final double NegativeOpenPaneLength()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISplitViewTemplateSettings).get_NegativeOpenPaneLength(&_ret));
		return _ret;
	}
	final double OpenPaneLengthMinusCompactLength()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISplitViewTemplateSettings).get_OpenPaneLengthMinusCompactLength(&_ret));
		return _ret;
	}
	final double NegativeOpenPaneLengthMinusCompactLength()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISplitViewTemplateSettings).get_NegativeOpenPaneLengthMinusCompactLength(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.GridLength OpenPaneGridLength()
	{
		Windows.UI.Xaml.GridLength _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISplitViewTemplateSettings).get_OpenPaneGridLength(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.GridLength CompactPaneGridLength()
	{
		Windows.UI.Xaml.GridLength _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ISplitViewTemplateSettings).get_CompactPaneGridLength(&_ret));
		return _ret;
	}
}

interface Thumb : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.Primitives.IThumb
{
extern(Windows):
	final bool IsDragging()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IThumb).get_IsDragging(&_ret));
		return _ret;
	}
	final void CancelDrag()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IThumb).abi_CancelDrag());
	}
}

interface TickBar : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.Primitives.ITickBar
{
extern(Windows):
	final Windows.UI.Xaml.Media.Brush Fill()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ITickBar).get_Fill(&_ret));
		return _ret;
	}
	final void Fill(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.ITickBar).set_Fill(value));
	}
}

interface ToggleButton : Windows.UI.Xaml.Controls.Primitives.ButtonBase, Windows.UI.Xaml.Controls.Primitives.IToggleButton, Windows.UI.Xaml.Controls.Primitives.IToggleButtonOverrides
{
extern(Windows):
	final Windows.Foundation.IReference!(bool) IsChecked()
	{
		Windows.Foundation.IReference!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IToggleButton).get_IsChecked(&_ret));
		return _ret;
	}
	final void IsChecked(Windows.Foundation.IReference!(bool) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IToggleButton).set_IsChecked(value));
	}
	final bool IsThreeState()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IToggleButton).get_IsThreeState(&_ret));
		return _ret;
	}
	final void IsThreeState(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IToggleButton).set_IsThreeState(value));
	}
	final void OnToggle()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IToggleButtonOverrides).abi_OnToggle());
	}
}

interface ToggleSwitchTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings
{
extern(Windows):
	final double KnobCurrentToOnOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings).get_KnobCurrentToOnOffset(&_ret));
		return _ret;
	}
	final double KnobCurrentToOffOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings).get_KnobCurrentToOffOffset(&_ret));
		return _ret;
	}
	final double KnobOnToOffOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings).get_KnobOnToOffOffset(&_ret));
		return _ret;
	}
	final double KnobOffToOnOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings).get_KnobOffToOnOffset(&_ret));
		return _ret;
	}
	final double CurtainCurrentToOnOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings).get_CurtainCurrentToOnOffset(&_ret));
		return _ret;
	}
	final double CurtainCurrentToOffOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings).get_CurtainCurrentToOffOffset(&_ret));
		return _ret;
	}
	final double CurtainOnToOffOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings).get_CurtainOnToOffOffset(&_ret));
		return _ret;
	}
	final double CurtainOffToOnOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings).get_CurtainOffToOnOffset(&_ret));
		return _ret;
	}
}

interface ToolTipTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IToolTipTemplateSettings
{
extern(Windows):
	final double FromHorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IToolTipTemplateSettings).get_FromHorizontalOffset(&_ret));
		return _ret;
	}
	final double FromVerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.Primitives.IToolTipTemplateSettings).get_FromVerticalOffset(&_ret));
		return _ret;
	}
}

enum AnimationDirection
{
	Left = 0,
	Top = 1,
	Right = 2,
	Bottom = 3
}

enum ComponentResourceLocation
{
	Application = 0,
	Nested = 1
}

enum EdgeTransitionLocation
{
	Left = 0,
	Top = 1,
	Right = 2,
	Bottom = 3
}

enum FlyoutPlacementMode
{
	Top = 0,
	Bottom = 1,
	Left = 2,
	Right = 3,
	Full = 4
}

enum GeneratorDirection
{
	Forward = 0,
	Backward = 1
}

enum GroupHeaderPlacement
{
	Top = 0,
	Left = 1
}

enum ListViewItemPresenterCheckMode
{
	Inline = 0,
	Overlay = 1
}

enum PlacementMode
{
	Bottom = 2,
	Left = 9,
	Mouse = 7,
	Right = 4,
	Top = 10
}

enum ScrollEventType
{
	SmallDecrement = 0,
	SmallIncrement = 1,
	LargeDecrement = 2,
	LargeIncrement = 3,
	ThumbPosition = 4,
	ThumbTrack = 5,
	First = 6,
	Last = 7,
	EndScroll = 8
}

enum ScrollingIndicatorMode
{
	None = 0,
	TouchIndicator = 1,
	MouseIndicator = 2
}

enum SliderSnapsTo
{
	StepValues = 0,
	Ticks = 1
}

enum SnapPointsAlignment
{
	Near = 0,
	Center = 1,
	Far = 2
}

enum TickPlacement
{
	None = 0,
	TopLeft = 1,
	BottomRight = 2,
	Outside = 3,
	Inline = 4
}