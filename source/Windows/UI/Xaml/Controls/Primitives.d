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
	HRESULT abi_GetIrregularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment, Windows.Foundation.Collections.IVectorView!(float)* return_returnValue);
	HRESULT abi_GetRegularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment, float* out_offset, float* return_returnValue);
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
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings)this.asInterface(uuid("bcc2a863-eb35-423c-8389-d7827be3bf67"))).get_ClipRect(&_ret));
		return _ret;
	}
	final double CompactVerticalDelta()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings)this.asInterface(uuid("bcc2a863-eb35-423c-8389-d7827be3bf67"))).get_CompactVerticalDelta(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Thickness CompactRootMargin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings)this.asInterface(uuid("bcc2a863-eb35-423c-8389-d7827be3bf67"))).get_CompactRootMargin(&_ret));
		return _ret;
	}
	final double MinimalVerticalDelta()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings)this.asInterface(uuid("bcc2a863-eb35-423c-8389-d7827be3bf67"))).get_MinimalVerticalDelta(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Thickness MinimalRootMargin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings)this.asInterface(uuid("bcc2a863-eb35-423c-8389-d7827be3bf67"))).get_MinimalRootMargin(&_ret));
		return _ret;
	}
	final double HiddenVerticalDelta()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings)this.asInterface(uuid("bcc2a863-eb35-423c-8389-d7827be3bf67"))).get_HiddenVerticalDelta(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Thickness HiddenRootMargin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings)this.asInterface(uuid("bcc2a863-eb35-423c-8389-d7827be3bf67"))).get_HiddenRootMargin(&_ret));
		return _ret;
	}
}

interface ButtonBase : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.Primitives.IButtonBase
{
extern(Windows):
	final Windows.UI.Xaml.Controls.ClickMode ClickMode()
	{
		Windows.UI.Xaml.Controls.ClickMode _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).get_ClickMode(&_ret));
		return _ret;
	}
	final void ClickMode(Windows.UI.Xaml.Controls.ClickMode value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).set_ClickMode(value));
	}
	final bool IsPointerOver()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).get_IsPointerOver(&_ret));
		return _ret;
	}
	final bool IsPressed()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).get_IsPressed(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Input.ICommand Command()
	{
		Windows.UI.Xaml.Input.ICommand _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).get_Command(&_ret));
		return _ret;
	}
	final void Command(Windows.UI.Xaml.Input.ICommand value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).set_Command(value));
	}
	final IInspectable CommandParameter()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).get_CommandParameter(&_ret));
		return _ret;
	}
	final void CommandParameter(IInspectable value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).set_CommandParameter(value));
	}
	final EventRegistrationToken OnClick(void delegate(IInspectable, Windows.UI.Xaml.RoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).add_Click(event!(Windows.UI.Xaml.RoutedEventHandler, IInspectable, Windows.UI.Xaml.RoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeClick(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).remove_Click(token));
	}

	private static Windows.UI.Xaml.Controls.Primitives.IButtonBaseStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.IButtonBaseStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.IButtonBaseStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty ClickModeProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ClickModeProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IsPointerOverProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsPointerOverProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IsPressedProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsPressedProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CommandProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CommandProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CommandParameterProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CommandParameterProperty(&_ret));
		return _ret;
	}
	static ButtonBase New()
	{
		IInspectable outer, inner;
		ButtonBase ret;
		Debug.OK(activationFactory!(ButtonBase, Windows.UI.Xaml.Controls.Primitives.IButtonBaseFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(ButtonBase, ButtonBase, Windows.UI.Xaml.Controls.Primitives.IButtonBaseFactory)
class ButtonBaseT(Base) : AgileObject!Base, ButtonBase
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_ClickMode(Windows.UI.Xaml.Controls.ClickMode* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).get_ClickMode(return_value); }
	override HRESULT set_ClickMode(Windows.UI.Xaml.Controls.ClickMode value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).set_ClickMode(value); }
	override HRESULT get_IsPointerOver(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).get_IsPointerOver(return_value); }
	override HRESULT get_IsPressed(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).get_IsPressed(return_value); }
	override HRESULT get_Command(Windows.UI.Xaml.Input.ICommand* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).get_Command(return_value); }
	override HRESULT set_Command(Windows.UI.Xaml.Input.ICommand value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).set_Command(value); }
	override HRESULT get_CommandParameter(IInspectable* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).get_CommandParameter(return_value); }
	override HRESULT set_CommandParameter(IInspectable value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).set_CommandParameter(value); }
	override HRESULT add_Click(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).add_Click(value, return_token); }
	override HRESULT remove_Click(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IButtonBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798674"))).remove_Click(token); }

	this() {}
	IInspectable m_inner;
}

interface CalendarPanel : Windows.UI.Xaml.Controls.Panel, Windows.UI.Xaml.Controls.Primitives.ICalendarPanel
{
	static CalendarPanel New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(CalendarPanel).abi_ActivateInstance(&ret));
		return cast(CalendarPanel) ret;
	}
}

interface CalendarViewTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings
{
extern(Windows):
	final double MinViewWidth()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings)this.asInterface(uuid("56c71483-64e1-477c-8a0b-cb2f3334b9b0"))).get_MinViewWidth(&_ret));
		return _ret;
	}
	final HSTRING HeaderText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings)this.asInterface(uuid("56c71483-64e1-477c-8a0b-cb2f3334b9b0"))).get_HeaderText(&_ret));
		return _ret;
	}
	final HSTRING WeekDay1()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings)this.asInterface(uuid("56c71483-64e1-477c-8a0b-cb2f3334b9b0"))).get_WeekDay1(&_ret));
		return _ret;
	}
	final HSTRING WeekDay2()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings)this.asInterface(uuid("56c71483-64e1-477c-8a0b-cb2f3334b9b0"))).get_WeekDay2(&_ret));
		return _ret;
	}
	final HSTRING WeekDay3()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings)this.asInterface(uuid("56c71483-64e1-477c-8a0b-cb2f3334b9b0"))).get_WeekDay3(&_ret));
		return _ret;
	}
	final HSTRING WeekDay4()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings)this.asInterface(uuid("56c71483-64e1-477c-8a0b-cb2f3334b9b0"))).get_WeekDay4(&_ret));
		return _ret;
	}
	final HSTRING WeekDay5()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings)this.asInterface(uuid("56c71483-64e1-477c-8a0b-cb2f3334b9b0"))).get_WeekDay5(&_ret));
		return _ret;
	}
	final HSTRING WeekDay6()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings)this.asInterface(uuid("56c71483-64e1-477c-8a0b-cb2f3334b9b0"))).get_WeekDay6(&_ret));
		return _ret;
	}
	final HSTRING WeekDay7()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings)this.asInterface(uuid("56c71483-64e1-477c-8a0b-cb2f3334b9b0"))).get_WeekDay7(&_ret));
		return _ret;
	}
	final bool HasMoreContentAfter()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings)this.asInterface(uuid("56c71483-64e1-477c-8a0b-cb2f3334b9b0"))).get_HasMoreContentAfter(&_ret));
		return _ret;
	}
	final bool HasMoreContentBefore()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings)this.asInterface(uuid("56c71483-64e1-477c-8a0b-cb2f3334b9b0"))).get_HasMoreContentBefore(&_ret));
		return _ret;
	}
	final bool HasMoreViews()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings)this.asInterface(uuid("56c71483-64e1-477c-8a0b-cb2f3334b9b0"))).get_HasMoreViews(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect ClipRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings)this.asInterface(uuid("56c71483-64e1-477c-8a0b-cb2f3334b9b0"))).get_ClipRect(&_ret));
		return _ret;
	}
	final double CenterX()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings)this.asInterface(uuid("56c71483-64e1-477c-8a0b-cb2f3334b9b0"))).get_CenterX(&_ret));
		return _ret;
	}
	final double CenterY()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings)this.asInterface(uuid("56c71483-64e1-477c-8a0b-cb2f3334b9b0"))).get_CenterY(&_ret));
		return _ret;
	}
}

interface CarouselPanel : Windows.UI.Xaml.Controls.VirtualizingPanel, Windows.UI.Xaml.Controls.Primitives.ICarouselPanel, Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo
{
extern(Windows):
	final bool CanVerticallyScroll()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_CanVerticallyScroll(&_ret));
		return _ret;
	}
	final void CanVerticallyScroll(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).set_CanVerticallyScroll(value));
	}
	final bool CanHorizontallyScroll()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_CanHorizontallyScroll(&_ret));
		return _ret;
	}
	final void CanHorizontallyScroll(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).set_CanHorizontallyScroll(value));
	}
	final double ExtentWidth()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_ExtentWidth(&_ret));
		return _ret;
	}
	final double ExtentHeight()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_ExtentHeight(&_ret));
		return _ret;
	}
	final double ViewportWidth()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_ViewportWidth(&_ret));
		return _ret;
	}
	final double ViewportHeight()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_ViewportHeight(&_ret));
		return _ret;
	}
	final double HorizontalOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_HorizontalOffset(&_ret));
		return _ret;
	}
	final double VerticalOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_VerticalOffset(&_ret));
		return _ret;
	}
	final IInspectable ScrollOwner()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_ScrollOwner(&_ret));
		return _ret;
	}
	final void ScrollOwner(IInspectable value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).set_ScrollOwner(value));
	}
	final void LineUp()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_LineUp());
	}
	final void LineDown()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_LineDown());
	}
	final void LineLeft()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_LineLeft());
	}
	final void LineRight()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_LineRight());
	}
	final void PageUp()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_PageUp());
	}
	final void PageDown()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_PageDown());
	}
	final void PageLeft()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_PageLeft());
	}
	final void PageRight()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_PageRight());
	}
	final void MouseWheelUp()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_MouseWheelUp());
	}
	final void MouseWheelDown()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_MouseWheelDown());
	}
	final void MouseWheelLeft()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_MouseWheelLeft());
	}
	final void MouseWheelRight()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_MouseWheelRight());
	}
	final void SetHorizontalOffset(double offset)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_SetHorizontalOffset(offset));
	}
	final void SetVerticalOffset(double offset)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_SetVerticalOffset(offset));
	}
	final Windows.Foundation.Rect MakeVisible(Windows.UI.Xaml.UIElement visual, Windows.Foundation.Rect rectangle)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)this.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_MakeVisible(visual, rectangle, &_ret));
		return _ret;
	}
	final bool AreHorizontalSnapPointsRegular()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).get_AreHorizontalSnapPointsRegular(&_ret));
		return _ret;
	}
	final bool AreVerticalSnapPointsRegular()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).get_AreVerticalSnapPointsRegular(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnHorizontalSnapPointsChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).add_HorizontalSnapPointsChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeHorizontalSnapPointsChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).remove_HorizontalSnapPointsChanged(token));
	}
	final EventRegistrationToken OnVerticalSnapPointsChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).add_VerticalSnapPointsChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeVerticalSnapPointsChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).remove_VerticalSnapPointsChanged(token));
	}
	final Windows.Foundation.Collections.IVectorView!(float) GetIrregularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment)
	{
		Windows.Foundation.Collections.IVectorView!(float) _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).abi_GetIrregularSnapPoints(orientation, alignment, &_ret));
		return _ret;
	}
	final float GetRegularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment, float* out_offset)
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).abi_GetRegularSnapPoints(orientation, alignment, out_offset, &_ret));
		return _ret;
	}
	static CarouselPanel New()
	{
		IInspectable outer, inner;
		CarouselPanel ret;
		Debug.OK(activationFactory!(CarouselPanel, Windows.UI.Xaml.Controls.Primitives.ICarouselPanelFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(CarouselPanel, CarouselPanel, Windows.UI.Xaml.Controls.Primitives.ICarouselPanelFactory)
class CarouselPanelT(Base) : AgileObject!Base, CarouselPanel
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_CanVerticallyScroll(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_CanVerticallyScroll(return_value); }
	override HRESULT set_CanVerticallyScroll(bool value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).set_CanVerticallyScroll(value); }
	override HRESULT get_CanHorizontallyScroll(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_CanHorizontallyScroll(return_value); }
	override HRESULT set_CanHorizontallyScroll(bool value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).set_CanHorizontallyScroll(value); }
	override HRESULT get_ExtentWidth(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_ExtentWidth(return_value); }
	override HRESULT get_ExtentHeight(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_ExtentHeight(return_value); }
	override HRESULT get_ViewportWidth(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_ViewportWidth(return_value); }
	override HRESULT get_ViewportHeight(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_ViewportHeight(return_value); }
	override HRESULT get_HorizontalOffset(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_HorizontalOffset(return_value); }
	override HRESULT get_VerticalOffset(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_VerticalOffset(return_value); }
	override HRESULT get_ScrollOwner(IInspectable* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).get_ScrollOwner(return_value); }
	override HRESULT set_ScrollOwner(IInspectable value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).set_ScrollOwner(value); }
	override HRESULT abi_LineUp() { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_LineUp(); }
	override HRESULT abi_LineDown() { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_LineDown(); }
	override HRESULT abi_LineLeft() { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_LineLeft(); }
	override HRESULT abi_LineRight() { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_LineRight(); }
	override HRESULT abi_PageUp() { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_PageUp(); }
	override HRESULT abi_PageDown() { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_PageDown(); }
	override HRESULT abi_PageLeft() { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_PageLeft(); }
	override HRESULT abi_PageRight() { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_PageRight(); }
	override HRESULT abi_MouseWheelUp() { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_MouseWheelUp(); }
	override HRESULT abi_MouseWheelDown() { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_MouseWheelDown(); }
	override HRESULT abi_MouseWheelLeft() { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_MouseWheelLeft(); }
	override HRESULT abi_MouseWheelRight() { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_MouseWheelRight(); }
	override HRESULT abi_SetHorizontalOffset(double offset) { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_SetHorizontalOffset(offset); }
	override HRESULT abi_SetVerticalOffset(double offset) { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_SetVerticalOffset(offset); }
	override HRESULT abi_MakeVisible(Windows.UI.Xaml.UIElement visual, Windows.Foundation.Rect rectangle, Windows.Foundation.Rect* return_returnValue) { return (cast(Windows.UI.Xaml.Controls.Primitives.ICarouselPanel)m_inner.asInterface(uuid("deab78b2-373b-4151-8785-e544d0d9362b"))).abi_MakeVisible(visual, rectangle, return_returnValue); }

	override HRESULT get_AreHorizontalSnapPointsRegular(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)m_inner.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).get_AreHorizontalSnapPointsRegular(return_value); }
	override HRESULT get_AreVerticalSnapPointsRegular(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)m_inner.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).get_AreVerticalSnapPointsRegular(return_value); }
	override HRESULT add_HorizontalSnapPointsChanged(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)m_inner.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).add_HorizontalSnapPointsChanged(value, return_token); }
	override HRESULT remove_HorizontalSnapPointsChanged(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)m_inner.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).remove_HorizontalSnapPointsChanged(token); }
	override HRESULT add_VerticalSnapPointsChanged(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)m_inner.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).add_VerticalSnapPointsChanged(value, return_token); }
	override HRESULT remove_VerticalSnapPointsChanged(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)m_inner.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).remove_VerticalSnapPointsChanged(token); }
	override HRESULT abi_GetIrregularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment, Windows.Foundation.Collections.IVectorView!(float)* return_returnValue) { return (cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)m_inner.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).abi_GetIrregularSnapPoints(orientation, alignment, return_returnValue); }
	override HRESULT abi_GetRegularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment, float* out_offset, float* return_returnValue) { return (cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)m_inner.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).abi_GetRegularSnapPoints(orientation, alignment, out_offset, return_returnValue); }

	this() {}
	IInspectable m_inner;
}

interface ComboBoxTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings, Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings2
{
extern(Windows):
	final double DropDownOpenedHeight()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings)this.asInterface(uuid("83285c4e-17f6-4aa3-b61b-e87c718604ea"))).get_DropDownOpenedHeight(&_ret));
		return _ret;
	}
	final double DropDownClosedHeight()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings)this.asInterface(uuid("83285c4e-17f6-4aa3-b61b-e87c718604ea"))).get_DropDownClosedHeight(&_ret));
		return _ret;
	}
	final double DropDownOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings)this.asInterface(uuid("83285c4e-17f6-4aa3-b61b-e87c718604ea"))).get_DropDownOffset(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Primitives.AnimationDirection SelectedItemDirection()
	{
		Windows.UI.Xaml.Controls.Primitives.AnimationDirection _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings)this.asInterface(uuid("83285c4e-17f6-4aa3-b61b-e87c718604ea"))).get_SelectedItemDirection(&_ret));
		return _ret;
	}
	final double DropDownContentMinWidth()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings2)this.asInterface(uuid("00e90cd7-68be-449d-b5a7-76e26f703e9b"))).get_DropDownContentMinWidth(&_ret));
		return _ret;
	}
}

interface CommandBarTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings, Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings2, Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings3
{
extern(Windows):
	final double ContentHeight()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings)this.asInterface(uuid("61c8f92c-05aa-414a-a2ae-482c5a46c08e"))).get_ContentHeight(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect OverflowContentClipRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings)this.asInterface(uuid("61c8f92c-05aa-414a-a2ae-482c5a46c08e"))).get_OverflowContentClipRect(&_ret));
		return _ret;
	}
	final double OverflowContentMinWidth()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings)this.asInterface(uuid("61c8f92c-05aa-414a-a2ae-482c5a46c08e"))).get_OverflowContentMinWidth(&_ret));
		return _ret;
	}
	final double OverflowContentMaxHeight()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings)this.asInterface(uuid("61c8f92c-05aa-414a-a2ae-482c5a46c08e"))).get_OverflowContentMaxHeight(&_ret));
		return _ret;
	}
	final double OverflowContentHorizontalOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings)this.asInterface(uuid("61c8f92c-05aa-414a-a2ae-482c5a46c08e"))).get_OverflowContentHorizontalOffset(&_ret));
		return _ret;
	}
	final double OverflowContentHeight()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings)this.asInterface(uuid("61c8f92c-05aa-414a-a2ae-482c5a46c08e"))).get_OverflowContentHeight(&_ret));
		return _ret;
	}
	final double NegativeOverflowContentHeight()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings)this.asInterface(uuid("61c8f92c-05aa-414a-a2ae-482c5a46c08e"))).get_NegativeOverflowContentHeight(&_ret));
		return _ret;
	}
	final double OverflowContentMaxWidth()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings2)this.asInterface(uuid("fbb24f93-c2e2-4177-a2b6-3cd705073cf6"))).get_OverflowContentMaxWidth(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Visibility EffectiveOverflowButtonVisibility()
	{
		Windows.UI.Xaml.Visibility _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings3)this.asInterface(uuid("3bd71eba-3403-4bfe-842d-2ce8c511d245"))).get_EffectiveOverflowButtonVisibility(&_ret));
		return _ret;
	}
}

interface DragCompletedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.Primitives.IDragCompletedEventArgs
{
extern(Windows):
	final double HorizontalChange()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IDragCompletedEventArgs)this.asInterface(uuid("b04f29a1-bd16-48f6-a511-9c2763641331"))).get_HorizontalChange(&_ret));
		return _ret;
	}
	final double VerticalChange()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IDragCompletedEventArgs)this.asInterface(uuid("b04f29a1-bd16-48f6-a511-9c2763641331"))).get_VerticalChange(&_ret));
		return _ret;
	}
	final bool Canceled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IDragCompletedEventArgs)this.asInterface(uuid("b04f29a1-bd16-48f6-a511-9c2763641331"))).get_Canceled(&_ret));
		return _ret;
	}
}
@makable!(DragCompletedEventArgs, DragCompletedEventArgs, Windows.UI.Xaml.Controls.Primitives.IDragCompletedEventArgsFactory)
class DragCompletedEventArgsT(Base) : AgileObject!Base, DragCompletedEventArgs
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_HorizontalChange(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IDragCompletedEventArgs)m_inner.asInterface(uuid("b04f29a1-bd16-48f6-a511-9c2763641331"))).get_HorizontalChange(return_value); }
	override HRESULT get_VerticalChange(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IDragCompletedEventArgs)m_inner.asInterface(uuid("b04f29a1-bd16-48f6-a511-9c2763641331"))).get_VerticalChange(return_value); }
	override HRESULT get_Canceled(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IDragCompletedEventArgs)m_inner.asInterface(uuid("b04f29a1-bd16-48f6-a511-9c2763641331"))).get_Canceled(return_value); }

	this() {}
	IInspectable m_inner;
}

interface DragDeltaEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.Primitives.IDragDeltaEventArgs
{
extern(Windows):
	final double HorizontalChange()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IDragDeltaEventArgs)this.asInterface(uuid("2c2dd73c-2806-49fc-aae9-6d792b572b6a"))).get_HorizontalChange(&_ret));
		return _ret;
	}
	final double VerticalChange()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IDragDeltaEventArgs)this.asInterface(uuid("2c2dd73c-2806-49fc-aae9-6d792b572b6a"))).get_VerticalChange(&_ret));
		return _ret;
	}
}
@makable!(DragDeltaEventArgs, DragDeltaEventArgs, Windows.UI.Xaml.Controls.Primitives.IDragDeltaEventArgsFactory)
class DragDeltaEventArgsT(Base) : AgileObject!Base, DragDeltaEventArgs
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_HorizontalChange(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IDragDeltaEventArgs)m_inner.asInterface(uuid("2c2dd73c-2806-49fc-aae9-6d792b572b6a"))).get_HorizontalChange(return_value); }
	override HRESULT get_VerticalChange(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IDragDeltaEventArgs)m_inner.asInterface(uuid("2c2dd73c-2806-49fc-aae9-6d792b572b6a"))).get_VerticalChange(return_value); }

	this() {}
	IInspectable m_inner;
}

interface DragStartedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.Primitives.IDragStartedEventArgs
{
extern(Windows):
	final double HorizontalOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IDragStartedEventArgs)this.asInterface(uuid("9f915dd0-a124-4366-bd85-2408214aeed4"))).get_HorizontalOffset(&_ret));
		return _ret;
	}
	final double VerticalOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IDragStartedEventArgs)this.asInterface(uuid("9f915dd0-a124-4366-bd85-2408214aeed4"))).get_VerticalOffset(&_ret));
		return _ret;
	}
}
@makable!(DragStartedEventArgs, DragStartedEventArgs, Windows.UI.Xaml.Controls.Primitives.IDragStartedEventArgsFactory)
class DragStartedEventArgsT(Base) : AgileObject!Base, DragStartedEventArgs
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_HorizontalOffset(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IDragStartedEventArgs)m_inner.asInterface(uuid("9f915dd0-a124-4366-bd85-2408214aeed4"))).get_HorizontalOffset(return_value); }
	override HRESULT get_VerticalOffset(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IDragStartedEventArgs)m_inner.asInterface(uuid("9f915dd0-a124-4366-bd85-2408214aeed4"))).get_VerticalOffset(return_value); }

	this() {}
	IInspectable m_inner;
}

interface FlyoutBase : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IFlyoutBase, Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseOverrides, Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2, Windows.UI.Xaml.Controls.Primitives.IFlyoutBase3
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Primitives.FlyoutPlacementMode Placement()
	{
		Windows.UI.Xaml.Controls.Primitives.FlyoutPlacementMode _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)this.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).get_Placement(&_ret));
		return _ret;
	}
	final void Placement(Windows.UI.Xaml.Controls.Primitives.FlyoutPlacementMode value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)this.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).set_Placement(value));
	}
	final EventRegistrationToken OnOpened(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)this.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).add_Opened(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeOpened(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)this.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).remove_Opened(token));
	}
	final EventRegistrationToken OnClosed(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)this.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).add_Closed(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeClosed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)this.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).remove_Closed(token));
	}
	final EventRegistrationToken OnOpening(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)this.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).add_Opening(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeOpening(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)this.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).remove_Opening(token));
	}
	final void ShowAt(Windows.UI.Xaml.FrameworkElement placementTarget)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)this.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).abi_ShowAt(placementTarget));
	}
	final void Hide()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)this.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).abi_Hide());
	}
	final Windows.UI.Xaml.FrameworkElement Target()
	{
		Windows.UI.Xaml.FrameworkElement _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)this.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).get_Target(&_ret));
		return _ret;
	}
	final bool AllowFocusOnInteraction()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)this.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).get_AllowFocusOnInteraction(&_ret));
		return _ret;
	}
	final void AllowFocusOnInteraction(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)this.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).set_AllowFocusOnInteraction(value));
	}
	final Windows.UI.Xaml.Controls.LightDismissOverlayMode LightDismissOverlayMode()
	{
		Windows.UI.Xaml.Controls.LightDismissOverlayMode _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)this.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).get_LightDismissOverlayMode(&_ret));
		return _ret;
	}
	final void LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)this.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).set_LightDismissOverlayMode(value));
	}
	final bool AllowFocusWhenDisabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)this.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).get_AllowFocusWhenDisabled(&_ret));
		return _ret;
	}
	final void AllowFocusWhenDisabled(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)this.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).set_AllowFocusWhenDisabled(value));
	}
	final Windows.UI.Xaml.ElementSoundMode ElementSoundMode()
	{
		Windows.UI.Xaml.ElementSoundMode _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)this.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).get_ElementSoundMode(&_ret));
		return _ret;
	}
	final void ElementSoundMode(Windows.UI.Xaml.ElementSoundMode value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)this.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).set_ElementSoundMode(value));
	}
	final EventRegistrationToken OnClosing(void delegate(Windows.UI.Xaml.Controls.Primitives.FlyoutBase, Windows.UI.Xaml.Controls.Primitives.FlyoutBaseClosingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)this.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).add_Closing(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Primitives.FlyoutBase, Windows.UI.Xaml.Controls.Primitives.FlyoutBaseClosingEventArgs), Windows.UI.Xaml.Controls.Primitives.FlyoutBase, Windows.UI.Xaml.Controls.Primitives.FlyoutBaseClosingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeClosing(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)this.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).remove_Closing(token));
	}
	final Windows.UI.Xaml.DependencyObject OverlayInputPassThroughElement()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase3)this.asInterface(uuid("a89c9712-48e0-4240-95b9-0dfd0826a8d3"))).get_OverlayInputPassThroughElement(&_ret));
		return _ret;
	}
	final void OverlayInputPassThroughElement(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase3)this.asInterface(uuid("a89c9712-48e0-4240-95b9-0dfd0826a8d3"))).set_OverlayInputPassThroughElement(value));
	}

	private static Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty PlacementProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PlacementProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty AttachedFlyoutProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_AttachedFlyoutProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.Controls.Primitives.FlyoutBase GetAttachedFlyout(Windows.UI.Xaml.FrameworkElement element)
	{
		Windows.UI.Xaml.Controls.Primitives.FlyoutBase _ret;
		Debug.OK(staticInstance.abi_GetAttachedFlyout(element, &_ret));
		return _ret;
	}
	static void SetAttachedFlyout(Windows.UI.Xaml.FrameworkElement element, Windows.UI.Xaml.Controls.Primitives.FlyoutBase value)
	{
		Debug.OK(staticInstance.abi_SetAttachedFlyout(element, value));
	}
	static void ShowAttachedFlyout(Windows.UI.Xaml.FrameworkElement flyoutOwner)
	{
		Debug.OK(staticInstance.abi_ShowAttachedFlyout(flyoutOwner));
	}
	static FlyoutBase New()
	{
		IInspectable outer, inner;
		FlyoutBase ret;
		Debug.OK(activationFactory!(FlyoutBase, Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(FlyoutBase, FlyoutBase, Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseFactory)
class FlyoutBaseT(Base) : AgileObject!Base, FlyoutBase
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Placement(Windows.UI.Xaml.Controls.Primitives.FlyoutPlacementMode* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)m_inner.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).get_Placement(return_value); }
	override HRESULT set_Placement(Windows.UI.Xaml.Controls.Primitives.FlyoutPlacementMode value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)m_inner.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).set_Placement(value); }
	override HRESULT add_Opened(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)m_inner.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).add_Opened(value, return_token); }
	override HRESULT remove_Opened(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)m_inner.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).remove_Opened(token); }
	override HRESULT add_Closed(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)m_inner.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).add_Closed(value, return_token); }
	override HRESULT remove_Closed(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)m_inner.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).remove_Closed(token); }
	override HRESULT add_Opening(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)m_inner.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).add_Opening(value, return_token); }
	override HRESULT remove_Opening(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)m_inner.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).remove_Opening(token); }
	override HRESULT abi_ShowAt(Windows.UI.Xaml.FrameworkElement placementTarget) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)m_inner.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).abi_ShowAt(placementTarget); }
	override HRESULT abi_Hide() { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase)m_inner.asInterface(uuid("723eea0b-d12e-430d-a9f0-9bb32bbf9913"))).abi_Hide(); }

	override HRESULT abi_CreatePresenter(Windows.UI.Xaml.Controls.Control* return_returnValue) { this.CreatePresenter(return_returnValue); return S_OK; }
	void CreatePresenter(Windows.UI.Xaml.Controls.Control* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseOverrides)m_inner.asInterface(uuid("101dec86-6f4d-45a4-9d0e-3ece6f16977e"))).abi_CreatePresenter(return_returnValue)); }

	override HRESULT get_Target(Windows.UI.Xaml.FrameworkElement* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)m_inner.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).get_Target(return_value); }
	override HRESULT get_AllowFocusOnInteraction(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)m_inner.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).get_AllowFocusOnInteraction(return_value); }
	override HRESULT set_AllowFocusOnInteraction(bool value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)m_inner.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).set_AllowFocusOnInteraction(value); }
	override HRESULT get_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)m_inner.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).get_LightDismissOverlayMode(return_value); }
	override HRESULT set_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)m_inner.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).set_LightDismissOverlayMode(value); }
	override HRESULT get_AllowFocusWhenDisabled(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)m_inner.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).get_AllowFocusWhenDisabled(return_value); }
	override HRESULT set_AllowFocusWhenDisabled(bool value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)m_inner.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).set_AllowFocusWhenDisabled(value); }
	override HRESULT get_ElementSoundMode(Windows.UI.Xaml.ElementSoundMode* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)m_inner.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).get_ElementSoundMode(return_value); }
	override HRESULT set_ElementSoundMode(Windows.UI.Xaml.ElementSoundMode value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)m_inner.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).set_ElementSoundMode(value); }
	override HRESULT add_Closing(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Primitives.FlyoutBase, Windows.UI.Xaml.Controls.Primitives.FlyoutBaseClosingEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)m_inner.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).add_Closing(value, return_token); }
	override HRESULT remove_Closing(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2)m_inner.asInterface(uuid("f82b435e-65b3-41c6-a9e2-77b67bc4c00c"))).remove_Closing(token); }

	override HRESULT get_OverlayInputPassThroughElement(Windows.UI.Xaml.DependencyObject* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase3)m_inner.asInterface(uuid("a89c9712-48e0-4240-95b9-0dfd0826a8d3"))).get_OverlayInputPassThroughElement(return_value); }
	override HRESULT set_OverlayInputPassThroughElement(Windows.UI.Xaml.DependencyObject value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBase3)m_inner.asInterface(uuid("a89c9712-48e0-4240-95b9-0dfd0826a8d3"))).set_OverlayInputPassThroughElement(value); }

	this() {}
	IInspectable m_inner;
}

interface FlyoutBaseClosingEventArgs : Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseClosingEventArgs
{
extern(Windows):
	final bool Cancel()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseClosingEventArgs)this.asInterface(uuid("d075852d-b09a-4fd1-b005-db2ba01206fb"))).get_Cancel(&_ret));
		return _ret;
	}
	final void Cancel(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseClosingEventArgs)this.asInterface(uuid("d075852d-b09a-4fd1-b005-db2ba01206fb"))).set_Cancel(value));
	}
}

interface GeneratorPositionHelper : Windows.UI.Xaml.Controls.Primitives.IGeneratorPositionHelper
{
	private static Windows.UI.Xaml.Controls.Primitives.IGeneratorPositionHelperStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.IGeneratorPositionHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.IGeneratorPositionHelperStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.Controls.Primitives.GeneratorPosition FromIndexAndOffset(INT32 index, INT32 offset)
	{
		Windows.UI.Xaml.Controls.Primitives.GeneratorPosition _ret;
		Debug.OK(staticInstance.abi_FromIndexAndOffset(index, offset, &_ret));
		return _ret;
	}
}

interface GridViewItemPresenter : Windows.UI.Xaml.Controls.ContentPresenter, Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter
{
extern(Windows):
	final bool SelectionCheckMarkVisualEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_SelectionCheckMarkVisualEnabled(&_ret));
		return _ret;
	}
	final void SelectionCheckMarkVisualEnabled(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_SelectionCheckMarkVisualEnabled(value));
	}
	final Windows.UI.Xaml.Media.Brush CheckHintBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_CheckHintBrush(&_ret));
		return _ret;
	}
	final void CheckHintBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_CheckHintBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush CheckSelectingBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_CheckSelectingBrush(&_ret));
		return _ret;
	}
	final void CheckSelectingBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_CheckSelectingBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush CheckBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_CheckBrush(&_ret));
		return _ret;
	}
	final void CheckBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_CheckBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush DragBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_DragBackground(&_ret));
		return _ret;
	}
	final void DragBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_DragBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush DragForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_DragForeground(&_ret));
		return _ret;
	}
	final void DragForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_DragForeground(value));
	}
	final Windows.UI.Xaml.Media.Brush FocusBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_FocusBorderBrush(&_ret));
		return _ret;
	}
	final void FocusBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_FocusBorderBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush PlaceholderBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_PlaceholderBackground(&_ret));
		return _ret;
	}
	final void PlaceholderBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_PlaceholderBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush PointerOverBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_PointerOverBackground(&_ret));
		return _ret;
	}
	final void PointerOverBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_PointerOverBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_SelectedBackground(&_ret));
		return _ret;
	}
	final void SelectedBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_SelectedBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_SelectedForeground(&_ret));
		return _ret;
	}
	final void SelectedForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_SelectedForeground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedPointerOverBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_SelectedPointerOverBackground(&_ret));
		return _ret;
	}
	final void SelectedPointerOverBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_SelectedPointerOverBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedPointerOverBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_SelectedPointerOverBorderBrush(&_ret));
		return _ret;
	}
	final void SelectedPointerOverBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_SelectedPointerOverBorderBrush(value));
	}
	final Windows.UI.Xaml.Thickness SelectedBorderThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_SelectedBorderThickness(&_ret));
		return _ret;
	}
	final void SelectedBorderThickness(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_SelectedBorderThickness(value));
	}
	final double DisabledOpacity()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_DisabledOpacity(&_ret));
		return _ret;
	}
	final void DisabledOpacity(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_DisabledOpacity(value));
	}
	final double DragOpacity()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_DragOpacity(&_ret));
		return _ret;
	}
	final void DragOpacity(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_DragOpacity(value));
	}
	final double ReorderHintOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_ReorderHintOffset(&_ret));
		return _ret;
	}
	final void ReorderHintOffset(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_ReorderHintOffset(value));
	}
	deprecated("Use ContentPresenter.HorizontalContentAlignment instead of GridViewItemPresenterHorizontalContentAlignment. For more info, see MSDN.")
	final Windows.UI.Xaml.HorizontalAlignment GridViewItemPresenterHorizontalContentAlignment()
	{
		Windows.UI.Xaml.HorizontalAlignment _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_GridViewItemPresenterHorizontalContentAlignment(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.HorizontalContentAlignment instead of GridViewItemPresenterHorizontalContentAlignment. For more info, see MSDN.")
	final void GridViewItemPresenterHorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_GridViewItemPresenterHorizontalContentAlignment(value));
	}
	deprecated("Use ContentPresenter.VerticalContentAlignment instead of GridViewItemPresenterVerticalContentAlignment. For more info, see MSDN.")
	final Windows.UI.Xaml.VerticalAlignment GridViewItemPresenterVerticalContentAlignment()
	{
		Windows.UI.Xaml.VerticalAlignment _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_GridViewItemPresenterVerticalContentAlignment(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.VerticalContentAlignment instead of GridViewItemPresenterVerticalContentAlignment. For more info, see MSDN.")
	final void GridViewItemPresenterVerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_GridViewItemPresenterVerticalContentAlignment(value));
	}
	deprecated("Use ContentPresenter.Padding instead of GridViewItemPresenterPadding. For more info, see MSDN.")
	final Windows.UI.Xaml.Thickness GridViewItemPresenterPadding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_GridViewItemPresenterPadding(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.Padding instead of GridViewItemPresenterPadding. For more info, see MSDN.")
	final void GridViewItemPresenterPadding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_GridViewItemPresenterPadding(value));
	}
	final Windows.UI.Xaml.Thickness PointerOverBackgroundMargin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_PointerOverBackgroundMargin(&_ret));
		return _ret;
	}
	final void PointerOverBackgroundMargin(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_PointerOverBackgroundMargin(value));
	}
	final Windows.UI.Xaml.Thickness ContentMargin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_ContentMargin(&_ret));
		return _ret;
	}
	final void ContentMargin(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)this.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_ContentMargin(value));
	}

	private static Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenterStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenterStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenterStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty SelectionCheckMarkVisualEnabledProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectionCheckMarkVisualEnabledProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CheckHintBrushProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CheckHintBrushProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CheckSelectingBrushProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CheckSelectingBrushProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CheckBrushProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CheckBrushProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty DragBackgroundProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DragBackgroundProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty DragForegroundProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DragForegroundProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty FocusBorderBrushProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_FocusBorderBrushProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty PlaceholderBackgroundProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PlaceholderBackgroundProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty PointerOverBackgroundProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PointerOverBackgroundProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SelectedBackgroundProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectedBackgroundProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SelectedForegroundProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectedForegroundProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SelectedPointerOverBackgroundProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectedPointerOverBackgroundProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SelectedPointerOverBorderBrushProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectedPointerOverBorderBrushProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SelectedBorderThicknessProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectedBorderThicknessProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty DisabledOpacityProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DisabledOpacityProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty DragOpacityProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DragOpacityProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ReorderHintOffsetProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ReorderHintOffsetProperty(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.HorizontalContentAlignment instead of GridViewItemPresenterHorizontalContentAlignment. For more info, see MSDN.")
	static Windows.UI.Xaml.DependencyProperty GridViewItemPresenterHorizontalContentAlignmentProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_GridViewItemPresenterHorizontalContentAlignmentProperty(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.VerticalContentAlignment instead of GridViewItemPresenterVerticalContentAlignment. For more info, see MSDN.")
	static Windows.UI.Xaml.DependencyProperty GridViewItemPresenterVerticalContentAlignmentProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_GridViewItemPresenterVerticalContentAlignmentProperty(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.Padding instead of GridViewItemPresenterPadding. For more info, see MSDN.")
	static Windows.UI.Xaml.DependencyProperty GridViewItemPresenterPaddingProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_GridViewItemPresenterPaddingProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty PointerOverBackgroundMarginProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PointerOverBackgroundMarginProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ContentMarginProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ContentMarginProperty(&_ret));
		return _ret;
	}
	static GridViewItemPresenter New()
	{
		IInspectable outer, inner;
		GridViewItemPresenter ret;
		Debug.OK(activationFactory!(GridViewItemPresenter, Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenterFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(GridViewItemPresenter, GridViewItemPresenter, Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenterFactory)
class GridViewItemPresenterT(Base) : AgileObject!Base, GridViewItemPresenter
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_SelectionCheckMarkVisualEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_SelectionCheckMarkVisualEnabled(return_value); }
	override HRESULT set_SelectionCheckMarkVisualEnabled(bool value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_SelectionCheckMarkVisualEnabled(value); }
	override HRESULT get_CheckHintBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_CheckHintBrush(return_value); }
	override HRESULT set_CheckHintBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_CheckHintBrush(value); }
	override HRESULT get_CheckSelectingBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_CheckSelectingBrush(return_value); }
	override HRESULT set_CheckSelectingBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_CheckSelectingBrush(value); }
	override HRESULT get_CheckBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_CheckBrush(return_value); }
	override HRESULT set_CheckBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_CheckBrush(value); }
	override HRESULT get_DragBackground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_DragBackground(return_value); }
	override HRESULT set_DragBackground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_DragBackground(value); }
	override HRESULT get_DragForeground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_DragForeground(return_value); }
	override HRESULT set_DragForeground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_DragForeground(value); }
	override HRESULT get_FocusBorderBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_FocusBorderBrush(return_value); }
	override HRESULT set_FocusBorderBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_FocusBorderBrush(value); }
	override HRESULT get_PlaceholderBackground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_PlaceholderBackground(return_value); }
	override HRESULT set_PlaceholderBackground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_PlaceholderBackground(value); }
	override HRESULT get_PointerOverBackground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_PointerOverBackground(return_value); }
	override HRESULT set_PointerOverBackground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_PointerOverBackground(value); }
	override HRESULT get_SelectedBackground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_SelectedBackground(return_value); }
	override HRESULT set_SelectedBackground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_SelectedBackground(value); }
	override HRESULT get_SelectedForeground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_SelectedForeground(return_value); }
	override HRESULT set_SelectedForeground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_SelectedForeground(value); }
	override HRESULT get_SelectedPointerOverBackground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_SelectedPointerOverBackground(return_value); }
	override HRESULT set_SelectedPointerOverBackground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_SelectedPointerOverBackground(value); }
	override HRESULT get_SelectedPointerOverBorderBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_SelectedPointerOverBorderBrush(return_value); }
	override HRESULT set_SelectedPointerOverBorderBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_SelectedPointerOverBorderBrush(value); }
	override HRESULT get_SelectedBorderThickness(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_SelectedBorderThickness(return_value); }
	override HRESULT set_SelectedBorderThickness(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_SelectedBorderThickness(value); }
	override HRESULT get_DisabledOpacity(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_DisabledOpacity(return_value); }
	override HRESULT set_DisabledOpacity(double value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_DisabledOpacity(value); }
	override HRESULT get_DragOpacity(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_DragOpacity(return_value); }
	override HRESULT set_DragOpacity(double value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_DragOpacity(value); }
	override HRESULT get_ReorderHintOffset(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_ReorderHintOffset(return_value); }
	override HRESULT set_ReorderHintOffset(double value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_ReorderHintOffset(value); }
	override HRESULT get_GridViewItemPresenterHorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_GridViewItemPresenterHorizontalContentAlignment(return_value); }
	override HRESULT set_GridViewItemPresenterHorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_GridViewItemPresenterHorizontalContentAlignment(value); }
	override HRESULT get_GridViewItemPresenterVerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_GridViewItemPresenterVerticalContentAlignment(return_value); }
	override HRESULT set_GridViewItemPresenterVerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_GridViewItemPresenterVerticalContentAlignment(value); }
	override HRESULT get_GridViewItemPresenterPadding(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_GridViewItemPresenterPadding(return_value); }
	override HRESULT set_GridViewItemPresenterPadding(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_GridViewItemPresenterPadding(value); }
	override HRESULT get_PointerOverBackgroundMargin(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_PointerOverBackgroundMargin(return_value); }
	override HRESULT set_PointerOverBackgroundMargin(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_PointerOverBackgroundMargin(value); }
	override HRESULT get_ContentMargin(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).get_ContentMargin(return_value); }
	override HRESULT set_ContentMargin(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter)m_inner.asInterface(uuid("214f9010-56e2-4821-8a1c-2305709af94b"))).set_ContentMargin(value); }

	this() {}
	IInspectable m_inner;
}

interface GridViewItemTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IGridViewItemTemplateSettings
{
extern(Windows):
	final INT32 DragItemsCount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IGridViewItemTemplateSettings)this.asInterface(uuid("9e30baaf-165d-4267-a45e-1a43a75706ac"))).get_DragItemsCount(&_ret));
		return _ret;
	}
}

interface ItemsChangedEventArgs : Windows.UI.Xaml.Controls.Primitives.IItemsChangedEventArgs
{
extern(Windows):
	final INT32 Action()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IItemsChangedEventArgs)this.asInterface(uuid("e8b45568-7d10-421e-be29-81839a91de20"))).get_Action(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Primitives.GeneratorPosition Position()
	{
		Windows.UI.Xaml.Controls.Primitives.GeneratorPosition _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IItemsChangedEventArgs)this.asInterface(uuid("e8b45568-7d10-421e-be29-81839a91de20"))).get_Position(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Primitives.GeneratorPosition OldPosition()
	{
		Windows.UI.Xaml.Controls.Primitives.GeneratorPosition _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IItemsChangedEventArgs)this.asInterface(uuid("e8b45568-7d10-421e-be29-81839a91de20"))).get_OldPosition(&_ret));
		return _ret;
	}
	final INT32 ItemCount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IItemsChangedEventArgs)this.asInterface(uuid("e8b45568-7d10-421e-be29-81839a91de20"))).get_ItemCount(&_ret));
		return _ret;
	}
	final INT32 ItemUICount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IItemsChangedEventArgs)this.asInterface(uuid("e8b45568-7d10-421e-be29-81839a91de20"))).get_ItemUICount(&_ret));
		return _ret;
	}
}

interface JumpListItemBackgroundConverter : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IJumpListItemBackgroundConverter, Windows.UI.Xaml.Data.IValueConverter
{
extern(Windows):
	final Windows.UI.Xaml.Media.Brush Enabled()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IJumpListItemBackgroundConverter)this.asInterface(uuid("81177858-d224-410c-b16c-c5b6bb6188b2"))).get_Enabled(&_ret));
		return _ret;
	}
	final void Enabled(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IJumpListItemBackgroundConverter)this.asInterface(uuid("81177858-d224-410c-b16c-c5b6bb6188b2"))).set_Enabled(value));
	}
	final Windows.UI.Xaml.Media.Brush Disabled()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IJumpListItemBackgroundConverter)this.asInterface(uuid("81177858-d224-410c-b16c-c5b6bb6188b2"))).get_Disabled(&_ret));
		return _ret;
	}
	final void Disabled(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IJumpListItemBackgroundConverter)this.asInterface(uuid("81177858-d224-410c-b16c-c5b6bb6188b2"))).set_Disabled(value));
	}
	final IInspectable Convert(IInspectable value, Windows.UI.Xaml.Interop.TypeName targetType, IInspectable parameter, HSTRING language)
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.Data.IValueConverter)this.asInterface(uuid("e6f2fef0-0712-487f-b313-f300b8d79aa1"))).abi_Convert(value, targetType, parameter, language, &_ret));
		return _ret;
	}
	final IInspectable ConvertBack(IInspectable value, Windows.UI.Xaml.Interop.TypeName targetType, IInspectable parameter, HSTRING language)
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.Data.IValueConverter)this.asInterface(uuid("e6f2fef0-0712-487f-b313-f300b8d79aa1"))).abi_ConvertBack(value, targetType, parameter, language, &_ret));
		return _ret;
	}

	private static Windows.UI.Xaml.Controls.Primitives.IJumpListItemBackgroundConverterStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.IJumpListItemBackgroundConverterStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.IJumpListItemBackgroundConverterStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty EnabledProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_EnabledProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty DisabledProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DisabledProperty(&_ret));
		return _ret;
	}
	static JumpListItemBackgroundConverter New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(JumpListItemBackgroundConverter).abi_ActivateInstance(&ret));
		return cast(JumpListItemBackgroundConverter) ret;
	}
}

interface JumpListItemForegroundConverter : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IJumpListItemForegroundConverter, Windows.UI.Xaml.Data.IValueConverter
{
extern(Windows):
	final Windows.UI.Xaml.Media.Brush Enabled()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IJumpListItemForegroundConverter)this.asInterface(uuid("1590ed38-c504-4796-a63a-5bfc9eefaae8"))).get_Enabled(&_ret));
		return _ret;
	}
	final void Enabled(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IJumpListItemForegroundConverter)this.asInterface(uuid("1590ed38-c504-4796-a63a-5bfc9eefaae8"))).set_Enabled(value));
	}
	final Windows.UI.Xaml.Media.Brush Disabled()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IJumpListItemForegroundConverter)this.asInterface(uuid("1590ed38-c504-4796-a63a-5bfc9eefaae8"))).get_Disabled(&_ret));
		return _ret;
	}
	final void Disabled(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IJumpListItemForegroundConverter)this.asInterface(uuid("1590ed38-c504-4796-a63a-5bfc9eefaae8"))).set_Disabled(value));
	}
	final IInspectable Convert(IInspectable value, Windows.UI.Xaml.Interop.TypeName targetType, IInspectable parameter, HSTRING language)
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.Data.IValueConverter)this.asInterface(uuid("e6f2fef0-0712-487f-b313-f300b8d79aa1"))).abi_Convert(value, targetType, parameter, language, &_ret));
		return _ret;
	}
	final IInspectable ConvertBack(IInspectable value, Windows.UI.Xaml.Interop.TypeName targetType, IInspectable parameter, HSTRING language)
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.Data.IValueConverter)this.asInterface(uuid("e6f2fef0-0712-487f-b313-f300b8d79aa1"))).abi_ConvertBack(value, targetType, parameter, language, &_ret));
		return _ret;
	}

	private static Windows.UI.Xaml.Controls.Primitives.IJumpListItemForegroundConverterStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.IJumpListItemForegroundConverterStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.IJumpListItemForegroundConverterStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty EnabledProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_EnabledProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty DisabledProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DisabledProperty(&_ret));
		return _ret;
	}
	static JumpListItemForegroundConverter New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(JumpListItemForegroundConverter).abi_ActivateInstance(&ret));
		return cast(JumpListItemForegroundConverter) ret;
	}
}

interface LayoutInformation : Windows.UI.Xaml.Controls.Primitives.ILayoutInformation
{
	private static Windows.UI.Xaml.Controls.Primitives.ILayoutInformationStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.ILayoutInformationStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.ILayoutInformationStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.UIElement GetLayoutExceptionElement(IInspectable dispatcher)
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(staticInstance.abi_GetLayoutExceptionElement(dispatcher, &_ret));
		return _ret;
	}
	static Windows.Foundation.Rect GetLayoutSlot(Windows.UI.Xaml.FrameworkElement element)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(staticInstance.abi_GetLayoutSlot(element, &_ret));
		return _ret;
	}
}

interface ListViewItemPresenter : Windows.UI.Xaml.Controls.ContentPresenter, Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter, Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2
{
extern(Windows):
	final bool SelectionCheckMarkVisualEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_SelectionCheckMarkVisualEnabled(&_ret));
		return _ret;
	}
	final void SelectionCheckMarkVisualEnabled(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_SelectionCheckMarkVisualEnabled(value));
	}
	final Windows.UI.Xaml.Media.Brush CheckHintBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_CheckHintBrush(&_ret));
		return _ret;
	}
	final void CheckHintBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_CheckHintBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush CheckSelectingBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_CheckSelectingBrush(&_ret));
		return _ret;
	}
	final void CheckSelectingBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_CheckSelectingBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush CheckBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_CheckBrush(&_ret));
		return _ret;
	}
	final void CheckBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_CheckBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush DragBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_DragBackground(&_ret));
		return _ret;
	}
	final void DragBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_DragBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush DragForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_DragForeground(&_ret));
		return _ret;
	}
	final void DragForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_DragForeground(value));
	}
	final Windows.UI.Xaml.Media.Brush FocusBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_FocusBorderBrush(&_ret));
		return _ret;
	}
	final void FocusBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_FocusBorderBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush PlaceholderBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_PlaceholderBackground(&_ret));
		return _ret;
	}
	final void PlaceholderBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_PlaceholderBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush PointerOverBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_PointerOverBackground(&_ret));
		return _ret;
	}
	final void PointerOverBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_PointerOverBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_SelectedBackground(&_ret));
		return _ret;
	}
	final void SelectedBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_SelectedBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_SelectedForeground(&_ret));
		return _ret;
	}
	final void SelectedForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_SelectedForeground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedPointerOverBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_SelectedPointerOverBackground(&_ret));
		return _ret;
	}
	final void SelectedPointerOverBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_SelectedPointerOverBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedPointerOverBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_SelectedPointerOverBorderBrush(&_ret));
		return _ret;
	}
	final void SelectedPointerOverBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_SelectedPointerOverBorderBrush(value));
	}
	final Windows.UI.Xaml.Thickness SelectedBorderThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_SelectedBorderThickness(&_ret));
		return _ret;
	}
	final void SelectedBorderThickness(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_SelectedBorderThickness(value));
	}
	final double DisabledOpacity()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_DisabledOpacity(&_ret));
		return _ret;
	}
	final void DisabledOpacity(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_DisabledOpacity(value));
	}
	final double DragOpacity()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_DragOpacity(&_ret));
		return _ret;
	}
	final void DragOpacity(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_DragOpacity(value));
	}
	final double ReorderHintOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_ReorderHintOffset(&_ret));
		return _ret;
	}
	final void ReorderHintOffset(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_ReorderHintOffset(value));
	}
	deprecated("Use ContentPresenter.HorizontalContentAlignment instead of ListViewItemPresenterHorizontalContentAlignment. For more info, see MSDN.")
	final Windows.UI.Xaml.HorizontalAlignment ListViewItemPresenterHorizontalContentAlignment()
	{
		Windows.UI.Xaml.HorizontalAlignment _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_ListViewItemPresenterHorizontalContentAlignment(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.HorizontalContentAlignment instead of ListViewItemPresenterHorizontalContentAlignment. For more info, see MSDN.")
	final void ListViewItemPresenterHorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_ListViewItemPresenterHorizontalContentAlignment(value));
	}
	deprecated("Use ContentPresenter.VerticalContentAlignment instead of ListViewItemPresenterVerticalContentAlignment. For more info, see MSDN.")
	final Windows.UI.Xaml.VerticalAlignment ListViewItemPresenterVerticalContentAlignment()
	{
		Windows.UI.Xaml.VerticalAlignment _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_ListViewItemPresenterVerticalContentAlignment(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.VerticalContentAlignment instead of ListViewItemPresenterVerticalContentAlignment. For more info, see MSDN.")
	final void ListViewItemPresenterVerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_ListViewItemPresenterVerticalContentAlignment(value));
	}
	deprecated("Use ContentPresenter.Padding instead of GridViewItemPresenterPadding. For more info, see MSDN.")
	final Windows.UI.Xaml.Thickness ListViewItemPresenterPadding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_ListViewItemPresenterPadding(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.Padding instead of GridViewItemPresenterPadding. For more info, see MSDN.")
	final void ListViewItemPresenterPadding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_ListViewItemPresenterPadding(value));
	}
	final Windows.UI.Xaml.Thickness PointerOverBackgroundMargin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_PointerOverBackgroundMargin(&_ret));
		return _ret;
	}
	final void PointerOverBackgroundMargin(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_PointerOverBackgroundMargin(value));
	}
	final Windows.UI.Xaml.Thickness ContentMargin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_ContentMargin(&_ret));
		return _ret;
	}
	final void ContentMargin(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)this.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_ContentMargin(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedPressedBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)this.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).get_SelectedPressedBackground(&_ret));
		return _ret;
	}
	final void SelectedPressedBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)this.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).set_SelectedPressedBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush PressedBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)this.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).get_PressedBackground(&_ret));
		return _ret;
	}
	final void PressedBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)this.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).set_PressedBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush CheckBoxBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)this.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).get_CheckBoxBrush(&_ret));
		return _ret;
	}
	final void CheckBoxBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)this.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).set_CheckBoxBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush FocusSecondaryBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)this.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).get_FocusSecondaryBorderBrush(&_ret));
		return _ret;
	}
	final void FocusSecondaryBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)this.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).set_FocusSecondaryBorderBrush(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenterCheckMode CheckMode()
	{
		Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenterCheckMode _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)this.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).get_CheckMode(&_ret));
		return _ret;
	}
	final void CheckMode(Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenterCheckMode value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)this.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).set_CheckMode(value));
	}
	final Windows.UI.Xaml.Media.Brush PointerOverForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)this.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).get_PointerOverForeground(&_ret));
		return _ret;
	}
	final void PointerOverForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)this.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).set_PointerOverForeground(value));
	}

	private static Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenterStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenterStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenterStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty SelectionCheckMarkVisualEnabledProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectionCheckMarkVisualEnabledProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CheckHintBrushProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CheckHintBrushProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CheckSelectingBrushProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CheckSelectingBrushProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CheckBrushProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CheckBrushProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty DragBackgroundProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DragBackgroundProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty DragForegroundProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DragForegroundProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty FocusBorderBrushProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_FocusBorderBrushProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty PlaceholderBackgroundProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PlaceholderBackgroundProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty PointerOverBackgroundProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PointerOverBackgroundProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SelectedBackgroundProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectedBackgroundProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SelectedForegroundProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectedForegroundProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SelectedPointerOverBackgroundProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectedPointerOverBackgroundProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SelectedPointerOverBorderBrushProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectedPointerOverBorderBrushProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SelectedBorderThicknessProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectedBorderThicknessProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty DisabledOpacityProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DisabledOpacityProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty DragOpacityProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DragOpacityProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ReorderHintOffsetProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ReorderHintOffsetProperty(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.HorizontalContentAlignment instead of ListViewItemPresenterHorizontalContentAlignment. For more info, see MSDN.")
	static Windows.UI.Xaml.DependencyProperty ListViewItemPresenterHorizontalContentAlignmentProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ListViewItemPresenterHorizontalContentAlignmentProperty(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.VerticalContentAlignment instead of ListViewItemPresenterVerticalContentAlignment. For more info, see MSDN.")
	static Windows.UI.Xaml.DependencyProperty ListViewItemPresenterVerticalContentAlignmentProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ListViewItemPresenterVerticalContentAlignmentProperty(&_ret));
		return _ret;
	}
	deprecated("Use ContentPresenter.Padding instead of GridViewItemPresenterPadding. For more info, see MSDN.")
	static Windows.UI.Xaml.DependencyProperty ListViewItemPresenterPaddingProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ListViewItemPresenterPaddingProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty PointerOverBackgroundMarginProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PointerOverBackgroundMarginProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ContentMarginProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ContentMarginProperty(&_ret));
		return _ret;
	}
	static ListViewItemPresenter New()
	{
		IInspectable outer, inner;
		ListViewItemPresenter ret;
		Debug.OK(activationFactory!(ListViewItemPresenter, Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenterFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(ListViewItemPresenter, ListViewItemPresenter, Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenterFactory)
class ListViewItemPresenterT(Base) : AgileObject!Base, ListViewItemPresenter
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_SelectionCheckMarkVisualEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_SelectionCheckMarkVisualEnabled(return_value); }
	override HRESULT set_SelectionCheckMarkVisualEnabled(bool value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_SelectionCheckMarkVisualEnabled(value); }
	override HRESULT get_CheckHintBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_CheckHintBrush(return_value); }
	override HRESULT set_CheckHintBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_CheckHintBrush(value); }
	override HRESULT get_CheckSelectingBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_CheckSelectingBrush(return_value); }
	override HRESULT set_CheckSelectingBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_CheckSelectingBrush(value); }
	override HRESULT get_CheckBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_CheckBrush(return_value); }
	override HRESULT set_CheckBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_CheckBrush(value); }
	override HRESULT get_DragBackground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_DragBackground(return_value); }
	override HRESULT set_DragBackground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_DragBackground(value); }
	override HRESULT get_DragForeground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_DragForeground(return_value); }
	override HRESULT set_DragForeground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_DragForeground(value); }
	override HRESULT get_FocusBorderBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_FocusBorderBrush(return_value); }
	override HRESULT set_FocusBorderBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_FocusBorderBrush(value); }
	override HRESULT get_PlaceholderBackground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_PlaceholderBackground(return_value); }
	override HRESULT set_PlaceholderBackground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_PlaceholderBackground(value); }
	override HRESULT get_PointerOverBackground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_PointerOverBackground(return_value); }
	override HRESULT set_PointerOverBackground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_PointerOverBackground(value); }
	override HRESULT get_SelectedBackground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_SelectedBackground(return_value); }
	override HRESULT set_SelectedBackground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_SelectedBackground(value); }
	override HRESULT get_SelectedForeground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_SelectedForeground(return_value); }
	override HRESULT set_SelectedForeground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_SelectedForeground(value); }
	override HRESULT get_SelectedPointerOverBackground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_SelectedPointerOverBackground(return_value); }
	override HRESULT set_SelectedPointerOverBackground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_SelectedPointerOverBackground(value); }
	override HRESULT get_SelectedPointerOverBorderBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_SelectedPointerOverBorderBrush(return_value); }
	override HRESULT set_SelectedPointerOverBorderBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_SelectedPointerOverBorderBrush(value); }
	override HRESULT get_SelectedBorderThickness(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_SelectedBorderThickness(return_value); }
	override HRESULT set_SelectedBorderThickness(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_SelectedBorderThickness(value); }
	override HRESULT get_DisabledOpacity(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_DisabledOpacity(return_value); }
	override HRESULT set_DisabledOpacity(double value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_DisabledOpacity(value); }
	override HRESULT get_DragOpacity(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_DragOpacity(return_value); }
	override HRESULT set_DragOpacity(double value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_DragOpacity(value); }
	override HRESULT get_ReorderHintOffset(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_ReorderHintOffset(return_value); }
	override HRESULT set_ReorderHintOffset(double value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_ReorderHintOffset(value); }
	override HRESULT get_ListViewItemPresenterHorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_ListViewItemPresenterHorizontalContentAlignment(return_value); }
	override HRESULT set_ListViewItemPresenterHorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_ListViewItemPresenterHorizontalContentAlignment(value); }
	override HRESULT get_ListViewItemPresenterVerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_ListViewItemPresenterVerticalContentAlignment(return_value); }
	override HRESULT set_ListViewItemPresenterVerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_ListViewItemPresenterVerticalContentAlignment(value); }
	override HRESULT get_ListViewItemPresenterPadding(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_ListViewItemPresenterPadding(return_value); }
	override HRESULT set_ListViewItemPresenterPadding(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_ListViewItemPresenterPadding(value); }
	override HRESULT get_PointerOverBackgroundMargin(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_PointerOverBackgroundMargin(return_value); }
	override HRESULT set_PointerOverBackgroundMargin(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_PointerOverBackgroundMargin(value); }
	override HRESULT get_ContentMargin(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).get_ContentMargin(return_value); }
	override HRESULT set_ContentMargin(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter)m_inner.asInterface(uuid("fc8946bd-a3a2-4969-8174-25b5d3c28033"))).set_ContentMargin(value); }

	override HRESULT get_SelectedPressedBackground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)m_inner.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).get_SelectedPressedBackground(return_value); }
	override HRESULT set_SelectedPressedBackground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)m_inner.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).set_SelectedPressedBackground(value); }
	override HRESULT get_PressedBackground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)m_inner.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).get_PressedBackground(return_value); }
	override HRESULT set_PressedBackground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)m_inner.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).set_PressedBackground(value); }
	override HRESULT get_CheckBoxBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)m_inner.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).get_CheckBoxBrush(return_value); }
	override HRESULT set_CheckBoxBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)m_inner.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).set_CheckBoxBrush(value); }
	override HRESULT get_FocusSecondaryBorderBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)m_inner.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).get_FocusSecondaryBorderBrush(return_value); }
	override HRESULT set_FocusSecondaryBorderBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)m_inner.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).set_FocusSecondaryBorderBrush(value); }
	override HRESULT get_CheckMode(Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenterCheckMode* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)m_inner.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).get_CheckMode(return_value); }
	override HRESULT set_CheckMode(Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenterCheckMode value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)m_inner.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).set_CheckMode(value); }
	override HRESULT get_PointerOverForeground(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)m_inner.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).get_PointerOverForeground(return_value); }
	override HRESULT set_PointerOverForeground(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2)m_inner.asInterface(uuid("f5dc5496-e122-4c57-a625-ac4b08fb2d4c"))).set_PointerOverForeground(value); }

	this() {}
	IInspectable m_inner;
}

interface ListViewItemTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IListViewItemTemplateSettings
{
extern(Windows):
	final INT32 DragItemsCount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IListViewItemTemplateSettings)this.asInterface(uuid("67af84bf-8279-4686-9326-cd189f27575d"))).get_DragItemsCount(&_ret));
		return _ret;
	}
}

interface LoopingSelector : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.Primitives.ILoopingSelector
{
extern(Windows):
	final bool ShouldLoop()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector)this.asInterface(uuid("4c9a3e04-4827-49d9-8806-093957b0fd21"))).get_ShouldLoop(&_ret));
		return _ret;
	}
	final void ShouldLoop(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector)this.asInterface(uuid("4c9a3e04-4827-49d9-8806-093957b0fd21"))).set_ShouldLoop(value));
	}
	final Windows.Foundation.Collections.IVector!(IInspectable) Items()
	{
		Windows.Foundation.Collections.IVector!(IInspectable) _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector)this.asInterface(uuid("4c9a3e04-4827-49d9-8806-093957b0fd21"))).get_Items(&_ret));
		return _ret;
	}
	final void Items(Windows.Foundation.Collections.IVector!(IInspectable) value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector)this.asInterface(uuid("4c9a3e04-4827-49d9-8806-093957b0fd21"))).set_Items(value));
	}
	final INT32 SelectedIndex()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector)this.asInterface(uuid("4c9a3e04-4827-49d9-8806-093957b0fd21"))).get_SelectedIndex(&_ret));
		return _ret;
	}
	final void SelectedIndex(INT32 value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector)this.asInterface(uuid("4c9a3e04-4827-49d9-8806-093957b0fd21"))).set_SelectedIndex(value));
	}
	final IInspectable SelectedItem()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector)this.asInterface(uuid("4c9a3e04-4827-49d9-8806-093957b0fd21"))).get_SelectedItem(&_ret));
		return _ret;
	}
	final void SelectedItem(IInspectable value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector)this.asInterface(uuid("4c9a3e04-4827-49d9-8806-093957b0fd21"))).set_SelectedItem(value));
	}
	final INT32 ItemWidth()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector)this.asInterface(uuid("4c9a3e04-4827-49d9-8806-093957b0fd21"))).get_ItemWidth(&_ret));
		return _ret;
	}
	final void ItemWidth(INT32 value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector)this.asInterface(uuid("4c9a3e04-4827-49d9-8806-093957b0fd21"))).set_ItemWidth(value));
	}
	final INT32 ItemHeight()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector)this.asInterface(uuid("4c9a3e04-4827-49d9-8806-093957b0fd21"))).get_ItemHeight(&_ret));
		return _ret;
	}
	final void ItemHeight(INT32 value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector)this.asInterface(uuid("4c9a3e04-4827-49d9-8806-093957b0fd21"))).set_ItemHeight(value));
	}
	final Windows.UI.Xaml.DataTemplate ItemTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector)this.asInterface(uuid("4c9a3e04-4827-49d9-8806-093957b0fd21"))).get_ItemTemplate(&_ret));
		return _ret;
	}
	final void ItemTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector)this.asInterface(uuid("4c9a3e04-4827-49d9-8806-093957b0fd21"))).set_ItemTemplate(value));
	}
	final EventRegistrationToken OnSelectionChanged(void delegate(IInspectable, Windows.UI.Xaml.Controls.SelectionChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector)this.asInterface(uuid("4c9a3e04-4827-49d9-8806-093957b0fd21"))).add_SelectionChanged(event!(Windows.UI.Xaml.Controls.SelectionChangedEventHandler, IInspectable, Windows.UI.Xaml.Controls.SelectionChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSelectionChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ILoopingSelector)this.asInterface(uuid("4c9a3e04-4827-49d9-8806-093957b0fd21"))).remove_SelectionChanged(token));
	}

	private static Windows.UI.Xaml.Controls.Primitives.ILoopingSelectorStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.ILoopingSelectorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.ILoopingSelectorStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty ShouldLoopProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ShouldLoopProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ItemsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ItemsProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SelectedIndexProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectedIndexProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SelectedItemProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectedItemProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ItemWidthProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ItemWidthProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ItemHeightProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ItemHeightProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ItemTemplateProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ItemTemplateProperty(&_ret));
		return _ret;
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
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).get_AreHorizontalSnapPointsRegular(&_ret));
		return _ret;
	}
	final bool AreVerticalSnapPointsRegular()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).get_AreVerticalSnapPointsRegular(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnHorizontalSnapPointsChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).add_HorizontalSnapPointsChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeHorizontalSnapPointsChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).remove_HorizontalSnapPointsChanged(token));
	}
	final EventRegistrationToken OnVerticalSnapPointsChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).add_VerticalSnapPointsChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeVerticalSnapPointsChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).remove_VerticalSnapPointsChanged(token));
	}
	final Windows.Foundation.Collections.IVectorView!(float) GetIrregularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment)
	{
		Windows.Foundation.Collections.IVectorView!(float) _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).abi_GetIrregularSnapPoints(orientation, alignment, &_ret));
		return _ret;
	}
	final float GetRegularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment, float* out_offset)
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).abi_GetRegularSnapPoints(orientation, alignment, out_offset, &_ret));
		return _ret;
	}
}

interface MenuFlyoutPresenterTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IMenuFlyoutPresenterTemplateSettings
{
extern(Windows):
	final double FlyoutContentMinWidth()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IMenuFlyoutPresenterTemplateSettings)this.asInterface(uuid("d68fd00d-629d-4349-ac51-b877c80983b8"))).get_FlyoutContentMinWidth(&_ret));
		return _ret;
	}
}

interface OrientedVirtualizingPanel : Windows.UI.Xaml.Controls.VirtualizingPanel, Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel, Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo, Windows.UI.Xaml.Controls.IInsertionPanel
{
extern(Windows):
	final bool CanVerticallyScroll()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_CanVerticallyScroll(&_ret));
		return _ret;
	}
	final void CanVerticallyScroll(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).set_CanVerticallyScroll(value));
	}
	final bool CanHorizontallyScroll()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_CanHorizontallyScroll(&_ret));
		return _ret;
	}
	final void CanHorizontallyScroll(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).set_CanHorizontallyScroll(value));
	}
	final double ExtentWidth()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_ExtentWidth(&_ret));
		return _ret;
	}
	final double ExtentHeight()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_ExtentHeight(&_ret));
		return _ret;
	}
	final double ViewportWidth()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_ViewportWidth(&_ret));
		return _ret;
	}
	final double ViewportHeight()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_ViewportHeight(&_ret));
		return _ret;
	}
	final double HorizontalOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_HorizontalOffset(&_ret));
		return _ret;
	}
	final double VerticalOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_VerticalOffset(&_ret));
		return _ret;
	}
	final IInspectable ScrollOwner()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_ScrollOwner(&_ret));
		return _ret;
	}
	final void ScrollOwner(IInspectable value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).set_ScrollOwner(value));
	}
	final void LineUp()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_LineUp());
	}
	final void LineDown()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_LineDown());
	}
	final void LineLeft()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_LineLeft());
	}
	final void LineRight()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_LineRight());
	}
	final void PageUp()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_PageUp());
	}
	final void PageDown()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_PageDown());
	}
	final void PageLeft()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_PageLeft());
	}
	final void PageRight()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_PageRight());
	}
	final void MouseWheelUp()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_MouseWheelUp());
	}
	final void MouseWheelDown()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_MouseWheelDown());
	}
	final void MouseWheelLeft()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_MouseWheelLeft());
	}
	final void MouseWheelRight()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_MouseWheelRight());
	}
	final void SetHorizontalOffset(double offset)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_SetHorizontalOffset(offset));
	}
	final void SetVerticalOffset(double offset)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_SetVerticalOffset(offset));
	}
	final Windows.Foundation.Rect MakeVisible(Windows.UI.Xaml.UIElement visual, Windows.Foundation.Rect rectangle)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)this.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_MakeVisible(visual, rectangle, &_ret));
		return _ret;
	}
	final bool AreHorizontalSnapPointsRegular()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).get_AreHorizontalSnapPointsRegular(&_ret));
		return _ret;
	}
	final bool AreVerticalSnapPointsRegular()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).get_AreVerticalSnapPointsRegular(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnHorizontalSnapPointsChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).add_HorizontalSnapPointsChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeHorizontalSnapPointsChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).remove_HorizontalSnapPointsChanged(token));
	}
	final EventRegistrationToken OnVerticalSnapPointsChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).add_VerticalSnapPointsChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeVerticalSnapPointsChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).remove_VerticalSnapPointsChanged(token));
	}
	final Windows.Foundation.Collections.IVectorView!(float) GetIrregularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment)
	{
		Windows.Foundation.Collections.IVectorView!(float) _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).abi_GetIrregularSnapPoints(orientation, alignment, &_ret));
		return _ret;
	}
	final float GetRegularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment, float* out_offset)
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).abi_GetRegularSnapPoints(orientation, alignment, out_offset, &_ret));
		return _ret;
	}
	final void GetInsertionIndexes(Windows.Foundation.Point position, INT32* out_first, INT32* out_second)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.IInsertionPanel)this.asInterface(uuid("6b8de08f-6527-4d39-bcbf-58b01da923d7"))).abi_GetInsertionIndexes(position, out_first, out_second));
	}
}
@makable!(OrientedVirtualizingPanel, OrientedVirtualizingPanel, Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanelFactory)
class OrientedVirtualizingPanelT(Base) : AgileObject!Base, OrientedVirtualizingPanel
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_CanVerticallyScroll(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_CanVerticallyScroll(return_value); }
	override HRESULT set_CanVerticallyScroll(bool value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).set_CanVerticallyScroll(value); }
	override HRESULT get_CanHorizontallyScroll(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_CanHorizontallyScroll(return_value); }
	override HRESULT set_CanHorizontallyScroll(bool value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).set_CanHorizontallyScroll(value); }
	override HRESULT get_ExtentWidth(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_ExtentWidth(return_value); }
	override HRESULT get_ExtentHeight(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_ExtentHeight(return_value); }
	override HRESULT get_ViewportWidth(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_ViewportWidth(return_value); }
	override HRESULT get_ViewportHeight(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_ViewportHeight(return_value); }
	override HRESULT get_HorizontalOffset(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_HorizontalOffset(return_value); }
	override HRESULT get_VerticalOffset(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_VerticalOffset(return_value); }
	override HRESULT get_ScrollOwner(IInspectable* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).get_ScrollOwner(return_value); }
	override HRESULT set_ScrollOwner(IInspectable value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).set_ScrollOwner(value); }
	override HRESULT abi_LineUp() { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_LineUp(); }
	override HRESULT abi_LineDown() { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_LineDown(); }
	override HRESULT abi_LineLeft() { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_LineLeft(); }
	override HRESULT abi_LineRight() { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_LineRight(); }
	override HRESULT abi_PageUp() { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_PageUp(); }
	override HRESULT abi_PageDown() { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_PageDown(); }
	override HRESULT abi_PageLeft() { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_PageLeft(); }
	override HRESULT abi_PageRight() { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_PageRight(); }
	override HRESULT abi_MouseWheelUp() { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_MouseWheelUp(); }
	override HRESULT abi_MouseWheelDown() { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_MouseWheelDown(); }
	override HRESULT abi_MouseWheelLeft() { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_MouseWheelLeft(); }
	override HRESULT abi_MouseWheelRight() { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_MouseWheelRight(); }
	override HRESULT abi_SetHorizontalOffset(double offset) { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_SetHorizontalOffset(offset); }
	override HRESULT abi_SetVerticalOffset(double offset) { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_SetVerticalOffset(offset); }
	override HRESULT abi_MakeVisible(Windows.UI.Xaml.UIElement visual, Windows.Foundation.Rect rectangle, Windows.Foundation.Rect* return_returnValue) { return (cast(Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel)m_inner.asInterface(uuid("f077b577-39bd-46ee-bdd7-0826beed71b8"))).abi_MakeVisible(visual, rectangle, return_returnValue); }

	override HRESULT get_AreHorizontalSnapPointsRegular(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)m_inner.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).get_AreHorizontalSnapPointsRegular(return_value); }
	override HRESULT get_AreVerticalSnapPointsRegular(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)m_inner.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).get_AreVerticalSnapPointsRegular(return_value); }
	override HRESULT add_HorizontalSnapPointsChanged(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)m_inner.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).add_HorizontalSnapPointsChanged(value, return_token); }
	override HRESULT remove_HorizontalSnapPointsChanged(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)m_inner.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).remove_HorizontalSnapPointsChanged(token); }
	override HRESULT add_VerticalSnapPointsChanged(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)m_inner.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).add_VerticalSnapPointsChanged(value, return_token); }
	override HRESULT remove_VerticalSnapPointsChanged(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)m_inner.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).remove_VerticalSnapPointsChanged(token); }
	override HRESULT abi_GetIrregularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment, Windows.Foundation.Collections.IVectorView!(float)* return_returnValue) { return (cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)m_inner.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).abi_GetIrregularSnapPoints(orientation, alignment, return_returnValue); }
	override HRESULT abi_GetRegularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment, float* out_offset, float* return_returnValue) { return (cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)m_inner.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).abi_GetRegularSnapPoints(orientation, alignment, out_offset, return_returnValue); }

	override HRESULT abi_GetInsertionIndexes(Windows.Foundation.Point position, INT32* out_first, INT32* out_second) { return (cast(Windows.UI.Xaml.Controls.IInsertionPanel)m_inner.asInterface(uuid("6b8de08f-6527-4d39-bcbf-58b01da923d7"))).abi_GetInsertionIndexes(position, out_first, out_second); }

	this() {}
	IInspectable m_inner;
}

interface PickerFlyoutBase : Windows.UI.Xaml.Controls.Primitives.FlyoutBase, Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBase, Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBaseOverrides
{
	private static Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBaseStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBaseStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBaseStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty TitleProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_TitleProperty(&_ret));
		return _ret;
	}
	static HSTRING GetTitle(Windows.UI.Xaml.DependencyObject element)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetTitle(element, &_ret));
		return _ret;
	}
	static void SetTitle(Windows.UI.Xaml.DependencyObject element, HSTRING value)
	{
		Debug.OK(staticInstance.abi_SetTitle(element, value));
	}
	static PickerFlyoutBase New()
	{
		IInspectable outer, inner;
		PickerFlyoutBase ret;
		Debug.OK(activationFactory!(PickerFlyoutBase, Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBaseFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(PickerFlyoutBase, PickerFlyoutBase, Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBaseFactory)
class PickerFlyoutBaseT(Base) : AgileObject!Base, PickerFlyoutBase
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}

	override HRESULT abi_OnConfirmed() { this.OnConfirmed(); return S_OK; }
	void OnConfirmed() { Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBaseOverrides)m_inner.asInterface(uuid("5bfc4f4a-4822-47b4-a958-77c20ba120d3"))).abi_OnConfirmed()); }
	override HRESULT abi_ShouldShowConfirmationButtons(bool* return_returnValue) { this.ShouldShowConfirmationButtons(return_returnValue); return S_OK; }
	void ShouldShowConfirmationButtons(bool* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBaseOverrides)m_inner.asInterface(uuid("5bfc4f4a-4822-47b4-a958-77c20ba120d3"))).abi_ShouldShowConfirmationButtons(return_returnValue)); }

	this() {}
	IInspectable m_inner;
}

interface PivotHeaderItem : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.Primitives.IPivotHeaderItem
{
	static PivotHeaderItem New()
	{
		IInspectable outer, inner;
		PivotHeaderItem ret;
		Debug.OK(activationFactory!(PivotHeaderItem, Windows.UI.Xaml.Controls.Primitives.IPivotHeaderItemFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(PivotHeaderItem, PivotHeaderItem, Windows.UI.Xaml.Controls.Primitives.IPivotHeaderItemFactory)
class PivotHeaderItemT(Base) : AgileObject!Base, PivotHeaderItem
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}

	this() {}
	IInspectable m_inner;
}

interface PivotHeaderPanel : Windows.UI.Xaml.Controls.Canvas, Windows.UI.Xaml.Controls.Primitives.IPivotHeaderPanel
{
	static PivotHeaderPanel New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PivotHeaderPanel).abi_ActivateInstance(&ret));
		return cast(PivotHeaderPanel) ret;
	}
}

interface PivotPanel : Windows.UI.Xaml.Controls.Panel, Windows.UI.Xaml.Controls.Primitives.IPivotPanel, Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo
{
extern(Windows):
	final bool AreHorizontalSnapPointsRegular()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).get_AreHorizontalSnapPointsRegular(&_ret));
		return _ret;
	}
	final bool AreVerticalSnapPointsRegular()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).get_AreVerticalSnapPointsRegular(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnHorizontalSnapPointsChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).add_HorizontalSnapPointsChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeHorizontalSnapPointsChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).remove_HorizontalSnapPointsChanged(token));
	}
	final EventRegistrationToken OnVerticalSnapPointsChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).add_VerticalSnapPointsChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeVerticalSnapPointsChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).remove_VerticalSnapPointsChanged(token));
	}
	final Windows.Foundation.Collections.IVectorView!(float) GetIrregularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment)
	{
		Windows.Foundation.Collections.IVectorView!(float) _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).abi_GetIrregularSnapPoints(orientation, alignment, &_ret));
		return _ret;
	}
	final float GetRegularSnapPoints(Windows.UI.Xaml.Controls.Orientation orientation, Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment alignment, float* out_offset)
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo)this.asInterface(uuid("1b5d1336-e61b-4d51-be41-fd8ddc55c58c"))).abi_GetRegularSnapPoints(orientation, alignment, out_offset, &_ret));
		return _ret;
	}
	static PivotPanel New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PivotPanel).abi_ActivateInstance(&ret));
		return cast(PivotPanel) ret;
	}
}

interface Popup : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.Primitives.IPopup, Windows.UI.Xaml.Controls.Primitives.IPopup2
{
extern(Windows):
	final Windows.UI.Xaml.UIElement Child()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup)this.asInterface(uuid("62418240-e6d3-4705-a1dc-39156456ee29"))).get_Child(&_ret));
		return _ret;
	}
	final void Child(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup)this.asInterface(uuid("62418240-e6d3-4705-a1dc-39156456ee29"))).set_Child(value));
	}
	final bool IsOpen()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup)this.asInterface(uuid("62418240-e6d3-4705-a1dc-39156456ee29"))).get_IsOpen(&_ret));
		return _ret;
	}
	final void IsOpen(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup)this.asInterface(uuid("62418240-e6d3-4705-a1dc-39156456ee29"))).set_IsOpen(value));
	}
	final double HorizontalOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup)this.asInterface(uuid("62418240-e6d3-4705-a1dc-39156456ee29"))).get_HorizontalOffset(&_ret));
		return _ret;
	}
	final void HorizontalOffset(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup)this.asInterface(uuid("62418240-e6d3-4705-a1dc-39156456ee29"))).set_HorizontalOffset(value));
	}
	final double VerticalOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup)this.asInterface(uuid("62418240-e6d3-4705-a1dc-39156456ee29"))).get_VerticalOffset(&_ret));
		return _ret;
	}
	final void VerticalOffset(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup)this.asInterface(uuid("62418240-e6d3-4705-a1dc-39156456ee29"))).set_VerticalOffset(value));
	}
	final Windows.UI.Xaml.Media.Animation.TransitionCollection ChildTransitions()
	{
		Windows.UI.Xaml.Media.Animation.TransitionCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup)this.asInterface(uuid("62418240-e6d3-4705-a1dc-39156456ee29"))).get_ChildTransitions(&_ret));
		return _ret;
	}
	final void ChildTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup)this.asInterface(uuid("62418240-e6d3-4705-a1dc-39156456ee29"))).set_ChildTransitions(value));
	}
	final bool IsLightDismissEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup)this.asInterface(uuid("62418240-e6d3-4705-a1dc-39156456ee29"))).get_IsLightDismissEnabled(&_ret));
		return _ret;
	}
	final void IsLightDismissEnabled(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup)this.asInterface(uuid("62418240-e6d3-4705-a1dc-39156456ee29"))).set_IsLightDismissEnabled(value));
	}
	final EventRegistrationToken OnOpened(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup)this.asInterface(uuid("62418240-e6d3-4705-a1dc-39156456ee29"))).add_Opened(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeOpened(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup)this.asInterface(uuid("62418240-e6d3-4705-a1dc-39156456ee29"))).remove_Opened(token));
	}
	final EventRegistrationToken OnClosed(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup)this.asInterface(uuid("62418240-e6d3-4705-a1dc-39156456ee29"))).add_Closed(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeClosed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup)this.asInterface(uuid("62418240-e6d3-4705-a1dc-39156456ee29"))).remove_Closed(token));
	}
	final Windows.UI.Xaml.Controls.LightDismissOverlayMode LightDismissOverlayMode()
	{
		Windows.UI.Xaml.Controls.LightDismissOverlayMode _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup2)this.asInterface(uuid("376a8c4c-aac0-4b20-966a-0b9364feb4b5"))).get_LightDismissOverlayMode(&_ret));
		return _ret;
	}
	final void LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IPopup2)this.asInterface(uuid("376a8c4c-aac0-4b20-966a-0b9364feb4b5"))).set_LightDismissOverlayMode(value));
	}

	private static Windows.UI.Xaml.Controls.Primitives.IPopupStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.IPopupStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.IPopupStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty ChildProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ChildProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IsOpenProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsOpenProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty HorizontalOffsetProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_HorizontalOffsetProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty VerticalOffsetProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_VerticalOffsetProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ChildTransitionsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ChildTransitionsProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IsLightDismissEnabledProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsLightDismissEnabledProperty(&_ret));
		return _ret;
	}
	static Popup New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(Popup).abi_ActivateInstance(&ret));
		return cast(Popup) ret;
	}
}

interface ProgressBarTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings
{
extern(Windows):
	final double EllipseDiameter()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings)this.asInterface(uuid("3fe2ea2a-e3f2-4c2b-9488-918d77d2bbe4"))).get_EllipseDiameter(&_ret));
		return _ret;
	}
	final double EllipseOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings)this.asInterface(uuid("3fe2ea2a-e3f2-4c2b-9488-918d77d2bbe4"))).get_EllipseOffset(&_ret));
		return _ret;
	}
	final double EllipseAnimationWellPosition()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings)this.asInterface(uuid("3fe2ea2a-e3f2-4c2b-9488-918d77d2bbe4"))).get_EllipseAnimationWellPosition(&_ret));
		return _ret;
	}
	final double EllipseAnimationEndPosition()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings)this.asInterface(uuid("3fe2ea2a-e3f2-4c2b-9488-918d77d2bbe4"))).get_EllipseAnimationEndPosition(&_ret));
		return _ret;
	}
	final double ContainerAnimationStartPosition()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings)this.asInterface(uuid("3fe2ea2a-e3f2-4c2b-9488-918d77d2bbe4"))).get_ContainerAnimationStartPosition(&_ret));
		return _ret;
	}
	final double ContainerAnimationEndPosition()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings)this.asInterface(uuid("3fe2ea2a-e3f2-4c2b-9488-918d77d2bbe4"))).get_ContainerAnimationEndPosition(&_ret));
		return _ret;
	}
	final double IndicatorLengthDelta()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings)this.asInterface(uuid("3fe2ea2a-e3f2-4c2b-9488-918d77d2bbe4"))).get_IndicatorLengthDelta(&_ret));
		return _ret;
	}
}

interface ProgressRingTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IProgressRingTemplateSettings
{
extern(Windows):
	final double EllipseDiameter()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IProgressRingTemplateSettings)this.asInterface(uuid("b9b675ec-c723-42e6-83e9-9826272bdc0e"))).get_EllipseDiameter(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Thickness EllipseOffset()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IProgressRingTemplateSettings)this.asInterface(uuid("b9b675ec-c723-42e6-83e9-9826272bdc0e"))).get_EllipseOffset(&_ret));
		return _ret;
	}
	final double MaxSideLength()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IProgressRingTemplateSettings)this.asInterface(uuid("b9b675ec-c723-42e6-83e9-9826272bdc0e"))).get_MaxSideLength(&_ret));
		return _ret;
	}
}

interface RangeBase : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.Primitives.IRangeBase, Windows.UI.Xaml.Controls.Primitives.IRangeBaseOverrides
{
extern(Windows):
	final double Minimum()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).get_Minimum(&_ret));
		return _ret;
	}
	final void Minimum(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).set_Minimum(value));
	}
	final double Maximum()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).get_Maximum(&_ret));
		return _ret;
	}
	final void Maximum(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).set_Maximum(value));
	}
	final double SmallChange()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).get_SmallChange(&_ret));
		return _ret;
	}
	final void SmallChange(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).set_SmallChange(value));
	}
	final double LargeChange()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).get_LargeChange(&_ret));
		return _ret;
	}
	final void LargeChange(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).set_LargeChange(value));
	}
	final double Value()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).get_Value(&_ret));
		return _ret;
	}
	final void Value(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).set_Value(value));
	}
	final EventRegistrationToken OnValueChanged(void delegate(IInspectable, Windows.UI.Xaml.Controls.Primitives.RangeBaseValueChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).add_ValueChanged(event!(Windows.UI.Xaml.Controls.Primitives.RangeBaseValueChangedEventHandler, IInspectable, Windows.UI.Xaml.Controls.Primitives.RangeBaseValueChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeValueChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)this.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).remove_ValueChanged(token));
	}

	private static Windows.UI.Xaml.Controls.Primitives.IRangeBaseStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.IRangeBaseStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.IRangeBaseStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty MinimumProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_MinimumProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty MaximumProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_MaximumProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SmallChangeProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SmallChangeProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty LargeChangeProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_LargeChangeProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ValueProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ValueProperty(&_ret));
		return _ret;
	}
	static RangeBase New()
	{
		IInspectable outer, inner;
		RangeBase ret;
		Debug.OK(activationFactory!(RangeBase, Windows.UI.Xaml.Controls.Primitives.IRangeBaseFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(RangeBase, RangeBase, Windows.UI.Xaml.Controls.Primitives.IRangeBaseFactory)
class RangeBaseT(Base) : AgileObject!Base, RangeBase
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Minimum(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).get_Minimum(return_value); }
	override HRESULT set_Minimum(double value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).set_Minimum(value); }
	override HRESULT get_Maximum(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).get_Maximum(return_value); }
	override HRESULT set_Maximum(double value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).set_Maximum(value); }
	override HRESULT get_SmallChange(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).get_SmallChange(return_value); }
	override HRESULT set_SmallChange(double value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).set_SmallChange(value); }
	override HRESULT get_LargeChange(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).get_LargeChange(return_value); }
	override HRESULT set_LargeChange(double value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).set_LargeChange(value); }
	override HRESULT get_Value(double* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).get_Value(return_value); }
	override HRESULT set_Value(double value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).set_Value(value); }
	override HRESULT add_ValueChanged(Windows.UI.Xaml.Controls.Primitives.RangeBaseValueChangedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).add_ValueChanged(value, return_token); }
	override HRESULT remove_ValueChanged(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IRangeBase)m_inner.asInterface(uuid("fa002c1a-494e-46cf-91d4-e14a8d798675"))).remove_ValueChanged(token); }

	override HRESULT abi_OnMinimumChanged(double oldMinimum, double newMinimum) { this.OnMinimumChanged(oldMinimum, newMinimum); return S_OK; }
	void OnMinimumChanged(double oldMinimum, double newMinimum) { Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBaseOverrides)m_inner.asInterface(uuid("4291af39-7f0b-4bc2-99c4-06e7062682d8"))).abi_OnMinimumChanged(oldMinimum, newMinimum)); }
	override HRESULT abi_OnMaximumChanged(double oldMaximum, double newMaximum) { this.OnMaximumChanged(oldMaximum, newMaximum); return S_OK; }
	void OnMaximumChanged(double oldMaximum, double newMaximum) { Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBaseOverrides)m_inner.asInterface(uuid("4291af39-7f0b-4bc2-99c4-06e7062682d8"))).abi_OnMaximumChanged(oldMaximum, newMaximum)); }
	override HRESULT abi_OnValueChanged(double oldValue, double newValue) { this.OnValueChanged(oldValue, newValue); return S_OK; }
	void OnValueChanged(double oldValue, double newValue) { Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBaseOverrides)m_inner.asInterface(uuid("4291af39-7f0b-4bc2-99c4-06e7062682d8"))).abi_OnValueChanged(oldValue, newValue)); }

	this() {}
	IInspectable m_inner;
}

interface RangeBaseValueChangedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.Primitives.IRangeBaseValueChangedEventArgs
{
extern(Windows):
	final double OldValue()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBaseValueChangedEventArgs)this.asInterface(uuid("a1921777-d5c1-4f9c-a7b0-0401b7e6dc5c"))).get_OldValue(&_ret));
		return _ret;
	}
	final double NewValue()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRangeBaseValueChangedEventArgs)this.asInterface(uuid("a1921777-d5c1-4f9c-a7b0-0401b7e6dc5c"))).get_NewValue(&_ret));
		return _ret;
	}
}

interface RepeatButton : Windows.UI.Xaml.Controls.Primitives.ButtonBase, Windows.UI.Xaml.Controls.Primitives.IRepeatButton
{
extern(Windows):
	final INT32 Delay()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRepeatButton)this.asInterface(uuid("02200df9-021a-484a-a93b-0f31020314e5"))).get_Delay(&_ret));
		return _ret;
	}
	final void Delay(INT32 value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRepeatButton)this.asInterface(uuid("02200df9-021a-484a-a93b-0f31020314e5"))).set_Delay(value));
	}
	final INT32 Interval()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRepeatButton)this.asInterface(uuid("02200df9-021a-484a-a93b-0f31020314e5"))).get_Interval(&_ret));
		return _ret;
	}
	final void Interval(INT32 value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IRepeatButton)this.asInterface(uuid("02200df9-021a-484a-a93b-0f31020314e5"))).set_Interval(value));
	}

	private static Windows.UI.Xaml.Controls.Primitives.IRepeatButtonStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.IRepeatButtonStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.IRepeatButtonStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty DelayProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DelayProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IntervalProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IntervalProperty(&_ret));
		return _ret;
	}
	static RepeatButton New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(RepeatButton).abi_ActivateInstance(&ret));
		return cast(RepeatButton) ret;
	}
}

interface ScrollBar : Windows.UI.Xaml.Controls.Primitives.RangeBase, Windows.UI.Xaml.Controls.Primitives.IScrollBar
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Orientation Orientation()
	{
		Windows.UI.Xaml.Controls.Orientation _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollBar)this.asInterface(uuid("f57ae6ca-d1a6-4b90-a4e9-54df1ba8d2ec"))).get_Orientation(&_ret));
		return _ret;
	}
	final void Orientation(Windows.UI.Xaml.Controls.Orientation value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollBar)this.asInterface(uuid("f57ae6ca-d1a6-4b90-a4e9-54df1ba8d2ec"))).set_Orientation(value));
	}
	final double ViewportSize()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollBar)this.asInterface(uuid("f57ae6ca-d1a6-4b90-a4e9-54df1ba8d2ec"))).get_ViewportSize(&_ret));
		return _ret;
	}
	final void ViewportSize(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollBar)this.asInterface(uuid("f57ae6ca-d1a6-4b90-a4e9-54df1ba8d2ec"))).set_ViewportSize(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.ScrollingIndicatorMode IndicatorMode()
	{
		Windows.UI.Xaml.Controls.Primitives.ScrollingIndicatorMode _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollBar)this.asInterface(uuid("f57ae6ca-d1a6-4b90-a4e9-54df1ba8d2ec"))).get_IndicatorMode(&_ret));
		return _ret;
	}
	final void IndicatorMode(Windows.UI.Xaml.Controls.Primitives.ScrollingIndicatorMode value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollBar)this.asInterface(uuid("f57ae6ca-d1a6-4b90-a4e9-54df1ba8d2ec"))).set_IndicatorMode(value));
	}
	final EventRegistrationToken OnScroll(void delegate(IInspectable, Windows.UI.Xaml.Controls.Primitives.ScrollEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollBar)this.asInterface(uuid("f57ae6ca-d1a6-4b90-a4e9-54df1ba8d2ec"))).add_Scroll(event!(Windows.UI.Xaml.Controls.Primitives.ScrollEventHandler, IInspectable, Windows.UI.Xaml.Controls.Primitives.ScrollEventArgs)(fn), &tok));
		return tok;
	}
	final void removeScroll(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollBar)this.asInterface(uuid("f57ae6ca-d1a6-4b90-a4e9-54df1ba8d2ec"))).remove_Scroll(token));
	}

	private static Windows.UI.Xaml.Controls.Primitives.IScrollBarStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.IScrollBarStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.IScrollBarStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty OrientationProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_OrientationProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ViewportSizeProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ViewportSizeProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IndicatorModeProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IndicatorModeProperty(&_ret));
		return _ret;
	}
	static ScrollBar New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ScrollBar).abi_ActivateInstance(&ret));
		return cast(ScrollBar) ret;
	}
}

interface ScrollEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.Primitives.IScrollEventArgs
{
extern(Windows):
	final double NewValue()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollEventArgs)this.asInterface(uuid("c57e5168-3afe-448d-b752-2f364c75d743"))).get_NewValue(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Primitives.ScrollEventType ScrollEventType()
	{
		Windows.UI.Xaml.Controls.Primitives.ScrollEventType _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IScrollEventArgs)this.asInterface(uuid("c57e5168-3afe-448d-b752-2f364c75d743"))).get_ScrollEventType(&_ret));
		return _ret;
	}
	static ScrollEventArgs New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ScrollEventArgs).abi_ActivateInstance(&ret));
		return cast(ScrollEventArgs) ret;
	}
}

interface Selector : Windows.UI.Xaml.Controls.ItemsControl, Windows.UI.Xaml.Controls.Primitives.ISelector
{
extern(Windows):
	final INT32 SelectedIndex()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISelector)this.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).get_SelectedIndex(&_ret));
		return _ret;
	}
	final void SelectedIndex(INT32 value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISelector)this.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).set_SelectedIndex(value));
	}
	final IInspectable SelectedItem()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISelector)this.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).get_SelectedItem(&_ret));
		return _ret;
	}
	final void SelectedItem(IInspectable value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISelector)this.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).set_SelectedItem(value));
	}
	final IInspectable SelectedValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISelector)this.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).get_SelectedValue(&_ret));
		return _ret;
	}
	final void SelectedValue(IInspectable value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISelector)this.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).set_SelectedValue(value));
	}
	final HSTRING SelectedValuePath()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISelector)this.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).get_SelectedValuePath(&_ret));
		return _ret;
	}
	final void SelectedValuePath(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISelector)this.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).set_SelectedValuePath(value));
	}
	final Windows.Foundation.IReference!(bool) IsSynchronizedWithCurrentItem()
	{
		Windows.Foundation.IReference!(bool) _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISelector)this.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).get_IsSynchronizedWithCurrentItem(&_ret));
		return _ret;
	}
	final void IsSynchronizedWithCurrentItem(Windows.Foundation.IReference!(bool) value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISelector)this.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).set_IsSynchronizedWithCurrentItem(value));
	}
	final EventRegistrationToken OnSelectionChanged(void delegate(IInspectable, Windows.UI.Xaml.Controls.SelectionChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISelector)this.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).add_SelectionChanged(event!(Windows.UI.Xaml.Controls.SelectionChangedEventHandler, IInspectable, Windows.UI.Xaml.Controls.SelectionChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSelectionChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISelector)this.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).remove_SelectionChanged(token));
	}

	private static Windows.UI.Xaml.Controls.Primitives.ISelectorStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.ISelectorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.ISelectorStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty SelectedIndexProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectedIndexProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SelectedItemProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectedItemProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SelectedValueProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectedValueProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty SelectedValuePathProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_SelectedValuePathProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IsSynchronizedWithCurrentItemProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsSynchronizedWithCurrentItemProperty(&_ret));
		return _ret;
	}
	static bool GetIsSelectionActive(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_GetIsSelectionActive(element, &_ret));
		return _ret;
	}
}
@makable!(Selector, Selector, Windows.UI.Xaml.Controls.Primitives.ISelectorFactory)
class SelectorT(Base) : AgileObject!Base, Selector
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_SelectedIndex(INT32* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ISelector)m_inner.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).get_SelectedIndex(return_value); }
	override HRESULT set_SelectedIndex(INT32 value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ISelector)m_inner.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).set_SelectedIndex(value); }
	override HRESULT get_SelectedItem(IInspectable* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ISelector)m_inner.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).get_SelectedItem(return_value); }
	override HRESULT set_SelectedItem(IInspectable value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ISelector)m_inner.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).set_SelectedItem(value); }
	override HRESULT get_SelectedValue(IInspectable* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ISelector)m_inner.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).get_SelectedValue(return_value); }
	override HRESULT set_SelectedValue(IInspectable value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ISelector)m_inner.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).set_SelectedValue(value); }
	override HRESULT get_SelectedValuePath(HSTRING* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ISelector)m_inner.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).get_SelectedValuePath(return_value); }
	override HRESULT set_SelectedValuePath(HSTRING value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ISelector)m_inner.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).set_SelectedValuePath(value); }
	override HRESULT get_IsSynchronizedWithCurrentItem(Windows.Foundation.IReference!(bool)* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ISelector)m_inner.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).get_IsSynchronizedWithCurrentItem(return_value); }
	override HRESULT set_IsSynchronizedWithCurrentItem(Windows.Foundation.IReference!(bool) value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ISelector)m_inner.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).set_IsSynchronizedWithCurrentItem(value); }
	override HRESULT add_SelectionChanged(Windows.UI.Xaml.Controls.SelectionChangedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.Controls.Primitives.ISelector)m_inner.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).add_SelectionChanged(value, return_token); }
	override HRESULT remove_SelectionChanged(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.Controls.Primitives.ISelector)m_inner.asInterface(uuid("e30eb3a5-b36b-42dc-8527-cd25136c083c"))).remove_SelectionChanged(token); }

	this() {}
	IInspectable m_inner;
}

interface SelectorItem : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.Primitives.ISelectorItem
{
extern(Windows):
	final bool IsSelected()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISelectorItem)this.asInterface(uuid("541c8d6c-0283-4581-b945-2a64c28a0646"))).get_IsSelected(&_ret));
		return _ret;
	}
	final void IsSelected(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISelectorItem)this.asInterface(uuid("541c8d6c-0283-4581-b945-2a64c28a0646"))).set_IsSelected(value));
	}

	private static Windows.UI.Xaml.Controls.Primitives.ISelectorItemStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.ISelectorItemStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.ISelectorItemStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty IsSelectedProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsSelectedProperty(&_ret));
		return _ret;
	}
	static SelectorItem New()
	{
		IInspectable outer, inner;
		SelectorItem ret;
		Debug.OK(activationFactory!(SelectorItem, Windows.UI.Xaml.Controls.Primitives.ISelectorItemFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(SelectorItem, SelectorItem, Windows.UI.Xaml.Controls.Primitives.ISelectorItemFactory)
class SelectorItemT(Base) : AgileObject!Base, SelectorItem
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_IsSelected(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ISelectorItem)m_inner.asInterface(uuid("541c8d6c-0283-4581-b945-2a64c28a0646"))).get_IsSelected(return_value); }
	override HRESULT set_IsSelected(bool value) { return (cast(Windows.UI.Xaml.Controls.Primitives.ISelectorItem)m_inner.asInterface(uuid("541c8d6c-0283-4581-b945-2a64c28a0646"))).set_IsSelected(value); }

	this() {}
	IInspectable m_inner;
}

interface SettingsFlyoutTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.ISettingsFlyoutTemplateSettings
{
extern(Windows):
	final Windows.UI.Xaml.Media.Brush HeaderBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISettingsFlyoutTemplateSettings)this.asInterface(uuid("bcf14c10-cea7-43f1-9d68-57605ded69d4"))).get_HeaderBackground(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Brush HeaderForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISettingsFlyoutTemplateSettings)this.asInterface(uuid("bcf14c10-cea7-43f1-9d68-57605ded69d4"))).get_HeaderForeground(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Brush BorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISettingsFlyoutTemplateSettings)this.asInterface(uuid("bcf14c10-cea7-43f1-9d68-57605ded69d4"))).get_BorderBrush(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Thickness BorderThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISettingsFlyoutTemplateSettings)this.asInterface(uuid("bcf14c10-cea7-43f1-9d68-57605ded69d4"))).get_BorderThickness(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.ImageSource IconSource()
	{
		Windows.UI.Xaml.Media.ImageSource _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISettingsFlyoutTemplateSettings)this.asInterface(uuid("bcf14c10-cea7-43f1-9d68-57605ded69d4"))).get_IconSource(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Animation.TransitionCollection ContentTransitions()
	{
		Windows.UI.Xaml.Media.Animation.TransitionCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISettingsFlyoutTemplateSettings)this.asInterface(uuid("bcf14c10-cea7-43f1-9d68-57605ded69d4"))).get_ContentTransitions(&_ret));
		return _ret;
	}
}

interface SplitViewTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.ISplitViewTemplateSettings
{
extern(Windows):
	final double OpenPaneLength()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISplitViewTemplateSettings)this.asInterface(uuid("c16ab5a7-4996-4443-b199-6b6b89124eab"))).get_OpenPaneLength(&_ret));
		return _ret;
	}
	final double NegativeOpenPaneLength()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISplitViewTemplateSettings)this.asInterface(uuid("c16ab5a7-4996-4443-b199-6b6b89124eab"))).get_NegativeOpenPaneLength(&_ret));
		return _ret;
	}
	final double OpenPaneLengthMinusCompactLength()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISplitViewTemplateSettings)this.asInterface(uuid("c16ab5a7-4996-4443-b199-6b6b89124eab"))).get_OpenPaneLengthMinusCompactLength(&_ret));
		return _ret;
	}
	final double NegativeOpenPaneLengthMinusCompactLength()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISplitViewTemplateSettings)this.asInterface(uuid("c16ab5a7-4996-4443-b199-6b6b89124eab"))).get_NegativeOpenPaneLengthMinusCompactLength(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.GridLength OpenPaneGridLength()
	{
		Windows.UI.Xaml.GridLength _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISplitViewTemplateSettings)this.asInterface(uuid("c16ab5a7-4996-4443-b199-6b6b89124eab"))).get_OpenPaneGridLength(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.GridLength CompactPaneGridLength()
	{
		Windows.UI.Xaml.GridLength _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ISplitViewTemplateSettings)this.asInterface(uuid("c16ab5a7-4996-4443-b199-6b6b89124eab"))).get_CompactPaneGridLength(&_ret));
		return _ret;
	}
}

interface Thumb : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.Primitives.IThumb
{
extern(Windows):
	final bool IsDragging()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IThumb)this.asInterface(uuid("e8b2b281-0d6a-45cf-b333-2402b037f099"))).get_IsDragging(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnDragStarted(void delegate(IInspectable, Windows.UI.Xaml.Controls.Primitives.DragStartedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IThumb)this.asInterface(uuid("e8b2b281-0d6a-45cf-b333-2402b037f099"))).add_DragStarted(event!(Windows.UI.Xaml.Controls.Primitives.DragStartedEventHandler, IInspectable, Windows.UI.Xaml.Controls.Primitives.DragStartedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDragStarted(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IThumb)this.asInterface(uuid("e8b2b281-0d6a-45cf-b333-2402b037f099"))).remove_DragStarted(token));
	}
	final EventRegistrationToken OnDragDelta(void delegate(IInspectable, Windows.UI.Xaml.Controls.Primitives.DragDeltaEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IThumb)this.asInterface(uuid("e8b2b281-0d6a-45cf-b333-2402b037f099"))).add_DragDelta(event!(Windows.UI.Xaml.Controls.Primitives.DragDeltaEventHandler, IInspectable, Windows.UI.Xaml.Controls.Primitives.DragDeltaEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDragDelta(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IThumb)this.asInterface(uuid("e8b2b281-0d6a-45cf-b333-2402b037f099"))).remove_DragDelta(token));
	}
	final EventRegistrationToken OnDragCompleted(void delegate(IInspectable, Windows.UI.Xaml.Controls.Primitives.DragCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IThumb)this.asInterface(uuid("e8b2b281-0d6a-45cf-b333-2402b037f099"))).add_DragCompleted(event!(Windows.UI.Xaml.Controls.Primitives.DragCompletedEventHandler, IInspectable, Windows.UI.Xaml.Controls.Primitives.DragCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDragCompleted(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IThumb)this.asInterface(uuid("e8b2b281-0d6a-45cf-b333-2402b037f099"))).remove_DragCompleted(token));
	}
	final void CancelDrag()
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IThumb)this.asInterface(uuid("e8b2b281-0d6a-45cf-b333-2402b037f099"))).abi_CancelDrag());
	}

	private static Windows.UI.Xaml.Controls.Primitives.IThumbStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.IThumbStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.IThumbStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty IsDraggingProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsDraggingProperty(&_ret));
		return _ret;
	}
	static Thumb New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(Thumb).abi_ActivateInstance(&ret));
		return cast(Thumb) ret;
	}
}

interface TickBar : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.Primitives.ITickBar
{
extern(Windows):
	final Windows.UI.Xaml.Media.Brush Fill()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ITickBar)this.asInterface(uuid("994683fa-f1f6-487d-a5ac-c15921bfa995"))).get_Fill(&_ret));
		return _ret;
	}
	final void Fill(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.ITickBar)this.asInterface(uuid("994683fa-f1f6-487d-a5ac-c15921bfa995"))).set_Fill(value));
	}

	private static Windows.UI.Xaml.Controls.Primitives.ITickBarStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.ITickBarStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.ITickBarStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty FillProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_FillProperty(&_ret));
		return _ret;
	}
	static TickBar New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(TickBar).abi_ActivateInstance(&ret));
		return cast(TickBar) ret;
	}
}

interface ToggleButton : Windows.UI.Xaml.Controls.Primitives.ButtonBase, Windows.UI.Xaml.Controls.Primitives.IToggleButton, Windows.UI.Xaml.Controls.Primitives.IToggleButtonOverrides
{
extern(Windows):
	final Windows.Foundation.IReference!(bool) IsChecked()
	{
		Windows.Foundation.IReference!(bool) _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)this.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).get_IsChecked(&_ret));
		return _ret;
	}
	final void IsChecked(Windows.Foundation.IReference!(bool) value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)this.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).set_IsChecked(value));
	}
	final bool IsThreeState()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)this.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).get_IsThreeState(&_ret));
		return _ret;
	}
	final void IsThreeState(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)this.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).set_IsThreeState(value));
	}
	final EventRegistrationToken OnChecked(void delegate(IInspectable, Windows.UI.Xaml.RoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)this.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).add_Checked(event!(Windows.UI.Xaml.RoutedEventHandler, IInspectable, Windows.UI.Xaml.RoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeChecked(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)this.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).remove_Checked(token));
	}
	final EventRegistrationToken OnUnchecked(void delegate(IInspectable, Windows.UI.Xaml.RoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)this.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).add_Unchecked(event!(Windows.UI.Xaml.RoutedEventHandler, IInspectable, Windows.UI.Xaml.RoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUnchecked(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)this.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).remove_Unchecked(token));
	}
	final EventRegistrationToken OnIndeterminate(void delegate(IInspectable, Windows.UI.Xaml.RoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)this.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).add_Indeterminate(event!(Windows.UI.Xaml.RoutedEventHandler, IInspectable, Windows.UI.Xaml.RoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeIndeterminate(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)this.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).remove_Indeterminate(token));
	}

	private static Windows.UI.Xaml.Controls.Primitives.IToggleButtonStatics _staticInstance;
	public static Windows.UI.Xaml.Controls.Primitives.IToggleButtonStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Controls.Primitives.IToggleButtonStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty IsCheckedProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsCheckedProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IsThreeStateProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsThreeStateProperty(&_ret));
		return _ret;
	}
	static ToggleButton New()
	{
		IInspectable outer, inner;
		ToggleButton ret;
		Debug.OK(activationFactory!(ToggleButton, Windows.UI.Xaml.Controls.Primitives.IToggleButtonFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(ToggleButton, ToggleButton, Windows.UI.Xaml.Controls.Primitives.IToggleButtonFactory)
class ToggleButtonT(Base) : AgileObject!Base, ToggleButton
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_IsChecked(Windows.Foundation.IReference!(bool)* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)m_inner.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).get_IsChecked(return_value); }
	override HRESULT set_IsChecked(Windows.Foundation.IReference!(bool) value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)m_inner.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).set_IsChecked(value); }
	override HRESULT get_IsThreeState(bool* return_value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)m_inner.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).get_IsThreeState(return_value); }
	override HRESULT set_IsThreeState(bool value) { return (cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)m_inner.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).set_IsThreeState(value); }
	override HRESULT add_Checked(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)m_inner.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).add_Checked(value, return_token); }
	override HRESULT remove_Checked(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)m_inner.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).remove_Checked(token); }
	override HRESULT add_Unchecked(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)m_inner.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).add_Unchecked(value, return_token); }
	override HRESULT remove_Unchecked(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)m_inner.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).remove_Unchecked(token); }
	override HRESULT add_Indeterminate(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)m_inner.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).add_Indeterminate(value, return_token); }
	override HRESULT remove_Indeterminate(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.Controls.Primitives.IToggleButton)m_inner.asInterface(uuid("589877fb-0fc7-4036-9d8b-127dfa75c16d"))).remove_Indeterminate(token); }

	override HRESULT abi_OnToggle() { this.OnToggle(); return S_OK; }
	void OnToggle() { Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleButtonOverrides)m_inner.asInterface(uuid("d20e4c28-f18b-491a-9a45-f1a04a9369a4"))).abi_OnToggle()); }

	this() {}
	IInspectable m_inner;
}

interface ToggleSwitchTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings
{
extern(Windows):
	final double KnobCurrentToOnOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings)this.asInterface(uuid("02b7bdcd-628a-4363-86e0-51d6e2e89e58"))).get_KnobCurrentToOnOffset(&_ret));
		return _ret;
	}
	final double KnobCurrentToOffOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings)this.asInterface(uuid("02b7bdcd-628a-4363-86e0-51d6e2e89e58"))).get_KnobCurrentToOffOffset(&_ret));
		return _ret;
	}
	final double KnobOnToOffOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings)this.asInterface(uuid("02b7bdcd-628a-4363-86e0-51d6e2e89e58"))).get_KnobOnToOffOffset(&_ret));
		return _ret;
	}
	final double KnobOffToOnOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings)this.asInterface(uuid("02b7bdcd-628a-4363-86e0-51d6e2e89e58"))).get_KnobOffToOnOffset(&_ret));
		return _ret;
	}
	final double CurtainCurrentToOnOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings)this.asInterface(uuid("02b7bdcd-628a-4363-86e0-51d6e2e89e58"))).get_CurtainCurrentToOnOffset(&_ret));
		return _ret;
	}
	final double CurtainCurrentToOffOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings)this.asInterface(uuid("02b7bdcd-628a-4363-86e0-51d6e2e89e58"))).get_CurtainCurrentToOffOffset(&_ret));
		return _ret;
	}
	final double CurtainOnToOffOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings)this.asInterface(uuid("02b7bdcd-628a-4363-86e0-51d6e2e89e58"))).get_CurtainOnToOffOffset(&_ret));
		return _ret;
	}
	final double CurtainOffToOnOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings)this.asInterface(uuid("02b7bdcd-628a-4363-86e0-51d6e2e89e58"))).get_CurtainOffToOnOffset(&_ret));
		return _ret;
	}
}

interface ToolTipTemplateSettings : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.Primitives.IToolTipTemplateSettings
{
extern(Windows):
	final double FromHorizontalOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToolTipTemplateSettings)this.asInterface(uuid("d4388247-0ec4-4506-affd-afac2225b48c"))).get_FromHorizontalOffset(&_ret));
		return _ret;
	}
	final double FromVerticalOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.Controls.Primitives.IToolTipTemplateSettings)this.asInterface(uuid("d4388247-0ec4-4506-affd-afac2225b48c"))).get_FromVerticalOffset(&_ret));
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