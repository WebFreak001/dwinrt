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
}

interface ButtonBase : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.Primitives.IButtonBase
{
}

interface CalendarPanel : Windows.UI.Xaml.Controls.Panel, Windows.UI.Xaml.Controls.Primitives.ICalendarPanel
{
}

interface CalendarViewTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings
{
}

interface CarouselPanel : Windows.UI.Xaml.Controls.VirtualizingPanel, Windows.UI.Xaml.Controls.Primitives.ICarouselPanel, Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo
{
}

interface ComboBoxTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings, Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings2
{
}

interface CommandBarTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings, Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings2, Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings3
{
}

interface DragCompletedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.Primitives.IDragCompletedEventArgs
{
}

interface DragDeltaEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.Primitives.IDragDeltaEventArgs
{
}

interface DragStartedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.Primitives.IDragStartedEventArgs
{
}

interface FlyoutBase : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IFlyoutBase, Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseOverrides, Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2, Windows.UI.Xaml.Controls.Primitives.IFlyoutBase3
{
}

interface FlyoutBaseClosingEventArgs : Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseClosingEventArgs
{
}

interface GeneratorPositionHelper : Windows.UI.Xaml.Controls.Primitives.IGeneratorPositionHelper
{
}

interface GridViewItemPresenter : Windows.UI.Xaml.Controls.ContentPresenter, Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter
{
}

interface GridViewItemTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IGridViewItemTemplateSettings
{
}

interface ItemsChangedEventArgs : Windows.UI.Xaml.Controls.Primitives.IItemsChangedEventArgs
{
}

interface JumpListItemBackgroundConverter : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IJumpListItemBackgroundConverter, Windows.UI.Xaml.Data.IValueConverter
{
}

interface JumpListItemForegroundConverter : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IJumpListItemForegroundConverter, Windows.UI.Xaml.Data.IValueConverter
{
}

interface LayoutInformation : Windows.UI.Xaml.Controls.Primitives.ILayoutInformation
{
}

interface ListViewItemPresenter : Windows.UI.Xaml.Controls.ContentPresenter, Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter, Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2
{
}

interface ListViewItemTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IListViewItemTemplateSettings
{
}

interface LoopingSelector : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.Primitives.ILoopingSelector
{
}

interface LoopingSelectorItem : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.Primitives.ILoopingSelectorItem
{
}

interface LoopingSelectorPanel : Windows.UI.Xaml.Controls.Canvas, Windows.UI.Xaml.Controls.Primitives.ILoopingSelectorPanel, Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo
{
}

interface MenuFlyoutPresenterTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IMenuFlyoutPresenterTemplateSettings
{
}

interface OrientedVirtualizingPanel : Windows.UI.Xaml.Controls.VirtualizingPanel, Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel, Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo, Windows.UI.Xaml.Controls.IInsertionPanel
{
}

interface PickerFlyoutBase : Windows.UI.Xaml.Controls.Primitives.FlyoutBase, Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBase, Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBaseOverrides
{
}

interface PivotHeaderItem : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.Primitives.IPivotHeaderItem
{
}

interface PivotHeaderPanel : Windows.UI.Xaml.Controls.Canvas, Windows.UI.Xaml.Controls.Primitives.IPivotHeaderPanel
{
}

interface PivotPanel : Windows.UI.Xaml.Controls.Panel, Windows.UI.Xaml.Controls.Primitives.IPivotPanel, Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo
{
}

interface Popup : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.Primitives.IPopup, Windows.UI.Xaml.Controls.Primitives.IPopup2
{
}

interface ProgressBarTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings
{
}

interface ProgressRingTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IProgressRingTemplateSettings
{
}

interface RangeBase : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.Primitives.IRangeBase, Windows.UI.Xaml.Controls.Primitives.IRangeBaseOverrides
{
}

interface RangeBaseValueChangedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.Primitives.IRangeBaseValueChangedEventArgs
{
}

interface RepeatButton : Windows.UI.Xaml.Controls.Primitives.ButtonBase, Windows.UI.Xaml.Controls.Primitives.IRepeatButton
{
}

interface ScrollBar : Windows.UI.Xaml.Controls.Primitives.RangeBase, Windows.UI.Xaml.Controls.Primitives.IScrollBar
{
}

interface ScrollEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.Primitives.IScrollEventArgs
{
}

interface Selector : Windows.UI.Xaml.Controls.ItemsControl, Windows.UI.Xaml.Controls.Primitives.ISelector
{
}

interface SelectorItem : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.Primitives.ISelectorItem
{
}

interface SettingsFlyoutTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.ISettingsFlyoutTemplateSettings
{
}

interface SplitViewTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.ISplitViewTemplateSettings
{
}

interface Thumb : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.Primitives.IThumb
{
}

interface TickBar : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.Primitives.ITickBar
{
}

interface ToggleButton : Windows.UI.Xaml.Controls.Primitives.ButtonBase, Windows.UI.Xaml.Controls.Primitives.IToggleButton, Windows.UI.Xaml.Controls.Primitives.IToggleButtonOverrides
{
}

interface ToggleSwitchTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings
{
}

interface ToolTipTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IToolTipTemplateSettings
{
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